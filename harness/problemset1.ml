(* author: Bob Muller, cribbed from previous assignments with unit
   testing approach adapted from UPenn CS120.
   date: September 5, 2014
   revised: September 5, 2015
   revised: August 29, 2016
   revised: August 29, 2017

   This is the harness code for problem set 1 of CS1103.
   In order to run this code, type the following commands
  in the unix shell:

  > make
  > ./problemset1
  
*)

open Color
open Image
open World
open Cs1103
open Assert

(* Problem 1:

   Write the first function helloWorld : unit -> string. When this
   function is called, it should simply return the string "Hello World!".

   In writing this function, you should replace the body of the helloWorld
   function below (i.e., the line starting with failwith) by a correct
   function body.
*)
let helloWorld () : string = failwith "Problem 1 not implemented."

let test () : bool =
  (helloWorld ()) = "Hello World!";;

Assert.run_test "hello world test" test;;

(* Problem 2:

   The Golden Ratio, sometimees known as phi, `is an important real
   number constant that was discovered by Greek mathematicians in the
   classical times. Phi is an irrational number 1.618... . It is
   computed by (1.0 + sqrt(5.0)) / 2.0.  Write the function
   golden : unit -> float such that a call golden() will compute this
   formula.

   As in problem 1, replace the failwith line below with your code.
*)
let golden () : float = failwith "Problem 2 not implemented."

let test () : bool =
  int_of_float(golden() *. 1000.) = 1618;;

Assert.run_test "golden ratio test" test;;

(* Problem 3:

   Write the function hypotenuse : float -> float -> float such that
   when given the base and height a right triangle, the function will
   return the length of the hypotenuse. Of course you should use our
   old friend the Pythagorean Theorem.
*)
let hypotenuse base height = failwith "Problem 3 not implemented."
let closeEnough a b = (abs_float (a -. b)) < 1e-6

let test () : bool =
  closeEnough (hypotenuse 1.0 1.0) (sqrt 2.0);;

Assert.run_test "hypotenuse test" test;;

(* Problem 4: THIS IS AN OPTIONAL PROBLEM.

   The following definition of yellowCircle displays a green
   circle. Modify the code so that the circle that it displays
   is yellow.
*)

let width = 600
let height = width
let radius = float (width / 2)

let draw () = Image.circle radius Color.green

let yellowCircle() : unit =
  World.big_bang ()
                 ~name:"Yellow Circle"
                 ~to_draw:draw
                 ~width:width
                 ~height:height

let test () : bool =
  yellowCircle() = ();;

Assert.run_test "yellowCircle test" test;;

print_endline "problemset1.ml: ran to completion";;
