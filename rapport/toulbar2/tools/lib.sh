
declare -A name

separator="::"

name["p0"]=MC0;
name["p00"]=MC0-;
name["p3"]=MCa;
name["p4"]=MCb;
name["p44"]=MCb3;
name["p432"]=MCb;
name["p433"]=MCb;
name["p42"]=MCb1;
name["p43"]=MCb2;
name["p5"]=RE4a;
name["p6"]=RE4b;
name["p62"]=RE2-;
name["p63"]=RE22-;
name["p64"]=RE22;
name["p7"]=RE8a1;
name["p8"]=RE8b1;
name["p82"]=RE8b2;
name["p83"]=RE8b3;
name["p9"]=RE4c;
name["p11"]=RE8a2;
name["p112"]=RE8a3;
name["ph"]=H;
name["ph2"]=H-;
name["toulbar2"]=GMEC;



function tab_line {

local -a words=("${!1}")
local -i i=0 

local string="" 

for word in ${words[@]} 
do
    ((i++))

    string+=$word
    string+=$separator
    if [ $i -lt ${#words[@]} ]
    then
	string+="&"
	string+=$separator
    else
	string+="\\\\"
    fi
done ;
echo $string; 
}


function print_tab {

local -a tab=("${!1}")

echo \\hline
echo  ${tab[0]} | perl -pe "s/$separator/ /g" 
echo \\hline
for i in $(seq 1 ${#tab[@]})
do
    echo  ${tab[$i]} | perl -pe "s/$separator/ /g" 
done
echo \\hline
}

