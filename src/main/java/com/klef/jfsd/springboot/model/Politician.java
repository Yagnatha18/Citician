package com.klef.jfsd.springboot.model;

import jakarta.persistence.*;
import jakarta.validation.constraints.*;

@Entity
@Table(name = "politician_table")
public class Politician 
{

    @Id
    @NotBlank(message = "ID is required")
    @Pattern(regexp = "^[A-Z]{2}\\d{3}$", message = "ID must be in the format PC069")
    @Column(name = "id_code", length = 10)
    private String idCode;

    @NotBlank(message = "Full Name is required")
    @Column(name = "politician_full_name", nullable = false, length = 100)
    private String fullName;

    @NotBlank(message = "State is required")
    @Column(name = "politician_state", nullable = false, length = 50)
    private String state;

    @NotBlank(message = "MP/MLA selection is required")
    @Column(name = "politician_mp/mla", nullable = false, length = 10)
    private String mpmla;

    @NotBlank(message = "Mobile number is required")
    @Pattern(regexp = "^[6-9]\\d{9}$", message = "Mobile number must start with 6, 7, 8, or 9 and be 10 digits long")
    @Column(name = "mobile_no", nullable = false, length = 10, unique = true)
    private String mobileNo;

    @NotBlank(message = "Assembly/Parliament is required")
    @Column(name = "assembly/parliament", nullable = false, length = 50)
    private String assemblyparliament;
//
//    @Lob
//    @Column(name = "certificate_image", nullable = false)
//    private byte[] certificateImage; // Binary storage for uploaded certificate

    @NotBlank(message = "Term selection is required")
    @Column(name = "term", nullable = false, length = 20)
    private String term;
    
    @Column(name = "politician_password",length = 50,nullable = false)
    private String password;

	public String getIdCode() {
		return idCode;
	}

	public void setIdCode(String idCode) {
		this.idCode = idCode;
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

	public String getMpmla() {
	    return mpmla;
	}


	public void setMpMla(String mpmla) {
		this.mpmla = mpmla;
	}

	public String getMobileNo() {
		return mobileNo;
	}

	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}

	 public String getAssemblyparliament() {
	        return assemblyparliament;
	    }

	    public void setAssemblyparliament(String assemblyparliament) {
	        this.assemblyparliament = assemblyparliament;
	    }

//	public byte[] getCertificateImage() {
//		return certificateImage;
//	}
//
//	public void setCertificateImage(byte[] certificateImage) {
//		this.certificateImage = certificateImage;
//	}

	public String getTerm() {
		return term;
	}

	public void setTerm(String term) {
		this.term = term;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}
