package emp_mng.emp_test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class App 
{
    public static void main( String[] args )
    {
    	ApplicationContext context = new AnnotationConfigApplicationContext(AppConfig.class);
    	employeeService service = context.getBean(employeeService.class);
		service.addEmployee(101,"Anand","CSE");
		service.addEmployee(102,"Divya","ECE");
		service.addEmployee(103,"Ravi","IT");
		
		System.out.println("All Employee");
		service.getAllEmployees().forEach(System.out::println);
		System.out.println("\n Find Employee 102");
		System.out.println(service.getemployee(102));
		System.out.println("\n Delete Employee 101");
		System.out.println("Delete?" + service.removeEmployee(101));
		System.out.println("\n All Employee After Delete");
		service.getAllEmployees().forEach(System.out::println);
    }
}
