<meta property="og:title" content="$MenuTitle | $SiteConfig.Title" />
<meta property="og:url" content="$AbsoluteLink">

<% if $SocialDescription %>
    <meta property="og:description" content="$SocialDescription" />
<% else_if $Intro %>
    <meta property="og:description" content="$Intro.ContextSummary(200)" />
<% else_if $Content %>
    <meta property="og:description" content="$Content.ContextSummary(200)" />
<% else %>
    <meta property="og:description" content="$SiteConfig.DefaultSocialDescription" />
<% end_if %>

<% if $SocialImage %>
    <meta property="og:image" content="$SocialImage.AbsoluteURL" />
    <meta name="twitter:image:alt" content="$SocialImage.Title">
    <meta name="twitter:card" content="summary_large_image">
<% else_if $SiteConfig.DefaultSocialImage %>
    <meta property="og:image" content="$SiteConfig.DefaultSocialImage.AbsoluteURL" />
    <meta name="twitter:image:alt" content="$SiteConfig.DefaultSocialImage.Title">
    <meta name="twitter:card" content="summary">
<% end_if %>

<meta property="og:site_name" content="$SiteConfig.Title">

<meta property="og:locale" content="en_NZ" />