require "base64"


encoded_data = "cmVxdWlyZSAnLi9jaGFsbGVuZ2UucmInCgpSU3BlYy5kZXNjcmliZSAnVW5p
dFRlc3RzJyBkbwoKICBpdCAnZmlyc3RfYXJyYXlfb2ZfdGVuX3Bvc2l0aW9u
cycgZG8KCiAgICAjIEZhaWx1cmUgbWVzc2FnZTogCiAgICAjIE1ldGhvZCBj
YWxsZWQ6IG1lcmdlX3NvcnQoWy0zLCAyLCAyLCAyLCA0XSwgWy0yLCAwLCAx
LCA1LCA3XSkKCiAgICBhcnIxID0gWy0zLCAyLCAyLCAyLCA0XQogICAgYXJy
MiA9IFstMiwgMCwgMSwgNSwgN10KICAgIGV4cGVjdChtZXJnZV9zb3J0KGFy
cjEsIGFycjIpKS50byBlcShbLTMsIC0yLCAwLCAxLCAyLCAyLCAyLCA0LCA1
LCA3XSkKCiAgZW5kCgogIGl0ICdzZWNvbmRfYXJyYXlfb2ZfdGVuX3Bvc2l0
aW9ucycgZG8KCiAgICAjIEZhaWx1cmUgbWVzc2FnZTogCiAgICAjIE1ldGhv
ZCBjYWxsZWQ6IG1lcmdlX3NvcnQoWy00LCAtMywgLTEsIDEsIDNdLCBbMCwg
NSwgNywgOSwgMTFdKQoKICAgIGFycjEgPSBbLTQsIC0zLCAtMSwgMSwgM10K
ICAgIGFycjIgPSBbMCwgNSwgNywgOSwgMTFdCiAgICBleHBlY3QobWVyZ2Vf
c29ydChhcnIxLCBhcnIyKSkudG8gZXEoWy00LCAtMywgLTEsIDAsIDEsIDMs
IDUsIDcsIDksIDExXSkKCiAgZW5kCgogIGl0ICdmaXJzdF9hcnJheV9vZl90
d2VsdmVfcG9zaXRpb25zJyBkbwoKICAgICMgRmFpbHVyZSBtZXNzYWdlOiAK
ICAgICMgTWV0aG9kIGNhbGxlZDogbWVyZ2Vfc29ydChbMjEsIDMyLCA0NSwg
NjIsIDcxLCA4M10sIFsxLCAzLCA0LCA3LCA5LCAxMl0pCgogICAgYXJyMSA9
IFsyMSwgMzIsIDQ1LCA2MiwgNzEsIDgzXQogICAgYXJyMiA9IFsxLCAzLCA0
LCA3LCA5LCAxMl0KICAgIGV4cGVjdChtZXJnZV9zb3J0KGFycjEsIGFycjIp
KS50byBlcShbMSwgMywgNCwgNywgOSwgMTIsIDIxLCAzMiwgNDUsIDYyLCA3
MSwgODNdKQoKICBlbmQKCiAgaXQgJ3NlY29uZF9hcnJheV9vZl90d2VsdmVf
cG9zaXRpb25zJyBkbwoKICAgICMgRmFpbHVyZSBtZXNzYWdlOiAKICAgICMg
TWV0aG9kIGNhbGxlZDogbWVyZ2Vfc29ydChbLTkxLCAtNCwgNDIsIDEyMSwg
MjY1LCA1MzBdLCBbLTYyMywgLTU0LCAtNywgNjUxLCA3MjEsIDg1MF0pCgog
ICAgYXJyMSA9IFstOTEsIC00LCA0MiwgMTIxLCAyNjUsIDUzMF0KICAgIGFy
cjIgPSBbLTYyMywgLTU0LCAtNywgNjUxLCA3MjEsIDg1MF0KICAgIGV4cGVj
dChtZXJnZV9zb3J0KGFycjEsIGFycjIpKS50byBlcShbLTYyMywgLTkxLCAt
NTQsIC03LCAtNCwgNDIsIDEyMSwgMjY1LCA1MzAsIDY1MSwgNzIxLCA4NTBd
KQoKICBlbmQKCmVuZAo=
"

data = Base64.decode64(encoded_data)

eval(data)
