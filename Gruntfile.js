module.exports = function(grunt) {
  grunt.initConfig({
    jshint: {
      src: ['Gruntfile.js', 'src/**/*.js', 'tests/**/*.js']
    },
    mocha: {
      test: {
        src: ['tests/**/*.html'],
        options: {
          run: true
        }
      }
    }
  });
  grunt.loadNpmTasks('grunt-contrib-jshint');
  grunt.loadNpmTasks('grunt-mocha');
  
  grunt.registerTask('default', ['jshint', 'mocha']);
};
