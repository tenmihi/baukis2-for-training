#!/bin/bash

bundle install
yarn
bin/rails db:setup