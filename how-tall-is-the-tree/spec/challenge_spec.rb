require "base64"


encoded_data = "cmVxdWlyZSAnLi9jaGFsbGVuZ2UucmInCgpSU3BlYy5kZXNjcmliZSAnVW5p
dFRlc3RzJyBkbwoKICBpdCAnZmlyc3RfdHJlZV9vZl9maWZ0ZWVuX25vZGVz
JyBkbwogICAgIyBGYWlsdXJlIG1lc3NhZ2U6IAogICAgIyBNZXRob2QgY2Fs
bDogYmluYXJ5X3RyZWVfaGVpZ2h0KFsxLCA3LCA1LCAyLCA2LCAwLCA5LCAz
LCA3LCA1LCAxMSwgMCwgMCwgNCwgMF0pCiAgICBhcnJheV90cmVlID0gWzEs
IDcsIDUsIDIsIDYsIDAsIDksIDMsIDcsIDUsIDExLCAwLCAwLCA0LCAwXQog
ICAgZXhwZWN0KGJpbmFyeV90cmVlX2hlaWdodChhcnJheV90cmVlKSkudG8g
ZXEoNCkKICBlbmQKICAKICBpdCAnc2Vjb25kX3RyZWVfb2ZfZmlmdGVlbl9u
b2RlcycgZG8KICAgICMgRmFpbHVyZSBtZXNzYWdlOiAKICAgICMgTWV0aG9k
IGNhbGw6IGJpbmFyeV90cmVlX2hlaWdodChbNSwgMywgMiwgOSwgMCwgMCwg
NywgMCwgMCwgMCwgMCwgMCwgMCwgNSwgMF0pCiAgICBhcnJheV90cmVlID0g
WzUsIDMsIDIsIDksIDAsIDAsIDcsIDAsIDAsIDAsIDAsIDAsIDAsIDUsIDBd
CiAgICBleHBlY3QoYmluYXJ5X3RyZWVfaGVpZ2h0KGFycmF5X3RyZWUpKS50
byBlcSg0KQogIGVuZAogIAogIGl0ICd0cmVlX29mX3RoaXJ0eV9ub2Rlcycg
ZG8KICAgICMgRmFpbHVyZSBtZXNzYWdlOiAKICAgICMgTWV0aG9kIGNhbGw6
IGJpbmFyeV90cmVlX2hlaWdodChbMSwgMiwgMywgNCwgMCwgNSwgNiwgNywg
OCwgMCwgMCwgOSwgMCwgMCwgMCwgMCwgMCwgMCwgMCwgMCwgMCwgMCwgMCwg
MCwgMTAsIDAsIDAsIDAsIDAsIDAsIDBdKQogICAgYXJyYXlfdHJlZSA9IFsx
LCAyLCAzLCA0LCAwLCA1LCA2LCA3LCA4LCAwLCAwLCA5LCAwLCAwLCAwLCAw
LCAwLCAwLCAwLCAwLCAwLCAwLCAwLCAwLCAxMCwgMCwgMCwgMCwgMCwgMCwg
MF0KICAgIGV4cGVjdChiaW5hcnlfdHJlZV9oZWlnaHQoYXJyYXlfdHJlZSkp
LnRvIGVxKDUpCiAgZW5kCgplbmQK
"

data = Base64.decode64(encoded_data)

eval(data)
