package ar.edu.ubp.das.indecrest.batch.factory;

import ar.edu.ubp.das.indecrest.batch.base.BaseSupermarketProvider;
import ar.edu.ubp.das.indecrest.batch.contracts.ISupermarketFactory;
import ar.edu.ubp.das.indecrest.batch.contracts.ISupermarketProvider;
import ar.edu.ubp.das.indecrest.batch.providers.RestSupermarketProvider;
import ar.edu.ubp.das.indecrest.batch.providers.SoapSupermarketProvider;
import ar.edu.ubp.das.indecrest.batch.constants.SupermarketTypes;

public class SupermarketFactory implements ISupermarketFactory {
    public SupermarketFactory() {
    }

    public ISupermarketProvider GetProvider(SupermarketTypes providerType) {
        return switch (providerType) {
            case REST -> new RestSupermarketProvider();
            case WS -> new SoapSupermarketProvider();
            default -> new BaseSupermarketProvider();
        };
    }
}
