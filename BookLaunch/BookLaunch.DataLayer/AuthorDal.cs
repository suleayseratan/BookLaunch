using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BookLaunch.ClassLibrary;

namespace BookLaunch.DataLayer
{
    public class AuthorDal:IProcessesDal<Author>
    {
        public List<Author> Get1(string letter)
        {
            using (EntityContext context = new EntityContext())
            {
                var listAuthor = context.Authors.Where(p => p.AuthorName.StartsWith(letter)).ToList();
                return listAuthor;
            }
        }

        public List<Author> Get()
        {
            using (EntityContext context = new EntityContext())
            {
                var allAuthor = context.Authors.ToList();
                return allAuthor;
            }
        }

        public List<Author> SingleAuthorGet(int authorId)
        {
            using (EntityContext context = new EntityContext())
            {
                var author = context.Authors.Where(p => p.AuthorId == authorId).ToList();
                return author;
            }
        }

        public List<Author> GetFavouriteAuthors()
        {
            using (EntityContext context = new EntityContext())
            {
                var favorite = context.Authors.Take(8).ToList();
                return favorite;
            }
        }
        public void Add(Author t)
        {
            throw new NotImplementedException();
        }

        public void Delete(Author t)
        {
            throw new NotImplementedException();
        }

        public void Update(Author t)
        {
            throw new NotImplementedException();
        }

        public List<Author> SearchBooks(string text)
        {
            using (EntityContext context = new EntityContext())
            {

                var authorList = context.Authors.Where(p => p.AuthorName.Contains(text));
                return authorList.ToList();
            }
        }

    }
}
