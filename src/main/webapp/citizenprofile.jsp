<%@page import="com.klef.jfsd.springboot.model.Citizen"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%
 Citizen c = (Citizen)session.getAttribute("citizen");
    %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Citician</title>
        <link rel="stylesheet" href="css/citizenprofile.css">
    </head>
    <body>
         <div class="header">
        <div class="logo-container">
            <a href="citizenhome"> <img src="images/image (1).png" alt="Logo" class="logo"></a>
            <h1 class="citician-title">Citician</h1>
        </div>
        <div class="nav">
            <a href="citizenhome" class="nav-item home">Home</a>
            <a href="#" class="nav-item about">About</a>
            <a href="citizenprofile" class="nav-item profile">Profile</a>
            <a href="citizenlogin" class="nav-item logout">Logout</a>
        </div>
    </div>
    </br></br>

    <div class="main-content">
        <form class="profile-form" action="profile.html">
            <div class="left-section">
                <div class="form-group">
                    <label for="epic-no">EPIC No:</label>
                    <input type="text" id="epic-no" name="epic-no" value="<%= c != null ? c.getEpicCardNumber() : "" %>" readonly>
                </div>
                <center>
                <img src="../images/profilephoto.png" alt="Profile Image" class="profile-image"></center>
            </div>
            <div class="right-section">
                <div class="form-group">
                    <label for="name">Name:</label>
                    <input type="text" id="name" name="name" value="<%= c != null ? c.getFullName() : "" %>">
                </div>
                <div class="form-group">
                    <label for="phone">Phone No:</label>
                    <input type="text" id="phone" name="phone" value="<%= c != null ? c.getMobileNumber() : "" %>">
                </div>
                <div class="form-group">
                    <label for="state">State:</label>
                    <select class="form-control" id="state" name="state" required>
                <option value="<%= c != null ? c.getState() : "" %>"><%= c != null ? c.getState() : "" %></option>
                <option value="Andhra Pradesh">Andhra Pradesh</option>
                <option value="Telangana">Telangana</option>
            </select>
                </div>
                <div class="form-group">
                    <label for="village">Village:</label>
                    <input type="text" id="village" name="village" value="<%= c != null ? c.getVillageCityTown() : "" %>" >
                </div>
                <div class="form-group">
                    <label for="assembly">Assembly:</label>
                    <select id="assembly" name="assembly">
                        <option value="<%= c != null ? c.getAssembly() : "" %>"><%= c != null ? c.getAssembly() : "" %></option>
                        <!-- Add options here -->
                    </select>
                </div>
                <div class="form-group">
                    <label for="parliament">Parliament:</label>
                    <select id="parliament" name="parliament">
                        <option value="<%= c != null ? c.getParliament() : "" %>"><%= c != null ? c.getParliament() : "" %></option>
                        <!-- Add options here -->
                    </select>
                </div>
                <div class="form-group">
                    <label for="password">Password:</label>
                   <input type="text" id="password" name="password" value="<%= c != null ? c.getPassword(): "" %>" >
                    </select>
                </div>
                <center>
                <button type="submit" class="submit-button">Update</button>
            </center>
            </div>
        </form>
    </div>
 <script>
        // Assembly and Parliament data by state
        const stateData = {
            "Andhra Pradesh": {
                assemblies: [
    "Achanta", "Adoni", "Alur", "Amadalavalasa", "Amalapuram", "Anakapalle", "Anantapur Urban", 
    "Anaparthy", "Araku Valley", "Atmakur", "Avanigadda", "Badvel", "Banaganapalle", "Bapatla", 
    "Bhimavaram", "Bhimili", "Cheepurupalli", "Chilakaluripet", "Chintalapudi", "Chirala", "Chittoor", 
    "Chodavaram", "Darsi", "Denduluru", "Dharmavaram", "Dhone", "Elamanchili", "Etcherla", 
    "Gajapathinagaram", "Gajuwaka", "Gangadhara Nellore", "Gannavaram", "Gopalapuram", "Gudur", 
    "Guntakal", "Guntur East", "Guntur West", "Gurajala", "Hindupur", "Ichchapuram", "Jaggampeta", 
    "Jaggayyapeta", "Jammalamadugu", "Kadapa", "Kadiri", "Kaikalur", "Kakinada City", "Kakinada Rural", 
    "Kalyandurg", "Kamalapuram", "Kanigiri", "Kandukur", "Kavali", "Kodumur", "Kodur", "Kondapi", 
    "Kothapeta", "Kovur", "Kovvur", "Kuppam", "Kurupam", "Kurnool", "Macherla", "Machilipatnam", 
    "Madanapalle", "Madakasira", "Madugula", "Mangalagiri", "Mandapeta", "Markapuram", "Mummidivaram", 
    "Mylavaram", "Mydukur", "Nagari", "Nandyal", "Nandigama", "Nandikotkur", "Narasannapeta", 
    "Narasaraopet", "Narasapuram", "Narsipatnam", "Nellimarla", "Nellore City", "Nellore Rural", 
    "Nidadavole", "Nuzvid", "Ongole", "Paderu", "Palakollu", "Palakonda", "Palamaner", 
    "Pamarru", "Panyam", "Parvathipuram", "Pathapatnam", "Payakaraopet", "Peddapuram", 
    "Pedakurapadu", "Pedana", "Penamaluru", "Penukonda", "Pileru", "Pithapuram", "Ponnuru", 
    "Polavaram", "Prathipadu", "Proddatur", "Punganur", "Puthalapattu", "Puttaparthi", 
    "Rajahmundry City", "Rajahmundry Rural", "Rajampet", "Rajam", "Rajanagaram", "Rampachodavaram", 
    "Raptadu", "Rayachoti", "Rayadurg", "Repalle", "Razole", "Sattenapalle", "Sathyavedu", 
    "Salur", "Sarvepalli", "Santhanuthalapadu", "Sattenapalle", "Singanamala", "Srikalahasti", 
    "Srikakulam", "Srungavarapukota", "Sullurpeta", "Tadepalligudem", "Tadikonda", "Tanuku", 
    "Tenali", "Thamballapalle", "Tirupati", "Tiruvuru", "Tuni", "Udayagiri", "Uravakonda", 
    "Unguturu", "Vemuru", "Venkatagiri", "Vijayawada Central", "Vijayawada East", "Vijayawada West", 
    "Vinukonda", "Visakhapatnam East", "Visakhapatnam North", "Visakhapatnam South", 
    "Visakhapatnam West", "Vizianagaram", "Yemmiganur", "Yerragondapalem"
],



parliaments: [
    "Amalapuram (SC)", "Anakapalli", "Anantapur", "Araku (ST)", "Bapatla (SC)", "Chittoor (SC)", 
    "Eluru", "Guntur", "Hindupur", "Kadapa", "Kakinada", "Kurnool", "Machilipatnam", 
    "Nandyal", "Narasapuram", "Narasaraopet", "Nellore", "Ongole", "Rajahmundry", 
    "Rajampet", "Srikakulam", "Tirupati (SC)", "Vijayawada", "Visakhapatnam", "Vizianagaram"
],

            },



            "Telangana": {
    "assemblies": [
        "Achampet (SC)", "Adilabad", "Alair", "Alampur (SC)", "Amberpet", "Andole (SC)", "Armur", 
        "Asifabad (ST)", "Aswaraopeta (ST)", "Bahadurpura", "Balkonda", "Banswada", "Bellampalli (SC)", 
        "Bhadradri-Kothagudem", "Bhupalpalle", "Bhongir", "Boath (ST)", "Bodhan", "Chandrayangutta", 
        "Charminar", "Chevella (SC)", "Chennur (SC)", "Choppadandi (SC)", "Devarkadra", 
        "Devarakonda (ST)", "Dornakal (ST)", "Dubbak", "Dharmapuri", "Gadwal", "Gajwel", 
        "Ghanpur (Station)", "Goshamahal", "Huzurnagar", "Huzurabad", "Husnabad", "Ibrahimpatnam", 
        "Jagityal", "Jangaon", "Jadcherla", "Jukkal (SC)", "Jubilee Hills", "Kalwakurthy", 
        "Kamareddy", "Khanapur (ST)", "Khairatabad", "Kodad", "Kodangal", "Kollapur", "Koratla", 
        "Kukatpally", "Kothagudem", "Kulkacharla", "L.B. Nagar", "Mahabubabad (ST)", "Mahbubnagar", 
        "Maheshwaram", "Makthal", "Malakpet", "Mancherial", "Malkajgiri", "Manakondur (SC)", 
        "Manthani", "Medak", "Medchal", "Miryalaguda", "Mudhole", "Mulug (ST)", "Munugode", 
        "Musheerabad", "Nagarkurnool", "Nakrekal (SC)", "Nalgonda", "Nampally", "Narayankhed", 
        "Narayanpet", "Narsapur", "Narsampet", "Nizamabad Rural", "Nizamabad Urban", "Palair", 
        "Pargi", "Parkal", "Patancheru", "Pinapaka (ST)", "Quthbullapur", "Rajendranagar", 
        "Ramagundam", "Sangareddy", "Sanathnagar", "Sathupalli (SC)", "Secunderabad", 
        "Secunderabad Cantt.", "Serilingampally", "Shadnagar", "Siddipet", "Sirpur", "Sircilla", 
        "Suryapet", "Tandur", "Thungathurthi (SC)", "Vemulawada", "Vikarabad (SC)", 
        "Waradhanapet (SC)", "Warangal East", "Warangal West", "Wyra (ST)", "Yakutpura", 
        "Yellandu (ST)", "Yellareddy", "Zahirabad (SC)"
    ],
    "parliaments": [
        "Adilabad", "Bhongir", "Chevella", "Hyderabad", "Karimnagar", "Khammam", "Mahabubabad", 
        "Mahabubnagar", "Malkajgiri", "Medak", "Nagarkurnool", "Nalgonda", "Nizamabad", 
        "Peddapalli", "Secunderabad", "Warangal", "Zahirabad"
    ]

            },
            
            // Add more states as needed
        };

        // Get dropdown elements
        const stateDropdown = document.getElementById("state");
        const assemblyDropdown = document.getElementById("assembly");
        const parliamentDropdown = document.getElementById("parliament");

        // Update assemblies and parliaments based on selected state
        stateDropdown.addEventListener("change", function() {
            const selectedState = stateDropdown.value;

            // Clear previous options
            assemblyDropdown.innerHTML = "<option value=''>Select Assembly</option>";
            parliamentDropdown.innerHTML = "<option value=''>Select Parliament</option>";

            if (stateData[selectedState]) {
                // Populate assemblies
                stateData[selectedState].assemblies.forEach(assembly => {
                    const option = document.createElement("option");
                    option.value = assembly;
                    option.textContent = assembly;
                    assemblyDropdown.appendChild(option);
                });

                // Populate parliaments
                stateData[selectedState].parliaments.forEach(parliament => {
                    const option = document.createElement("option");
                    option.value = parliament;
                    option.textContent = parliament;
                    parliamentDropdown.appendChild(option);
                });
            }
        });
    </script>
    
</body>
</html>
