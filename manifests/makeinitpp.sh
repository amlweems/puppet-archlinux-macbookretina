#!/bin/bash
#
# script to re-make init.pp to include all other pp files in this directory
#

# space-separated list of classes we don't want to automatically include-
# either partially implemented classes, or highly specific ones that most
# people won't want.
BLACKLIST_CLASSES="laptop_mode_tools rvm nouveau"

pushd `dirname $0` > /dev/null

(
cat <<EOF
# Class: puppet-archlinux-macbookretina
#
# Manage includes of other puppet-archlinux-macbookretina classes
# top-level class for puppet-archlinux-macbookretina ecosystem
#
# WARNING - WARNING - this file is generated by makeinitpp.sh. 
#   any local changes will be overwritten.
#
# Parameters:
#
# Actions:
#   - Include other classes
#
# Requires:
#
# Sample Usage:
#
class puppet-archlinux-macbookretina {
EOF
) > init.pp

for i in `ls -1 *.pp | grep -v "init.pp" | awk -F \. '{print $1}'`
do
	# skip anything that isnt a class (defines, etc.)
	if ! grep "^class puppet-archlinux-macbookretina::$i" $i.pp > /dev/null
	then
		continue
	fi

	summary=`awk '{if (NR==3) print $0}' $i.pp`

	# skip blacklisted classes
	if [[ "$BLACKLIST_CLASSES" == *"$i"* ]]
	then
	    echo "  # BLACKLISTED in makeinitpp.sh: $i" >> init.pp
	    echo "  #  $summary" >> init.pp
	    echo "  #  include puppet-archlinux-macbookretina::$i" >> init.pp
	    echo >> init.pp
	else
	    echo "  $summary" >> init.pp
	    echo "  include puppet-archlinux-macbookretina::$i" >> init.pp
	    echo >> init.pp
	fi
done
echo "}" >> init.pp

popd > /dev/null
