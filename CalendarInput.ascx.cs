using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CalendarInput : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void calender_SelectionChanged(object sender, EventArgs e)
    {

        lablconfirmdate.Text = calender.SelectedDate.ToString("MM/dd/yyyy");
    }
}