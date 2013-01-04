$(document).ready(function() {
  var loadData = function(time_within) {
    $("#products").html("");
    _.each(gon.products, function(product) {
      var productId = "\"product" + gon.products.indexOf(product) + "\"";
      if (gon.products.indexOf(product) % 2 == 0) {
        $("#products").append("<div class=\"product even_product\" id=\"product\">" + 
          "<a href=\"/products/" + product.id + "\">" + product.name + "</a>" +
          " | " + "Total Reviews: " + product.total_reviews + " | " + "Avg. Rating: " + 
          product.average + "</div>");
      } else {
        $("#products").append("<div class=\"product odd_product\" id=\"product\">" + 
          "<a href=\"/products/" + product.id + "\">" + product.name + "</a>" +
          " | " + "Total Reviews: " + product.total_reviews + " | " + "Avg. Rating: " + 
          product.average + "</div>");
      }
    });
  };
  loadData(7);

  $("#reviews_within").each(function() {
    $("a").click(function(clicked) {
      if($(this).hasClass("active")) {
        $(this).removeClass("active");
      } else {
        $(this).addClass("active");
      }
      loadData(30);
    });
  });
});