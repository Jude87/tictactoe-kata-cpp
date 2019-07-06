#include <sstream>
#include <vector>
#include <string>
#include "tictactoe.hpp"

namespace tictactoe {

    bool always_true() {
        return true;
    }

    //Position class methods implementation
    Position::Position(int x, int y):_x{x},_y{y}{}

    std::string Position::to_string() const {
        std::stringstream ss;
        ss << "[" <<_x<< "," <<_y<< "]";
        return ss.str();
    }

    //TicTacToe class methods implementation

    TicTacToe::TicTacToe():_board{{'-','-','-'},{'-','-','-'},{'-','-','-'}}{}

    std::string TicTacToe::to_string() const{
        std::string board;

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

    std::vector<int> TicTacToe::filterPosition(std::string position){
        std::vector<int> pvalues;
        int streamed;

        for(int i = 1; i < position.length(); i++){
            if(position[i] != ','){
                std::stringstream str;
                str << position[i];
                str >> streamed;
                pvalues.push_back(streamed);
            }
        }

        return  pvalues;
    }

    void TicTacToe::play(std::string move){
        const char marker{move[0]};
        std::vector<int> move_elements = filterPosition(move);

        int xcoord = move_elements[0];
        int ycoord = move_elements[1];

        _board[xcoord][ycoord] = marker;
    }

}
