<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registro.aspx.cs" Inherits="biblioteca.registro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>Cédula:&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="tcedula" runat="server" Height="22px" BackColor="#CC0000" BorderColor="#000066" BorderStyle="Dashed"></asp:TextBox>
            </h3>
            <h3>Nombre:&nbsp;&nbsp; <asp:TextBox ID="tnombre" runat="server" BackColor="#CC0000" BorderColor="#000066" BorderStyle="Dashed"></asp:TextBox>
            </h3>
           
            <h3>Apellido:&nbsp; <asp:TextBox ID="tapellido" runat="server" BackColor="#CC0000" BorderColor="#000066" BorderStyle="Dashed"></asp:TextBox>
            </h3>
            <h3>Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="temail" runat="server" BackColor="#CC0000" BorderColor="#000066" BorderStyle="Dashed"></asp:TextBox>
            </h3>
            <h3>Clave:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="tclave" runat="server" BackColor="#CC0000" BorderColor="#000066" BorderStyle="Dashed" Font-Bold="False"></asp:TextBox>
            </h3>
            <br />
        </div>
        <asp:Button ID="btnregistrar" runat="server" OnClick="btnregistrar_Click" Text="Registrar" BackColor="#CC0000" BorderColor="#000066" BorderStyle="Dashed" Font-Bold="True" Font-Names="Arial Black" Font-Overline="True" Font-Strikeout="False" Font-Underline="True" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnvolver" runat="server" OnClick="btnvolver_Click" Text="Volver" BackColor="#CC0000" BorderColor="#000066" BorderStyle="Dashed" Font-Bold="True" Font-Names="Arial Black" Font-Overline="True" Font-Underline="True" />
    </form>
</body>
</html>
