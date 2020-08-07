using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BookLaunch.ClassLibrary
{
    public class Comment
    {
        public int CommentId { get; set; }
        public string NameSurname { get; set; }
        public string Email { get; set; }
        public string Content { get; set; }
        public int BookId { get; set; }
        public string Title { get; set; }
        public string Date { get; set; }
    }
}
