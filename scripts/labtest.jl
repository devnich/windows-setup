# ----------------------------------
# Start test
# ----------------------------------
print("Starting Julia script test")

# -------------------------
# Import libraries
# -------------------------
using Pkg
Pkg.add("DataStructures")
using DataStructures

# ----------------------------------
# Configure files and directories
# ----------------------------------
files = ["pettigrew_letters_ORIGINAL.txt", "moby_dick.txt", "war_and_peace.txt"]

# ----------------------------------
# Text processing
# ----------------------------------
# Tokenize a file and get unique tokens
function tokenize(infile)
    # Get an array of file lines
    f = open(join(["../data", infile] , "/"), "r")
    text = readlines(f)
    close(f)

    # Segment tokens, do cleanup, and count them
    tokens = DefaultDict{String, Int64}(0)

    for line in text
        line_tokens = split(strip(lowercase(line)))
        for token in line_tokens
            stripped_token = strip(ispunct, token)
            tokens[stripped_token] += 1
        end
    end

    # Delete zero-width spaces from our count
    delete!(tokens, "")

    # Sort tokens by count
    sorted_tokens = sort(collect(tokens), by = x -> x.second, rev = true)

    return sorted_tokens
end

# Profile and collect stats
for infile in files
    println("Unique tokens from ", infile)
    sorted_tokens = @time tokenize(infile)
    println("Entries:", length(sorted_tokens))
    println("Top 10 tokens")
    for item in sorted_tokens[begin:10]
        println(item)
    end
    println()
end

# ----------------------------------
# End test
# ----------------------------------
print("Completed Julia script test")
