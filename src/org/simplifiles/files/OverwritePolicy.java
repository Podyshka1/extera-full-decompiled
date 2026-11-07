package org.simplifiles.files;

import com.google.android.gms.cast.MediaError;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import okhttp3.internal.url._UrlKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lorg/simplifiles/files/OverwritePolicy;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;I)V", MediaError.ERROR_TYPE_ERROR, "REPLACE", "SKIP", "simplifiles"}, m910k = 1, mv = {2, 3, 0}, xi = 48)
public final class OverwritePolicy {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ OverwritePolicy[] $VALUES;
    public static final OverwritePolicy ERROR = new OverwritePolicy(MediaError.ERROR_TYPE_ERROR, 0);
    public static final OverwritePolicy REPLACE = new OverwritePolicy("REPLACE", 1);
    public static final OverwritePolicy SKIP = new OverwritePolicy("SKIP", 2);

    private static final /* synthetic */ OverwritePolicy[] $values() {
        return new OverwritePolicy[]{ERROR, REPLACE, SKIP};
    }

    public static OverwritePolicy valueOf(String str) {
        return (OverwritePolicy) Enum.valueOf(OverwritePolicy.class, str);
    }

    public static OverwritePolicy[] values() {
        return (OverwritePolicy[]) $VALUES.clone();
    }

    private OverwritePolicy(String str, int i) {
    }

    static {
        OverwritePolicy[] overwritePolicyArr$values = $values();
        $VALUES = overwritePolicyArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(overwritePolicyArr$values);
    }
}
