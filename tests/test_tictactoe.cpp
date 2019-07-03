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

TEST_CASE("test_create_tictactoe_with_empty_board", "[tictactoe]") {
    auto t = tictactoe::TicTacToe();

    std::string expected_board;
    expected_board += "---\n";
    expected_board += "---\n";
    expected_board += "---\n";

    REQUIRE(t.to_string() == expected_board);
}

TEST_CASE("test_play_o_marker_uppper_left", "[tictactoe]") {
    auto t = tictactoe::TicTacToe();

    t.play(std::string{"O"}, tictactoe::Position(0, 0));

    std::string expected_board;
    expected_board += "O--\n";
    expected_board += "---\n";
    expected_board += "---\n";

    REQUIRE(t.to_string() == expected_board);
}