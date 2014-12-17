<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/News.Master" Inherits="System.Web.Mvc.ViewPage<NORDProject.Models.News>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	<%: ViewData["Title"] %>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h3>Реально всё это удалить???</h3>
    <fieldset>
        <legend>Содержимое новости "<%: Model.title %>"</legend>
                
        <div class="display-label">Новость:</div>
        <div class="display-field"><%: Model.title %></div><br />
        
        <div class="display-label">Номер</div>
        <div class="display-field"><%: Model.ID %></div><br />
        
        <div class="display-label">Краткое содержание:</div>
        <div class="display-field"><%: Model.smallInfo %></div><br />
        
        <div class="display-label">Общий текст:</div>
        <div class="display-field"><%: Model.text %></div><br />
        
        <div class="display-label">Время создания:</div>
        <div class="display-field"><%: Model.DT %></div><br />
        
        <div class="display-label">Время последнего изменения:</div>
        <div class="display-field"><%: Model.LastEditDT %></div><br />
        
        <div class="display-label">Автор:</div>
        <div class="display-field"><%: Model.author %></div><br />
        
        <div class="display-label">Теги:</div>
        <div class="display-field"><%: Model.tags %></div><br />
        
    </fieldset>
    <% using (Html.BeginForm()) { %>
        <p>
		    <input type="submit" value="Удалить" /> |
		    <%: Html.ActionLink("Отменить", "Index") %>
        </p>
    <% } %>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="PageHeaderContent" runat="server">
    <nobr><%: ViewData["Message"] %></nobr>
</asp:Content>

