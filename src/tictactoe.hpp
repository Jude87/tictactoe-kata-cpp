#ifndef TICTACTOE_HPP
#define TICTACTOE_HPP

#include <string>

namespace tictactoe {
    bool always_true();

    class Position{
    public:
        int _x, _y;
        Position(int x, int y);
        std::string to_string() const;
    };
}

#endif //TICTACTOE_HPP
