# optionlists has moved to [mmtools repo](https://github.com/andreassommer/mmtools)

On July 2024, the optionlists repository was moved to the 
[mmtools (miscellaneous matlab tools) repo](https://github.com/andreassommer/mmtools)
and all functions have been prefixed by "ol" to avoid name clobberings.

There will be no further updates to the optionlists repository, 
but it will be kept online to not breach existing projects.

# optionlists

Matlab tools for handling name-value pairs in function calls:
  - querying arguments by name:     `getOption`
  - checking for present arguments: `hasOption`
  - generation of option lists:     `setOption`
  - removing from option lists:     `removeOption`
  - checking validity:              `isOptionlist`, `assertOptionlist` 

## Documentation

Documentation is provided inside the code and thus available using Matlab's help system via `help` and `doc`, e.g. `help getOption`.


# Example

Call: 
```matlab 
  val = f(a,b,'name','test','age',35,'numbers',{1,7,2})
```

Function code:
```matlab
function val = f(a,b,varargin)
    % a and b are normal position-dependent arguments.
    % Further arguments are (usually) optional and initialized by default values.
  
    % Set default values
    name    = 'defaultname';
    age     = 0;
    numbers = {1,2,3,4,5};
    
    % Query optional arguments:
    if hasOption(varargin, 'name'   ),    name = getOption(varargin, 'name'   );  end
    if hasOption(varargin, 'age'    ),     age = getOption(varargin, 'age'    );  end
    if hasOption(varargin, 'numbers'), numbers = getOption(varargin, 'numbers');  end
    
    % program code 
    % ...
end    
``` 
