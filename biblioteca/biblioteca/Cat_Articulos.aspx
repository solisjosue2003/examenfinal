<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cat_Articulos.aspx.cs" Inherits="biblioteca.Cat_Articulos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Catalogo Articulos</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Bienvenido al catalogo de Productos</h1>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Codigo" DataSourceID="SqlDataSource1" Height="156px" Width="348px" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Codigo" HeaderText="Codigo" InsertVisible="False" ReadOnly="True" SortExpression="Codigo" />
                <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" SortExpression="Cantidad" />
                <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" />
                <asp:BoundField DataField="Costo" HeaderText="Costo" SortExpression="Costo" />
                <asp:BoundField DataField="Total_Ventas" HeaderText="Total_Ventas" ReadOnly="True" SortExpression="Total_Ventas" />
                <asp:BoundField DataField="Total_Costos" HeaderText="Total_Costos" ReadOnly="True" SortExpression="Total_Costos" />
                <asp:BoundField DataField="Ganancias" HeaderText="Ganancias" ReadOnly="True" SortExpression="Ganancias" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:examfinalConnectionString %>" SelectCommand="reporteGanancias" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        <asp:Button ID="btncerrar" runat="server" OnClick="btncerrar_Click" Text="Cerrar/Volver" BackColor="#CC0000" BorderColor="#000066" BorderStyle="Dashed" Font-Bold="True" Font-Names="Arial Black" Font-Underline="True" />
    </form>
</body>
</html>
