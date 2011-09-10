$(document).ready(function() {

  // $(document).mousemove(function(){
  //   $("#footbar .container div").delay(1000).animate({"right": "680px"}, "slow");
  //   $("#footbar .white-strip").delay(1000).fadeIn('slow');
  // });
  
  $('.faceoff-button').click(function(){
    $('#mark').css('background', 'url(images/mark.png)');
    $('.twipsy-inner').html('Once clicked, the "like" button returned to its normal state. Yeah, he is definitely watching you now.');
    $('this').hide();
    $('.like-button').show();
  });
  
});