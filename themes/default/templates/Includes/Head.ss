<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="jules0x">

    <% if $MetaDescription %>
        <meta name="description" content="$MetaDescription">
    <% end_if %>

    <% include SocialMeta %>

    <% base_tag %>

    <link rel="canonical" href="$AbsoluteLink">

    <title>
        <% if $FormMessage %>$FormMessage
        <% else %>$Title
        <% end_if %>|  $SiteConfig.Title
    </title>

</head>