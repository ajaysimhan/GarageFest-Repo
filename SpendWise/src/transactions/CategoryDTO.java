package transactions;

public class CategoryDTO {
        
    int categoryId;
    String description;
    String indicator;
    
    public int getCategoryId() {
        return categoryId;
    }
    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }
    public String getDescription() {
        return description;
    }
    public void setDescription(String description) {
        this.description = description;
    }
    public String getIndicator() {
        return indicator;
    }
    public void setIndicator(String indicator) {
        this.indicator = indicator;
    }
    
}
