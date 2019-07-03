#include "catch2/catch.hpp"
#include "tictactoe.hpp"
#include <iostream>

TEST_CASE("test_passing_dummy", "[tictactoe]") {
    REQUIRE(true == tictactoe::always_true());
}

TEST_CASE("test_can_create_position_class_instance_with_zero_zero", "[tictactoe]") {
    auto p = tictactoe::Position(0, 0);
    REQUIRE(p.to_string() == "[0,0]");
}

TEST_CASE("test_can_accept_other_coords", "[tictactoe]") {
    auto p = tictactoe::Position(1,2);
    std::cout << p.to_string() << std::endl;
    REQUIRE(p.to_string() == "[1,2]");
}