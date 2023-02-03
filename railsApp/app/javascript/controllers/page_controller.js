import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="page"
export default class extends Controller {

  static targets = ["title"];

  connect() {}

  typeChange() {
    var type = this.titleTarget.value;

    var content = document.getElementById("content");
    var destination = document.getElementById("destination");
    var allContent = document.getElementsByClassName("allContent");

    if (type == "Basic Page"){
      content.style.display = "block";
    }else{
      content.style.display = "none";
    }

    if (type != "Basic Page"){
      for(let x in allContent){
        allContent[x].style.display = "none";
      }
      destination.style.display = "block";
    }else{
      for(let x in allContent){
        allContent[x].style.display = "block";
      }
    }
  }
}
