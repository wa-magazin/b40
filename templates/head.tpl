{strip}
    <meta charset="utf-8">
    <title>{$title|default:$t.meta.title}</title>
    <meta name="Description" content="{$t.meta.description}">
    <meta name="Keywords" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <link rel="icon" type="image/png" href="{$url}favicon.png">

    <meta property="og:title" content="{$t.meta.og_title}">
    <meta property="og:description" content="{$t.meta.og_description}">
    <meta property="og:url" content="https://www.b40.rs">
    <meta property="og:type" content="website">
    <meta property="og:image" content="https://www.b40.rs/img/image11.jpg">
    <meta property="og:locale" content="{$t.meta.og_locale}">
    <meta property="og:site_name" content="{$t.meta.og_site_name}">

    <link rel="stylesheet" href="{$url}css/swiper.css?v={$smarty.now}">
    <link rel="stylesheet" href="{$url}css/fancybox.css?v={$smarty.now}">
    <link rel="stylesheet" href="{$url}css/fonts/fonts.css">
    <link rel="stylesheet" href="{$url}css/style.css?v={$smarty.now}">

    {literal}
        <!-- Google tag (gtag.js) - GA4 for b40.rs -->
        <script async src="https://www.googletagmanager.com/gtag/js?id=G-7W60XE8NS1"></script>
        <script>
            window.dataLayer = window.dataLayer || [];
            function gtag(){dataLayer.push(arguments);}
            gtag('js', new Date());
            gtag('config', 'G-7W60XE8NS1');
        </script>
        <!-- Google tag (gtag.js) -->
        <script async src="https://www.googletagmanager.com/gtag/js?id=AW-17385470254"></script>
        <script>
            window.dataLayer = window.dataLayer || [];
            function gtag(){dataLayer.push(arguments);}
            gtag('js', new Date());
            gtag('config', 'AW-17385470254');
        </script>

        <!-- Meta Pixel Code -->
        <script>
            !function(f,b,e,v,n,t,s)
            {if(f.fbq)return;n=f.fbq=function(){n.callMethod?
                n.callMethod.apply(n,arguments):n.queue.push(arguments)};
                if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
                n.queue=[];t=b.createElement(e);t.async=!0;
                t.src=v;s=b.getElementsByTagName(e)[0];
                s.parentNode.insertBefore(t,s)}(window, document,'script',
                'https://connect.facebook.net/en_US/fbevents.js');
            fbq('init', '1401049277606927');
            fbq('track', 'PageView');
        </script>
        <noscript><img height="1" width="1" style="display:none"
                       src="https://www.facebook.com/tr?id=1401049277606927&ev=PageView&noscript=1"
            /></noscript>
        <!-- End Meta Pixel Code -->
    {/literal}

{/strip}