// Set the Z-Index (used to display images on top while dragging)
  var zindexnr = 1;
  
  // boolean to check if the user is dragging
  var dragging = false;
  
  // Show the polaroid on top when clicked on
  $(".polaroid").mouseup(function(e){
     if(!dragging) {
        // Bring polaroid to the foreground
        zindexnr++;
        var cssObj = { 'z-index' : zindexnr,
        '-webkit-transform' : 'rotate(0deg)' };
        $(this).css(cssObj);
     }
  });
  

  // Function to get random number upto m
  // http://roshanbh.com.np/2008/09/get-random-number-range-two-numbers-javascript.html
  function randomXToY(minVal,maxVal,floatVal) {
     var randVal = minVal+(Math.random()*(maxVal-minVal));
     return typeof floatVal=='undefined'?Math.round(randVal):randVal.toFixed(floatVal);
  }
  
  // Make the polaroid draggable & display a shadow when dragging
     $(".polaroid").draggable({
        cursor: 'crosshair',
        start: function(event, ui) {
           dragging = true;
           zindexnr++;
           var cssObj = { '-webkit-box-shadow' : '#888 5px 10px 10px',
              'margin-left' : '-10px',
              'margin-top' : '-10px',
              'z-index' : zindexnr };
           $(this).css(cssObj);
        },
        stop: function(event, ui) {
           var tempVal = Math.round(Math.random());
           if(tempVal == 1) {
              var rotDegrees = randomXToY(330, 360); // rotate left
           } else {
              var rotDegrees = randomXToY(0, 30); // rotate right
           }
           var cssObj = { '-webkit-box-shadow' : '',
              '-webkit-transform' : 'rotate('+ rotDegrees +'deg)',
              'margin-left' : '0px',
              'margin-top' : '0px' };
           $(this).css(cssObj);
           dragging = false;
        }
     });