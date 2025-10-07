# 🎮 Tic Tac Toe – Ruby CLI Edition

A two-player command-line Tic Tac Toe game built with Ruby. Play classic 3x3 Tic Tac Toe in your terminal with colorful, intuitive prompts and a helpful board guide.

## ✨ Features

- Two-player gameplay (Player vs Player)
- Clean, colorful command-line interface using the [`colorize`](https://github.com/fazibear/colorize) gem
- Validates player input (accepts only moves 1–9 on empty cells)
- Displays a position guide alongside the board for easy reference
- Detects win and draw conditions
- Simple modular structure

---

## 📸 Gameplay Preview

```
X | O | X   1 | 2 | 3
--+---+--   --+---+--
O | X | O   4 | 5 | 6
--+---+--   --+---+--
O | O | X   7 | 8 | 9
```

Player1 (X) wins!

---

## 🚀 Getting Started

### 1. Clone the Repository

```bash
git clone git@github.com:QUxPTA/TOP.git
cd ruby/tic_tac-toe
```

### 2. Install Dependencies

Ensure you have Ruby installed (ruby -v), then:`

```bash
gem install colorize
```

Or, if using Bundler:

```bash
bundle install
```

### 3. Run the Game

```bash
bundle exec ruby main.rb
```

## 🧠 How to Play

Players take turns placing their symbol (X or O) on the board.

Enter a number between 1–9 to place your symbol in the corresponding cell:

```
1 | 2 | 3
--+---+--
4 | 5 | 6
--+---+--
7 | 8 | 9
```

First to line up 3 symbols wins. If all spaces are filled without a winner, it’s a draw!

## 🧱 Built With

- Ruby
- colorize – Adds color to CLI output
