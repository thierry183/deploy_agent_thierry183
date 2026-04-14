#!/usr/bin/env bash
#creating a readme file
echo "project readme file" > README.md

# recording user input to name the parent directory
read -p "enter name of tracker: " input

# creating parent directory
mkdir -p " attendance_tracker_${input}"

# creating other directories but inside parent directory
mkdir -p "attendance_tracker_${input}/Helpers"
mkdir -p "attendance_tracker_${input}/reports"

#mafter creating files with the downloaded content i now copy them to their respective folders in the created directory architecture

cp attendance_checker.py "attendance_tracker_${input}/"
cp assets.csv "attendance_tracker_${input}/Helpers/"
cp config.json "attendance_tracker_${input}/Helpers/"
cp reports.log "attendance_tracker_${input}/reports/"

#asking user if they want to update the threshold
read -p "do you choose to update the threshold? (yes/no)" choice

# checking choice of user

if [ "$choice" = "yes" ]||[ "$choice" = "no"]
then
	echo "updating threshold.."
fi

#getting warning(default 75), and failure (default 50) threshold 
if 
read -p "Enter Warning threshold: " warning
read -p "Enter Failure threshold: " failure

#after the user click enter then use new threshold

warning=${warning:-75}
failure=${failure:-50}
then
echo "setting Warning : ${warning:-75}% , Failure : ${failure:-50}%"


#Using sed command to perform an "in-place" edit of the config.json file to reflect these new values. 

#starting with the easy way to get to the config.json so we only call $config_file instead of writing whole path

config_file="attendance_tracker_${input}/Helpers/config.json"

# Update the file with sed
    sed -i "s/\"warning\": [0-9]*/\"warning\": $warning/g" "$config_file"
    sed -i "s/\"failure\": [0-9]*/\"failure\": $failure/g" "$config_file"

echo "threshold updated well"

else

echo "Keeping default thresholds (Warning=75%, Failure=50%)"

fi

#function to handle ctrl +c  and creating the zip file for the current state of project
trap clean_up_and_exit SIGINT

clean_up_and_exit(){

echo " interupted, creating an archive!"
if [ -d "attendance_tracker_${input}" ]
then
	zip -r "archive.zip" "attendance_tracker_${input}"
	rm -rf "attendance_tracker_${input}"

	echo "archive created and incomplete directory removed successfully"
fi
exit 1

}


# now lets check if we have python 

if command -v python3 --version
then
echo "python exists in your computer"
else
	echo "no python found on your computer"
	fi

