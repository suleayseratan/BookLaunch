using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BookLaunch.DataLayer
{
    public interface IProcessesDal<T>
    {
        List<T> Get();

        void Add(T t);
        void Delete(T t);
        void Update(T t);
        List<T> SearchBooks(string text);
    }
}
