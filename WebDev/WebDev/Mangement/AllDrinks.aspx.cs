using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebDev.Models;

namespace WebDev.Mangement
{
    public partial class AllDrinks : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (var db = new DrinksEntities())
            {
                var items = (from d in db.Drinks
                             orderby d.name ascending
                             select d
                            ).ToList();

                GVDrinks.DataSource = items;
                GVDrinks.DataBind();
                
            }
        }
    }
}