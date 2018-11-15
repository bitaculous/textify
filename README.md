[Textify]
=========

**Generate text from different sources.**

Installation
------------

1. Clone the repository and switch to it:

    ```
    $ git clone git@github.com:bitaculous/textify.git webby
    ```

2. Run `bundle` to install all dependencies with [Bundler]

Usage
-----

```
$ ./bin/textify help
```

### Tasks

Generate text from CSV:

```
$ ./bin/textify csv generate
$ ./bin/textify csv help
```

Bug Reports
-----------

Github Issues are used for managing bug reports and feature requests. If you run into issues, please search the issues
and submit new problems [here].

Versioning
----------

This library aims to adhere to [Semantic Versioning 2.0.0]. Violations of this scheme should be reported as bugs.
Specifically, if a minor or patch version is released that breaks backward compatibility, that version should be
immediately yanked and / or a new version should be immediately released that restores compatibility.

License
-------

Textify is released under the [MIT License (MIT)], see [LICENSE].

[Bitaculous]: https://bitaculous.com "It's all about the bits, baby!"
[Bundler]: http://bundler.io "The best way to manage a Ruby application's gems"
[here]: https://github.com/bitaculous/textify/issues "Github Issues"
[LICENSE]: https://raw.githubusercontent.com/bitaculous/textify/master/LICENSE "License"
[MIT License (MIT)]: http://opensource.org/licenses/MIT "The MIT License (MIT)"
[Textify]: https://bitaculous.github.io/textify/ "Generate text from different sources."
[Travis CI]: https://travis-ci.org/bitaculous/textify "Textify at Travis CI"
[Travis CI Status]: https://img.shields.io/travis/bitaculous/textify.svg?style=flat "Travis CI Status"