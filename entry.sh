#!/bin/bash
set -e

# Copy the automated tests into a shared areaaccessible to maven
cp -R /var/www/html/test  /var/automated_tests/.

case "$1" in

 analysis) echo "Running static analysis"
          echo "Jenkins Job $2"
 ;;

 *) apache2-foreground
 ;;

esac
