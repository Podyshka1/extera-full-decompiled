package org.simplifiles.files;

import com.google.android.gms.cast.MediaError;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import okhttp3.internal.url._UrlKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lorg/simplifiles/files/DirectoryOverwritePolicy;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;I)V", MediaError.ERROR_TYPE_ERROR, "REPLACE", "SKIP", "MERGE", "simplifiles"}, m910k = 1, mv = {2, 3, 0}, xi = 48)
public final class DirectoryOverwritePolicy {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ DirectoryOverwritePolicy[] $VALUES;
    public static final DirectoryOverwritePolicy ERROR = new DirectoryOverwritePolicy(MediaError.ERROR_TYPE_ERROR, 0);
    public static final DirectoryOverwritePolicy REPLACE = new DirectoryOverwritePolicy("REPLACE", 1);
    public static final DirectoryOverwritePolicy SKIP = new DirectoryOverwritePolicy("SKIP", 2);
    public static final DirectoryOverwritePolicy MERGE = new DirectoryOverwritePolicy("MERGE", 3);

    private static final /* synthetic */ DirectoryOverwritePolicy[] $values() {
        return new DirectoryOverwritePolicy[]{ERROR, REPLACE, SKIP, MERGE};
    }

    public static DirectoryOverwritePolicy valueOf(String str) {
        return (DirectoryOverwritePolicy) Enum.valueOf(DirectoryOverwritePolicy.class, str);
    }

    public static DirectoryOverwritePolicy[] values() {
        return (DirectoryOverwritePolicy[]) $VALUES.clone();
    }

    private DirectoryOverwritePolicy(String str, int i) {
    }

    static {
        DirectoryOverwritePolicy[] directoryOverwritePolicyArr$values = $values();
        $VALUES = directoryOverwritePolicyArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(directoryOverwritePolicyArr$values);
    }
}
