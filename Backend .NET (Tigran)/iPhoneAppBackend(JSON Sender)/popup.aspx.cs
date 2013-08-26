using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace iPhoneAppBackend_JSON_Sender_
{
    public partial class popup1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            adminDBDataContext admindb = new adminDBDataContext();
            var popupData = (from p in admindb.popups
                                select new
                                {
                                    title = p.title,
                                    details = p.details,
                                    button1 = p.button1,
                                    button2 = p.button2
                                }).ToList().Last();
            JavaScriptSerializer json = new JavaScriptSerializer();
            string jsonText = json.Serialize(popupData);
            Response.Clear();
            Response.ContentType = "application/json; charset=utf-8";
            Response.Write(jsonText);
            Response.End();
        }
    }
}