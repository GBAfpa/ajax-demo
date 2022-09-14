console.log("Hello world");

const btn = document.getElementById("btn-add-task");
const input = document.getElementById("task-name");

async function asyncAction() {
  try {
    const response = await fetch("action.php?taskname="+input.value);
    const actionJson = await response.json();
    if (actionJson["ok"] == 1) {
      addTask(input.value, actionJson["idtask"]);
    }
    else {
      document.body.innerHTML += "<div>On a un problème</div>";
    }
  }
  catch (error) {
    console.warn(error);
  }
}

function addTask(taskName, idtask) {
  document.getElementById("task-list").innerHTML += `<li id="task-${idtask}">${taskName}</li>`;
}

btn.addEventListener("click", function(event) {
  console.log(input.value);
  asyncAction();
});