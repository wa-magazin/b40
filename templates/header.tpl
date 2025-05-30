{strip}
<div class="siteheader {if isset($isArchitecture)}_invers{/if} {if empty($isHome)}_empty{/if}">
    <div class="siteheader__top">
        <div class="siteheader__logo">
            <a href="{$url}">
                {if isset($isArchitecture)}
                    <img src="{$url}img/b40-logoFooterInvers.svg" alt="B40">
                {else}
                    <img src="{$url}img/b40-logoFooter.svg" alt="B40">
                {/if}
            </a>
        </div>
        <div class="siteheader__burger">
            <span></span>
            <span></span>
            <span></span>
        </div>
        <div class="siteheader__menu {if isset($isHome)}_home{/if} {if isset($isArchitecture)}_spaces{/if}  js-menu">
            <ul>
                {include file="menu.tpl"}
                <li><a href="{if empty($isHome)}{$url}{/if}#contact" class="button {* open-popup *}">Contact</a></li>
            </ul>
        </div>
    </div>
    {if isset($isHome)}
        <div class="siteheader__img">
            <picture>
                <!-- Мобильная версия -->
                <source media="(max-width: 900px)" srcset="{$url}img/header_mobile.png">
                <!-- Десктопная версия (по умолчанию) -->
                <img src="{$url}img/header.jpg" alt="" class="siteheader__imgPc">
            </picture>
            <div class="siteheader__imgBlock"></div>
        </div>
        <div class="siteheader__welcome">
            <span class="siteheader__welcomeAgile">Agile</span>
            <span class="siteheader__welcomeDriven">Driven</span>
            <span class="siteheader__welcomeBusiness">Business</span>
            <span class="siteheader__welcomeHub">Hub</span>
        </div>
        <div class="siteheader__hero">
            <div class="siteheader__heroBg"></div>
            <div class="siteheader__heroAni">
                <h1>Welcome to b40</h1>
                <p>Innovation and style in&nbsp;the&nbsp;heart of Belgrade.</p>
            </div>
        </div>
    {/if}
</div>
{if isset($isHome)}
{* <div class="siteheader__spacer"></div> *}
{/if}
{/strip}