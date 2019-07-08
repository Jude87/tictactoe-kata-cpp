#ifndef TICTACTOE_HPP
#define TICTACTOE_HPP

#include <string>

namespace tictactoe {
    bool always_true();

    class CellNotEmpty : public std::exception{};

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
        char _lastPlayer;
    public:
        const char EMPTY_POSITION = '-';
        TicTacToe();
        std::string to_string() const;
        std::vector<int> filterPosition(std::string);
        void play(std::string marker, Position p);
        void play(std::string move);
        void setLastPlayer(char);
        char getLastPlayer()const{return _lastPlayer;}
        std::string checkWin(std::string)const;
    };
    //class TicTacToe end
}

#endif //TICTACTOE_HPP
