import "scripts/config" as cfg;

let authors = params[0];
let authors_rg = RegexCaseInsensitive(`(?P<key>${cfg::authors_rg})`);
let authors = authors.map(|v| authors_rg.replace_all(v, "<span style='color:#ffd166;font-weight:700'>$key</span>"));

let start = authors.shift();
authors.reduce(|sum, v| sum + ", " + v, start)