using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using PatientLogin.Business_Layer;
namespace PatientLogin
{
    public partial class PatietPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Page.Validate();
            int PatientID = (int)Session["User"];
            if (!IsPostBack)
            {
                if (Session["User"] != null)
                {
                  // int  PatientID = (int)Session["User"];
                    PatientClass p = new PatientClass();
                    DataTable dt = p.GetUserData(PatientID);
                    lblName.Text = dt.Rows[0]["First Name"].ToString();
                    ListView1.DataSource = dt;
                    ListView1.DataBind();                   
                }
               
                pnlNews.Visible = false;
                pnlInfo.Visible = true;
                pnlAppointments.Visible = false;
                pnlChangePassword.Visible = false;

            }
        }      

        protected void lbtnNews_Click(object sender, EventArgs e)
        {
            pnlNews.Visible = true;
            pnlAppointments.Visible = false;
            pnlChangePassword.Visible = false;
            pnlInfo.Visible = false;           
        }

        protected void lbtnPwd_Click(object sender, EventArgs e)
        {           
            pnlChangePassword.Visible = true;
            pnlAppointments.Visible = false;
            pnlInfo.Visible = false;
            pnlNews.Visible = false;
            int PatientID = (int)Session["User"];

        }

        protected void lbtnAppointments_Click(object sender, EventArgs e)
        {
            pnlAppointments.Visible = true;
            pnlNews.Visible = false;
            pnlInfo.Visible = false;
            pnlChangePassword.Visible = false;
        }

        protected void lbtnDetails_Click(object sender, EventArgs e)
        {
            pnlInfo.Visible = true;
            pnlNews.Visible = false;
            pnlChangePassword.Visible = false;
            pnlAppointments.Visible = false;
        }

        protected void btnChangePassword_Click(object sender, EventArgs e)
        {
            Page.Validate();
            int ID = (int)Session["User"];
            PatientClass p = new PatientClass();
            DataTable dt = p.GetPatientLogInfo(ID);
            if(tbOld.Text==dt.Rows[0]["Password"].ToString())
            {
                if(tbNew.Text==tbRepeat.Text)
                {
                    string newPwd = tbNew.Text;
                    p.ChangePassword(ID,newPwd);
                    lblError.Text = "Password changed successfully";
                }
                else
                {
                    lblError.Text = "new password and repeat password did not match";
                }

            }
            else
            {
                lblError.Text = "Old password is not correct";
            }
        }
    }
}