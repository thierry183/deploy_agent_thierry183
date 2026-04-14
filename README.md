
RUNNING THE SCRIPT

In this project i was required to create a project factory script that automates the creation of the work space, configures settings via the command line, and handles sysytem signal for student attendance tracker

lets go through how to run this script

step 1 was to create the script itself and i named it attendance.sh
the script contains the commands that create the directory architecure as required, also has other commands that help the user to get fully automated workspace

step 2 here our script should be executable to make it happen we use command chmod +x then the script name 

step 3 is now to execute the script we can use . attendance.sh

step 4 the user will now be able to choose the name for the directory,
later on they will choose to update threshold and message will be displayed according to the choosen numbers where 75 is for  warning , and 50 for failure by default




ARCHIVE FEATURE TRIGGERING

here when ever the user press ctrl +c while the script is running the sysyem will trap this SIGINT signal and then it will create an archive as a  zip  file which will include all data to where the system ended and then later on incomplete directories will be removed to keep the workspace clean.




