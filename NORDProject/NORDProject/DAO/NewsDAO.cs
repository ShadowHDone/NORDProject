using System;
using System.Collections.Generic;
using System.Web;
using NORDProject.Models;
using System.Data.SqlClient;

namespace NORDProject.DAO
{
    public class NewsDAO : DAO,iCRUD<News>
    {

        public SqlDataReader insert(News obj)
        {
            base.Connect();
            String command = "INSERT INTO News(Title, SmallInfo, Text, Tags, DT, LastEditDT, Autor) ";
            command += "VALUES ('" + obj.title + "','" + obj.smallInfo + "','" + obj.text + "','" + obj.tags + "', GETDATE(), GETDATE(), '" + obj.author + "')";


            base.perform(command);
            base.Disconnect();
            return null;
        }

        public SqlDataReader update(News obj)
        {
            base.Connect();
            String command = "UPDATE News ";
            command += "SET Title = '" + obj.title + "',SmallInfo = '" + obj.smallInfo + "',Text = '" + obj.text + "',Tags = '" + obj.tags + "', LastEditDT = GETDATE() ";
            command += "WHERE ID = '" + obj.ID + "'";


            base.perform(command);
            base.Disconnect();
            return null;
        }

        public SqlDataReader delete(int id)
        {
            base.Connect();
            String command = "DELETE FROM News WHERE ID = '" + id + "'";
            base.perform(command);
            base.Disconnect();
            return null;
        }

        public List<News> select()
        {
            
            List<News> list = new List<News>();
            base.Connect();
            String command = "SELECT * FROM News ORDER BY ID DESC";
            SqlDataReader result = base.perform(command);
            while (result.Read())
            {
                News news = new News();
                news.ID = result.GetInt32(0);
                news.title = result.GetString(1);
                news.smallInfo = result.GetString(2);
                list.Add(news);
            }
            base.Disconnect();
            return list;
        }

        public News selectbyId(int id)
        {
            News news = new News();
            base.Connect();
            String command = "SELECT * FROM News WHERE ID = '" + id + "'";
            SqlDataReader result = base.perform(command);
            while (result.Read())
            {
                news.title = result.GetString(1);
                news.smallInfo = result.GetString(2);
                news.text = result.GetString(3);
                news.tags = result.GetString(4);
                
                

                if (!result.IsDBNull(5))
                {
                    news.DT = Convert.ToString(result.GetDateTime(5));
                }
                else { news.DT = "неизвестно когда"; }


                if (!result.IsDBNull(6))
                {
                    news.LastEditDT = Convert.ToString(result.GetDateTime(6));
                }
                else { news.LastEditDT = "неизвестно когда"; }

                news.author = result.GetString(7);
            }
            base.Disconnect();
            return news;
        }
    }
}