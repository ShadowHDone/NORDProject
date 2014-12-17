<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/News.Master" Inherits="System.Web.Mvc.ViewPage<NORDProject.Models.News>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	<%: ViewData["Title"] %>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>

        <fieldset>
            <legend>Содержимое:</legend>


            <div class="editor-label">
                Название новости:
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.title) %>
                <%: Html.ValidationMessageFor(model => model.title) %>
            </div>
            
            <div class="editor-label">
                Краткое описание:
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.smallInfo) %>
                <%: Html.ValidationMessageFor(model => model.smallInfo) %>
            </div>
            
            <div class="editor-label">
                Текст новости:
            </div>
            <div class="editor-field">
                <%: Html.TextAreaFor(model => model.text) %> <!-- TextArea для большого пространства ввода текста новости)) -->
                
                <%: Html.ValidationMessageFor(model => model.text) %>
            </div>
            
            <div class="editor-label">
                Теги:
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.tags) %>
                <%: Html.ValidationMessageFor(model => model.tags) %>
            </div>

            <div class="editor-label">
                Автор:
            </div>
            <div class="editor-field">
                <input id="author" type="text" value="<%: User.Identity.Name %>" name="author" readonly="readonly">
                <%: Html.ValidationMessageFor(model => model.author)%>
            </div>
            
            <p>
                <input type="submit" value="Create" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%: Html.ActionLink("Отмена", "Index") %>
    </div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="PageHeaderContent" runat="server">
<nobr><%: ViewData["Message"] %></nobr>
</asp:Content>

