package org.simplifiles.archive.security;

import com.google.android.gms.cast.MediaError;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import okhttp3.internal.url._UrlKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lorg/simplifiles/archive/security/DuplicatePolicy;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;I)V", MediaError.ERROR_TYPE_ERROR, "KEEP_FIRST", "KEEP_LAST", "RENAME", "simplifiles"}, m910k = 1, mv = {2, 3, 0}, xi = 48)
public final class DuplicatePolicy {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ DuplicatePolicy[] $VALUES;
    public static final DuplicatePolicy ERROR = new DuplicatePolicy(MediaError.ERROR_TYPE_ERROR, 0);
    public static final DuplicatePolicy KEEP_FIRST = new DuplicatePolicy("KEEP_FIRST", 1);
    public static final DuplicatePolicy KEEP_LAST = new DuplicatePolicy("KEEP_LAST", 2);
    public static final DuplicatePolicy RENAME = new DuplicatePolicy("RENAME", 3);

    private static final /* synthetic */ DuplicatePolicy[] $values() {
        return new DuplicatePolicy[]{ERROR, KEEP_FIRST, KEEP_LAST, RENAME};
    }

    public static DuplicatePolicy valueOf(String str) {
        return (DuplicatePolicy) Enum.valueOf(DuplicatePolicy.class, str);
    }

    public static DuplicatePolicy[] values() {
        return (DuplicatePolicy[]) $VALUES.clone();
    }

    private DuplicatePolicy(String str, int i) {
    }

    static {
        DuplicatePolicy[] duplicatePolicyArr$values = $values();
        $VALUES = duplicatePolicyArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(duplicatePolicyArr$values);
    }
}
