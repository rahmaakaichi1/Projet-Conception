package com.example.com.configuration;




import javax.sql.DataSource;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;



@Configuration
@EnableWebSecurity

public class SecurityConfig  extends WebSecurityConfigurerAdapter{
    
	
	@Autowired
    CustomSuccessHandler customSuccessHandler;
	
	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;
	
	@Autowired
	private DataSource dataSource;
	
	private static final String QUERY1 = "select email, password , active from etudiant where email=?";
	private static final String QUERY1_1 = "select email, password , active from enseignant where email=?";

	private static final String QUERY2="select u.email, r.role from etudiant u inner join user_role ur on(u.user_id=ur.user_id) inner join role r on(ur.role_id=r.role_id) where u.email=?";
	
	private static final String QUERY2_1="select u.email, r.role from enseignant u inner join user_role ur on(u.user_id=ur.user_id) inner join role r on(ur.role_id=r.role_id) where u.email=?";
	
	private static final String QUERY3_1 = "select email, password , active from admin where email=?";
	private static final String QUERY3="select u.email, r.role from admin u inner join user_role ur on(u.user_id=ur.user_id) inner join role r on(ur.role_id=r.role_id) where u.email=?";

	
	@Override
	protected void configure(AuthenticationManagerBuilder auth)
			throws Exception {
		auth.jdbcAuthentication()
			.usersByUsernameQuery(QUERY1)
			.authoritiesByUsernameQuery(QUERY2)
			.dataSource(dataSource)
			.passwordEncoder(bCryptPasswordEncoder).
			and().jdbcAuthentication().
			usersByUsernameQuery(QUERY1_1).authoritiesByUsernameQuery(QUERY2_1).dataSource(dataSource).passwordEncoder(bCryptPasswordEncoder)
			.and().jdbcAuthentication().usersByUsernameQuery(QUERY3_1).authoritiesByUsernameQuery(QUERY3).dataSource(dataSource).passwordEncoder(bCryptPasswordEncoder);
	}

	@Override	
	public void configure(HttpSecurity http) throws Exception {
	
		http.
		authorizeRequests()
		.antMatchers("/").permitAll()
		.antMatchers("/connection").permitAll()
		.antMatchers("/inscription").permitAll()
		.antMatchers("/inscription_enseignant").permitAll()
		.antMatchers("/inscription_admin").permitAll()
		.antMatchers("/etudiant/**").hasAuthority("ETUDIANT")
		.antMatchers("/admin/**").hasAuthority("ADMIN")
		.and().formLogin()
		.loginPage("/connection").successHandler(customSuccessHandler)
		.usernameParameter("email")
		.passwordParameter("password")
		.and().logout()
		.logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
		.logoutSuccessUrl("/connection").and().exceptionHandling()
		.accessDeniedPage("/access-denied");

	}
	@Override
	public void configure(WebSecurity web) throws Exception {
	    web
	       .ignoring()
	       .antMatchers("/resources/**", "/resources/static/**");
	}


}
