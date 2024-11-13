$(document).ready(function () {

  builddsGroup();
  builddsGroupMenu();
  builddsGroupShowSP();

  $(".account").hide();
  var username = localStorage.getItem("rememberhoodgang");

  if (username == undefined || username == "" || username == null) {

  } else {
    // Parse dữ liệu từ chuỗi JSON thành object
    var itemObject = JSON.parse(username);
    // Truy cập thuộc tính 'Hoten'
    var hoten = itemObject.HoTen;

    $(".btndangnhap_dangki").hide();
    $(".account").show();
    $(".adduser").html(hoten);
  }
  $(".dang_xuat").on('click', function () {
    localStorage.removeItem("rememberhoodgang");
    window.location.href = "index.html";
  });

  
  $(".addListMHmenu").on('click', '.click_nhom', function () {
    //hàm này dùng để lấy giá trị của nhóm mình click vào
    var ma = ($(this).attr("data-MaLoai"));
    var vt = ($(this).attr("data-vt"));
    console.log("click:" + ma);

    var dataSend = {
      MaLoai: ma,
      vt: vt
    };
    queryData_GET("php/api_get_mat_hang_theo_loaimh.php", dataSend, function (res) {
      console.log(res.items);
      builddsHTMLMHmenuTheoLoai(res, vt);
    });
  });

  $(".addListMH").on('click', '.click_nhom', function () {
    //hàm này dùng để lấy giá trị của nhóm mình click vào
    var ma = ($(this).attr("data-MaLoai"));
    console.log("click:" + ma);
    var dataSend = {
      MaLoai: ma,
      vt: 0
    };
    queryData_GET("php/api_get_mat_hang_theo_loaimh.php", dataSend, function (res) {
      console.log(res);
    });
  });
  ///////
  $(".addItemMHMoi").on('click', '.btnxoa', function () {
    var ma = ($(this).attr("data-mamh"));
    console.log("click:" + ma);
    var dataSend = {
      mamh: ma,
    };
    queryData_POST("php/api_delete_mat_hang.php", dataSend, function (res) {
      if (res.success == 1) {
        showDataWhenLoadPage("");
        Swal.fire('Thành công', 'Bạn đã xóa thành công', 'success');
        
      } if(res.success==0) {
        Swal.fire('Không thành công', 'Bạn đã xóa Không thành công', 'warning');      }
        if (res.success==2) {
          Swal.fire('Không co mmh', 'Bạn đã xóa Không thành công', 'warning'); 
        }
    });
  });






  ///////////
});




// xây dựng 1 hàm lấy dữ liệu từ server php để đổ dữ  liệu ra web
function builddsGroup() {
  // dữ liệu gửi lên sv
  var dataSend = {

  }
  //dữ liệu lấy từ server gửi về

  queryData_GET("php/api_get_nhom.php", dataSend, function (res) {

    console.log(res);
    builddsHTMLMH(res);
  });
}

function builddsGroupMenu() {
  // dữ liệu gửi lên sv
  var dataSend = {

  }
  //dữ liệu lấy từ server gửi về

  queryData_GET("php/api_get_nhom.php", dataSend, function (res) {

    console.log(res);
    builddsHTMLMHmenu(res);
  });

  queryData_GET("php/api_get_collab.php", dataSend, function (res) {

    console.log(res);
    builddsHTMLCLB(res);
  });
}

function builddsGroupShowSP() {
  // dữ liệu gửi lên sv
  var dataSend = {

  }
  queryData_GET("php/api_get_mat_hang.php", dataSend, function (res) {

    console.log(res);
    showMatHang(res);
  });

  queryData_GET("php/api_get_mat_hang_moi.php", dataSend, function (res) {

    console.log(res);
    showMatHangMoi(res);
  });
}

function builddsHTMLMHmenu(res) {
  var data = res.items;
  var html = '';
  var i = 1;
  for (item in data) {
    var list = data[item];
    html = html + '<div class="nav-item dropdown">' +
      '<a href="#" class="nav-link click_nhom " data-vt="' + i + '" data-MaLoai="' + list.MaLoai + '" data-toggle="dropdown"><img src="img/' + list.HinhAnhLMH + '" alt="" width="20" height="20" style="margin-bottom: 5px; margin-right: 3px">' + list.TenLoai.toUpperCase() + '<i class="fa fa-angle-down float-right mt-1"></i></a>' +
      '<div class="dropdown-menu position-absolute bg-secondary border-0 rounded-0 w-100 m-0 addListMHmenuSub' + i + '">' +
      '</div>' +
      '</div>';
    i++;
  }
  $(".addListMHmenu").html(html)
}

function builddsHTMLMHmenuTheoLoai(res) {
  console.log(res);
  var data = res.items;
  var html = '';
  for (var i = 0; i < data.length && i < 8; i++) {
    var list = data[i];
    html = html + '<a href="detail.html?TenMH=' + list.TenMH + '" class="dropdown-item text-primary">' + list.TenMH + '</a>';
  }
  $(".addListMHmenuSub" + list.vt).html(html)
}

function builddsHTMLCLB(res) {
  var data = res.items;
  var html = '';
  for (item in data) {
    var list = data[item];

    html = html + '<a href="shop.html?search=' + list.MaCollab + '" class="dropdown-item text-primary"><img src="img/' + list.HinhAnhCollab + '" alt="" width="20" height="20" style="margin-bottom: 5px; margin-right: 3px"> HG x ' + list.TenCollab + ' | ' + list.TenFullCollab + '</a>';
  }
  $(".addListCLB").html(html)
}

function builddsHTMLMH(res) {
  var data = res.items;
  var html = '';
  for (item in data) {
    var list = data[item];

    html = html + '<a href="#showmh' + list.MaLoai + '" class="dropdown-item text-primary click_nhom" data-MaLoai="' + list.MaLoai + '">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;' + list.TenLoai + '</a>';
  }
  $(".addListMH").html(html)
}

function showMatHang(res) {
  var data = res.items;
  var html = '';
  $(".addItemMH").html("");
  for (item in data) {
    var list = data[item];

    const number = Number(list.Gia);
    const formatCurrency = (number, symbol = '₫') => {
      // Add thousands separator
      const formattedNumber = number.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');

      // Format the number as a currency string
      return `${formattedNumber}${symbol}`;
    };
    html = ' <div class="col-lg-3 col-md-6 col-sm-12 pb-1">' +
      '<div class="card product-item border-0 mb-4">' +
      '<div class="card-header product-img position-relative overflow-hidden bg-transparent border-0">' +
      '<img class="img-fluid w-100" src="img/' + list.HinhAnh + '" alt="">' +
      '</div>' +
      '<div class="card-body  text-center p-0 pt-4 pb-3">' +
      '<h6 class="text-truncate mb-3">' + list.TenMH + '</h6>' +
      '<div class="d-flex justify-content-center">' +
      '<h6>' + formatCurrency(number) + '</h6>' +
      '</div>' +
      '</div>' +
      '<div class="card-footer d-flex justify-content-between bg-light ">' +
      '<a href="detail.html?TenMH=' + list.TenMH + '" class="btn btn-sm text-dark p-0"><i class="fas fa-eye text-primary mr-1"></i>Xem chi tiết</a>' +
      '<a href="" class="btn btn-sm text-dark p-0"> <i class="fa-solid fa-cart-shopping text-dark"></i><i class="fas fa-shopping-cart text-primary mr-1"></i>Thêm vào giỏ hàng</a>' +
      '</div>' +
      '</div>' +
      '</div>';
    $(".addItemMH").append(html)
  }
}

function showMatHangMoi(res) {
  var data = res.items;
  var html = '';
  $(".addItemMHMoi").html("");
  var name = localStorage.getItem("rememberhoodgang");
  var remove = '';
  var itemObject = JSON.parse(name);
  var quyen = itemObject.quyen;
  if (quyen == undefined || quyen == "") {

  } else if (quyen == "0") {
    remove = '<i class="fas fa-trash-alt"></i>';
  }

  for (var i = 0; i < data.length && i < 8; i++) {
    var list = data[i];

    const number = Number(list.Gia);
    const formatCurrency = (number, symbol = '₫') => {
      // Add thousands separator
      const formattedNumber = number.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');

      // Format the number as a currency string
      return `${formattedNumber}${symbol}`;
    };
    html = ' <div class="col-lg-3 col-md-6 col-sm-12 pb-1">' +
      '<div class="card product-item border-0 mb-4">' +
      '<div class="card-header product-img position-relative overflow-hidden bg-transparent border-0">' +
      '<img class="img-fluid w-100" src="img/' + list.HinhAnh + '" alt="">' +
      '</div>' +
      '<div class="card-body  text-center p-0 pt-4 pb-3">' +
      '<h6 class="text-truncate mb-3">' + list.TenMH + '</h6>' +
      '<div class="d-flex justify-content-center">' +
      '<h6>' + formatCurrency(number) + '</h6>' +
      '</div>' +
      '</div>' +
      '<div class="card-footer d-flex justify-content-between bg-light ">' +
      '<a href="detail.html?TenMH=' + list.TenMH + '" class="btn btn-sm text-dark p-0"><i class="fas fa-eye text-primary mr-1"></i>Xem chi tiết</a>' +
      '<a href="" class="btn btn-sm text-dark p-0"> <i class="fa-solid fa-cart-shopping text-dark"></i><i class="fas fa-shopping-cart text-primary mr-1"></i>Thêm vào giỏ hàng</a>' +
      '<h6 class="text-truncate mb-3 btnxoa" data-mamh="' + list.MaMH + '">' + remove + '</h6>' +
      '</div>' +
      '</div>' +
      '</div>';
    $(".addItemMHMoi").append(html)
  }
}
function tim(ele) {
  if (event.key === 'Enter') {
    timKiem();
  }
}
function timKiem() {
  var chuoi = document.getElementById('mySearch').value;
  var urlBase = 'http://localhost:9999/HOODGANG/shop.html?search=';
  if (chuoi === null || chuoi === '') return;
  var searchUrl = urlBase + chuoi;
  window.open(searchUrl, "_self");
}