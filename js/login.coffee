---
---

# Clear localStorage
localStorage.clear()

# Wait for token
document.getElementById("submit").addEventListener('click', (e) ->
  val = document.getElementById("token").value
  but = document.getElementById("submit")
  if val
    but.setAttribute("disabled", "true")
    localStorage.setItem("player.token", window.btoa(val))
    window.location = '/' + window.location.pathname.split( '/' )[1]
    return
)
