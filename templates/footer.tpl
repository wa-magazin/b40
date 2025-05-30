{strip}
<div class="footer">
    <div class="footer__logo">
        <img src="{$url}img/b40-logoFooter.svg" alt="B40">
    </div>
    <div class="footer__menu js-menu">
        <ul>
            <li><a href="{if empty($isHome)}{$url}{/if}pdf/brochure.pdf">Presentation
                    {if isset($isHome)}
                        <img src="{$url}img/download.svg" alt="">
                    {elseif isset($isArchitecture)}
                        <img src="{$url}img/download-primary.svg" alt="">
                    {/if}
                </a></li>
            <li><a href="{if empty($isHome)}{$url}{/if}#about">About</a></li>
            <li><a href="{if empty($isHome)}{$url}{/if}#location">Location</a></li>
            <li><a href="{$url}spaces/">Spaces</a></li>
            <li><a href="{$url}team/">Team</a></li>
            <li><a href="{$url}#contact" class="{* open-popup *}">Contact</a></li>
        </ul>
    </div>
</div>
{/strip}