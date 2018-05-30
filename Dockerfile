FROM gitlab/gitlab-ce:10.5.2-ce.0

MAINTAINER AJ, <a.sivayoganathan>

USER root

# Copy in configuration files
COPY resources/gitlab.rb /etc/gitlab/

# Environment variables

RUN sudo gitlab-ctl reconfigure && gitlab-ctl restart
