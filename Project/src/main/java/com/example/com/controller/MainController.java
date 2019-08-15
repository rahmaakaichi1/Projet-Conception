package com.example.com.controller;

import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.com.entities.Admin;
import com.example.com.entities.Enseignant;
import com.example.com.entities.Etudiant;
import com.example.com.entities.Groupe;
import com.example.com.entities.Role;
import com.example.com.repositories.AdminRepository;
import com.example.com.repositories.EnseignantRepository;
import com.example.com.repositories.EtudiantRepository;

@Controller
public class MainController {

	
//	@Autowired
//	private UserService userService;
	@Autowired 
	private AdminRepository adminRepository ;
	@Autowired
	EtudiantRepository etudiantRepository;
	
	@Autowired
	EnseignantRepository enseignantRepository;
	
	@Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;

	@GetMapping("/acceuil")
	public String welcome(Model model) {

		return "acceuil";
	}

	

	@GetMapping("/")
	public String returnSignup(Model model) {

		return "redirect:/inscription";
	}

	@GetMapping("/contact")
	public String returnContact(Model model) {
		return "contact";
	}
	@GetMapping("/apropos")
	public String returnApropos(Model model) {
		return "apropos";
	}
	
	
	@GetMapping("/connection")
    public String login(Model model, String error, String logout) {
        if (error != null)
            model.addAttribute("error", "Email ou mot de passe erroné!");
     
        Logger.getLogger(getClass().getName()).log(Level.SEVERE, "Email ou mot de passe erroné!.");	

        if (logout != null)
            model.addAttribute("message", "You have been logged out successfully.");

        Logger.getLogger(getClass().getName()).log(Level.SEVERE, "Email ou mot de passe erroné!");	
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (!(auth instanceof AnonymousAuthenticationToken)) {
		    String currentUserName = auth.getName();
		    System.out.println(currentUserName+ ""+auth.isAuthenticated()+auth.getPrincipal().toString() );
		    Logger.getLogger(getClass().getName()).log(Level.INFO, "Login!!!!!!!!!!!");	
}
        
        return "connection";
    }	
	


	

	@GetMapping("/inscription")
	public String returnIsncription(Model model) {

		model.addAttribute("EtudiantForm", new Etudiant());
		
		return "inscription";
	}

	@PostMapping("/inscription")
	public String inscription(@ModelAttribute("userForm") Etudiant userForm,@ModelAttribute("groupeForm") Groupe groupeForm,  BindingResult bindingResult, Model model) {

	model.addAttribute("user", userForm);
        userForm.setActive(1);
        userForm.setPassword(bCryptPasswordEncoder.encode(userForm.getPassword()));
		Set<Role> set = new HashSet<>();
		Role role1 = new Role();
		role1.setRoleName("ETUDIANT");
		set.add(role1);
		userForm.setRoles(set);
		
		etudiantRepository.save(userForm);
		
//		User userExists = userService.findUserByEmail(userForm.getEmail());
//		if (userExists != null) {
//			bindingResult
//					.rejectValue("email", "error.user",
//							"There is already a user registered with the email provided");
//		}
//		
//		
//		userService.saveUser(userForm);
		
		
	    
		Logger.getLogger(getClass().getName()).log(Level.INFO, "Adding New User  To Our ENSI scheduler !!! ");
		return "redirect:/connection";
	}
	
	
	@GetMapping("/inscription_enseignant")
	public String returnIsncriptionEnseignant(Model model) {

		model.addAttribute("EnseignantForm", new Enseignant()); // !!!!
		return "inscription_enseignant";
	}
	
	
	
	
	@PostMapping("/inscription_enseignant")
	public String inscriptionEnseignantForm(@ModelAttribute("enseignantForm") Enseignant enseignantForm, BindingResult bindingResult, Model model) {

	model.addAttribute("user", enseignantForm);
	enseignantForm.setActive(1);
	enseignantForm.setPassword(bCryptPasswordEncoder.encode(enseignantForm.getPassword()));
		Set<Role> set = new HashSet<>();
		Role role1 = new Role();
		role1.setRoleName("ENSEIGNANT");
		set.add(role1);
		enseignantForm.setRoles(set);
		Groupe g1 = new Groupe();
		g1.setGroupeN("II-1-A");
		Groupe g2 = new Groupe();
		g2.setGroupeN("II-1-C");
		enseignantForm.setGroupes(new HashSet<Groupe>(Arrays.asList(g1,g2)));
		enseignantRepository.save(enseignantForm);
		Logger.getLogger(getClass().getName()).log(Level.INFO, "Adding New Teacher  To Our ENSI scheduler !!! ");
		return "redirect:/connection";
	}

	
	
	@GetMapping("/inscription_admin")
	public String returnIsncriptionAdmin(Model model) {

		model.addAttribute("AdminForm", new Admin());// !!!!
		return "inscription_admin";
	}
	
	
	
	
	@PostMapping("/inscription_admin")
	public String inscriptionAdminForm(@ModelAttribute("adminForm") Admin adminForm, BindingResult bindingResult, Model model) {

	model.addAttribute("user", adminForm);
	adminForm.setActive(1);
	adminForm.setPassword(bCryptPasswordEncoder.encode(adminForm.getPassword()));
		Set<Role> set = new HashSet<>();
		Role role1 = new Role();
		role1.setRoleName("ADMIN");
		set.add(role1);
		adminForm.setRoles(set);
		
		
		adminRepository.save(adminForm);
		Logger.getLogger(getClass().getName()).log(Level.INFO, "Adding New ADMIN To Our ENSI scheduler !!! ");
		return "redirect:/connection";
	}

}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	


