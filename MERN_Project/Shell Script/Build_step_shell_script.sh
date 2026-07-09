#!/bin/bash
echo "1. Moving into the MERN directory"
cd MERN_Project

echo "2. Stopping old containers"
docker compose down || true

echo "3. Building and starting new containers"
docker compose up -d -- build

echo "4. Checking running containers"
docker ps