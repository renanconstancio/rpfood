const mix = require('laravel-mix');

/*
 |--------------------------------------------------------------------------
 | Mix Asset Management
 |--------------------------------------------------------------------------
 |
 | Mix provides a clean, fluent API for defining some Webpack build steps
 | for your Laravel applications. By default, we are compiling the CSS
 | file for the application as well as bundling up all the JS files.
 |
 */

mix.js('resources/delivery/js/app.js', 'public/delivery/js')
mix.postCss('resources/delivery/css/app.css', 'public/delivery/css', [
      require('tailwindcss')
    ]);

// mix.minify('public/delivery/js/app.js')
// mix.minify('public/delivery/css/app.css')
