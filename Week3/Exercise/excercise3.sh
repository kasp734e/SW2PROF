for i in {1..20}
do
    output=""

    if (( i % 3 == 0 )); then
        output+="Fizz"
    fi

    if ((i % 5 == 0)); then
        output+="Buzz"
    fi

    if ((i % 3 != 0 && i % 5 != 0)); then
        output+=$i
    fi

    echo $output
done