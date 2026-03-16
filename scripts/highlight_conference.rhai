import "scripts/config" as cfg;

let comment = params[0];
let conferences_rg = Regex(`(?P<key>${cfg::conferences_rg})`);

if comment != () {
    let conference = conferences_rg.find(comment);
    let conference = conference.text;
    let conference = if conference != "" {
        "<span style='color:#80ed99;font-weight:700'>" + conference + "</span>"
    } else {
        ""
    };
    conference
} else {
    ""
}