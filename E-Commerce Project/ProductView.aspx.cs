using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace E_Commerce_Project
{
    public partial class ProductView : System.Web.UI.Page
    {
        ConClass obj = new ConClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if (Session["cid"] != null)
                {
                    string p_sel = "select * from Product_Table where Category_ID='"+Session["cid"]+"'";
                    DataSet ds = obj.Func_execadapter(p_sel);
                    DataList1.DataSource = ds;
                    DataList1.DataBind();
                }
            }
        }
    }
}