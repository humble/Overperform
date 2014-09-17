# Parameters
sites =
  production: 'https://www.humblebundle.com'

# Load required libraries
fs = require 'fs'
gulp = require 'gulp'
moment = require 'moment'

psi = require 'psi'
phantomas = require 'phantomas'

# Define tasks
gulp.task 'default', ['psi', 'phantomas']

gulp.task 'psi', (cb) ->
  psi
    nokey: 'true'
    url: sites.production
  , (error, data) ->
    fs.writeFile("output/psi/#{moment().toISOString().split(':').join('-')}.json", JSON.stringify(data))

gulp.task 'phantomas', (cb) ->
  task = phantomas sites.production, (error, json, results) ->
    fs.writeFile("output/phantomas/#{moment().toISOString().split(':').join('-')}.json", JSON.stringify(json))
