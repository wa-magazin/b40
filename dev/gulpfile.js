const gulp = require('gulp');
const del = require('del');
const tar = require('gulp-tar');
const gzip = require('gulp-gzip');
const less = require('gulp-less');
const concat = require('gulp-concat'); // Подключаем gulp-concat (для конкатенации файлов)
const cssnano = require('gulp-cssnano'); // Подключаем пакет для минификации CSS

const svgstore = require('gulp-svgstore');
const svgmin = require('gulp-svgmin');
const path = require('path');
const rename = require('gulp-rename');
// Для минификации JS используем gulp-terser
const terser = require('gulp-terser');

const paths = {
    js: 'js/**/*.js',  // Путь к JS файлам
    less: 'less/**/*.less',  // Путь к LESS файлам
};


// Задача для сборки Build.js файлов
gulp.task('scripts', function () {
    return gulp.src(paths.js)  // Берем все указанные файлы
        .pipe(concat('builds.js'))  // Объединяем в один файл

        // Раскомментировать если нужно минифицировать
        .pipe(terser()) // Минификация JS
        .pipe(gulp.dest('../js'));  // Сохраняем итоговый файл
});


// Задача для отслеживания изменений
gulp.task('watch', function () {
    // Отслеживаем изменения в JS файлах и запускаем соответствующие задачи
    gulp.watch(paths.js, gulp.series('scripts'));
    gulp.watch(paths.less, gulp.series('less-watch'));
});

// Задача для компиляции LESS в CSS
gulp.task('less-watch', function () {
    return gulp.src(paths.less)
        .pipe(concat('style.css')) // Объединяем все LESS файлы в один CSS
        .pipe(less({ 
            strictMath: true,   // Отключаем предупреждения для некоторых операций
            silent: true        // Отключаем логи компиляции
        }))
        .pipe(cssnano()) // Минифицируем CSS
        .pipe(gulp.dest('../css'));  // Сохраняем итоговый файл
});


// Задача для работы с SVG
gulp.task('svg', function () {
    return gulp.src('svg/icons/icon-*.svg')
        .pipe(svgmin(function (file) {
            var prefix = path.basename(file.relative, path.extname(file.relative));
            return {
                plugins: [{
                    cleanupIDs: {
                        prefix: prefix + '-',
                        minify: true
                    }
                }]
            };
        }))
        .pipe(svgstore({
            inlineSvg: true  // <<< ВАЖНО: убрать обертку <svg>...</svg>
        }))
        .pipe(rename('icons.svg')) // опционально, чтобы всегда было одно имя
        .pipe(gulp.dest('../img/icons'));
});
