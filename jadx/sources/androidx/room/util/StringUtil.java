package androidx.room.util;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public abstract class StringUtil {
    public static final String[] EMPTY_STRING_ARRAY = new String[0];

    public static final void appendPlaceholders(StringBuilder builder, int i) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        for (int i2 = 0; i2 < i; i2++) {
            builder.append("?");
            if (i2 < i - 1) {
                builder.append(",");
            }
        }
    }
}
