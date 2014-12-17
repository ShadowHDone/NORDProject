using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using NORDProject.Models;
using System.Data.SqlClient;

namespace NORDProject.DAO
{
    public class CommentsDAO : DAO
    {
        public List<Comment> selectbyId(int id)
        {
            List<Comment> list = new List<Comment>();
            base.Connect();
            String command = "SELECT * FROM Comments WHERE NewsID='" + id + "'";
            SqlDataReader result = base.perform(command);
            while (result.Read())
            {
                Comment comment = new Comment();
                comment.author = result.GetString(1);
                comment.text = result.GetString(2);


                if (!result.IsDBNull(3))
                {
                    comment.DT = Convert.ToString(result.GetDateTime(3));
                }
                else { comment.DT = "неизвестно когда"; }


                if (!result.IsDBNull(4))
                {
                    comment.LastEditDT = Convert.ToString(result.GetDateTime(4));
                }
                else { comment.LastEditDT = "неизвестно когда"; }
                list.Add(comment);
            }
            base.Disconnect();
            return list;
        }
    }
}