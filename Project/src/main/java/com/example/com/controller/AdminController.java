package com.example.com.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.com.entities.Enseignant;
import com.example.com.entities.Etudiant;
import com.example.com.entities.User;
import com.example.com.repositories.EnseignantRepository;
import com.example.com.repositories.EtudiantRepository;
import com.example.com.repositories.UserRepository;
import com.example.com.services.EnseignantService;
import com.example.com.services.UserService;

import antlr.collections.List;

@Controller
public class AdminController {

	
	@Autowired
	private UserRepository userRepository ;
	
	@Autowired 
	private EnseignantService enseignantService ;
	
	@Autowired 
	private EtudiantRepository etudiantRepository ;
	
	@Autowired
	private EnseignantRepository enseignantRepository ;
	

	
	/*@GetMapping("/admin/espace_admin")
	public String returnEspace(Model model) {
		return "/admin/espace_admin";
	}*/
//	@GetMapping("/admin/gestionEtudiants")
//	public String returnGestionE(Model model) {
//		return "/admin/gestionEtudiants";
//	}
//	@GetMapping("/admin/gestionEnseignants")
//	public String returnGestionEns(Model model) {
//		return "/admin/gestionEnseignants";
//	}
	
	
	/*---------gestion Enseignant ---------*/
	/*@GetMapping("/admin/gestion_enseignants")
	public String gestionEns(Model model) {
		return "/admin/gestion_enseignants";
	}*/
	
	
	@GetMapping("/admin/gestionEnseignants")
	public String GestionEns(Model model) {
       
		
		java.util.List<Enseignant> enseignants = enseignantService.findAll();
		
		model.addAttribute("enseignants", enseignants  );
		
		model.addAttribute("GestionEnseignant",new Enseignant());
        
		return "/admin/gestionEnseignants";
	}
	


	@RequestMapping(value = "/admin/gestionEnseignants", params = "ajouter" ,method = RequestMethod.POST)

	public String Add( @ModelAttribute("gestionEnseignant") Enseignant newuser ,Model model,Enseignant enseignant) {


	
	newuser.setPrenom(((User) model).getPrenom());
	newuser.setEmail(((User) model).getEmail());
	newuser.setPassword(((User) model).getPassword());
	newuser.setNom(((User) model).getNom());

	
	enseignantRepository.save(enseignant);
	

	model.addAttribute("enseignants", enseignantRepository.findAll());
	return "redirect:/admin/GestionEnseignants";
	}
	
	
	/*@RequestMapping(value = "/admin/gestionEnseignants/{id}", params = "editer" ,method = RequestMethod.POST)

	public String Add(@PathVariable("id") long id,  Model model) {


	Enseignant enseignant =  enseignantRepository.findById(id).get();
	enseignant.setEmail(((User) model).getEmail());
	enseignant.setPassword(((User) model).getPassword());
	enseignant.setNom(((User) model).getNom());
	enseignant.setPrenom(((User) model).getPrenom());
	
	enseignantRepository.save(enseignant);
	

	model.addAttribute("enseignants", enseignantRepository.findAll());
	return "redirect:/admin/GestionEnseignants";
	}*/
	


	@RequestMapping(value = "/admin/gestionEnseignants/{id}", params = "supprimer" ,method = RequestMethod.POST)

	public String Delete(@PathVariable("id") long id,  Model model) {


	enseignantRepository.deleteById(id);

	model.addAttribute("enseignants", enseignantRepository.findAll());
	return "redirect:/admin/GestionEnseignants";
	}
	
	/*-----------Gestion Etudiants ---------------- */
	@GetMapping("/admin/gestionEtudiants")
	public String GestionEtu(Model model) {
       
		
		java.util.List<Etudiant> etudiants = etudiantRepository.findAll();
		
		model.addAttribute("etudiants", etudiants  );
		
		model.addAttribute("GestionEtudiant",new Etudiant());
        
		return "/admin/gestionEtudiants";
	}
	


	@RequestMapping(value = "/admin/gestionEtudiants", params = "ajouter" ,method = RequestMethod.POST)

	public String AddEtud( @ModelAttribute("gestionEtudiant") Etudiant newuser ,Model model,Etudiant etudiant) {


	
	newuser.setPrenom(((User) model).getPrenom());
	newuser.setEmail(((User) model).getEmail());
	newuser.setPassword(((User) model).getPassword());
	newuser.setNom(((User) model).getNom());

	
	etudiantRepository.save(etudiant);
	

	model.addAttribute("etudiants", etudiantRepository.findAll());
	return "redirect:/admin/GestionEtudiants";
	}
	
	
	/*@RequestMapping(value = "/admin/gestionEtudiants/{id}", params = "editer" ,method = RequestMethod.POST)

	public String Addetud(@PathVariable("id") long id,  Model model) {


	Etudiant etudiant =  etudiantRepository.findById(id).get();
	etudiant.setEmail(((User) model).getEmail());
	etudiant.setPassword(((User) model).getPassword());
    etudiant.setNom(((User) model).getNom());
	etudiant.setPrenom(((User) model).getPrenom());
	
	enseignantRepository.save(etudiant);
	

	model.addAttribute("etudiants", etudiantRepository.findAll());
	return "redirect:/admin/GestionEtudiants";
	}*/
	


	@RequestMapping(value = "/admin/gestionEtudiants/{id}", params = "supprimer" ,method = RequestMethod.POST)

	public String DeleteEtud(@PathVariable("id") long id,  Model model) {


	etudiantRepository.deleteById(id);

	model.addAttribute("etudiants", etudiantRepository.findAll());
	return "redirect:/admin/GestionEtudiants";
	}
	
	
	
	
	
}
