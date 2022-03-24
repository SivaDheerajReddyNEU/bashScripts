#!/bin/bash


read -p "Please provide the assignment number: " a_no

echo "assignment no: "$a_no
file="/Users/dheeraj/Repo/Git/SEM_2/NETWORKS/bashScripts/config.properties"

if [ -f "$file" ]
then
    echo "$file found."
 . $file
fi

echo "firstname: "$firstName
echo "lastname: "$lastName
echo "nuid: "$nuid
echo "path used to create ZIP: "$path


cd $path
pwd
echo "inside path folder"
echo "deleting old folder ..."
rm -rf $firstName"_"$lastName"_"$nuid
echo "creating folder for zip:" $firstName"_"$lastName"_"$nuid
mkdir $firstName"_"$lastName"_"$nuid
cd $firstName"_"$lastName"_"$nuid
echo "cloning git repo ..."
git clone $gitRepo
git clone $gitRepo2
cd ..
echo "zipping ..."
zip -r $firstName"_"$lastName"_"$nuid"_a_"$a_no".zip" $firstName"_"$lastName"_"$nuid > /dev/null
mv $firstName"_"$lastName"_"$nuid"_a_"$a_no".zip" zip_folder
echo "zip completed ..."
pwd
