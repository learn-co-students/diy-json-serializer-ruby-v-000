$(function () {
  $(".js-more").on('click', function() {
    let id = this.dataset.id
    $.get("/posts/" + id + "/post_data", function(data) {
      let postsCount = parseInt(data.postsCount)
      $("#body-" + id).text(data.description)
    })
  })

  $(".js-next").on("click", function() {
    let nextId = parseInt(this.dataset.id)+1
    $.getJSON("/posts/" + nextId + "/post_data", function(data) {
      if(data.id < parseInt(data.postsCount)){
        $(".authorName").text(data.author.name)
        $(".postTitle").text(data.title)
        $(".postBody").text(data.description)
        $(".js-next").attr("data-id", data.id + 1)
      }else{
        $(".authorName").text(data.author.name)
        $(".postTitle").text(data.title)
        $(".postBody").text(data.description)
        $(".js-next").attr("data-id", parseInt(data.postsCount))
      }
    })
  })
})
