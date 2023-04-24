#!/bin/bash
source ~/.bashrc
cd /home/ubuntu/sprint-practice-deploy-for04
node --version
npm --version
npm ls -g
pm2 start app.js