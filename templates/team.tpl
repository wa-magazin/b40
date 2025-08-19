<!DOCTYPE html>
<html lang="ru">
<head>
    {include file="head.tpl"}
<body class="team-bg">

{include file="popup.tpl"}

<div id="smooth-wrapper">
    <div id="smooth-content">
        <div class="mobilemenu js-mobilemenu">
            <ul>
                {include file="menu.tpl"}
            </ul>
            <div class="mobilemenu__close">
                <span></span>
                <span></span>
            </div>
            <div class="mobilemenu__button">
                <a href="#contact" class="button  {* open-popup *}">Contact</a>
            </div>
        </div>
        {include file="header.tpl"}

        <div class="teams">
            <div class="teams__item">
                <div class="teams__itemLeft">
                    <img src="{$url}img/teams.jpg" alt="">
                </div>
                <div class="teams__itemRight">
                    <img src="{$url}img/a-logo-white.svg" alt="">
                    <p>{$t.teams.company.subtitle}</p>
                    <hr>
                    <p>{$t.teams.company.text1}</p>
                    <p>{$t.teams.company.text2}</p>
                </div>
            </div>
        </div>
        <div class="teams__tabs">
            {foreach from=$t.teams.people item=person}
                <div class="teams__tabsItem">
                    <div class="teams__tabsLeft">
                        <div class="teams__tabsItemHeader">
                            <div class="teams__tabsItemL">
                                {$person.name}
                                <span>{$person.position}</span>
                                <img src="{$url}img/arrow2-white.svg" class="teams__arrow" alt="">
                            </div>
                            <div class="teams__tabsItemR">
                                <div class="teams__tabsItemText">
                                    {foreach $person.text as $p}
                                        <p>{$p nofilter}</p>
                                    {/foreach}
                                    <img src="{$url}img/close.svg" class="teams__close" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <hr>
            {/foreach}
        </div>
        {include file="footer.tpl"}
    </div>
</div>
{include file="scripts.tpl"}

</body>
</html>