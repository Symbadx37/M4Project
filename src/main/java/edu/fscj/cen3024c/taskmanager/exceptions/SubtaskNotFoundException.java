// SubtaskNotFoundException.java
// Jonathan Townsend
// 9/23/26
// Exception for handling Subtask not found cases

package edu.fscj.cen3024c.taskmanager.exceptions;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(HttpStatus.NOT_FOUND)
public class SubtaskNotFoundException extends RuntimeException{
    public SubtaskNotFoundException(Integer id) {
        super("Subtask not found with id " + id);
    }
}
