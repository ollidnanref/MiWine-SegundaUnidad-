<%@ Page Title="" Language="C#" MasterPageFile="~/Sitio.Master" AutoEventWireup="true" CodeBehind="ListarVino.aspx.cs" Inherits="Capa_de_Presentacion.ListarVino" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    Vendedor: 
    <asp:Label ID="lblNombreVendedor" runat="server" Text=""></asp:Label> <asp:Label ID="lblApellidoVendedor" runat="server" Text=""></asp:Label> 
    <asp:Label ID="lblRutVendedor" runat="server" Text=""></asp:Label>-<asp:Label ID="lblDvVendedor" runat="server" Text=""></asp:Label><br />
    

    <asp:GridView ID="gvVinos" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Codigo" DataSourceID="EntityDataSource1" OnSelectedIndexChanged="gvVinos_SelectedIndexChanged">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="Codigo" HeaderText="Codigo" ReadOnly="True" SortExpression="Codigo" />
            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
            <asp:BoundField DataField="Color" HeaderText="Color" SortExpression="Color" />
            <asp:BoundField DataField="Ano" HeaderText="Ano" SortExpression="Ano" />
            <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" />
            <asp:BoundField DataField="Existencia" HeaderText="Existencia" SortExpression="Existencia" />
        </Columns>
    </asp:GridView>

    <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=MyWineDBEntities" DefaultContainerName="MyWineDBEntities" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="Vino">
    </asp:EntityDataSource>

</asp:Content>
