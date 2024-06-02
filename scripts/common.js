const burgerMenu = document.querySelector(".burger-menu");

const nav = document.querySelector("nav");

burgerMenu.addEventListener("click", () => {
    nav.classList.toggle("nav-open");
    burgerMenu.classList.toggle("nav-open");
    nav.style.top = `${window.scrollY}px`;
})
window.addEventListener("scroll", () => {
    nav.style.top = `${window.scrollY}px`;
})