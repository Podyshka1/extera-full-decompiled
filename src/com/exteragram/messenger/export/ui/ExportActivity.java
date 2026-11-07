package com.exteragram.messenger.export.ui;

import android.content.Intent;
import android.net.Uri;
import android.provider.DocumentsContract;
import android.view.View;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.export.ExportSettings;
import com.exteragram.messenger.export.controllers.ExportController;
import com.exteragram.messenger.export.output.AbstractWriter;
import com.exteragram.messenger.plugins.PluginsConstants;
import com.exteragram.messenger.preferences.BasePreferencesActivity;
import com.exteragram.messenger.preferences.SwitchGroup;
import com.exteragram.messenger.utils.ui.PopupUtils;
import com.google.firebase.crashlytics.FirebaseCrashlytics;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;
import java.util.function.BooleanSupplier;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 72\u00020\u00012\u00020\u0002:\u000267B\u0013\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0010H\u0016J5\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00132\u0016\u0010\u0015\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00170\u0016\"\u0004\u0018\u00010\u0017H\u0016¢\u0006\u0002\u0010\u0018J\b\u0010\u0019\u001a\u00020\u001aH\u0016J\u001e\u0010\u001b\u001a\u00020\u00102\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001e0\u001d2\u0006\u0010\u001f\u001a\u00020 H\u0014J0\u0010!\u001a\u00020\u00102\u0006\u0010\"\u001a\u00020\u001e2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u00132\u0006\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020'H\u0014J\"\u0010)\u001a\u00020\u00102\u0006\u0010*\u001a\u00020\u00132\u0006\u0010+\u001a\u00020\u00132\b\u0010,\u001a\u0004\u0018\u00010-H\u0016J\u0010\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020\u0013H\u0002J\u0010\u00101\u001a\u0002022\u0006\u00100\u001a\u00020\u0013H\u0002J\u0010\u00103\u001a\u00020/2\u0006\u00100\u001a\u00020\u0013H\u0002J\u0010\u00104\u001a\u0002022\u0006\u00100\u001a\u00020\u0013H\u0002J\b\u00105\u001a\u00020\u0013H\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000¨\u00068"}, d2 = {"Lcom/exteragram/messenger/export/ui/ExportActivity;", "Lcom/exteragram/messenger/preferences/BasePreferencesActivity;", "Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;", "peer", "Lorg/telegram/tgnet/TLRPC$InputPeer;", "<init>", "(Lorg/telegram/tgnet/TLRPC$InputPeer;)V", "settings", "Lcom/exteragram/messenger/export/ExportSettings;", "exportSettings", "Lcom/exteragram/messenger/preferences/SwitchGroup;", "chatsSettings", "mediaSettings", "onFragmentCreate", _UrlKt.FRAGMENT_ENCODE_SET, "onFragmentDestroy", _UrlKt.FRAGMENT_ENCODE_SET, "didReceivedNotification", "id", _UrlKt.FRAGMENT_ENCODE_SET, "account", "args", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "(II[Ljava/lang/Object;)V", "getTitle", _UrlKt.FRAGMENT_ENCODE_SET, "fillItems", PluginsConstants.Settings.ITEMS, "Ljava/util/ArrayList;", "Lorg/telegram/ui/Components/UItem;", "adapter", "Lorg/telegram/ui/Components/UniversalAdapter;", "onClick", PluginsConstants.Settings.ITEM, PluginsConstants.Settings.VIEW, "Landroid/view/View;", "position", "x", _UrlKt.FRAGMENT_ENCODE_SET, "y", "onActivityResultFragment", "requestCode", "resultCode", "data", "Landroid/content/Intent;", "type", "Ljava/util/function/BooleanSupplier;", "flag", "setType", "Lcom/exteragram/messenger/preferences/SwitchGroup$Setter;", "media", "setMedia", "getIndexOfFormat", "ExportItem", "Companion", "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nExportActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExportActivity.kt\ncom/exteragram/messenger/export/ui/ExportActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,235:1\n1#2:236\n*E\n"})
public final class ExportActivity extends BasePreferencesActivity implements NotificationCenter.NotificationCenterDelegate {
    private static final CharSequence[] formats = {"HTML", "JSON", "HTML and JSON"};
    private final SwitchGroup chatsSettings;
    private final SwitchGroup exportSettings;
    private final SwitchGroup mediaSettings;
    private final TLRPC.InputPeer peer;
    private final ExportSettings settings;

    @Metadata(m862k = 3, mv = {2, 2, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[ExportItem.values().length];
            try {
                iArr[ExportItem.EXPORT_SETTINGS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ExportItem.ACCOUNT_INFO.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ExportItem.CONTACTS_LIST.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ExportItem.STORY_ARCHIVE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[ExportItem.ACTIVE_SESSIONS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[ExportItem.CHATS_SETTINGS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[ExportItem.PERSONAL_CHATS.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[ExportItem.BOT_CHATS.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[ExportItem.PRIVATE_GROUPS.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[ExportItem.PRIVATE_CHANNELS.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[ExportItem.PUBLIC_GROUPS.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[ExportItem.PUBLIC_CHANNELS.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[ExportItem.MEDIA_SETTINGS.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr[ExportItem.PHOTOS.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr[ExportItem.VIDEOS.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr[ExportItem.VOICE_MESSAGES.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                iArr[ExportItem.VIDEO_MESSAGES.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr[ExportItem.STICKERS.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                iArr[ExportItem.GIFS.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                iArr[ExportItem.FILES.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                iArr[ExportItem.FORMAT.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                iArr[ExportItem.START_EXPORT.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                iArr[ExportItem.VIEW_JSON_EXPORT.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[AbstractWriter.Format.values().length];
            try {
                iArr2[AbstractWriter.Format.Json.ordinal()] = 1;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                iArr2[AbstractWriter.Format.HtmlAndJson.ordinal()] = 2;
            } catch (NoSuchFieldError unused25) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ExportActivity() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public ExportActivity(TLRPC.InputPeer inputPeer) {
        this.peer = inputPeer;
        this.settings = new ExportSettings();
        SwitchGroup switchGroup = new SwitchGroup(this, ExportItem.EXPORT_SETTINGS, 0, "Main settings", null, false, 16, null);
        switchGroup.add(ExportItem.ACCOUNT_INFO, 0, type(1), setType(1), "Account Info");
        switchGroup.add(ExportItem.CONTACTS_LIST, 0, type(4), setType(4), "Contacts");
        switchGroup.add(ExportItem.STORY_ARCHIVE, 0, type(2048), setType(2048), "Stories");
        switchGroup.add(ExportItem.ACTIVE_SESSIONS, 0, type(8), setType(8), "Sessions");
        this.exportSettings = switchGroup;
        SwitchGroup switchGroup2 = new SwitchGroup(this, ExportItem.CHATS_SETTINGS, 0, "Chats settings", null, false, 16, null);
        switchGroup2.add(ExportItem.PERSONAL_CHATS, 0, type(32), setType(32), "Personal chats");
        switchGroup2.add(ExportItem.BOT_CHATS, 0, type(64), setType(64), "Bots");
        switchGroup2.add(ExportItem.PRIVATE_GROUPS, 0, type(128), setType(128), "Private groups");
        switchGroup2.add(ExportItem.PRIVATE_CHANNELS, 0, type(512), setType(512), "Private channels");
        switchGroup2.add(ExportItem.PUBLIC_GROUPS, 0, type(256), setType(256), "Public groups");
        switchGroup2.add(ExportItem.PUBLIC_CHANNELS, 0, type(1024), setType(1024), "Public channels");
        this.chatsSettings = switchGroup2;
        SwitchGroup switchGroup3 = new SwitchGroup(this, ExportItem.MEDIA_SETTINGS, 0, "Media settings", null, false, 16, null);
        switchGroup3.add(ExportItem.PHOTOS, 0, media(1), setMedia(1), "Photos");
        switchGroup3.add(ExportItem.VIDEOS, 0, media(2), setMedia(2), "Videos");
        switchGroup3.add(ExportItem.VOICE_MESSAGES, 0, media(4), setMedia(4), "Voice messages");
        switchGroup3.add(ExportItem.VIDEO_MESSAGES, 0, media(8), setMedia(8), "Video messages");
        switchGroup3.add(ExportItem.STICKERS, 0, media(16), setMedia(16), "Stickers");
        switchGroup3.add(ExportItem.GIFS, 0, media(32), setMedia(32), "GIFs");
        switchGroup3.add(ExportItem.FILES, 0, media(64), setMedia(64), "Files");
        this.mediaSettings = switchGroup3;
    }

    public /* synthetic */ ExportActivity(TLRPC.InputPeer inputPeer, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : inputPeer);
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u001d\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b ¨\u0006!"}, d2 = {"Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;I)V", _UrlKt.FRAGMENT_ENCODE_SET, "id", "I", "getId", "()I", "HEADER", "EXPORT_SETTINGS", "ACCOUNT_INFO", "CONTACTS_LIST", "STORY_ARCHIVE", "ACTIVE_SESSIONS", "CHATS_SETTINGS", "PERSONAL_CHATS", "BOT_CHATS", "PRIVATE_GROUPS", "PRIVATE_CHANNELS", "PUBLIC_GROUPS", "PUBLIC_CHANNELS", "MEDIA_SETTINGS", "PHOTOS", "VIDEOS", "VOICE_MESSAGES", "VIDEO_MESSAGES", "STICKERS", "GIFS", "FILES", "FORMAT", "START_EXPORT", "VIEW_JSON_EXPORT", "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class ExportItem {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ ExportItem[] $VALUES;
        private final int id = ordinal() + 1;
        public static final ExportItem HEADER = new ExportItem("HEADER", 0);
        public static final ExportItem EXPORT_SETTINGS = new ExportItem("EXPORT_SETTINGS", 1);
        public static final ExportItem ACCOUNT_INFO = new ExportItem("ACCOUNT_INFO", 2);
        public static final ExportItem CONTACTS_LIST = new ExportItem("CONTACTS_LIST", 3);
        public static final ExportItem STORY_ARCHIVE = new ExportItem("STORY_ARCHIVE", 4);
        public static final ExportItem ACTIVE_SESSIONS = new ExportItem("ACTIVE_SESSIONS", 5);
        public static final ExportItem CHATS_SETTINGS = new ExportItem("CHATS_SETTINGS", 6);
        public static final ExportItem PERSONAL_CHATS = new ExportItem("PERSONAL_CHATS", 7);
        public static final ExportItem BOT_CHATS = new ExportItem("BOT_CHATS", 8);
        public static final ExportItem PRIVATE_GROUPS = new ExportItem("PRIVATE_GROUPS", 9);
        public static final ExportItem PRIVATE_CHANNELS = new ExportItem("PRIVATE_CHANNELS", 10);
        public static final ExportItem PUBLIC_GROUPS = new ExportItem("PUBLIC_GROUPS", 11);
        public static final ExportItem PUBLIC_CHANNELS = new ExportItem("PUBLIC_CHANNELS", 12);
        public static final ExportItem MEDIA_SETTINGS = new ExportItem("MEDIA_SETTINGS", 13);
        public static final ExportItem PHOTOS = new ExportItem("PHOTOS", 14);
        public static final ExportItem VIDEOS = new ExportItem("VIDEOS", 15);
        public static final ExportItem VOICE_MESSAGES = new ExportItem("VOICE_MESSAGES", 16);
        public static final ExportItem VIDEO_MESSAGES = new ExportItem("VIDEO_MESSAGES", 17);
        public static final ExportItem STICKERS = new ExportItem("STICKERS", 18);
        public static final ExportItem GIFS = new ExportItem("GIFS", 19);
        public static final ExportItem FILES = new ExportItem("FILES", 20);
        public static final ExportItem FORMAT = new ExportItem("FORMAT", 21);
        public static final ExportItem START_EXPORT = new ExportItem("START_EXPORT", 22);
        public static final ExportItem VIEW_JSON_EXPORT = new ExportItem("VIEW_JSON_EXPORT", 23);

        private static final /* synthetic */ ExportItem[] $values() {
            return new ExportItem[]{HEADER, EXPORT_SETTINGS, ACCOUNT_INFO, CONTACTS_LIST, STORY_ARCHIVE, ACTIVE_SESSIONS, CHATS_SETTINGS, PERSONAL_CHATS, BOT_CHATS, PRIVATE_GROUPS, PRIVATE_CHANNELS, PUBLIC_GROUPS, PUBLIC_CHANNELS, MEDIA_SETTINGS, PHOTOS, VIDEOS, VOICE_MESSAGES, VIDEO_MESSAGES, STICKERS, GIFS, FILES, FORMAT, START_EXPORT, VIEW_JSON_EXPORT};
        }

        public static EnumEntries<ExportItem> getEntries() {
            return $ENTRIES;
        }

        public static ExportItem valueOf(String str) {
            return (ExportItem) Enum.valueOf(ExportItem.class, str);
        }

        public static ExportItem[] values() {
            return (ExportItem[]) $VALUES.clone();
        }

        private ExportItem(String str, int i) {
        }

        static {
            ExportItem[] exportItemArr$values = $values();
            $VALUES = exportItemArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(exportItemArr$values);
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        getNotificationCenter().addObserver(this, ExportController.INITIALIZATING_NOTIFICATION);
        getNotificationCenter().addObserver(this, ExportController.DIALOGS_LIST_NOTIFICATION);
        getNotificationCenter().addObserver(this, ExportController.PERSONAL_INFO_NOTIFICATION);
        getNotificationCenter().addObserver(this, ExportController.USERPICS_NOTIFICATION);
        getNotificationCenter().addObserver(this, ExportController.STORIES_NOTIFICATION);
        getNotificationCenter().addObserver(this, ExportController.CONTACTS_NOTIFICATION);
        getNotificationCenter().addObserver(this, ExportController.SESSIONS_NOTIFICATION);
        getNotificationCenter().addObserver(this, ExportController.OTHER_DATA_NOTIFICATION);
        getNotificationCenter().addObserver(this, ExportController.DIALOGS_NOTIFICATION);
        getNotificationCenter().addObserver(this, ExportController.FINISH_NOTIFICATION);
        return super.onFragmentCreate();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        getNotificationCenter().removeObserver(this, ExportController.INITIALIZATING_NOTIFICATION);
        getNotificationCenter().removeObserver(this, ExportController.DIALOGS_LIST_NOTIFICATION);
        getNotificationCenter().removeObserver(this, ExportController.PERSONAL_INFO_NOTIFICATION);
        getNotificationCenter().removeObserver(this, ExportController.USERPICS_NOTIFICATION);
        getNotificationCenter().removeObserver(this, ExportController.STORIES_NOTIFICATION);
        getNotificationCenter().removeObserver(this, ExportController.CONTACTS_NOTIFICATION);
        getNotificationCenter().removeObserver(this, ExportController.SESSIONS_NOTIFICATION);
        getNotificationCenter().removeObserver(this, ExportController.OTHER_DATA_NOTIFICATION);
        getNotificationCenter().removeObserver(this, ExportController.DIALOGS_NOTIFICATION);
        getNotificationCenter().removeObserver(this, ExportController.FINISH_NOTIFICATION);
        super.onFragmentDestroy();
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int id, int account, Object... args) {
        String str;
        if (id == ExportController.FINISH_NOTIFICATION) {
            BulletinFactory.of(this).createSimpleBulletin(C2665R.raw.contact_check, "Export complete!").show();
            return;
        }
        ExportController.ProcessingState processingState = (ExportController.ProcessingState) args[0];
        float f = processingState.substepsPassed / processingState.substepsTotal;
        if (processingState.bytesCount > 0) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            str = String.format(Locale.US, "Downloading %s\n%s / %s", Arrays.copyOf(new Object[]{processingState.bytesName, AndroidUtilities.formatFileSize(processingState.bytesLoaded), AndroidUtilities.formatFileSize(processingState.bytesCount)}, 3));
        } else if (processingState.entityCount > 0) {
            StringCompanionObject stringCompanionObject2 = StringCompanionObject.INSTANCE;
            str = String.format(Locale.US, "Exporting %s (%d / %d)\nMessage %d / %d", Arrays.copyOf(new Object[]{processingState.entityName, Integer.valueOf(processingState.entityIndex + 1), Integer.valueOf(processingState.entityCount), Integer.valueOf(processingState.itemIndex), Integer.valueOf(processingState.itemCount)}, 5));
        } else {
            str = "Exporting " + processingState.step.name();
        }
        FileLog.m990e("[EXPORT] " + str + ", " + f);
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public String getTitle() {
        return "Export Chats";
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public void fillItems(ArrayList<UItem> items, UniversalAdapter adapter) {
        items.add(UItem.asHeader("Export settings"));
        this.exportSettings.fill(items);
        this.chatsSettings.fill(items);
        this.mediaSettings.fill(items);
        items.add(UItem.asShadow());
        items.add(BasePreferencesActivity.uButton$TMessagesProj$default((BasePreferencesActivity) this, (Enum) ExportItem.FORMAT, (CharSequence) "Select export result type", 0, formats[getIndexOfFormat()], (CharSequence) null, (Boolean) null, false, (String) null, false, false, (Boolean) null, 1972, (Object) null));
        items.add(BasePreferencesActivity.uButton$TMessagesProj$default((BasePreferencesActivity) this, (Enum) ExportItem.START_EXPORT, (CharSequence) "Start Export", 0, (CharSequence) null, (CharSequence) null, (Boolean) null, false, (String) null, false, false, (Boolean) null, 1980, (Object) null));
        items.add(BasePreferencesActivity.uButton$TMessagesProj$default((BasePreferencesActivity) this, (Enum) ExportItem.VIEW_JSON_EXPORT, (CharSequence) "Open Json Export", 0, (CharSequence) null, (CharSequence) null, (Boolean) null, false, (String) null, false, false, (Boolean) null, 1980, (Object) null));
        items.add(UItem.asShadow("Here you can export your chats."));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public void onClick(UItem item, View view, int position, float x, float y) {
        ExportActivity exportActivity;
        int i = item.id;
        if (i <= 0 || i > ExportItem.getEntries().size()) {
            return;
        }
        switch (WhenMappings.$EnumSwitchMapping$0[ExportItem.getEntries().get(item.id - 1).ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
                exportActivity = this;
                exportActivity.exportSettings.onClick(item);
                break;
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
                exportActivity = this;
                exportActivity.chatsSettings.onClick(item);
                break;
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
                exportActivity = this;
                exportActivity.mediaSettings.onClick(item);
                break;
            case 21:
                exportActivity = this;
                exportActivity.showListDialog(item, formats, "Select export result type", getIndexOfFormat(), new PopupUtils.OnItemClickListener() { // from class: com.exteragram.messenger.export.ui.ExportActivity$$ExternalSyntheticLambda4
                    @Override // com.exteragram.messenger.utils.ui.PopupUtils.OnItemClickListener
                    public final void onClick(int i2) {
                        ExportActivity.$r8$lambda$anjpbMsWdHeNsPc8nKOvMM4OfoA(this.f$0, i2);
                    }
                });
                break;
            case 22:
                TLRPC.InputPeer inputPeer = this.peer;
                if (inputPeer != null) {
                    this.settings.singlePeer = inputPeer;
                }
                BulletinFactory.of(this).createErrorBulletin("Starting export...").show();
                this.settings.media.sizeLimit = 2097152000L;
                ExportController.getInstance(UserConfig.selectedAccount).startExport(this.settings);
                exportActivity = this;
                break;
            case 23:
                Intent intent = new Intent("android.intent.action.OPEN_DOCUMENT_TREE");
                intent.addCategory("android.intent.category.DEFAULT");
                startActivityForResult(Intent.createChooser(intent, "Choose a directory"), 1337);
                exportActivity = this;
                break;
            default:
                exportActivity = this;
                break;
        }
        UniversalAdapter universalAdapter = exportActivity.getListView$TMessagesProj().adapter;
        if (universalAdapter != null) {
            universalAdapter.update(true);
        }
    }

    public static void $r8$lambda$anjpbMsWdHeNsPc8nKOvMM4OfoA(ExportActivity exportActivity, int i) {
        AbstractWriter.Format format;
        ExportSettings exportSettings = exportActivity.settings;
        if (i == 0) {
            format = AbstractWriter.Format.Html;
        } else if (i == 1) {
            format = AbstractWriter.Format.Json;
        } else {
            format = AbstractWriter.Format.HtmlAndJson;
        }
        exportSettings.format = format;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onActivityResultFragment(int requestCode, int resultCode, Intent data) {
        super.onActivityResultFragment(requestCode, resultCode, data);
        if (requestCode == 1337 && resultCode == -1 && data != null) {
            try {
                Uri data2 = data.getData();
                if (data2 == null) {
                    return;
                }
                presentFragment(new DialogsView(AndroidPickerUtils.getPath(getParentActivity(), DocumentsContract.buildDocumentUriUsingTree(data2, DocumentsContract.getTreeDocumentId(data2)))));
            } catch (Exception e) {
                if (ExteraConfig.getUseGoogleCrashlytics()) {
                    FirebaseCrashlytics.getInstance().recordException(e);
                }
            }
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$vbrcMRtE7h-rED62mVswu3a4yfo, reason: not valid java name */
    public static boolean m2475$r8$lambda$vbrcMRtE7hrED62mVswu3a4yfo(ExportActivity exportActivity, int i) {
        return (exportActivity.settings.types & i) != 0;
    }

    private final BooleanSupplier type(final int flag) {
        return new BooleanSupplier() { // from class: com.exteragram.messenger.export.ui.ExportActivity$$ExternalSyntheticLambda1
            @Override // java.util.function.BooleanSupplier
            public final boolean getAsBoolean() {
                return ExportActivity.m2475$r8$lambda$vbrcMRtE7hrED62mVswu3a4yfo(this.f$0, flag);
            }
        };
    }

    private final SwitchGroup.Setter setType(final int flag) {
        return new SwitchGroup.Setter() { // from class: com.exteragram.messenger.export.ui.ExportActivity$$ExternalSyntheticLambda0
            @Override // com.exteragram.messenger.preferences.SwitchGroup.Setter
            public final void set(boolean z) {
                ExportActivity.$r8$lambda$CSL7zr0qaOxhjff6yGhcKdv3rX4(this.f$0, flag, z);
            }
        };
    }

    public static void $r8$lambda$CSL7zr0qaOxhjff6yGhcKdv3rX4(ExportActivity exportActivity, int i, boolean z) {
        int i2;
        ExportSettings exportSettings = exportActivity.settings;
        if (z) {
            i2 = i | exportSettings.types;
        } else {
            i2 = (~i) & exportSettings.types;
        }
        exportSettings.types = i2;
    }

    public static boolean $r8$lambda$lr3s_ljEfZ5R2DSqgwPmtSpoz_I(ExportActivity exportActivity, int i) {
        return (exportActivity.settings.media.type & i) != 0;
    }

    private final BooleanSupplier media(final int flag) {
        return new BooleanSupplier() { // from class: com.exteragram.messenger.export.ui.ExportActivity$$ExternalSyntheticLambda2
            @Override // java.util.function.BooleanSupplier
            public final boolean getAsBoolean() {
                return ExportActivity.$r8$lambda$lr3s_ljEfZ5R2DSqgwPmtSpoz_I(this.f$0, flag);
            }
        };
    }

    private final SwitchGroup.Setter setMedia(final int flag) {
        return new SwitchGroup.Setter() { // from class: com.exteragram.messenger.export.ui.ExportActivity$$ExternalSyntheticLambda3
            @Override // com.exteragram.messenger.preferences.SwitchGroup.Setter
            public final void set(boolean z) {
                ExportActivity.m2474$r8$lambda$lelC_Sfy9tZdhla7ngXsAJQz2w(this.f$0, flag, z);
            }
        };
    }

    /* JADX INFO: renamed from: $r8$lambda$lelC_Sfy9tZdhla-7ngXsAJQz2w, reason: not valid java name */
    public static void m2474$r8$lambda$lelC_Sfy9tZdhla7ngXsAJQz2w(ExportActivity exportActivity, int i, boolean z) {
        int i2;
        ExportSettings.MediaSettings mediaSettings = exportActivity.settings.media;
        if (z) {
            i2 = i | mediaSettings.type;
        } else {
            i2 = (~i) & mediaSettings.type;
        }
        mediaSettings.type = i2;
    }

    private final int getIndexOfFormat() {
        AbstractWriter.Format format = this.settings.format;
        int i = format == null ? -1 : WhenMappings.$EnumSwitchMapping$1[format.ordinal()];
        int i2 = 1;
        if (i != 1) {
            i2 = 2;
            if (i != 2) {
                return 0;
            }
        }
        return i2;
    }
}
