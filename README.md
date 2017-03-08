[![Build Status](https://travis-ci.org/BachirC/stash.svg?branch=master)](https://travis-ci.org/BachirC/stash)
[![Coverage Status](https://coveralls.io/repos/github/BachirC/stash/badge.svg?branch=master)](https://coveralls.io/github/BachirC/stash?branch=master)
[![Deps Status](https://beta.hexfaktor.org/badge/all/github/BachirC/stash.svg)](https://beta.hexfaktor.org/github/BachirC/stash)

## Overview

Stash provides a simple API for stashing links shared in other apps (e.g. : Slack channel) and make them easily available by tagging them to allow easy sorting.

**NB** : For now, only Slack client is supported.

With Stash you can :

  * Import already shared links in bulk
  * Watch a channel for any new link and store it automatically

## Installation

To start your Phoenix app:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `npm install`
  * Start Phoenix endpoint with `mix phoenix.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

## ToDo

  * Implement Slack client
  * Lexical analysis for tagging
  * Sorting (by tags, origin...)

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
