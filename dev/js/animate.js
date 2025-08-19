gsap.registerPlugin(ScrollTrigger, ScrollToPlugin);
/*
if (!/iPhone|iPad|iPod/i.test(navigator.userAgent)) {
    ScrollSmoother.create({
        smooth: 1,
        effects: true,
        smoothTouch: 2
    });
}*/

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



const isMobile = window.innerWidth < 1268;

const backgrounds = {
    '.trigger-1': {
        bg: '.bg-1',
        start: isMobile ? '-50% center' : '-60% center',
        end: isMobile ? '130% center' : '150% center'
    },
    '.trigger-2': {
        bg: '.bg-2',
        start: isMobile ? '-100% center' : '-40% center',
        end: isMobile ? '220% center' : '140% center'
    },
    '.trigger-3': {
        bg: '.bg-3',
        start: isMobile ? '-80% center' : '-40% center',
        end: isMobile ? '150% center' : '150% center'
    },
    '.trigger-4': {
        bg: '.bg-4',
        start: isMobile ? '-80% center' : '-40% center',
        end: isMobile ? '150% center' : '150% center'
    }
};

Object.entries(backgrounds).forEach(([triggerSelector, config]) => {
    ScrollTrigger.create({
        trigger: triggerSelector,
        start: config.start,
        end: config.end,
        onToggle: self => {
            if (self.isActive) {
                showOnlyBackground(config.bg);
            } else {
                // Скрываем только если следующий/предыдущий триггер не активен
                const nextActive = document.querySelector('.bg[style*="opacity: 1"]');
                if (!nextActive) {
                    hideAllBackgrounds();
                }
            }
        },
        scrub: true
    });
});

function isFirstTrigger(selector) {
    return selector === Object.keys(backgrounds)[0];
}

function isLastTrigger(selector) {
    const keys = Object.keys(backgrounds);
    return selector === keys[keys.length - 1];
}

function showOnlyBackground(activeSelector) {
    document.querySelectorAll('.bg').forEach(bg => {
        bg.style.opacity = bg.matches(activeSelector) ? '1' : '0';
    });
}

function hideAllBackgrounds() {
    document.querySelectorAll('.bg').forEach(bg => {
        bg.style.opacity = '0';
    });
}

if(!isMobile) {

    if (document.getElementById('intro') && document.querySelector('.logo svg')) {
        const tl = gsap.timeline({
            onComplete: () => {
                document.body.classList.remove('locked');
                document.getElementById('intro').style.display = 'none';
            }
        });

        tl
            .to("#intro", { duration: 1 }) // пауза
            .to("#intro", { backgroundColor: "#888063", duration: 1 }, ">")
            .to(".logo svg", {
                width: "100vw",
                height: "100vh",
                opacity: 1,
                duration: 0.9,
                ease: "power1.out"
            }, "<")
            .to("#intro", {
                opacity: 0,
                duration: 1,
                ease: "power1.out"
            }, "-=0.6")
            .to(".siteheader__img", {
                opacity: 1,
                duration: 1,
                ease: "power1.out"
            }, "-=1.4")
            .to(".siteheader__menu ul", {
                opacity: 1,
                duration: 1,
                y: "0rem",
                ease: "power1.out"
            }, "-=0.4")
            .to(".siteheader__imgPc", {
                scale: 1.1,
                opacity: 1,
                duration: 0.5
            })
            .to(".siteheader__heroBg", {
                y: "30rem",
                ease: "power1.out"
            }, "=0.4");

        if (document.querySelector('.siteheader__welcome')) {
            tl.to(".siteheader__welcome", {
                y: "-80rem",
                opacity: 1,
                duration: 0.5
            }, "-=0.5");
        }

        if (document.querySelector('.siteheader__heroAni')) {
            tl.to(".siteheader__heroAni", {
                opacity: 1,
                duration: 0.5
            }, "-=0.8");
        }
    }




    gsap.to(".bg-1", {
        scale: 1.1,
        y: -300,
        ease: "none",
        scrollTrigger: {
            trigger: ".trigger-1",
            start: "-100% top",
            end: "+=250%",
            scrub: true
        }
    });

    gsap.to(".bg-2", {
        scale: 1.2,
        y: -200,
        ease: "none",
        scrollTrigger: {
            trigger: ".trigger-2",
            start: "-100% top",
            end: "+=250%",
            scrub: true
        }
    });


    gsap.to(".bg-3", {
        scale: 1.1,
        y: -300,
        ease: "none",
        scrollTrigger: {
            trigger: ".trigger-3",
            start: "-100% top",
            end: "+=250%",
            scrub: true
        }
    });



    gsap.to(".bg-4", {
        scale: 1.1,
        y: -300,
        ease: "none",
        scrollTrigger: {
            trigger: ".trigger-4",
            start: "-100% top",
            end: "+=250%",
            scrub: true
        }
    });

    gsap.to(".pin4-section", {
        scale: 1.05,
        ease: "none",
        scrollTrigger: {
            trigger: ".pin4-section",
            start: "-50%",
            end: "+=50%",
            scrub: true,
        }
    });

    gsap.to(".pin7-section", {
        scale: 1.4,
        ease: "none",
        scrollTrigger: {
            trigger: ".pin7-section",
            start: "-50%",
            end: "+=50%",
            scrub: true,
        }
    });



    gsap.to(".section-text1", {
        y: "-300px",
        ease: "none",
        scrollTrigger: {
            trigger: ".section-text1",
            start: "-150%",
            end: "+=50%",
            scrub: true,
        }
    });



    gsap.to(".siteheader__heroAni", {
        y: "-250px",
        ease: "none",
        scrollTrigger: {
            trigger: ".siteheader__img",
            start: "20%",
            end: "+=60%",
            scrub: true,
        }
    });

    gsap.to(".siteheader__img img", {
        y: "-150px",
        ease: "none",
        scrollTrigger: {
            trigger: ".siteheader__img",
            start: "30%",
            end: "+=60%",
            scrub: true,
        }
    });

} else {

    if (document.getElementById('intro') && document.querySelector('.logo svg')) {
        const tl = gsap.timeline({
            onComplete: () => {
                document.body.classList.remove('locked');
                document.getElementById('intro').style.display = 'none';
            }
        });

        tl
            .to("#intro", { duration: 1 }) // пауза
            .to("#intro", { backgroundColor: "#888063", duration: 1 }, ">")
            .to(".logo svg", {
                width: "100vw",
                height: "100vh",
                opacity: 1,
                duration: 0.9,
                ease: "power1.out"
            }, "<")
            .to("#intro", {
                opacity: 0,
                duration: 0.5,
                ease: "power1.out"
            }, "-=0.6")
            .to(".siteheader__img", {
                opacity: 1,
                duration: 0,
                ease: "power1.out"
            }, "-=1.4")
            .to(".siteheader__menu ul", {
                opacity: 1,
                duration: 1,
                y: "0rem",
                ease: "power1.out"
            }, "-=0.4")
            .to(".siteheader__heroBg", {
                y: "30rem",
                ease: "power1.out"
            }, "-=0.4");

        if (document.querySelector('.siteheader__welcome')) {
            tl.to(".siteheader__welcome", {
                y: "-80rem",
                opacity: 1,
                duration: 0.5
            }, "-=0.5");
        }

        if (document.querySelector('.siteheader__heroAni')) {
            tl.to(".siteheader__heroAni", {
                y: "20px",
                opacity: 1,
                duration: 0.5
            }, "-=0.8");
        }
    }




    gsap.to(".trigger-1-mobile img", {
        scale: 1.5,
        y:-50,
        ease: "none",
        scrollTrigger: {
            trigger: ".trigger-1",
            start: "-100% top",
            end: "+=250%",
            scrub: true
        }
    });
    gsap.to(".trigger-2-mobile img", {
        scale: 1.5,
        y:-50,
        ease: "none",
        scrollTrigger: {
            trigger: ".trigger-2",
            start: "-100% top",
            end: "+=250%",
            scrub: true
        }
    });
    gsap.to(".trigger-3-mobile img", {
        scale: 1.5,
        y:-50,
        ease: "none",
        scrollTrigger: {
            trigger: ".trigger-3",
            start: "-100% top",
            end: "+=250%",
            scrub: true
        }
    });
    gsap.to(".trigger-4-mobile img", {
        scale: 1.5,
        y:-250,
        ease: "none",
        scrollTrigger: {
            trigger: ".trigger-4",
            start: "-100% top",
            end: "+=250%",
            scrub: true
        }
    });
}

