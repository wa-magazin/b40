{strip}
    <!DOCTYPE html>
    <html lang="ru">
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"/>

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
                    <a href="#contact" class="button  {* open-popup *}">Contact</a>
                </div>
            </div>
            {include file="header.tpl"}

            <div class="swiper floors floors-swiper">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="floors__item">
                            <div class="floors__itemLeft">
                                <img src="{$url}img/floors/1-floor.png" data-fancybox="floors" data-caption="Floor 1" alt="Floor 1">
                                <small>{$t.floors.hint}</small>
                            </div>
                            <div class="floors__itemRight">
                                <div class="floors__itemHeader">1st floor</div>
                                <hr>
                                <p>Explication</p>
                                <div class="table-wrapper">
                                    <table>
                                        <thead>
                                        <tr>
                                            <th>№</th>
                                            <th>Name of premises</th>
                                            <th>Workplace</th>
                                            <th>m<sup>2</sup></th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr><td class="_fill">1</td><td class="_fill">General manager</td><td class="_fill">1</td><td class="_fill">28,80</td></tr>
                                        <tr><td class="_fill">2</td><td class="_fill">Open space</td><td class="_fill">26</td><td class="_fill">91,30</td></tr>
                                        <tr><td class="_fill">3</td><td class="_fill">Open space</td><td class="_fill">20</td><td class="_fill">91,45</td></tr>
                                        <tr><td class="_fill">4</td><td class="_fill">Terrace</td><td class="_fill">8</td><td class="_fill">60,85</td></tr>
                                        <tr><td class="_fill">5</td><td class="_fill">Lounge</td><td class="_fill"></td><td class="_fill">33,00</td></tr>
                                        <tr><td class="_fill">6</td><td class="_fill">Office</td><td class="_fill">3</td><td class="_fill">22,90</td></tr>
                                        <tr><td class="_fill">7</td><td class="_fill">Office</td><td class="_fill">3</td><td class="_fill">24,40</td></tr>
                                        <tr><td class="_fill">8</td><td class="_fill">Open space</td><td class="_fill">32</td><td class="_fill">126,80</td></tr>
                                        <tr><td class="_fill">9</td><td class="_fill">Office</td><td class="_fill">3</td><td class="_fill">21,30</td></tr>
                                        <tr><td class="_fill">10</td><td class="_fill">Office</td><td class="_fill">2</td><td class="_fill">17,90</td></tr>
                                        <tr><td class="_fill">11</td><td class="_fill">Office</td><td class="_fill">2</td><td class="_fill">16,60</td></tr>
                                        <tr><td class="_fill">12</td><td class="_fill">Meeting room</td><td class="_fill"></td><td class="_fill">21,20</td></tr>
                                        <tr><td class="_fill">13</td><td class="_fill">Meeting room</td><td class="_fill"></td><td class="_fill">13,80</td></tr>
                                        <tr><td class="_fill">14</td><td class="_fill">Meeting room</td><td class="_fill"></td><td class="_fill">31,00</td></tr>
                                        <tr><td class="_fill">15</td><td class="_fill">Meeting room</td><td class="_fill"></td><td class="_fill">24,40</td></tr>
                                        <tr><td class="_fill">16</td><td class="_fill">Reception + waiting area</td><td class="_fill">2</td><td class="_fill">33,60</td></tr>
                                        <tr><td class="_fill">17</td><td class="_fill">Corridor</td><td class="_fill"></td><td class="_fill">155,60</td></tr>
                                        <tr><td class="_fill">18</td><td class="_fill">Security vestibule</td><td class="_fill"></td><td class="_fill">25,50</td></tr>
                                        <tr><td class="_fill">19</td><td class="_fill">Kitchen</td><td class="_fill"></td><td class="_fill">23,60</td></tr>
                                        <tr><td class="_fill">20</td><td class="_fill">Server room</td><td class="_fill"></td><td class="_fill">5,10</td></tr>
                                        <tr><td class="_fill">21</td><td class="_fill">Utility rooms</td><td class="_fill"></td><td class="_fill">6,25</td></tr>
                                        <tr><td class="_fill">22</td><td class="_fill">Utility rooms</td><td class="_fill"></td><td class="_fill">3,30</td></tr>
                                        <tr><td class="_fill">23</td><td class="_fill">Receptionist's room</td><td class="_fill"></td><td class="_fill">7,20</td></tr>
                                        </tbody>
                                    </table>

                                </div>
                                <table class="floors__totals">
                                    <tr>
                                        <td class=""></td>
                                        <td class="">Total:</td>
                                        <td class="">102</td>
                                        <td class="">885,40</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="floors__item">
                            <div class="floors__itemLeft">
                                <img src="{$url}img/floors/2-floor.png" data-fancybox="floors"  data-caption="Floor 2"  alt="Floor 2">
                                <small>{$t.floors.hint}</small>
                            </div>
                            <div class="floors__itemRight">
                                <div class="floors__itemHeader">2nd floor</div>
                                <hr>
                                <p>Explication</p>
                                <div class="table-wrapper">
                                    <table>
                                        <thead>
                                        <tr>
                                            <th>№</th>
                                            <th>Name of premises</th>
                                            <th>Workplace</th>
                                            <th>m<sup>2</sup></th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr><td class="_fill">1</td><td class="_fill">General manager</td><td class="_fill">1</td><td class="_fill">28,80</td></tr>
                                        <tr><td class="_fill">2</td><td class="_fill">Open space</td><td class="_fill">26</td><td class="_fill">91,30</td></tr>
                                        <tr><td class="_fill">3</td><td class="_fill">Open space</td><td class="_fill">20</td><td class="_fill">90,95</td></tr>
                                        <tr><td class="_fill">4</td><td class="_fill">Terrace</td><td class="_fill">6</td><td class="_fill">31,50</td></tr>
                                        <tr><td class="_fill">5</td><td class="_fill">Lounge</td><td class="_fill"></td><td class="_fill">31,50</td></tr>
                                        <tr><td class="_fill">6</td><td class="_fill">Office</td><td class="_fill">3</td><td class="_fill">24,30</td></tr>
                                        <tr><td class="_fill">7</td><td class="_fill">Office</td><td class="_fill">3</td><td class="_fill">21,25</td></tr>
                                        <tr><td class="_fill">8</td><td class="_fill">Open space</td><td class="_fill">26</td><td class="_fill">104,90</td></tr>
                                        <tr><td class="_fill">9</td><td class="_fill">Office</td><td class="_fill">3</td><td class="_fill">21,30</td></tr>
                                        <tr><td class="_fill">10</td><td class="_fill">Office</td><td class="_fill">2</td><td class="_fill">17,90</td></tr>
                                        <tr><td class="_fill">11</td><td class="_fill">Office</td><td class="_fill">2</td><td class="_fill">16,60</td></tr>
                                        <tr><td class="_fill">12</td><td class="_fill">Meeting room</td><td class="_fill"></td><td class="_fill">21,20</td></tr>
                                        <tr><td class="_fill">13</td><td class="_fill">Meeting room</td><td class="_fill"></td><td class="_fill">13,80</td></tr>
                                        <tr><td class="_fill">14</td><td class="_fill">Meeting room</td><td class="_fill"></td><td class="_fill">31,00</td></tr>
                                        <tr><td class="_fill">15</td><td class="_fill">Meeting room</td><td class="_fill"></td><td class="_fill">24,40</td></tr>
                                        <tr><td class="_fill">16</td><td class="_fill">Reception + waiting area</td><td class="_fill">2</td><td class="_fill">33,60</td></tr>
                                        <tr><td class="_fill">17</td><td class="_fill">Corridor</td><td class="_fill"></td><td class="_fill">150,80</td></tr>
                                        <tr><td class="_fill">18</td><td class="_fill">Security vestibule</td><td class="_fill"></td><td class="_fill">25,50</td></tr>
                                        <tr><td class="_fill">19</td><td class="_fill">Kitchen</td><td class="_fill"></td><td class="_fill">23,60</td></tr>
                                        <tr><td class="_fill">20</td><td class="_fill">Server room</td><td class="_fill"></td><td class="_fill">5,10</td></tr>
                                        <tr><td class="_fill">21</td><td class="_fill">Utility rooms</td><td class="_fill"></td><td class="_fill">6,25</td></tr>
                                        <tr><td class="_fill">22</td><td class="_fill">Utility rooms</td><td class="_fill"></td><td class="_fill">3,30</td></tr>
                                        <tr><td class="_fill">23</td><td class="_fill">Receptionist's room</td><td class="_fill"></td><td class="_fill">7,20</td></tr>
                                        </tbody>
                                    </table>

                                </div>
                                <table class="floors__totals">
                                    <tr>
                                        <td class=""></td>
                                        <td class="">Total:</td>
                                        <td class="">94</td>
                                        <td class="">825,60</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>

                    <div class="swiper-slide">
                        <div class="floors__item">
                            <div class="floors__itemLeft">
                                <img src="{$url}img/floors/3-floor.png" data-fancybox="floors"  data-caption="Floor 3" alt="Floor 3">
                                <small>{$t.floors.hint}</small>
                            </div>
                            <div class="floors__itemRight">
                                <div class="floors__itemHeader">3rd floor</div>
                                <hr>
                                <p>Explication</p>
                                <div class="table-wrapper">
                                    <table>
                                        <thead>
                                        <tr>
                                            <th>№</th>
                                            <th>Name of premises</th>
                                            <th>Workplace</th>
                                            <th>m<sup>2</sup></th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr><td class="_fill">1</td><td class="_fill">General manager</td><td class="_fill">1</td><td class="_fill">28,80</td></tr>
                                        <tr><td class="_fill">2</td><td class="_fill">Open space</td><td class="_fill">26</td><td class="_fill">91,30</td></tr>
                                        <tr><td class="_fill">3</td><td class="_fill">Open space</td><td class="_fill">20</td><td class="_fill">91,60</td></tr>
                                        <tr><td class="_fill">4</td><td class="_fill">Terrace</td><td class="_fill">6</td><td class="_fill">31,50</td></tr>
                                        <tr><td class="_fill">5</td><td class="_fill">Lounge</td><td class="_fill"></td><td class="_fill">36,70</td></tr>
                                        <tr><td class="_fill">6</td><td class="_fill">Office</td><td class="_fill">2</td><td class="_fill">18,70</td></tr>
                                        <tr><td class="_fill">7</td><td class="_fill">Open space</td><td class="_fill">26</td><td class="_fill">104,90</td></tr>
                                        <tr><td class="_fill">8</td><td class="_fill">Office</td><td class="_fill">3</td><td class="_fill">21,30</td></tr>
                                        <tr><td class="_fill">9</td><td class="_fill">Office</td><td class="_fill">2</td><td class="_fill">17,90</td></tr>
                                        <tr><td class="_fill">10</td><td class="_fill">Office</td><td class="_fill">2</td><td class="_fill">16,60</td></tr>
                                        <tr><td class="_fill">11</td><td class="_fill">Meeting room</td><td class="_fill"></td><td class="_fill">21,20</td></tr>
                                        <tr><td class="_fill">13</td><td class="_fill">Meeting room</td><td class="_fill"></td><td class="_fill">13,80</td></tr>
                                        <tr><td class="_fill">14</td><td class="_fill">Meeting room</td><td class="_fill"></td><td class="_fill">31,00</td></tr>
                                        <tr><td class="_fill">15</td><td class="_fill">Meeting room</td><td class="_fill"></td><td class="_fill">24,40</td></tr>
                                        <tr><td class="_fill">16</td><td class="_fill">Reception + waiting area</td><td class="_fill">2</td><td class="_fill">33,60</td></tr>
                                        <tr><td class="_fill">17</td><td class="_fill">Corridor</td><td class="_fill"></td><td class="_fill">150,25</td></tr>
                                        <tr><td class="_fill">18</td><td class="_fill">Security vestibule</td><td class="_fill"></td><td class="_fill">25,50</td></tr>
                                        <tr><td class="_fill">19</td><td class="_fill">Kitchen</td><td class="_fill"></td><td class="_fill">16,00</td></tr>
                                        <tr><td class="_fill">20</td><td class="_fill">Server room</td><td class="_fill"></td><td class="_fill">5,10</td></tr>
                                        <tr><td class="_fill">21</td><td class="_fill">Utility rooms</td><td class="_fill"></td><td class="_fill">6,25</td></tr>
                                        <tr><td class="_fill">22</td><td class="_fill">Utility rooms</td><td class="_fill"></td><td class="_fill">3,30</td></tr>
                                        <tr><td class="_fill">23</td><td class="_fill">Receptionist's room</td><td class="_fill"></td><td class="_fill">7,20</td></tr>
                                        </tbody>
                                    </table>


                                </div>
                                <table class="floors__totals">
                                    <tr>
                                        <td class=""></td>
                                        <td class="">Total:</td>
                                        <td class="">90</td>
                                        <td class="">796,90</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="floors__item">
                            <div class="floors__itemLeft">
                                <img src="{$url}img/floors/4-floor.png" data-fancybox="floors"  data-caption="Floor 4" alt="Floor 4">
                                <small>{$t.floors.hint}</small>
                            </div>
                            <div class="floors__itemRight">
                                <div class="floors__itemHeader">4th floor</div>
                                <hr>
                                <p>Explication</p>
                                <div class="table-wrapper">
                                    <table>
                                        <thead>
                                        <tr>
                                            <th>№</th>
                                            <th>Name of premises</th>
                                            <th>Workplace</th>
                                            <th>m<sup>2</sup></th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr><td class="_fill">1</td><td class="_fill">General manager</td><td class="_fill">1</td><td class="_fill">28,80</td></tr>
                                        <tr><td class="_fill">2</td><td class="_fill">Open space</td><td class="_fill">26</td><td class="_fill">91,30</td></tr>
                                        <tr><td class="_fill">3</td><td class="_fill">Utility rooms</td><td class="_fill"></td><td class="_fill">7,75</td></tr>
                                        <tr><td class="_fill">4</td><td class="_fill">Open space</td><td class="_fill">20</td><td class="_fill">83,10</td></tr>
                                        <tr><td class="_fill">5</td><td class="_fill">Terrace</td><td class="_fill">6</td><td class="_fill">31,50</td></tr>
                                        <tr><td class="_fill">6</td><td class="_fill">Lounge</td><td class="_fill"></td><td class="_fill">38,60</td></tr>
                                        <tr><td class="_fill">7</td><td class="_fill">Open space</td><td class="_fill">26</td><td class="_fill">98,70</td></tr>
                                        <tr><td class="_fill">8</td><td class="_fill">Office</td><td class="_fill">3</td><td class="_fill">21,30</td></tr>
                                        <tr><td class="_fill">9</td><td class="_fill">Office</td><td class="_fill">2</td><td class="_fill">17,90</td></tr>
                                        <tr><td class="_fill">10</td><td class="_fill">Office</td><td class="_fill">2</td><td class="_fill">16,60</td></tr>
                                        <tr><td class="_fill">11</td><td class="_fill">Meeting room</td><td class="_fill"></td><td class="_fill">21,20</td></tr>
                                        <tr><td class="_fill">12</td><td class="_fill">Meeting room</td><td class="_fill"></td><td class="_fill">13,80</td></tr>
                                        <tr><td class="_fill">13</td><td class="_fill">Meeting room</td><td class="_fill"></td><td class="_fill">31,00</td></tr>
                                        <tr><td class="_fill">14</td><td class="_fill">Meeting room</td><td class="_fill"></td><td class="_fill">24,40</td></tr>
                                        <tr><td class="_fill">15</td><td class="_fill">Reception + waiting area</td><td class="_fill">2</td><td class="_fill">33,60</td></tr>
                                        <tr><td class="_fill">16</td><td class="_fill">Corridor</td><td class="_fill"></td><td class="_fill">146,00</td></tr>
                                        <tr><td class="_fill">17</td><td class="_fill">Security vestibule</td><td class="_fill"></td><td class="_fill">25,50</td></tr>
                                        <tr><td class="_fill">18</td><td class="_fill">Kitchen</td><td class="_fill"></td><td class="_fill">14,15</td></tr>
                                        <tr><td class="_fill">19</td><td class="_fill">Server room</td><td class="_fill"></td><td class="_fill">8,00</td></tr>
                                        <tr><td class="_fill">20</td><td class="_fill">Utility rooms</td><td class="_fill"></td><td class="_fill">4,20</td></tr>
                                        <tr><td class="_fill">21</td><td class="_fill">Receptionist's room</td><td class="_fill"></td><td class="_fill">7,20</td></tr>
                                        </tbody>
                                    </table>


                                </div>
                                <table class="floors__totals">
                                    <tr>
                                        <td class=""></td>
                                        <td class="">Total:</td>
                                        <td class="">88</td>
                                        <td class="">764,60</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="floors__item">
                            <div class="floors__itemLeft">
                                <img src="{$url}img/floors/5-floor.png" data-fancybox="floors"  data-caption="Floor 5" alt="Floor 5">
                                <small>{$t.floors.hint}</small>
                            </div>
                            <div class="floors__itemRight">
                                <div class="floors__itemHeader">5th floor</div>
                                <hr>
                                <p>Explication</p>
                                <div class="table-wrapper">
                                    <table>
                                        <thead>
                                        <tr>
                                            <th>№</th>
                                            <th>Name of premises</th>
                                            <th>Workplace</th>
                                            <th>m<sup>2</sup></th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr><td class="_fill">1</td><td class="_fill">General manager</td><td class="_fill">1</td><td class="_fill">28,80</td></tr>
                                        <tr><td class="_fill">2</td><td class="_fill">Open space</td><td class="_fill">26</td><td class="_fill">91,30</td></tr>
                                        <tr><td class="_fill">3</td><td class="_fill">Utility rooms</td><td class="_fill"></td><td class="_fill">7,75</td></tr>
                                        <tr><td class="_fill">4</td><td class="_fill">Open space</td><td class="_fill">20</td><td class="_fill">83,10</td></tr>
                                        <tr><td class="_fill">5</td><td class="_fill">Terrace</td><td class="_fill">6</td><td class="_fill">31,50</td></tr>
                                        <tr><td class="_fill">6</td><td class="_fill">Lounge</td><td class="_fill"></td><td class="_fill">34,60</td></tr>
                                        <tr><td class="_fill">7</td><td class="_fill">Open space</td><td class="_fill">20</td><td class="_fill">83,05</td></tr>
                                        <tr><td class="_fill">8</td><td class="_fill">Office</td><td class="_fill">3</td><td class="_fill">18,80</td></tr>
                                        <tr><td class="_fill">9</td><td class="_fill">Office</td><td class="_fill">1</td><td class="_fill">11,55</td></tr>
                                        <tr><td class="_fill">10</td><td class="_fill">Office</td><td class="_fill">2</td><td class="_fill">16,60</td></tr>
                                        <tr><td class="_fill">11</td><td class="_fill">Meeting room</td><td class="_fill"></td><td class="_fill">21,20</td></tr>
                                        <tr><td class="_fill">12</td><td class="_fill">Meeting room</td><td class="_fill"></td><td class="_fill">13,80</td></tr>
                                        <tr><td class="_fill">13</td><td class="_fill">Meeting room</td><td class="_fill"></td><td class="_fill">31,00</td></tr>
                                        <tr><td class="_fill">14</td><td class="_fill">Meeting room</td><td class="_fill"></td><td class="_fill">24,40</td></tr>
                                        <tr><td class="_fill">15</td><td class="_fill">Reception + waiting area</td><td class="_fill">2</td><td class="_fill">33,60</td></tr>
                                        <tr><td class="_fill">16</td><td class="_fill">Corridor</td><td class="_fill"></td><td class="_fill">145,55</td></tr>
                                        <tr><td class="_fill">17</td><td class="_fill">Security vestibule</td><td class="_fill"></td><td class="_fill">25,50</td></tr>
                                        <tr><td class="_fill">18</td><td class="_fill">Kitchen</td><td class="_fill"></td><td class="_fill">12,15</td></tr>
                                        <tr><td class="_fill">19</td><td class="_fill">Server room</td><td class="_fill"></td><td class="_fill">8,00</td></tr>
                                        <tr><td class="_fill">20</td><td class="_fill">Utility rooms</td><td class="_fill"></td><td class="_fill">4,20</td></tr>
                                        <tr><td class="_fill">21</td><td class="_fill">Receptionist's room</td><td class="_fill"></td><td class="_fill">7,20</td></tr>
                                        </tbody>
                                    </table>


                                </div>
                                <table class="floors__totals">
                                    <tr>
                                        <td class=""></td>
                                        <td class="">Total:</td>
                                        <td class="">81</td>
                                        <td class="">733,65</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="floors__item">
                            <div class="floors__itemLeft">
                                <img src="{$url}img/floors/6-floor.png" data-fancybox="floors"  data-caption="Floor 6" alt="Floor 6">
                                <small>{$t.floors.hint}</small>
                            </div>
                            <div class="floors__itemRight">
                                <div class="floors__itemHeader">6th floor</div>
                                <hr>
                                <p>Explication</p>
                                <div class="table-wrapper">
                                    <table>
                                        <thead>
                                        <tr>
                                            <th>№</th>
                                            <th>Name of premises</th>
                                            <th>Workplace</th>
                                            <th>m<sup>2</sup></th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr><td class="_fill">1</td><td class="_fill">General manager</td><td class="_fill">1</td><td class="_fill">28,80</td></tr>
                                        <tr><td class="_fill">2</td><td class="_fill">Open space</td><td class="_fill">26</td><td class="_fill">91,30</td></tr>
                                        <tr><td class="_fill">3</td><td class="_fill">Utility rooms</td><td class="_fill"></td><td class="_fill">7,75</td></tr>
                                        <tr><td class="_fill">4</td><td class="_fill">Open space</td><td class="_fill">18</td><td class="_fill">87,00</td></tr>
                                        <tr><td class="_fill">5</td><td class="_fill">Terrace</td><td class="_fill">14</td><td class="_fill">149,70</td></tr>
                                        <tr><td class="_fill">6</td><td class="_fill">Lounge</td><td class="_fill"></td><td class="_fill">27,50</td></tr>
                                        <tr><td class="_fill">7</td><td class="_fill">Office</td><td class="_fill">1</td><td class="_fill">11,55</td></tr>
                                        <tr><td class="_fill">8</td><td class="_fill">Office</td><td class="_fill">2</td><td class="_fill">16,60</td></tr>
                                        <tr><td class="_fill">9</td><td class="_fill">Office</td><td class="_fill">3</td><td class="_fill">21,20</td></tr>
                                        <tr><td class="_fill">10</td><td class="_fill">Meeting room</td><td class="_fill"></td><td class="_fill">13,80</td></tr>
                                        <tr><td class="_fill">11</td><td class="_fill">Meeting room</td><td class="_fill"></td><td class="_fill">31,00</td></tr>
                                        <tr><td class="_fill">12</td><td class="_fill">Meeting room</td><td class="_fill"></td><td class="_fill">24,40</td></tr>
                                        <tr><td class="_fill">13</td><td class="_fill">Reception + waiting area</td><td class="_fill">2</td><td class="_fill">33,60</td></tr>
                                        <tr><td class="_fill">14</td><td class="_fill">Corridor</td><td class="_fill"></td><td class="_fill">143,40</td></tr>
                                        <tr><td class="_fill">15</td><td class="_fill">Security vestibule</td><td class="_fill"></td><td class="_fill">25,50</td></tr>
                                        <tr><td class="_fill">16</td><td class="_fill">Kitchen</td><td class="_fill"></td><td class="_fill">7,80</td></tr>
                                        <tr><td class="_fill">17</td><td class="_fill">Server room</td><td class="_fill"></td><td class="_fill">3,00</td></tr>
                                        <tr><td class="_fill">18</td><td class="_fill">Utility rooms</td><td class="_fill"></td><td class="_fill">3,90</td></tr>
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
                            </div>
                        </div>
                    </div>
                </div>
                <div class="floors__arrow">
                    <div class="floors__arrow">
                        <span class="button-prev"><img src="{$url}img/arrow-left.svg" alt=""></span>
                        <span class="button-next"><img src="{$url}img/arrow-right.svg" alt=""></span>
                    </div>
                </div>
            </div>
        </div>
    </div>

    {include file="scripts.tpl"}

    </body>
    </html>
{/strip}