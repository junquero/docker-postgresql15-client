#!/bin/bash

databaseInit() {
  echo "Running scripts in directory /init-scripts"
  if [ -d /init-scripts ]; then
    for file in /init-scripts/*.sh; do
      echo --- Executing "$file" ---
      bash -c "$file"
    done
  fi
}

databaseInit
