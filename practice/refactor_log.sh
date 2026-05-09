#!/usr/bin/env bash
# Intentionally repetitive shell script for nvim practice.
# Goal: refactor with macros, text objects, search-replace, and dot-repeat.
# DO NOT execute this — it is a fixture for editing drills.

set -e

# --- Logging helpers (these all do the same thing — refactor into one) ---

log_step_one() {
    echo "[step] starting step one"
    sleep 1
    echo "[step] finished step one"
}

log_step_two() {
    echo "[step] starting step two"
    sleep 1
    echo "[step] finished step two"
}

log_step_three() {
    echo "[step] starting step three"
    sleep 1
    echo "[step] finished step three"
}

log_step_four() {
    echo "[step] starting step four"
    sleep 1
    echo "[step] finished step four"
}

# --- Hardcoded paths (typo: shoud -> should) ---

readonly INPUT_DIR="/var/data/incomming"
readonly OUTPT_DIR="/var/data/processed"
readonly ERORR_DIR="/var/data/erorr"
readonly TMP_DIR="/tmp/proccessing"

# --- A list of regions, each with the same boilerplate ---

process_us_east() {
    echo "processing us-east"
    cp "$INPUT_DIR/us-east.csv" "$TMP_DIR/us-east.csv"
    echo "done us-east"
}

process_us_west() {
    echo "processing us-west"
    cp "$INPUT_DIR/us-west.csv" "$TMP_DIR/us-west.csv"
    echo "done us-west"
}

process_eu_central() {
    echo "processing eu-central"
    cp "$INPUT_DIR/eu-central.csv" "$TMP_DIR/eu-central.csv"
    echo "done eu-central"
}

process_ap_south() {
    echo "processing ap-south"
    cp "$INPUT_DIR/ap-south.csv" "$TMP_DIR/ap-south.csv"
    echo "done ap-south"
}

# --- Main ---

main() {
    log_step_one
    log_step_two
    log_step_three
    log_step_four

    process_us_east
    process_us_west
    process_eu_central
    process_ap_south

    echo "all regions processed succesfully"
}

main "$@"


# DRILL TARGETS for this file
# ----------------------------
# Typo fixes (search + ciw, or :%s):
#   incomming   -> incoming
#   OUTPT_DIR   -> OUTPUT_DIR
#   ERORR_DIR   -> ERROR_DIR
#   erorr       -> error
#   proccessing -> processing
#   succesfully -> successfully
#
# Macro drill (the most useful one in this file):
#   The four log_step_* functions are nearly identical. Pick one and
#   record a macro that changes every "[step]" prefix to a colored
#   marker like "==>". Replay the macro across all four functions.
#
# Visual-block drill (Ctrl+v):
#   The four process_*_* functions all start with `echo "processing X"`.
#   Use Ctrl+v to select the column of `echo "processing` and
#   change it to `printf "[%s] processing %s\\n" "$(date)"` everywhere
#   at once. (Hint: c after Ctrl+v selection.)
#
# LSP / search drill:
#   Use <leader>fg "process_" to find every region function across the
#   project. Use <leader>cr (LSP rename) inside this file if a shell LSP
#   is attached, otherwise :%s/process_us_east/process_useast/g.
#
# Text-object drill:
#   Use ci{ inside any function body to wipe and rewrite the body.
#   Use ci" to change the inside of any double-quoted log message.
