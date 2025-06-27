library ieee;
use std.TextIO.all;

package std_definitions is
  type TSFIXED_WIDTH is record
    n_int   : integer;
    n_fract : integer;
  end record;

  procedure write_to_file(file_name : string; dw : string);
  
end package std_definitions;

package body std_definitions is
  procedure write_to_file(file_name : string;
                          dw        : string) is file data_file : text open append_mode is file_name;
                                               variable L : line;
  begin
    write(L, dw);
    writeline(data_file, L);
    file_close(data_file);
  end write_to_file;
end package body;
