/*Função usada para ao marcar o checkbox todos ser marcado todos os check box abaixo dele, ou seja todos os checkbox do respectivo dia da semana



	@Author: Michel Oliveira - 2017
*/
window.onload = function() {
	document.getElementById("todosSM").onclick = function() {
	            var tab = document.getElementById("marcartodosM"); //formulário
	            //percorre todos os checkboxes e seta se está ou não checado, conforme o valor do check mandatório
	            var checks = tab.getElementsByTagName("input");
	            for(var i=0; i<checks.length; i++) {
	                var chk = checks[i];
	                if(chk.id == "segunda")
	                    chk.checked = this.checked;
	            }
	}

	document.getElementById("todosTM").onclick = function() {
	            var tab = document.getElementById("marcartodosM"); //formulário
	            //percorre todos os checkboxes e seta se está ou não checado, conforme o valor do check mandatório
	            var checks = tab.getElementsByTagName("input");
	            for(var i=0; i<checks.length; i++) {
	                var chk = checks[i];
	                if(chk.id == "terca")
	                    chk.checked = this.checked;
	            }
	}

	document.getElementById("todosQaM").onclick = function() {
	            var tab = document.getElementById("marcartodosM"); //formulário
	            //percorre todos os checkboxes e seta se está ou não checado, conforme o valor do check mandatório
	            var checks = tab.getElementsByTagName("input");
	            for(var i=0; i<checks.length; i++) {
	                var chk = checks[i];
	                if(chk.id == "quarta")
	                    chk.checked = this.checked;
	            }
	}

	document.getElementById("todosQiM").onclick = function() {
	            var tab = document.getElementById("marcartodosM"); //formulário
	            //percorre todos os checkboxes e seta se está ou não checado, conforme o valor do check mandatório
	            var checks = tab.getElementsByTagName("input");
	            for(var i=0; i<checks.length; i++) {
	                var chk = checks[i];
	                if(chk.id == "quinta")
	                    chk.checked = this.checked;
	            }
	}

	document.getElementById("todosSeM").onclick = function() {
	            var tab = document.getElementById("marcartodosM"); //formulário
	            //percorre todos os checkboxes e seta se está ou não checado, conforme o valor do check mandatório
	            var checks = tab.getElementsByTagName("input");
	            for(var i=0; i<checks.length; i++) {
	                var chk = checks[i];
	                if(chk.id == "sexta")
	                    chk.checked = this.checked;
	            }
	}

	document.getElementById("todosSaM").onclick = function() {
	            var tab = document.getElementById("marcartodosM"); //formulário
	            //percorre todos os checkboxes e seta se está ou não checado, conforme o valor do check mandatório
	            var checks = tab.getElementsByTagName("input");
	            for(var i=0; i<checks.length; i++) {
	                var chk = checks[i];
	                if(chk.id == "sabado")
	                    chk.checked = this.checked;
	            }
	}

	document.getElementById("todosSN").onclick = function() {
	            var tab = document.getElementById("marcartodosN"); //formulário
	            //percorre todos os checkboxes e seta se está ou não checado, conforme o valor do check mandatório
	            var checks = tab.getElementsByTagName("input");
	            for(var i=0; i<checks.length; i++) {
	                var chk = checks[i];
	                if(chk.id == "segunda")
	                    chk.checked = this.checked;
	            }
	}

	document.getElementById("todosTN").onclick = function() {
	            var tab = document.getElementById("marcartodosN"); //formulário
	            //percorre todos os checkboxes e seta se está ou não checado, conforme o valor do check mandatório
	            var checks = tab.getElementsByTagName("input");
	            for(var i=0; i<checks.length; i++) {
	                var chk = checks[i];
	                if(chk.id == "terca")
	                    chk.checked = this.checked;
	            }
	}

	document.getElementById("todosQaN").onclick = function() {
	            var tab = document.getElementById("marcartodosN"); //formulário
	            //percorre todos os checkboxes e seta se está ou não checado, conforme o valor do check mandatório
	            var checks = tab.getElementsByTagName("input");
	            for(var i=0; i<checks.length; i++) {
	                var chk = checks[i];
	                if(chk.id == "quarta")
	                    chk.checked = this.checked;
	            }
	}

	document.getElementById("todosQiN").onclick = function() {
	            var tab = document.getElementById("marcartodosN"); //formulário
	            //percorre todos os checkboxes e seta se está ou não checado, conforme o valor do check mandatório
	            var checks = tab.getElementsByTagName("input");
	            for(var i=0; i<checks.length; i++) {
	                var chk = checks[i];
	                if(chk.id == "quinta")
	                    chk.checked = this.checked;
	            }
	}

	document.getElementById("todosSeN").onclick = function() {
	            var tab = document.getElementById("marcartodosN"); //formulário
	            //percorre todos os checkboxes e seta se está ou não checado, conforme o valor do check mandatório
	            var checks = tab.getElementsByTagName("input");
	            for(var i=0; i<checks.length; i++) {
	                var chk = checks[i];
	                if(chk.id == "sexta")
	                    chk.checked = this.checked;
	            }
	}

	document.getElementById("todosSaN").onclick = function() {
	            var tab = document.getElementById("marcartodosN"); //formulário
	            //percorre todos os checkboxes e seta se está ou não checado, conforme o valor do check mandatório
	            var checks = tab.getElementsByTagName("input");
	            for(var i=0; i<checks.length; i++) {
	                var chk = checks[i];
	                if(chk.id == "sabado")
	                    chk.checked = this.checked;
	            }
	}             
}