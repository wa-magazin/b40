gsap.registerPlugin(ScrollTrigger);

gsap.utils.toArray('.animate').forEach(img => {
    gsap.fromTo(img,
        {
            opacity: 0,


            width: 0,
        },
        {
            opacity: 1,

            duration: 1,
            width: '100%',
            scrollTrigger: {
                trigger: img,
                start: 'top 80%',
                toggleActions: 'play none none reverse'
            }
        });
});