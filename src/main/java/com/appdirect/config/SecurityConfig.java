//package com.appdirect.config;
//
//import javax.sql.DataSource;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.beans.factory.annotation.Qualifier;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
//import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
//import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
//import org.springframework.security.config.annotation.web.builders.HttpSecurity;
//import org.springframework.security.config.annotation.web.builders.WebSecurity;
//import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
//import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
//import org.springframework.security.core.userdetails.UserDetailsService;
//
//import com.appdirect.dao.UserDao;
//@EnableGlobalMethodSecurity(prePostEnabled = true)
//@EnableJpaRepositories(basePackageClasses = UserDao.class)
//@Configuration
//@EnableWebSecurity
//public class SecurityConfig extends WebSecurityConfigurerAdapter {
////	
//@Qualifier("dataSource")
//@Autowired
//private DataSource dataSource;
//
//	
//	@Qualifier("customUserService")
//	@Autowired
//	private UserDetailsService userDetailsService;
////	@Autowired
////	public void configureAuth(AuthenticationManagerBuilder auth) throws Exception {
////		auth
////			.inMemoryAuthentication()
////				.withUser("aayushi")
////				.password("aayu1415")
////				.roles("ADMIN");
////	jdbcAuthenticat()
////				.usersByUsernameQuery(usersQuery)
////				.authoritiesByUsernameQuery(rolesQuery)
////				.dataSource(dataSource)
////	}
//
//
//	@Override
//	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
////		auth
////				.jdbcAuthentication()
////				.usersByUsernameQuery(usersQuery)
////				.authoritiesByUsernameQuery(rolesQuery)
////				.dataSource(dataSource);
//		auth.userDetailsService(userDetailsService);
//	}
//
//	@Override
//	protected void configure(HttpSecurity http) throws Exception {
//
//		System.out.println("in configure");
//		http.authorizeRequests()
//				.antMatchers("**/category").authenticated()
//				.anyRequest().permitAll()
//				.and()
//				.formLogin().permitAll();
//	}
//
//	//	@Override
////	protected void configure(HttpSecurity http) throws Exception {
//		//super.configure(http);
////		http
////				.authorizeRequests()
////				.antMatchers("/**").permitAll()
////				.antMatchers("/adminController/**").hasRole("ADMIN")
////				.anyRequest().authenticated()
////				.and()
////				.formLogin();
////		http.
////				authorizeRequests()
////				.antMatchers("/").permitAll()
////				.antMatchers("/userController/**").permitAll()
////				.antMatchers("/adminController/**").hasAuthority("ADMIN")
////				.anyRequest()
////				.authenticated()
////				;
////		 .and().csrf().disable().formLogin()
////				.loginPage("/login").failureUrl("/login?error=true")
////				.defaultSuccessUrl("/admin/home")
////				.usernameParameter("userName")
////				.passwordParameter("userPassword");
////				.and().logout()
////				.logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
////				.logoutSuccessUrl("/").and().exceptionHandling()
////				.accessDeniedPage("/access-denied");
//
//
////	}
//
//
//	@Override
//	public void configure(WebSecurity web) throws Exception {
//		web
//				.ignoring()
//				.antMatchers("/resources/**", "/static/**", "/css/**", "/js/**", "/images/**");
//	}
//}
