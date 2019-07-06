#ifndef TICTACTOE_HPP
#define TICTACTOE_HPP

#include <string>

namespace tictactoe {
    bool always_true();

    //class Position begin
    class Position{
    public:
        int _x, _y;
        Position(int x, int y);
        std::string to_string() const;
    };
    //class Position end

    //class TicTacToe begin
    class TicTacToe{
    private:
        using GameBoard = std::vector<std::vector<char>>;
        GameBoard _board;
    public:
        TicTacToe();
        std::string to_string() const;
        void play(std::string marker, Position p);
    };
    //class TicTacToe end
}

#endif //TICTACTOE_HPP
