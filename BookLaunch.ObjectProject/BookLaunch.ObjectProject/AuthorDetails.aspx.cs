using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BookLaunch.ClassLibrary;
using BookLaunch.DataLayer;

namespace BookLaunch.ObjectProject
{
    public partial class AuthorDetails : System.Web.UI.Page
    {
        DateTime _date = DateTime.Now;
        AuthorDal _authorDal = new AuthorDal();
        AuthorCommentDal _authorCommentDal = new AuthorCommentDal();
        protected void Page_Load(object sender, EventArgs e)
        {
            string authorId = Request.QueryString["authorId"];
            
            if (!String.IsNullOrEmpty(authorId.ToString()))
            {
                SingleAuthor(authorId);
                BooksOfAuthor(authorId);
                GetAuthorsComments(authorId);
            }
                
        }

        private void GetAuthorsComments(string authorId)
        {
            int id = int.Parse(authorId);
            using (EntityContext context = new EntityContext())
            {
                var authorComments = (from ac in context.AuthorComments
                    join a in context.Authors on ac.AuthorId equals a.AuthorId
                    where ac.AuthorId == id
                    select new
                    {
                        AuthorId = ac.AuthorId,
                        NameSurname = ac.NameSurname,
                        Content = ac.Content,
                        Title = ac.Title,
                        Date = ac.Date
                    }).ToList();
                rptComment.DataSource = authorComments;
                rptComment.DataBind();
            }
        }

        private void BooksOfAuthor(string authorId)
        {
            int id = int.Parse(authorId);
            using (EntityContext context = new EntityContext())
            {
                var authorsBook = (from b in context.Books
                    join c in context.Authors on b.AuthorId equals c.AuthorId
                    where b.AuthorId == id
                    select new
                    {
                        AuthorId = b.AuthorId,
                        BookId = b.Id,
                        BookName = b.BookName,
                        Image =b.Image,
                    }).ToList();
                rptBooksOfAuthor.DataSource = authorsBook;
                rptBooksOfAuthor.DataBind();
            }
        }

        
        private void SingleAuthor(string authorId)
        {
            int id = int.Parse(authorId);
            rptSingleAuthor.DataSource = _authorDal.SingleAuthorGet(id);
            rptSingleAuthor.DataBind();
        }

        protected void tbxSearch_OnTextChanged(object sender, EventArgs e)
        {
            string authorId = Request.QueryString["authorId"];
            if (!String.IsNullOrEmpty(authorId))
            {
                string keyword = tbxSearch.Text.Trim();
                LoadSearch(authorId, keyword);
            }
        }

        private void LoadSearch(string authorId,string keyword)
        {
            int id = int.Parse(authorId);
            using (EntityContext context = new EntityContext())
            {
                var authorsBook = (from b in context.Books
                    join c in context.Authors on b.AuthorId equals c.AuthorId
                    where b.AuthorId == id
                    select new
                    {
                        AuthorId = b.AuthorId,
                        BookId = b.Id,
                        BookName = b.BookName,
                        Image = b.Image,


                    }).ToList();
                var searchList = authorsBook.Where(p => p.BookName.ToLower().Contains(keyword.ToLower()));
                rptBooksOfAuthor.DataSource = searchList;
                rptBooksOfAuthor.DataBind();
            }
        }

        protected void btnComment_OnClick(object sender, EventArgs e)
        {
            string date = _date.ToString();
            string authorId = Request.QueryString["authorId"];
            _authorCommentDal.Add(new AuthorComment
            {
                NameSurname = tbxName.Text,
                Email = tbxEmail.Text,
                Content = tbxComment.Text,
                Title = tbxTitle.Text,
                AuthorId = int.Parse(authorId),
                Date = date
            });
            GetAuthorsComments(authorId);
            CommentClear();
        }

        private void CommentClear()
        {
            tbxName.Text = " ";
            tbxEmail.Text = "";
            tbxComment.Text = " ";
            tbxTitle.Text = " ";
        }
    }
}