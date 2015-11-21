var babel = require('babel-core');

var es2015 = require('babel-preset-es2015');

window.addEventListener('load', function() {
  var scripts = document.getElementsByTagName('script');

  Array.prototype.forEach.call(scripts, function(script) {
    if (script.type === 'application/es2015') {
      var result = babel.transform(script.innerHTML, {presets: [es2015]});

      eval(result.code);
    }
  });
});