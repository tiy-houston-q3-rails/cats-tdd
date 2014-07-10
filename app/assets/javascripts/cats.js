
$( document ).ready(function() {

  $("button").on("click", function(){

    var html = "<li class='media'>YO</li>";
    var newElement = $(html);

    $cheeta = $($("#cheech")[0]);
    $cheeta.append(newElement);


  });

});
