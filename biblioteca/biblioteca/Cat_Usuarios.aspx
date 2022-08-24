<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cat_Usuarios.aspx.cs" Inherits="biblioteca.Cat_Usuarios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Bienvenido al catalogo de Usuarios</h1>
            <p>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="173px" Width="307px" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="Cedula" HeaderText="Cedula" SortExpression="Cedula" />
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                        <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:examfinalConnectionString %>" SelectCommand="SELECT * FROM [persona]"></asp:SqlDataSource>
            </p>
        </div>
        <asp:Button ID="btncerrar" runat="server" OnClick="btncerrar_Click" Text="Cerrar/Volver" BackColor="#CC0000" BorderColor="#000066" BorderStyle="Dashed" Font-Bold="True" Font-Names="Arial Black" Font-Overline="False" Font-Underline="True" ForeColor="Black" />
    </form>
</body>
</html>
