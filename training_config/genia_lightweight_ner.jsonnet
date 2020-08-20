local template = import "template.libsonnet";

template.DyGIE {
  bert_model: "allenai/scibert_scivocab_cased",
  cuda_device: -1,
  data_paths: {
    train: "data/genia/processed-data/json-ner/train.json",
    validation: "data/genia/processed-data/json-ner/dev.json",
    test: "data/genia/processed-data/json-ner/test.json",
  },
  loss_weights: {
    ner: 1.0,
    relation: 0.0,
    coref: 0.0,
    events: 0.0
  },
  target_task: "ner"
}
