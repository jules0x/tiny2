<header class="header">
    <div class="header-container container">

        <a class="brand" href="$BaseHref">$SiteConfig.Title</a>

        <button class="hamburger pure-button hidden-md" aria-label="Mobile menu" data-menu-toggle>
            <span class="hamburger-box">
                <span class="hamburger-inner"></span>
            </span>
        </button>

        <nav class="menu menu--main" data-menu>
            <ul class="pure-menu-list menu-list" data-menu-list>
                <% loop $Menu(1) %>
                    <li class="menu-item">
                        <a href="$AbsoluteLink" class="menu-link $LinkingMode">$MenuTitle</a>
                    </li>
                <% end_loop %>
            </ul>
        </nav>
    </div>
</header>
