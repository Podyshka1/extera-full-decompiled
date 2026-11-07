package com.exteragram.messenger;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\u0014\b\u0086\u0081\u0002\u0018\u0000 \u00162\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0016B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015¨\u0006\u0017"}, d2 = {"Lcom/exteragram/messenger/MainMenuItem;", _UrlKt.FRAGMENT_ENCODE_SET, "id", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;II)V", "getId", "()I", "DIVIDER", "PROFILE", "ARCHIVE", "BOTS", "NEW_GROUP", "CONTACTS", "NEW_CHANNEL", "CALLS", "SAVED", "SETTINGS", "PLUGINS", "BROWSER", "QR", "FEED", "Companion", "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
public final class MainMenuItem {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ MainMenuItem[] $VALUES;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    private final int id;
    public static final MainMenuItem DIVIDER = new MainMenuItem("DIVIDER", 0, -1);
    public static final MainMenuItem PROFILE = new MainMenuItem("PROFILE", 1, 18);
    public static final MainMenuItem ARCHIVE = new MainMenuItem("ARCHIVE", 2, 14);
    public static final MainMenuItem BOTS = new MainMenuItem("BOTS", 3, 105);
    public static final MainMenuItem NEW_GROUP = new MainMenuItem("NEW_GROUP", 4, 2);
    public static final MainMenuItem CONTACTS = new MainMenuItem("CONTACTS", 5, 6);
    public static final MainMenuItem NEW_CHANNEL = new MainMenuItem("NEW_CHANNEL", 6, 3);
    public static final MainMenuItem CALLS = new MainMenuItem("CALLS", 7, 10);
    public static final MainMenuItem SAVED = new MainMenuItem("SAVED", 8, 11);
    public static final MainMenuItem SETTINGS = new MainMenuItem("SETTINGS", 9, 8);
    public static final MainMenuItem PLUGINS = new MainMenuItem("PLUGINS", 10, 102);
    public static final MainMenuItem BROWSER = new MainMenuItem("BROWSER", 11, 101);
    public static final MainMenuItem QR = new MainMenuItem("QR", 12, 17);
    public static final MainMenuItem FEED = new MainMenuItem("FEED", 13, 106);

    private static final /* synthetic */ MainMenuItem[] $values() {
        return new MainMenuItem[]{DIVIDER, PROFILE, ARCHIVE, BOTS, NEW_GROUP, CONTACTS, NEW_CHANNEL, CALLS, SAVED, SETTINGS, PLUGINS, BROWSER, QR, FEED};
    }

    @JvmStatic
    public static final MainMenuItem getById(int i) {
        return INSTANCE.getById(i);
    }

    public static EnumEntries<MainMenuItem> getEntries() {
        return $ENTRIES;
    }

    public static MainMenuItem valueOf(String str) {
        return (MainMenuItem) Enum.valueOf(MainMenuItem.class, str);
    }

    public static MainMenuItem[] values() {
        return (MainMenuItem[]) $VALUES.clone();
    }

    private MainMenuItem(String str, int i, int i2) {
        this.id = i2;
    }

    public final int getId() {
        return this.id;
    }

    static {
        MainMenuItem[] mainMenuItemArr$values = $values();
        $VALUES = mainMenuItemArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(mainMenuItemArr$values);
        INSTANCE = new Companion(null);
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007¨\u0006\b"}, d2 = {"Lcom/exteragram/messenger/MainMenuItem$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "getById", "Lcom/exteragram/messenger/MainMenuItem;", "id", _UrlKt.FRAGMENT_ENCODE_SET, "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nExteraConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExteraConfig.kt\ncom/exteragram/messenger/MainMenuItem$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,704:1\n1#2:705\n*E\n"})
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final MainMenuItem getById(int id) {
            MainMenuItem next;
            Iterator<MainMenuItem> it = MainMenuItem.getEntries().iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                if (next.getId() == id) {
                    break;
                }
            }
            return next;
        }
    }
}
