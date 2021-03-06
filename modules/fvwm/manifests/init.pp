class fvwm {
package {
        ["workrave","msmtp","vim-puppet","reprepro","gitk","parallel","dsh","clusterssh","pssh","tsocks","rdesktop","orpie","evince","mtr-tiny","slock","qiv","lftp","xclip","most","gtk-theme-switch","gtk2-engines-oxygen","ssh-askpass","slim","wpasupplicant","acpi-support","keynav","fvwm","xfonts-terminus","xfonts-wqy","tmux","rxvt-unicode","ecryptfs-utils","p7zip-full","git-core","dmz-cursor-theme","gnupg-agent","ibus-sunpinyin","ibus","dbus-x11","dbus","redshift","vim","scrot","vifm"]:
        ensure => installed;
}
$username="hmy"

File {
	owner => hmy,
	group => hmy,
}

file {
	"/etc/slim.conf":
	source => "puppet:///modules/fvwm/slim.conf";

	"/usr/share/slim/themes/slim-minimal-master.zip":
	source => "puppet:///modules/fvwm/slim-minimal-master.zip";

	"/home/${username}/.fvwm2rc":
	source => "puppet:///modules/fvwm/fvwm2rc";

	"/home/${username}/.xsession":
	source => "puppet:///modules/fvwm/xsession";
	"/home/${username}/.Xresources":
	source => "puppet:///modules/fvwm/Xresources";

	"/home/${username}/.tmux.conf":
	source => "puppet:///modules/fvwm/tmux.conf";

	"/home/${username}/.fonts.conf":
	source => "puppet:///modules/fvwm/fonts.conf";
	"/home/${username}/.redshift.conf":
	source => "puppet:///modules/fvwm/redshift.conf";

	"/home/${username}/.bashrc":
	source => "puppet:///modules/fvwm/bashrc";

	"/etc/bash_completion.d/bash_complete.s":
	source => "puppet:///modules/fvwm/bash_complete.s";
	"/etc/apt/sources.list.d/google-chrome.list":
	source => "puppet:///modules/fvwm/google-chrome.list";
	}
}

