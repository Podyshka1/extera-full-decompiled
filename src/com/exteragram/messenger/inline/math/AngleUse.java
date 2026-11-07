package com.exteragram.messenger.inline.math;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import okhttp3.internal.url._UrlKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/exteragram/messenger/inline/math/AngleUse;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;I)V", "NONE", "ARGUMENT", "RESULT", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
public final class AngleUse {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ AngleUse[] $VALUES;
    public static final AngleUse NONE = new AngleUse("NONE", 0);
    public static final AngleUse ARGUMENT = new AngleUse("ARGUMENT", 1);
    public static final AngleUse RESULT = new AngleUse("RESULT", 2);

    private static final /* synthetic */ AngleUse[] $values() {
        return new AngleUse[]{NONE, ARGUMENT, RESULT};
    }

    public static AngleUse valueOf(String str) {
        return (AngleUse) Enum.valueOf(AngleUse.class, str);
    }

    public static AngleUse[] values() {
        return (AngleUse[]) $VALUES.clone();
    }

    static {
        AngleUse[] angleUseArr$values = $values();
        $VALUES = angleUseArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(angleUseArr$values);
    }

    private AngleUse(String str, int i) {
    }
}
