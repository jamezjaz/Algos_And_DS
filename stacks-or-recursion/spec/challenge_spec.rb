require "base64"


encoded_data = "cmVxdWlyZSAnLi9jaGFsbGVuZ2UucmInCgpSU3BlYy5kZXNjcmliZSAnVW5p
dFRlc3RzJyBkbwoKICBpdCAnZmlyc3RfdGVzdCcgZG8KICAgICMgRmFpbHVy
ZSBtZXNzYWdlOiAKICAgICMgTWV0aG9kIGNhbGxlZDogdHJlZV9oZWlnaHQo
WzIsIDcsIDUsIDIsIDYsIDAsIDldKQogICAgZXhwZWN0KHRyZWVfaGVpZ2h0
KFsyLCA3LCA1LCAyLCA2LCAwLCA5XSkpLnRvIGVxKDMpCiAgZW5kCiAgCiAg
aXQgJ3NlY29uZF90ZXN0JyBkbwogICAgIyBGYWlsdXJlIG1lc3NhZ2U6IAog
ICAgIyBNZXRob2QgY2FsbGVkOiB0cmVlX2hlaWdodChbMSwgNywgNSwgMiwg
NiwgMCwgOSwgMywgNywgNSwgMTEsIDAsIDAsIDQsIDBdKQogICAgZXhwZWN0
KHRyZWVfaGVpZ2h0KFsxLCA3LCA1LCAyLCA2LCAwLCA5LCAzLCA3LCA1LCAx
MSwgMCwgMCwgNCwgMF0pKS50byBlcSg0KQogIGVuZAogIAogIGl0ICd0aGly
ZF90ZXN0JyBkbwogICAgIyBGYWlsdXJlIG1lc3NhZ2U6IAogICAgIyBNZXRo
b2QgY2FsbGVkOiB0cmVlX2hlaWdodChbNSwgMywgMiwgOSwgMCwgMCwgNywg
MCwgMCwgMCwgMCwgMCwgMCwgNSwgMF0pCiAgICBleHBlY3QodHJlZV9oZWln
aHQoWzUsIDMsIDIsIDksIDAsIDAsIDcsIDAsIDAsIDAsIDAsIDAsIDAsIDUs
IDBdKSkudG8gZXEoNCkKICBlbmQKCmVuZAo=
"

data = Base64.decode64(encoded_data)

eval(data)