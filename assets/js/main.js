import "../../node_modules/bootstrap/dist/js/bootstrap.bundle.min.js";

//Smooth scroll
function scrollToSection(sectionId) {
    document.getElementById(sectionId).scrollIntoView({block: "end", behavior: 'smooth' });
}

//Tooltips
var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'))
var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
  return new bootstrap.Tooltip(tooltipTriggerEl)
})

