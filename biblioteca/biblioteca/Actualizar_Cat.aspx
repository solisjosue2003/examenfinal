<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Actualizar_Cat.aspx.cs" Inherits="biblioteca.Actualizar_Cat" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Actualizar producto en lista</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Actualización de productos</h1>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Codigo" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:examfinalConnectionString %>" SelectCommand="SELECT * FROM [Mae_Articulo]" UpdateCommand="update Mae_Articulo set  Cantidad=@canti, Precio=@preci, Costo =@cost 
	   where Descripcion = @descrip">
            <UpdateParameters>
                <asp:ControlParameter ControlID="tcant" Name="canti" PropertyName="Text" />
                <asp:ControlParameter ControlID="tprecio" Name="preci" PropertyName="Text" />
                <asp:ControlParameter ControlID="tcost" Name="cost" PropertyName="Text" />
                <asp:ControlParameter ControlID="DropDownList1" Name="descrip" PropertyName="SelectedValue" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <p>
            Descripción:&nbsp;
            <asp:TextBox ID="tdescrip" runat="server"></asp:TextBox>
        &nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="Descripcion" DataValueField="Descripcion">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:examfinalConnectionString %>" SelectCommand="SELECT [Descripcion] FROM [Mae_Articulo]"></asp:SqlDataSource>
        </p>
        <p>
            Cantidad&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="tcant" runat="server"></asp:TextBox>
        </p>
        <p>
            Precio&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="tprecio" runat="server"></asp:TextBox>
        </p>
        <p>
            Costo&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="tcost" runat="server"></asp:TextBox>
        </p>
        <asp:Button ID="btnactu" runat="server" Text="Actualizar" OnClick="btnactu_Click" BackColor="#CC0000" BorderColor="#000066" BorderStyle="Dashed" Font-Bold="True" Font-Names="Arial Black" Font-Underline="True" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btncerrar" runat="server" OnClick="btncerrar_Click" Text="Cerrar/Volver" BackColor="#CC0000" BorderColor="#000066" BorderStyle="Dashed" Font-Bold="True" Font-Names="Arial Black" Font-Underline="True" />
    </form>
</body>
</html>
