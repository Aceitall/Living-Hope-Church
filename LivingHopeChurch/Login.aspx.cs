using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LivingHopeChurch
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Guest_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home_Guest.aspx");
        }
    }
}