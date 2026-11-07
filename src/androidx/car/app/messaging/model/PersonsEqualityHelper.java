package androidx.car.app.messaging.model;

import androidx.core.app.Person;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
abstract class PersonsEqualityHelper {
    public static int getPersonHashCode(Person person) {
        if (person == null) {
            return 0;
        }
        String key = person.getKey();
        if (key != null) {
            return key.hashCode();
        }
        return Objects.hash(person.getName(), person.getUri(), Boolean.valueOf(person.isBot()), Boolean.valueOf(person.isImportant()));
    }

    public static boolean arePersonsEqual(Person person, Person person2) {
        if (person == null && person2 == null) {
            return true;
        }
        if (person == null || person2 == null) {
            return false;
        }
        String key = person.getKey();
        String key2 = person2.getKey();
        if (key == null && key2 == null) {
            return Objects.equals(Objects.toString(person.getName()), Objects.toString(person2.getName())) && Objects.equals(person.getUri(), person2.getUri()) && Boolean.valueOf(person.isBot()).equals(Boolean.valueOf(person2.isBot())) && Boolean.valueOf(person.isImportant()).equals(Boolean.valueOf(person2.isImportant()));
        }
        return Objects.equals(key, key2);
    }
}
