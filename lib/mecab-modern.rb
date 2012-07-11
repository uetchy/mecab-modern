require "MeCab"
require "kconv"

$LOAD_PATH.unshift(File.expand_path("../", __FILE__))
require "mecab-modern/version"

module MeCab
  class Tagger
    alias_method :parseToNode_org, :parseToNode
    private :parseToNode_org

    def parseToNode(*args)
      node = parseToNode_org(*args)
      nodes = []
      while node
        nodes.push(node)
        node = node.next
      end
      return nodes[1, nodes.size - 2]
    end
  end
  
  class Node
    alias_method :feature_org, :feature
    alias_method :surface_org, :surface
    private :feature_org
    private :surface_org
    
    def feature ; feature_org.toutf8 end
    def surface ; surface_org.toutf8 end
  end
end