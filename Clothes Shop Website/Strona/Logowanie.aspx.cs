using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Strona
{
    public partial class Logowanie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }
        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            if (Membership.ValidateUser(Login1.UserName, Login1.Password) == false)
            {


                Response.BufferOutput = true;
                Response.Redirect("~/Default.aspx", false);
                FormsAuthentication.RedirectFromLoginPage(Login1.UserName, true);
                Session["uname"] = Login1.UserName;

            }
            else
            {
                Response.Write("Invalid Login");
            }
        }

        
        

    }
}