Lit rndm
========

> Base64 encode, decode, escape and unescape for URL applications

This was modified from the node.js version at [joaquimserafim/base64-url](https://github.com/joaquimserafim/base64-url).

### Install

```sh
$ lit install james2doyle/base64-url
```

### Usage

```lua
local base64url = require('base64-url')

local textEscape = 'This+is/goingto+escape=='

local escape = base64url.escape(textEscape)
assert(escape == "This-is_goingto-escape", 'escape (omit + and /): ' .. escape) -- its escaped now!
```
