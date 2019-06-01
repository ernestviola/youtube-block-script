#!/bin/bash
FILE="/etc/hosts"
hour= date +%k

# hour="10"

# echo $hour

# if [ $hour -ge 18]; then
#     echo "hello"
# fi



if [[ "$hour" -le "18"  ]] ; then
#unproductive
    if grep -q "127.0.0.1 youtube.com" $FILE; then
        sed -i '' '/127.0.0.1 youtube.com/d' $FILE
        sed -i '' '/127.0.0.1 www.youtube.com/d' $FILE
        echo "Unproductive"
    fi
    echo "It's time for a break"
else
    if grep -q "127.0.0.1 youtube.com" $FILE; then
        echo ""
    else
        sed -i "" -e $'/127.0.0.1	localhost/a\\\n'"127.0.0.1 youtube.com" $FILE
        sed -i "" -e $'/127.0.0.1 youtube.com/a\\\n'"127.0.0.1 www.youtube.com" $FILE
        echo "Productive"
    fi
    echo "It's time to be productive"
fi


# fi
# productive

# if grep -q "127.0.0.1 youtube.com" $FILE; then
#     sed -i '' '/127.0.0.1 youtube.com/d' $FILE
#     sed -i '' '/127.0.0.1 www.youtube.com/d' $FILE
#     echo "Unproductive"
# else

#     sed -i "" -e $'/127.0.0.1	localhost/a\\\n'"127.0.0.1 youtube.com" $FILE
#     sed -i "" -e $'/127.0.0.1 youtube.com/a\\\n'"127.0.0.1 www.youtube.com" $FILE
#     echo "Productive"
# fi