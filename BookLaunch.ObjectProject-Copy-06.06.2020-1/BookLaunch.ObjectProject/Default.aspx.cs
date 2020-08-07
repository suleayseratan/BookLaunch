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
    public partial class Default : System.Web.UI.Page
    {
        BookDal _bookDal = new BookDal();
        AuthorDal _authorDal = new AuthorDal();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetNewFiveBook();
                RandomBook();
                FavouriteAuthors();
            }
        }
        private void GetNewFiveBook()
        {
            var list = _bookDal.GetNewBooks();
            rptNewlyAdded.DataSource = list;
            rptNewlyAdded.DataBind();
        } 
        private void RandomBook()
        {
            var list = _bookDal.Get();
            rptRandomBook.DataSource = list;
            rptRandomBook.DataBind();
        }
        private void FavouriteAuthors()
        {
            var list = _authorDal.GetFavouriteAuthors();
            rptFavouriteAuthors.DataSource = list;
            rptFavouriteAuthors.DataBind();
        }

       

        

    }
}