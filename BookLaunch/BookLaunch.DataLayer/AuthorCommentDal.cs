using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;

namespace BookLaunch.DataLayer
{
    public class AuthorCommentDal:AbstractCommentDal
    {
        public override void Add(object t)
        {
            using (EntityContext context = new EntityContext())
            {
                var entity = context.Entry(t);
                entity.State = EntityState.Added;
                context.SaveChanges();
            }
        }
    }
}
