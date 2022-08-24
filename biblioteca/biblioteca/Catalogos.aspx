<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Catalogos.aspx.cs" Inherits="biblioteca.Catalogos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Catálogos</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           <h1>
               <asp:Label ID="lblBienvenida" runat="server"></asp:Label>
            </h1>
            <h1>Articulos&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Usuarios</h1>                                                 <h1>&nbsp;</h1>
            <asp:Button ID="btnarticulos" runat="server" Height="44px" OnClick="btnautores_Click" Text="Catálogo Artículos" Width="158px" BackColor="#CC0000" BorderColor="#000066" BorderStyle="Dashed" Font-Bold="True" Font-Names="Arial Black" Font-Underline="True" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnusuarios" runat="server" Height="47px" OnClick="btnlibros_Click" Text="Catálogo Usuarios" Width="145px" BackColor="#CC0000" BorderColor="#000066" BorderStyle="Dashed" Font-Bold="True" Font-Names="Arial Black" Font-Underline="True" />
            <br />
            <br />
            <asp:Button ID="btnagregar" runat="server" Height="42px" OnClick="btnagregar_Click" Text="Agregar Artículo" Width="136px" BackColor="#CC0000" BorderColor="#000066" BorderStyle="Dashed" Font-Bold="True" Font-Names="Arial Black" Font-Underline="True" />
            <br />
            <br />
            <asp:Button ID="btnactualizar" runat="server" OnClick="btnactualizar_Click" Text="Actualizar productos" BackColor="#CC0000" BorderColor="#000066" BorderStyle="Dashed" Font-Bold="True" Font-Names="Arial Black" Font-Underline="True" Height="45px" Width="168px" />
            <br />
            <br />
            <asp:Button ID="btnborrar" runat="server" OnClick="btnborrar_Click" Text="Borrar Producto de lista" BackColor="#CC0000" BorderColor="#000066" BorderStyle="Dashed" Font-Bold="True" Font-Names="Arial Black" Font-Underline="True" Height="47px" Width="170px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnsalir" runat="server" BackColor="#CC0000" BorderColor="#000066" BorderStyle="Dashed" Font-Bold="True" Font-Names="Arial Black" Font-Underline="True" Height="30px" OnClick="btnsalir_Click" Text="Salir" Width="93px" />
        </div>
    </form>
</body>
</html>
