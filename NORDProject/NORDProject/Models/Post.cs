using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NORDProject.Models
{
    public class Post
    {
        public int ID { get; set; }
        public string author { get; set; }
        public string text { get; set; }
        public string DT { get; set; }
        public string LastEditDT { get; set; }

        public Post(int id, string author, string text, string DT, string LastEditDT)
        {
            this.ID = id;
            this.author = author;
            this.text = text;
            this.DT = DT;
            this.LastEditDT = LastEditDT;
        }

        public Post() { }
    }
}