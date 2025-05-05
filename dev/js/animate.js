gsap.registerPlugin(ScrollTrigger, ScrollSmoother, ScrollToPlugin);


ScrollSmoother.create({
    smooth: 0.5,            // скорость сглаживания (чем выше, тем плавнее)
    effects: true,          // включить эффекты ScrollTrigger внутри
    smoothTouch: 2        // сглаживание на touch-устройствах
})

gsap.utils.toArray('.animate-section').forEach(img => {
    gsap.fromTo(img,
        {
            opacity: 0
        },
        {
            opacity: 1,
            duration: 0.5,
            ease: "power1.out",
            scrollTrigger: {
                trigger: img,
                start: 'top 80%',
                toggleActions: 'play none none reverse'
            }
        }
    );
});

gsap.utils.toArray('.animate-box').forEach(box => {
    ScrollTrigger.create({
        trigger: box,
        start: 'top 80%',
        end: 'top 40%',
        onEnter: () => {
            gsap.to(box, { width: 0, duration: 0.5 });
        },
        onLeaveBack: () => {
            gsap.to(box, { width: "100%", duration: 0.5 });
        }
    });
});


gsap.registerPlugin(ScrollTrigger);

const images = [".pin1-image", ".pin2-image", ".pin3-image", ".pin6-image"];

function showOnly(selectorToShow) {
    images.forEach(sel => {
        const el = document.querySelector(sel);
        if (el) el.classList.toggle("hide", sel !== selectorToShow);
    });
}


// Настройки по каждому блоку
const pinConfigs = [
    {
        selector: ".pin1-image",
        trigger: ".section-text1",
        start: "top top",
        end: "+=140%",
        yPercent: -25,
        scale: 1.2
    },
    {
        selector: ".pin2-image",
        trigger: ".section-text2",
        start: "-80% top",
        end: "+=200%",
        yPercent: 0,
        scale: 1.3
    },
    {
        selector: ".pin3-image",
        trigger: ".section-text3",
        start: "-100% top",
        end: "+=200%",
        yPercent: -25,
        scale: 1.5
    },
    {
        selector: ".pin6-image",
        trigger: ".pin5-section",
        start: "-100% top",
        end: "+=300%",
        yPercent: 0,
        scale: 1.3
    }
];

// Цикл по конфигурациям
pinConfigs.forEach(({ selector, trigger, start, end, yPercent, scale }) => {
    const fixedSlide = document.querySelector(selector);

    // Анимация движения/масштаба
    gsap.to(selector, {
        yPercent,
        scale,
        ease: "none",
        scrollTrigger: {
            trigger,
            start,
            end,
            scrub: true,

            // Появление активного
            onEnter: () => {
                showOnly(selector);
                gsap.to(fixedSlide, {
                    opacity: 1,
                    y: 0,
                    duration: 0.5,
                    ease: "power2.out"
                });
            },

            // Возврат при скролле вверх
            onEnterBack: () => {
                showOnly(selector);
                gsap.to(fixedSlide, {
                    opacity: 1,
                    y: 0,
                    duration: 0.5,
                    ease: "power2.out"
                });
            },

            // Уход при скролле вниз
            onLeave: () => {
                gsap.to(fixedSlide, {
                    opacity: 0,
                    duration: 0.5,
                    ease: "power2.inOut"
                });
            }
        }
    });
});


gsap.to(".pin4-section", {
    yPercent: -25,
    scale: 1.5,
    ease: "none",
    scrollTrigger: {
        trigger: ".section-text4",
        start: "-50% top",
        end: "+=200%",
        scrub: true
    }
});

gsap.to(".pin5-section", {
    yPercent: -125,
    ease: "none",
    scrollTrigger: {
        trigger: ".section-text4",
        start: "-50% top",
        end: "+=200%",
        scrub: true
    }
});


gsap.to(".pin7-section", {
    scale: 0.95,
    ease: "none",
    scrollTrigger: {
        trigger: ".infrastructure",
        start: "-50% top",
        end: "+=200%",
        scrub: true
    }
});


gsap.to(".numbers", {
    yPercent: 0,

    ease: "none",
    scrollTrigger: {
        trigger: ".numbers",
        start: "-50%",
        end: "+=50%",
        scrub: true,
    }
});
