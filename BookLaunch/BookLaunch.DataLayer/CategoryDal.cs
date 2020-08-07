using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BookLaunch.ClassLibrary;

namespace BookLaunch.DataLayer
{
    public class CategoryDal:IProcessesDal<Category>
    {
        public List<Category> Get()
        {
            using (EntityContext context = new EntityContext())
            {
                var list = (from category in context.Categories select category);
                return list.ToList();
            }
        }

        public List<Category> Get1()
        {
            using (EntityContext context = new EntityContext())
            {
                var list = (from category in context.Categories where category.CategoryId < 9 select category).Take(7);
                return list.ToList();

            }
        }
        public List<Category> Get2()
        {
            using (EntityContext context = new EntityContext())
            {
                var list = (from category in context.Categories where category.CategoryId >= 9 select category).Take(7);
                return list.ToList();
            }
        }


        public void Add(Category t)
        {
            throw new NotImplementedException();
        }

        public void Delete(Category t)
        {
            throw new NotImplementedException();
        }

        public void Update(Category t)
        {
            throw new NotImplementedException();
        }

        public List<Category> SearchBooks(string text)
        {
            throw new NotImplementedException();
        }
    }
}
