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

TEST_CASE("test_play_x_marker_uppper_left_using_string_input", "[tictactoe]") {
    auto t = tictactoe::TicTacToe();

    t.play("X,0,0");

    std::string expected_board;
    expected_board += "X--\n";
    expected_board += "---\n";
    expected_board += "---\n";

    REQUIRE(t.to_string() == expected_board);
}

TEST_CASE("test_detect_winner_across", "[tictactoe]") {
    tictactoe::TicTacToe t;

    t.play(std::string{"O"}, tictactoe::Position(0, 0));
    t.play(std::string{"X"}, tictactoe::Position(1, 0));
    t.play(std::string{"O"}, tictactoe::Position(0, 1));
    t.play(std::string{"X"}, tictactoe::Position(2, 0));
    t.play(std::string{"O"}, tictactoe::Position(0, 2));

    std::string expected_board;
    expected_board += "OOO\n";
    expected_board += "X--\n";
    expected_board += "X--\n";
    expected_board += "Player O wins!\n";

    REQUIRE(t.to_string() == expected_board);
}

TEST_CASE("test_detect_winner_vertically", "[tictactoe]") {
    tictactoe::TicTacToe t;

    t.play(std::string{"X"}, tictactoe::Position(0, 2));
    t.play(std::string{"O"}, tictactoe::Position(1, 1));
    t.play(std::string{"X"}, tictactoe::Position(1, 2));
    t.play(std::string{"O"}, tictactoe::Position(2, 1));
    t.play(std::string{"X"}, tictactoe::Position(2, 2));

    std::string expected_board;
    expected_board += "--X\n";
    expected_board += "-OX\n";
    expected_board += "-OX\n";
    expected_board += "Player X wins!\n";

    REQUIRE(t.to_string() == expected_board);
}

TEST_CASE("test_detect_winner_diagonally_left_to_right", "[tictactoe]") {
    tictactoe::TicTacToe t;

    t.play(std::string{"X"}, tictactoe::Position(0, 0));
    t.play(std::string{"O"}, tictactoe::Position(0, 1));
    t.play(std::string{"X"}, tictactoe::Position(1, 1));
    t.play(std::string{"O"}, tictactoe::Position(1, 2));
    t.play(std::string{"X"}, tictactoe::Position(2, 2));

    std::string expected_board;
    expected_board += "XO-\n";
    expected_board += "-XO\n";
    expected_board += "--X\n";
    expected_board += "Player X wins!\n";

    REQUIRE(t.to_string() == expected_board);
}