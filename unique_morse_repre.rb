def unique_morse_representations(words)    
    morse ={
        a: ".-",
        b: "-...",
        c: "-.-.",
        d: "-..",
        e: ".",
        f: "..-.",
        g: "--.",
        h: "....",
        i: "..",
        j: ".---",
        k: "-.-",
        l: ".-..",  
        m: "--",
        n: "-.",
        o: "---",
        p: ".--.",
        q: "--.-",
        r: ".-.",
        s: "...",
        t: "-",
        u: "..-",
        v: "...-",
        w: ".--",
        x: "-..-",
        y: "-.--",
        z: "--.." 
        }
    
    
    hash = Hash.new(0)
    words.each do |word|
        str=""
        word.each_char do |ch|
           str+= morse[ch.to_sym] 
       end
       hash[str]+=1 
    end
    hash.length
end


words = ["gin", "zen", "gig", "msg"]
p unique_morse_representations(words)