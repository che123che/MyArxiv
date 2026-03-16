let keywords = [
    "icdar",
    "ocr",
    "document",
    "layout",
    "docvqa",
    "reading order",
    "scene text",
    "text detection",
    "text recognition",
    "table recognition",
    "chart",
    "formula",
    "multimodal",
    "vision-language",
    "vlm",
    "mllm"
];

fn main(title) {

    let t = title.to_lower();

    for kw in keywords {
        if t.contains(kw) {
            return "<span style='color:#ff6b6b;font-weight:bold'>🔥</span>";
        }
    }

    return "";
}