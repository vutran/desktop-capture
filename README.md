# desktop-capture

> Capture a screenshot of the desktop as a base64 encoded string.

_Note:_ This module only works for OS X.

## Install

```bash
$ npm i -S desktop-capture
```

## Usage

```js
const capture = require("desktop-capture");

// capture the main monitor
capture().then(b64 => {
  console.log(b64);
});

// capture a specific monitor (via screen ID)
capture({ id: 12345 }).then(b64 => {
  console.log(b64);
});

// override the path to the bin directory
capture({ overridePath: __dirname }).then(b64 => {
  console.log(b64);
});
```

## Build

With NPM:

```bash
$ npm run build
// -> ./desktop-capture
```

With Swift:

```bash
$ swift build
// -> ./build/release/desktop-capture
```

## Test

With NPM:

```bash
$ npm t
```

With Swift:

```bash
$ swift test
```

## License

MIT © [Vu Tran](https://github.com/vutran)
