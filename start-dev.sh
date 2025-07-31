#!/bin/bash

echo "🔥 Starting Cakmak Game Development Servers..."

# Function to cleanup background processes on exit
cleanup() {
    echo "🛑 Stopping servers..."
    pkill -f "node.*server.js" || true
    pkill -f "react-scripts" || true
    exit 0
}

# Set up signal handlers
trap cleanup SIGINT SIGTERM

# Start backend server
echo "🚀 Starting backend server on port 5001..."
cd server && nohup node server.js > ../server.log 2>&1 &
BACKEND_PID=$!

# Wait a moment for backend to start
sleep 2

# Start frontend server
echo "🎨 Starting frontend server on port 3000..."
cd ./client && nohup npm start > ../client.log 2>&1 &
FRONTEND_PID=$!

echo ""
echo "✅ Both servers are starting..."
echo "📱 Frontend: http://localhost:3000"
echo "🔧 Backend:  http://localhost:5001"
echo ""
echo "📋 Logs:"
echo "   Backend:  tail -f server.log"
echo "   Frontend: tail -f client.log"
echo ""
echo "🛑 Press Ctrl+C to stop all servers"
echo ""

# Wait for user to stop
wait 