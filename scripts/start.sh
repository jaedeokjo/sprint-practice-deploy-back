#!/bin/bash
cd /home/ubuntu/sprint-practice-deploy-for04
export DATABASE_USER=$(aws ssm get-parameters --region us-east-2 --names DATABASE_USER --query Parameters[0].Value | sed 's/"//g')
export DATABASE_PASSWORD=$(aws ssm get-parameters --region us-east-2 --names DATABASE_PASSWORD --query Parameters[0].Value | sed 's/"//g')
export DATABASE_PORT=$(aws ssm get-parameters --region us-east-2 --names DATABASE_PORT --query Parameters[0].Value | sed 's/"//g')
export DATABASE_HOST=$(aws ssm get-parameters --region us-east-2 --names DATABASE_HOST --query Parameters[0].Value | sed 's/"//g')
/bin/bash -lc "pm2 start app.js"