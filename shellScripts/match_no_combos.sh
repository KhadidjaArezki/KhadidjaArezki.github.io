#!/usr/bin/bash
listOfLetters=(a b c d e f g h i j k l m n o p q r s t u v w x y z);
for l1 in "${listOfLetters[@]}";do
	for l2 in "${listOfLetters[@]}";do
		combo=$(grep -Fx "${l1}${l2}" 'uniq_lst2ltrs');
		if [[ "$combo" ==  "" ]]
		then
			echo " ${l1}${l2}";
		fi
	done
done
