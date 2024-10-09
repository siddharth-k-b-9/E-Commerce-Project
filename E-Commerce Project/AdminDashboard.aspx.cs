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
    public partial class AdminDashboard : System.Web.UI.Page
    {
        ConClass obj = new ConClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Bind_Grid();
                dropdown_bind();
                Bind_Grid_Prod();
            }
            
        }
        public void Bind_Grid()
        {
            string bind = "select * from Category_Table";
            DataSet ds = obj.Func_execadapter(bind);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        public void Bind_Grid_Prod()
        {
            string bind = "select * from Product_Table";
            DataSet ds = obj.Func_execadapter(bind);
            GridView2.DataSource = ds;
            GridView2.DataBind();
        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Panel3.Visible = false;
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string img = "~/CategoryImage/" + FileUploadImage.FileName;
            FileUploadImage.SaveAs(MapPath(img));
            string ins = "insert into Category_Table values('"+TextBox_CatName.Text+"','"+TextBox_CatDesc.Text+"','"+img+"')";
            int i = obj.Func_NonQuery(ins);
            if(i==1)
            {
                Label7.Text = "Insertion Successful.";
            }
            Bind_Grid();
            
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int i = e.RowIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[i].Value);
            string del = "delete from Category_Table where Category_ID=" + getid + "";
            obj.Func_NonQuery(del);
            Bind_Grid();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            Bind_Grid();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            Bind_Grid();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int i = e.RowIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[i].Value);
            TextBox TextBox_Name = (TextBox)GridView1.Rows[i].Cells[0].Controls[0];
            TextBox TextBox_Desc = (TextBox)GridView1.Rows[i].Cells[1].Controls[0];
            FileUpload FileUpl_Image = GridView1.Rows[i].FindControl("FileUpload2") as FileUpload;
            string udt = "";

            if (FileUploadImage.HasFile)
            {
                string loctn = Server.MapPath("~/CategoryImage/");
                string imgup1 = System.IO.Path.Combine(loctn, FileUpl_Image.FileName);
                FileUpl_Image.SaveAs(imgup1);

                string imgqry = "~/CategoryImage/" + FileUpl_Image.FileName;
                udt = "update Category_Table set Category_Name='" + TextBox_Name.Text + "',Category_Desc='" + TextBox_Desc.Text + "',Category_Image='" + imgqry + "' where Category_ID=" + getid + "";
            }
            else
            {
                udt = "update Category_Table set Category_Name='" + TextBox_Name.Text + "',Category_Desc='" + TextBox_Desc.Text + "' where Category_ID=" + getid + "";
            }
            obj.Func_NonQuery(udt);
            Bind_Grid();
            GridView1.EditIndex = -1;
            Bind_Grid();
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel3.Visible = true;
        }

        public void dropdown_bind()
        {
            string cat = "select Category_ID, Category_Name from Category_Table";
            DataSet ds = obj.Func_execadapter(cat);
            DropDownList_Cat.DataSource = ds;
            DropDownList_Cat.DataTextField = "Category_Name";
            DropDownList_Cat.DataValueField = "Category_ID";
            DropDownList_Cat.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string imgp = "~/ProductImage/" + FileUpload_PImg.FileName;
            FileUpload_PImg.SaveAs(MapPath(imgp));
            string ins = "insert into Product_Table values('" + DropDownList_Cat.SelectedValue + "','" + TextBox_PName.Text + "','"+TextBox_PDesc.Text+"','"+TextBox_PPrice.Text+"','" + imgp + "','Available','"+TextBox_PStock.Text+"')";
            int i = obj.Func_NonQuery(ins);
            if (i == 1)
            {
                Label14.Visible = true;
                Label14.Text = "Insertion Successful.";
            }
            Bind_Grid_Prod();

        }

        protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int i = e.RowIndex;
            int getid = Convert.ToInt32(GridView2.DataKeys[i].Value);
            string del = "delete from Product_Table where Product_ID=" + getid + "";
            obj.Func_NonQuery(del);
            Bind_Grid_Prod();
        }

        protected void GridView2_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView2.EditIndex = e.NewEditIndex;
            Bind_Grid_Prod();

        }

        protected void GridView2_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView2.EditIndex = -1;
            Bind_Grid_Prod();
        }

        protected void GridView2_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int i = e.RowIndex;
            int getid = Convert.ToInt32(GridView2.DataKeys[i].Value);
            TextBox TextBox_PName = (TextBox)GridView2.Rows[i].Cells[0].Controls[0];
            TextBox TextBox_PDesc = (TextBox)GridView2.Rows[i].Cells[1].Controls[0];
            TextBox TextBox_PPrice = (TextBox)GridView2.Rows[i].Cells[2].Controls[0];
            TextBox TextBox_PStock = (TextBox)GridView2.Rows[i].Cells[4].Controls[0];
            FileUpload FileUpl_PImage = GridView2.Rows[i].FindControl("FileUpload3") as FileUpload;

            string udt = "";
            if (FileUpload_PImg.HasFile)
            {
                string loctn = Server.MapPath("~/ProductImage/");
                string imgup1 = System.IO.Path.Combine(loctn, FileUpl_PImage.FileName);
                FileUpl_PImage.SaveAs(imgup1);

                string imgqry = "~/ProductImage/" + FileUpl_PImage.FileName;
                udt = "update Product_Table set Product_Name='" + TextBox_PName.Text + "',Product_Details='" + TextBox_PDesc.Text + "',Product_Photo='" + imgqry + "',Product_Price='" + TextBox_PPrice.Text + "',Product_Stock='" + TextBox_PStock.Text + "' where Product_ID=" + getid + "";
            }
            else
            {
                udt = "update Product_Table set Product_Name='" + TextBox_PName.Text + "',Product_Details='" + TextBox_PDesc.Text + "',Product_Price='" + TextBox_PPrice.Text + "',Product_Stock='" + TextBox_PStock.Text + "' where Product_ID=" + getid + "";
            }
            obj.Func_NonQuery(udt);
            Bind_Grid_Prod();
            GridView1.EditIndex = -1;
            Bind_Grid_Prod();
        }
    }
}