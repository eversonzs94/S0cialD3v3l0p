var div1 = document.getElementById('visibleskills'),
    div2 = document.getElementById('hidedskills');
function switchVisible() {
  if(!visibleskills) return;
  if (getComputedStyle(visibleskills).display == 'block') {
    visibleskills.style.display = 'block';
    hidedskills.style.display = 'block';
    btnhide.style.display = 'block';
    btnvisible.style.display ='none'
  } else {
    visibleskills.style.display = 'block';
    hidedskills.style.display = 'block';
  }
}
function switchDisable() {
  if(!visibleskills) return;
  if (getComputedStyle(visibleskills).display == 'block') {
    visibleskills.style.display = 'block';
    hidedskills.style.display = 'none';
    btnhide.style.display = 'none';
    btnvisible.style.display ='block';
  } else {
    visibleskills.style.display = 'block';
    hidedskills.style.display = 'block';
  }
}
document.getElementById('btnvisible').addEventListener('click', switchVisible);
document.getElementById('btnhide').addEventListener('click', switchDisable);
