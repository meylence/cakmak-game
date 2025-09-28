# 🔥 Cakmak Game

A real-time multiplayer social interaction game where players ask secret questions, play rock-paper-scissors, and reveal or keep secrets!

## 🎮 Game Concept

**Cakmak Game** is a turn-based social interaction game for 4 or more players. Each round involves:

1. A player (asker) sends a secret question to another player (receiver)
2. The receiver thinks of someone in the group as the answer and gives the "object" to them
3. These two players (receiver + selected one) play **rock-paper-scissors**
4. Depending on the result, the secret question is either kept private or revealed to all players

## ✨ Features

- **Real-time multiplayer** using Socket.IO
- **Turn-based gameplay** with player management
- **Secret question system** with private messaging
- **Rock-paper-scissors mini-game** with real-time results
- **Room management** (create, join, leave)
- **Beautiful UI** with TailwindCSS
- **Responsive design** for all devices
- **Game state management** with automatic turn progression

## 🚀 Quick Start

### Prerequisites

- Node.js (v14 or higher)
- npm or yarn

### Installation

1. **Clone the repository**

```bash
git clone <repository-url>
cd cakmak
```

2. **Install dependencies**

```bash
# Install server dependencies
cd server
npm install

# Install client dependencies
cd ../client
npm install
```

3. **Start the development servers**

**Option 1: Use the startup script (recommended)**

```bash
./start-dev.sh
```

**Option 2: Start servers manually**

In the server directory:

```bash
cd server
npm run dev
```

In the client directory (new terminal):

```bash
cd client
npm start
```

4. **Open your browser**
   Navigate to `http://localhost:3000`

## 📁 Project Structure

```
cakmak/
├── server/                 # Backend server
│   ├── server.js          # Main server file with Socket.IO logic
│   ├── package.json       # Server dependencies
│   └── README.md         # Server documentation
├── client/                # Frontend React app
│   ├── src/
│   │   ├── components/   # React components
│   │   │   ├── NicknameInput.js
│   │   │   ├── RoomSelection.js
│   │   │   ├── GameRoom.js
│   │   │   ├── PlayerList.js
│   │   │   ├── GameActions.js
│   │   │   ├── MessageArea.js
│   │   │   └── RPSGame.js
│   │   ├── App.js        # Main app component
│   │   └── index.css     # TailwindCSS styles
│   └── package.json      # Client dependencies
└── README.md             # This file
```

## 🎯 Game Flow

1. **Player Setup**: Players enter nicknames and join rooms
2. **Room Creation**: Create or join existing rooms (4-8 players)
3. **Game Start**: When 4+ players are ready, start the game
4. **Turn-based Play**:
   - Current player asks a secret question to another player
   - Receiver selects someone as the answer
   - Receiver and selected player play rock-paper-scissors
   - If receiver wins: secret stays private
   - If receiver loses: secret is revealed to all
5. **Next Turn**: Next player becomes the asker

## 🔌 Socket.IO Events

### Client to Server

- `join-room`: Join a game room
- `start-game`: Start the game (requires 4+ players)
- `ask-question`: Send a secret question to another player
- `select-answer`: Select a player as the answer
- `rps-choice`: Make rock-paper-scissors choice
- `skip-question`: Skip current turn

### Server to Client

- `room-joined`: Confirmation of room join
- `player-list-update`: Updated player list and game state
- `game-started`: Game has started
- `question-received`: Secret question received (receiver only)
- `question-sent`: Question sent notification
- `rps-challenge`: RPS challenge notification
- `rps-start`: RPS round starting
- `rps-result`: RPS result and next turn
- `secret-revealed`: Secret question revealed to all
- `turn-skipped`: Turn skipped notification
- `error`: Error messages

## 🛠️ Technologies Used

### Backend

- **Node.js** - Runtime environment
- **Express.js** - Web framework
- **Socket.IO** - Real-time communication
- **CORS** - Cross-origin resource sharing

### Frontend

- **React.js** - UI framework
- **Socket.IO-client** - Real-time client
- **TailwindCSS** - Styling framework
- **Responsive Design** - Mobile-first approach

## 🎨 UI Components

- **NicknameInput**: Initial player setup
- **RoomSelection**: Create/join rooms with room list
- **GameRoom**: Main game interface
- **PlayerList**: Display all players with turn indicators
- **GameActions**: Turn-based actions (ask questions, select answers)
- **MessageArea**: Real-time game messages
- **RPSGame**: Rock-paper-scissors mini-game modal

## 🚀 Deployment

### Development

```bash
# Server (port 5001)
cd server && npm run dev

# Client (port 3000)
cd client && npm start
```

### Production

```bash
# Build client
cd client && npm run build

# Start server (serves built client)
cd server && npm start
```

## 🎮 How to Play

1. **Enter your nickname** and continue
2. **Create a room** or join an existing one
3. **Wait for 4+ players** to join
4. **Start the game** when ready
5. **On your turn**:
   - Ask a secret question to another player
   - Or skip your turn
6. **If you receive a question**:
   - Read the secret question
   - Select someone as the answer
7. **If you're selected as the answer**:
   - Play rock-paper-scissors with the receiver
8. **Watch the results**:
   - If receiver wins: secret stays private
   - If receiver loses: secret is revealed to all

## 🔧 Configuration

### Environment Variables

Create a `.env` file in the server directory:

```
PORT=5000
MONGODB_URI=mongodb://localhost:27017/cakmak-game
NODE_ENV=development
```

### Customization

- Modify colors in `client/tailwind.config.js`
- Update game rules in `server/server.js`
- Add new features in the respective component files

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## 📝 License

This project is licensed under the ISC License.

## 🎯 Future Features

- [ ] MongoDB integration for game history
- [ ] Timer for each turn (30 seconds)
- [ ] Skip rule (once per game per player)
- [ ] Sound effects and animations
- [ ] Private chat between players
- [ ] Game statistics and leaderboards
- [ ] Mobile app version

---

**Enjoy playing Cakmak Game! 🔥**
