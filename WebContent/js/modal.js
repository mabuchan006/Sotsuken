$(document).ready(function(){

//指定したセレクタのモーダルを表示させる
$('#auto_modal').modal('show');


//Modalが閉じられたらイベント発動
$('#auto_modal').on('hidden.bs.modal', function (e) {
    //非表示を解除
    $('#hide_modal').removeClass('hidden');
});


});