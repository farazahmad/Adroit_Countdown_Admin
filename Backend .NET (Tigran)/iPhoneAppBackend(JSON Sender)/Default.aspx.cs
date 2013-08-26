using System;
using System.Collections.Generic;
using System.Data.Linq.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace iPhoneAppBackend_JSON_Sender_
{
    public partial class Default : System.Web.UI.Page
    {
        public bool WrongPassword { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                adminDBDataContext admindb = new adminDBDataContext();
                var uid = (from u in admindb.users where SqlMethods.Like(u.username , Request["username"]) && SqlMethods.Like(u.passowrd ,Request["password"]) select u.id).ToList();

                if (uid.Count == 1)
                {
                    Session["uid"] = uid[0];
                    WrongPassword = false;
                    Response.Redirect("in-app-popup.aspx");
                }
                else
                {
                    WrongPassword = true;
                }
            }
            else
                Session.Abandon();
        }
    }
}