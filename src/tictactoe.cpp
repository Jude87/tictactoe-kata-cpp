#include "tictactoe.hpp"
#include <sstream>

namespace tictactoe {

    bool always_true() {
        return true;
    }

    Position::Position(int x, int y) : _x{x}, _y{y} {}

    std::string Position::to_string() const {
        std::stringstream ss;
        ss << "[" << _x << "," << _y << "]";
        return ss.str();
    }

    std::string TicTacToe::to_string() const {
        std::string board;

        for (const auto &row : _board) {
            for (const auto &elem : row) {
                board += elem;
            }
            board += "\n";
        }

        return board;
    }

    void TicTacToe::play(std::string player, Position p) {
        _board[p._x][p._y] = player[0];
    }

    TicTacToe::TicTacToe() : _board(BOARD_SIZE, std::vector<char>(BOARD_SIZE, EMPTY_CELL)) {}

    const char TicTacToe::EMPTY_CELL{'-'};
    const int TicTacToe::BOARD_SIZE{3};

}