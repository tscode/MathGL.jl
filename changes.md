Overview of the changes when compared to the scripting interface of Mathgl

    * xtick function: lbl argument to xtick is not of the form
      "label1\nlabel2\nlabel3\n..." but instead an array 
      Array["label1", "label2", "label3", ...]
    * added xrotate, yrotate, zrotate functions
    * writeframe instead of write
    * width and height as function names for get_width and get_height
    * mgl_set_num_thr function will not get exported
    * some other functions will not get exported

    * axis&grid function: axis specifier dir not keyword argument
    * for colorbar, sch (or stl) stays optional argument
    * set_obj_id, get_obj_id -> objectid
    * draw_reg -> drawregion
    * numthr -> numthreads
    * mark + textmark -> make radius r keyword
    * call everything stl instead of pen, sch, ...
    * not completely consisten order of arguments with MathGL script, e.g.
    for function surf3
    * allow sometimes more argument types (e.g. val for surf3)
