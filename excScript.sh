# replace Mansour with your name 
N=1
for n in $(seq 1 5)
do
echo "creating the folder NM$n with an input value of N=$N"
mkdir name${n}
sed -e "s/xxxx/${N}/" inputOrig.txt > input.txt
cd name${n}
cp ../input.txt ./
cd ../
N=$(( $N + $n ))
done
