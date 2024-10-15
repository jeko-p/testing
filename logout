// Tidak perlu menulis banyak kode manual untuk log out jika menggunakan Spring Security
// Konfigurasi di file security configuration:
@Override
protected void configure(HttpSecurity http) throws Exception {
    http
        .logout(logout -> logout
            .logoutUrl("/logout")
            .logoutSuccessUrl("/login")
        );
}
