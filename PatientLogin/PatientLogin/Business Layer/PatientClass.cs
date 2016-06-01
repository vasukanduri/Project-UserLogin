using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using PatientLogin.DataAccessLayer;
using System.Data.SqlClient;

namespace PatientLogin.Business_Layer
{
    public class PatientClass
    {
        public string UserName;
        public string Password;
        public string Email;
        public int PatientID;
        public string FirstName;
        public string LastName;
        public int Age;
        public string Gender;
        public string Address;
        public Int64 Contact;

        public DataTable CheckUser(string UserName)
        {
            SqlParameter[] parameters = new SqlParameter[1];
            parameters[0] = DataAccessLayer.Data.AddParameter("@UserID", UserName, SqlDbType.NVarChar, 50);
            DataTable dt = DataAccessLayer.Data.ExecuteDTByProcedure("SP_CheckUser", parameters);
            return dt;
        }
        public DataTable GetPatientLogInfo(int PatientID)
        {
            SqlParameter[] parameters = new SqlParameter[1];
            parameters[0] = DataAccessLayer.Data.AddParameter("@PatientID", PatientID, SqlDbType.Int, 32);
            DataTable dt = DataAccessLayer.Data.ExecuteDTByProcedure("SP_GetLogInfo", parameters);
            return dt;
        }
        public int RegisterPatient()
        {
            SqlParameter[] parameters = new SqlParameter[10];
            parameters[0] = DataAccessLayer.Data.AddParameter("@FirstName", FirstName, SqlDbType.VarChar, 50);
            parameters[1] = DataAccessLayer.Data.AddParameter("@LastName", LastName, SqlDbType.NVarChar, 50);
            parameters[2] = DataAccessLayer.Data.AddParameter("@Age", Age, SqlDbType.Int, 32);
            parameters[3] = DataAccessLayer.Data.AddParameter("@Email", Email, SqlDbType.VarChar, 50);
            parameters[4] = DataAccessLayer.Data.AddParameter("@Gender", Gender, SqlDbType.VarChar, 50);
            parameters[5] = DataAccessLayer.Data.AddParameter("@Address", Address, SqlDbType.VarChar, 50);
            parameters[6] = DataAccessLayer.Data.AddParameter("@Contact", Contact, SqlDbType.BigInt, 100);
            parameters[7] = DataAccessLayer.Data.AddParameter("@UserName", UserName, SqlDbType.VarChar, 50);
            parameters[8] = DataAccessLayer.Data.AddParameter("@Password", Password, SqlDbType.VarChar, 50);
            parameters[9] = DataAccessLayer.Data.AddParameter("@PatientID", PatientID, SqlDbType.Int, 32);
            DataTable dt = DataAccessLayer.Data.ExecuteDTByProcedure("RegisterPatient", parameters);
            PatientID = int.Parse(dt.Rows[0]["Column1"].ToString());
            return PatientID;
        }
        public void ChangePassword(int PatientID, string NewPassword)
        {
            SqlParameter[] parameters = new SqlParameter[2];
            parameters[0] = DataAccessLayer.Data.AddParameter("@PatientID", PatientID, SqlDbType.Int, 32);
            parameters[1] = DataAccessLayer.Data.AddParameter("@Password", NewPassword, SqlDbType.NVarChar, 50);
            DataTable dt = DataAccessLayer.Data.ExecuteDTByProcedure("SP_ChangePassword", parameters);
        }
        public DataTable GetUserData(int PatientId)
        {
            SqlParameter[] parameters = new SqlParameter[1];
            parameters[0] = DataAccessLayer.Data.AddParameter("@PatientID", PatientId, SqlDbType.Int, 32);
            DataTable dt = DataAccessLayer.Data.ExecuteDTByProcedure("SP_GetUserData", parameters);
            return dt;
        }

    }
}