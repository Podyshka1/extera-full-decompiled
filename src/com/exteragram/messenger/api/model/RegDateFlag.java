package com.exteragram.messenger.api.model;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import okhttp3.internal.url._UrlKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/exteragram/messenger/api/model/RegDateFlag;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;I)V", "EXACT", "INTERPOLATED", "LT", "ET", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
public final class RegDateFlag {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ RegDateFlag[] $VALUES;
    public static final RegDateFlag EXACT = new RegDateFlag("EXACT", 0);
    public static final RegDateFlag INTERPOLATED = new RegDateFlag("INTERPOLATED", 1);
    public static final RegDateFlag LT = new RegDateFlag("LT", 2);
    public static final RegDateFlag ET = new RegDateFlag("ET", 3);

    private static final /* synthetic */ RegDateFlag[] $values() {
        return new RegDateFlag[]{EXACT, INTERPOLATED, LT, ET};
    }

    public static EnumEntries<RegDateFlag> getEntries() {
        return $ENTRIES;
    }

    public static RegDateFlag valueOf(String str) {
        return (RegDateFlag) Enum.valueOf(RegDateFlag.class, str);
    }

    public static RegDateFlag[] values() {
        return (RegDateFlag[]) $VALUES.clone();
    }

    private RegDateFlag(String str, int i) {
    }

    static {
        RegDateFlag[] regDateFlagArr$values = $values();
        $VALUES = regDateFlagArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(regDateFlagArr$values);
    }
}
