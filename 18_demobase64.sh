echo "here is the initial file"
cat txt.txt
base64 txt.txt >txtbase64.txt
echo "here is the encoded file"
cat txtbase64.txt
echo "here is the decoded/restored file"
base64 -D txtbase64.txt


