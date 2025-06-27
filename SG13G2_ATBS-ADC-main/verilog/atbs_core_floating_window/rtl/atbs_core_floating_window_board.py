from siliconcompiler import Chip                    # import python package
from siliconcompiler.targets import ihp130_demo

chip = Chip('atbs_core_floating_window_board')      # create chip object
chip.use(ihp130_demo)                               # load a pre-defined target
chip.input('atbs_core_floating_window_board.v')     # set input sources
chip.clock('clock_i', period=125)                   # set constraints
chip.set('option', 'remote', True)                  # enable remote execution
chip.run()                                          # run compilation
chip.summary()                                      # print summary
chip.show()                                         # show layout