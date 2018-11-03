student = ["Tim Jones", "Tom Smith", "Jim Campagno"]
collection = ["ruby", "javascript", "python", "objective-c"]

def my_collect(collection)
  newAr=[]
    i=0
    while i<collection.length
      newAr << yield(collection[i])
      i+=1
    end
  newAr
end

my_collect(collection)
do |lang|
  return lang.upcase
end

my_collect(student)
do |student|
  student.split(" ")[0]
end
