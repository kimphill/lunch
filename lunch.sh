echo -n Kim\'s version:
cat > lunch-places.txt << __EOF
Potbelly
Larry's Giant Subs
Jersey Mike's
Firehouse Subs
Chipotle
Freebirds
Torchy's
__EOF
LENGTH=`wc -l lunch-places.txt | cut -d\  -f 1`
WHICHONE=$(($RANDOM * $LENGTH / 32768 + 1))
head -$WHICHONE lunch-places.txt | tail -1
rm lunch-places.txt
echo -n jlinton\'s version:
curl -v http://www.restaurantgenerator.com/restaurantselect.html?q=5707%20Southwest%20Pkwy%20%23100%2C%20Austin%2C%20TX%2078735\&cheap=cheap 2>/dev/null |grep "infowindow\.setContent" |cut -d\> -f 3 | cut -d\< -f 1

