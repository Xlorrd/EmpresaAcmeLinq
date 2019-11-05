<%@ Page Title="" Language="C#" MasterPageFile="~/Login.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="CapaVista.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_login" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>
   <center><table class="alt">
        <tr>
            <td>
            <asp:Label ID="Label1" runat="server" Text="Usuario"></asp:Label>
            </td>
            <td class="auto-style7">
            <asp:TextBox ID="txt_usuario" runat="server"  Width="275px"></asp:TextBox>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>            
        </tr>
        <tr>
            <td>
            <asp:Label ID="Label2" runat="server" Text="Contraseña"></asp:Label>
            </td>
            <td class="auto-style7">
            <asp:TextBox ID="txt_contra" TextMode="Password" runat="server" Width="273px"></asp:TextBox>
            </td>
           
        </tr>
    </table></center> 
            <asp:Label ID="intento" runat="server" Text=""></asp:Label>
                <asp:Button ID="btn_ingresar" runat="server" CssClass="button alt" OnClick="btn_ingresar_Click" Text="Iniciar" Width="201px" Height="49px" />
               <br />
        <br />
               <a href ="RestablecerPass.aspx"> Olvidaste tu contraseña </a>
  </ContentTemplate></asp:UpdatePanel>
   
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph_contenido" runat="server">
</asp:Content>
