# Workflow Example

## Usage
The simplest approach to producing and plotting the data is to run
```julia
include("src/solution.jl"); Solution.main();
include("src/plotting.jl"); Plotting.main();
```
from the Julia REPL. The data and plots should show up in the `data` and `plots` directories, respectively.

From here it's straightforward enough to take a more granular approach. Simply call only the functions needed to create and plot the data you're interested in.
