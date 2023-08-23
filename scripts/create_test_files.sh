#!/bin/bash

for i in {1..1000}; do 
cp test/test.dart  "test/with_json/test_${i}_test.dart";
cp test/test.dart  "test/without_json/test_${i}_test.dart";
done

