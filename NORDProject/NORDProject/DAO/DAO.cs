using System;
using System.Collections.Generic;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

namespace NORDProject.DAO
{
    public class DAO
    {
        
        protected SqlConnection connection;

        public DAO()
        {
            this.connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ApplicationServices"].ToString());
        }

        public DAO(String connectionString)
        {
            this.connection = new SqlConnection(connectionString);
        }

        protected void Connect()
        {
            connection.Open();
        }

        protected void Disconnect()
        {
            connection.Close();
        }

        public SqlDataReader perform(String action)
        {

            SqlCommand command = new SqlCommand(action, connection);
            SqlDataReader result = command.ExecuteReader();
            return result;
        }
    }
}