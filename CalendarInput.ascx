<%@ Control Language="C#" AutoEventWireup="true" CodeFile="CalendarInput.ascx.cs" Inherits="CalendarInput" %>

<span>
    <asp:Label ID="lablconfirmdate"   runat="server" /> 


  

    <asp:Calendar ID="calender" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="16px" OnSelectionChanged="calender_SelectionChanged" ShowGridLines="True" Width="16px" >
        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
        <OtherMonthDayStyle ForeColor="#CC9966" />
        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
        <SelectorStyle BackColor="#FFCC66" />
        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
    </asp:Calendar>
</span>

