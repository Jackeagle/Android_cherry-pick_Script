 #Script to Cherry-pick commits 
 
 #Copyright (C) 2014 Jackeagle
 
  #This program is free software: you can redistribute it and/or modify
  #it under the terms of the GNU General Public License as published by
  #the Free Software Foundation, either version 3 of the License, or
  #(at your option) any later version.
  
  #This program is distributed in the hope that it will be useful,
  #but WITHOUT ANY WARRANTY; without even the implied warranty of
  #MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
  #GNU General Public License for more details.
  
  #You should have received a copy of the GNU General Public License
  #along with this program. If not, see <http://www.gnu.org/licenses/>.


#!/bin/bash

echo -e "\e[91m*******************************************"
echo -e "* Welcome To Jackeagle Cherry-pick Script *"
echo -e "*******************************************"

OPTIONS="Andriod_Manifest
Frameworks_base
Packages_apps_Settings
Vendor_cm
Build
Quit"


PS3="Select a Repo to Cherry-pick  (1-6): "
select opt in $OPTIONS; 
do
    if [ "$opt" = "Quit" ]; then
     echo done
     exit
    elif [ "$opt" = "Andriod_Manifest" ]; then
        echo -e "\e[91m*********************************************"
	echo -e "*  Cherry-pick for Manifest is Commencing   *"
	echo -e "*			                     *"
   	echo -e "*********************************************"
        cd aogp/andriod
        git remote add cm https://github.com/CyanogenMod/android.git
        git fetch cm 
        echo -e "Please Enter Your cherry-pick Id:"
        read Id
        git cherry-pick $Id
        read -p "Any Errors Found In Cherry-pick $foo? [yn]" answer
        if [[ $answer = y ]] ; then
        git status
        elif [[ $answer = n ]] ; then
        git remote add origin https://github.com/AOGP/android.git
        git fetch origin
        git push -u origin HEAD:kitkat
        cd ../../
        fi
        

    	 


    elif [ "$opt" = "Frameworks_base" ]; then
        echo -e "\e[91m***************************************************"
	echo -e "*  Cherry-pick for Framework/base is Commencing   *"
	echo -e "*			                           *"
   	echo -e "***************************************************"
        cd aogp/frameworks/base
        git remote add cm https://github.com/CyanogenMod/android_frameworks_base.git
        git fetch cm 
        echo -e "Please Enter Your cherry-pick Id:"
        read Id
        git cherry-pick $Id
        read -p "Any Errors Found In Cherry-pick $foo? [yn]" answer
        if [[ $answer = y ]] ; then
        git status
        elif [[ $answer = n ]] ; then
        git remote add origin https://github.com/AOGP/android_frameworks_base.git
        git fetch origin
        git push -u origin HEAD:kitkat
        cd ../../../
        fi
        
	


    elif [ "$opt" = "Packages_apps_Settings" ]; then
        echo -e "\e[91m***********************************************************"
	echo -e "*  Cherry-pick for Packages/apps/Settings is Commencing   *"
	echo -e "*			                                   *"
   	echo -e "***********************************************************"
        cd aogp/packages/apps/Settings
        git remote add cm https://github.com/CyanogenMod/android_packages_apps_Settings.git
        git fetch cm 
        echo -e "Please Enter Your cherry-pick Id:"
        read Id
        git cherry-pick $Id
        read -p "Any Errors Found In Cherry-pick $foo? [yn]" answer
        if [[ $answer = y ]] ; then
        git status
        elif [[ $answer = n ]] ; then
        git remote add origin https://github.com/AOGP/android_packages_apps_Settings.git
        git fetch origin
        git push -u origin HEAD:kitkat
        cd ../../../../
        fi
        


	
    elif [ "$opt" = "Vendor_cm" ]; then
        echo -e "\e[91m**********************************************"
	echo -e "*  Cherry-pick for Vendor/cm is Commencing   *"
	echo -e "*			                      *"
   	echo -e "**********************************************"
        cd aogp/vendor/cm
        git remote add cm https://github.com/CyanogenMod/android_vendor_cm.git
        git fetch cm 
        echo -e "Please Enter Your cherry-pick Id:"
        read Id
        git cherry-pick $Id
        read -p "Any Errors Found In Cherry-pick $foo? [yn]" answer
        if [[ $answer = y ]] ; then
        git status
        elif [[ $answer = n ]] ; then
        git remote add origin https://github.com/AOGP/android_vendor_cm.git
        git fetch origin
        git push -u origin HEAD:kitkat
        cd ../../../
        fi
        



    elif [ "$opt" = "Build" ]; then
        echo -e "\e[91m**********************************************"
	echo -e "*  Cherry-pick for Build is Commencing       *"
	echo -e "*			                      *"
   	echo -e "**********************************************"
        cd aogp/build
        git remote add cm https://github.com/CyanogenMod/android_build.git
        git fetch cm 
        echo -e "Please Enter Your cherry-pick Id:"
        read Id
        git cherry-pick $Id
        read -p "Any Errors Found In Cherry-pick $foo? [yn]" answer
        if [[ $answer = y ]] ; then
        git status
        elif [[ $answer = n ]] ; then
        git remote add origin https://github.com/AOGP/android_build.git
        git fetch origin
        git push -u origin HEAD:kitkat
        cd ../../
        fi



    fi
done
	 
