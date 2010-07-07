#!/usr/bin/env ruby

# read the piped email and get its contents

email = []
count = 0
# the 'standard' start of a signature
sig = "--"                      

ARGF.read.split("\n\n").each { |paragraph|

  # ignore the signature
  if paragraph =~ /^#{sig}/
    break
  end

  # ignore the header
  if count > 0
    email << paragraph + "\n\n" # add double new line as the single
                                # does not create paragraph separation
  end
  count += 1
}

# puts email

post = File.open("/tmp/result", "w+")
post.write email
