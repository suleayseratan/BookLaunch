using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BookLaunch.ClassLibrary;
using BookLaunch.DataLayer;

namespace BookLaunch.ObjectProject
{
    public partial class Books : System.Web.UI.Page
    {
        
        BookDal _bookDal = new BookDal();
        CategoryDal _categoryDal = new CategoryDal();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            string categoryId = Request.QueryString["categoryId"];
            if (!String.IsNullOrEmpty(categoryId))
            {
                LoadBooks(categoryId);
                GetBooks(categoryId);
            }
            else
            {
                GetAllBooks();
            }

            if (!IsPostBack)
            {
                GetCategories();
            }

            ddlSortBy.Items.FindByValue("Select").Attributes.Add("disabled","disabled");
        }

        private void LoadSearch(string keyword)
        {
            var list = _bookDal.SearchBooks(keyword);
            rptBook.DataSource = list;
            rptBook.DataBind();
        }

        private void GetAllBooks()
        {
            var allList = _bookDal.Get();
            rptBook.DataSource = allList;
            rptBook.DataBind();
        }

        private void GetBooks(string categoryId)
        {
            int id = int.Parse(categoryId);
            rptNavList.DataSource = _bookDal.Get1(id);
            rptNavList.DataBind();
        }

        private void GetCategories()
        {
            rptBookCategory.DataSource = _categoryDal.Get();
            rptBookCategory.DataBind();
        }

        private void LoadBooks(string categoryId)
        {
            int id = int.Parse(categoryId);
            rptBook.DataSource = _bookDal.Get1(id);
            rptBook.DataBind();
        }



        protected void ddlSortBy_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            string categoryId = Request.QueryString["CategoryId"];
            if (ddlSortBy.SelectedIndex == 1)
            {
                if (!String.IsNullOrEmpty(categoryId))
                {
                    LoadBooks(categoryId);
                    
                }
                else
                {
                    GetAllBooks();
                }
            }
            if (ddlSortBy.SelectedIndex == 2)
            {

                if(!String.IsNullOrEmpty(categoryId))
                {
                    int id = int.Parse(categoryId);
                    var list = _bookDal.AtoZList2(id);
                    rptBook.DataSource = list;
                    rptBook.DataBind();

                    rptNavList.DataSource = list;
                    rptNavList.DataBind();
                    
                }
                else
                {
                    var list = _bookDal.AtoZList();

                    rptBook.DataSource = list;
                    rptBook.DataBind();

                    rptNavList.DataSource = list;
                    rptNavList.DataBind();
                }
            }
            else if (ddlSortBy.SelectedIndex == 3)
            {
                if (!String.IsNullOrEmpty(categoryId))
                {
                    int id = int.Parse(categoryId);

                    var list = _bookDal.ZtoAList2(id);

                    rptBook.DataSource = list;
                    rptBook.DataBind();

                    rptNavList.DataSource = list;
                    rptNavList.DataBind();
                }
                else
                {
                    var list = _bookDal.ZtoAList();

                    rptBook.DataSource = list;
                    rptBook.DataBind();

                    rptNavList.DataSource = list;
                    rptNavList.DataBind();
                }
            }
            ddlSortBy.ClearSelection();
            ddlSortBy.Items[0].Selected = true;
        }

        protected void Search_TextChanged(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                string keyword = tbxSearch.Text.Trim();
                LoadSearch(keyword);
            }
            
        }
        
        protected void Button1_OnClick(object sender, EventArgs e)
        {
            
            Button button = (Button) sender;
            if (button.Text == "English")
            {
                var list =_bookDal.ListByLanguage("English");
                rptBook.DataSource = list;
                rptBook.DataBind();
            }
            else
            {
                var list = _bookDal.ListByLanguage("Turkish");
                rptBook.DataSource = list;
                rptBook.DataBind();
            }
            
        }
    }

    
}