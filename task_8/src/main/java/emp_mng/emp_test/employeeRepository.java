package emp_mng.emp_test;

import java.util.*;
import org.springframework.stereotype.Component;

@Component
public class employeeRepository {
	private final Map <Integer,employee> store = new HashMap<>();
public void save(employee e) {
	store.put(e.getId(), e);
}
public employee fingById(int id) {
	return store.get(id);
}
public List<employee>findAll(){
	return new ArrayList<>(store.values());
}

public boolean deleteById(int id) {
	return store.remove(id)!= null;
}
}
