FROM dsuite/alpine-base:latest

LABEL maintainer="Hexosse <hexosse@gmail.com>" \
      description="Minimal Alpine image with MySQLTunner." \
      vendor="docker-suite" \
      license="MIT"


RUN \
	# Print executed commands
	set -x \
    # Update repository indexes
    && apk update \
    # Install run dependencies
    && apk-install \
		perl \
		perl-doc \
    # Download mysqltuner
	&& curl -o /mysqltuner.pl https://raw.githubusercontent.com/major/MySQLTuner-perl/master/mysqltuner.pl \
	&& curl -o /basic_passwords.txt https://raw.githubusercontent.com/major/MySQLTuner-perl/master/basic_passwords.txt \
	&& curl -o /vulnerabilities.csv https://raw.githubusercontent.com/major/MySQLTuner-perl/master/vulnerabilities.csv \
	# Clear apk's cache
	&& apk-cleanup


ENTRYPOINT ["perl", "mysqltuner.pl"]