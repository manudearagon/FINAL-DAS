package ar.edu.ubp.das.indecrest.repositories;
import ar.edu.ubp.das.indecrest.beans.responses.CategoryResponse;
import ar.edu.ubp.das.indecrest.components.SimpleJdbcCallFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CategoriasRepository {

    @Autowired
    private SimpleJdbcCallFactory jdbcCallFactory;

    public List<CategoryResponse> getCategorias(String idioma) {
        SqlParameterSource params = new MapSqlParameterSource()
                .addValue("codIdioma", idioma);
        return jdbcCallFactory.executeQuery(
                "sp_obtener_categorias_productos_por_idioma", "dbo", params, "categorias", CategoryResponse.class
        );

    }
}
