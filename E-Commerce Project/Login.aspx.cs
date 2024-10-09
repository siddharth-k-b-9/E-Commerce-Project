using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Commerce_Project
{
    public partial class Login : System.Web.UI.Page
    {
        ConClass obj = new ConClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string str = "select count(Registration_ID) from Login_Table where Username='" + TextBox_UName.Text + "' and Password='" + TextBox_Password.Text + "'";
            string cid = obj.Func_Scalar(str);
            int cid1 = Convert.ToInt32(cid);
            if (cid1 == 1)
            {
                string str1 = "select Registration_ID from Login_Table where Username='" + TextBox_UName.Text + "' and Password='" + TextBox_Password.Text + "'";
                string reg_id = obj.Func_Scalar(str1);
                //Session["userid"] = reg_id;
                string str2 = "select Log_Type from Login_Table where Username='" + TextBox_UName.Text + "' and Password='" + TextBox_Password.Text + "'";
                string log_type = obj.Func_Scalar(str2);
                if (log_type == "admin")
                {
                    Response.Redirect("AdminDashboard.aspx");
                }
                else if (log_type == "user")
                {
                    Response.Redirect("UserDash.aspx");
                }
            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "Invalid Username or Password.";
            }
        }
    }
}