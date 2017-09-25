var gulp = require('gulp');
var elm  = require('gulp-elm');
var uglify = require('gulp-uglify');
var watch = require('gulp-watch');
var sass = require("gulp-sass")


gulp.task('elm-init', elm.init);


var elm_js_location = 'src/elm/**/*.elm';
var watch_elm = function() {
    return watch(elm_js_location, { ignoreInitial: false }, function() {
        gulp.src(elm_js_location)
            .pipe(elm.bundle('bundle.js'))
            .pipe(gulp.dest('dist/'));
    });
}
gulp.task('watch_elm', ['elm-init'], watch_elm);

var scss_location = "src/scss/*.scss";
var watch_scss = function() {
    return watch(scss_location, { ignoreInitial: false })
               .pipe(sass().on('error', sass.logError))
               .pipe(gulp.dest('dist/'))
}
gulp.task('watch_scss', watch_scss);

gulp.task('default', ['watch_elm', 'watch_scss'])