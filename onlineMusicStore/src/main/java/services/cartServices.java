package services;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import java.sql.PreparedStatement;

import model.Music;
import model.cart;
import utils.DBConnect;

public class cartServices {
	public void regCart(cart crt) {
		try {
			String query = "insert into cart values('"+crt.getMusicid()+"','"+crt.getMusictype()+"','"+crt.getMusicquality()+"')";
			
			Statement statment = DBConnect.getConnection().createStatement();
			statment.executeUpdate(query);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<cart> getAllCart(){
		try {
			ArrayList<cart> listCrt = new ArrayList<cart>();
			
			String query = "select * from cart";
			
			Statement statement = DBConnect.getConnection().createStatement();
			ResultSet rs = statement.executeQuery(query);
			while(rs.next()) {
				cart crt = new cart();
				crt.setMusicid(rs.getString("musicid"));
				crt.setMusictype(rs.getString("musictype"));
				crt.setMusicquality(rs.getString("musicquality"));
				listCrt.add(crt);
			}
			return listCrt;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public void deleteCart(cart crt) {
		try {
			
			String query = "Delete from cart where Musicid = '"+crt.getMusicid()+"'";
			
			Statement statement = DBConnect.getConnection().createStatement();
			statement.executeUpdate(query);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<Music>getAllMusic(){
		try {
			ArrayList<Music> listMus = new ArrayList<Music>();
			
			String query = "select * from music";
			
			Statement statement = DBConnect.getConnection().createStatement();
			ResultSet rs = statement.executeQuery(query);
			while(rs.next()) {
				Music mus = new Music();
				mus.setMusicid(rs.getString("musicid"));
				mus.setMusicname(rs.getString("musicname"));
				mus.setArtist(rs.getString("artist"));
				listMus.add(mus);
			}
			return listMus;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public void updateCart(cart crt) {
		try {
			String query = "UPDATE cart SET Musicid = ?, MusicType = ?, MusicQuality = ? WHERE Musicid = ?";
			
			PreparedStatement statement	= DBConnect.getConnection().prepareStatement(query);
			
			statement.setString(1, crt.getMusicid());
			statement.setString(2, crt.getMusictype());
			statement.setString(3, crt.getMusicquality());
			statement.setString(4, crt.getMusicid());
			
			System.out.println(statement);
			statement.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}