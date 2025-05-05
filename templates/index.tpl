{strip}
<!DOCTYPE html>
<html lang="ru">
<head>
    {include file="head.tpl"}
<body class="locked">



<div id="intro">
    <div class="logo">
        <svg width="136" height="82" viewBox="0 0 136 82" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M135.131 0H94.0021C93.7697 0 93.5796 0.189864 93.5796 0.421919V53.5837C93.5796 53.8158 93.7697 54.0057 94.0021 54.0057H135.131C135.364 54.0057 135.554 53.8158 135.554 53.5837V0.421919C135.575 0.189864 135.385 0 135.131 0ZM115.232 41.4536H113.965V12.5521H115.232V41.4536Z" fill="#888063"/>
            <path fill-rule="evenodd" clip-rule="evenodd" d="M91.869 0H70.3432V15.9274H69.0757V0H47.5077C47.2753 0 47.0852 0.189864 47.0852 0.421919V31.6861C47.0852 31.9182 47.2753 32.1081 47.5077 32.1081H71.7163C72.6458 32.1081 73.4063 32.8675 73.4063 33.7957V53.5837C73.4063 53.8158 73.5964 54.0057 73.8287 54.0057H91.869C92.1014 54.0057 92.2915 53.8158 92.2915 53.5837V0.421919C92.3126 0.189864 92.1225 0 91.869 0Z" fill="#888063"/>
            <path fill-rule="evenodd" clip-rule="evenodd" d="M71.7174 33.3949H47.5088C46.5794 33.3949 45.8189 32.6355 45.8189 31.7072V0.421919C45.8189 0.189864 45.6288 0 45.3964 0H0.422489C0.19012 0 0 0.189864 0 0.421919V81.5781C0 81.8101 0.19012 82 0.422489 82H71.6963C71.9287 82 72.1188 81.8101 72.1188 81.5781V33.8168C72.1399 33.5848 71.9498 33.3949 71.7174 33.3949ZM45.84 55.2714H26.1943V54.0057H45.84V55.2714Z" fill="#888063"/>
        </svg>
    </div>
</div>
<main>Контент страницы</main>


<div class="fixed-backgrounds">
    <div class="bg bg-1">
        <img src="img/fixed-1.jpg" alt="">
    </div>
    <div class="bg bg-2">
        <img src="img/fixed-2.jpg" alt="">
    </div>
    <div class="bg bg-3">
        <img src="img/fixed-3.jpg" alt="">
    </div>
    <div class="bg bg-4">
        <img src="img/fixed-4.jpg" alt="">
    </div>
</div>
{include file="popup.tpl"}
<div id="smooth-wrapper">
    <div id="smooth-content">
        <div class="mobilemenu js-menu">
            <ul>
                {include file="menu.tpl"}
            </ul>
            <div class="mobilemenu__close">
                <span></span>
                <span></span>
            </div>
            <div class="mobilemenu__button">
                <a href="#" class="button open-popup">Contact</a>
            </div>
        </div>

        {include file="header.tpl"}
        {include file="home.tpl"}
        {include file="footer.tpl"}
    </div>
</div>
{include file="scripts.tpl"}
</body>
</html>
{/strip}