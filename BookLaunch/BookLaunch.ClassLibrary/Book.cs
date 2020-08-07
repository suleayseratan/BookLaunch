using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mime;
using System.Text;
using System.Threading.Tasks;

namespace BookLaunch.ClassLibrary
{
    public class Book
    {
        public int Id { get; set; }
        public string BookName { get; set; }
        public int AuthorId { get; set; }
        public string PublishingHouse { get; set; }
        public string Explain { get; set; }
        public string YearReleased { get; set; }
        public string Language { get; set; }
        public Int16 PageNumber { get; set; }
        public int CategoryId { get; set; }
        public  List<Category> Categories { get; set; }
        public string Image { get; set; }
        
    }
}
