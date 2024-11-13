$(document).ready(function(){
    const queryString = window.location.search;
   // console.log(queryString);
// ?product=shirt&color=blue&newuser&size=m
const urlParams = new URLSearchParams(queryString);
const inputString = urlParams.get('TenMH')
const TenMH = inputString.replace(/'/g, "''");
var dataSend={
    TenMH:TenMH
};

 queryData_GET("php/api_get_mat_hang_theo_tenmh.php",dataSend,function (res) {
    console.log(res);
    checkKTMH(res);
    showDeTailMH(res);
    showKTMH(res);
 });
});

function showDeTailMH(res){
    var data = res.items;
        
   
    var html='';
    
    for (item in data) {
       var list=data[item];
       
    }
    const inputString = list.MoTa;
    const formattedString = inputString.replace(/\n/g, '<br>');

    const tieuDeMH = list.TenMH + ' - ' + list.MauSac;
    
    const number = Number(list.Gia);
    const formatCurrency = (number, symbol = '₫') => {
        // Add thousands separator
    const formattedNumber = number.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
      
        // Format the number as a currency string
    return `${formattedNumber}${symbol}`;
    };

    console.log(formatCurrency(number));


    $(".addTenLoai").html(list.TenLoai);
    $(".addTenMH").html(tieuDeMH);
    $(".addGia").html(formatCurrency(number));
    $(".addMota").html(formattedString);
    document.querySelectorAll('.addHinhAnh > img').forEach(img => img.src = 'img/'+list.HinhAnh+'');
}

function showKTMH(res){
    var data = res.items;
        
   
    var html='';
    
    for (item in data) {
        var list=data[item];
        if(list.SLMH == '0'){
            html=html + '<div class="section-inline">' +
                '<p><span>'+list.MaKT+'</span><br>Hết hàng</p>' +
                    '</div>';
        }
        else{
            html=html + '<div class="section-inline">' +
                '<p><span>'+list.MaKT+'</span><br>Còn: '+list.SLMH+'</p>' +
                    '</div>';
        }
        
      }
      $(".addKT").html(html)
}

function checkKTMH(res){
    var data = res.items;
        
   
    var html='';
    
    for (var i = 0; i < data.length && i < 1; i++) {
        var list = data[i];
        if(list.MaKT == "PK"){
        html=html + '<input class="desc-btn" type="radio" id="desc-1" name="desc-btn" checked />' +
                    '<label for="desc-1">Chi tiết</label>' +
                    '<label>Số lượng mặt hàng: '+list.SLMH+'</label>' +
                    '<div class="section-fluid desc-sec accor-1">' +
                        '<p class="addMota"></p>' +
                    '</div>';
        }
        else{
            html='<input class="desc-btn" type="radio" id="desc-1" name="desc-btn" checked />' +
                    '<label for="desc-1">Chi tiết</label>' +
                    '<input class="desc-btn" type="radio" id="desc-2" name="desc-btn" />' +
                    '<label for="desc-2">Kích thước</label>' +
                    '<div class="section-fluid desc-sec accor-1">' +
                        '<p class="addMota"></p>' +
                    '</div>' +
                    '<div class="section-fluid desc-sec accor-2 addKT">' +
                    '</div>';
        }
      }
      $(".addListThongTin").html(html)
}