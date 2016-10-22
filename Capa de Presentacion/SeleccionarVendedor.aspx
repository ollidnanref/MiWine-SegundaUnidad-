<%@ Page Title="" Language="C#" MasterPageFile="~/Sitio.Master" AutoEventWireup="true" CodeBehind="SeleccionarVendedor.aspx.cs" Inherits="Capa_de_Presentacion.ListarVendedor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:GridView ID="gvVendedor" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Rut" DataSourceID="EntityDataSource1" OnSelectedIndexChanged="gvVendedor_SelectedIndexChanged">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="Rut" HeaderText="Rut" ReadOnly="True" SortExpression="Rut" />
            <asp:BoundField DataField="Dv" HeaderText="Dv" SortExpression="Dv" />
            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
            <asp:BoundField DataField="ApellidoPaterno" HeaderText="ApellidoPaterno" SortExpression="ApellidoPaterno" />
            <asp:BoundField DataField="ApellidoMaterno" HeaderText="ApellidoMaterno" SortExpression="ApellidoMaterno" />
            <asp:BoundField DataField="Direccion" HeaderText="Direccion" SortExpression="Direccion" />
            <asp:BoundField DataField="Correo" HeaderText="Correo" SortExpression="Correo" />
            <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
        </Columns>
    </asp:GridView>

    <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=MyWineDBEntities" DefaultContainerName="MyWineDBEntities" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="Vendedor">
    </asp:EntityDataSource>

</asp:Content>
