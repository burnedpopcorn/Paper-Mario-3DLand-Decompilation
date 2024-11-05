var i, j;
ini_open("PM3DL Save.ini")
ini_write_real("Map Coords", "Map X", global.Mapx)
ini_write_real("Map Coords", "Map Y", global.Mapy)
for (i = 0; i < 32; i += 1)
{
    ini_write_real("Completed Levels", ("Level " + (string(i + 1))), global.Level[i])
    for (j = 0; j < 3; j += 1)
        ini_write_real("Greenstars", ("Level " + (string(i + 1)) + " Star " + (string(j + 1))), global.Greenstars[j, i])
}
ini_write_real("Greenstars", "Total", global.Greenstarcount)
ini_close()
