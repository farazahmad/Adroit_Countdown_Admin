using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Script.Serialization;

namespace iPhoneAppBackend_JSON_Sender_
{
    public partial class setting1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            adminDBDataContext admindb = new adminDBDataContext();
            var settingsData = (from s in admindb.settings
                               select new
                               {
                                   user_open_app = s.user_open_app,
                                   user_open_app_count = s.user_open_app_count,
                                   selecting_multiple_countdown = s.selecting_multiple_countdown,
                                   selecting_countdown_in_multiple = s.selecting_countdown_in_multiple,
                                   after_crate_new_event = s.after_crate_new_event,
                                   after_editing_color_countdown = s.after_editing_color_countdown,
                                   after_editing_countdown = s.after_editing_countdown,
                                   after_share_or_save = s.after_share_or_save,
                                   after_swiping_events = s.after_swiping_events
                               }).ToList().Last();
            JavaScriptSerializer json = new JavaScriptSerializer();
            string jsonText = json.Serialize(settingsData);
            Response.Clear();
            Response.ContentType = "application/json; charset=utf-8";
            Response.Write(jsonText);
            Response.End();
        }
    }
}