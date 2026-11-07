package com.exteragram.messenger.inline.math;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import okhttp3.internal.url._UrlKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/exteragram/messenger/inline/math/UnitRule;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;I)V", "SAME", "SCALE", "RATIO", "NONE", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
public final class UnitRule {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ UnitRule[] $VALUES;
    public static final UnitRule SAME = new UnitRule("SAME", 0);
    public static final UnitRule SCALE = new UnitRule("SCALE", 1);
    public static final UnitRule RATIO = new UnitRule("RATIO", 2);
    public static final UnitRule NONE = new UnitRule("NONE", 3);

    private static final /* synthetic */ UnitRule[] $values() {
        return new UnitRule[]{SAME, SCALE, RATIO, NONE};
    }

    public static UnitRule valueOf(String str) {
        return (UnitRule) Enum.valueOf(UnitRule.class, str);
    }

    public static UnitRule[] values() {
        return (UnitRule[]) $VALUES.clone();
    }

    static {
        UnitRule[] unitRuleArr$values = $values();
        $VALUES = unitRuleArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(unitRuleArr$values);
    }

    private UnitRule(String str, int i) {
    }
}
