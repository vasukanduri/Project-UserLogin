using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PatientLogin.Business_Layer;
using System.Data;
using System.Web.Services.Description;

namespace PatientLogin
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblError.Text = "";
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Page.Validate();
            PatientClass pt = new PatientClass()
            {
                FirstName = tbFname.Text,
                LastName = tbLastName.Text,
                Age = int.Parse(tbAge.Text),
                Address = tbAddress.Text,
                UserName = tbUserName.Text,
                Password = tbPassword.Text,
                Email = tbEmail.Text
            };
            if (tbContactNo.Text != "")
            {
                pt.Contact = Int64.Parse(tbContactNo.Text);

            }
            if (RadioButtonList1.SelectedIndex != 0 || RadioButtonList1.SelectedIndex != 1)
            {
                pt.Gender = RadioButtonList1.SelectedValue;
            }
            else
            {
                pt.Gender = "Unknown";

            }
            DataTable dt = pt.CheckUser(pt.UserName);
            if (dt.Rows.Count == 0)
            {
                if (tbPassword.Text == tbPasswordCheck.Text)
                {
                    int pID = pt.RegisterPatient();
                    Session["User"] = pID;
                    RegisteredSuccessfully();
                    lblPatientNo.Text = pID.ToString();
                }
                else
                {
                    lblError.Text = "please enter same values in password and confirm password";
                }
            }
            else
            {
                lblError.Text = "User Name already exist .Please enter another";
                Refresh();

            }

        }
        public void RegisteredSuccessfully()
        {
            pnlReg.Visible = false;
            pnlSuccess.Visible = true;
            //Session["User"] = lblPatientNo.Text;
            Refresh();
        }
        public void Refresh()
        {
            tbFname.Text = "";
            tbLastName.Text = "";
            tbAge.Text = "";
            RadioButtonList1.ClearSelection();
            tbAddress.Text = "";
            tbContactNo.Text = "";
            tbUserName.Text = "";
            tbPassword.Text = "";
            tbPasswordCheck.Text = "";
            tbEmail.Text = "";
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Session["User"] = lblPatientNo.Text;
            Response.Redirect("Patiet.aspx");
        }

    }
}