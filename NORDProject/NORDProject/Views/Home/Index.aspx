<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    <title><%: ViewData["Title"] %></title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="PageHeaderContent" runat="server">
    <nobr><%: ViewData["Message"] %></nobr>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <p>
        Тут что-то должно скоро быть.
    </p>
</asp:Content>
