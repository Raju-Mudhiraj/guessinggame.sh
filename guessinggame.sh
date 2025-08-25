# Guessing Game Script

function guess_files {
    local file_count=$(ls -1 | wc -l)
    local guess=-1

    echo "Welcome to the Guessing Game!"
    echo "How many files are in the current directory?"

    while [[ $guess -ne $file_count ]]
    do
        read -p "Enter your guess: " guess
        if [[ $guess -lt $file_count ]]
        then
            echo "Too low! Try again."
        elif [[ $guess -gt $file_count ]]
        then
            echo "Too high! Try again."
        else
            echo "🎉 Congratulations! You guessed it right!"
        fi
    done
}

guess_files
