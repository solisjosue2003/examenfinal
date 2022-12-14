<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Borrar_Product.aspx.cs" Inherits="biblioteca.Borrar_Product" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Borrar Producto</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Borrar productos</h1>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Codigo" DataSourceID="SqlDataSource1" Height="155px" Width="283px" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Codigo" HeaderText="Codigo" InsertVisible="False" ReadOnly="True" SortExpression="Codigo" />
                <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" SortExpression="Cantidad" />
                <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" />
                <asp:BoundField DataField="Costo" HeaderText="Costo" SortExpression="Costo" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:examfinalConnectionString %>" DeleteCommand="delete  Mae_Articulo where Descripcion = @descrip" SelectCommand="SELECT * FROM [Mae_Articulo]">
            <DeleteParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="descrip" PropertyName="SelectedValue" />
            </DeleteParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="Descripcion" DataValueField="Descripcion">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:examfinalConnectionString %>" SelectCommand="SELECT [Descripcion] FROM [Mae_Articulo]"></asp:SqlDataSource>
        <br />
        <br />
        <asp:Button ID="btnborrar" runat="server" OnClick="btnborrar_Click" Text="Borrar producto" BackColor="#CC0000" BorderColor="#000066" BorderStyle="Dashed" Font-Bold="True" Font-Names="Arial Black" Font-Underline="True" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btncerrar" runat="server" Height="25px" OnClick="btncerrar_Click" Text="Cerrar/Volver" Width="119px" BackColor="#CC0000" BorderColor="#0000CC" BorderStyle="Dashed" Font-Bold="True" Font-Italic="False" Font-Names="Arial Black" Font-Underline="True" />
        <br />
    </form>
</body>
</html>
