---
---
username = window.location.host.split( '.' )[0]
repository = window.location.pathname.split( '/' )[1]

# if localStorage.getItem("token")
#   token = localStorage.getItem("token")
#   github = new Github({
#     token: token,
#     auth: "oauth"
#   })
#   repo = github.getRepo(username, repository)
#   repo.read('master', 'config.json', (err, data) ->
#     config = data if !err)
#
# console.log config


octo = new Octokat({
  token: localStorage.getItem("token")
})

REPO = octo.repos(username+'/'+repository) # for brevity

# Option 3: using methods on the fetched Repository object
REPO.fetch()
.then (repo) ->
  # `repo` contains returned JSON and additional methods
  repo.issues(1).fetch()
  .then (issue) ->
    # `repo` contains returned JSON and additional methods
    issue.comments.fetch()
    .then (comments) ->
      console.log(comments)
