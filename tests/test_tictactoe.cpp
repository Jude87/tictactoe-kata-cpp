#include "catch2/catch.hpp"
#include "tictactoe.hpp"

TEST_CASE("test_passing_dummy", "[tictactoe]") {
    REQUIRE(true == tictactoe::always_true());
}
