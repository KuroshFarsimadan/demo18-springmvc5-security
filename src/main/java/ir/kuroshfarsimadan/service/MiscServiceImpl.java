package ir.kuroshfarsimadan.service;

import org.springframework.stereotype.Service;

@Service
public class MiscServiceImpl implements MiscService {

	public void serviceForAdmin() {
		System.out.println("misc admins");
	}

	public void serviceForLoggedInUsers() {
		System.out.println("misc loggedin");
	}

	public void serviceForAll() {
		System.out.println("misc all");
	}

}
