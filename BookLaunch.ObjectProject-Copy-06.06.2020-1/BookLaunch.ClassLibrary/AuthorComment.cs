using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BookLaunch.ClassLibrary
{
    public class AuthorComment

    {
        [Key]
        public int CommentId { get; set; }
        public string NameSurname { get; set; }
        public string Email { get; set; }
        public string Date { get; set; }
        public string Content { get; set; }
        public int AuthorId { get; set; }
        public string Title { get; set; }
        
    }

    
}
