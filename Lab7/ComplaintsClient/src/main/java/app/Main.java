package app;

import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.Entity;
import javax.ws.rs.core.MediaType;
import org.json.JSONArray;
import org.json.JSONObject;

public class Main {
    
    public static void main(String[] args) {
     Client client = ClientBuilder.newClient();
     String count = client.target("http://localhost:8080/Complaints/resources/complaints/count")
             .request(MediaType.TEXT_PLAIN)
             .get(String.class);
     
    System.out.println("Count: " + count);
    
    String allComplaints = client.target("http://localhost:8080/Complaints/resources/complaints")
            .request(MediaType.APPLICATION_JSON)
            .get(String.class);
    
    System.out.println("All complaints: " + allComplaints);
    
    JSONArray complaintsArray = new JSONArray(allComplaints);
    Integer id = 0;
    for (int i = 0; i < complaintsArray.length(); i++) {
        JSONObject complaint = complaintsArray.getJSONObject(i);
        String status = complaint.getString("status");
        if ("open".equals(status)) {
            id = complaint.getInt("id");
            break;
        }
    }
    
    if (id != 0) {
        String openComplaint = client.target("http://localhost:8080/Complaints/resources/complaints/" + id)
                .request(MediaType.APPLICATION_JSON)
                .get(String.class);
        
        System.out.println("Open complaint: " + openComplaint);
        
        JSONObject complaintJson = new JSONObject(openComplaint);
        complaintJson.put("status", "closed");
        
        client.target("http://localhost:8080/Complaints/resources/complaints/" + id)
                .request(MediaType.APPLICATION_JSON)
                .put(Entity.json(complaintJson.toString()));
        
    }
    
    allComplaints = client.target("http://localhost:8080/Complaints/resources/complaints?status=open")
            .request(MediaType.APPLICATION_JSON)
            .get(String.class);
    
    System.out.println("All open complaints: " + allComplaints);
    
    client.close();
    }
}
