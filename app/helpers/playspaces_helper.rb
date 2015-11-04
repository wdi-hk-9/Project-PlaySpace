module PlayspacesHelper
  def features_list(playspace)
    @features = {
      bike_path: "bike.png",
      merry_go_round: "merrygoround.png",
      play_structure: "playstructure.png",
      seesaw: "seesaw.png",
      slide: "slide.png",
      swing: "swing.png",
      carpark: "carpark.png",
      snack_shop: "snack.png",
      wc: "wc.png"
    }
    @array = []
    @features.each do |feature, image|
      @array.push image if playspace[feature]
    end
  end
end
