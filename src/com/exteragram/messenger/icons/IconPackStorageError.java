package com.exteragram.messenger.icons;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import okhttp3.internal.url._UrlKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\r\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\r¨\u0006\u000e"}, d2 = {"Lcom/exteragram/messenger/icons/IconPackStorageError;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;I)V", "INVALID_ARCHIVE", "MISSING_METADATA", "METADATA_TOO_LARGE", "INVALID_METADATA", "TOO_MANY_FILES", "ARCHIVE_TOO_LARGE", "FILE_TOO_LARGE", "COMPRESSION_RATIO_TOO_HIGH", "STORAGE_ERROR", "UNKNOWN", "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
public final class IconPackStorageError {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ IconPackStorageError[] $VALUES;
    public static final IconPackStorageError INVALID_ARCHIVE = new IconPackStorageError("INVALID_ARCHIVE", 0);
    public static final IconPackStorageError MISSING_METADATA = new IconPackStorageError("MISSING_METADATA", 1);
    public static final IconPackStorageError METADATA_TOO_LARGE = new IconPackStorageError("METADATA_TOO_LARGE", 2);
    public static final IconPackStorageError INVALID_METADATA = new IconPackStorageError("INVALID_METADATA", 3);
    public static final IconPackStorageError TOO_MANY_FILES = new IconPackStorageError("TOO_MANY_FILES", 4);
    public static final IconPackStorageError ARCHIVE_TOO_LARGE = new IconPackStorageError("ARCHIVE_TOO_LARGE", 5);
    public static final IconPackStorageError FILE_TOO_LARGE = new IconPackStorageError("FILE_TOO_LARGE", 6);
    public static final IconPackStorageError COMPRESSION_RATIO_TOO_HIGH = new IconPackStorageError("COMPRESSION_RATIO_TOO_HIGH", 7);
    public static final IconPackStorageError STORAGE_ERROR = new IconPackStorageError("STORAGE_ERROR", 8);
    public static final IconPackStorageError UNKNOWN = new IconPackStorageError("UNKNOWN", 9);

    private static final /* synthetic */ IconPackStorageError[] $values() {
        return new IconPackStorageError[]{INVALID_ARCHIVE, MISSING_METADATA, METADATA_TOO_LARGE, INVALID_METADATA, TOO_MANY_FILES, ARCHIVE_TOO_LARGE, FILE_TOO_LARGE, COMPRESSION_RATIO_TOO_HIGH, STORAGE_ERROR, UNKNOWN};
    }

    public static IconPackStorageError valueOf(String str) {
        return (IconPackStorageError) Enum.valueOf(IconPackStorageError.class, str);
    }

    public static IconPackStorageError[] values() {
        return (IconPackStorageError[]) $VALUES.clone();
    }

    private IconPackStorageError(String str, int i) {
    }

    static {
        IconPackStorageError[] iconPackStorageErrorArr$values = $values();
        $VALUES = iconPackStorageErrorArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(iconPackStorageErrorArr$values);
    }
}
