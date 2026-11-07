package androidx.car.app.versioning;

import com.android.dex.EncodedValueReader$$ExternalSyntheticBUOutline0;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Objects;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CarAppApiLevels {
    public static int getOldest() {
        return 1;
    }

    public static boolean isValid(int i) {
        return i >= getOldest() && i <= getLatest();
    }

    public static int getLatest() {
        ClassLoader classLoader = CarAppApiLevels.class.getClassLoader();
        Objects.requireNonNull(classLoader);
        InputStream resourceAsStream = classLoader.getResourceAsStream("car-app-api.level");
        if (resourceAsStream == null) {
            EncodedValueReader$$ExternalSyntheticBUOutline0.m221m("Car API level file %s not found", new Object[]{"car-app-api.level"});
            return 0;
        }
        try {
            String line = new BufferedReader(new InputStreamReader(resourceAsStream)).readLine();
            int i = Integer.parseInt(line);
            if (i >= 1 && i <= 7) {
                return i;
            }
            throw new IllegalStateException("Unrecognized Car API level: " + line);
        } catch (IOException unused) {
            Segment$$ExternalSyntheticBUOutline1.m973m("Unable to read Car API level file");
            return 0;
        }
    }
}
