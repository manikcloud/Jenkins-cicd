package CodeCoverageDemo;
import org.junit.Test;
import static org.junit.Assert.assertEquals;

public class OperationsTest {

        @Test
        public void testAdd()
        {
                Operations operations = new Operations();
                Integer actual = operations.add(2, 6);
                Integer expected = 8;
                assertEquals(expected, actual);
        }
}
