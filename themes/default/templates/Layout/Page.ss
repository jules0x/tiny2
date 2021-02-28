<div class="layout">
    <div class="container pure-g">

        <% if $Menu(2) %>
            <% include MenuSide %>
        <% end_if %>

        <div class="content pure-u-1 <% if $Menu(2) %>pure-u-md-16-24 pure-push-md-2-24<% end_if %>">

            <h1 class="page-title">$MenuTitle</h1>
            <p class="page-intro">$Intro</p>
            <div class="page-content">$Content</div>

            <% if $Form %>
                <div class="form">
                    $Form
                </div>
            <% end_if %>
        </div>
    </div>
</div>
