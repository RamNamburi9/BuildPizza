using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BulkOrder : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        Label datelable = (Label)confrmdate.FindControl("lablconfirmdate");
        Label eventlable = (Label)eventdate.FindControl("lablconfirmdate");

        if(datelable.Text == "")
        {
            confirmlablmsg.Text = "Please select confirm date.";
            confirmlablmsg.Visible = true;
            return;
        }
        else
        {
            confirmlablmsg.Visible = false;
        }

        if(eventlable.Text =="")
        {
            eventlable.Text = "Please select event date.";
            eventlable.Visible = true;
           

            return;
        }
        else
        {
            eventlable.Visible = false;
        }

        //fill order and navidate to the confirm order view
        if (Page.IsValid)
        {
            fillorder(datelable,eventlable);
        }
       

    }

    protected void fillorder( Label datelable, Label eventlable)
    {
        lblname.Text = txtname.Text;

        lblphoneno.Text = txtphoneno.Text;

        lbllocation.Text = txtconfirmlocation.Text;

        lblnoofpizzas.Text = txtnofpizza.Text;

        lblconfrmdate.Text = datelable.Text;
        lbleventdate.Text = eventlable.Text;

        lblcost.Text = (Int64.Parse(txtnofpizza.Text) * 10).ToString();

        pizzaview.ActiveViewIndex = 1;
    }
}



