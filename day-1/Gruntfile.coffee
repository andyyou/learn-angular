module.exports = (grunt) ->
  grunt.initConfig
    pkg: grunt.file.readJSON('package.json'),
    log:
      options:
        name: '<%= pkg.name %>'
    connect:
      server:
        options:
          port: 9001,
          base: './'
    watch:
      html:
        files: ['*.html'],
        options:
          livereload: true

  grunt.registerTask 'log', ->
    options = @options
        name: ''

    grunt.log.writeln("Logging start #{options.name}").ok()

  grunt.registerTask 'build', ['connect', 'watch']
  grunt.loadNpmTasks('grunt-contrib-watch')
  grunt.loadNpmTasks('grunt-contrib-connect')