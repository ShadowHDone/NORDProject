<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Index.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<NORDProject.Models.News>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    <%: ViewData["Title"] %>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="PageHeaderContent" runat="server">
    <nobr><%: ViewData["Message"] %></nobr>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <% if(User.IsInRole("Admin")){ %>
    <p>
        <%: Html.ActionLink("Напишать новошть", "Create") %>
    </p>
    <% } %>


    <% foreach (var item in Model) { %>
    
        <a href="/Home/News/<%: item.ID %>">
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
