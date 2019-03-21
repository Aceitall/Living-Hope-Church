using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LivingHopeChurch
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Registration_Click(object sender, EventArgs e)
        {
            Session["User"] = TextBox1.Text;
            Session["Pass"] = Password.Value;
            Session["First"] = TextBox3.Text;
            Session["Last"] = TextBox4.Text;
            Session["Email"] = TextBox5.Text;
            Session["Number"] = TextBox6.Text;
            Response.Redirect("Registration_Verify.aspx");
        }
    }
}