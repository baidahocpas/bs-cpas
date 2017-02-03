#!/bin/bash

# Create .tmp directory
mkdir .tmp

# Copy bootstrap/scss into .tmp
cp -R bootstrap/scss .tmp

# Copy _custom.scss into .tmp/scss
cp _custom.scss .tmp/scss/_custom.scss

# Create dist
mkdir dist
sass .tmp/scss/bootstrap.scss dist/bootstrap.min.css --style compressed --precision=10
cp bootstrap/dist/js/bootstrap.min.js dist/bootstrap.min.js

# Remove .tmp directory
rm -r .tmp
