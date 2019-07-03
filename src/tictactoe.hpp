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

    class TicTacToe{
    public:
        std::string to_string() const;
    };
}

#endif //TICTACTOE_HPP
