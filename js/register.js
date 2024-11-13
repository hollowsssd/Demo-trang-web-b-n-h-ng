const formregister = document.getElementById("formregister");
const nameelement = document.getElementById("name");
const emaildk = document.getElementById("emaildk");
const matkhaudk = document.getElementById("matkhaudk");
const nhaplaimk = document.getElementById("nhaplaimk");
//element bao loi
const tenbaoloi = document.getElementById("tenbaoloi");
const emailbaoloi = document.getElementById("emailbaoloi");
const mkbaoloi = document.getElementById("mkbaoloi");
const mknhaplaibaoloi = document.getElementById("mknhaplaibaoloi");
//
const emaildn = document.getElementById("emaildn");
const matkhaudn = document.getElementById("matkhaudn");
//
const userlocal = JSON.parse(localStorage.getItem("users")) || [];



// lắng nghe sự kiện form register
formregister.addEventListener("submit", function (e) {
    //ngăn chặn sự kiện load lại trang
    e.preventDefault();
    //vaidate du ieu dau vao
    if (!nameelement.value) {
        tenbaoloi.style.display = "block";
    }
    else {
        //an loi
        tenbaoloi.style.display = "none";
    }
    if (!emaildk.value) {
        emailbaoloi.style.display = "block";
    } else {
        emailbaoloi.style.display = "none";
    }
    if (!matkhaudk.value) {
        mkbaoloi.style.display = "block";
    } else {
        mkbaoloi.style.display = "none";
    }
    if (!nhaplaimk.value) {
        mknhaplaibaoloi.style.display = "block";
    } else {
        mknhaplaibaoloi.style.display = "none";
        //kiem tra mk voi nhap lai mk
        if (matkhaudk.value != nhaplaimk.value) {
            mknhaplaibaoloi.style.display = "block";
            mknhaplaibaoloi.innerHTML = "Mật khẩu không trùng";
        } else {
            mknhaplaibaoloi.style.display = "none";
        }
    }

    //gui du lieu len local
    if (nameelement.value &&
        emaildk.value &&
        matkhaudk.value &&
        nhaplaimk.value &&
        matkhaudk.value === nhaplaimk.value
    ) {
        const user = {
            userId: Math.ceil(Math.random() * 10000000000),
            username: nameelement.value,
            email: emaildk.value,
            password: matkhaudk.value,
        };
        console.log(user);// hiện ra trên console
        queryData_POST("php/insert_login.php", user, function (res) {
            if (res.success == 2) {
                emailbaoloi.style.display = "block";
                emailbaoloi.innerHTML = "Email này đã được đăng kí! Vui lòng thử Email khác";
            } else {
                emailbaoloi.style.display = "none";
            }
            if (res.success == 1) {
                Swal.fire('Thành công', 'Bạn đã đăng kí thành công', 'success').then(function () {
                    //callback sẽ thực hiện khi nhấn ok
                    window.location.href = "loginandregister.html";
                });
            }
            if (res.success==0) {
                Swal.fire('Cảnh báo','lỗi! Không thể đăng kí','warning');
            }
        });
    }
})

formlogin.addEventListener("submit", function (e) {

    e.preventDefault();
    //lay du lieu tu localhost

    if (!emaildn.value) {
        emaildnbaoloi.style.display = "block";
    } else {
        emaildnbaoloi.style.display = "none";
    }
    if (!matkhaudn.value) {
        matkhaudnbaoloi.style.display = "block";
    } else {
        matkhaudnbaoloi.style.display = "none";
    }
    if (emaildn.value && matkhaudn.value) {
        const users = {
            email: emaildn.value,
            password: matkhaudn.value,

        };
        console.log(users);
        queryData_POST("php/login.php", users, function (res) {
            if (res.success==1) {
                console.log("yes");
                localStorage.setItem("rememberhoodgang",JSON.stringify(res.items[0]));
               
                window.location.href = "index.html";
            } 
            if (res.success==2) {
                console.log("no");
                emaildnbaoloi.style.display = "block";
                emaildnbaoloi.innerHTML = "Email hoặc mật khẩu không chính xác!";
                matkhaudnbaoloi.style.display = "block";
                matkhaudnbaoloi.innerHTML = "Email hoặc mật khẩu không chính xác!";
            }
        
        });
    }




})
