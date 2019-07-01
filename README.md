# TicTacToe kata<a name="tictactoe-kata"></a>

© 2019 Jacob Mossberg

## Contents<a name="contents----"></a>

* [Introduction](#introduction)
* [Folder structure](#folder-structure)
* [Run console game](#run-console-game)
* [Solution proposal](#solution-proposal)
    * [Run tests (solution proposal)](#run-tests-solution-proposal)
    * [Run console game (solution proposal)](#run-console-game-solution-proposal)
* [Coding kata](#coding-kata)
    * [Step 1](#step-1)
    * [Step 2](#step-2)
    * [Step 3](#step-3)
    * [Step 4](#step-4)
    * [Step 5](#step-5)
    * [Step 6](#step-6)
    * [Step 7](#step-7)
    * [Step 8](#step-8)
    * [Step 9](#step-9)
    * [Step 10](#step-10)
    * [Step 11](#step-11)
    * [Step 12](#step-12)
    * [Step 13](#step-13)

## Introduction<a name="introduction"></a>

The goal of this kata is to develop a class named `TicTacToe` that let us play the Tic-tac-toe game. Wikipedia has the following description of the game:

> Tic-tac-toe (American English), noughts and crosses (British English), or Xs and Os is a paper-and-pencil game for two players, X and O, who take turns marking the spaces in a 3×3 grid. The player who succeeds in placing three of their marks in a horizontal, vertical, or diagonal row wins the game. 

The players are typically denoted with `X` and `O` on the game board. A game of Tic-tac-toe can proceed like shown below.

We start with an empty board:

    ---
    ---
    ---
    
Player `X` puts a marker in the upper left corner:

    X--
    ---
    ---
    
Player `O` puts a marker in the upper right corner:

    X-O
    ---
    ---  

After some more iterations the game board looks like this:

    XXO
    -XX
    -OO

Player `O` makes a winning move by putting a marker in the lower left corner:

    XXO
    -XX
    OOO
    Player O wins!

## Folder structure<a name="folder-structure"></a>

* `3rdparty` contains the [Catch2](https://github.com/catchorg/Catch2) test frame work

* `solution` contains one possible solution to the kata. You can take a peek if you get stuck.

* `src` contains the code. Initially it contains a dummy function that alwas returns `true`.
  * Add new code to `src/tictactoe.hpp` and `src/tictactoe.cpp`.
  * The final console application is run from `src/main_src.cpp.`. You must add code to this file in the last step of the kata.
  
* `tests` contains the tests. Initially it contains a dummy test.
  * You should add new tests to `tests/test_tictactoe.cpp`

 ## Run tests

The following commands have been verified on Ubuntu. CMake version 3.5 or higher is required to build the tests.

1. Clone repository

        $ cd git
        $ git clone https://github.com/jmossberg/tictactoe-kata-cpp.git
        $ cd tictactoe-kata-cpp
        
1. Build

        $ mkdir build
        $ cd build
        $ cmake ..
        $ make
        
1. List available tests

        $ tests/tictactoe_tests -l
        
1. Run tests

        $ tests/tictactoe_tests
        
## Run console game<a name="run-console-game"></a>

1. Complete the clone and build steps in the previous section.
1. Run console game

        $ cd git/tictactoe-kata-cpp/build
        $ src/tictactoe        
        
## Solution proposal<a name="solution-proposal"></a>

There is a folder named `solution` that contains one possible solution for the kata.

### Run tests (solution proposal)<a name="run-tests-solution-proposal"></a>
        
1. Complete the clone and build steps in the previous section.
1. List available tests

        $ solution/tests/tictactoe_tests_solution -l
        
1. Run tests

        $ solution/tests/tictactoe_tests_solution        

### Run console game (solution proposal)<a name="run-console-game-solution-proposal"></a>

1. Complete the clone and build steps in the previous section.
1. Run console game

        $ cd git/tictactoe-kata-cpp/build
        $ solution/src/tictactoe_solution

## Coding kata<a name="coding-kata"></a>

Now we can start with the kata itself. Follow the steps below one by one to develop first develop the helper class `Position` and then the `TicTacToe` class incrementally. Take a peek in the `solution` folder if you get stuck.

### Step 1<a name="step-1"></a>

Let's start by developing a helper class named `Position` that can be used to specify a position on the game board using x- and y-coordinates.

        012 x-axis 
      0 ---
      1 ---
      2 ---
    y-axis 
    
Putting a `X` mark at `[x=1, y=0]`:

        012 x-axis
      0 -X-
      1 ---
      2 ---
    y-axis    

Add the following test to `test_tictactoe.cpp`:

    TEST_CASE("test_can_create_position_class_instance_with_zero_zero", "[tictactoe]") {
        auto p = tictactoe::Position(0, 0);
        REQUIRE(p.to_string() == "[0,0]");
    }        

Run the tests in `test_tictactoe.cpp` to make sure the new test is failing.

### Step 2<a name="step-2"></a>

Now let's make `test_can_create_position_class_instance_with_zero_zero` pass by adding a a class named `Position` to `tictactoe.hpp` within the `tictactoe` namespace.

    class Position {
    public:
        Position(int x, int y);
        std::string to_string() const;
    };

You must also include `<string>` in `tictactoe.hpp`.

And then add the following definitions to `tictactoe.cpp` within the `tictactoe` namespace:

    Position::Position(int x, int y) {}

    std::string Position::to_string() const {
        return std::string{"[0,0]"};
    } 

### Step 3<a name="step-3"></a>

Add a new test to verify that the `Position` class accepts other coordinate values than `0, 0`.

Code:

    auto p = tictactoe::Position(1,2)
    std::cout << p.to_string() << std::endl;
    
Output:

    [1,2] 
    
Make sure the test fail when you run it and then go ahead and fix the implementation of `Position` to make the test pass.

### Step 4<a name="step-4"></a>

Let's continue and start working on the class `TicTacToe`. We want the `TicTacToe` class to maintain an updated view of the game board that can be retrieved by running the `to_string()` method on an instance of the class. 

Add a test to verify that we can create an instance of `TicTacToe` and that it returns the following string representation of an empty board:

    TEST_CASE("test_create_tictactoe_with_empty_board", "[tictactoe]") {
        auto t = tictactoe::TicTacToe();
    
        std::string expected_board;
        expected_board += "---\n";
        expected_board += "---\n";
        expected_board += "---\n";
    
        REQUIRE(t.to_string() == expected_board);
    }
    
Make sure the test fails when you run it and then go ahead and create an initial implementation of `TicTacToe` to make the test pass.

Add the following to `tictactoe.hpp`:

    class TicTacToe {
    public:
        std::string to_string() const;
    };
    
And the following to `tictactoe.cpp`:

    std::string TicTacToe::to_string() const {
        std::string board;

        board += "---\n";
        board += "---\n";
        board += "---\n";

        return board;
    }

The test should now pass.

### Step 5<a name="step-5"></a>

The `TicTacToe` class shall implement a `play` method which accepts an argument set to `X` or `O` and also a position argument. Add a test to verify they following behavior:

    TEST_CASE("test_play_o_marker_uppper_left", "[tictactoe]") {
        auto t = tictactoe::TicTacToe();
    
        t.play(std::string{"O"}, tictactoe::Position(0, 0));
    
        std::string expected_board;
        expected_board += "O--\n";
        expected_board += "---\n";
        expected_board += "---\n";
    
        REQUIRE(t.to_string() == expected_board);
    }

You will have to change multiple things to make this test pass:

1. Come up with an internal representation of the board in this step. One alternative is to use a vector of vector of char:

        std::vector<std::vector<char>>;
    
    You could then create a [type alias](https://en.cppreference.com/w/cpp/language/type_alias) to save on the amount of text you need to write:
    
        using GameBoard = std::vector<std::vector<char>>;
        
1. Add a `play()` method to update the internal representation of the board when adding a player symbol to a specific position on the board.
1. Update the `to_string()` method to use the internal representation of the board when producing the string.

### Step 6<a name="step-6"></a>

It would be handy if the `TicTactoe` class implements an overload of the `play` method that accepts a string as input. This can be used later when running the Tic-tac-toe game in the console.

Add the following test:

    TEST_CASE("test_play_x_marker_uppper_left_using_string_input", "[tictactoe]") {
        auto t = tictactoe::TicTacToe();
    
        t.play("X,0,0");
    
        std::string expected_board;
        expected_board += "X--\n";
        expected_board += "---\n";
        expected_board += "---\n";
    
        REQUIRE(t.to_string() == expected_board);
    }
    
Now add the corresponding implementation to make it pass.

### Step 7<a name="step-7"></a>

We want the `TicTacToe` class to check if we have a winner across the board and print out the winner in its string representation. Add a test and corresponding implementation to produce the following behavior. 

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

### Step 8<a name="step-8"></a>

We also want the `TicTacToe` class to check if we have a winner vertically on the board and print out the winner in its string representation.

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

Go ahead and add a test to fix the above!

### Step 9<a name="step-9"></a>

Finally `TicTacToe` shall find winners both on left-to-right diagonal and right-to-left diagonal on the board and print out the winner in its string representation.

Add tests to check the diagonals and the corresponding implementation in `TicTacToe`.

### Step 10<a name="step-10"></a>

Now let's add some error handling to `TicTacToe`. We want to throw an exception if we try to play on the same position twice.

    TEST_CASE("test_play_same_cell_twice_throws_exception", "[tictactoe]") {
        tictactoe::TicTacToe t;
    
        t.play(std::string{"O"}, tictactoe::Position(1, 1));
    
        REQUIRE_THROWS_AS( t.play(std::string{"X"}, tictactoe::Position(1, 1)), tictactoe::CellNotEmpty );
    }

### Step 11<a name="step-11"></a>

We also want to throw an exception if the same player tries to play two times in a row.

### Step 12<a name="step-12"></a>

The `TicTacToe` class shall recognize a tie, i.e. when the board is full and there is no player with three marks in a row (up, down, across or diagonally).

    TEST_CASE("test_detect_tie", "[tictactoe]") {
        tictactoe::TicTacToe t;
    
        t.play(std::string{'O'}, tictactoe::Position(0, 0));
        t.play(std::string{'X'}, tictactoe::Position(0, 1));
        t.play(std::string{'O'}, tictactoe::Position(0, 2));
        t.play(std::string{'X'}, tictactoe::Position(1, 1));
        t.play(std::string{'O'}, tictactoe::Position(1, 0));
        t.play(std::string{'X'}, tictactoe::Position(1, 2));
        t.play(std::string{'O'}, tictactoe::Position(2, 1));
        t.play(std::string{'X'}, tictactoe::Position(2, 0));
        t.play(std::string{'O'}, tictactoe::Position(2, 2));
    
        std::string expected_board;
        expected_board += "OXO\n";
        expected_board += "OXX\n";
        expected_board += "XOO\n";
        expected_board += "Tie!\n";
    
        REQUIRE(t.to_string() == expected_board);
    }

### Step 13<a name="step-13"></a>

If you reached this far you can think about how to make use of your `TicTacToe` class in an interactive console application that let you and another person play tic-tac-toe against each other.

Running the application could look like this:

    tictactoe
    
    Board
    ---
    ---
    ---
    Enter move (e.g. X,0,1): X,0,0
    
    Board
    X--
    ---
    ---
    Enter move (e.g. X,0,1): O,0,1
    
    Board
    XO-
    ---
    ---
    Enter move (e.g. X,0,1): X,2,2
    
    Board
    XO-
    ---
    --X
    Enter move (e.g. X,0,1): O,1,1
    
    Board
    XO-
    -O-
    --X
    Enter move (e.g. X,0,1): X,1,0
    
    Board
    XO-
    XO-
    --X
    Enter move (e.g. X,0,1): O,2,1
    
    Board
    XO-
    XO-
    -OX
    Player O wins!

The console needs to implement a loop that does the following:

* Print current board
* Exit game if current board contains the sub string "wins"
* Exit game if the current board contains the sub string "Tie"
* Let the user enter a move in the form of `<player>,<x>,<y>`, e.g. X,0,1
* Feed the move into the `TicTacToe` play method 
