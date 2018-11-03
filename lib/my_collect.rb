
def my_collect(collection)
  i=0
  while i<collection.length
    yield(collection[i])
    i+=1
  end
end

my_collect(collection)
do |item|
  return item
end