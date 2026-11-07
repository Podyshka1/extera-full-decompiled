package org.simplifiles.archive;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import okhttp3.internal.url._UrlKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lorg/simplifiles/archive/ArchiveFormat;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;I)V", "ZIP", "simplifiles"}, m910k = 1, mv = {2, 3, 0}, xi = 48)
public final class ArchiveFormat {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ArchiveFormat[] $VALUES;
    public static final ArchiveFormat ZIP = new ArchiveFormat("ZIP", 0);

    private static final /* synthetic */ ArchiveFormat[] $values() {
        return new ArchiveFormat[]{ZIP};
    }

    public static ArchiveFormat valueOf(String str) {
        return (ArchiveFormat) Enum.valueOf(ArchiveFormat.class, str);
    }

    public static ArchiveFormat[] values() {
        return (ArchiveFormat[]) $VALUES.clone();
    }

    private ArchiveFormat(String str, int i) {
    }

    static {
        ArchiveFormat[] archiveFormatArr$values = $values();
        $VALUES = archiveFormatArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(archiveFormatArr$values);
    }
}
