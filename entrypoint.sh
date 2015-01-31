#!/bin/bash
set -e
# /etc/lsb-base-logging.sh
[[ -s "/lib/lsb/init-functions" ]] && {
	. /lib/lsb/init-functions
}
log_action_msg "Preparing the Final Term build"; 
cmd="$1"; shift;
case "$cmd" in
	cmake)
		cd $SRC_DIR/build;
		execCommand=( $cmd .. "$@" )
		log_success_msg "Executing \"${execCommand[@]}\""
		set -x; exec "${execCommand[@]}"
		;;
	make)
		cd $SRC_DIR/build;
		execCommand=( $cmd "$@" )
		log_success_msg "Executing \"${execCommand[@]}\""
		set -x; exec "${execCommand[@]}"
		;;
	install)
		execCommand=( make "--directory=build" "install" )
		log_success_msg "Executing \"${execCommand[@]}\""
		set -x; exec "${execCommand[@]}"
		;;
	*)
		log_warning_msg 'Executing unknown command:' "$cmd";
		exec "$cmd" "${@}" 
		# exit $?
		# log_end_msg 4 'error: unknown command:' "$cmd"
		;;
esac
# exec "${@}"
exit $?