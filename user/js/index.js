
function buttonChange()
{
    var email = document.getElementById("email_us").value;
    if(email != "")
    {
        var aG = email.indexOf("@");
        var dot = email.lastIndexOf(".");
        if ((aG < 1) || (dot < aG + 2) || (dot + 2 > email.length)) 
        {
            alert("The email you entered is incorrect");
            return false;
        }
    }
    var password = document.getElementById("pass_us").value;
    var confirmPassword = document.getElementById("conf_pass_us").value;
    if(confirmPassword != "")
    {
        if (password != confirmPassword) 
        {
            alert("Password and Confirm Password are not the same.");
            return false;
        }
    }
}