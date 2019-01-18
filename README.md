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

capture().then(b64 => {
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
