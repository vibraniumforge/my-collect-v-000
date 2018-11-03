student = ["Tim Jones", "Tom Smith", "Jim Campagno"]
collection = ["ruby", "javascript", "python", "objective-c"]

def my_collect(collection)
  if block_given?
    newAr=[]
    i=0
    while i<collection.length
      newAr << yield(collection[i])
      i+=1
    end
    newAr
  end
end

my_collect(collection)
do |item|
  return item
end
