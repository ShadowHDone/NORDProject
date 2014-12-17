<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<IEnumerable<NORDProject.Models.Comment>>" %>

    <table>
        <tr>
            <th></th>
            <th>
                ID
            </th>
            <th>
                author
            </th>
            <th>
                text
            </th>
            <th>
                DT
            </th>
            <th>
                LastEditDT
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Edit", "Edit", new { /* id=item.PrimaryKey */ }) %> |
                <%: Html.ActionLink("Details", "Details", new { /* id=item.PrimaryKey */ })%> |
                <%: Html.ActionLink("Delete", "Delete", new { /* id=item.PrimaryKey */ })%>
            </td>
            <td>
                <%: item.ID %>
            </td>
            <td>
                <%: item.author %>
            </td>
            <td>
                <%: item.text %>
            </td>
            <td>
                <%: item.DT %>
            </td>
            <td>
                <%: item.LastEditDT %>
            </td>
        </tr>
    
    <% } %>

    </table>


