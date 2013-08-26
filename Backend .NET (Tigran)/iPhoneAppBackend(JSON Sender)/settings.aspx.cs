using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace iPhoneAppBackend_JSON_Sender_
{
    public partial class settings : System.Web.UI.Page
    {
        public setting settingD;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uid"] == null)
                Response.Redirect("Default.aspx");

            if (Page.IsPostBack)
            {
                adminDBDataContext admindb = new adminDBDataContext();
                setting settingData = new setting();
                settingData.user_open_app = Request["open_times"] == "on" ? 1:0;
                int count;
                int.TryParse(Request["open_times_count"], out count);
                settingData.user_open_app_count = count;
                settingData.after_editing_countdown = Request["after_edit_countdown"] == "on" ? 1:0;
                settingData.after_editing_color_countdown = Request["after_edit_countdown_color_home"] == "on" ? 1:0;
                settingData.after_swiping_events = Request["swipping_events"] == "on" ? 1:0;
                settingData.after_share_or_save = Request["share_or_save_event"] == "on" ? 1:0;
                settingData.after_crate_new_event = Request["create_new_event"] == "on" ? 1:0;
                settingData.selecting_multiple_countdown = Request["multiple_countdown_select"] == "on" ? 1:0;
                settingData.selecting_countdown_in_multiple = Request["multiple_countdown_fromview_select"] == "on" ? 1:0;
                admindb.settings.InsertOnSubmit(settingData);
                admindb.SubmitChanges();
            }
            adminDBDataContext admindbc = new adminDBDataContext();
            if (admindbc.settings.Count() > 0) settingD = admindbc.settings.ToList().Last();
            else
                settingD = new setting();
        }
    }
}