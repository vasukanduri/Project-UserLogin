using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace PatientLogin.DataAccessLayer
{
    public class Data
    {
        public static string ConnectionString
        {
            get
            {
                return WebConfigurationManager.ConnectionStrings["dbConnPatientLogin"].ConnectionString.ToString();
            }
        }
        public static SqlParameter AddParameter(string paramName, object value, SqlDbType dbType, int size)
        {
            SqlParameter param = new SqlParameter();
            param.ParameterName = paramName;
            param.Value = value.ToString();
            param.SqlDbType = dbType;
            param.Size = size;
            param.Direction = ParameterDirection.Input;
            return param;
        }
        public static DataTable ExecuteDTByProcedure(string ProcedureName, SqlParameter[] Params)
        {
            SqlConnection conn = new SqlConnection(ConnectionString);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = ProcedureName;
            cmd.Parameters.AddRange(Params);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            try
            {
                da.Fill(dt);

            }
            catch
            {

            }
            finally
            {
                da.Dispose();
                conn.Dispose();
                cmd.Parameters.Clear();
                cmd.Dispose();

            }

            return dt;
        }

    }
}