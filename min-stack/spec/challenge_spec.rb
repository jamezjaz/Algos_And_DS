require "base64"


encoded_data = "cmVxdWlyZSAnLi9jaGFsbGVuZ2UucmInCgpSU3BlYy5kZXNjcmliZSAnVW5p
dFRlc3RzJyBkbwoKICBpdCAnbWluX21ldGhvZF93b3JrcycgZG8KICAgICMg
RmFpbHVyZSBtZXNzYWdlOiAKICAgICMgVGhpcyBpcyBvcmRlciBvZiBtZXRo
b2QgY2FsbHM6IHB1c2goNSkgLT4gbWluIC0+IHB1c2goMykgLT4gbWluIC0+
IHBvcCAtPiBtaW4KICAgIHN0YWNrID0gU3RhY2submV3CiAgICBzdGFjay5w
dXNoKDUpCiAgICBleHBlY3Qoc3RhY2subWluKS50byBlcSg1KQoKICAgIHN0
YWNrLnB1c2goMykKICAgIGV4cGVjdChzdGFjay5taW4pLnRvIGVxKDMpCgog
ICAgc3RhY2sucG9wCiAgICBleHBlY3Qoc3RhY2subWluKS50byBlcSg1KQog
IGVuZAoKZW5kCg==
"

data = Base64.decode64(encoded_data)

eval(data)