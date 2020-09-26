# CISC 3140 lab5

## Notes: 
I made a folder called Logs for the Putty Logs and I uploaded the .txt because the putty logs were filled with random characters plus I felt that the .txt was more cleaner.

## Terminal Log Files/Task:

For Task 1, I had to select a column from a CSV file using the terminal with putty. I had to googled all the necessary commands. First, I used curl to download a zip archive 
containing a CSV file to a directory called Lab5/NLab5. Then I used unzip to extract the contents of the zip file. I navigated in terminal to the subdirectory created 
by unzipping the archive. Then I used the head command to read the first 10 lines of a CSV file that I selected.Then I selected the 2rd column in the CSV which contained 
movie IDS. I used cat to select the column and output the column into a text file. Then I use the sort command to reverse sort the text file numerically line-by-line. Finally, 
I used head again to show what the selected and sorted column looks like in the text file.

For Task 2, I had to create a shell script version of task 1. Making a shell script command was easy because the terminal already had a built in programe that help simiply making
a Shell Script called NANO. The Nano or Shell Script was just the repeat for Task 1 but made into a Script that would manually run the commands/data for me. Since Shell scripts 
are a great way to save time because the script could do the task for you. 


For Task 3, I had to do something creative in terminal. The objective was to gain more familiarity with terminal and use it for more purposes. I decided to use 
ImageMagick which was already installed on the terminal. Then I would curl and download multiply images/gif from a website which I would then convert/combine them.
I would then set a loop and a delay timer on when the next image should show up like a slowmotion image. This would produce a GIF image which would play all my images I have
downloaded like a slowmotion slide. (What a gif is). This is how I created my own gif using the terminal. 


