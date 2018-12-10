all: \
	install_or_update

install_or_update:
	mkdir -p ${ZSH_CUSTOM}/plugins/git-xavhan
	wget -O ${ZSH_CUSTOM}/plugins/git-xavhan/git-xavhan.plugin.zsh https://raw.githubusercontent.com/xavhan/git-xavhan/master/git-xavhan.plugin.zsh