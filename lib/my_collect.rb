student = ["Tim Jones", "Tom Smith", "Jim Campagno"]
collection = ["ruby", "javascript", "python", "objective-c"]

def my_collect(collection)
  if block_given?
    newAr=[]
    i=0
    while i<collection.length
      yield(collection[i])
      i+=1
    end
    collection
  end
end

my_collect(collection)
do |item|
  return item
end
