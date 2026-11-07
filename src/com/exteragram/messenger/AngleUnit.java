package com.exteragram.messenger;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import okhttp3.internal.url._UrlKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/exteragram/messenger/AngleUnit;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;I)V", "DEGREES", "RADIANS", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
public final class AngleUnit {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ AngleUnit[] $VALUES;
    public static final AngleUnit DEGREES = new AngleUnit("DEGREES", 0);
    public static final AngleUnit RADIANS = new AngleUnit("RADIANS", 1);

    private static final /* synthetic */ AngleUnit[] $values() {
        return new AngleUnit[]{DEGREES, RADIANS};
    }

    public static EnumEntries<AngleUnit> getEntries() {
        return $ENTRIES;
    }

    public static AngleUnit valueOf(String str) {
        return (AngleUnit) Enum.valueOf(AngleUnit.class, str);
    }

    public static AngleUnit[] values() {
        return (AngleUnit[]) $VALUES.clone();
    }

    private AngleUnit(String str, int i) {
    }

    static {
        AngleUnit[] angleUnitArr$values = $values();
        $VALUES = angleUnitArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(angleUnitArr$values);
    }
}
