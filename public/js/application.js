var comment = function(content) {
    this.content = content;
}

$(document).ready(function() {

     $.ajax({
        url: "/blogs",
        type: "get"
      })
      .done(function(response) {
        console.log("success:", response)
        $.each(response, function(i) {
          $(".blogs").append($('<h3>').text(response[i].title))
          $(".blogs").append($('<p>').text(response[i].body))
        })
      })
      .fail(function(err) {
        console.log("error:", err);
      })
      .always(function() {
        console.log("complete");
      });


    $(".login_button").on("click", function(){
        $(".login").show();
    });

     $(".signup").hide();
    $(".signup_button").on("click", function(){
        $(".signup").show();
    });

    ////// Ajax call to Display Javascript comment.

      $('.comment_form').on('submit', function(e) {
    e.preventDefault();
    // console.log( $( this ).serialize() );
    $.ajax({
      url: '/comment',
      type: 'post',
      data: $(this).serialize()
      })
    .done(function(data){
      console.log(data);
      $(".view_comment").append(data)
    })
    });


});




