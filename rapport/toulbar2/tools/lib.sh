
declare -A name

separator="::"

name["p0"]=MC0;
name["p00"]=MC0-;
name["p3"]=MC3;
name["p4"]=MC43;
name["p44"]=MC4-;
name["p432"]=MC4;
name["p433"]=MC4-;
name["p42"]=MC42-;
name["p43"]=MC42;
name["p5"]=RE1;
name["p6"]=RE2;
name["p62"]=RE2-;
name["p63"]=RE22-;
name["p64"]=RE22;
name["p7"]=RE5;
name["p8"]=RE3;
name["p82"]=RE32;
name["p9"]=RE4;
name["p11"]=RE42;
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

