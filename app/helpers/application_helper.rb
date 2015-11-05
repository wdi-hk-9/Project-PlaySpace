module ApplicationHelper
  def avg_rating(playspace)
    if playspace.reviews.count > 0 && playspace.reviews.average(:rating) >= 0
      html = ""
      html += "<span>"
      playspace.reviews.average(:rating).floor.times do
        html += '<span class="glyphicon glyphicon-star yellow"></span>'
      end
      html += "</span>"
      html.html_safe
    end
  end

  def heroku_image_path(path)
    "https://playspaces-wdi.s3.amazonaws.com#{path}"
  end
end
