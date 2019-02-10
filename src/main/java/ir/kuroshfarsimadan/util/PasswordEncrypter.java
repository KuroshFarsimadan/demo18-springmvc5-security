package ir.kuroshfarsimadan.util;

import java.util.Scanner;

import org.springframework.security.crypto.password.StandardPasswordEncoder;

public class PasswordEncrypter {

	/**
	 * @param args
	 */
	@SuppressWarnings("resource")
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		StandardPasswordEncoder spe = new StandardPasswordEncoder();
		System.out.print("Give password: ");
		String password = scanner.nextLine();
		String encrypted = spe.encode(password);
		System.out.println("Your password is encrypted with random salt: " + encrypted);
	}

}
