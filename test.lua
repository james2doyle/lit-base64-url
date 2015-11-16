local base64url = require('./init')

local text = 'Node.js is awesome.'

local encode = base64url.encode(text)
assert(encode, 'encode: ' .. encode)

local decode = base64url.decode(encode)
assert(decode, text, 'decode: ' .. decode)

local textEscape = 'This+is/goingto+escape=='

local escape = base64url.escape(textEscape)
assert(escape == "This-is_goingto-escape", 'escape (omit + and /): ' .. escape)

local unescape = base64url.unescape(escape)
assert(unescape == textEscape, 'unescape (back to first form): ' .. unescape)