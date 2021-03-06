# Load all required libraries.
gulp = require 'gulp'
gutil = require 'gulp-util'
coffee = require 'gulp-coffee'
plumber = require 'gulp-plumber'

gulp.on 'err', (e) ->
  gutil.beep()
  gutil.log e.err.stack

gulp.task 'coffee', ->
  gulp.src './src/**/*.coffee'
    .pipe plumber() # Pevent pipe breaking caused by errors from gulp plugins
    .pipe coffee({bare: true})
    .pipe gulp.dest './lib/'

gulp.task 'watch', ->
  gulp.watch './src/**/*.coffee', ['coffee']

gulp.task 'default', ['coffee']
