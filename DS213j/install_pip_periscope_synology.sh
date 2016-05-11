#!/bin/sh
# Install periscope to Synology NAS 
# Alexandre Espinosa Menor <aemenor@gmail.com>

echo "Checking pip path..."
which pip
if [ $? = 1 ]; then
        echo "Installing pip..."
        # curl -k https://raw.githubusercontent.com/pypa/pip/master/contrib/get-pip.py | python
        curl -k https://bootstrap.pypa.io/get-pip.py | python
fi


echo "Checking BeautifulSoup..."
pip show BeautifulSoup
if [ $? = 1 ]; then
        echo "Install BeautifulSoup (to install periscope)..."
        pip install BeautifulSoup
fi

echo "Checking periscope path..."
which periscope
if [ $? = 1 ]; then
        echo "Install periscope..."
        pip install periscope

fi

echo "Checking $HOME/.config dir..."
ls "$HOME/.config"
if [ $? = 1 ]; then
        echo "Creating $HOME/.config"
        mkdir "$HOME/.config"
fi

echo "Done"
