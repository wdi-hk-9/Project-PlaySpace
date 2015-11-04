module PlayspacesHelper
  def features_list(playspace)
    @features = ["bike_path", "merry_go_round", "play_structure", "seesaw", "slide", "swing", "carpark", "snack_shop" "wc"]
    array = []
    @features.each do |feature|
      array.push feature.titleize if playspace[feature]
    end
    array.to_sentence
  end

end
