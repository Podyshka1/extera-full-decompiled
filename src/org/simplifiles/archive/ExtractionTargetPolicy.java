package org.simplifiles.archive;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import okhttp3.internal.url._UrlKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lorg/simplifiles/archive/ExtractionTargetPolicy;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;I)V", "ERROR_IF_NOT_EMPTY", "CLEAN", "REPLACE", "simplifiles"}, m910k = 1, mv = {2, 3, 0}, xi = 48)
public final class ExtractionTargetPolicy {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ExtractionTargetPolicy[] $VALUES;
    public static final ExtractionTargetPolicy ERROR_IF_NOT_EMPTY = new ExtractionTargetPolicy("ERROR_IF_NOT_EMPTY", 0);
    public static final ExtractionTargetPolicy CLEAN = new ExtractionTargetPolicy("CLEAN", 1);
    public static final ExtractionTargetPolicy REPLACE = new ExtractionTargetPolicy("REPLACE", 2);

    private static final /* synthetic */ ExtractionTargetPolicy[] $values() {
        return new ExtractionTargetPolicy[]{ERROR_IF_NOT_EMPTY, CLEAN, REPLACE};
    }

    public static ExtractionTargetPolicy valueOf(String str) {
        return (ExtractionTargetPolicy) Enum.valueOf(ExtractionTargetPolicy.class, str);
    }

    public static ExtractionTargetPolicy[] values() {
        return (ExtractionTargetPolicy[]) $VALUES.clone();
    }

    private ExtractionTargetPolicy(String str, int i) {
    }

    static {
        ExtractionTargetPolicy[] extractionTargetPolicyArr$values = $values();
        $VALUES = extractionTargetPolicyArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(extractionTargetPolicyArr$values);
    }
}
