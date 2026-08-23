package com.exteragram.messenger.pillstack.core;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import okhttp3.internal.url._UrlKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\f\b\u0086\u0081\u0002\u0018\u0000 \u000e2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000eB\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\r¨\u0006\u000f"}, d2 = {"Lcom/exteragram/messenger/pillstack/core/PillType;", _UrlKt.FRAGMENT_ENCODE_SET, "id", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;II)V", "getId", "()I", "WEATHER", "GRAM", "BTC", "USD", "CACHE", "PROXY", "Companion", "TMessagesProj"}, m754k = 1, mv = {2, 2, 0}, xi = 48)
public final class PillType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ PillType[] $VALUES;
    private final int id;
    public static final PillType WEATHER = new PillType("WEATHER", 0, 1);
    public static final PillType GRAM = new PillType("GRAM", 1, 2);
    public static final PillType BTC = new PillType("BTC", 2, 3);
    public static final PillType USD = new PillType("USD", 3, 4);
    public static final PillType CACHE = new PillType("CACHE", 4, 5);
    public static final PillType PROXY = new PillType("PROXY", 5, 6);

    private static final /* synthetic */ PillType[] $values() {
        return new PillType[]{WEATHER, GRAM, BTC, USD, CACHE, PROXY};
    }

    public static PillType valueOf(String str) {
        return (PillType) Enum.valueOf(PillType.class, str);
    }

    public static PillType[] values() {
        return (PillType[]) $VALUES.clone();
    }

    private PillType(String str, int i, int i2) {
        this.id = i2;
    }

    public final int getId() {
        return this.id;
    }

    static {
        PillType[] pillTypeArr$values = $values();
        $VALUES = pillTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(pillTypeArr$values);
        INSTANCE = new Companion(null);
    }
}
