<%@ Page Language="C#" AutoEventWireup="true" Theme="orderpizza" CodeFile="BulkOrder.aspx.cs" Inherits="BulkOrder" MasterPageFile="~/PizzaPlace.master" EnableEventValidation="false" %>

<%@ Register TagPrefix="cal" TagName="calender" Src="~/CalendarInput.ascx" %>


<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">

    <head>
        <title>Bulk order pizzas</title>
        <style>
            td {
                padding: 3px;
                text-align: left;
            }



            .padding {
                padding: 10px;
            }

            .button {
                background-color: #4CAF50;
                border: none;
                color: white;
                padding: 15px 32px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 16px;
                margin: 4px 2px;
                cursor: pointer;
                border-radius: 8px;
            }
        </style>
    </head>
    <body>
        <form id="pizzaorder">
            <div style="border: double darkcyan; align-content: center">
                <asp:MultiView ID="pizzaview" runat="server" ActiveViewIndex="0">
                    <asp:View ID="Bulkorderview" runat="server">
                        <table>
                            <tr>
                                <td>Name:  
                                </td>
                                <td>
                                    <asp:TextBox ID="txtname" runat="server" />
                                    <asp:RequiredFieldValidator ID="RequireName" runat="server" ErrorMessage="Name is required."
                                        ControlToValidate="txtname">
                                    </asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>Phone No: 
                                   <br />
                                    (ex:555.555.5555)  
                                </td>
                                <td>
                                    <asp:TextBox ID="txtphoneno" runat="server" />
                                    <asp:RequiredFieldValidator ID="RequirePhone" runat="server" ErrorMessage="Phone no is required."
                                        ControlToValidate="txtphoneno"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator runat="server" ID="regexph" ControlToValidate="txtphoneno" ErrorMessage="Please Enter the phone number in as shown in example format." ValidationExpression="^[0-9]{3}[.][0-9]{3}[.][0-9]{4}$" />
                                </td>
                            </tr>
                            <tr>
                                <td>No of Pizzas:    
                                </td>
                                <td>
                                    <asp:TextBox ID="txtnofpizza" runat="server" />
                                    <asp:RequiredFieldValidator ID="NoofPizzaRequire" runat="server" ErrorMessage="No of pizzas is required."
                                        ControlToValidate="txtnofpizza">
                                    </asp:RequiredFieldValidator>
                                    <asp:RangeValidator ID="noofpizzaRange" ControlToValidate="txtnofpizza" runat="server" MaximumValue="100" MinimumValue="1" ErrorMessage="Value should be between 1 to 100." />
                                </td>
                            </tr>
                            <tr>
                                <td>Catering Location: 
                                </td>
                                <td>

                                    <asp:TextBox ID="txtlocation" runat="server" />
                                    <asp:RequiredFieldValidator ID="LocatioinRequire" runat="server" ErrorMessage="Location is required."
                                        ControlToValidate="txtlocation">
                                    </asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>Confirm Location:  
                                </td>
                                <td>

                                    <asp:TextBox ID="txtconfirmlocation" runat="server" />
                                    <asp:RequiredFieldValidator ID="ConfirmlocRequire" runat="server" ErrorMessage="Confirm location is required."
                                        ControlToValidate="txtconfirmlocation" />
                                    <asp:CompareValidator ForeColor="Blue" ID="locationCompare" runat="server" ControlToValidate="txtlocation" ControlToCompare="txtconfirmlocation" ErrorMessage="Confirm Location and Catering location does not match." />
                                </td>
                            </tr>
                            <tr>
                                <td>Confirmation Date: 
                                </td>
                                <td style="padding: 1px !important">
                                    <cal:calender ID="confrmdate" runat="server" />
                                    <asp:Label runat="server" ID="confirmlablmsg" Visible="false" />
                                </td>
                            </tr>
                            <tr>
                                <td>Event Date:
                                </td>
                                <td style="padding: 0px">
                                    <cal:calender ID="eventdate" runat="server" />
                                    <asp:Label runat="server" ID="eventlablmsg" Visible="false" />
                                </td>
                            </tr>
                        </table>
                        <div>
                            <asp:Button  CssClass="button" ID="btnsubmit" Text="Submit Order" runat="server" OnClick="btnsubmit_Click" />
                        </div>
                    </asp:View>

                    <asp:View ID="invoiceview" runat="server">
                        <div style="text-align: justify">
                            <h2 class="padding">Order summary!</h2>
                            <div class="padding">
                                Customer Name:  
                                <asp:Label ID="lblname" runat="server" />
                            </div>
                            <div class="padding">
                                Phone No 
                                <asp:Label ID="lblphoneno" runat="server" />
                            </div>
                            <div class="padding">
                                No of Pizzas: 
                                <asp:Label ID="lblnoofpizzas" runat="server" />
                            </div>
                            <div class="padding">
                                Catering Locaton:  
                                <asp:Label ID="lbllocation" runat="server" />
                            </div>
                            <div class="padding">
                                Confirmation Date:  
                                <asp:Label ID="lblconfrmdate" runat="server" />
                            </div>
                            <div class="padding">
                                Event Date:  
                                <asp:Label ID="lbleventdate" runat="server" />
                            </div>
                            <div class="padding">
                                Order Cost:  
                                <asp:Label ID="lblcost" runat="server" />
                            </div>
                        </div>
                    </asp:View>

                </asp:MultiView>

            </div>
        </form>
    </body>
    </html>
</asp:Content>
