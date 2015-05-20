#!/bin/bash
battery=$(acpi -b | awk "{print $1}" | sed 's/\([^:]*\): \([^,]*\), \([0-9]*\)%.*/\3/')
echo $battery"%"
