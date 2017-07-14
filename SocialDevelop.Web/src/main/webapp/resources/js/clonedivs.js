$(function() {
  //on click
  $(".btn-primary").on("click", function() {
   
    var
    //get length of selections
      length = $(".skill-select").length,
      //create new id
      newId = "selection-" + length,
      //clone first element with new id
      clone = $("#selection").clone().attr("id", newId);
      clone.children('.show-tick').attr('id', 'select-' + length++);
    //append clone on the end
    $("#selections").append(clone);
  });
});