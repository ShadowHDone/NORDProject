using System;
using System.Collections.Generic;
using System.Web;
using System.Data.SqlClient;

namespace NORDProject.DAO
{
    interface iCRUD<T>
    {
        SqlDataReader insert(T obj);
        SqlDataReader update(T obj);
        SqlDataReader delete(int id);
        List<T> select();
        T selectbyId(int id);
    }
}