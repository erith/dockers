FROM opensuse/leap:15.4

RUN zypper update -y
RUN zypper install -y libicu wget vim libfreetype6 libfontconfig1 net-tools ftp make gcc krb5 libopenssl1_0_0
RUN rpm --import https://packages.microsoft.com/keys/microsoft.asc
RUN wget https://packages.microsoft.com/config/opensuse/15/prod.repo
RUN mv prod.repo /etc/zypp/repos.d/microsoft-prod.repo
RUN chown root:root /etc/zypp/repos.d/microsoft-prod.repo

RUN zypper install -y dotnet-sdk-6.0