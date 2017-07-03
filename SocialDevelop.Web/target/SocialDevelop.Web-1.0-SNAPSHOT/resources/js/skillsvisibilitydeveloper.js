var div11 = document.getElementById('visibleskills2'),
    div22 = document.getElementById('hidedskills2');
function switchVisible() {
  if(!visibleskills2) return;
  if (getComputedStyle(visibleskills2).display == 'block') {
    visibleskills2.style.display = 'block';
    hidedskills2.style.display = 'block';
    btnhide2.style.display = 'block';
    btnvisible2.style.display ='none'
  } else {
    visibleskills2.style.display = 'block';
    hidedskills2.style.display = 'block';
  }
}
function switchDisable() {
  if(!visibleskills2) return;
  if (getComputedStyle(visibleskills2).display == 'block') {
    visibleskills2.style.display = 'block';
    hidedskills2.style.display = 'none';
    btnhide2.style.display = 'none';
    btnvisible2.style.display ='block';
  } else {
    visibleskills2.style.display = 'block';
    hidedskills2.style.display = 'block';
  }
}
document.getElementById('btnvisible2').addEventListener('click', switchVisible);
document.getElementById('btnhide2').addEventListener('click', switchDisable);