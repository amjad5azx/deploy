#!/bin/bash
mkdir task1
cd task1
echo "This is done automatically"
touch pre.py
echo "This is inserted and done automatically"
git config credential.helper store
echo "https://amjad5azx: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@github.com" > ~/.git-credentials
git add .
git commit -m "Automatically done"
git push origin main
