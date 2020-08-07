using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using BookLaunch.ClassLibrary;
using BookLaunch.DataLayer;

namespace BookLaunch.ObjectProject
{
    public partial class Author : System.Web.UI.Page
    {
        AuthorDal _authorDal= new AuthorDal();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetAuthors();
            }
        }

        private void GetAuthors()
        {
            var allAuthor = _authorDal.Get();
            rptFullCard.DataSource = allAuthor;
            rptFullCard.DataBind();
        }

        protected void Search_TextChanged(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                string keyword = tbxSearch.Text.Trim();
                LoadSearch(keyword);
            }
        }

        private void LoadSearch(string keyword)
        {
            var list = _authorDal.SearchBooks(keyword);
            rptFullCard.DataSource = list;
            rptFullCard.DataBind();
        }
    }
    }
