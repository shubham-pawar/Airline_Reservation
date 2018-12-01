package com.dao;

/**
 * The implementation class of DAO interface class
 */
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.sql.Date;
import java.util.List;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.model.Flight;
import com.model.Login;
import com.model.User;

public class UserDaoImpl implements UserDao {
	@Autowired
	DataSource datasource;
	@Autowired
	JdbcTemplate jdbcTemplate;

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	public int register(User u) {
		String query = "insert into gr14_passengers(gp_title,gp_fname,gp_lname,gp_email,gp_password,gp_phone) values('"
				+ u.getTitle() + "','" + u.getFname() + "','" + u.getLname() + "','" + u.getEmail() + "','"
				+ u.getPassword() + "','" + u.getPhone() + "')";
		return jdbcTemplate.update(query);
	}

	public User validateUser(Login login) {
		String sql = "select * from gr14_passengers where gp_fname='" + login.getUsername() + "' and gp_password='"
				+ login.getPassword() + "'";
		List<User> users = jdbcTemplate.query(sql, new UserMapper());
		return users.size() > 0 ? users.get(0) : null;
	}

	public int add(Flight flight) {

		String query = "insert into gr14_flights(gf_flightnumber,gf_source,gf_destination,gf_depart,gf_arrive,gf_duration,gf_price,gf_flydate) values('"
				+ flight.getFlightnumber() + "','" + flight.getSource() + "','" + flight.getDestination() + "','"
				+ flight.getDepart() + "','" + flight.getArrive() + "','" + flight.getDuration() + "','"
				+ flight.getPrice() + "'," + "TO_DATE('" + flight.getFlydate() + "','yyyy-mm-dd')" + ")";
		System.out.println("add=" + flight.getFlydate());
		return jdbcTemplate.update(query);
	}

	public List<Flight> list() {

		String sql = "select * from gr14_flights";
		List<Flight> listFlight = jdbcTemplate.query(sql, new RowMapper<Flight>() {
			public Flight mapRow(ResultSet rs, int arg1) throws SQLException {
				Flight aFlight = new Flight();
				aFlight.setFlightnumber(rs.getString("gf_flightnumber"));
				aFlight.setSource(rs.getString("gf_source"));
				aFlight.setDestination(rs.getString("gf_destination"));
				aFlight.setDepart(rs.getString("gf_depart"));
				aFlight.setArrive(rs.getString("gf_arrive"));
				aFlight.setDuration(rs.getString("gf_duration"));
				aFlight.setPrice(rs.getString("gf_price"));
				aFlight.setFlydate(rs.getDate("gf_flydate"));
				return aFlight;
			}
		});
		return listFlight;
	}

	public List<Flight> searchFlight(Flight flight) {
		// DateFormat df = new SimpleDateFormat("MM-dd-yyyy");
		String sql = "select * from gr14_flights where gf_source='" + flight.getSource() + "' And gf_destination='"
				+ flight.getDestination() + "'and gf_flydate>=" + "TO_DATE('" + flight.getFlydate() + "','yyyy-mm-dd' "
				+ ")";
		/*
		 * String sql = "select * from gr14_flights where gf_source='" +
		 * flight.getSource() + "' And gf_destination='" + flight.getDestination() +
		 * "'and gf_flydate>="+"TO_CHAR('29-NOV-18')";
		 */
		System.out.println("flight=" + flight.getFlydate() + "\t" + flight.getDestination());
		List<Flight> users = jdbcTemplate.query(sql, new FlightMapper());
		// System.out.println("flight: "+df.format(flight.getFlydate()));
		return users;
	}

	class UserMapper implements RowMapper<User> {
		public User mapRow(ResultSet rs, int arg1) throws SQLException {
			User user = new User();
			user.setFname(rs.getString("gp_fname"));
			user.setPassword(rs.getString("gp_password"));
			/*
			 * user.setFirstname(rs.getString("firstname"));
			 * user.setLastname(rs.getString("lastname"));
			 * user.setEmail(rs.getString("email"));
			 * user.setAddress(rs.getString("address")); user.setPhone(rs.getInt("phone"));
			 */
			return user;
		}
	}

	class FlightMapper implements RowMapper<Flight> {
		public Flight mapRow(ResultSet rs, int arg1) throws SQLException {
			Flight flight = new Flight();
			flight.setFlightnumber(rs.getString("gf_flightnumber"));
			flight.setSource(rs.getString("gf_source"));
			flight.setDestination(rs.getString("gf_destination"));
			flight.setDepart(rs.getString("gf_depart"));
			flight.setArrive(rs.getString("gf_arrive"));
			flight.setDuration(rs.getString("gf_duration"));
			flight.setPrice(rs.getString("gf_price"));
			flight.setFlydate(rs.getDate("gf_flydate"));
			return flight;
		}
	}

	public int forgetUser(Login login) {
		String query="update gr14_passengers set gp_password='"+ login.getPassword()+"' where gp_fname='"+login.getUsername()+"'";
		return jdbcTemplate.update(query);
	}
}
