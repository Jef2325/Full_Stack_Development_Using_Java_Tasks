package emp_mng.emp_test;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class employeeService {

    private final employeeRepository repo;

    @Autowired
    public employeeService(employeeRepository repo) {
        this.repo = repo;
    }

    public void addEmployee(int id, String name, String dept) {
        repo.save(new employee(id, name, dept));
    }

    public employee getemployee(int id) {
    	return repo.fingById(id);
    }

    public List<employee> getAllEmployees() {
        return repo.findAll();
    }

    public boolean removeEmployee(int id) {
        return repo.deleteById(id);
    }
}