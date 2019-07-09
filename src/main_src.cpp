#include <iostream>
#include "tictactoe.hpp"

int main(int argc, char* argv[]) {

    tictactoe::TicTacToe t;
    bool gameStatus = true;
    std::string currentBoard;

    while(gameStatus){

        char moveInput[10];
        std::cout << "Enter move (e.g. X,0,1): ";

        std::cin.getline(moveInput,10);

        t.play(moveInput);
        currentBoard = t.to_string();
        std::cout << "++++++++++++++++++++++++++++++++++++++++++++++++++++++" << "\n";
        std::cout << currentBoard << "\n";
        std::cout << "++++++++++++++++++++++++++++++++++++++++++++++++++++++" << "\n";

        auto findWin = currentBoard.find("wins");
        auto findTie = currentBoard.find("Tie");

        if(findTie != std::string::npos || findWin != std::string::npos){
            gameStatus = false;
        }
    }

}