package web;

import ejb.NewsItem;
import ejb.NewsItemFacadeLocal;
import java.util.List;
import javax.annotation.Resource;
import javax.inject.Named;
import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.jms.JMSContext;
import javax.jms.JMSException;
import javax.jms.Queue;
import javax.jms.TextMessage;


@Named(value = "newsBean")
@RequestScoped
public class NewsBean {

    private String headingText;
    private String bodyText;
    
    @Inject
    private NewsItemFacadeLocal facade;
    
    @Inject
    private JMSContext context;
    
    @Resource(lookup="java:app/jms/NewsQueue")
    private Queue queue;
    
    /**
     * Creates a new instance of NewsBean
     */
    public NewsBean() {
    }
    
    void sendNewsItem(String heading, String body) {
        try {
            String textMessage = heading + "|" + body;
            TextMessage message = context.createTextMessage();
            message.setText(textMessage);
            
            context.createProducer().send(queue, message);
        } catch (JMSException ex) {
            ex.printStackTrace();
        }
    }
    
    public List<NewsItem> getNewsItems() {
        return facade.getAllNewsItems();
    }

    public String submitNews() {
        sendNewsItem(headingText, bodyText);
        return null;
    }
    
    /**
     * @return the headingText
     */
    public String getHeadingText() {
        return headingText;
    }

    /**
     * @param headingText the headingText to set
     */
    public void setHeadingText(String headingText) {
        this.headingText = headingText;
    }

    /**
     * @return the bodyText
     */
    public String getBodyText() {
        return bodyText;
    }

    /**
     * @param bodyText the bodyText to set
     */
    public void setBodyText(String bodyText) {
        this.bodyText = bodyText;
    }
}
