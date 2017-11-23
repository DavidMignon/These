#!/usr/bin/env python
#
# @author: Arvind A de Menezes Pereira
# @date:   2012-11-30
#
# @summary: Convert all files in a directory to jpg using convert from ImageMagick
#           and then create a movie using ffmpeg
# @usage:
# ./makeMovie.py -s png -t jpg -r myPngs -p myJpgs -m myMovie.mp4 -f 1 -b 1800
# Will read all the png files in directory myPngs and store them as jpg files in directory myJpgs

import os, sys, re
from optparse import OptionParser

parser = OptionParser()
parser.add_option( "-s", "--source-filetype", dest="source_filetype", help="Filetype to convert from.", metavar="SRC_FILETYPE")
parser.add_option( "-t", "--target-filetype", dest="target_filetype", help="Filetype to convert to.", metavar="DEST_FILETYPE" )
parser.add_option("-q", "--quiet", action="store_false", dest="verbose", default=True, help="don't print status messages to stdout")
parser.add_option( "-r", "--source-dir", dest = "source_dir", help="Directory to read files from" )
parser.add_option( "-p", "--target-dir", dest = "target_dir", help="Directory to write files to" )
parser.add_option("-o", "--target-filename", dest="target_filename", help="(Optional) filename of target files" )
parser.add_option("-m", "--target-moviename", dest="target_moviename", help="(Optional) movie filename for mp4 to be saved" )
parser.add_option("-f", "--target-framerate", dest="target_framerate", help="(Optional) defaults to 10 fps" )
parser.add_option("-b", "--target-bitrate", dest="target_bitrate", help="(Optional) defaults to 1800 bps" )

(options,args)=parser.parse_args()
if options.target_dir:
	try:
	    os.mkdir( options.target_dir )
	except:
	    pass

if options.source_filetype and options.target_filetype and options.target_filetype and options.source_dir and options.target_dir:
	print options.target_dir
	dir_list = os.listdir( options.source_dir )

	matchStr = '([a-zA-Z\_0-9\.]+)%s$'%(options.source_filetype)
	print matchStr
	i = 0
	for file in dir_list:
		if re.match( matchStr, file ):
			#print "Matched", file
			if options.target_filename:
				convCmd = 'convert %s/%s %s/%s%04d.%s'%(options.source_dir,file,options.target_dir,i,options.target_filename,i,options.target_filetype)
				print convCmd
				os.system( convCmd )
			else:
				convCmd = 'convert %s/%s %s/%04d.%s'%(options.source_dir,file, options.target_dir,i,options.target_filetype)
				print convCmd
				os.system( convCmd )

			i+=1
		else:
			print "Did not match ", file

if options.target_moviename:
	if options.target_framerate:
		frame_rate = int(options.target_framerate)
	else:
		frame_rate = 1
	if options.target_bitrate:
		bit_rate = int(options.target_bitrate)
	else:
		bit_rate = 1800
	print frame_rate, bit_rate
	print 'Now converting files from %s to an mp4 movie titled %s'%(options.target_dir, options.target_moviename)
	ffmpegCmd = 'ffmpeg -r %d -b %d -i %s/%%04d.jpg %s'%( frame_rate, bit_rate, options.target_dir, options.target_moviename )
	print ffmpegCmd
	os.system( ffmpegCmd )

