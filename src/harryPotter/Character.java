package harryPotter;

public class Character {
    private String name;
    private String nationality;
    private String blood;
    private String house;

    //Constructor
    public Character(String name, String nationality, String blood, String house) {
        this.name = name;
        this.nationality = nationality;
        this.blood = blood;
        this.house = house;
    }

    //Getters y Setters
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getNationality() {
        return nationality;
    }

    public void setNationality(String nationality) {
        this.nationality = nationality;
    }

    public String getBlood() {
        return blood;
    }

    public void setBlood(String blood) {
        this.blood = blood;
    }

    public String getHouse() {
        return house;
    }

    public void setHouse(String house) {
        this.house = house;
    }

    //Métdo de lógica de negocio para probar con JUnit
    public String obtenerCasa(){
        if (house == null || house.trim().isEmpty()){
            return "No information";
        }
        return house;
    }

    //Métdo para validar que el personaje tiene un nombre válido
    public boolean nombreValido(){
        return name != null && !name.trim().isEmpty();
    }

}
