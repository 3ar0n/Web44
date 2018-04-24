window.onload =function()
{
    $('div.formSignIn').fadeIn();
    document.querySelector('div.formSignIn div.background').className = "background active";
}
var tempButtonSign = 1;
//module.exports = {PI: 3.14}
//export const PI = 3.14;

function signUp()
{
    tempButtonSign = 2;
    var inputs = document.querySelectorAll('div.formSignIn div.background form div.inputs input.input');
    document.querySelectorAll('div.formSignIn div.background form div.tabs ul.ulTabs li')[0].className=""; 
    document.querySelectorAll('div.formSignIn div.background form div.tabs ul.ulTabs li')[1].className="active"; 
    for (var i = 0; i < inputs.length ; i++) 
    {
        if(i == 2  )
        {
            
        }
        else
        {  
            document.querySelectorAll('div.formSignIn div.background form div.inputs input.input')[i].style.display = "block";
        }
    } 
    setTimeout( function()
    {
        for (var d = 0; d < inputs.length ; d++) 
        {
            document.querySelectorAll('div.formSignIn div.background form div.inputs input.input')[d].className = "input activeInput";  
        }
    },100 );
    setTimeout(function()
    {
        document.querySelector('div.formSignIn div.background form div.inputs a.linkForgotPass').style.opacity = "0";
        document.querySelector('div.formSignIn div.background form div.inputs a.linkForgotPass').style.fontSize = "0vh";
        if($(window).width() <= 1024)
        {
            document.querySelector('div.formSignIn div.background').style.marginTop = "10vh";
        }
        else
        {
            document.querySelector('div.formSignIn div.background').style.marginTop = "6vh";
        }
    },500);
    setTimeout(function()
    {   
        document.querySelector('div.formSignIn div.background form div.inputs a.linkForgotPass').style.display = "none";
    },800);
    document.querySelector('div.formSignIn div.background form div.inputs div.termsAndCons').style.opacity = "0";
    document.querySelector('div.formSignIn div.background form div.inputs div.termsAndCons').style.fontSize = "0vh";
    document.querySelector('div.formSignIn div.background form div.inputs div.termsAndCons').style.display = "block";
    setTimeout(function()
    {
        document.querySelector('div.formSignIn div.background form div.inputs div.termsAndCons').style.opacity = "1";
        document.querySelector('div.formSignIn div.background form div.inputs div.termsAndCons').style.fontSize = "3vh";
        document.querySelector('div.formSignIn div.background form div.button button.buttonSign').innerHTML = "SIGN UP"; 
    },1500);
}
function signIn()
{
    tempButtonSign = 1;
    var inputs = document.querySelectorAll('div.formSignIn div.background form div.inputs input.input');
    document.querySelectorAll('div.formSignIn div.background form div.tabs ul.ulTabs li')[0].className = "active"; 
    document.querySelectorAll('div.formSignIn div.background form div.tabs ul.ulTabs li')[1].className = "";
    for (var i = 0; i < inputs.length ; i++) 
    {
        switch(i) 
        {
            case 1:
                console.log(inputs[i].name);
                break;
            case 2:
                console.log(inputs[i].name);
            default: 
            document.querySelectorAll('div.formSignIn div.background form div.inputs input.input')[i].style.display = "block";
        }
    }
    setTimeout( function()
    {
        for (var d = 0; d < inputs.length ; d++) 
        {
            switch(d) 
            {
                case 1:
                    console.log(inputs[d].name);
                    break;
                case 2:
                    console.log(inputs[d].name); 
                default:
                document.querySelectorAll('div.formSignIn div.background form div.inputs input.input')[d].style.display = "block";  
                document.querySelectorAll('div.formSignIn div.background form div.inputs input.input')[2].className = "input activeInput";  
            }
        }
        document.querySelector('div.formSignIn div.background form div.inputs div.termsAndCons').style.opacity = "0";
        document.querySelector('div.formSignIn div.background form div.inputs div.termsAndCons').style.fontSize = "0vh";
    },100 );
    setTimeout(function()
    {
        document.querySelector('div.formSignIn div.background form div.inputs div.termsAndCons').style.display = "none";
        if($(window).width() <= 1024)
        {
            document.querySelector('div.formSignIn div.background').style.marginTop = "18vh";
        }
        else
        {
            document.querySelector('div.formSignIn div.background').style.marginTop = "12vh";
        }
    },500);
    document.querySelector('div.formSignIn div.background form div.inputs a.linkForgotPass').style.display = "block";
    setTimeout(function()
    {
        document.querySelector('div.formSignIn div.background form div.inputs a.linkForgotPass').style.opacity = "1";
        document.querySelector('div.formSignIn div.background form div.inputs a.linkForgotPass').style.fontSize = "2vh"; 
        for (var d = 0; d < inputs.length ; d++) 
        {
            switch(d) 
            {
                case 1:
                console.log(inputs[d].name);
                break;
            case 2:
                console.log(inputs[d].name);
                break;
            default:
            document.querySelectorAll('div.formSignIn div.background form div.inputs input.input')[d].className = "input";  
            }
        }
    },1000);
    document.querySelector('div.formSignIn div.background form div.button button.buttonSign').innerHTML = "SIGN IN";    
}
function checkForm()
{
    //check form correct or incorrect
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
    if(tempButtonSign === 1)
    {
        document.getElementById("name_us").required = false;
        document.getElementById("conf_pass_us").required = false;
    }
    if(tempButtonSign === 2)
    {
        document.getElementById("name_us").required = true;
        var name = document.getElementById("name_us").value;
        if(name === "")
        {
            return false;  //name
        }
        document.getElementById("conf_pass_us").required = true;
        var confirmPassword = document.getElementById("conf_pass_us").value;
        if(confirmPassword != "")
        {
            if (password != confirmPassword) 
            {
                alert("Password and Confirm Password are not the same.");
                return false;
            }
        }
        else
        {
            return false;  //conf pass
        }
        if(document.getElementById("termsAndCons").checked === false)
        {
            alert("Accept Terms and Conditions.");
            return false;  //termAndCons
        }
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

        var url = "../user/index.html";
        var link = document.createElement('a');
        link.href = url;
        document.body.appendChild(link);
        link.click();
    }
}