'use strict';

const navMob = document.querySelector('.nav-mob')
const burger = document.querySelector('.burger')
const navDark = document.querySelector('.nav-darken')
const body = document.querySelector('body')

const toggles = () => {
    burger.classList.toggle('toggle')
    navMob.classList.toggle('side-content')
    body.classList.toggle('no-scroll')
    navDark.classList.toggle('show-darken')
}

const navSlide = () => {
    burger.addEventListener('click', () => {
        toggles()
    });
}

window.onresize = () => {
    const mq = window.matchMedia("(min-width: 670px)");
    if (mq.matches && burger.classList.contains('toggle')) {
        toggles()
    }
};

navSlide();