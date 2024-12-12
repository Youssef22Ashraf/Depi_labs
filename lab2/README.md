lab2 about sed and awk

lab2 answers:
sed:

1- sed '/lp/p' /etc/passwd
2- sed -n '3!p' /etc/passwd
3- sed '$d' /etc/passwd
4- sed '/lp/d' /etc/passwd
5- sed 's/lp/mylp/g' /etc/passwd

awk:

1- awk -F : '{print NF,$1,$5,$6}' /etc/passwd
2- awk -F : '{print NR, $1, $5, $6}' /etc/passwd
3- awk -F : '{ if($3>500) {print NR, $1, $5, $3}}' /etc/passwd
4-
