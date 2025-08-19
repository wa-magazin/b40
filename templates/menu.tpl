{strip}
<li><a href="{if empty($isHome)}{$url}{/if}pdf/presentation.pdf">{$t.menu.presentation}
        {if isset($isHome)}
            <img src="{$url}img/download.svg" alt="">
        {elseif isset($isArchitecture)}
            <img src="{$url}img/download-primary.svg" alt="">
        {/if}
    </a></li>
    <li><a href="{if empty($isHome)}{$url}{/if}#about"  onclick="return false;">{$t.menu.about}</a>
    <ul>
        <li><a href="{if empty($isHome)}{$url}{/if}#location">{$t.menu.location}</a></li>
        <li><a href="{if empty($isHome)}{$url}{/if}#facts">{$t.menu.facts}</a></li>
    </ul>
</li>
<li><a href="#" onclick="return false;">{$t.menu.project}</a>
    <ul>
        <li><a href="{if empty($isHome)}{$url}{/if}#architecture">{$t.menu.architecture}</a></li>
        <li><a href="{if empty($isHome)}{$url}{/if}#lobby">{$t.menu.lobby}</a></li>
        <li><a href="{if empty($isHome)}{$url}{/if}#technology">{$t.menu.technology}</a></li>
    </ul>
</li>
<li><a href="{$url}spaces/">{$t.menu.spaces}</a></li>
<li><a href="{if empty($isHome)}{$url}{/if}#team">{$t.menu.team}</a></li>
{/strip}