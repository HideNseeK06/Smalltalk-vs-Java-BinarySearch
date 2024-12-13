import java.util.Arrays;

public class BinarySearchJava {
    public static void main(String[] args) {
        // Concept Demonstrations: Garbage Collection, Static Typing, Imperative Paradigm, and Parameter Passing

        // Initialize a sorted array for binary search
        int[] sortedArray = {1, 3, 5, 7, 9, 11, 13, 15, 17, 19};
        // Java uses static typing, so the type of the array must be declared (int[]).

        // Target value to search for
        int target = 13; // The element we want to find using binary search.

        // Initialize variables for binary search bounds
        int low = 0; // Start index of the array (0-based indexing).
        int high = sortedArray.length - 1; // End index of the array.
        int result = -1; // Variable to store the result (-1 indicates not found).

        // Binary Search Logic
        // Loop until the low pointer exceeds the high pointer
        while (low <= high) {
            // Calculate the middle index
            int mid = low + (high - low) / 2; 
            // Use (high - low) / 2 to prevent potential integer overflow.

            // Check if the middle element matches the target
            if (sortedArray[mid] == target) {
                result = mid; // Store the index in result
                break; // Exit the loop
            } else if (sortedArray[mid] < target) {
                low = mid + 1; // Narrow the search to the upper half
            } else {
                high = mid - 1; // Narrow the search to the lower half
            }
        }

        // Output the result
        if (result == -1) {
            System.out.println("Target not found"); // If no match is found, print this message.
        } else {
            System.out.println("Target found at index " + result); // Print the index of the target if found.
        }
    }
}
