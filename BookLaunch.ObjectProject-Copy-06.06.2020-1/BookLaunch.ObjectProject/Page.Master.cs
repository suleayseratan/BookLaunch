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
    public partial class Page : System.Web.UI.MasterPage
    {
        CategoryDal _categoryDal = new CategoryDal();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadCategories();
            }
        }

        private void LoadCategories()
        {
            rptCategories.DataSource = _categoryDal.Get1();
            rptCategories.DataBind();

            rptCategories2.DataSource = _categoryDal.Get2();
            rptCategories2.DataBind();
        }
       
    }
}