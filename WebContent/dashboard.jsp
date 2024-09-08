

<!DOCTYPE html>
<html>
<head>
<title>Dashboard</title>
<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	background-color: #1E201E;
}

.navbar {
	/* background-color: transparent;
	display: flex;
	justify-content: space-between;
	align-items: center; */
	/* padding:0px 30px;
	height: 70px;
	
	z-index: 1;
	border-bottom: none;*/
	display: inline-block;
	margin-left: -180px;
	margin-top: -48px;
	

}
.navbar h1{
	font-family:Georgia, 'Times New Roman', Times, serif;
	/* margin-top:25px; */
	font-size:34px;
	margin-bottom: -30px;
	color:#f4f4f4;
	/* text-shadow:4px 0 #45a049 ,-4px 0 #45a049 ,0 4px #45a049,0-4px #45a049,2px 2px #45a049ed,-2px -2px #45a049,2px -2px #45a049,-2px 2px #45a049; */
	
}
.navbar h5{
	font-family:Georgia, 'Times New Roman', Times, serif;
	color:#f4f4f4;
	/* text-shadow:2px 0 #45a049 ,-2px 0 #45a049 ,0 2px #45a049,0-2px #45a049,1px 1px #45a049ed,-1px -1px #45a049,1px -1px #45a049,-1px 1px #45a049; */
	
}
.navbar-title {
	font-size: 24px;
	color: #333;
	
	
	/* padding-bottom: 30px; */
	/* padding-left: 480px; */
}

.profile-menu {
	position: relative;
	/* display: inline-block; */
	float:right;
	
}

.profile-icon {
	cursor: pointer;
	width: 30px;
	height: 30px;
	background: url('images/profile.jpg') no-repeat center center;
	background-size: cover;
	border-radius: 50%;
}

.profile-dropdown {
	display: none;
	position: absolute;
	right: 0;
	background-color: white;
	min-width: 160px;
	box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.2);
	z-index: 1;
	border-radius: 5px;
	overflow: hidden;
}

.profile-dropdown a {
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
	transition: background-color 0.3s ease;
}

.profile-dropdown a:hover {
	background-color: #ddd;
}

.profile-menu:hover .profile-dropdown {
	display: block;
}

.header {
	text-align: center;
	background-color:#1E201E;
	padding: 25px;
	height:20px;
	margin:auto;
}

.header h3 {
	margin: 0;
	
	color:#bcd2e8;
	float:left;
}



.container {
	display: flex;
	height: calc(100vh - 150px);
	/* Adjusting height to exclude navbar and header */
}

.left-panel {
	width: 30%;
	padding: 20px;
	background-color: #6482AD;
	border-right: 1px solid #ddd;
	display: flex;
	flex-direction: column;
	align-items: center;
	height: 520px;
	margin:10px;
	border-radius:5%;
	border:2px white solid;
}
.service-box {
            width: 80%;
            height: 100px;
            margin: 10px 0;
            background-color: #697565;
            display: flex;
            justify-content: center;
            align-items: center;
            border-radius: 5px;
            background-size: cover;
            background-position: center;
            color: #fff;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        .service-box:hover {
            background-color:  #fff;
			color:#6482AD;
        }

.user-info {
	width: 100%;
	background-color: #e7f3fe;
	padding: 10px;
	border-radius: 5px;
	margin-bottom: 20px;
	text-align: center;
}

.links {
	display: flex;
	flex-direction: column;
	align-items: center;
	width: 100%;
}

.link {
	background-color: #4CAF50;
	color: white;
	padding: 10px;
	margin: 5px 0;
	border-radius: 3px;
	text-decoration: none;
	width: 100%;
	text-align: center;
	transition: background-color 0.3s;
}

.link:hover {
	background-color: #45a049;
}

.service-box {
	width: 100%;
	height: 100px;
	margin: 10px 0;
	background-color:#7FA1C3
;
	display: flex;
	justify-content: center;
	align-items: center;
	border-radius: 5px;
	background-image: url('path_to_your_image');
	/* Replace with your image URL */
	background-size: cover;
	background-position: center;
	color: #fff;
	font-weight: bold;
}

.right-panel {
	width: 70%;
	padding: 20px;
	margin:10px;
	background-color: #6482AD
;
	height:515px;
	border-radius:5%;
	border:2px white solid;
}

form {
	background-color: #7FA1C3;
	padding: 20px;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	height:400px;
}

label {
	font-weight: bold;
	margin-right:20px;
	
	padding:0px 20px;
	
}

input[type="text"], input[type="date"] {
	width: 500px;
	padding: 8px;
	margin: 8px 0;
	margin-left:5px;
	border: 1px solid #ddd;
	border-radius: 4px;
	
}
select{
	width:522px;
	padding: 8px;
	margin: 8px 0;
	margin-left:5px;
	border: 1px solid #ddd;
	border-radius: 4px;
}

input[type="submit"] {
	background-color: #E2DAD6;
	color: black;
	padding: 10px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	transition: background-color 0.3s;
	width: 150px;
	margin-top:40px;
	margin-left:300px;
}

input[type="submit"]:hover {
	background-color: #78B7D0;
}
input{
	width:100px;
}
.modal {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgba(0,0,0,0.4);
            justify-content: center;
            align-items: center;
        }
        .modal-content {
            background-color: #fefefe;
            margin: 15% auto;
            padding: 20px;
            border: 3px solid #45a049;
            border-radius: 5px;
            width: 300px;
            text-align: center;
            position: relative;
        }
        .modal-content img {
            width: 100px;
            height: 100px;
            margin: 0 auto 10px auto;
            display: block;
            border-radius: 30%;
            
           
            border-color: #45a049;
            top:-20%;
        }
        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
            cursor: pointer;
            position: absolute;
            right: 10px;
            top: 10px;
        }
        .close:hover,
        .close:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }
</style>
<script>
        function updateServiceId() {
            var serviceType = document.getElementById("serviceType");
            var serviceIdField = document.getElementById("serviceId");

            // Update the service ID based on selected service type
            switch (serviceType.value) {
                case "AC Repair":
                    serviceIdField.value = "1"; // Set appropriate service ID
                    break;
                case "TV Repair":
                    serviceIdField.value = "2"; // Set appropriate service ID
                    break;
                case "Fridge Repair":
                    serviceIdField.value = "3"; // Set appropriate service ID
                    break;
                case "Washing Machine Repair":
                    serviceIdField.value = "4"; // Set appropriate service ID
                    break;
                default:
                    serviceIdField.value = ""; // Reset if no valid option
                    break;
            }
            // Show alert if booking is successful
           
        }
		function showServiceDescription(serviceName) {
            var modal = document.getElementById("serviceModal");
            var modalContent = document.getElementById("modalContent");
            var modalImage = document.getElementById("modalImage");
            
            // Set description and image based on service name
            switch (serviceName) {
                case "AC Repair":
                    modalContent.textContent = "AC Repair service includes full inspection and repair of air conditioning systems.";
                    modalImage.src = "images/ac.png"; // Replace with actual image URL
                    break;
                case "TV Repair":
                    modalContent.textContent = "TV Repair service includes diagnosing and fixing issues with your television.";
                    modalImage.src = "images/tv.png"; // Replace with actual image URL
                    break;
                case "Fridge Repair":
                    modalContent.textContent = "Fridge Repair service includes checking and repairing refrigerator problems.";
                    modalImage.src = "images/fridge.png"; // Replace with actual image URL
                    break;
                case "Washing Machine Repair":
                    modalContent.textContent = "Washing Machine Repair service includes troubleshooting and fixing your washing machine issues.";
                    modalImage.src = "images/washing.png"; // Replace with actual image URL
                    break;
                // default:
                //     modalContent.textContent = "Service description not available.";
                //     modalImage.src = "ac.png"; // Default image
                //     break;
            }

            // Show the modal
            modal.style.display = "flex";
        }

        // Function to close the modal
        function closeModal() {
            var modal = document.getElementById("serviceModal");
            modal.style.display = "none";
        }

        // Close the modal when clicking outside of the modal content
        window.onclick = function(event) {
            var modal = document.getElementById("serviceModal");
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }
    </script>
</head>
<body>
	

	<div class="header">
		<h3>Welcome, ${loggedInUser.username}</h3>
		<div class="navbar">
			<div class="navbar-title">
				<h1>ALL-in-ALL </h1>
				
				<h5>Service Management</h5></div>
			
		</div>
		<div class="profile-menu">
			<div class="profile-icon"></div>
			<div class="profile-dropdown">
				<a href="editUser.jsp">Update Details</a> <a
					href="viewBookingHistory">View Booking History</a> <a
					href="menu.jsp">Logout</a>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="left-panel">

			<h3>Services We Offer</h3>
			<div class="service-box" onclick="showServiceDescription('AC Repair')">AC Repair</div>
            <div class="service-box" onclick="showServiceDescription('TV Repair')">TV Repair</div>
            <div class="service-box" onclick="showServiceDescription('Fridge Repair')">Fridge Repair</div>
            <div class="service-box" onclick="showServiceDescription('Washing Machine Repair')">Washing Machine Repair</div>
		</div>

		<div class="right-panel">
			<h2>Book a Service</h2>
			<form action="bookService" method="post">
				<input type="hidden" name="userName"
					value="${loggedInUser.username}" /> <input type="hidden"
					id="serviceId" name="serviceId" value="1" />
				<!-- Default service ID set to AC Repair -->

				<label for="date">Date:</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="date" id="date"
					name="date" required /><br> <label for="slot">Slot:</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <select
					id="slot" name="slot" required>
					<option value="09:00 AM">09:00 AM</option>
					<option value="11:00 AM">11:00 AM</option>
					<option value="02:00 PM">02:00 PM</option>
					<option value="04:00 PM">04:00 PM</option>
				</select> <br><label for="address">Address:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text"
					id="address" name="address" maxlength="100" required /><br> <label
					for="serviceType">Service Type:</label> &nbsp;<select id="serviceType"
					name="serviceType" required onchange="updateServiceId()">
					<option value="AC Repair">AC Repair</option>
					<option value="TV Repair">TV Repair</option>
					<option value="Fridge Repair">Fridge Repair</option>
					<option value="Washing Machine Repair">Washing Machine
						Repair</option>
				</select> <br><label for="vendor">Vendor:</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select id="vendor"
					name="vendor" required onchange="updateVendorAmount()">
					<option value="Vendor 1">Vendor 1</option>
					<option value="Vendor 2">Vendor 2</option>
					<option value="Vendor 3">Vendor 3</option>
				</select><br> <label for="amount">Amount:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" id="amount"
					name="amount" readonly /><br>
					 <input type="submit" value="Book Service" />
			</form>
		</div>
	</div>
	<div id="serviceModal" class="modal">
        <div class="modal-content">
            <span class="close" onclick="closeModal()">&times;</span>
            <img id="modalImage" src="default-image.jpg" />
            <p id="modalContent"></p>
            <button onclick="closeModal()">OK</button>
        </div>
    </div>
</body>
<script>
    function updateVendorAmount() {
        var vendor = document.getElementById("vendor");
        var amountField = document.getElementById("amount");

        // Update the amount based on selected vendor
        switch (vendor.value) {
            case "Vendor 1":
                amountField.value = "100"; // Set the corresponding amount for Vendor 1
                break;
            case "Vendor 2":
                amountField.value = "150"; // Set the corresponding amount for Vendor 2
                break;
            case "Vendor 3":
                amountField.value = "200"; // Set the corresponding amount for Vendor 3
                break;
            default:
                amountField.value = ""; // Reset amount if no valid option
                break;
        }
    }
</script>
<script>
    // This script will run when the page loads
     window.onload = function() {
     var successMessage = "${successMessage}"; // Accessing the success message from the request
      if (successMessage) {
         alert(successMessage); // Display alert with the success message
     }

         // Optionally, you can also check for an error message
        var errorMessage = "${errorMessage}";
       if (errorMessage) {
           alert(errorMessage); // Display alert with the error message
       }
     };
</script>
</body>
</html>
