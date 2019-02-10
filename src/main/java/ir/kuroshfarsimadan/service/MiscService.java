package ir.kuroshfarsimadan.service;

import org.springframework.security.access.prepost.PreAuthorize;

public interface MiscService {

	@PreAuthorize("hasRole('ROLE_ADMIN')")
	public abstract void serviceForAdmin();

	@PreAuthorize("isAuthenticated()")
	public abstract void serviceForLoggedInUsers();

	@PreAuthorize("permitAll")
	public abstract void serviceForAll();
	
}