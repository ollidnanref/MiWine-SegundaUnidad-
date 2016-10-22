<%@ Page Title="" Language="C#" MasterPageFile="~/Sitio.Master" AutoEventWireup="true" CodeBehind="Detalle.aspx.cs" Inherits="Capa_de_Presentacion.Detalle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <p>
        Detalle del Vino</p>
    <p>
        <table style="width:100%;">
            <tr>
                <td class="auto-style7">Código</td>
                <td class="auto-style10">
                    <asp:Label ID="lblCodigo" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblDetalle" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Nombre</td>
                <td class="auto-style10">
                    <asp:Label ID="lblNombre" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">Precio</td>
                <td class="auto-style11">
                    <asp:Label ID="lblPrecio" runat="server"></asp:Label>
                </td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style8">Stock</td>
                <td class="auto-style11">
                    <asp:Label ID="lblStock" runat="server"></asp:Label>
                </td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style7">Cantidad</td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtCantidad" runat="server" Width="68px"></asp:TextBox>
                </td>
                <td>
                    <br />
                    <asp:RequiredFieldValidator ID="valCantidad" runat="server" ControlToValidate="txtCantidad" ErrorMessage="(*) Campo requerido" ForeColor="Red"></asp:RequiredFieldValidator>
                &nbsp;<asp:CompareValidator ID="valCantidad2" runat="server" ControlToValidate="txtCantidad" ErrorMessage="(*) Cantidad debe ser númerico" Operator="DataTypeCheck" Type="Integer" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Button ID="btbAgregar" runat="server" Text="Agregar al Carrito" Width="130px" OnClick="btbAgregar_Click" />
                </td>
                <td class="auto-style10">
                    <asp:Button ID="btnCarrito" runat="server" OnClick="btnCarrito_Click" Text="Ir al Carrito" Width="90px" />
                </td>
                <td>
                    <asp:Button ID="btnVolver" runat="server" Text="Volver a Listado" Width="116px" OnClick="btnVolver_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style10">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    Detalle del Vendedor</td>
                <td class="auto-style10">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style10">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    Rut</td>
                <td class="auto-style10">
                    <asp:Label ID="lblRutVendedor" runat="server"></asp:Label>
                &nbsp;-
                    <asp:Label ID="lblDvVendedor" runat="server"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    Nombre</td>
                <td class="auto-style10">
                    <asp:Label ID="lblNombreVendedor" runat="server"></asp:Label>
                &nbsp;<asp:Label ID="lblApellidoVendedor" runat="server"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </p>




</asp:Content>
