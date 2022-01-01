import glob
import os
import shutil

# source = "/mnt/c/Users/joffr/Downloads/test/source/"
# destination = "/mnt/c/Users/joffr/Downloads/test/dest/"
source = "/mnt/c/Users/joffr/Downloads/"
destination = "/mnt/y/Downloads/00_Watchfolder/"


# source = "/mnt/c/Users/joffr/Downloads/test"
#destination = "/mnt/y/Downloads/00_Watchfolder"

# Search files with .torrent extension in source directory
pattern = "*.torrent"
files = glob.glob(source + pattern)
i = 0


# move the files with txt extension
for file in files:
    print(files)
    print(file)
    # extract file name form file path
    file_name = os.path.basename(file)
    shutil.copy(file, destination + file_name)
    os.remove(file)
    print('Moved:', file)
    i+=1
i=str(i)
print(i + " new torrent(s) added.")
