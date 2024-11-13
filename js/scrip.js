const container = document.getElementById('container');
const bttdangki = document.getElementById('dangki');
const bttdangnhap = document.getElementById('dangnhap');
bttdangki.addEventListener('click', () => {
    container.classList.add("active");
});
bttdangnhap.addEventListener('click', () => {
    container.classList.remove("active");

});



let input = document.querySelector("#matkhaudn");
let show = document.querySelector("#hienmk");
let hide = document.querySelector("#anmk");

show.addEventListener("click", () => {
    input.type = "password";
    hide.classList.remove("hide");
    show.classList.add("hide");
});

hide.addEventListener("click", () => {
    input.type = "text";
    hide.classList.add("hide");
    show.classList.remove("hide");
});







