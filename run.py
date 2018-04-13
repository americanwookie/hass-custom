import soco
import time
speakers = soco.discover()
for speaker in soco.discover():
  if( speaker.player_name == 'Bathroom' ):
    bathroom = speaker
  if( speaker.player_name == 'Bedroom' ):
    bedroom = speaker

if( not bedroom or not speaker ):
  raise Exception("Couldn't find all the speakers")

bedroom.unjoin()
time.sleep(360)
bathroom.join(bedroom)
