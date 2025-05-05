{strip}
    <!DOCTYPE html>
    <html lang="ru">
    <head>
        {include file="head.tpl"}
    <body>

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


            <div class="floors">
                <div class="floors__item">
                    <div class="floors__itemLeft">
                        <img src="/img/floors/2.png" alt="Floor 2">
                    </div>
                    <div class="floors__itemRight">
                        <div class="floors__itemHeader">Floor plan 2nd floor</div>
                        <hr>
                        <p>Explication</p>
                        <div class="table-wrapper">
                            <table>
                                <thead>
                                <tr>
                                    <th>№</th>
                                    <th>Name of premises</th>
                                    <th>Workplace</th>
                                    <th>M2</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td class="_fill">1</td>
                                    <td class="_fill">General manager</td>
                                    <td class="_fill">1</td>
                                    <td class="_fill">28,80</td>
                                </tr>
                                <tr>
                                    <td class="_fill">2</td>
                                    <td class="_fill">Open space</td>
                                    <td class="_fill">26</td>
                                    <td class="_fill">91,30</td>
                                </tr>
                                <tr>
                                    <td class="_fill">3</td>
                                    <td class="_fill">Server room</td>
                                    <td class="_fill">-</td>
                                    <td class="_fill">7,75</td>
                                </tr>
                                <tr>
                                    <td class="_fill">4</td>
                                    <td class="_fill">Open space</td>
                                    <td class="_fill">18</td>
                                    <td class="_fill">87,00</td>
                                </tr>
                                <tr>
                                    <td class="_fill">5</td>
                                    <td class="_fill">Terrace</td>
                                    <td class="_fill">14</td>
                                    <td class="_fill">149,70</td>
                                </tr>
                                <tr>
                                    <td class="_fill">5</td>
                                    <td class="_fill">Terrace</td>
                                    <td class="_fill">14</td>
                                    <td class="_fill">149,70</td>
                                </tr>
                                <tr>
                                    <td class="_fill">5</td>
                                    <td class="_fill">Terrace</td>
                                    <td class="_fill">14</td>
                                    <td class="_fill">149,70</td>
                                </tr>
                                <tr>
                                    <td class="_fill">5</td>
                                    <td class="_fill">Terrace</td>
                                    <td class="_fill">14</td>
                                    <td class="_fill">149,70</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                        <table class="floors__totals">
                            <tr>
                                <td class=""></td>
                                <td class="">Total:</td>
                                <td class="">67</td>
                                <td class="">727,80</td>
                            </tr>
                        </table>
                        <div class="floors__arrow">
                            <span><img src="/img/arrow-left.svg" alt=""></span>
                            <span><img src="/img/arrow-right.svg" alt=""></span>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
    {include file="scripts.tpl"}

    </body>
    </html>
{/strip}