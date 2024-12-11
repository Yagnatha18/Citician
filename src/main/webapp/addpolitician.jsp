<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Citician</title>
    <link rel="stylesheet" href="css/addpolitician.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"> <!-- Bootstrap CSS -->

</head>
<body>
    <div class="header">
        <div class="logo-container">
            <a href="adminhome"> <img src="images/image (1).png" alt="Logo" class="logo"></a>
            <h1 class="citician-title">Citician</h1>
        </div>
        <div class="nav">
            <a href="adminhome" class="nav-item home">Home</a>
            <a href="addpolitician" class="nav-item addpolitician">Add Politician</a>
            <a href="adminprofile" class="nav-item profile">Profile</a>
            <a href="adminlogin" class="nav-item logout">Logout</a>
        </div>
    </div>
</br></br>
<center>
 <div class="login-container">
            <h1>Add Politician</h1>
         <form action="addpolitician" method="post">
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
                        <label for="idCode">ID (Ex: PC069)</label>
                        <input type="text" class="form-control" id="idCode" name="idCode" required pattern="^[A-Z]{2}\d{3}" placeholder="Enter ID in format PC069">
                    </div>
                    <div class="col-md-6">
                        <label for="mpmla">Select MP/MLA</label>
                        <select class="form-control" id="mpmla" name="mpmla" required>
                            <option value="">Select MP/MLA</option>
                            <option value="MP">MP</option>
                            <option value="MLA">MLA</option>
                        </select>
                    </div>
                </div>

                <div class="row mb-3">
                    <div class="col-md-6">
                        <label for="mobileNo">Mobile No</label>
                        <input type="tel" class="form-control" id="mobileNo" name="mobileNo" required pattern="[6-9][0-9]{9}" placeholder="Enter your mobile number">
                    </div>
                    <div class="col-md-6">
                        <label for="assemblyparliament">Select Assembly/Parliament</label>
                        <select class="form-control" id="assemblyparliament" name="assemblyparliament" required>
                            <option value="">Select Assembly/Parliament</option>
                        </select>
                    </div>
                </div>

                <div class="row mb-3">
                    <div class="col-md-6">
                        <label for="term">Select Term</label>
                        <select class="form-control" id="term" name="term" required>
                            <option value="">Select Term</option>
                            <option value="2024-2029">2024-2029</option>
                            <option value="2019-2024">2019-2024</option>
                            <option value="2014-2019">2014-2019</option>
                        </select>
                    </div>
                </div>

                <center>
                    <div class="button-group">
                        <button type="submit" class="submit-button">Submit</button>
                        <button type="reset" class="submit-button">Clear</button>
                    </div>
                </center>
            </form>
        </div>
    </center>

    <script>
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

    document.getElementById('mpmla').addEventListener('change', function () {
        const selectedType = this.value; // 'MP' or 'MLA'
        const selectedState = document.getElementById('state').value;
        const assemblyParliamentSelect = document.getElementById('assemblyparliament');

        // Clear previous options
        assemblyParliamentSelect.innerHTML = '<option value="">Select Assembly/Parliament</option>';

        if (selectedState && selectedType) {
            const options = stateData[selectedState][selectedType === "MLA" ? "assemblies" : "parliaments"];
            options.forEach(option => {
                const opt = document.createElement('option');
                opt.value = option;
                opt.textContent = option;
                assemblyParliamentSelect.appendChild(opt);
            });
        }
    });
</script>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script> <!-- Bootstrap JS -->

<script src="script.js"></script>
</body>
</html>