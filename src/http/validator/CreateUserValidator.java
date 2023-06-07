package http.validator;

import http.dto.CreateUserDto;
import http.util.LocalDateFormatter;

public class CreateUserValidator implements Validator<CreateUserDto> {

    private static final CreateUserValidator INSTANCE = new CreateUserValidator();

    @Override
    public ValidationResult isValid(CreateUserDto object) {
        var validationResult = new ValidationResult();
        if(object.getName().isEmpty()) {
            validationResult.add(Error.of("invalid.name", "Name is invalid"));
        }
        if(!LocalDateFormatter.isValid(object.getBirthday())) {
            validationResult.add(Error.of("invalid.birthday", "Birthday is invalid"));
        }
        if(object.getEmail().isEmpty()) {
            validationResult.add(Error.of("invalid.email", "Email is invalid"));
        }
        if(object.getPassword().isEmpty()) {
            validationResult.add(Error.of("invalid.password", "Password is invalid"));
        }
        if(object.getGender() == null) {
            validationResult.add(Error.of("invalid.gender", "Gender is invalid"));
        }
        return validationResult;
    }

    public static CreateUserValidator getInstance() {
        return INSTANCE;
    }
}
