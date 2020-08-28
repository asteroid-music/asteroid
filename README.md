# asteroid

## Installing on Raspberry Pi
To install on raspberry pi, you will have to install the repositories natively -- including MongoDB. Everything is packaged into one build script here:
```bash
./raspian_asteroid.sh
```

To start, you need two ttys:
```bash
# in both
source ~/astenv/bin/activate

# tty1
cd ~/asteroid-flask && python3 -m flask run -h 0.0.0.0

# tty2
cd ~/asteroid-player && python3 asteroid_player
```

Note, the current development build does not include the frontend.
