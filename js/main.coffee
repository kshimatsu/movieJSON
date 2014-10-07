options = {
  url: "http://www.omdbapi.com/?i=&t=zoolander",
  dataType: "json"

}

$ ->
  $('form').submit (e) ->
    e.preventDefault()
    input = $("form input[type='movie']")
    name = input.val()
    input.val('')


    # $.ajax (options)
    # .done (data) ->
    #   for movie in data.Search
    #     console.log movie.Title
    #       $('.result').append('<div><a')

    console.log data.Title
    console.log data
    $(".poster").html("<img src=\"#{data.Poster}\" />")
    $("span.title").html(data.Title)
    $("span.year").html(data.Year)
    $("span.actors").html(data.Actors)
    $("span.genre").html(data.Genre)
    $("span.imdbRating").html(data.imdbRating)
    $("span.plot").html(data.Plot)


