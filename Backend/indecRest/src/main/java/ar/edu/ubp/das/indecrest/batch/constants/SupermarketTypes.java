package ar.edu.ubp.das.indecrest.batch.constants;

public enum SupermarketTypes {
    REST("Rest"),
    WS("WS");

    private final String value;

    SupermarketTypes(String value) {
        this.value = value;
    }

    public String getValue() {
        return value;
    }

    public static SupermarketTypes fromValue(String value) {
        for (SupermarketTypes type : SupermarketTypes.values()) {
            if (type.getValue().equalsIgnoreCase(value)) {
                return type;
            }
        }
        throw new IllegalArgumentException("No enum constant with value: " + value);
    }
}
