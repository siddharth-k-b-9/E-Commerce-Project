using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Commerce_Project
{
    public partial class User_Reg : System.Web.UI.Page
    {
        ConClass obj = new ConClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sel = "select max(Registration_ID) from Login_Table";
            string max_regid = obj.Func_Scalar(sel);
            int reg_id = 0;
            if (max_regid == "")
            {
                reg_id = 1;
            }
            else
            {
                int newregid = Convert.ToInt32(max_regid);
                reg_id = newregid + 1;
            }

            string user_ins = "insert into User_Table values(" + reg_id + ",'" + TextBox_Name.Text + "','" + TextBox_Age.Text + "','"+TextBox_Address.Text+ "','"+TextBox_Mail.Text+ "','"+TextBox_Phone.Text+ "','"+RadioButtonList_Gender.SelectedItem.Text+ "','active')";
            int i = obj.Func_NonQuery(user_ins);
            if (i == 1)
            {
                string login_ins = "insert into Login_Table values(" + reg_id + ",'" + TextBox_UName.Text + "','" + TextBox_Password.Text + "','user')";
                int j = obj.Func_NonQuery(login_ins);
                if (j == 1)
                {
                    Label1.Visible = true;
                    Label1.Text = "Registration Complete";
                }
            }
        }
    }
}