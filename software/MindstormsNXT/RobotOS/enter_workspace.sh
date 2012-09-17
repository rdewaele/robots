#!/bin/bash

# For bash users (and maybe other shells too!):
# Remember that running this script in a different shell (e.g. ./script.bash or
# bash script.bash or equivalent) will leave the present working dir of the
# user's shell unchanged. Instead, consider using 'source ./script.bash <args>',
# or the equivalent '. ./script.bash <args>'.

workspace=$1
setup_script=./setup.bash

cd $workspace \
	&& source $setup_script \
	&& echo "successfully changed ROS workspace to '$workspace'" \
	|| echo "failed changing ROS workspace to '$workspace'"
