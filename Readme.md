Overperform
===

Performance metric collector. Uses [phantomas](https://github.com/macbre/phantomas) and [psi](https://github.com/addyosmani/psi) for data collection. This is part of Humble Bundle's ongoing efforts to optimize our front-end performance.

All output data is saved as JSON in the output folders with a timestamped filename.

## Requirements
* [NodeJS](http://nodejs.org)
* [PhantomJS 1.9+](http://phantomjs.org/)

## Installation
```
npm install
```

## Available Commands
* `gulp`
* `gulp psi`
* `gulp phantomas`