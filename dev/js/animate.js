gsap.registerPlugin(ScrollTrigger, ScrollSmoother, ScrollToPlugin);

ScrollSmoother.create({
    smooth: 1,            // скорость сглаживания (чем выше, тем плавнее)
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

    .to(".siteheader__welcome", {
        y: "-80rem",
        opacity: 1,
        duration: 0.5
    }, "-=0.5")
    .to(".siteheader__heroAni", {

        opacity: 1,
        duration: 0.5
    }, "-=0.8")
;




const isMobile = window.innerWidth < 1268;

const backgrounds = {
    '.trigger-1': {
        bg: '.bg-1',
        start: isMobile ? '-50% center' : '-60% center',
        end: isMobile ? '130% center' : '150% center'
    },
    '.trigger-2': {
        bg: '.bg-2',
        start: isMobile ? '-20% center' : '-40% center',
        end: isMobile ? '220% center' : '140% center'
    },
    '.trigger-3': {
        bg: '.bg-3',
        start: isMobile ? '-40% center' : '-40% center',
        end: isMobile ? '150% center' : '150% center'
    },
    '.trigger-4': {
        bg: '.bg-4',
        start: isMobile ? '-40% center' : '-40% center',
        end: isMobile ? '150% center' : '150% center'
    }
};

Object.entries(backgrounds).forEach(([triggerSelector, config]) => {
    ScrollTrigger.create({
        trigger: triggerSelector,
        start: config.start,
        end: config.end,
        onEnter: () => showOnlyBackground(config.bg),
        onEnterBack: () => showOnlyBackground(config.bg),
        onLeave: () => hideAllBackgrounds(),
        onLeaveBack: () => hideAllBackgrounds(),
    });
});

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

gsap.to(".bg-1", {
    yPercent: -25,
    scale: 1.5,
    ease: "none",
    scrollTrigger: {
        trigger: ".trigger-1",
        start: "-50% top",
        end: "+=200%",
        scrub: true
    }
});

gsap.to(".bg-2", {
    yPercent: -10,
    scale: 1.5,
    ease: "none",
    scrollTrigger: {
        trigger: ".trigger-2",
        start: "-150% top",
        end: "+=250%",
        scrub: true
    }
});


gsap.to(".bg-3", {
    scale: 1.2,
    y: -530,
    ease: "none",
    scrollTrigger: {
        trigger: ".trigger-3",
        start: "-50% top",
        end: "+=250%",
        scrub: true
    }
});



gsap.to(".bg-4", {
    scale: 1.2,

    ease: "none",
    scrollTrigger: {
        trigger: ".trigger-4",
        start: "-150% top",
        end: "+=250%",
        scrub: true
    }
});


gsap.to(".pin4-section", {
    scale: 1.4,
    ease: "none",
    scrollTrigger: {
        trigger: ".pin4-section",
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
