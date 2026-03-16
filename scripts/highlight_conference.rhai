let top_conf = [
    "icdar",
    "cvpr",
    "iccv",
    "eccv",
    "acl",
    "emnlp",
    "naacl",
    "iclr",
    "neurips",
    "icml"
];

let mid_conf = [
    "wacv",
    "aaai",
    "ijcai",
    "acmmm",
    "bmvc",
    "coling",
    "findings of acl",
    "findings of emnlp"
];

fn contains_any(text, keywords) {
    for kw in keywords {
        if text.contains(kw) {
            return true;
        }
    }
    false
}

fn main(conf) {

    let c = conf.to_lower();

    if contains_any(c, top_conf) {
        return "🏆";
    }

    if contains_any(c, mid_conf) {
        return "📌";
    }

    ""
}