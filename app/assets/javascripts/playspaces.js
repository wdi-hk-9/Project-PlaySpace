var PlayspaceSidebar = function () {
  $("#sidebar-wrapper-right").removeClass("hide");
  $("#menu-toggle2").removeClass("hide");
  $("#menu-toggle3").removeClass("hide");
}

$(document).ready(function(){
  var option = {
    HK: ["Central", "North Point", "Repulse Bay", "The Peak", "Wan Chai", "Western"],
    Kln: ["Ho Man Tin", "Tsim Sha Tsui", "Wong Tai Sin"],
    NT: ["Sai Kung", "Sha Tin", "Tai Po"]
  }

  var bindRegionDistrict = function (formID) {
    $(formID + " #playspace_region").on('change', function() {
      $(formID + " #playspace_district").html("");
      $(formID + " #playspace_district").append("<option value>Select by district:</option>")

      if ($(formID + " #playspace_region").val() == "HK") {
        option["HK"].forEach(function(elem) {
          option_html = "<option value='"+elem+"'>"+elem+"</option>";
          $(formID + " #playspace_district").append(option_html)
        })
      }
      else if ($(formID + " #playspace_region").val() == "Kln") {
        option["Kln"].forEach(function(elem) {
          option_html = "<option value='" + elem + "'>" + elem + "</option>";
          $(formID + " #playspace_district").append(option_html)
        })
      }
      else {
        option["NT"].forEach(function(elem) {
          option_html = "<option value='" + elem + "'>" + elem + "</option>";
          $(formID + " #playspace_district").append(option_html)
        })
      }

    })
  };

  bindRegionDistrict('#search')
  bindRegionDistrict('#new_playspace')

})
