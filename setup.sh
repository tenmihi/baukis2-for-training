#!/bin/zsh

bundle install
yarn
bin/rails db:setup