#!/bin/bash

## This small script creates the targets for make, then makes a request for each of them

find -L . \
-type f \
  -name "receta" \
| sed "s#receta#pastel#" \
| xargs make $@

