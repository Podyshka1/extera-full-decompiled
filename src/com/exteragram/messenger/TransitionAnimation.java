package com.exteragram.messenger;

import com.exteragram.messenger.plugins.PluginsConstants;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import okhttp3.internal.url._UrlKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/exteragram/messenger/TransitionAnimation;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;I)V", PluginsConstants.Strategy.DEFAULT, "AOSP", "SPRING", "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
public final class TransitionAnimation {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ TransitionAnimation[] $VALUES;
    public static final TransitionAnimation DEFAULT = new TransitionAnimation(PluginsConstants.Strategy.DEFAULT, 0);
    public static final TransitionAnimation AOSP = new TransitionAnimation("AOSP", 1);
    public static final TransitionAnimation SPRING = new TransitionAnimation("SPRING", 2);

    private static final /* synthetic */ TransitionAnimation[] $values() {
        return new TransitionAnimation[]{DEFAULT, AOSP, SPRING};
    }

    public static EnumEntries<TransitionAnimation> getEntries() {
        return $ENTRIES;
    }

    public static TransitionAnimation valueOf(String str) {
        return (TransitionAnimation) Enum.valueOf(TransitionAnimation.class, str);
    }

    public static TransitionAnimation[] values() {
        return (TransitionAnimation[]) $VALUES.clone();
    }

    private TransitionAnimation(String str, int i) {
    }

    static {
        TransitionAnimation[] transitionAnimationArr$values = $values();
        $VALUES = transitionAnimationArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(transitionAnimationArr$values);
    }
}
