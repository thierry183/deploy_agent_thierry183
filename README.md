Explaining how to run the script and how to trigger the archive feature.

To run the attendance.sh script that automates the creation of the workspace, configures settings via the command line, and handles system signals for the students attendance tracker, we follow the following steps

step 1 after creating the script with all necessary codes, use this command chmod +x attendance.sh this will change the file to be executable

step 2 do ./attendance.sh to execute the attendance.sh file which is now executable

step 3 the script will give user prompts to follow starting with asking the user to choose the name for the parent directory

step 4 the script creates the parent directory using that name plus helpers and reports folders inside it

step 5 the script copies attendance_checker.py, assets.csv, config.json, and reports.log into their respective folders

step 6 the script asks the user do you choose to update the threshold? (yes/no)

step 7 if the user says yes, the script reads the warning threshold and failure threshold from the user

step 8 the script uses the syntax warning=${warning:-75} and failure=${failure:-50} to set default values if the user presses enter without typing anything

step 9 the script uses the sed command with the -i flag to perform an in-place edit of the config.json file, replacing the old threshold numbers with the new ones from the user

step 10 the script checks if python exists in the user's computer using command -v python3 --version

To trigger the archive feature the user has to click Ctrl+C then the trap function will trigger, creating an archive zip file to store all workings and deletion of the incomplete directory


