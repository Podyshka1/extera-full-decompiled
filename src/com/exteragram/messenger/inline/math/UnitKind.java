package com.exteragram.messenger.inline.math;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import okhttp3.internal.url._UrlKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u000b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\f"}, d2 = {"Lcom/exteragram/messenger/inline/math/UnitKind;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;I)V", "CURRENCY", "LENGTH", "MASS", "VOLUME", "AREA", "TEMPERATURE", "SPEED", "DURATION", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
public final class UnitKind {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ UnitKind[] $VALUES;
    public static final UnitKind CURRENCY = new UnitKind("CURRENCY", 0);
    public static final UnitKind LENGTH = new UnitKind("LENGTH", 1);
    public static final UnitKind MASS = new UnitKind("MASS", 2);
    public static final UnitKind VOLUME = new UnitKind("VOLUME", 3);
    public static final UnitKind AREA = new UnitKind("AREA", 4);
    public static final UnitKind TEMPERATURE = new UnitKind("TEMPERATURE", 5);
    public static final UnitKind SPEED = new UnitKind("SPEED", 6);
    public static final UnitKind DURATION = new UnitKind("DURATION", 7);

    private static final /* synthetic */ UnitKind[] $values() {
        return new UnitKind[]{CURRENCY, LENGTH, MASS, VOLUME, AREA, TEMPERATURE, SPEED, DURATION};
    }

    public static UnitKind valueOf(String str) {
        return (UnitKind) Enum.valueOf(UnitKind.class, str);
    }

    public static UnitKind[] values() {
        return (UnitKind[]) $VALUES.clone();
    }

    static {
        UnitKind[] unitKindArr$values = $values();
        $VALUES = unitKindArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(unitKindArr$values);
    }

    private UnitKind(String str, int i) {
    }
}
