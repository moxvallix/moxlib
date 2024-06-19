# Remove scheduled reset as un-necessary

schedule clear moxlib:api/tui/reset
data modify storage moxlib:tui/private lock set value false