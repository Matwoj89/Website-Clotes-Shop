﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Strona
{
    public partial class Rejestracja : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
        {
            MembershipCreateStatus p = MembershipCreateStatus.Success;
            Membership.CreateUser(CreateUserWizard1.UserName,
               CreateUserWizard1.Password, CreateUserWizard1.Email,
            CreateUserWizard1.Question, CreateUserWizard1.Answer, true, out p);
        }

        
    }
}