public class ParkLocator {

    public static List<String> country(string country)
    {
        List<String> park_list = new List<String>();
        return new ParkService.ParksImplPort().byCountry(country);
    }
}