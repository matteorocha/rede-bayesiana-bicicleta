% Probabilidades base
0.6::str(dry); 0.1::str(wet); 0.3::str(snow_covered).
0.3::flw.
0.85::b.
0.65::k.

% R depende de Flw
0.8::r :- flw.
0.25::r :- \+flw.

% V depende de R
0.95::v :- r.
0.1::v :- \+r.

% Li depende de V, B, K
0.98::li :- v, b, k.
0.4::li :- v, b, \+k.
0.5::li :- v, \+b, k.
0.3::li :- v, \+b, \+k.
0.2::li :- \+v, b, k.
0.05::li :- \+v, \+b, \+k.

% Consulta principal e evidência
evidence(str(snow_covered)).
query(v).
