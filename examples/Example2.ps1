# Example2.ps1
# This script demonstrates basic array usage and looping

# Define an array of numbers
$numbers = 1, 2, 3, 4, 5

# Loop through each number in the array
foreach ($number in $numbers) {
    # Calculate and display the square of each number
    $square = $number * $number
    Write-Host "Square of $number is $square"
}

# End of script
