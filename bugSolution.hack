function foo(x: int): int {
  return x + 1;
}

function bar(x: int): int {
  return foo(x) + 1;
}

function main(): void {
  echo bar(5);
}

This revised code explicitly states that foo and bar return ints.  This prevents the potential for runtime errors caused by implicit type conversion if these functions were ever modified to return other types.  While this example is simple, the importance of precise type annotations is crucial for larger Hack projects where these types of errors can be more difficult to track.