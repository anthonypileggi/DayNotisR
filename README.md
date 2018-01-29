
<!-- README.md is generated from README.Rmd. Please edit that file -->
DayNotisR
=========

A programmable MacOSX desktop notifications based time management system, built in R.

*Inspired by [DayNotis](https://github.com/djmetzle/DayNotis).*

Installation
------------

``` r
# install.packages("devtools")
devtools::install_github("anthonypileggi/DayNotisR")
```

Usage
-----

Create your weekly schedule in `config.yml`.

Then activiate your notifications with:

``` r
DayNotisR::setup()
```

If you make any changes to `config.yml`, just re-run it.

How to turn it off
------------------

Just make a blank `config.yml`.
