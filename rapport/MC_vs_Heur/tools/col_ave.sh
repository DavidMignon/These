#!/bin/bash

file=$1

col=$2

perl -lane "\$s+=\$F[$col]; END{print \$s/\$.} $file " 

