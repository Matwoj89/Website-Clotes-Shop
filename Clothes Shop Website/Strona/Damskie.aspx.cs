using SklepStrona.Klasy;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Strona
{
    public partial class Damskie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "Dodaj")
            {

                if (Session["uname"] != null)
                {
                    DataListItem item = (DataListItem)(((Button)(e.CommandSource)).NamingContainer);
                    int id = int.Parse(((Label)e.Item.FindControl("IdLabel")).Text.ToString());
                    KoszykC.Instance.AddItem(id);
                    Response.Redirect("Koszyk.aspx");
                }
                else
                {
                    Response.Redirect("Logowanie.aspx");
                }
            }
        }

        protected void Dodaj_Click(object sender, EventArgs e)
        {

        }
    }
}