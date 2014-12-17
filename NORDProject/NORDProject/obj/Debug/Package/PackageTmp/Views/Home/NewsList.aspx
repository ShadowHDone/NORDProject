<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/News.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<NORDProject.Models.News>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	NORDP | Список новостей
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    <% if(User.IsInRole("Admin")){ %>
    <p>
        <%: Html.ActionLink("Create New", "Create") %>
    </p>
    <% } %>


    <% foreach (var item in Model) { %>
    
        <a href="/Home/Details/<%: item.ID %>">
            <div class="Nord">
            <font style="font-size:28px"><%: item.title %></font>
            <br />
            <font style="font-size:14px"><%: item.smallInfo %></font>
            <br />

                <% if(User.IsInRole("Admin")){ %>
                    <font style="Color:Red;">Администрирование: 
                    <%: Html.ActionLink("[Редактировать]", "Edit", new { id=item.ID }) %> |
                    <%: Html.ActionLink("[Удалить]", "Delete", new { id = item.ID })%>
                    </font>
                <% } %>
                 
            </div>
        </a>
    <% } %>



</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="PageHeaderContent" runat="server">
    Список новостей
</asp:Content>

