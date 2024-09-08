<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Register</title>
<style>
body {
	align-items: center;
	background: linear-gradient(#141e30, #243b55);
	display: flex;
	justify-content: center;
	height: 100vh;
	margin: 0;
	background-image: url("bg3.jpg");
	background-size: cover;
}

.form {
	background-color: #15172b;
	border-radius: 20px;
	box-sizing: border-box;
	padding: 0 20px 20px 20px;
	width: 400px;
	padding-right: 30px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
	overflow: hidden;
}

.title {
	color: #eee;
	font-family: sans-serif;
	font-size: 36px;
	font-weight: 600;
	margin-top: 30px;
	text-align: center;
}

.subtitle {
	color: #eee;
	font-family: sans-serif;
	font-size: 16px;
	font-weight: 600;
	margin-top: 10px;
	text-align: center;
}

.input-container {
	position: relative;
	width: 100%;
	margin-top: 20px;
	padding: 5px;
}

.input {
	background-color: #303245;
	border-radius: 12px;
	border: 0;
	box-sizing: border-box;
	color: #eee;
	font-size: 18px;
	outline: 0;
	padding: 10px 20px;
	width: 100%;
	height: auto;
}

.cut {
	background-color: #15172b;
	border-radius: 10px;
	height: 20px;
	left: 20px;
	position: absolute;
	top: -20px;
	transition: transform 200ms;
	width: 76px;
}

input:focus ~ .cut, .input:not(:placeholder-shown) ~ .cut {
	transform: translateY(8px);
}

.placeholder {
	color: #65657b;
	font-family: sans-serif;
	left: 20px;
	line-height: 14px;
	pointer-events: none;
	position: absolute;
	transform-origin: 0 50%;
	transition: transform 200ms, color 200ms;
	top: 20px;
}

.input:focus ~ .placeholder, .input:not(:placeholder-shown) ~
	.placeholder {
	transform: translateY(-30px) translateX(10px) scale(0.75);
}

.input:focus ~ .placeholder {
	color: #dc2f55;
}

.submit {
	background: linear-gradient(to right, #16BFFD, #CB3066);
	border-radius: 12px;
	border: 0;
	box-sizing: border-box;
	color: #eee;
	cursor: pointer;
	font-size: 18px;
	margin-top: 30px;
	text-align: center;
	width: 100%;
	transition: all 0.4s ease;
	padding: 10px 0;
}

.submit:active {
	background-color: #06b;
}

.input-container.error .input {
	border: 2px solid rgb(206, 67, 67);
}

.input-container.success .input {
	border: 2px solid #0cc477;
}

.error {
	font-size: 14px;
	margin-top: 5px;
}
.error1 {
	font-size: 14px;
	margin-top: 5px;
}

.info-icon {
	position: absolute;
	right: 20px;
	top: 14px;
	font-size: 18px;
	color:#eee;
	cursor: pointer;
	border:2px white solid;
	width:15px;
	border-radius:60%;
}

.info-box {
	display: none;
	position: absolute;
	top: -50px;
	right: 0;
	background-color: #444;
	color: white;
	border-radius: 8px;
	padding: 5px;
	font-size: 12px;
	width: 200px;
	box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
	z-index: 1;
}

.info-icon:hover + .info-box {
	display: block;
}

.eye-icon {
	position: absolute;
	right: 10px;
	top: 14px;
	color: #eee;
	cursor: pointer;
}
</style>
</head>
<body>
	<div class="form">
		<form id="form" action="register" method="POST">
			<div class="title">Welcome</div>
			<div class="subtitle">Let's create your account!</div>
			<br>
			<div class="input-container">
				<input id="username" maxlength="50" class="input" type="text"
					name="username" placeholder=" " />
				<div class="cut"></div>
				<label for="username" class="placeholder">Username</label>
				<div class="error"></div>
			</div>
			<br>
			<div class="input-container">
				<input id="email" class="input" type="email" name="email"
					placeholder=" " />
				<div class="cut"></div>
				<label for="email" class="placeholder">Email</label>
				<div class="error"></div>
			</div>
			<br>
			<div class="input-container">
				<input id="password" class="input" maxlength="30" type="password"
					name="password" placeholder=" " onchange="passwordStrength()"/>
				<div class="cut"></div>
				
				<label for="password" class="placeholder">Password</label>
				
				<div class="error"></div>
				<span class="info-icon">&nbsp;i</span>
				<div class="info-box">Passwords should be at least 8 characters long, contain uppercase, lowercase, number,special characters and do not include your username.</div>
			</div>
			<br>
			<div class="input-container">
				<textarea id="address" class="input" maxlength="100" name="address"
					placeholder=" "></textarea>
				<div class="cut"></div>
				<label for="address" class="placeholder">Address</label>
				<div class="error"></div>
			</div>
			<br>
			<div class="input-container">
				<input id="contactNumber" class="input" maxlength="10" type="text"
					name="contactNumber" placeholder=" " />
				<div class="cut"></div>
				<label for="contactNumber" class="placeholder">Contact Number</label>
				<div class="error"></div>
			</div>

			<input type="submit" value="Register" class="submit">
		</form>
	</div>

	<script>
		function passwordStrength(){
			
			const password = document.querySelector('#password');
			const name = document.querySelector('#username');
			const pass=password.value;
			let success=true;
			if (pass.length<8) {
                success = false;
                setError(password, 'Password should be minimum of 8 characters');
            }
			else {
                setSuccess(password);
            }
			let a1=0,a2=0,a3=0,a4=0,a5=1;
			
			if(pass.includes(name.value)){
				a5=0;
			}
			for(let i=0;i<pass.length;i++){
				if(pass.charCodeAt(i)>64 && pass.charCodeAt(i)<91){
					a1=1;
				}
				else if(pass.charCodeAt(i)>96 && pass.charCodeAt(i)<123){	
					a2=1;
				}
				else if((pass.charCodeAt(i)>32 && pass.charCodeAt(i)<48) || (pass.charCodeAt(i)>57 && pass.charCodeAt(i)<65)){
					a3=1;
				}
				else if(pass.charCodeAt(i)>47 && pass.charCodeAt(i)<58){
					a4=1;
				}
			}
			let a=a1+a2+a3+a4+a5;
			
			if(a==1){
				passCheck(password, "Very Weak Password","red");
			}
			else if(a==2 || a==3){
				passCheck(password, "Weak Password","orange");
			}
			else if(a==4){
				passCheck(password, "Strong Password","yellow");
			}
			else{
				passCheck(password, "Very Strong Password","green");
			}
		}
		
        const form = document.querySelector('#form');
        const username = document.querySelector('#username');
        const email = document.querySelector('#email');
        const password = document.querySelector('#password');
        const address = document.querySelector('#address');
        const contactNumber = document.querySelector('#contactNumber');

        form.addEventListener('submit', (e) => {
            if (!validateInputs()) {
                e.preventDefault(); // Prevent submission if validation fails
            }
        });

        function validateInputs() {
            const usernameVal = username.value.trim();
            const emailVal = email.value.trim();
            const passwordVal = password.value.trim();
            const addressVal = address.value.trim();
            const contactNumberVal = contactNumber.value.trim();
            let success = true;

            if (usernameVal === '') {
                success = false;
                setError(username, 'Username is required');
            } else if (!validateName(usernameVal)) {
                success = false;
                setError(username, 'Please enter a valid name');
            } else {
                setSuccess(username);
            }

            if (emailVal === '') {
                success = false;
                setError(email, 'Email is required');
            } else if (!validateEmail(emailVal)) {
                success = false;
                setError(email, 'Please enter a valid email');
            } else {
                setSuccess(email);
            }

            if (passwordVal === '') {
                success = false;
                setError(password, 'Password is required');
            } 
			else if (passwordVal.length<8) {
                success = false;
                setError(password, 'Password should be minimum of 8 characters');
            }
			else {
                setSuccess(password);
            }

            if (addressVal === '') {
                success = false;
                setError(address, 'Address is required');
            } else {
                setSuccess(address);
            }

            if (contactNumberVal === '') {
                success = false;
                setError(contactNumber, 'Contact Number is required');
            } else if (!validatePhone(contactNumberVal)) {
                success = false;
                setError(contactNumber, 'Please enter a valid Contact Number');
            } else {
                setSuccess(contactNumber);
            }

            return success;
        }

		function passCheck(element, message,color) {
            const inputGroup = element.parentElement;
            const errorElement = inputGroup.querySelector('.error');
            errorElement.innerText = message;
            inputGroup.classList.add('error1');
			inputGroup.style.color=color;
            inputGroup.classList.remove('success');
        }

        function setError(element, message) {
            const inputGroup = element.parentElement;
            const errorElement = inputGroup.querySelector('.error');
            errorElement.innerText = message;
            inputGroup.classList.add('error');
			inputGroup.style.color="red";
            inputGroup.classList.remove('success');
        }

        function setSuccess(element) {
            const inputGroup = element.parentElement;
            const errorElement = inputGroup.querySelector('.error');
            errorElement.innerText = '';
            inputGroup.classList.add('success');
            inputGroup.classList.remove('error');
        }

        function validateEmail(email) {
            return /^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$/.test(email);
        }

        function validatePhone(phone) {
            return /^[0-9]{10}$/.test(phone);
        }

        function validateName(name) {
            return /^[a-zA-Z\s]+$/.test(name);
        }

		function togglePassword() {
			const password = document.getElementById('password');
			if (password.type === 'password') {
				password.type = 'text';
			} else {
				password.type = 'password';
			}
		}
    </script>
</body>
</html>
