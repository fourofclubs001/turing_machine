{
  "version": 1,
  "alphabet": ["0", "1", "_", "X"],
  "states": ["q0", "q_right_0", "q_right_1", "q_find_right_0", "q_find_right_1", "q_back", "q_accept", "q_reject"],
  "transitions": {
    "q0": {
      "0": { "nextState": "q_right_0", "write": "X", "move": "R" },
      "1": { "nextState": "q_right_1", "write": "X", "move": "R" },
      "X": { "nextState": "q0",        "write": "X", "move": "R" },
      "_": { "nextState": "q_accept",  "write": "_", "move": "R" }
    },
    "q_right_0": {
      "0": { "nextState": "q_right_0",      "write": "0", "move": "R" },
      "1": { "nextState": "q_right_0",      "write": "1", "move": "R" },
      "X": { "nextState": "q_right_0",      "write": "X", "move": "R" },
      "_": { "nextState": "q_find_right_0", "write": "_", "move": "L" }
    },
    "q_right_1": {
      "0": { "nextState": "q_right_1",      "write": "0", "move": "R" },
      "1": { "nextState": "q_right_1",      "write": "1", "move": "R" },
      "X": { "nextState": "q_right_1",      "write": "X", "move": "R" },
      "_": { "nextState": "q_find_right_1", "write": "_", "move": "L" }
    },
    "q_find_right_0": {
      "X": { "nextState": "q_find_right_0", "write": "X", "move": "L" },
      "0": { "nextState": "q_back",         "write": "X", "move": "L" },
      "1": { "nextState": "q_reject",       "write": "1", "move": "R" },
      "_": { "nextState": "q_accept",       "write": "_", "move": "R" }
    },
    "q_find_right_1": {
      "X": { "nextState": "q_find_right_1", "write": "X", "move": "L" },
      "0": { "nextState": "q_reject",       "write": "0", "move": "R" },
      "1": { "nextState": "q_back",         "write": "X", "move": "L" },
      "_": { "nextState": "q_accept",       "write": "_", "move": "R" }
    },
    "q_back": {
      "0": { "nextState": "q_back", "write": "0", "move": "L" },
      "1": { "nextState": "q_back", "write": "1", "move": "L" },
      "X": { "nextState": "q_back", "write": "X", "move": "L" },
      "_": { "nextState": "q0",    "write": "_", "move": "R" }
    }
  },
  "nodePositions": {
    "q0":             { "x": 120, "y": 225 },
    "q_right_0":      { "x": 270, "y": 110 },
    "q_right_1":      { "x": 270, "y": 340 },
    "q_find_right_0": { "x": 430, "y": 110 },
    "q_find_right_1": { "x": 430, "y": 340 },
    "q_back":         { "x": 560, "y": 225 },
    "q_accept":       { "x": 560, "y": 80  },
    "q_reject":       { "x": 560, "y": 370 }
  }
}
