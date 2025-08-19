{strip}
<div class="start section-text1" id="about">
    <div class="start__item">
        <div class="start__itemHeader">
            {$t.about.title}
        </div>
        <div class="start__itemBody">
            {$t.about.text}
        </div>
    </div>
</div>
<div class="trigger-1"></div>
<div class="image-mobile trigger-1-mobile">
    <img src="{$url}img/fixed-1-mobile.jpg" alt="">
</div>

<div class="start margin-section" id="location">
    <div class="start__item">
        <div class="start__itemHeader">
            {$t.location.title}
        </div>
        <div class="start__itemBody">
            {$t.location.text}
            <a href="https://maps.app.goo.gl/J6iM3NBDAxixksNo7" target="_blank">{$t.location.button}</a>
        </div>
    </div>
</div>
<div class="location">
    <div class="location__inner">
    <div class="location__map">
        <div class="animate-section">
            <div class="animate-box"></div>
            <a href="https://maps.app.goo.gl/J6iM3NBDAxixksNo7" target="_blank"></a>
            <img src="{$url}img/map.png" alt="" class="animate">
        </div>
    </div>
    <div class="location__description">
        <div class="location__descriptionItem">
            <div class="location__descriptionItemIcon">
                <img src="{$url}img/icon-1.svg" alt="">
            </div>
            <div class="location__descriptionItemText">
                <ul>
                    <li>
                        {$t.transport.minutes|sprintf:3}
                        <span>{$t.transport.to_highway}</span>
                    </li>
                    <li>
                        {$t.transport.minutes|sprintf:10}
                        <span>{$t.transport.to_airport}</span>
                    </li>
                    <li>
                        {$t.transport.minutes|sprintf:10}
                        <span>{$t.transport.to_station}</span>
                    </li>
                    <li>
                        {$t.transport.minutes|sprintf:10}
                        <span>{$t.transport.to_center}</span>
                    </li>
                </ul>
            </div>
        </div>
        <div class="location__descriptionItem">
            <div class="location__descriptionItemIcon">
                <img src="{$url}img/icon-2.svg" alt="">
            </div>
            <div class="location__descriptionItemText">
                <ul>
                    <li>
                        {$t.transport.minutes|sprintf:3}
                        <span>{$t.transport.to_west65}</span>
                    </li>
                    <li>
                        {$t.transport.minutes|sprintf:5}
                        <span>{$t.transport.to_green}</span>
                    </li>
                    <li>
                        {$t.transport.minutes|sprintf:5}
                        <span>{$t.transport.to_airport_city}</span>
                    </li>
                    <li>
                        {$t.transport.minutes|sprintf:7}
                        <span>{$t.transport.to_station_short}</span>
                    </li>
                </ul>
            </div>
        </div>

    </div>
    </div>
</div>

<div class="trigger-2"></div>

<div class="image-mobile trigger-2-mobile">
    <img src="{$url}img/fixed-2-mobile.jpg" alt="">
</div>

<div class="numbers section-text2" id="facts">
    <div class="numbersHeader">
        {$t.facts.title}
    </div>
    <div class="numbers__inner">
        <div class="numbers__items">
            {foreach from=$t.facts.items item=item}
                <div class="numbers__item">
                    <h2 data-number="{$item.value}">0</h2>
                    <p>{$item.text nofilter}</p>
                </div>
            {/foreach}
        </div>
    </div>
</div>

<div class="features" id="architecture">
    <div class="features__inner">
        <div class="features__top">
        <div class="features__topImage">
            <div class="animate-section">
                <div class="animate-box"></div>
                <img src="{$url}img/image4.jpg" alt="" class="animate">
            </div>
        </div>
        <div class="features__topText">
            <h3>{$t.architecture.title}</h3>
            <p>{$t.architecture.text}</p>
        </div>
    </div>
        <div class="features__gallery">
        <div class="featires__galleryItem">
            <div class="animate-section">
                <div class="animate-box"></div>
                <img src="{$url}img/gallery1.jpg" alt="" class="animate">
            </div>
        </div>
        <div class="featires__galleryItem">
            <div class="animate-section">
                <div class="animate-box"></div>
                <img src="{$url}img/gallery2.jpg" alt="" class="animate">
            </div>
        </div>
        <div class="featires__galleryItem">
            <div class="animate-section">
                <div class="animate-box"></div>
                <img src="{$url}img/gallery3.jpg" alt="" class="animate">
            </div>
        </div>
    </div>
    </div>
</div>
<div class="working  section-text3">
    <div class="working__inner">
    <div class="working__top">
        <div class="working__topText">
            <h3>{$t.working.title}</h3>
            <p>{$t.working.text}</p>
        </div>
        <div class="working__topImage">
            <div class="animate-section">
                <div class="animate-box"></div>
                <img src="{$url}img/image5.jpg" alt="" class="animate">
            </div>
        </div>
    </div>
    </div>
</div>

<div class="trigger-3"></div>
    <div class="image-mobile trigger-3-mobile">
        <img src="{$url}img/fixed-3-mobile.jpg" alt="">
    </div>
    <div class="start margin-section">
        <div class="start__item">
            <div class="start__itemHeader">
                {$t.story.title}
            </div>
            <div class="start__itemBody">
                {$t.story.text}
            </div>
        </div>
    </div>

    <div class="image pin4-section" id="lobby">
        <img src="{$url}img/image7.jpg" alt="">
    </div>


<div class="design margin-section section-text4">
    <div class="design__inner">
        <div class="design__top">
            <div class="design__topText">
                <h3>{$t.design.title}</h3>
                <p>{$t.design.text}</p>
            </div>
            <div class="design__topImage">
                <div class="animate-section">
                    <div class="animate-box"></div>
                    <img src="{$url}img/image6.jpg" alt="" class="animate">
                </div>
            </div>
        </div>
    </div>
</div>


    <div class="tabs pin5-section">
        {foreach from=$t.tabs item=tab}
            <div class="tabs__item">
                <div class="tabs__itemHeader">
                    {$tab.title}
                    <img src="{$url}img/arrow.svg" alt="">
                </div>
                <div class="tabs__itemText">
                    {$tab.text}
                </div>
            </div>
        {/foreach}
    </div>

<div class="trigger-4"></div>
    <div class="image-mobile trigger-4-mobile">
        <img src="{$url}img/fixed-4-mobile.jpg" alt="">
    </div>
<div class="infrastructure margin-section" id="technology">
    <div class="infrastructure__inner">
    <div class="infrastructure__top">
        <div class="features__topImage">
            <div class="animate-section">
                <div class="animate-box"></div>
                <img src="{$url}img/image10.jpg?v1" alt="" class="animate">
            </div>
        </div>
        <div class="infrastructure__topText">
            <h3>{$t.technology.title}</h3>
            <hr>
            <p>{$t.technology.text}</p>
        </div>
    </div>
    </div>
</div>

<div class="team" id="team">
    <div class="team__container">
        <div class="team__list">
            {foreach from=$t.team item=partner}
                <div class="team__listTeam">
                    <div class="team__listTeamHeader">
                        {$partner.title}
                    </div>
                    <div class="team__listTeamLogo">
                        <img src="{$url}img/{$partner.logo}" alt="">
                    </div>
                    <div class="team__listTeamText">
                        {$partner.text}
                    </div>
                </div>
            {/foreach}
        </div>
    </div>
</div>
<div class="contacts" id="contact">
    <div class="contacts__header">{$t.contacts.title}</div>
    <div class="contacts__name">
        {$t.contacts.name}
        <span>{$t.contacts.position}</span>
    </div>
    <div class="contacts__address">
        mail: <a href="mailto:{$t.contacts.mail}" style="text-decoration: underline;">{$t.contacts.mail}</a><br>
        tel: {$t.contacts.phone}
    </div>
</div>

{/strip}
