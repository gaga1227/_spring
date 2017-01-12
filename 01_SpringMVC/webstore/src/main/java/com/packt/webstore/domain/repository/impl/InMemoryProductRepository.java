package com.packt.webstore.domain.repository.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import com.packt.webstore.domain.Product;
import com.packt.webstore.domain.repository.ProductRepository;

@Repository
public class InMemoryProductRepository implements ProductRepository {

	@Autowired
	private NamedParameterJdbcTemplate jdbcTemplate;

	@Override
	public List<Product> getAllProducts() {
		Map<String, Object> params = new HashMap<>();
		String SQL = "SELECT * FROM PRODUCTS";
		List<Product> result = jdbcTemplate.query(SQL, params, new ProductMapper());

		return result;
	}

	@Override
	public List<Product> getProductsByCategory(String category) {
		Map<String, Object> params = new HashMap<>();
		params.put("category", category);
		String SQL = "SELECT * FROM PRODUCTS WHERE LOWER(CATEGORY) = LOWER(:category)";
		List<Product> result = jdbcTemplate.query(SQL, params, new ProductMapper());

		return result;
	}

	@Override
	public List<Product> getProductsByFilter(Map<String, List<String>> filterParams) {
		String SQL = "SELECT * FROM PRODUCTS WHERE CATEGORY IN (:categories) AND MANUFACTURER IN (:brands)";
		List<Product> result = jdbcTemplate.query(SQL, filterParams, new ProductMapper());

		return result;
	}

	@Override
	public Product getProductById(String productID) {
		Map<String, Object> params = new HashMap<>();
		params.put("id", productID);
		String SQL = "SELECT * FROM PRODUCTS WHERE ID = :id";
		Product result = jdbcTemplate.queryForObject(SQL, params, new ProductMapper());

		return result;
	}

	@Override
	public void updateStock(String productId, long noOfUnits) {
		Map<String, Object> params = new HashMap<>();
		params.put("id", productId);
		params.put("unitsInStock", noOfUnits);
		String SQL = "UPDATE PRODUCTS SET UNITS_IN_STOCK = :unitsInStock WHERE ID = :id";

		jdbcTemplate.update(SQL, params);
	}

	private static final class ProductMapper implements RowMapper<Product> {
		public Product mapRow(ResultSet rs, int rowNum) throws SQLException {
			Product product = new Product();
			product.setProductId(rs.getString("ID"));
			product.setName(rs.getString("NAME"));
			product.setDescription(rs.getString("DESCRIPTION"));
			product.setUnitPrice(rs.getBigDecimal("UNIT_PRICE"));
			product.setManufacturer(rs.getString("MANUFACTURER"));
			product.setCategory(rs.getString("CATEGORY"));
			product.setCondition(rs.getString("CONDITION"));
			product.setUnitsInStock(rs.getLong("UNITS_IN_STOCK"));
			product.setUnitsInOrder(rs.getLong("UNITS_IN_ORDER"));
			product.setDiscontinued(rs.getBoolean("DISCONTINUED"));
			return product;
		}
	}
}
