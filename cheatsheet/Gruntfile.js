module.exports = function(grunt) {
  grunt.initConfig({
    jshint: {
      src: ['Gruntfile.js']
    }
  })
  grunt.loadNpmTasks('grunt-contrib-jshint');
};
