//sign in
function checkForm()
{
    //check form correct or incorrect
    var email = document.getElementById("email_us").value;
    if(email !== "")
    {
        var aG = email.indexOf("@");
        var dot = email.lastIndexOf(".");
        if ((aG < 1) || (dot < aG + 2) || (dot + 2 > email.length)) 
        {
            alert("The email you entered is incorrect");
            return false;
        }
    }
    else
    {
        return false;  //email
    }
    /////
    var password = document.getElementById("pass_us").value;
    if (password === "")
    {
        return false;  //pass
    }
    return true;
}
function buttonSign()
{
    var check = checkForm();
    if (check === true)
    {
        //window.location.href = "../user/index.html";
        //window.location.replace("../user/index.html");
        //window.location = "../user/index.html";

        //$(location).attr('href', '../user/index.html');
        //$(window).attr('location', '../user/index.html');
        //$(location).prop('href', '../user/index.html');

        /*
        var url = "../user/index.html";
        var link = document.createElement('a');
        link.href = url;
        document.body.appendChild(link);
        link.click();
        */

        window.open("./../user/index.html");
    }
}