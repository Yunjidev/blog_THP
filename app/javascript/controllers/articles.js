document.addEventListener("DOMContentLoaded", () => {
  const countButton = document.getElementById("countButton");

  countButton.addEventListener("click", () => {
    const articleCount = document.querySelectorAll(".article").length;
    alert(`Il y a ${articleCount} articles sur cette page !`);
  });
});
