#include "tictactoe.hpp"
#include <sstream>

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

}
