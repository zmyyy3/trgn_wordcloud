#!/usr/bin/bash

echo "Successfully run for $USER";

if [ ! -d /home/mzhang11/assignments/trgn_assignment2/current_pages ]
then  
mkdir current_pages
fi

filename='my_webpages.txt'
n=1
while read line; do
# reading each line
 wget -O ./current_pages/file$n.html $line
n=$((n+1))
done < $filename


python ~/bin/html2text.py /home/mzhang11/assignments/trgn_assignment2/current_pages/file1.html > my_current.txt
python ~/bin/html2text.py /home/mzhang11/assignments/trgn_assignment2/current_pages/file2.html >> my_current.txt

~/.local/bin/wordcloud_cli --text my_current.txt --imagefile image.png

cp image.png ~/public_html
