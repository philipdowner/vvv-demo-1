# Init script for AppPresser Demo
echo "====================================="
echo "Commencing {{siteName}} installation"
echo "====================================="

# Make a database, if we don't already have one
echo "Creating database {{dbName}} (if it's not already there)"
mysql -u root --password=root -e "CREATE DATABASE IF NOT EXISTS {{dbName}}"
mysql -u root --password=root -e "GRANT ALL PRIVILEGES ON {{dbName}}.* TO wp@localhost IDENTIFIED BY 'wp';"

# Download WordPress
if [ ! -d public_html ]
then
	echo "Installing WordPress using WP CLI"
	mkdir public_html
	cd public_html
	wp core download
	wp core config --dbname="{{dbName}}" --dbuser=wp --dbpass=wp --dbhost="localhost"
	wp core install --url={{siteDomain}} --title="{{siteName}}" --admin_user=admin --admin_password=password --admin_email={{wpAdminEmail}}
	cd ..
fi

# The Vagrant site setup script will restart Nginx for us
echo "====================================="
echo "Congrats! {{siteDomain}} site now installed"
echo "====================================="
