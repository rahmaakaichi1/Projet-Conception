package com.example.com.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.com.entities.Absence;
import com.example.com.entities.Enseignant;
import com.example.com.entities.Etudiant;
import com.example.com.entities.Groupe;
import com.example.com.entities.Role;
import com.example.com.entities.User;
import com.example.com.repositories.EnseignantRepository;
import com.example.com.repositories.EtudiantRepository;
import com.example.com.repositories.GroupeRepository;
import com.example.com.services.UserService;




@Controller
public class EtudiantController {

	@Autowired
	private UserService userService;
	
	@Autowired 
	private EnseignantRepository enseignantRepository ;
	
	@Autowired
	private GroupeRepository groupeRepository ;
	
   
   @Autowired 
   private EtudiantRepository etudiantRepository ;
     
   @GetMapping("/etudiant/contact")
	public String returnContact(Model model) {
		return "/etudiant/contact";
	}
   @GetMapping("/etudiant/apropos")
	public String returnApropos(Model model) {
		return "/etudiant/apropos";
	}
   @GetMapping("/etudiant/emploiEtudiant")
	public String returnEmploi(Model model) {
		return "/etudiant/emploiEtudiant";
	}

/*------------- espace etudiant ------------------ */
	@GetMapping("/etudiant/espace_etudiant")
	public String welcomeEtudiant(Model model) {

		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		User user = userService.findUserByEmail(auth.getName());
		java.util.Set<Role> set = user.getRoles();
		
		set.stream().map(r-> r.getRoleName()).findAny().ifPresent(System.out::println);
		
		Logger.getLogger(getClass().getName()).log(Level.INFO, "Current User: "+ user.getNom()+" " + "Role : "+ " Name: " + user.getPrenom() + " (" + user.getEmail() + ")");

		return "etudiant/espace_etudiant";
	}
	
	/*------------ displaying list etudinats ------------------ */ 
	@GetMapping("/etudiant/list_enseignants")
	public String listEnseignant(Model model) {

		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		User user = userService.findUserByEmail(auth.getName());
		java.util.Set<Role> set = user.getRoles();
			
		
		Logger.getLogger(getClass().getName()).log(Level.INFO, "Current User: "+ user.getNom()+" " + "Role : "+ " Name: " + user.getPrenom() + " (" + user.getEmail() + ")");
       
		return "/etudiant/list_enseignants";
	}
	

	// values not show
	/*@GetMapping("/etudiant/notifications")
	public ModelAndView displayNotif() {
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		Etudiant user = (Etudiant) userService.findUserByEmail(auth.getName());
		Groupe groupe = user.getGroupe();
		List<Integer> absences = new ArrayList<>();
		// groupe cannot be cast to enseignant
		//List<Enseignant> enseignants = groupeRepository.findById(groupe.getId());
		List<Enseignant> enseignants = groupe.getEnseignants() ;
		for(Enseignant enseignant : enseignants) {
			List<Integer> absencesens  =  enseignantRepository.findAbsencesById(enseignant.getId());
			absences.addAll(absencesens);
		}
		return new ModelAndView("/etudiant/notifications" , "absences", absences);
		
		
	}*/
	
	/*------------------Getting Notification ------------------- */
	
	@GetMapping("/etudiant/notifications")
	public String personneForm(Model model) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		Etudiant user = (Etudiant) userService.findUserByEmail(auth.getName());
		Groupe groupe = user.getGroupe();
		List<Integer> absences = new ArrayList<>();
		List<Integer> rattrapages = new ArrayList<>();
		
		List<Enseignant> enseignants = groupe.getEnseignants() ;
		for(Enseignant enseignant : enseignants) {
			List<Integer> absencesens  =  enseignantRepository.findAbsencesById(enseignant.getId());
			List<Integer> rattrapages1 = enseignantRepository.findRattrapagesById(enseignant.getId());
			absences.addAll(absencesens);
			rattrapages.addAll(rattrapages1);
		}
	model.addAttribute("absences", absences);
	model.addAttribute("rattrapages" , rattrapages);
	return "/etudiant/notifications";
	}
	
	
	/*-----------Profil ---------------*/
	@GetMapping("/etudiant/profilEtudiant")
	public String GetProfil(Model model, User  user) {

		model.addAttribute("ProfilForm", new User());
        
		return "/etudiant/profilEtudiant";
	}
	@PostMapping("/etudiant/profilEtudiant")
	
	public String postProfil(@ModelAttribute("profilForm") User user, Model model,RedirectAttributes attributes) {

		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		User currentuser = userService.findUserByEmail(auth.getName());
		

		currentuser.setPrenom(user.getPrenom());
		currentuser.setNom(user.getNom());
		currentuser.setEmail(user.getEmail());
		currentuser.setPassword(user.getPassword());
		
	
		userService.saveUser(currentuser);
		
		
		attributes.addFlashAttribute("flashAttribute", "Your Request is accepted by the System");
		Logger.getLogger(getClass().getName()).log(Level.INFO, "setting user infos !!! ");
	    
		return "redirect:/etudiant/espace_etudiant";
	}
	
	

}
