#!/bin/bash

TEST_DIR="test_assignments"
OUTPUT_DIR="Assignments"

rm -rf "$TEST_DIR" "$OUTPUT_DIR"  # Remove existing directories

mkdir -p "$TEST_DIR"

echo "Test Assignment 1 content, signed 01-17-2003" > "$TEST_DIR/assignment_01-17-2003.txt"
echo "Test Assignment 2 content, signed 05-22-2015" > "$TEST_DIR/assignment_05-22-2015.txt"
echo "Test Assignment 3 content, signed 07-09-2018" > "$TEST_DIR/assignment_07-09-2018.txt"
echo "Test Assignment 4 content, signed 12-25-2020" > "$TEST_DIR/assignment_12-25-2020.txt"

echo "Test Assignment without a date" > "$TEST_DIR/assignment_no_date.txt"

echo "Test files created in $TEST_DIR:"
ls -l "$TEST_DIR"

echo "Test setup complete!"

