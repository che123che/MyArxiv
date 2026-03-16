let titles_type = [
    "Dataset", "Survey", "Review", "Overview",
    "Benchmark", "Corpus", "DocVQA", "ChartQA"
];

let titles_model = [
    "LayoutLM", "LayoutLMv2", "LayoutLMv3", "LayoutLMv4",
    "LiLT", "Donut", "Nougat", "Pix2Struct", "PaLI",
    "BERT", "GPT", "Transformer", "VLM", "MLLM", "LMM"
];

let titles_method = [
    "OCR", "OCR-Free", "Document", "Document AI", "Document Understanding",
    "Document Intelligence", "Document Parsing", "Document Analysis",
    "Layout", "Layout Analysis", "Layout Understanding",
    "Reading Order", "Reading Sequence",
    "Scene Text", "Text Detection", "Text Recognition",
    "Table Recognition", "Table Understanding",
    "Chart Understanding", "Formula Recognition",
    "Page Parsing", "Visual Document", "PDF",
    "Pre-train", "Pretrain", "Prompt", "Self-Supervised",
    "Multimodal", "Vision-Language"
];

let titles = titles_model + titles_method + titles_type;

let authors_array = [
    "Yann LeCun", "Geoffrey Hinton", "Yoshua Bengio",
    "Kaiming He", "Fei-Fei Li", "Jitendra Malik",
    "Jiawei Han", "Christopher Manning"
];

let conferences = [
    // AI
    "AAAI", "AAMAS", "ACM MM", "AISTATS", "ALT", "CEC", "ECAI", "FUZZ IEEE",
    "GECCO", "ICANN", "ICAPS", "ICCBR", "ICONIP", "ICRA", "ICTAI", "IJCAI",
    "IJCNN", "IROS", "KR", "KSEM", "SIGGRAPH", "STOC", "UAI", "PPSN",
    "PRICAI", "TAAI",

    // CV
    "3DV", "ACCV", "BMVC", "CVPR", "ECCV", "ICCV", "ICDAR", "ICIP", "ICME",
    "ICPR", "IEEE VIS", "MICCAI", "WACV",

    // DM
    "AKBC", "APWeb", "CIKM", "DASFAA", "ECML-PKDD", "ICDE", "ICDM", "ICDT",
    "KDD", "LREC", "MDM", "PAKDD", "PODS", "RecSys", "SDM", "SIGMOD",
    "VLDB", "WSDM", "WWW", "EDBT", "CIDR",

    // IR
    "ECIR", "ESWC", "ICMR", "ICTIR", "ISWC", "SIGIR",

    // ML
    "ACML", "AISTATS", "ECML", "ICLR", "ICML", "ML4H", "NeurIPS", "NIPS", "UAI",

    // NLP
    "AACL", "ACL", "CCL", "COLING", "COLT", "CoNLL", "EACL", "EMNLP",
    "ICASSP", "INTERSPEECH", "NAACL", "NLPCC", "RepL4NLP", "SIGDIAL",
    "SemEval", "WANLP", "WASSA", "WOAH",

    // Arch / System / Security
    "ASPLOS", "ATC", "DATE", "EuroSys", "FAST", "HPCA", "ISCA", "MICRO",
    "PPoPP", "SC", "SoCC", "FSE/ESEC", "ICSE", "ISSTA", "OSDI", "SOSP",
    "ACSA", "AsiaCCS", "CCS", "DSN", "ESORICS", "EuroS&P", "ICICS",
    "NDSS", "RAID", "SP", "USENIX Security"
];

let start = conferences.shift();
let conferences_rg = conferences.reduce(|sum, v| sum + "|" + v, start);
let conferences_rg = "(" + conferences_rg + ")([\\s'-]*\\d+)?";

let start = titles.shift();
let title_rg = titles.reduce(|sum, v| sum + "|" + v, start);

let start = authors_array.shift();
let authors_rg = authors_array.reduce(|sum, v| sum + "|" + v, start);

export title_rg;
export authors_rg;
export conferences_rg;