package org.simplifiles.internal.io;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import okhttp3.internal.url._UrlKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0080\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lorg/simplifiles/internal/io/SymlinkDecision;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;I)V", "INCLUDE", "SKIP", "FAIL", "simplifiles"}, m910k = 1, mv = {2, 3, 0}, xi = 48)
public final class SymlinkDecision {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ SymlinkDecision[] $VALUES;
    public static final SymlinkDecision INCLUDE = new SymlinkDecision("INCLUDE", 0);
    public static final SymlinkDecision SKIP = new SymlinkDecision("SKIP", 1);
    public static final SymlinkDecision FAIL = new SymlinkDecision("FAIL", 2);

    private static final /* synthetic */ SymlinkDecision[] $values() {
        return new SymlinkDecision[]{INCLUDE, SKIP, FAIL};
    }

    public static SymlinkDecision valueOf(String str) {
        return (SymlinkDecision) Enum.valueOf(SymlinkDecision.class, str);
    }

    public static SymlinkDecision[] values() {
        return (SymlinkDecision[]) $VALUES.clone();
    }

    private SymlinkDecision(String str, int i) {
    }

    static {
        SymlinkDecision[] symlinkDecisionArr$values = $values();
        $VALUES = symlinkDecisionArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(symlinkDecisionArr$values);
    }
}
