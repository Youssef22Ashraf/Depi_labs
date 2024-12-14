# lab2 about sed and awk

## lab2 answers:

### sed:

1- sed '/lp/p' /etc/passwd

2- sed -n '3!p' /etc/passwd

3- sed '$d' /etc/passwd

4- sed '/lp/d' /etc/passwd

5- sed 's/lp/mylp/g' /etc/passwd
______________________________________________________
### awk:

1- awk -F : '{print NF,$1,$5,$6}' /etc/passwd

2- awk -F : '{print NR, $1, $5, $6}' /etc/passwd

3- awk -F : '{ if($3>500) {print NR, $1, $5, $3}}' /etc/passwd

4- awk -F : '{ if($3==500) {print $1,$5,$3}}' /etc/passwd

5- awk -F : '{if(NR>=5 && NR<=15) {print NR,$0}}' /etc/passwd

6- awk -F : '{gsub(/lp/, "mylp"); print $0}' /etc/passwd

7- awk -F : 'BEGIN {max_uid=-1} {if($3>max_uid)} END{print $0}' /etc/passwd

8- awk -F : '{sum_uid+=$3} END{print sum_uid}' /etc/passwd
