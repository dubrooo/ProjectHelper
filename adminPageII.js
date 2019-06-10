function mouseOver(obj)
{
    obj.style.backgroundColor = "#a1ecce";
}
function mouseOut(obj2)
{
    obj2.style.backgroundColor = "#fff";
}

function toPage_adminPageI(src) {
    window.location=src;
}


var btn = document.querySelector("input[type='submit']");
btn.addEventListener('onmouseover',function () {
    btn.style.backgroundColor = "#a1ecce";
});



