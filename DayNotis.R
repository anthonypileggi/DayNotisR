# Run this script to create a notification schedule via crontab

# Create DayNotis crontab
DayNotisR::setup()

# Combine with existing crontab
DayNotisR::make_new_crontab()