Explaining how to run the script and how to trigger the 
archive feature. 


To run the attendance.sh script that automates the creation of the workspace, 
configures settings via the command line, and handles system signals for the students attendance tracker,
we follow few steps

step 1 after creating  the script with all necessary codes, use this command "chmode +x attendance.sh" this will chanfe the file to be executable

step 2 do  . attendance.sh  to execute the attendance.sh file which is now executable

step 3 the script will give user prompts to follow starting with asking the user to choose the name for parent directory, the user will follow all the prompts until the script chech for the existance of python in the local system of the user




To trigger the archive feature the user have to  click Ctrl+C then there will be creation of archive zip file to store all workings and deletion of the incomplete directory
