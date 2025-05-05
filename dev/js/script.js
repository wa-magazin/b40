document.querySelectorAll('.tabs__item').forEach(tab => {
    const content = tab.querySelector('.tabs__itemText');

    // Скрыть сразу при загрузке
    gsap.set(content, { height: 0, overflow: 'hidden' });

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
            gsap.to(window, {
                duration: 1,
                scrollTo: {
                    y: target,
                    offsetY: 50
                },
                ease: 'power2.out'
            });
        } else {
            console.warn('Target not found for selector:', targetId);
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