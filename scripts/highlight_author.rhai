let org_keywords = [
    "google",
    "deepmind",
    "openai",
    "meta",
    "anthropic",
    "microsoft",
    "nvidia",
    "adobe",
    "allen",
    "mit",
    "stanford",
    "berkeley",
    "cmu",
    "tsinghua",
    "peking",
    "zhejiang",
    "fudan",
    "sjtu",
    "ntu",
    "nus"
];

fn contains_any(text, keywords) {
    for kw in keywords {
        if text.contains(kw) {
            return true;
        }
    }
    false
}

fn main(author) {

    let a = author.to_lower();

    if contains_any(a, org_keywords) {
        return "👤";
    }

    ""
}