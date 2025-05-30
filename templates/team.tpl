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
                    <p>Pro Squad</p>
                    <hr>
                    <p>A++ is an international architectural firm specializing in architecture and interior design. Headquartered in Lugano, Switzerland, with offices in 20 countries, the firm has developed comprehensive architectural and interior design concepts for luxury brands such as Lamborghini, Elie Saab, Versace, and Bentley.</p>
                    <p>Great buildings are the result of brilliant minds and bold ideas. b40's lobby, designed by A++, combines elegance with functionality, creating an exceptional workspace. Their work ensures that b40's lobby is not just a workspace, but an experience.</p>
                </div>
            </div>
        </div>

        <div class="teams__tabs">
            <div class="teams__tabsItem">
                <div class="teams__tabsLeft">
                    <div class="teams__tabsItemHeader">
                        <div class="teams__tabsItemL">
                            Paolo Colombo
                            <span>Founder & Founder & Managing Director, A++</span>
                            <img src="{$url}img/arrow2-white.svg" class="teams__arrow"  alt="">
                        </div>
                        <div class="teams__tabsItemR">
                            <div class="teams__tabsItemText">
                                <p>Born in 1970, architect Paolo Colombo graduated from the Politecnico di Milano in 1998 and founded the international studio A++, specializing in sustainable and functional design of hotels, restaurants, residences, and commercial spaces. His innovative approach blends art, practicality, and environmental harmony to enhance well-being. </p>
                                <img src="{$url}img/close.svg" class="teams__close"  alt="">
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <hr>
            <div class="teams__tabsItem">
                <div class="teams__tabsLeft">
                    <div class="teams__tabsItemHeader">
                        <div class="teams__tabsItemL">
                        Carlo Colombo
                        <span>Partner & Creative Director, A++</span>
                        <img src="{$url}img/arrow2-white.svg" class="teams__arrow" alt="">
                        </div>
                        <div class="teams__tabsItemR">
                            <div class="teams__tabsItemText">
                                <p>Carlo Colombo, an award-winning architect, co-founded A++ in 2013, expanding it globally with offices in Lugano, Zurich, New York, Miami, and Dubai. He has collaborated with top Italian brands and exhibited in major international museums.</p>
                                <p>A mentor and educator, he has shaped the future of design through prestigious mentorship programs and academic contributions. His work has earned Red Dot, Elle Decor, and Wallpaper Design Awards.</p>
                                <img src="{$url}img/close.svg" class="teams__close"  alt="">
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>
        {include file="footer.tpl"}
    </div>
</div>
{include file="scripts.tpl"}

</body>
</html>