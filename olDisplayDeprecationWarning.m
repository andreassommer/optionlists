function olDisplayDeprecationWarning()
% On July 2024, the optionlists repository was moved to the
% [mmtools (miscellaneous matlab tools) repo](https://github.com/andreassommer/mmtools)
% and all functions have been prefixed by "ol" to avoid name clobberings.
% 
% There will be no further updates to the optionlists repository,
% but it will be kept online to not breach existing projects.
   persistent olDeprecationWarningDisplayed
   if isempty(olDeprecationWarningDisplayed)
      warning('Optionlists has moved to mmtools (https://github.com/andreassommer/mmtools). Please update.');
      olDeprecationWarningDisplayed = true;
   end

end

