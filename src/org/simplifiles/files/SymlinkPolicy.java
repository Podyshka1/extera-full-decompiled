package org.simplifiles.files;

import com.google.android.gms.cast.MediaError;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import okhttp3.internal.url._UrlKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lorg/simplifiles/files/SymlinkPolicy;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;I)V", "SKIP", MediaError.ERROR_TYPE_ERROR, "FOLLOW", "simplifiles"}, m862k = 1, mv = {2, 3, 0}, xi = 48)
public final class SymlinkPolicy {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ SymlinkPolicy[] $VALUES;
    public static final SymlinkPolicy SKIP = new SymlinkPolicy("SKIP", 0);
    public static final SymlinkPolicy ERROR = new SymlinkPolicy(MediaError.ERROR_TYPE_ERROR, 1);
    public static final SymlinkPolicy FOLLOW = new SymlinkPolicy("FOLLOW", 2);

    private static final /* synthetic */ SymlinkPolicy[] $values() {
        return new SymlinkPolicy[]{SKIP, ERROR, FOLLOW};
    }

    public static SymlinkPolicy valueOf(String str) {
        return (SymlinkPolicy) Enum.valueOf(SymlinkPolicy.class, str);
    }

    public static SymlinkPolicy[] values() {
        return (SymlinkPolicy[]) $VALUES.clone();
    }

    private SymlinkPolicy(String str, int i) {
    }

    static {
        SymlinkPolicy[] symlinkPolicyArr$values = $values();
        $VALUES = symlinkPolicyArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(symlinkPolicyArr$values);
    }
}
