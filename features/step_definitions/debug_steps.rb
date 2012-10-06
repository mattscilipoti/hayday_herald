# Usage:
#   When Debug
#   When I enter the debugger
When /debug/i do
  debugger
end

# Pauses run of tests, letting you see the browser
# Only useful in @javascript specs
When /pause/i do
  print "Press Return to continue"
  STDIN.getc
end

# This is used to mark a Scenario as Pending.
# Usage:
#   Given PENDING: add reason here
When /^PENDING/i do
  pending
end

# Shows a snapshot of the page (in it's current state)
#  in your default browser
Then /show.+the page/i do
  save_and_open_page
end
