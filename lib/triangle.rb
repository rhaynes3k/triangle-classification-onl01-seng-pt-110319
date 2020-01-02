require 'pry'
class Triangle
  
    attr_accessor :s1, :s2, :s3
  
    def initialize(s1, s2, s3)
      @s1 = s1
      @s2 = s2
      @s3 = s3
    end
    
    def kind
      
      if  s1 <= 0 || s2 <= 0 || s3 <= 0 || s1 + s2 <= s3 || s2 + s3 <= s1 || s1 + s3 <= s2
        begin
          raise TriangleError
        rescue TriangleError => error
            puts error.message
          end
      elsif s1 == s2 && s2 == s3 && s1 == s3
          :equilateral
        elsif
          s1 == s2 || s2 == s3 || s1 == s3
            :isosceles
        elsif
          s1 != s2 && s2 != s3 && s1 != s3
            :scalene
  #binding.pry
      end
          #binding.pry
    end
        #binding.pry
    
    class TriangleError < StandardError
      def message
        "What up, Yo!? you must give tides to the Triangle class!"
      end
    end
end
