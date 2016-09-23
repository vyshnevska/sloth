# create a global "root" that works server-side (node: exports) and client-side (this/window)
unless root?
  root = exports ? this

# create app namespace
unless root.Sloth
  root.Sloth = {}