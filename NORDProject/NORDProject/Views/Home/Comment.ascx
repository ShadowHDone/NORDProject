<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<IEnumerable<NORDProject.Models.Comment>>" %>


    <% foreach (var item in Model) { %>
    
        <div style="margin-left:5px;"><hr />
        <font style="font-size:12px">
                <%: item.author %>

                <font style="color:#999;">
                <%: item.DT %>
                </font></font>

                <br />
                
                <% if (item.LastEditDT != item.DT)
                   { %>
                       <%: item.LastEditDT %>
                  <% } %>

                <%: item.text %>
            <br />
            <font style="font-size: 12px">
                <% if (item.author == Page.User.Identity.Name || Page.User.IsInRole("Super-User"))
                   { %>
                <%: Html.ActionLink("Удалить", "DeleteComment", new { id=item.ID })%>
                |
                <% } %>
                <% if(Page.User.Identity.IsAuthenticated)
       { %>
                <%: Html.ActionLink("Пожаловаться", "SetCommentReport", new { id = item.ID })%>
                <% } %>
        </font>

        </div>
    
    <% } %>



