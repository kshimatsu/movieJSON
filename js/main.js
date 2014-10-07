// Generated by CoffeeScript 1.8.0
(function() {
  var options;

  options = {
    url: "http://www.omdbapi.com/?i=&t=zoolander",
    dataType: "json"
  };

  $(function() {
    return $.ajax(options).done(function(data) {
      console.log(data.Title);
      console.log(data);
      $(".poster").html("<img src=\"" + data.Poster + "\" />");
      $("span.title").html(data.Title);
      $("span.year").html(data.Year);
      $("span.actors").html(data.Actors);
      $("span.genre").html(data.Genre);
      $("span.imdbRating").html(data.imdbRating);
      return $("span.plot").html(data.Plot);
    });
  });

}).call(this);

//# sourceMappingURL=main.js.map