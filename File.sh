#!/bin/bash

while true;do
        clear
        echo "File Management Menu"
        echo "1. Create File."
        echo "2. Delete File."
        echo "3. Rename the File."
        echo "4. Copy the File."
        echo "5. Display File contents."
        echo "6. Edit file."
        echo "7. Exit"
        read -p "Enter choice: " choice


                case $choice in
                        1)read -p "Enter Filename: " filename;sudo touch "$filename";echo "$filename File is created"; ls -l --color=yes|grep "$filename";;
                        2)ls -l;read -p "Enter Filename that you want to delete: " filename;sudo rm "$filename"; echo "$filename File is deleted";ls -l |grep "$filename";;
                        3)read -p "Enter Oldname: " oldname;ls -l |grep "$oldname"; read -p "Enter newname: " newname;sudo mv "$oldname" "$newname"; ls -l;ls -l |grep "$newname";;
                        4)read -p "Enter Filename that you want to copy: " filename; read -p "Enter the copyed filename: " newfile ;ls -l | grep "$newfile";sudo cp "$filename" "$newfile";ls -l;;
                        5)ls -l;read -p "Enter Filename  which you want to display: " filename; cat "$filename";;
                        6)ls -l;read -p "Enter filename which you want to edit: " edit; vim "$edit";;
                        7)exit 0;;

                esac
                        read -p "Enter to continue..."
        done



