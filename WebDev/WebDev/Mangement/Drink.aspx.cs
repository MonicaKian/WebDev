using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.ModelBinding;

namespace WebDev.Mangement
{
    public partial class Drink : System.Web.UI.Page
    {

        Models.DrinksEntities db = new Models.DrinksEntities();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // The id parameter should match the DataKeyNames value set on the control
        // or be decorated with a value provider attribute, e.g. [QueryString]int id
        public WebDev.Models.Drink FVDrinkItem_GetItem([QueryString]int? id)
        {
            Models.Drink dri = null;
            if (id.HasValue)
            {
               // dri = db.Drinks.Find(id.Value);
                dri = (from d in db.Drinks
                       where d.drinkId == id.Value
                       select d).FirstOrDefault();
            }        
            return null;
        }

        // The id parameter name should match the DataKeyNames value set on the control
        public void FVDrinkItem_UpdateItem(int id)
        {
            WebDev.Models.Drink item = null;
            // Load the item here, e.g. item = MyDataLayer.Find(id);
            if (item == null)
            {
                // The item wasn't found
                ModelState.AddModelError("", String.Format("Item with id {0} was not found", id));
                return;
            }
            TryUpdateModel(item);
            if (ModelState.IsValid)
            {
                // Save changes here, e.g. MyDataLayer.SaveChanges();

            }
        }

        // The id parameter name should match the DataKeyNames value set on the control
        public void FVDrinkItem_DeleteItem(int id)
        {

        }

        public void FVDrinkItem_InsertItem()
        {
            var item = new WebDev.Models.Drink();
            TryUpdateModel(item);
            if (ModelState.IsValid)
            {
                // Save changes here

            }
        }
    }
}