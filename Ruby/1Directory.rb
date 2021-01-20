# module to verify wheter the file name containt the symbols or not
module FilesystemObject
    def isValid?(fileName)
        fileName =~ /^(?!.*[|&<>\/\\:]).*$/ 
    end
end

module TreeNode
    # bfsprint = traversal then print
    def bfsprint
        return nil if name.nil?
        subdirectoires.each{|node| print node.name + ", "}
        # do recursive 
        subdirectoires.each{|node| node.bfsprint()}
    end

    # only traversal
    def bfs
        subdirectoires.each{|node| yield node.name}
        # do recursive
        subdirectoires.each{|node| node.bfs() {|x| yield x}}
    end
end

class Directory

    # include module
    include FilesystemObject
    include TreeNode
    
    # initialize @name and @subdirectories
    attr_accessor:name
    attr_accessor:subdirectoires

    def initialize(name)
        
        @name = name
        @subdirectoires = []
    end
    
end

# create new tree named documents
documents = Directory.new("Documents")
documents.subdirectoires << Directory.new("<Private>")
documents.subdirectoires << Directory.new("Work")
documents.subdirectoires[0].subdirectoires << Directory.new("Images")
documents.subdirectoires[0].subdirectoires << Directory.new("Video")
documents.subdirectoires[1].subdirectoires << Directory.new("Scret")
documents.subdirectoires[1].subdirectoires << Directory.new("Research")
documents.subdirectoires[1].subdirectoires << Directory.new("Teaching")


puts ("Print all non-root tree")
documents.bfsprint()
puts()
documents.bfs(){|node| print node.to_s + ", "}

puts ("\n\nPrint all valid directory name")
print (documents.name + ", ") if documents.isValid?(documents.name)
documents.bfs(){|node| print node.to_s + ", " if documents.isValid?(node)} 