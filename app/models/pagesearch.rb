class Pagesearch < ActiveRecord::Base
searchkick autocomplete: ['query']
end