#!/bin/bash

read -p "Enter your favorite fruit (apple/banana/mango): " fruit

case ${fruit,,} in
  apple)
    echo "Apples are red and crunchy."
    ;;
  banana)
    echo "Bananas are rich in potassium."
    ;;
  mango)
    echo "Mangoes are the king of fruits!"
    ;;
  *)
    echo "I don't know that fruit."
    ;;
esac
