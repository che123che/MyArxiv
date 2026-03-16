let core_keywords = [
    "icdar",
    "ocr",
    "document ai",
    "document understanding",
    "document intelligence",
    "document parsing",
    "document analysis",
    "layout analysis",
    "layout understanding",
    "layoutlm",
    "docvqa",
    "chartqa",
    "reading order",
    "reading sequence",
    "scene text",
    "text detection",
    "text recognition",
    "table recognition",
    "table understanding",
    "chart understanding",
    "formula recognition",
    "page parsing",
    "visual document"
];

let related_keywords = [
    "document",
    "layout",
    "table",
    "chart",
    "formula",
    "multimodal",
    "vision-language",
    "vlm",
    "mllm",
    "long document",
    "structured document",
    "page",
    "pdf"
];

fn contains_any(text, keywords) {
    for kw in keywords {
        if text.contains(kw) {
            return true;
        }
    }
    false
}

fn main(title) {

    let t = title.to_lower();

    if contains_any(t, core_keywords) {
        return "🔥DocAI";
    }

    if contains_any(t, related_keywords) {
        return "⭐Doc";
    }

    ""
}