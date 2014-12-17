<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/News.Master" Inherits="System.Web.Mvc.ViewPage<NORDProject.Models.News>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	<%: ViewData["Title"] %>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div style="color:#003b74;background-color:#fff;margin:5px;">
        <div style="font-size:36px;"><%: Model.title %></div><br />

        <div style="font-size:20px;"><%: Model.text %></div><br />
        
        <div>Создано: <%: Model.DT %> (редактировалось последний раз <%: Model.LastEditDT %>)</div>
        <div>Автор: <%: Model.author %></div>
        <div>Теги: <%: Model.tags %></div>
        
    <p>
    <% if(User.IsInRole("Admin")){ %>
        <%: Html.ActionLink("Редактировать", "Edit", new { id=Model.ID }) %> |
    <% } %>
        <%: Html.ActionLink("Вернуться", "Index") %>
    </p>
</div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="PageHeaderContent" runat="server">
    <nobr><%: ViewData["Message"] %></nobr>
</asp:Content>

