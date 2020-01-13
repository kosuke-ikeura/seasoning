/* global $ */

window.addEventListener('DOMContentLoaded', function(){
      $(function() {
     // 「Open」ボタンをクリック時に、fadeInメソッドでHTML要素を表示する
     $('.open').on('click', function() {
       $('#overlay, #modalWindow').fadeIn();
     });
     
     // 「Close」ボタンをクリック時に、fadeOutメソッドでHTML要素を非表示にする
     $('#close').on('click', function() {
       $('#overlay, #modalWindow').fadeOut();
     });
     
     locateCenter();  // => モーダルウィンドウを中央配置するための初期値を設定する
     $(window).resize(locateCenter);  // => ウィンドウのリサイズに合わせて、モーダルウィンドウの配置を変える
   
   // モーダルウィンドウを中央配置するための配置場所を計算する関数
     function locateCenter() {
       let w = $(window).width();
       let h = $(window).height();
       
       let cw = $('#modalWindow').outerWidth();
       let ch = $('#modalWindow').outerHeight();
      
       $('#modalWindow').css({
         'left': ((w - cw) / 2) + 'px',
         'top': ((h - ch) / 2) + 'px'
       });
     }
   });
});