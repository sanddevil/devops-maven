#!/bin/bash
set -e

case "$1" in

 testing) echo "Running automated testing"
          echo "Jenkins Job $2"
 ;;

 analysis) echo "Running static analysis"
          echo "Jenkins Job $2"
 ;;

 *) apache2-foreground
 ;;

esac
