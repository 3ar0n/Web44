function dropdownNav() {
    var x = document.getElementById("navBar");
    if (x.className === "navigation-bar") {
        x.className += " responsive";
    } else {
        x.className = "navigation-bar";
    }
}