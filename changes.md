Overview of the changes when compared to the scripting interface of Mathgl

    * call everything stl instead of pen, sch, ...
    * xtick function: lbl argument to xtick is not of the form
      "label1\nlabel2\nlabel3\n..." but instead an array 
      Array["label1", "label2", "label3", ...]
    * Whenever Mathgl expects a long string of the form
    "s1\ns2\ns3\n...", an array ["s1", "s2", "s3", ...] is used instead
    * added xrotate, yrotate, zrotate functions
    * writeframe instead of write
    * width and height as function names for get_width and get_height

    * axis&grid function: axis specifier dir not keyword argument
    * for colorbar, stl stays optional argument
    * set_obj_id, get_obj_id -> objectid
    * draw_reg -> drawregion
    * numthr -> numthreads
    * mark + textmark -> make radius r keyword
    * not completely consistent order of arguments with MathGL script, e.g.
    for function surf3
    * allow sometimes more argument types (e.g. val for surf3)
    * mgl script command 'axis' has two different use cases: 1) print the
    axes of the coordinate system. 2) set the coordinate system (e.g.
        logarithmic coordinates. Will use 'axis' for 1) and 'coords' for
    2), so the command 'coords' must be used, when the coordinate system is
    to be changed
    * the command `coords` has keyword arguments X Y Z C
    * added 'subgrid' option, which is just grid with a '!' appended to dir
