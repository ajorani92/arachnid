var gulp = require('gulp');
var elm  = require('gulp-elm');

gulp.task('elm-init', elm.init);


var elm_js_location = 'src/*.elm';
var elm_bundle = function() {
    return gulp.src(elm_js_location)
               .pipe(elm.bundle('bundle.js'))
               .pipe(gulp.dest('dist/'));
}

var watcher = gulp.watch(elm_js_location);
watcher.on('change', elm_bundle);

gulp.task('elm-bundle', ['elm-init'], elm_bundle);

gulp.task('default', ['elm-init'])