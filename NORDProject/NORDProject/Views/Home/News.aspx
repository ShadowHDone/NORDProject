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

    <% if (Model.status == "Недооформлено")
       { %>
    <% if (User.Identity.Name==Model.author || User.IsInRole("Super-Author"))
       { %>
       <%: Html.ActionLink("Опубликовать", "SetPublic", new { id = Model.ID })%> |
       <%: Html.ActionLink("Редактировать", "Edit", new { id = Model.ID })%> |
       <%: Html.ActionLink("Удалить", "Delete", new { id = Model.ID })%> |
    <% }
       } %>



    <% if(User.IsInRole("Super-Author") && Model.status=="Опубликовано")
       { %>

        <%: Html.ActionLink("[В \"Недооформлено\"]", "SetTemp", new { id = Model.ID })%> |
    <% } %>

        <% if(User.Identity.IsAuthenticated)
       { %>

        <%: Html.ActionLink("Пожаловаться", "SetNewsReport", new { id = Model.ID })%> |
    <% } %>

        <%: Html.ActionLink("Вернуться", "Index") %>

    </p>
</div>

       <% Html.RenderAction("Comment", Model.ID); %>

   <% if (User.Identity.IsAuthenticated)
      {
          Html.RenderAction("CommentCreate", new { id = Model.ID });
      }
      else
      { %>
   Только зарегестрированные пользователи могут оставлять комментарии!
   <% } %>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="PageHeaderContent" runat="server">
    <nobr><%: ViewData["Message"] %></nobr>
</asp:Content>

