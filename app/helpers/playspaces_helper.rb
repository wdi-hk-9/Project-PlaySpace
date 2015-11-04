module PlayspacesHelper
  def features_list(playspace)
    @features = ["bike_path", "merry_go_round", "play_structure", "seesaw", "slide", "swing", "carpark", "snack_shop" "wc"]
    array = []
    @features.each do |feature|
      array.push feature.titleize if playspace[feature]
    end
    array.to_sentence
  end

  def avg_rating(playspace)
    if playspace.reviews.count > 0 && playspace.reviews.average(:rating) >= 0
      html = "<span>"
      playspace.reviews.average(:rating).floor.times do
        html += '<span class="glyphicon glyphicon-star yellow"></span>'
      end
      html += "</span>"
      html
    end
  end
end
