package com.klef.jfsd.springboot.model;

import jakarta.persistence.Entity;
import jakarta.persistence.*;
import jakarta.validation.constraints.*;

@Entity
@Table(name = "citizen_table")
public class Citizen {
	
		
		@Id
		@Column(name = "epic_card_number", length = 20)
	    @NotBlank(message = "EPIC card number is required")
	    @Size(max = 20, message = "EPIC card number cannot exceed 20 characters")
	    private String epicCardNumber;
	    
	    @Column(name = "citizen_full_name", length = 100, nullable = false)
	    @NotBlank(message = "Full name is required")
	    @Size(max = 100, message = "Full name cannot exceed 100 characters")
	    private String fullName;

	    @Column(name = "citizen_state", length = 50, nullable = false)
	    @NotBlank(message = "State is required")
	    @Size(max = 50, message = "State cannot exceed 50 characters")
	    private String state;

	    @Column(name = "citizen_assembly", length = 50, nullable = false)
	    @NotBlank(message = "Assembly is required")
	    @Size(max = 50, message = "Assembly cannot exceed 50 characters")
	    private String assembly;

	    @Column(name = "citizen_mobile_number", length = 15, nullable = false, unique = true)
	    @NotBlank(message = "Mobile number is required")
	    @Pattern(regexp = "[6-9]\\\\d{9}", message = "Mobile number must be numeric and between 10 to 15 digits")
	    private String mobileNumber;

	    @Column(name = "citizen_parliament", length = 50, nullable = false)
	    @NotBlank(message = "Parliament is required")
	    @Size(max = 50, message = "Parliament cannot exceed 50 characters")
	    private String parliament;
	    
//	    @NotNull(message = "EPIC Card file is required")
//	    @Lob
//	    @Column(name = "epic_card_file", nullable = false)
//	    private byte[] epicCardFile; 

	    @Column(name = "citizen_village_city_town", length = 100, nullable = false)
	    @NotBlank(message = "Village/City/Town is required")
	    @Size(max = 100, message = "Village/City/Town cannot exceed 100 characters")
	    private String villageCityTown;
	    
	    @Column(name = "citizen_password",length = 50,nullable = false)
	    @NotBlank(message = "Password is required")
	    private String password;

		public String getEpicCardNumber() {
			return epicCardNumber;
		}

		public void setEpicCardNumber(String epicCardNumber) {
			this.epicCardNumber = epicCardNumber;
		}

		public String getFullName() {
			return fullName;
		}

		public void setFullName(String fullName) {
			this.fullName = fullName;
		}

		public String getState() {
			return state;
		}

		public void setState(String state) {
			this.state = state;
		}

		public String getAssembly() {
			return assembly;
		}

		public void setAssembly(String assembly) {
			this.assembly = assembly;
		}

		public String getMobileNumber() {
			return mobileNumber;
		}

		public void setMobileNumber(String mobileNumber) {
			this.mobileNumber = mobileNumber;
		}

		public String getParliament() {
			return parliament;
		}

		public void setParliament(String parliament) {
			this.parliament = parliament;
		}
		
//		 public byte[] getEpicCardFile() {
//		        return epicCardFile;
//		    }
//
//		    public void setEpicCardFile(byte[] epicCardFile) {
//		        this.epicCardFile = epicCardFile;
//		    }

		public String getVillageCityTown() {
			return villageCityTown;
		}

		public void setVillageCityTown(String villageCityTown) {
			this.villageCityTown = villageCityTown;
		}

		public String getPassword() {
			return password;
		}

		public void setPassword(String password) {
			this.password = password;
		}

}
