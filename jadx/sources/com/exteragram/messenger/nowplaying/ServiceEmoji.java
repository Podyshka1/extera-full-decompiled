package com.exteragram.messenger.nowplaying;

import java.util.Iterator;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
public final class ServiceEmoji {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ServiceEmoji[] $VALUES;
    public static final Companion Companion;
    public static final ServiceEmoji MUSIC = new ServiceEmoji("MUSIC", 0, 5271627010681108586L);
    public static final ServiceEmoji SPOTIFY = new ServiceEmoji("SPOTIFY", 1, 5271857023359681001L);
    public static final ServiceEmoji TELEGRAM = new ServiceEmoji("TELEGRAM", 2, 5325674462522144646L);
    private final long documentId;

    private static final /* synthetic */ ServiceEmoji[] $values() {
        return new ServiceEmoji[]{MUSIC, SPOTIFY, TELEGRAM};
    }

    public static EnumEntries getEntries() {
        return $ENTRIES;
    }

    public static ServiceEmoji valueOf(String str) {
        return (ServiceEmoji) Enum.valueOf(ServiceEmoji.class, str);
    }

    public static ServiceEmoji[] values() {
        return (ServiceEmoji[]) $VALUES.clone();
    }

    private ServiceEmoji(String str, int i, long j) {
        this.documentId = j;
    }

    public final long getDocumentId() {
        return this.documentId;
    }

    static {
        ServiceEmoji[] serviceEmojiArr$values = $values();
        $VALUES = serviceEmojiArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(serviceEmojiArr$values);
        Companion = new Companion(null);
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final ServiceEmoji fromString(String str) {
            Object next;
            Iterator<E> it = ServiceEmoji.getEntries().iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                if (StringsKt.equals(((ServiceEmoji) next).name(), str, true)) {
                    break;
                }
            }
            ServiceEmoji serviceEmoji = (ServiceEmoji) next;
            return serviceEmoji == null ? ServiceEmoji.MUSIC : serviceEmoji;
        }
    }
}
