#!/bin/bash
X3D="$(cat)"

echo 'g'
echo "$X3D" |
  grep "<Coordinate point='" |
  cut -d"'" -f2 |
  hawk -a 'splitEvery 3 . head' |
  sed 's/^/v /g'
echo "$X3D" |
  grep "<IndexedTriangleSet index='" |
  cut -d"'" -f2 |
  hawk -m 'map (+1) . map read . map B.unpack' |
  hawk -a 'splitEvery 3 . head' |
  sed 's/^/f /g'
