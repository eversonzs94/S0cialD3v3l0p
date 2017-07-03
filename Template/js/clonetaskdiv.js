$(function() {
  //on click
  $(".btn-default").on("click", function() {
  
    var
    //get length of selections
      length = $(".input-group-task").length,
      //create new id
      newId = "selectionTask-" + length,
      //clone first element with new id
      clone = $("#selectionTask").clone().attr("id", newId);
      clone.children('.show-tick').attr('id', 'select-' + length++);
    //append clone on the end
    $("#taskselections").append(clone);
  });
});