#ifndef TICTACTOE_HPP
#define TICTACTOE_HPP

#include <string>
#include <vector>

namespace tictactoe {
    bool always_true();

    class Position {
    public:
        Position(int x, int y);

        std::string to_string() const;

        int _x;
        int _y;
    };

    class TicTacToe {
    public:
        TicTacToe();
        void play(std::string player, Position p);
        std::string to_string() const;
    private:
        using GameBoard = std::vector<std::vector<char>>;
        GameBoard _board;

        static const int BOARD_SIZE;
        static const char EMPTY_CELL;

    };

}

#endif //TICTACTOE_HPP
