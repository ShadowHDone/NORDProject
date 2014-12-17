using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NORDProject.Models
{
    public class News : Article
    {
        public string smallInfo { get; set; }

        public News(int ID, string smallInfo, string title, string tags, string author, string text, string DT, string LastEditDT):base(title,tags,ID,author,text,DT,LastEditDT)
        {
            this.smallInfo = smallInfo;
        }
        public News() { }
    }
}