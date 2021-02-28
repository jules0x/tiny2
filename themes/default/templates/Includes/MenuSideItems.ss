<% if $LinkOrSection == 'section' %>
    <% if $Children %>
        <% loop $Children %>
            <li class="menu-item pure-menu-item">
                <a href="$AbsoluteLink" class="menu-link $LinkOrSection">$MenuTitle</a>
                <% if $Children && $LinkOrSection == 'section' %>
                    <ul class="menu-list menu-list--sidenav pure-menu-list">
                        <% include MenuSideItems Nested='true' %>
                    </ul>
                <% end_if %>
            </li>
        <% end_loop %>
    <% end_if %>
<% end_if %>