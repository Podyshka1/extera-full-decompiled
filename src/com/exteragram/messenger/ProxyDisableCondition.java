package com.exteragram.messenger;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import okhttp3.internal.url._UrlKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/exteragram/messenger/ProxyDisableCondition;", _UrlKt.FRAGMENT_ENCODE_SET, "flag", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;II)V", "getFlag", "()I", "VPN", "MOBILE_DATA", "WIFI", "TMessagesProj"}, m754k = 1, mv = {2, 2, 0}, xi = 48)
public final class ProxyDisableCondition {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ProxyDisableCondition[] $VALUES;
    private final int flag;
    public static final ProxyDisableCondition VPN = new ProxyDisableCondition("VPN", 0, 1);
    public static final ProxyDisableCondition MOBILE_DATA = new ProxyDisableCondition("MOBILE_DATA", 1, 2);
    public static final ProxyDisableCondition WIFI = new ProxyDisableCondition("WIFI", 2, 4);

    private static final /* synthetic */ ProxyDisableCondition[] $values() {
        return new ProxyDisableCondition[]{VPN, MOBILE_DATA, WIFI};
    }

    public static ProxyDisableCondition valueOf(String str) {
        return (ProxyDisableCondition) Enum.valueOf(ProxyDisableCondition.class, str);
    }

    public static ProxyDisableCondition[] values() {
        return (ProxyDisableCondition[]) $VALUES.clone();
    }

    private ProxyDisableCondition(String str, int i, int i2) {
        this.flag = i2;
    }

    public final int getFlag() {
        return this.flag;
    }

    static {
        ProxyDisableCondition[] proxyDisableConditionArr$values = $values();
        $VALUES = proxyDisableConditionArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(proxyDisableConditionArr$values);
    }
}
