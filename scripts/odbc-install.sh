# make odbc-install.sh executable
# chmod +x odbc-install.sh
# sudo ./odbc-install.sh
# https://learn.microsoft.com/en-us/sql/connect/odbc/linux-mac/installing-the-microsoft-odbc-driver-for-sql-server?view=sql-server-ver16&tabs=ubuntu18-install%2Calpine17-install%2Cdebian8-install%2Credhat7-13-install%2Crhel7-offline#18
# https://learn.microsoft.com/en-us/sql/connect/odbc/linux-mac/system-requirements?view=sql-server-ver16#operating-system-support

SUPPORTED_VERSIONS="18.04|20.04|22.04|23.04|24.04"
UBUNTU_VERSION=$(lsb_release -rs)

if ! echo "$UBUNTU_VERSION" | grep -qE "^($SUPPORTED_VERSIONS)$"; then
    echo "Ubuntu $UBUNTU_VERSION is not currently supported."
    exit 1
fi

curl https://packages.microsoft.com/keys/microsoft.asc | sudo tee /etc/apt/trusted.gpg.d/microsoft.asc

curl https://packages.microsoft.com/config/ubuntu/$UBUNTU_VERSION/prod.list | sudo tee /etc/apt/sources.list.d/mssql-release.list

sudo apt-get update
sudo ACCEPT_EULA=Y apt-get install -y msodbcsql18
# optional: for bcp and sqlcmd
sudo ACCEPT_EULA=Y apt-get install -y mssql-tools18
echo 'export PATH="$PATH:/opt/mssql-tools18/bin"' >> ~/.bashrc
source ~/.bashrc
# optional: for unixODBC development headers
sudo apt-get install -y unixodbc-dev