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
        cd ../../
        fi
        

    	 
#AICP BUILD ENDS

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
        cd ../../../
        fi
        
	
#SPIRIT BUILD ENDS

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
        cd ../../../../
        fi
        

#AOGP Build Ends
	
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
        

#Nameless Build Ends

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
        cd ../../
        fi

#Carbon build Ends

    fi
done
	 
