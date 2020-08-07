using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BookLaunch.ClassLibrary;
using BookLaunch.DataLayer;
using System.Globalization;

namespace BookLaunch.ObjectProject
{

    public partial class SingleBook : System.Web.UI.Page
    {
        DateTime _date = DateTime.Now;
        BookDal _bookDal = new BookDal();
        CategoryDal _categoryDal = new CategoryDal();
        CommentDal _commentDal = new CommentDal();
        Book book = new Book();
        protected void Page_Load(object sender, EventArgs e)
        {
            string bookId = Request.QueryString["bookId"];
            int categoryId = book.CategoryId;
            if (!IsPostBack)
            {
                
                GetSameBooks(categoryId);
                
            }
            if (!String.IsNullOrEmpty(bookId))
            {
                GetSingleBook(bookId);
                GetBooksComments(bookId);
            }
            GetCategory();
        }

        private void GetBooksComments(string bookId)
        {
            int id = int.Parse(bookId);
            using (EntityContext context = new EntityContext())
            {
                var booksComment = (from c in context.Comments
                                    join b in context.Books on c.BookId equals b.Id
                                    where c.BookId == id
                                    select new
                                    {
                                        BookId = c.BookId,
                                        NameSurname = c.NameSurname,
                                        Content = c.Content,
                                        Title = c.Title,
                                        Date= c.Date
                                    }).ToList();
                rptComment.DataSource = booksComment;
                rptComment.DataBind();
            }
        }

        private void GetCategory()
        {
            var category = _categoryDal.Get();
            rptSingleBookCategory.DataSource = category;
            rptSingleBookCategory.DataBind();
        }

        private void GetSameBooks(int categoryId)
        {

        }

        public void GetSingleBook(string bookId)
        {
            using (EntityContext context = new EntityContext())
            {
                int id = int.Parse(bookId);
                var bookList = (from b in context.Books
                                join c in context.Categories on b.CategoryId equals c.CategoryId
                                where b.Id == id
                                select new
                                {
                                    CategoryId = b.CategoryId,
                                    CategoryName = c.CategoryName,
                                    BookName = b.BookName,
                                    Image = b.Image,
                                    Explain = b.Explain,
                                    PublishingHouse = b.PublishingHouse,
                                    PageNumber = b.PageNumber,
                                    YearReleased = b.YearReleased,
                                    Language = b.Language
                                }).ToList();
                foreach (var b in bookList)
                {
                    var list = _bookDal.GetSameBooks(b.CategoryId);
                    rptSameBook.DataSource = list;
                    rptSameBook.DataBind();
                }
                rptSingleBookCategory.DataSource = bookList.ToList();
                rptSingleBookCategory.DataBind();

                rptBookDetails.DataSource = bookList.ToList();
                rptBookDetails.DataBind();
            }
        }

        protected void btnComment_Click(object sender, EventArgs e)
        {
            string date = _date.ToString();
            string bookId = Request.QueryString["bookId"];
            _commentDal.Add(new Comment
            {
                NameSurname = tbxName.Text,
                Email = tbxEmail.Text,
                Content = tbxComment.Text,
                Title = tbxTitle.Text,
                BookId = int.Parse(bookId),
                Date = date
            });
            GetBooksComments(bookId);
            CommentClear();
        }

        private void CommentClear()
        {
            tbxName.Text = " ";
            tbxEmail.Text = " ";
            tbxComment.Text = " ";
            tbxTitle.Text = " ";
        }
    }
}