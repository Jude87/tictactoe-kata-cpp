#include <iostream>
#include "tictactoe.hpp"

int main(int argc, char* argv[]) {
    tictactoe::TicTacToe t;
    std::cout << "Tic-tac-toe\n";
    std::string mystring = "--X-OX-OX";
    std::cout << t.checkWin(mystring) << "\n";
    return 0;
}