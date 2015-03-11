$(document).ready(function() {

     $.ajax({
        url: "/blogs",
        type: "get"
      })
      .done(function(response) {
        console.log("success:", response)

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


});


