{strip}
<div class="footer">
    <div class="footer__logo">
        <a href="#top">
            <img src="{$url}img/b40-logoFooter.svg" alt="B40">
        </a>
    </div>
    <div class="footer__menu js-menu">
        <ul>
            <li><a href="{if empty($isHome)}{$url}{/if}pdf/presentation.pdf">{$t.menu.presentation}
                    {if isset($isHome)}
                        <img src="{$url}img/download.svg" alt="">
                    {elseif isset($isArchitecture)}
                        <img src="{$url}img/download-primary.svg" alt="">
                    {/if}
                </a></li>
            <li><a href="{if empty($isHome)}{$url}{/if}#about">{$t.menu.about}</a></li>
            <li><a href="{if empty($isHome)}{$url}{/if}#location">{$t.menu.location}</a></li>
            <li><a href="{$url}spaces/">{$t.menu.spaces}</a></li>
            <li><a href="{if empty($isHome)}{$url}{/if}#team">{$t.menu.team}</a></li>
            <li><a href="{$url}#contact" class="{* open-popup *}">{$t.menu.contact}</a></li>
        </ul>
    </div>
</div>
{/strip}