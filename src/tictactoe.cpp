#include <sstream>
#include <vector>
#include <string>
#include "tictactoe.hpp"

namespace tictactoe {

    bool always_true() {
        return true;
    }

    Position::Position(int x, int y):_x{x},_y{y}{}

    std::string Position::to_string() const {
        std::stringstream ss;
        ss << "[" <<_x<< "," <<_y<< "]";
        return ss.str();
    }

    std::string TicTacToe::to_string() const{
        std::string board;

        board += "---\n";
        board += "---\n";
        board += "---\n";

        for(const auto &boardRow : _board){
            for(const auto &posElem : boardRow){
                board += posElem;
            }
            board += "\n";
        }

        return board;
    }

    void TicTacToe::play(std::string marker, Position p){

        _board[p._x][p._y] = marker[0];

    }

}
