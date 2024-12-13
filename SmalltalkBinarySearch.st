"Binary Search Implementation in Smalltalk"
"Concepts Demonstrated: Garbage Collection, Programming Paradigm (Dynamic OOP), Parameter Passing (Message Passing), and Scoping (Dynamic)."

| sortedArray target low high mid result | "Declare variables used in the program"

"Initialize a sorted array with sample values"
sortedArray := #(1 3 5 7 9 11 13 15 17 19). "Smalltalk uses dynamic typing, and arrays are objects."

"Set the target value to search for"
target := 13. "The element we want to find using binary search."

"Set initial values for binary search bounds"
low := 1. "Start index of the array (Smalltalk uses 1-based indexing)."
high := sortedArray size. "End index of the array."
result := nil. "Variable to store the search result; initially set to nil."

"Binary Search Logic"
"Loop until the low pointer exceeds the high pointer"
[low <= high] whileTrue: [
    "Calculate the middle index"
    mid := (low + high) // 2. "Integer division to find the midpoint."

    "Check if the middle element matches the target"
    (sortedArray at: mid) = target ifTrue: [
        "If found, store the index in 'result' and exit loop"
        result := mid.
        high := low - 1. "Break the loop by invalidating the bounds."
    ] ifFalse: [
        "Adjust search bounds based on comparison"
        (sortedArray at: mid) < target
            ifTrue: [low := mid + 1] "Move the lower bound up."
            ifFalse: [high := mid - 1]. "Move the upper bound down."
    ].
].

"Output the result to the Transcript (console)"
result isNil
    ifTrue: [Transcript show: 'Target not found'; cr] "If no match is found, print this message."
    ifFalse: [Transcript show: 'Target found at index ', result printString; cr]. "Print the index of the target if found."
