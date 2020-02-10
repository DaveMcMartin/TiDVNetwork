# Ti DVNetwork

Titanium module to handle Network Operations with high performance using synchronous calls.

# Installing

1. Download this project and open the .zip file in /ios/dist folder, then copy it's content to your project in the correct folder structure. The path will look like the following: `modules/iphone/net.davidmartins.tipdf/2.3.1`
2. Open Studio, and the `tiapp.xml` file for the project in question.
3. Switch to the `tiapp.xml` tab.
4. In the application's `tiapp.xml`, find the `<modules/>` node, and replace it with the new `<modules>` content. If you already have modules, just add a new node for the Ti PDF module. Note that the "version" and "platform" attributes are optional. When "version" is not specified, the latest version of the module will be used (as of Titanium SDK 2.0.0).
```xml
<modules>
	<module version="0.0.1" platform="iphone">net.davidmartins.net</module>
</modules>
```
5. Use the require function to load the module in the app's code, for example:
```javascript
var DVNetwork = require('net.davidmartins.net');
```
6. The next time the app is launched or built, Ti PDF should be included with the application.

## Prerequisites

* Mac OS X
* Axway Appcelerator Titanium
* XCode

# API

First of all, load the module.

```javascript
var DVNetwork = require('net.davidmartins.net');
```

Then set the properties of your PDF and start drawing. To save call the savePDF function.

## Methods

All parameters with `*` are required.

### quickSmallFileDownload(urlDownload`*`, filePath`*`)
```javascript
var file = Ti.Filesystem.getFile(Ti.Filesystem.applicationDataDirectory, 'myfile.jpg');

var response = DVNetwork.quickSmallFileDownload('https://davidmartins.net/wp-content/themes/davidmartins/img/imageindex.jpg', file);

if(response != null || response != "") {
	Ti.API.error('Error download file: ' + response);
}
```
Download file to location. Returns empty string if the download succeeded otherwise return the message error.

| Name | Type | Description |
| --- |:---:| --- |
| urlDownload | `String` | The url to be downloaded |
| filePath | `String` | The destination where the download file must be saved |

### quickSmallGETText(url`*`)
```javascript
var response = DVNetwork.quickSmallGETText('https://raw.githubusercontent.com/DaveKun/TiDVNetwork/master/license.md');

Ti.API.info('Server response: ' + response);
```
Returns `String` - The URL contents

# Built With

* [Axway Appcelerator Titanium](https://www.appcelerator.com/) - Mobile Development Platform
* [XCode](https://developer.apple.com/xcode/) - iOS IDE
* [Quartz 2D](https://developer.apple.com/library/content/documentation/GraphicsImaging/Conceptual/drawingwithquartz2d/Introduction/Introduction.html) - iOS 2D Native Rendering Framework

Happy Coding!

# License

Ti DVNetwork is licensed under MIT.

```
 Copyright (c) 2018-2020 David Martins dos Anjos

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
```
