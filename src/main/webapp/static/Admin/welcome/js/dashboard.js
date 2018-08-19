/*
  For Circular progress we've use http://ignitersworld.com/lab/radialIndicator.html
  You can reference the docs for any customization

  for example change initValue to reflect progress
*/

window.onload = function () {
  //Intialiazation 
  var radialObj = radialIndicator('#indicatorContainer', {

    radius: 50,
    barColor: "#05ad29",
    barWidth: 25,
    initValue: 80,
    percentage: true,
    fontSize: 16
  });

  var radialObj2 = radialIndicator('#indicatorContainer2', {
    radius: 50,
    barColor: '#ec1e24',
    barWidth: 25,
    initValue: 80,
    percentage: true,
    fontSize: 16
  });


  var radialObj3 = radialIndicator('#indicatorContainer3', {
    radius: 50,
    barColor: '#2196f3',
    barWidth: 25,
    initValue: 80,
    percentage: true,
    fontSize: 16
  });

}


/**
 * 
 * @param {String} containerId, ID of div containing legend 
 * @param {Number} progess, a value between [0, 100] 
 */
function linearProgress(containerId, progess) {
  const div = document.getElementById(containerId);
  const line = div.childNodes[3];
  const fade = div.childNodes[5];
  const text = div.childNodes[7];
  if (progess === 100) {
    fade.style.display = 'none';
  } else {
    fade.style.display = 'inline-block';
  }
  line.style.width = `${progess}%`;
  fade.style.width = `${100 - progess}%`;
  text.textContent = `${progess}%`;

}