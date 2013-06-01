Linky
==========

Linky is a web-based app that allows teachers to scaffold learning via themeboards in their classrooms and encourages k12 students to connect personal or found images with in-class learning, [project homepage](http://edesignlabs.org/prototypes/linky/).

## Install

1. Import sql file `linky.sql`
2. Change database info in `app/config/database.php`
3. Create folders for CakePHP caching with writing permissions
  * `app/tmp/cache`
  * `app/tmp/cache/persistent`
  * `app/tmp/cache/models`
4. Linky uses [WideImage](https://packagist.org/packages/smottt/wideimage) for manipulating images. WideImage can be updated using [Composer](http://getcomposer.org/doc/00-intro.md), which comes pre-istalled in this repo. To update WideImage run `composer update` in `app`.

## License

This project was grown out of [EDesign Lab](http://edesignlabs.org) and released under the [MIT license](http://opensource.org/licenses/MIT). See [LICENSE](https://github.com/EDesignLabs/themeboard/tree/master/LICENSE) for detail.

[EDesign Lab](http://edesignlabs.org) is a collaborative of educators and technologists to prototype new forms of digital learning for k12 public education.  This prototype has been developed through a rapid design cycle, user tested with youth, and built with a focus on educator and learner voices/ needs.  Our goal is to offer a blueprint for digital learning 
applications; we encourage contributions to this project as well as independent forks that can change the future of education.
