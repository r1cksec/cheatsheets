var1="str"

cat > /path/to/file  <<EOL
line 1, ${var1}
line 2, 
EOL

