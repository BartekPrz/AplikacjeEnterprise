package ejb;

import java.util.List;
import javax.ejb.Local;


@Local
public interface NewsItemFacadeLocal {
    
    public List<NewsItem> getAllNewsItems();
}
