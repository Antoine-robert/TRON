package fr.exia.tron;

import java.sql.SQLException;

import dao.TronDB;

public abstract class App 
{
    public static void main( String[] args )
    {
        System.out.println( "Hello World!" );
        
        try {
        	TronDB.addgame(1, 55);
        } catch(final SQLException e) {
        	e.printStackTrace();
        }
    }
}