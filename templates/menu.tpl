{strip}
<li><a href="{if empty($isHome)}{$url}{/if}pdf/brochure.pdf">Presentation
        {if isset($isHome)}
            <img src="{$url}img/download.svg" alt="">
        {elseif isset($isArchitecture)}
            <img src="{$url}img/download-primary.svg" alt="">
        {/if}
    </a></li>
    <li><a href="{if empty($isHome)}{$url}{/if}#about"  onclick="return false;">About</a>
    <ul>
        <li><a href="{if empty($isHome)}{$url}{/if}#location">Location</a></li>
        <li><a href="{if empty($isHome)}{$url}{/if}#facts">Facts and Figures</a></li>
    </ul>
</li>
<li><a href="#" onclick="return false;">The project</a>
    <ul>
        <li><a href="{if empty($isHome)}{$url}{/if}#architecture">Architecture</a></li>
        <li><a href="{if empty($isHome)}{$url}{/if}#lobby">Lobby</a></li>
        <li><a href="{if empty($isHome)}{$url}{/if}#technology">Technology</a></li>
    </ul>
</li>
<li><a href="{$url}spaces/">Spaces</a></li>
<li><a href="{$url}team/">Team</a></li>
{/strip}