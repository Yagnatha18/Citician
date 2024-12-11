<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Citician</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"> <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/signup.css">
</head>
<body>
    <center><h1 style="color: rgba(0, 75, 108, 0.76);"><i>Citician</i></h1></center>
    <div class="header">
        <div class="logo-container">
            <img src="images/image (1).png" alt="Logo" class="logo">
        </div>
        <div class="nav">
            <a href="index" class="nav-item home">Home</a>
            <a href="#" class="nav-item about">About</a>
            <a href="#" class="nav-item contact">Contact</a>
            <div class="nav-item login">
                <a href="#">Login</a>
                <div class="dropdown">
                    <a href="citizenlogin" class="dropdown-item">Citizen</a>
                    <a href="politicianlogin" class="dropdown-item">Politician</a>
                    <a href="adminlogin" class="dropdown-item">Admin</a>
                </div>
            </div>
        </div>
    </div>
    <br>
    <center>
    <div class="login-container">
        <h1>Sign Up</h1>
        <form action="citizenregistration" method="post" >
             <div class="row mb-3">
        <div class="col-md-6">
            <label for="fullName">Full Name (As per EPIC Card)</label>
            <input type="text" class="form-control" id="fullName" name="fullName" placeholder="Enter your full name" required>
        </div>
        <div class="col-md-6">
            <label for="state">Select State</label>
            <select class="form-control" id="state" name="state" required>
                <option value="">Select State</option>
                <option value="Andhra Pradesh">Andhra Pradesh</option>
                <option value="Telangana">Telangana</option>
            </select>
        </div>
    </div>

    <div class="row mb-3">
        <div class="col-md-6">
            <label for="epicCardNo">EPIC Card No</label>
            <input type="text" class="form-control" id="epicCardNo" name="epicCardNo" placeholder="Enter your EPIC Card number" required>
        </div>
        <div class="col-md-6">
            <label for="assembly">Select Assembly</label>
            <select class="form-control" id="assembly" name="assembly" required>
                <option value="">Select Assembly</option>
            </select>
        </div>
    </div>

    <div class="row mb-3">
        <div class="col-md-6">
            <label for="mobileNo">Mobile No</label>
            <input type="text" class="form-control" id="mobileNo" pattern="[6-9][0-9]{9}" name="mobileNo" placeholder="Enter your mobile number" required>
        </div>
        <div class="col-md-6">
            <label for="parliament">Select Parliament</label>
            <select class="form-control" id="parliament" name="parliament" required>
                <option value="">Select Parliament</option>
            </select>
        </div>
    </div>

    <div class="row mb-3">
        <div class="col-md-6">
            <label for="villageCityTown">Village/City/Town</label>
            <input type="text" class="form-control" id="villageCityTown" name="villageCityTown" placeholder="Enter your village/city/town" required>
        </div>
    </div>

    <div class="row mb-3">
        <div class="col-md-6">
            <label for="password">Enter Password</label>
            <input type="password" class="form-control" id="password" name="password" placeholder="Enter your Password" required>
        </div>
    </div>

            <button type="submit" class="btn btn-primary">Sign Up</button>
        </form>
        <p>Already have an account? <a href="citizenlogin">Log in</a></p>
    </div>
    </center>

    <!-- JavaScript to dynamically update Assembly and Parliament options -->
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

    <!-- Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
