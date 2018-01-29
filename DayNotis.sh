#!/bin/bash

dir=`pwd`
echo $dir

echo "Saving current crontab..."
crontab -l > $dir/crontab

echo "Creating DayNotis crontab..."
Rscript $dir/DayNotis.R

echo "Updating system crontab with DayNotis entries..."
crontab $dir/new_crontab

echo "File clean-up..."
rm $dir/crontab
rm $dir/DayNotis_crontab
rm $dir/new_crontab

echo "Done."