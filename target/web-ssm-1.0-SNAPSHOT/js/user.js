
function c_o_li_data() {
    var user = document.getElementById('username');
    var password = document.getElementById('password');
    var data = {};
    data["username"] = user.value;
    data["password"] = password.value;
    console.log("sadascsa"+data);
    return data;
}
function c_o_li_submit() {
        var data = c_o_li_data();

        $.ajax({
            url: "loginXXX",
            type: "POST",
            //contex: ,
            async:false,
            data: data,
            dataType: "JSON",
            success: function(response) {
                if (response.success) {
                    window.location.href="Admin.jsp";
                } else {
                    alert(response.msg);
                }
                // setTimeout('window.location.href="index.html"', 1000);
            },
            error: function(xhr, msg, e) {
                alert("error");
            }
        });
}

function  register_data() {

   return data;
}


function logout() {
    $.ajax({
        url: "logout",
        type: "GET",
        dataType: "JSON",
        success: function(response) {
            if (response === true) {
                window.location.href="index.jsp";
            } else {
                alert("登出失败!");
            }
            // setTimeout('window.location.href="index.html"', 3000);
        },
        error: function(xhr, msg, e) {
            alert("error!");
        }
    });
}

function online() {
    $.ajax({
        url: "online",
        type: "GET",
        success: function(response) {
                if(response!=null) {
                    $("#UserID").innerHTML(response.toString()
                                             + '<b class="caret"></b>');
                }
        },
        error: function(xhr, msg, e) {
            alert("error!");
        }
    });
}
