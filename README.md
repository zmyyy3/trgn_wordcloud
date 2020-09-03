#trgn_wordcloud

#About the app:

 This app will summarize keywords from websites you selected, generate an image about these keywords, and update images once per day.

#Installation and usage:

1.  Use command "git clone https://github.com/zmyyy3/trgn_wordcloud" to clone this repository into your server.

2.  In this repository, "generate_wordcloud_from_file.sh" is the script that will create the images; "my_webpages.txt" is the text file contained the URLs, and you can changed the URL of websites in this text file; "my_current.txt" is the text file contained the content of the websites you selected. "current_pages" is a directory contained the html files of the websites you selected.


3.  Use command "cd ~/bin" to get into the bin directory, use command "git clone https://github.com/aaronsw/html2text" to install python the package which can convert files to text, move "html2text.py" to bin directory by using command "mv html2text.py ~/bin/.", use command "git clone https://github.com/amueller/word_cloud.git" to install the python package which can generate images.

4.  Use command "python -m pip install --user wordcloud" to make sure the packages work.

5.  Back to your home directory, create a new directory named "public_html", get into "public_html" directory, create a html file named "index.html", add codes of image in the "index.html".

6.  Use command "./generate_wordcloud_from_file.sh" to run the script "generate_wordcloud_from_file.sh", the image will be created by this script and upload to your site, and you can check the image in the directory "public_html". 

7.  Use command "crontab -e" to create a schedule that can automatically update the image in a certain period.

#Dependencies:

1.  Git 

2.  Python packages

3.  Cron

#Contact:
 
   mzhang11@usc.edu


