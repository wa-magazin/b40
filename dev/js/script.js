gsap.registerPlugin(ScrollTrigger, ScrollSmoother, ScrollToPlugin);

/*
ScrollSmoother.create({
    smooth: 0.5,            // скорость сглаживания (чем выше, тем плавнее)
   // effects: true,          // включить эффекты ScrollTrigger внутри
    smoothTouch: 0.3        // сглаживание на touch-устройствах
});
*/
document.querySelectorAll('.tabs__item').forEach(tab => {
    const content = tab.querySelector('.tabs__itemText');

    tab.addEventListener('click', () => {
        const isOpen = tab.classList.contains('_open');

        // Закрыть все табы
        document.querySelectorAll('.tabs__item').forEach(t => {
            t.classList.remove('_open');
            const text = t.querySelector('.tabs__itemText');

        });

        // Открыть текущий, если был закрыт
        if (!isOpen) {
            tab.classList.add('_open');

        }

        // Обновить GSAP ScrollTrigger (если используется)
        if (typeof ScrollTrigger !== 'undefined') {
            ScrollTrigger.refresh();
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