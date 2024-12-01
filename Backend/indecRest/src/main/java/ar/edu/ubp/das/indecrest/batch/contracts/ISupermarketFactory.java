package ar.edu.ubp.das.indecrest.batch.contracts;

import ar.edu.ubp.das.indecrest.batch.constants.SupermarketTypes;

public interface ISupermarketFactory {
    ISupermarketProvider GetProvider(SupermarketTypes providerType);
}
