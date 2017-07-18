$("#typeList").change(function(){
    $("div").remove("#selections");
    var skillList = ""+
        "<div class='row' id='selections'>"+
            "<div class='skill-select' id='selection'>"+
                "<div class='col-sm-8 form-group'>"+
                    "<select class='show-tick' id='select' name='idSkill' required>"+
                        "<option disabled='true' selected='true' value=''>Select a skill for this task.</option>"+
                        "<c:forEach items='${skillList}' var='item'>"+
                            "<option value='${item.getIdSkill()}'>${item.getSkillName()}</option>"+
                        "</c:forEach>"+
                    "</select>"+
                "</div>"+
                "<div class='col-sm-4 form-group'>"+
                    "<select class='show-tick' id='select' name='skillLevel' required>"+
                        "<option disabled='true' selected='true' value=''>Skill level required.</option>"+
                        "<option value='1'>1</option>"+
                        "<option value='2'>2</option>"+
                        "<option value='3'>3</option>"+
                        "<option value='4'>4</option>"+
                        "<option value='5'>5</option>"+
                        "<option value='6'>6</option>"+
                        "<option value='7'>7</option>"+
                        "<option value='8'>8</option>"+
                        "<option value='9'>9</option>"+
                        "<option value='10'>10</option>"+
                    "</select>"+
                "</div>"+
            "</div>"+
        "</div>" ;
    $("#skillList").after(skillList);
});