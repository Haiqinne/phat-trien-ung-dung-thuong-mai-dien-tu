using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class themsv : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void InsertedCmd(object sender, FormViewInsertedEventArgs e)
        {
            if(e.Exception!= null)
            {
                e.KeepInInsertMode = true;
                e.ExceptionHandled= true;
                errmsg.Text = "co loi xay ra: " + e.Exception.Message;
            }
            else
            {
                errmsg.Text = "";
            }
        }

        protected void ItemInserting(object sender, FormViewInsertEventArgs e)
        {
            FileUpload f = (FileUpload)FormView1.FindControl("FileUpload1");
            string path = Server.MapPath("~/Images/");
            f.PostedFile.SaveAs(path + f.FileName);
            SqlDataSource1.InsertParameters["anh"].DefaultValue = f.FileName;
        }
    }
}