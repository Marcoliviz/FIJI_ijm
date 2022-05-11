macro "Add scale bar for Optical Microscope images"
{
	dir_saving = getDirectory("Choose a Directory to save");
	dir_processing = getDirectory("Choose a Directory to proess");
	list = getFileList(dir_processing);
	for(i=0; i<list.length; i++)
	{
		open(list[i]);//open each image
		//Add scale bar
		//run("Set Scale...", "distance=156 known=100 unit=um global");//x5
		//run("Set Scale...", "distance=306 known=100 unit=um global");//x10
		//run("Set Scale...", "distance=314 known=50 unit=um global");//x20
		run("Set Scale...", "distance=315 known=20 unit=um global");//x50
		Name_str=getTitle; 
		//selectWindow("Name_str.jpg");
		//run("Scale Bar...", "width=200 height=30 font=60 color=White background=None location=[Lower Right] bold overlay");//x5
		//run("Scale Bar...", "width=100 height=30 font=60 color=black background=None location=[Lower Right] bold overlay");//x10
		//run("Scale Bar...", "width=50 height=30 font=60 color=black background=None location=[Lower Right] bold overlay");//x20
		run("Scale Bar...", "width=20 height=30 font=60 color=black background=None location=[Lower Right] bold overlay");//x50
		saveAs("Jpeg", dir_saving + Name_str);
		close();	
	}
}
