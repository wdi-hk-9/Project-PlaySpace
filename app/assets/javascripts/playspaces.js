var PlayspaceSidebar = function () {
  $("#sidebar-wrapper-right").removeClass("hide");
  $("#menu-toggle2").removeClass("hide");
  $("#menu-toggle3").removeClass("hide");
}

$(document).ready(function(){
  var option = {
    HK: ["Central", "North Point", "Repulse Bay", "The Peak", "Wan Chai", "Western"],
    KLN: ["Ho Man Tin", "Tsim Sha Tsui", "Wong Tai Sin"],
    NT: ["Sai Kung", "Sha Tin", "Tai Po"]
  }

  $("#playspace_region").on('change', function() {
    $("#playspace_district").html("");
    if ($("#playspace_region").val() == "HK") {
      for (var i = 0; i < option["HK"].length; i++) {
        $("#playspace_district").append("<option value='"+option["HK"][i]+"'>"+option["HK"][i]+"</option>")
      }
    }
    else if ($("#playspace_region").val() == "Kln") {
      for (var i = 0; i < option["Kln"].length; i++) {
        $("#playspace_district").append("<option value='"+option["Kln"][i]+"'>"+option["Kln"][i]+"</option>")
      }
    }
    else {
      for (var i = 0; i < option["NT"].length; i++) {
        $("#playspace_district").append("<option value='"+option["NT"][i]+"'>"+option["NT"][i]+"</option>")
      }
    }

  })
})
