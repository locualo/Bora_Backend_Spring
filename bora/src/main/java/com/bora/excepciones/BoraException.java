package com.bora.excepciones;

public class BoraException extends RuntimeException {

    public enum DatabaseExceptionType {
        DATABASE_ERROR_MESSAGE("Error de base de datos."),
        PAIS_NOT_FOUND("País no encontrado."),
        TEMPORADA_NOT_FOUND("Temporada no encontrada."),
        CATEGORIA_NOT_FOUND("Categoría no encontrada."),
        CARRERA_NOT_FOUND("Carrera no encontrada."),
        CORREDOR_NOT_FOUND("Corredor no encontrado."),
        TEMPORADA_CORREDOR_NOT_FOUND("No se ha encontrado asociación entre temporada y corredor."),
        VICTORIA_NOT_FOUND("Victoria no encontrada."),
        PUNTUACION_CATEGORIA_NOT_FOUND("Puntuación de categoría no encontrada."),
        PUNTUACION_CATEGORIA_MULTIPLE("Múltiples puntuaciones de categoría encontradas.");

        private final String message;

        DatabaseExceptionType(String message) {
            this.message = message;
        }

        public String getMessage() {
            return message;
        }
    }

    public BoraException(String message) {
        super(message);
    }

    public BoraException(String message, Throwable cause) {
        super(message, cause);
    }

    public BoraException(String message, String cause) {
        super(message + " Cause: " + cause);
    }
}