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
        <div class="siteheader__lang">
            <svg version="1.1" id="Слой_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                 viewBox="0 0 604 600" style="enable-background:new 0 0 604 600;" xml:space="preserve">
                                <path d="M79,426h448 M79,170h448 M47,298h512 M303,554c0,0-144-64-144-256S303,42,303,42 M303,42c0,0,144,64,144,256
            S303,554,303,554 M303,42v512 M559,298c0,141.4-114.6,256-256,256C161.6,554,47,439.4,47,298C47,156.6,161.6,42,303,42
            C444.4,42,559,156.6,559,298z"/>

                        </svg>
            {if $lang != 'en'}
                <a href="/?lang=en">English</a>
            {else}
                <a href="/?lang=sr">Serbian</a>
            {/if}

        </div>
        <div class="siteheader__burger">
            <span></span>
            <span></span>
            <span></span>
        </div>
        <div class="siteheader__menu {if isset($isHome)}_home{/if} {if isset($isArchitecture)}_spaces{/if}  js-menu">
            <ul>
                {include file="menu.tpl"}
                <li><a href="{if empty($isHome)}{$url}{/if}#contact" class="button {* open-popup *}">{$t.menu.contact}</a></li>
                <li class="siteheader__langSelect">
                    <a href="#" onclick="return false;">
                            <svg version="1.1" id="Слой_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                                 viewBox="0 0 604 600" style="enable-background:new 0 0 604 600;" xml:space="preserve">
                                <path d="M79,426h448 M79,170h448 M47,298h512 M303,554c0,0-144-64-144-256S303,42,303,42 M303,42c0,0,144,64,144,256
            S303,554,303,554 M303,42v512 M559,298c0,141.4-114.6,256-256,256C161.6,554,47,439.4,47,298C47,156.6,161.6,42,303,42
            C444.4,42,559,156.6,559,298z"/>
                                <span>{$lang|upper|default:"EN"}</span>
                        </svg>
                    </a>
                    <ul>
                        <li><a href="/?lang=en">English</a></li>
                        <li><a href="/?lang=sr">Serbian</a></li>
                    </ul>
                </li>
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
            <span class="siteheader__welcomeAgile">{$t.siteheader.welcome.0}</span>
            <span class="siteheader__welcomeDriven">{$t.siteheader.welcome.1}</span>
            <span class="siteheader__welcomeBusiness">{$t.siteheader.welcome.2}</span>
            <span class="siteheader__welcomeHub">{$t.siteheader.welcome.3}</span>
        </div>

        <div class="siteheader__hero">
            <div class="siteheader__heroBg"></div>
            <div class="siteheader__heroAni">
                <h1>{$t.siteheader.headline}</h1>
                <p>{$t.siteheader.subtext nofilter}</p>
            </div>
        </div>
    {/if}
</div>
{if isset($isHome)}
{* <div class="siteheader__spacer"></div> *}
{/if}
{/strip}