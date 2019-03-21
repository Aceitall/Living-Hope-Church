using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;
namespace LivingHopeChurch
{
    public partial class Registration_Verify : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HiddenField1.Value = "F";
            if ((Session["User"] == null) || (Session["Pass"] == null) || (Session["First"] == null) || (Session["Last"] == null) || (Session["Email"] == null) || (Session["Number"] == null))
            {
                Label1.Text = "All fields have to be filled. Do not leave it empty.";
                Label2.Text = "Error";
                Response.AppendHeader("Refresh", "3;url=Registration.aspx");
            }
            else
            {
                if (Session["Pass"].ToString().Length < 8)
                {
                    Label1.Text = "Password has to be at least 8 characters long";
                    Label2.Text = "Error";
                    Response.AppendHeader("Refresh", "3;url=Registration.aspx");
                }
                else if (Session["First"].ToString().Any(Char.IsDigit))
                {
                    Label1.Text = "First name cannot contain any numbers";
                    Label2.Text = "Error";
                    Response.AppendHeader("Refresh", "3;url=Registration.aspx");
                }
                else if (Session["Last"].ToString().Any(Char.IsDigit))
                {
                    Label1.Text = "Last name cannot contain any numbers";
                    Label2.Text = "Error";
                    Response.AppendHeader("Refresh", "3;url=Registration.aspx");
                }
                else if(!Session["Email"].ToString().Contains("@")||(!Session["Email"].ToString().Contains("."))||(Session["Email"].ToString().Length < 15))
                {
                    Label1.Text = "Please provide correct email address";
                    Label2.Text = "Error";
                    Response.AppendHeader("Refresh", "3;url=Registration.aspx");
                }
                else if (!Session["Number"].ToString().All(Char.IsDigit))
                {
                    Label1.Text = "Number cannot contain characters";
                    Label2.Text = "Error";
                    Response.AppendHeader("Refresh", "3;url=Registration.aspx");
                }
                else if (Session["Number"].ToString().Length < 10)
                {
                    Label1.Text = "Number has to be 10 digits long";
                    Label2.Text = "Error";
                    Response.AppendHeader("Refresh", "3;url=Registration.aspx");
                }
                else
                {
                    Label2.Text = "Registered successfully";
                    Response.AppendHeader("Refresh", "3;url=Login.aspx");
                    HiddenField1.Value = "T";
                }
            }
        }
    }
}