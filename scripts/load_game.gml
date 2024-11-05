var i, j;
ini_open("PM3DL Save.ini")
global.Mapx = ini_read_real("Map Coords", "Map X", -1)
global.Mapy = ini_read_real("Map Coords", "Map Y", -1)
for (i = 0; i < 32; i += 1)
{
    global.Level[i] = ini_read_real("Completed Levels", ("Level " + (string(i + 1))), 0)
    for (j = 0; j < 3; j += 1)
        global.Greenstars[j, i] = ini_read_real("Greenstars", ("Level " + (string(i + 1)) + " Star " + (string(j + 1))), 0)
}
global.Greenstarcount = ini_read_real("Greenstars", "Total", 0)
ini_close()
