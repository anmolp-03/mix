docker network create app-net   # Only first time

docker compose up -d           # services

cd nginx && docker compose up -d && cd ..
cd kong && docker compose up -d && cd ..


✅ Test

✅ Service direct:

http://localhost:7301/health
http://localhost:7302/health


✅ Through Nginx:

http://localhost/courses/health
http://localhost/enroll/health


✅ Through Kong:

http://localhost:8000/courses/health
http://localhost:8000/enroll/health

Push to GitHub & watch CI run ✅
git add .
git commit -m "Add CI workflow"
git push origin main


Then go to:
👉 GitHub → Actions → Microservices CI ✅


1. Install Dependencies: Open your terminal in the project root and run:
Bash
npm install
2. Run the Linter Manually: Execute the test script.
Bash
npm run lint
o Checkpoint: You should see no output, meaning no errors were found.
3. Run the Application Locally:
Bash
npm start
o Checkpoint: Open http://localhost:3000 in a browser. You should see "Hello from Node.js App!". Stop the server with Ctrl+C.
4. Build & Run the Docker Container Manually:
Bash
docker build -t my-manual-app .
docker run -p 3000:3000 -d my-manual-app
o Checkpoint: Refresh http://localhost:3000. It should still work.
o Cleanup: Stop the container using its ID from docker ps
o docker stop <CONTAINER_ID>