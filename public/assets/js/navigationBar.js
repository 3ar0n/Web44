function dropdownNav() {
    var x = document.getElementById("navBar");
    if (x.className === "navigation-bar") {
        x.className += " responsive";
    } else {
        x.className = "navigation-bar";
    }
}

function brandFunction() {
    document.getElementById("brandDropdown").classList.toggle("show");
}

function typeFunction() {
    document.getElementById("typeDropdown").classList.toggle("show");
}


window.onclick = function(e) {
    if (!e.target.matches('.brandButton')) {
        var myDropdown = document.getElementById("brandDropdown");
        if (myDropdown.classList.contains('show')) {
            myDropdown.classList.remove('show');
        }
    }
  if (!e.target.matches('.typeButton')) {
        var myDropdown = document.getElementById("typeDropdown");
        if (myDropdown.classList.contains('show')) {
            myDropdown.classList.remove('show');
        }
  }
}