using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace E_Commerce_Project
{
    public partial class UserDash : System.Web.UI.Page
    {
        ConClass obj = new ConClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                string cat_sel = "select * from Category_Table";
                DataSet ds = obj.Func_execadapter(cat_sel);
                DataList_Cat.DataSource = ds;
                DataList_Cat.DataBind();
            }

        }
        protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
        {
            ImageButton clickedButton = (ImageButton)sender;

            // Get the CommandArgument
            string catid = clickedButton.CommandArgument;

            // Check if the CommandArgument is valid
            if (!string.IsNullOrEmpty(catid) && int.TryParse(catid, out int categoryId))
            {
                // If it's a valid integer, store it in session and redirect
                Session["cid"] = categoryId;
                Response.Redirect("ProductView.aspx");
            }
        }
    }
}