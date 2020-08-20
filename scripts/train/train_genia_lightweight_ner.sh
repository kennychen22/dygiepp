# Traic DyGIE++ model on the genia data set, without coreference.
# Usage: bash scripts/train/train_genia_lightweight.sh [gpu-id]
# gpu-id can be an integer GPU ID, or -1 for CPU.

experiment_name="genia-lightweight"
config_file="./training_config/genia_lightweight_ner.jsonnet"

# Train model.
allennlp train $config_file \
    --serialization-dir ./models/$experiment_name \
    --force \
    --include-package dygie \
