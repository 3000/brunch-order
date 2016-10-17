# https://github.com/brunch/brunch/tree/stable/docs

exports.config =

  npm:
    enabled: false

  modules:
    definition: false
    wrapper: false

  files:
    javascripts:
      joinTo: 
        'app.js' : [ 'vendor/js-yaml.js', /^app\/.*coffee/ ]
      order:
        before: ['vendor/js-yaml.js']
    
  overrides:
    production:
      minify: false
      optimize: false
      sourceMaps: false
      plugins: autoReload: enabled: false
  
  server:
    noPushState: yes