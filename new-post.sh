#!/bin/env bash
set -e
hugo new posts/$(date '+%Y-%m-%d').md
git add content/posts/$(date '+%Y-%m-%d').md
git commit -m "post: new post for $(date '+%Y-%m-%d')"
git push origin master

