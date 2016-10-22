<%@ Page Title="" Language="C#" MasterPageFile="~/Sitio.Master" AutoEventWireup="true" CodeBehind="CrearNuevoVino.aspx.cs" Inherits="Capa_de_Presentacion.CrearNuevoVino" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<table style="width:100%;">
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">Código</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtCodigo" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="ValRequCodigo" runat="server" ControlToValidate="txtCodigo" ErrorMessage="(*) Campo requerido" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Nombre</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="ValRequNombre" runat="server" ControlToValidate="txtNombre" ErrorMessage="(*) Campo requerido" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Color</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtColor" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="ValRequColor" runat="server" ControlToValidate="txtColor" ErrorMessage="(*) Campo requerido" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Año</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtAno" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="ValRequAno" runat="server" ControlToValidate="txtAno" ErrorMessage="(*) Campo requerido" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;
                <asp:CompareValidator ID="ValNumAno" runat="server" ControlToValidate="txtAno" ErrorMessage="(*) Año debe ser númerico" ForeColor="Red" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Precio</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtPrecio" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="ValRequPrecio" runat="server" ErrorMessage="(*) Campo requerido" ForeColor="Red" ControlToValidate="txtPrecio"></asp:RequiredFieldValidator>
&nbsp;
                <asp:CompareValidator ID="ValNumPrecio" runat="server" ControlToValidate="txtPrecio" ErrorMessage="(*) Precio debe ser númerico" ForeColor="Red" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Existencia</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtExistencia" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="ValRequExistencia" runat="server" ControlToValidate="txtExistencia" ErrorMessage="(*) Campo requerido" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;
                <asp:CompareValidator ID="ValNumExistencia" runat="server" ControlToValidate="txtExistencia" ErrorMessage="(*) Existencia debe ser númerico" ForeColor="Red" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">
                
                <asp:Button ID="btnCrearVino" runat="server" Text="Crear Vino" OnClick="btnCrearVino_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
&nbsp;&nbsp;
                &nbsp;&nbsp;
                &nbsp;&nbsp;
                </td>
        </tr>
    </table>
</asp:Content>
