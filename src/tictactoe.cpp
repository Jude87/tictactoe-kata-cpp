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

    TicTacToe::TicTacToe():_board{{'-','-','-'},{'-','-','-'},{'-','-','-'}},_lastPlayer{'#'}{}

    std::string TicTacToe::checkWin(std::string currentBoard)const{
        std::string xWins = "XXX";
        std::string oWins = "OOO";
        std::string case1 = currentBoard.substr(0,3);
        std::string case2 = currentBoard.substr(3,3);
        std::string case3 = currentBoard.substr(6,3);
        std::string case4, case5, case6, case7, case8;
        for(int i = 0; i < 9; i++){
            if(i == 0 || i == 3 || i == 6){
                case4 += currentBoard[i];
            }
            if(i == 1 || i == 4 || i == 7){
                case5 += currentBoard[i];
            }
            if(i == 2 || i == 5 || i == 8){
                case6 += currentBoard[i];
            }
            if(i == 0 || i == 4 || i == 8){
                case7 += currentBoard[i];
            }
            if(i == 2 || i == 4 || i == 6){
                case8 += currentBoard[i];
            }
        }

        if(case1 == xWins || case1 == oWins || case2 == xWins || case2 == oWins ||
        case3 == xWins || case3 == oWins || case4 == xWins || case4 == oWins ||
        case5 == xWins || case5 == oWins || case6 == xWins || case6 == oWins ||
        case7 == xWins || case7 == oWins || case8 == xWins || case8 == oWins){

            return "WIN_REGISTERED";

        }else{

            return "NO_WIN_REGISTERED";

        }
    }

    std::string TicTacToe::to_string() const{
        std::string board;

        for(const auto &boardRow : _board){
            for(const auto &posElem : boardRow){
                board += posElem;
            }
            board += "\n";
        }

        std::string winCheck = checkWin(board);

        if(winCheck == "WIN_REGISTERED"){
            char winner = getLastPlayer();
            board += "Player ";
            board.push_back(winner);
            board += " wins!\n";
        }

        return board;
    }

    void TicTacToe::play(std::string marker, Position p){

        setLastPlayer(marker[0]);
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
        setLastPlayer(move[0]);
        std::vector<int> move_elements = filterPosition(move);

        int xcoord = move_elements[0];
        int ycoord = move_elements[1];

        _board[xcoord][ycoord] = marker;
    }

    void TicTacToe::setLastPlayer(char lastPlayerMarker){
        _lastPlayer = lastPlayerMarker;
    }

}
