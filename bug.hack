function foo(x: int): int {
  return x + 1;
}

function bar(x: int): int {
  return foo(x) + 1;
}

function main(): void {
  echo bar(5);
}

This code has a subtle bug related to type inference in Hack.  While it seems correct, it could lead to unexpected behavior if the types are not precisely defined.
If `foo` or `bar` ever return something other than an integer (due to a later modification or addition to the code), the program would still compile but might yield unexpected results.  The compiler does not strictly check the type at all call sites for this example, and there is no type error if foo returned a float instead of an int.