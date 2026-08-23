package com.exteragram.messenger;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import okhttp3.internal.url._UrlKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/exteragram/messenger/GlassOutlineStyle;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;I)V", "GLARE", "SOLID", "HIDDEN", "TMessagesProj"}, m754k = 1, mv = {2, 2, 0}, xi = 48)
public final class GlassOutlineStyle {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ GlassOutlineStyle[] $VALUES;
    public static final GlassOutlineStyle GLARE = new GlassOutlineStyle("GLARE", 0);
    public static final GlassOutlineStyle SOLID = new GlassOutlineStyle("SOLID", 1);
    public static final GlassOutlineStyle HIDDEN = new GlassOutlineStyle("HIDDEN", 2);

    private static final /* synthetic */ GlassOutlineStyle[] $values() {
        return new GlassOutlineStyle[]{GLARE, SOLID, HIDDEN};
    }

    public static EnumEntries<GlassOutlineStyle> getEntries() {
        return $ENTRIES;
    }

    public static GlassOutlineStyle valueOf(String str) {
        return (GlassOutlineStyle) Enum.valueOf(GlassOutlineStyle.class, str);
    }

    public static GlassOutlineStyle[] values() {
        return (GlassOutlineStyle[]) $VALUES.clone();
    }

    private GlassOutlineStyle(String str, int i) {
    }

    static {
        GlassOutlineStyle[] glassOutlineStyleArr$values = $values();
        $VALUES = glassOutlineStyleArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(glassOutlineStyleArr$values);
    }
}
