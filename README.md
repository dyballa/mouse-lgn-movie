# mouse-lgn-movie

__August/2024 movie__: The `frames` folder contains all frames (7,560) in the movie. It is supposed to be diplayed at 60 fps, so the total time should be close to 126 seconds. Trial length 1.5 s / ISI length 2s.

__October/2024 movie__: The `frames` folder contains two subfolder: inst0 and inst1 (two separate movies containing different instances of the flows), each one with frames (10,080) in the movie. It is supposed to be diplayed at 60 fps, so the total time should be close to 168 seconds. Trial length 1.5 s / ISI length 2s.


`stim_frames.txt` is a list of all stimuli and their respective onset frame numbers.

`load_images.m` is a Matlab script to load all frames into a matlab array --> needs to be tested! there's also an option to create an .avi movie from the frames, in case that's more convenient (currently commented out).

Please ignore the other files; they contain information about how the movie was generated.

 
