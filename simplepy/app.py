import time
import os

# durée d'endormissement par défaut (en secondes)
duration = 5

if "SLEEP_DURATION" in os.environ:
  duration = int(os.environ["SLEEP_DURATION"])

while True:
  print("Simple script Python en boucle infinie...")
  time.sleep(duration) # le process s'endort n secondes
