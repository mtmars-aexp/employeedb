package com.avn;

import org.flywaydb.core.Flyway;

public class Main {

    public static void main(String[] args){

        System.out.println("hewwo world uwu");

        Flyway flyway = Flyway.configure().dataSource(
                "jdbc:mysql://localhost:3306/employment_db?serverTimezone=UTC",
                "root",
                "amex1234").load();
        flyway.migrate();

    }

}
