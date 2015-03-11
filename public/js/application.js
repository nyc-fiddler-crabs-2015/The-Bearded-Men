$(document).ready(function() {

     $.ajax({
        url: "/blogs",
        type: "get"
      })
      .done(function(response) {
        console.log("success:", response)
        $.each(response, function(i) {
          $(".blogs").append(response[i].title).wrap("<p></p>")
          $(".blogs").append(response[i].body).wrap("<p></p>")
          // console.log(response[i])
        })
      })
      .fail(function(err) {
        console.log("error:", err);
      })
      .always(function() {
        console.log("complete");
      });

      //    $.ajax({
      //   url: "/user_blogs",
      //   type: "get"
      // })
      // .done(function(response) {
      //   console.log("success:", response)
      //   $.each(response, function(i) {
      //     $(".user_blogs").append(response[i].title).wrap("<p></p>")
      //     $(".user_blogs").append(response[i].body).wrap("<p></p>")
      //     // console.log(response[i])
      //   })
      // })

      // .fail(function(err) {
      //   console.log("error:", err);
      // })
      // .always(function() {
      //   console.log("complete");
      // });

    $(".login_button").on("click", function(){
        $(".login").show();
    });

     $(".signup").hide();
    $(".signup_button").on("click", function(){
        $(".signup").show();
    });


});


