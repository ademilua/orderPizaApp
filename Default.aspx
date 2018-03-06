<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ChallengeFirstPapaTolusWebsite.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 729px">
    
        <asp:Image ID="resultImage" runat="server" style="margin-right: 4px" Width="168px" />
        <asp:Label ID="logoNameLabel" runat="server" Font-Bold="True" Font-Size="Larger" Text="Papa Tolu's Pizza and Software"></asp:Label>
        <br />
        <br />
        <asp:RadioButton ID="babyToluRadioButton" runat="server" Text="Baby Tolu Size(10&quot;)-$10" GroupName="SizeGroup" />
        <br />
        <asp:RadioButton ID="MamaToluRadioButton" runat="server" Text="Mama Tolu Size(13&quot;)-$13" GroupName="SizeGroup" />
        <br />
        <asp:RadioButton ID="PapaToluRadioButton" runat="server" Text="Papa Tolu Size(16&quot;)-$16" GroupName="SizeGroup" />
        <br />
        <br />
        <asp:RadioButton ID="thinCrustRadioButton" runat="server" Text="Thin Crust" />
        <br />
        <asp:RadioButton ID="deepDishRadioButton" runat="server" Text="Deep Dish(+$2)" />
        <br />
        <br />
        <asp:CheckBox ID="pepperoniCheckBox" runat="server" Text="Pepperoni (+$1.50)" />
        <br />
        <asp:CheckBox ID="onionsCheckBox" runat="server" Text="Onions(+$0.75)" />
        <br />
        <asp:CheckBox ID="greenPeppersCheckBox" runat="server" Text="Green Peppers(+$0.50)" />
        <br />
        <asp:CheckBox ID="redPeppersCheckBox" runat="server" Text="Red Peppers(+$0.75)" />
        <br />
        <asp:CheckBox ID="anchoviesCheckBox" runat="server" Text="Anchovies(+$2.00)" />
        <br />
        <br />
        Papa Tolu&#39;s&nbsp; <asp:Label ID="specialDealLabel" runat="server" ForeColor="Red"></asp:Label>
        <br />
        <br />
        Save $2.00 when you add Pepperoni, Green Peppers and Anchovies Or Pepperoni , Red Peppers and Onions to your pizza.<br />
        <br />
        <asp:Button ID="purchaseButton" runat="server" OnClick="purchaseButton_Click" Text="Purchase" />
        <br />
        <br />
        <br />
        <asp:Label runat="server" Text="Total:"></asp:Label>
&nbsp;<asp:Label ID="totalLabel" runat="server">$0.00</asp:Label>
        <br />
        <br />
        Sorry , at this time you can only order one pizza online, and pick-up only... we need a better website!<br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
