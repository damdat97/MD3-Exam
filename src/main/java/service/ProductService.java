package service;

import java.sql.SQLException;
import java.util.List;

public interface ProductService<Product> {
    public void add(Product product) throws SQLException;

    public Product findById(int id);

    public List<Product> findAll();

    public List<Product> findByName(String name);

    public List<Product> findAllOrderByAge();

    public boolean delete(int id) throws SQLException;

    public boolean update(Product product) throws SQLException;
}
