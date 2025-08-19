document.addEventListener('scroll', function () {
    if (window.scrollY > 100) {
        document.querySelectorAll('.scroll-to-top').forEach(el => el.classList.add('_show'));
    } else {
        document.querySelectorAll('.scroll-to-top').forEach(el => el.classList.remove('_show'));
    }
});

document.querySelectorAll('.scroll-to-top').forEach(el => {
    el.addEventListener('click', scrollToTop);
});

function scrollToTop() {
    window.scrollTo({ top: 0, behavior: 'smooth' });
}


document.querySelectorAll('.tabs__item').forEach(tab => {
    const content = tab.querySelector('.tabs__itemText');

    // Скрыть сразу при загрузке
    gsap.set(content, {height: 0, overflow: 'hidden'});

    tab.addEventListener('click', () => {
        const isOpen = tab.classList.contains('_open');

        // Закрыть все табы
        document.querySelectorAll('.tabs__item').forEach(t => {
            t.classList.remove('_open');
            const c = t.querySelector('.tabs__itemText');
            gsap.to(c, {
                height: 0,
                duration: 0.3,
                ease: "power2.inOut"
            });
        });

        if (!isOpen) {
            tab.classList.add('_open');

            // Анимировать открытие
            gsap.to(content, {
                height: "auto",
                duration: 0.4,
                ease: "power2.out",
                onComplete: () => {
                    if (typeof ScrollTrigger !== 'undefined') {
                        ScrollTrigger.refresh();
                    }
                }
            });
        } else {
            // Если повторный клик — просто обновляем триггер
            if (typeof ScrollTrigger !== 'undefined') {
                ScrollTrigger.refresh();
            }
        }
    });
});


document.querySelectorAll('.js-menu a[href^="#"]:not(.open-popup)').forEach(link => {
    link.addEventListener('click', function (e) {
        e.preventDefault();
        const targetId = this.getAttribute('href');
        const target = document.querySelector(targetId);

        if (target) {
            document.body.classList.remove('_menu');

            const offset = (targetId === '#about') ? 300 : 0;
            const elementPosition = target.getBoundingClientRect().top;
            const offsetPosition = elementPosition + window.pageYOffset - offset;

            window.scrollTo({
                top: offsetPosition,
                behavior: 'smooth'
            });
        } else {
            console.warn('Target not found for selector:', targetId);
        }
    });
});


document.querySelectorAll('.mobilemenu a').forEach(link => {
    link.addEventListener('click', function (e) {
        const href = this.getAttribute('href');
        if (!href || href === '#') return;

        const url = new URL(href, location.origin);

        if (url.pathname.endsWith('.pdf') || url.hostname !== location.hostname) return;

        const anchor = url.hash ? url.hash.substring(1) : null;

        if (anchor && url.pathname === '/' && location.pathname === '/') {
            e.preventDefault();
            document.body.classList.remove('_menu');

            const target = document.getElementById(anchor);
            if (target) {
                target.scrollIntoView({
                    behavior: 'smooth',
                    block: 'start'
                });
            } else {
                console.warn('Target not found: #' + anchor);
            }
        }

        // если якорь есть, но мы не на главной — переходим на главную с якорем
        else if (anchor && url.pathname === '/' && location.pathname !== '/') {
            e.preventDefault();
            window.location.href = '/' + '#' + anchor;
        } else {

        }
    });
});


const popup = document.getElementById('popup');
const openBtns = document.querySelectorAll('.open-popup');
const closeBtn = popup.querySelector('.popup__close');

// Открытие попапа
openBtns.forEach(btn => {
    btn.addEventListener('click', (e) => {
        e.preventDefault();
        popup.classList.add('active');
    });
});

// Закрытие по кнопке
closeBtn.addEventListener('click', () => {
    popup.classList.remove('active');
});

// Закрытие по фону
popup.addEventListener('click', (e) => {
    if (e.target === popup) {
        popup.classList.remove('active');
    }
});


document.querySelector('.siteheader__burger').addEventListener('click', function () {
    document.body.classList.add('_menu');
});
document.querySelector('.mobilemenu__close').addEventListener('click', function () {
    document.body.classList.remove('_menu');
});
document.querySelectorAll('.teams__tabsItemHeader').forEach(header => {
    header.addEventListener('click', () => {
        const currentItem = header.closest('.teams__tabsItem');
        const currentText = header.querySelector('.teams__tabsItemText, .teams__tabsText');

        const allItems = document.querySelectorAll('.teams__tabsItem');

        allItems.forEach(item => {
            const textBlock = item.querySelector('.teams__tabsItemText, .teams__tabsText');
            if (item !== currentItem) {
                item.classList.remove('_open');
                if (textBlock) {
                    gsap.to(textBlock, {
                        height: 0,
                        opacity: 0,
                        duration: 0.3,
                        ease: "power1.inOut",
                    });
                }
            }
        });

        if (!currentItem.classList.contains('_open')) {
            currentItem.classList.add('_open');
            if (currentText) {
                const fullHeight = currentText.scrollHeight;
                gsap.fromTo(currentText,
                    {height: 0, opacity: 0, overflow: 'hidden'},
                    {height: fullHeight, opacity: 1, duration: 0.4, ease: "power1.out"}
                );
            }
        }
    });
});
Fancybox.bind('[data-fancybox="floors"]', {
    Thumbs: false,
    Toolbar: true,
});


const swiper = new Swiper('.floors-swiper', {
    navigation: {
        nextEl: '.button-next',
        prevEl: '.button-prev',
    },
    slidesPerView: 1,
    spaceBetween: 30,
    loop: true,
});



document.addEventListener("DOMContentLoaded", function () {
    const items = document.querySelectorAll(".numbers__item");

    items.forEach((item, index) => {
        const el = item.querySelector("h2");
        const raw = el.dataset.number;
        const final = parseFloat(raw.replace(/[^\d.]/g, ''));
        const plus = raw.includes('+') ? '+' : '';
        const unit = raw.replace(/[\d.,+]/g, '').trim();
        const decimals = raw.includes('.') ? 2 : 0;

        // автоширина
        const test = document.createElement("span");
        test.style.visibility = "hidden";
        test.style.position = "absolute";
        test.style.whiteSpace = "nowrap";
        test.style.font = getComputedStyle(el).font;
        test.textContent = raw;
        document.body.appendChild(test);
        el.style.minWidth = test.offsetWidth + "px";
        document.body.removeChild(test);

        const animateCount = () => {
            gsap.fromTo(el,
                { innerText: 0 },
                {
                    innerText: final,
                    duration: 2,
                    ease: "power1.out",
                    snap: { innerText: 1 },
                    onUpdate: function () {
                        el.innerText = Number(el.innerText).toLocaleString('en-US', {
                            minimumFractionDigits: decimals,
                            maximumFractionDigits: decimals
                        }) + (unit ? ' ' + unit : '') + plus;
                    }
                }
            );
        };

        ScrollTrigger.create({
            trigger: item,
            start: "top 100%",
            onEnter: () => {
                gsap.fromTo(item,
                    { opacity: 0, y: 20 },
                    {
                        opacity: 1,
                        y: 0,
                        duration: 0.6,
                        delay: index * 0.3,
                        ease: "power2.out"
                    }
                );

                setTimeout(animateCount, index * 300);
            },
            onEnterBack: () => {
                el.innerText = final.toLocaleString('en-US', {
                    minimumFractionDigits: decimals,
                    maximumFractionDigits: decimals
                }) + (unit ? ' ' + unit : '') + plus;

                gsap.to(item, {
                    opacity: 1,
                    y: 0,
                    duration: 0.3
                });
            }
        });
    });
});