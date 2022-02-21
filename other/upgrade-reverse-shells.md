### python pty module
```
python -c 'import pty; pty.spawn("/bin/bash")'
python3 -c 'import pty; pty.spawn("/bin/bash")'
```

### tab completion (needs pty module)
```
CTRL + z
stty raw -echo
fg + Enter x 2
```

