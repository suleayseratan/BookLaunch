using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BookLaunch.ClassLibrary;

namespace BookLaunch.DataLayer
{
    public class BookDal: IProcessesDal<Book>
    {
        public List<Book> Get1(int categoryId)
        {
            using (EntityContext context = new EntityContext())
            {
                var bookList = context.Books.Where(p => p.CategoryId == categoryId).ToList();
                return bookList;
            }
        }

        public List<Book> GetNewBooks()
        {
            using (EntityContext context = new EntityContext())
            {
                var lastbooks = (from book in context.Books orderby book.Id descending select book).Take(4);
                return lastbooks.ToList();
            }
        }
        public List<Book> Get()
        {
            using (EntityContext context = new EntityContext())
            {
                var ListOfAllBooks = context.Books.ToList();
                return ListOfAllBooks;
            }
        }

        public List<Book> AtoZList()
        {
            using (EntityContext context = new EntityContext())
            {
                var list = context.Books.OrderBy(p => p.BookName).ToList();
                return list;
            }
        }
        public List<Book> AtoZList2(int categoryId)
        {
            using (EntityContext context = new EntityContext())
            {
                var list = context.Books.Where(p => p.CategoryId == categoryId).OrderBy(p => p.BookName).ToList();
                return list;
            }
        }
        public List<Book> ZtoAList()
        {
            using (EntityContext context = new EntityContext())
            {
                var list = context.Books.OrderByDescending(p => p.BookName).ToList();
                return list;
            }
        }
        public List<Book> ZtoAList2(int categoryId)
        {
            using (EntityContext context = new EntityContext())
            {
                var list = context.Books.Where(p => p.CategoryId == categoryId).OrderByDescending(p => p.BookName).ToList();
                return list;
            }
        }

        public List<Book> GetSameBooks(int categoryId)
        {
            using (EntityContext context = new EntityContext())
            {
                var list = context.Books.Where(p => p.CategoryId == categoryId).ToList();
                return list;
            }
        }
        public void Add(Book t)
        {
            throw new NotImplementedException();
        }

        public void Delete(Book t)
        {
            throw new NotImplementedException();
        }

        public void Update(Book t)
        {
            throw new NotImplementedException();
        }

        public List<Book> SearchBooks(string text)
        {
            using (EntityContext context = new EntityContext())
            {
                var bookList = context.Books.Where(p => p.BookName.Contains(text));
                return bookList.ToList();
            }
        }

        enum Languages
        {

            Turkish,
            English
        }

        public List<Book> ListByLanguage(string language)
        {

            using (EntityContext context = new EntityContext())
            {
                if (language == Languages.Turkish.ToString())
                {
                    var list = context.Books.Where(p => p.Language == Languages.Turkish.ToString());
                    return list.ToList();
                }
                else
                {
                    var list = context.Books.Where(p => p.Language == Languages.English.ToString());
                    return list.ToList();
                }
            }
        }
    }
}
