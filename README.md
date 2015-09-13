# node-makepbo

[![Dependency status](https://img.shields.io/david/MikeMatrix/node-makepbo.svg?style=flat)](https://david-dm.org/MikeMatrix/node-makepbo)
[![devDependency Status](https://img.shields.io/david/dev/MikeMatrix/node-makepbo.svg?style=flat)](https://david-dm.org/MikeMatrix/node-makepbo#info=devDependencies)

[![NPM](https://nodei.co/npm/makepbo.svg?style=flat)](https://npmjs.org/package/makepbo)

## Installation

    npm install makepbo

## Usage Example

    var makePBO = require("makepbo");
    
    makePBO.run("X:\\Path\\To\\Folder", "X:\\Path\\To\\Destination", [makePBO.options.lintcheck], function() {
        console.log("done");
    });

## License

The MIT License (MIT)

Copyright 2015 Michael Braun

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
