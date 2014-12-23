using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NORDProject.Models
{
    public class Article : Post
    {
        public string title { get; set; }
        public string tags { get; set; }
        public string status { get; set; }

        public Article(string title, string tags, int ID, string author, string text, string DT, string LastEditDT):base(ID,author,text,DT,LastEditDT)
        {
            this.tags = tags;
            this.title = title;
        }
        public Article() { }
    }
}