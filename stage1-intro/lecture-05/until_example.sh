#!/bin/bash

num=1
until [ $num -gt 3 ]; do
	echo "Value is : $num"
	((num++))
done	
