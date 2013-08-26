using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace iPhoneAppBackend_JSON_Sender_
{
    public partial class in_app_popup : System.Web.UI.Page
    {
        public popup popupD;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uid"] == null)
                Response.Redirect("Default.aspx");

            if (Page.IsPostBack)
            {
                adminDBDataContext admindb = new adminDBDataContext();
                popup popupData = new popup();
                popupData.title = Request["title"];
                popupData.details = Request["details"];
                popupData.button1 = Request["button1"];
                popupData.button2 = Request["button2"];
                admindb.popups.InsertOnSubmit(popupData);
                admindb.SubmitChanges();
            }
            adminDBDataContext admindbc = new adminDBDataContext();
            if (admindbc.popups.Count() > 0) popupD = admindbc.popups.ToList().Last();
            else
                popupD = new popup();
        }
    }
}