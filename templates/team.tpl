<!DOCTYPE html>
<html lang="ru">
<head>
    {include file="head.tpl"}
<body class="team-bg">

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

        <div class="teams">
            <div class="teams__item">
                <div class="teams__itemLeft">
                    <img src="/img/teams.jpg" alt="">
                </div>
                <div class="teams__itemRight">
                    <img src="/img/a-logo-white.svg" alt="">
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
                        Paolo Colombo
                        <span>Founder & Founder & Managing Director, A++</span>

                        <img src="/img/arrow2-white.svg" class="teams__arrow"  alt="">
                        <div class="teams__tabsItemText">
                            <p>Carlo Colombo, an award-winning architect, co-founded A++ in 2013, expanding it globally with offices in Lugano, Zurich, New York, Miami, and Dubai. He has collaborated with top Italian brands and exhibited in major international museums.</p>
                            <p>A mentor and educator, he has shaped the future of design through prestigious mentorship programs and academic contributions. His work has earned Red Dot, Elle Decor, and Wallpaper Design Awards.</p>
                        </div>
                    </div>
                </div>
                <div class="teams__tabsRight">

                </div>
            </div>
            <hr>
            <div class="teams__tabsItem">
                <div class="teams__tabsLeft">
                    <div class="teams__tabsItemHeader">
                        Carlo Colombo
                        <span>Partner & Creative Director, A++</span>
                        <img src="/img/arrow2-white.svg" class="teams__arrow" alt="">
                        <div class="teams__tabsItemText">
                            <p>Carlo Colombo, an award-winning architect, co-founded A++ in 2013, expanding it globally with offices in Lugano, Zurich, New York, Miami, and Dubai. He has collaborated with top Italian brands and exhibited in major international museums.</p>
                            <p>A mentor and educator, he has shaped the future of design through prestigious mentorship programs and academic contributions. His work has earned Red Dot, Elle Decor, and Wallpaper Design Awards.</p>
                        </div>
                    </div>
                </div>
                <div class="teams__tabsRight">

                </div>
            </div>

        </div>
        {include file="footer.tpl"}
    </div>
</div>
{include file="scripts.tpl"}

</body>
</html>