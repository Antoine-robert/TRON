package dao;

import java.sql.CallableStatement;
import java.sql.SQLException;

/**
 * <h1>The Class ExampleDAO.</h1>
 *
 * @author Jean-Aymeric DIET jadiet@cesi.fr
 * @version 1.0
 */
public class TronDB extends AbstractDAO {

    /** The sql example by id. */
    private static String call = "{call addgame(?, ?)}";

    /**
     * save game in DB
     *
     * @param player the player (1 or 2)
     * @param seconds 
     * @return boolean
     * @throws SQLException
     *             the SQL exception
     */
    public static boolean addgame(final int player, final int seconds) throws SQLException {
        final CallableStatement callStatement = prepareCall(call);
        callStatement.setInt(1, player);
        callStatement.setInt(2, seconds);
        if(callStatement.execute()) return true;
        else return false;
    }
    
}
