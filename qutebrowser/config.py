# Search engine setup {{{
c.url.searchengines={
        "duckduckgo" : "https://www.duckduckgo.com/?q={}",
        "DEFAULT" : "https://www.google.com/search?&q={}",
        "google_images" : "https://www.google.com/search?&q={}&tbm=isch",
        "youtube" : "https://www.youtube.com/results/?search_query={}"
        }
#}}}
# Hide the Tab bar while the tabs aren't being switched. {{{
c.tabs.show = 'switching'
#}}}
# Hide the window decoration. This setting requires a restart on Wayland. {{{
# Type: Bool
c.window.hide_decoration = True
#}}}
# Page(s) to open at the start. {{{
# Type: List of FuzzyUrl, or FuzzyUrl
c.url.start_pages = ['https://www.google.com']
#}}}
# Bindings {{{
config.bind('K', 'tab-next')
config.bind('J', 'tab-prev')
#config.bind('zf', 'hint links spawn mpv {hint-url};; spawn yabai -m window --space  3;; spawn yabai -m space --focus next')
config.bind('yf', 'hint links yank')
config.bind('cn', 'spawn open -na qutebrowser')
#}}}
