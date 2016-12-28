@isTest 
public class AnimalLocatorTest {
    @isTest static void testPostCallout() {
    // Set mock callout class 
    Test.setMock(HttpCalloutMock.class, new AnimalLocatorMock()); 
    // This causes a fake response to be sent
    // from the class that implements HttpCalloutMock. 
   // HttpResponse response = AnimalLocator.getAnimalNameById(1);
   string animal_name = AnimalLocator.getAnimalNameById(1);

        string act_animal = 'chicken';
    system.assertEquals(animal_name, act_animal);
}

}