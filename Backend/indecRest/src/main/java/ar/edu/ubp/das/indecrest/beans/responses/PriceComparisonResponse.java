package ar.edu.ubp.das.indecrest.beans.responses;

import java.util.List;

public class PriceComparisonResponse {
    private String supermarketName;
    private int totalProducts;
    private double totalAmount;
    private List<Object> comparison;

    // Getters and setters
    public String getSupermarketName() {
        return supermarketName;
    }

    public void setSupermarketName(String supermarketName) {
        this.supermarketName = supermarketName;
    }

    public int getTotalProducts() {
        return totalProducts;
    }

    public void setTotalProducts(int totalProducts) {
        this.totalProducts = totalProducts;
    }

    public double getTotalAmount() {
        return totalAmount;
    }

    public void setTotalAmount(double totalAmount) {
        this.totalAmount = totalAmount;
    }

    public List<Object> getComparison() {
        return comparison;
    }

    public void setComparison(List<Object> comparison) {
        this.comparison = comparison;
    }
}
