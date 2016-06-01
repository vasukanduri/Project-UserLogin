using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PatientLogin.Business_Layer;
using System.Data;

namespace PatientLogin
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void tbUserName_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {


            PatientClass p = new PatientClass();
            DataTable dt = p.CheckUser(tbUserName.Text);
            if (dt.Rows.Count == 0)
            {
                lblMessage.Text = "UserName does not exist";
            }
            else
            {
                if (dt.Rows[0]["Password"].ToString() == tbPassword.Text)
                {
                    Session["User"] = dt.Rows[0]["Patient ID"];
                    Response.Redirect("PatietPage.aspx");
                }
                else
                {
                    lblMessage.Text = "Pass word Incorrect";
                }
            }


        }
    }
}