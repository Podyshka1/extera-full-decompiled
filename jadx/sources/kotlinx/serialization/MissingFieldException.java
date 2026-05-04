package kotlinx.serialization;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class MissingFieldException extends SerializationException {
    private final List missingFields;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MissingFieldException(List missingFields, String str, Throwable th) {
        super(str, th);
        Intrinsics.checkNotNullParameter(missingFields, "missingFields");
        this.missingFields = missingFields;
    }

    public final List getMissingFields() {
        return this.missingFields;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MissingFieldException(List missingFields, String serialName) {
        String str;
        Intrinsics.checkNotNullParameter(missingFields, "missingFields");
        Intrinsics.checkNotNullParameter(serialName, "serialName");
        if (missingFields.size() == 1) {
            str = "Field '" + ((String) missingFields.get(0)) + "' is required for type with serial name '" + serialName + "', but it was missing";
        } else {
            str = "Fields " + missingFields + " are required for type with serial name '" + serialName + "', but they were missing";
        }
        this(missingFields, str, null);
    }
}
