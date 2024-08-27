import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  index() {
    fetch("http://localhost:3000/").then((response) =>
      response.text()
    ).then(html => {
      const turboFrame = document.getElementById('homes-details');
      turboFrame.innerHTML = html; // Update the frame with the response
    })
  }

  hotwire_action() {
    fetch("http://localhost:3000/hotwire_action").then((response) =>
      response.json()
    ).then(data => {
      const turboFrame = document.getElementById('homes-details');
      turboFrame.innerHTML = '<h1>' + data.message + '</h1>' ; // Update the frame with the response
    })
  }
}