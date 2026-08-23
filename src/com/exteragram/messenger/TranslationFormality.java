package com.exteragram.messenger;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import okhttp3.internal.url._UrlKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/exteragram/messenger/TranslationFormality;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;I)V", "NONE", "INFORMAL", "FORMAL", "TMessagesProj"}, m754k = 1, mv = {2, 2, 0}, xi = 48)
public final class TranslationFormality {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ TranslationFormality[] $VALUES;
    public static final TranslationFormality NONE = new TranslationFormality("NONE", 0);
    public static final TranslationFormality INFORMAL = new TranslationFormality("INFORMAL", 1);
    public static final TranslationFormality FORMAL = new TranslationFormality("FORMAL", 2);

    private static final /* synthetic */ TranslationFormality[] $values() {
        return new TranslationFormality[]{NONE, INFORMAL, FORMAL};
    }

    public static EnumEntries<TranslationFormality> getEntries() {
        return $ENTRIES;
    }

    public static TranslationFormality valueOf(String str) {
        return (TranslationFormality) Enum.valueOf(TranslationFormality.class, str);
    }

    public static TranslationFormality[] values() {
        return (TranslationFormality[]) $VALUES.clone();
    }

    private TranslationFormality(String str, int i) {
    }

    static {
        TranslationFormality[] translationFormalityArr$values = $values();
        $VALUES = translationFormalityArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(translationFormalityArr$values);
    }
}
