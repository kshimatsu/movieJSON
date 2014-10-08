options = {
  url: "http://www.omdbapi.com/?i=&t=zoolander",
  dataType: "json"

}

$ ->
  $.ajax
    url: "http://www.omdbapi.com/?i=&t=zoolander",
    dataType: "json"
  .done (data) ->
    console.log data.Title
    console.log data
    $('.movieName').html(data.Title)
    $('span.year').html(data.Year)
    $('span.runTime').html(data.Runtime)
    $('span.rated').html(data.Rated)
    $('span.summary' ).html(data.Plot)
    $('span.actors').html(data.Actors)
    $('span.genre').html(data.Genre)
    $('span.director').html(data.Director)
    $('span.writer').html(data.Writer)
    $('span.language').html(data.Language)
    $('span.country').html(data.Country)
    $('span.awards').html(data.Awards)
    $('span.imdbId').html(data.imdbID)
    $('span.imdbRating').html(data.imdbRating)

    $(".poster").html("<img src=\"#{data.Poster}\" />")





  # $('form').submit (e) ->
  #   e.preventDefault()
  #   input = $("form input[type='movie']")
  #   name = input.val()
  #   input.val('')


    # $.ajax (options)
    # .done (data) ->
    #   for movie in data.Search
    #     console.log movie.Title
    #       $('.result').append('<div><a')



