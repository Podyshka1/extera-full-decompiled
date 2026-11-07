package com.exteragram.messenger.debug;

import android.app.Activity;
import android.text.Editable;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.collection.LongSparseArray;
import androidx.core.util.Consumer;
import com.exteragram.messenger.api.ApiController;
import com.exteragram.messenger.api.db.ExteraDatabase;
import com.exteragram.messenger.components.SupporterBottomSheet;
import com.exteragram.messenger.components.SupporterWelcomeSheet;
import com.exteragram.messenger.plugins.PluginsConstants;
import com.exteragram.messenger.preferences.BasePreferencesActivity;
import com.exteragram.messenger.utils.network.RemoteUtils;
import java.io.File;
import java.util.ArrayList;
import kotlin.LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.EditTextBoldCursor;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\t\u0018\u00002\u00020\u0001:\u0001\u001dB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0016J(\u0010\u0006\u001a\u00020\u00072\u0016\u0010\b\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\b\u0012\u0004\u0012\u00020\n`\u000b2\u0006\u0010\f\u001a\u00020\rH\u0014J0\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0015H\u0014J\b\u0010\u0017\u001a\u00020\nH\u0002J\b\u0010\u0018\u001a\u00020\nH\u0002J\b\u0010\u0019\u001a\u00020\nH\u0002J\b\u0010\u001a\u001a\u00020\u0005H\u0002J\b\u0010\u001b\u001a\u00020\u0005H\u0002J\b\u0010\u001c\u001a\u00020\u0007H\u0002¨\u0006\u001e"}, d2 = {"Lcom/exteragram/messenger/debug/DebugActivity;", "Lcom/exteragram/messenger/preferences/BasePreferencesActivity;", "<init>", "()V", "getTitle", _UrlKt.FRAGMENT_ENCODE_SET, "fillItems", _UrlKt.FRAGMENT_ENCODE_SET, PluginsConstants.Settings.ITEMS, "Ljava/util/ArrayList;", "Lorg/telegram/ui/Components/UItem;", "Lkotlin/collections/ArrayList;", "adapter", "Lorg/telegram/ui/Components/UniversalAdapter;", "onClick", PluginsConstants.Settings.ITEM, PluginsConstants.Settings.VIEW, "Landroid/view/View;", "position", _UrlKt.FRAGMENT_ENCODE_SET, "x", _UrlKt.FRAGMENT_ENCODE_SET, "y", "createFreezeThresholdSliderItem", "createLoadThresholdSliderItem", "createHeapLimitSliderItem", "getHeapUsageValue", "getIpConfigOverrideValue", "showIpConfigOverrideDialog", "DebugItem", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nDebugActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DebugActivity.kt\ncom/exteragram/messenger/debug/DebugActivity\n+ 2 SparseArray.kt\nandroidx/core/util/SparseArrayKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,360:1\n25#2:361\n1#3:362\n*S KotlinDebug\n*F\n+ 1 DebugActivity.kt\ncom/exteragram/messenger/debug/DebugActivity\n*L\n182#1:361\n*E\n"})
public final class DebugActivity extends BasePreferencesActivity {

    @Metadata(m910k = 3, mv = {2, 2, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[DebugItem.values().length];
            try {
                iArr[DebugItem.DEBUG_CAMERA_METRICS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DebugItem.FORCE_COMPACT_SAVED_MUSIC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DebugItem.DISABLE_API_REQUESTS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[DebugItem.DISABLE_CHAT_FADE_WALLPAPER_BLEND.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[DebugItem.CHAT_FADE_USE_WHITE_BACKGROUND.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[DebugItem.FORCE_REFRESH_REMOTE_CONFIG.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[DebugItem.CLEAR_DB.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[DebugItem.CLEAR_TRANSLATIONS.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[DebugItem.SHOW_SUPPORTER_WELCOME.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[DebugItem.SHOW_SUPPORTER_PROMO.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[DebugItem.SET_IPCONFIG_OVERRIDE.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[DebugItem.CLEAR_IPCONFIG_OVERRIDE.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[DebugItem.HEAP_MONITOR.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr[DebugItem.DUMP_HEAP.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr[DebugItem.SHARE_HEAP_DUMP.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr[DebugItem.DELETE_HEAP_DUMPS.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                iArr[DebugItem.LOAD_MONITOR.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr[DebugItem.CAPTURE_LOAD_REPORT.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                iArr[DebugItem.SHARE_LOAD_REPORT.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                iArr[DebugItem.DELETE_LOAD_REPORTS.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                iArr[DebugItem.FREEZE_MONITOR.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                iArr[DebugItem.SHARE_FREEZE_REPORT.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                iArr[DebugItem.DELETE_FREEZE_REPORTS.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u001a\n\u0002\u0010\b\n\u0000\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\u001b\u001a\u00020\u001cj\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001a¨\u0006\u001d"}, d2 = {"Lcom/exteragram/messenger/debug/DebugActivity$DebugItem;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;I)V", "DEBUG_CAMERA_METRICS", "FORCE_COMPACT_SAVED_MUSIC", "DISABLE_API_REQUESTS", "DISABLE_CHAT_FADE_WALLPAPER_BLEND", "CHAT_FADE_USE_WHITE_BACKGROUND", "FORCE_REFRESH_REMOTE_CONFIG", "CLEAR_DB", "CLEAR_TRANSLATIONS", "SHOW_SUPPORTER_WELCOME", "SHOW_SUPPORTER_PROMO", "SET_IPCONFIG_OVERRIDE", "CLEAR_IPCONFIG_OVERRIDE", "HEAP_MONITOR", "DUMP_HEAP", "SHARE_HEAP_DUMP", "DELETE_HEAP_DUMPS", "LOAD_MONITOR", "CAPTURE_LOAD_REPORT", "SHARE_LOAD_REPORT", "DELETE_LOAD_REPORTS", "FREEZE_MONITOR", "SHARE_FREEZE_REPORT", "DELETE_FREEZE_REPORTS", "getId", _UrlKt.FRAGMENT_ENCODE_SET, "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class DebugItem {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ DebugItem[] $VALUES;
        public static final DebugItem DEBUG_CAMERA_METRICS = new DebugItem("DEBUG_CAMERA_METRICS", 0);
        public static final DebugItem FORCE_COMPACT_SAVED_MUSIC = new DebugItem("FORCE_COMPACT_SAVED_MUSIC", 1);
        public static final DebugItem DISABLE_API_REQUESTS = new DebugItem("DISABLE_API_REQUESTS", 2);
        public static final DebugItem DISABLE_CHAT_FADE_WALLPAPER_BLEND = new DebugItem("DISABLE_CHAT_FADE_WALLPAPER_BLEND", 3);
        public static final DebugItem CHAT_FADE_USE_WHITE_BACKGROUND = new DebugItem("CHAT_FADE_USE_WHITE_BACKGROUND", 4);
        public static final DebugItem FORCE_REFRESH_REMOTE_CONFIG = new DebugItem("FORCE_REFRESH_REMOTE_CONFIG", 5);
        public static final DebugItem CLEAR_DB = new DebugItem("CLEAR_DB", 6);
        public static final DebugItem CLEAR_TRANSLATIONS = new DebugItem("CLEAR_TRANSLATIONS", 7);
        public static final DebugItem SHOW_SUPPORTER_WELCOME = new DebugItem("SHOW_SUPPORTER_WELCOME", 8);
        public static final DebugItem SHOW_SUPPORTER_PROMO = new DebugItem("SHOW_SUPPORTER_PROMO", 9);
        public static final DebugItem SET_IPCONFIG_OVERRIDE = new DebugItem("SET_IPCONFIG_OVERRIDE", 10);
        public static final DebugItem CLEAR_IPCONFIG_OVERRIDE = new DebugItem("CLEAR_IPCONFIG_OVERRIDE", 11);
        public static final DebugItem HEAP_MONITOR = new DebugItem("HEAP_MONITOR", 12);
        public static final DebugItem DUMP_HEAP = new DebugItem("DUMP_HEAP", 13);
        public static final DebugItem SHARE_HEAP_DUMP = new DebugItem("SHARE_HEAP_DUMP", 14);
        public static final DebugItem DELETE_HEAP_DUMPS = new DebugItem("DELETE_HEAP_DUMPS", 15);
        public static final DebugItem LOAD_MONITOR = new DebugItem("LOAD_MONITOR", 16);
        public static final DebugItem CAPTURE_LOAD_REPORT = new DebugItem("CAPTURE_LOAD_REPORT", 17);
        public static final DebugItem SHARE_LOAD_REPORT = new DebugItem("SHARE_LOAD_REPORT", 18);
        public static final DebugItem DELETE_LOAD_REPORTS = new DebugItem("DELETE_LOAD_REPORTS", 19);
        public static final DebugItem FREEZE_MONITOR = new DebugItem("FREEZE_MONITOR", 20);
        public static final DebugItem SHARE_FREEZE_REPORT = new DebugItem("SHARE_FREEZE_REPORT", 21);
        public static final DebugItem DELETE_FREEZE_REPORTS = new DebugItem("DELETE_FREEZE_REPORTS", 22);

        private static final /* synthetic */ DebugItem[] $values() {
            return new DebugItem[]{DEBUG_CAMERA_METRICS, FORCE_COMPACT_SAVED_MUSIC, DISABLE_API_REQUESTS, DISABLE_CHAT_FADE_WALLPAPER_BLEND, CHAT_FADE_USE_WHITE_BACKGROUND, FORCE_REFRESH_REMOTE_CONFIG, CLEAR_DB, CLEAR_TRANSLATIONS, SHOW_SUPPORTER_WELCOME, SHOW_SUPPORTER_PROMO, SET_IPCONFIG_OVERRIDE, CLEAR_IPCONFIG_OVERRIDE, HEAP_MONITOR, DUMP_HEAP, SHARE_HEAP_DUMP, DELETE_HEAP_DUMPS, LOAD_MONITOR, CAPTURE_LOAD_REPORT, SHARE_LOAD_REPORT, DELETE_LOAD_REPORTS, FREEZE_MONITOR, SHARE_FREEZE_REPORT, DELETE_FREEZE_REPORTS};
        }

        public static EnumEntries<DebugItem> getEntries() {
            return $ENTRIES;
        }

        public static DebugItem valueOf(String str) {
            return (DebugItem) Enum.valueOf(DebugItem.class, str);
        }

        public static DebugItem[] values() {
            return (DebugItem[]) $VALUES.clone();
        }

        private DebugItem(String str, int i) {
        }

        static {
            DebugItem[] debugItemArr$values = $values();
            $VALUES = debugItemArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(debugItemArr$values);
        }

        public final int getId() {
            return ordinal() + 1;
        }
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public String getTitle() {
        return "Debug";
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public void fillItems(ArrayList<UItem> items, UniversalAdapter adapter) {
        items.add(UItem.asCheck(DebugItem.DEBUG_CAMERA_METRICS.getId(), "Metrics in InstantCameraView").setChecked(DebugConfig.getDebugCameraMetrics()));
        items.add(UItem.asCheck(DebugItem.FORCE_COMPACT_SAVED_MUSIC.getId(), "Compact Saved Music view").setChecked(DebugConfig.getForceCompactSavedMusic()));
        items.add(UItem.asCheck(DebugItem.DISABLE_API_REQUESTS.getId(), "Disable exteraGram API requests").setChecked(DebugConfig.getDisableApiRequests()));
        items.add(UItem.asCheck(DebugItem.DISABLE_CHAT_FADE_WALLPAPER_BLEND.getId(), "Disable chat fade wallpaper blend").setChecked(DebugConfig.getDisableChatFadeWallpaperBlend()));
        items.add(UItem.asCheck(DebugItem.CHAT_FADE_USE_WHITE_BACKGROUND.getId(), "Use windowBackgroundWhite for chat fade").setChecked(DebugConfig.getChatFadeUseWhiteBackground()));
        items.add(UItem.asShadow());
        items.add(UItem.asButton(DebugItem.FORCE_REFRESH_REMOTE_CONFIG.getId(), "Refresh Remote Config"));
        items.add(UItem.asButton(DebugItem.CLEAR_DB.getId(), "Clear exteraDatabase"));
        items.add(UItem.asButton(DebugItem.CLEAR_TRANSLATIONS.getId(), "Clear translations cache"));
        items.add(UItem.asButton(DebugItem.SHOW_SUPPORTER_WELCOME.getId(), "Show supporter welcome sheet"));
        items.add(UItem.asButton(DebugItem.SHOW_SUPPORTER_PROMO.getId(), "Show supporter promo sheet"));
        items.add(UItem.asShadow());
        items.add(UItem.asButton(DebugItem.SET_IPCONFIG_OVERRIDE.getId(), "Set ipconfigv3 override", getIpConfigOverrideValue()));
        items.add(UItem.asButton(DebugItem.CLEAR_IPCONFIG_OVERRIDE.getId(), "Clear ipconfigv3 override"));
        items.add(UItem.asShadow());
        items.add(UItem.asCheck(DebugItem.HEAP_MONITOR.getId(), "Heap limit monitor").setChecked(DebugConfig.getHeapMonitorEnabled()));
        if (DebugConfig.getHeapMonitorEnabled()) {
            items.add(createHeapLimitSliderItem());
        }
        items.add(UItem.asButton(DebugItem.DUMP_HEAP.getId(), "Dump & share heap", getHeapUsageValue()));
        HeapMonitor heapMonitor = HeapMonitor.INSTANCE;
        File lastDump = heapMonitor.getLastDump();
        if (lastDump != null) {
            items.add(UItem.asButton(DebugItem.SHARE_HEAP_DUMP.getId(), "Share last heap dump", AndroidUtilities.formatFileSize(lastDump.length())));
        }
        long dumpsSize = heapMonitor.getDumpsSize();
        if (dumpsSize > 0) {
            items.add(UItem.asButton(DebugItem.DELETE_HEAP_DUMPS.getId(), "Delete heap dumps", AndroidUtilities.formatFileSize(dumpsSize)));
        }
        items.add(UItem.asShadow());
        items.add(UItem.asCheck(DebugItem.LOAD_MONITOR.getId(), "Load monitor").setChecked(DebugConfig.getLoadMonitorEnabled()));
        if (DebugConfig.getLoadMonitorEnabled()) {
            items.add(createLoadThresholdSliderItem());
        }
        int id = DebugItem.CAPTURE_LOAD_REPORT.getId();
        LoadMonitor loadMonitor = LoadMonitor.INSTANCE;
        items.add(UItem.asButton(id, "Capture & share load report", loadMonitor.getSummary()));
        File lastReport = loadMonitor.getLastReport();
        if (lastReport != null) {
            items.add(UItem.asButton(DebugItem.SHARE_LOAD_REPORT.getId(), "Share last load report", AndroidUtilities.formatFileSize(lastReport.length())));
        }
        long reportsSize = loadMonitor.getReportsSize();
        if (reportsSize > 0) {
            items.add(UItem.asButton(DebugItem.DELETE_LOAD_REPORTS.getId(), "Delete load reports", AndroidUtilities.formatFileSize(reportsSize)));
        }
        items.add(UItem.asShadow());
        items.add(UItem.asCheck(DebugItem.FREEZE_MONITOR.getId(), "Freeze monitor").setChecked(DebugConfig.getFreezeMonitorEnabled()));
        if (DebugConfig.getFreezeMonitorEnabled()) {
            items.add(createFreezeThresholdSliderItem());
        }
        FreezeMonitor freezeMonitor = FreezeMonitor.INSTANCE;
        File report = freezeMonitor.getReport();
        if (report != null) {
            items.add(UItem.asButton(DebugItem.SHARE_FREEZE_REPORT.getId(), "Share freeze report", AndroidUtilities.formatFileSize(report.length())));
        }
        long reportsSize2 = freezeMonitor.getReportsSize();
        if (reportsSize2 > 0) {
            items.add(UItem.asButton(DebugItem.DELETE_FREEZE_REPORTS.getId(), "Delete freeze reports", AndroidUtilities.formatFileSize(reportsSize2)));
        }
        items.add(UItem.asShadow());
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public void onClick(UItem item, View view, int position, float x, float y) {
        int i = item.id;
        if (i <= 0 || i > DebugItem.getEntries().size()) {
            return;
        }
        switch (WhenMappings.$EnumSwitchMapping$0[DebugItem.getEntries().get(item.id - 1).ordinal()]) {
            case 1:
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.debug.DebugActivity$$ExternalSyntheticLambda6
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        DebugConfig.setDebugCameraMetrics(((Boolean) obj).booleanValue());
                    }
                });
                break;
            case 2:
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.debug.DebugActivity$$ExternalSyntheticLambda10
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        DebugConfig.setForceCompactSavedMusic(((Boolean) obj).booleanValue());
                    }
                });
                break;
            case 3:
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.debug.DebugActivity$$ExternalSyntheticLambda11
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        DebugConfig.setDisableApiRequests(((Boolean) obj).booleanValue());
                    }
                });
                break;
            case 4:
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.debug.DebugActivity$$ExternalSyntheticLambda12
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        DebugConfig.setDisableChatFadeWallpaperBlend(((Boolean) obj).booleanValue());
                    }
                });
                break;
            case 5:
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.debug.DebugActivity$$ExternalSyntheticLambda13
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        DebugConfig.setChatFadeUseWhiteBackground(((Boolean) obj).booleanValue());
                    }
                });
                break;
            case 6:
                RemoteUtils.forceRefresh();
                break;
            case 7:
                Utilities.globalQueue.postRunnable(new Runnable() { // from class: com.exteragram.messenger.debug.DebugActivity$$ExternalSyntheticLambda14
                    @Override // java.lang.Runnable
                    public final void run() {
                        DebugActivity.$r8$lambda$3ftFdNOmn0AoZ3uOqD7uoYEEzXE(this.f$0);
                    }
                });
                break;
            case 8:
                getMessagesController().getTranslateController().clearTranslationCache();
                LongSparseArray<ArrayList<MessageObject>> longSparseArray = getMessagesController().dialogMessage;
                if (longSparseArray != null) {
                    int size = longSparseArray.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        ArrayList<MessageObject> arrayListValueAt = longSparseArray.valueAt(i2);
                        if (arrayListValueAt != null) {
                            int size2 = arrayListValueAt.size();
                            for (int i3 = 0; i3 < size2; i3++) {
                                getMessagesController().getTranslateController().clearMessageTranslationState(arrayListValueAt.get(i3));
                            }
                        }
                    }
                }
                SparseArray<MessageObject> sparseArray = getMessagesController().dialogMessagesByIds;
                if (sparseArray != null) {
                    int size3 = sparseArray.size();
                    for (int i4 = 0; i4 < size3; i4++) {
                        getMessagesController().getTranslateController().clearMessageTranslationState(sparseArray.valueAt(i4));
                    }
                }
                LongSparseArray<MessageObject> longSparseArray2 = getMessagesController().dialogMessagesByRandomIds;
                if (longSparseArray2 != null) {
                    int size4 = longSparseArray2.size();
                    for (int i5 = 0; i5 < size4; i5++) {
                        getMessagesController().getTranslateController().clearMessageTranslationState(longSparseArray2.valueAt(i5));
                    }
                }
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.debug.DebugActivity$$ExternalSyntheticLambda15
                    @Override // java.lang.Runnable
                    public final void run() {
                        BulletinFactory.of(this.f$0).createSimpleBulletin(C2807R.raw.contact_check, "Translation cache cleared.").show();
                    }
                });
                break;
            case 9:
                SupporterWelcomeSheet.show(this, 0);
                break;
            case 10:
                showDialog(new SupporterBottomSheet(this, null, this.resourceProvider));
                break;
            case 11:
                showIpConfigOverrideDialog();
                break;
            case 12:
                ConnectionsManager.setDebugDnsConfigOverride(null);
                getListView$TMessagesProj().adapter.update(true);
                BulletinFactory.of(this).createSimpleBulletin(C2807R.raw.contact_check, "ipconfigv3 override cleared.").show();
                break;
            case 13:
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.debug.DebugActivity$$ExternalSyntheticLambda16
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        HeapMonitor.INSTANCE.setEnabled(((Boolean) obj).booleanValue());
                    }
                });
                break;
            case 14:
                Activity parentActivity = getParentActivity();
                if (parentActivity != null) {
                    HeapMonitor.INSTANCE.dumpAndShare(parentActivity, this.resourceProvider);
                }
                break;
            case 15:
                Activity parentActivity2 = getParentActivity();
                if (parentActivity2 != null) {
                    HeapMonitor.INSTANCE.shareLastDump(parentActivity2);
                }
                break;
            case 16:
                HeapMonitor.INSTANCE.deleteDumps(new Function0() { // from class: com.exteragram.messenger.debug.DebugActivity$$ExternalSyntheticLambda17
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return DebugActivity.$r8$lambda$0H08GdubpMnhY7z1VPaMUMp0YVg(this.f$0);
                    }
                });
                break;
            case 17:
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.debug.DebugActivity$$ExternalSyntheticLambda18
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        LoadMonitor.INSTANCE.setEnabled(((Boolean) obj).booleanValue());
                    }
                });
                break;
            case 18:
                Activity parentActivity3 = getParentActivity();
                if (parentActivity3 != null) {
                    LoadMonitor.INSTANCE.captureAndShare(parentActivity3);
                }
                break;
            case 19:
                Activity parentActivity4 = getParentActivity();
                if (parentActivity4 != null) {
                    LoadMonitor.INSTANCE.shareLastReport(parentActivity4);
                }
                break;
            case 20:
                LoadMonitor.INSTANCE.deleteReports(new Function0() { // from class: com.exteragram.messenger.debug.DebugActivity$$ExternalSyntheticLambda7
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return DebugActivity.$r8$lambda$SJdEHBZnL9NoA7X68vORHRou62M(this.f$0);
                    }
                });
                break;
            case 21:
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.debug.DebugActivity$$ExternalSyntheticLambda8
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        FreezeMonitor.INSTANCE.setEnabled(((Boolean) obj).booleanValue());
                    }
                });
                break;
            case 22:
                Activity parentActivity5 = getParentActivity();
                if (parentActivity5 != null) {
                    FreezeMonitor.INSTANCE.shareReport(parentActivity5);
                }
                break;
            case 23:
                FreezeMonitor.INSTANCE.deleteReports(new Function0() { // from class: com.exteragram.messenger.debug.DebugActivity$$ExternalSyntheticLambda9
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return DebugActivity.$r8$lambda$FXqHAInsOSCxaiN3tolJfNNz8Vg(this.f$0);
                    }
                });
                break;
            default:
                LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0.m909m();
                break;
        }
    }

    public static void $r8$lambda$3ftFdNOmn0AoZ3uOqD7uoYEEzXE(final DebugActivity debugActivity) {
        ExteraDatabase.INSTANCE.getInstance().clearAllTables();
        ApiController.resetSyncState$default(null, 1, null);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.debug.DebugActivity$$ExternalSyntheticLambda19
            @Override // java.lang.Runnable
            public final void run() {
                BulletinFactory.of(this.f$0).createSimpleBulletin(C2807R.raw.contact_check, "Successfully cleared all tables.").show();
            }
        });
    }

    public static Unit $r8$lambda$0H08GdubpMnhY7z1VPaMUMp0YVg(DebugActivity debugActivity) {
        debugActivity.getListView$TMessagesProj().adapter.update(true);
        BulletinFactory.of(debugActivity).createSimpleBulletin(C2807R.raw.contact_check, "Heap dumps deleted.").show();
        return Unit.INSTANCE;
    }

    public static Unit $r8$lambda$SJdEHBZnL9NoA7X68vORHRou62M(DebugActivity debugActivity) {
        debugActivity.getListView$TMessagesProj().adapter.update(true);
        BulletinFactory.of(debugActivity).createSimpleBulletin(C2807R.raw.contact_check, "Load reports deleted.").show();
        return Unit.INSTANCE;
    }

    public static Unit $r8$lambda$FXqHAInsOSCxaiN3tolJfNNz8Vg(DebugActivity debugActivity) {
        debugActivity.getListView$TMessagesProj().adapter.update(true);
        BulletinFactory.of(debugActivity).createSimpleBulletin(C2807R.raw.contact_check, "Freeze reports deleted.").show();
        return Unit.INSTANCE;
    }

    private final UItem createFreezeThresholdSliderItem() {
        final int i = 100;
        return UItem.asIntSlideView(1, 2, FreezeMonitor.INSTANCE.getThresholdMs() / 100, 20, new Utilities.CallbackReturn() { // from class: com.exteragram.messenger.debug.DebugActivity$$ExternalSyntheticLambda2
            @Override // org.telegram.messenger.Utilities.CallbackReturn
            public final Object run(Object obj) {
                return DebugActivity.$r8$lambda$AZJ401Rohj7ho11R6f40saRWxB4(i, (Integer) obj);
            }
        }, new Utilities.Callback() { // from class: com.exteragram.messenger.debug.DebugActivity$$ExternalSyntheticLambda3
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                FreezeMonitor.INSTANCE.setThresholdMs(((Integer) obj).intValue() * i);
            }
        });
    }

    public static CharSequence $r8$lambda$AZJ401Rohj7ho11R6f40saRWxB4(int i, Integer num) {
        return (num.intValue() * i) + " ms";
    }

    private final UItem createLoadThresholdSliderItem() {
        return UItem.asIntSlideView(1, 1, LoadMonitor.INSTANCE.getCpuPercent(), 50, new Utilities.CallbackReturn() { // from class: com.exteragram.messenger.debug.DebugActivity$$ExternalSyntheticLambda4
            @Override // org.telegram.messenger.Utilities.CallbackReturn
            public final Object run(Object obj) {
                return DebugActivity.$r8$lambda$fwK_7Z5MlqQ9cVB6ltUWJjyzrWE((Integer) obj);
            }
        }, new Utilities.Callback() { // from class: com.exteragram.messenger.debug.DebugActivity$$ExternalSyntheticLambda5
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                LoadMonitor.INSTANCE.setCpuPercent(((Integer) obj).intValue());
            }
        });
    }

    public static CharSequence $r8$lambda$fwK_7Z5MlqQ9cVB6ltUWJjyzrWE(Integer num) {
        return num + "% of a core";
    }

    private final UItem createHeapLimitSliderItem() {
        HeapMonitor heapMonitor = HeapMonitor.INSTANCE;
        final int i = 16;
        return UItem.asIntSlideView(1, 4, heapMonitor.getLimitMb() / 16, heapMonitor.getMaxLimitMb() / 16, new Utilities.CallbackReturn() { // from class: com.exteragram.messenger.debug.DebugActivity$$ExternalSyntheticLambda0
            @Override // org.telegram.messenger.Utilities.CallbackReturn
            public final Object run(Object obj) {
                return DebugActivity.m2398$r8$lambda$CbguHwmSr_eAdbsmezXuoYkLaE(i, (Integer) obj);
            }
        }, new Utilities.Callback() { // from class: com.exteragram.messenger.debug.DebugActivity$$ExternalSyntheticLambda1
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                HeapMonitor.INSTANCE.setLimitMb(((Integer) obj).intValue() * i);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$CbguHwmSr_eAdbsmez-XuoYkLaE, reason: not valid java name */
    public static CharSequence m2398$r8$lambda$CbguHwmSr_eAdbsmezXuoYkLaE(int i, Integer num) {
        return (num.intValue() * i) + " MB";
    }

    private final String getHeapUsageValue() {
        return AndroidUtilities.formatFileSize(HeapMonitor.INSTANCE.getUsedBytes(), true, false) + " / " + AndroidUtilities.formatFileSize(Runtime.getRuntime().maxMemory(), true, false);
    }

    private final String getIpConfigOverrideValue() {
        String debugDnsConfigOverride = ConnectionsManager.getDebugDnsConfigOverride();
        if (debugDnsConfigOverride == null || StringsKt.isBlank(debugDnsConfigOverride)) {
            return "Not set";
        }
        return debugDnsConfigOverride.length() + " chars";
    }

    private final void showIpConfigOverrideDialog() {
        Activity parentActivity = getParentActivity();
        if (parentActivity == null) {
            return;
        }
        final EditTextBoldCursor editTextBoldCursor = new EditTextBoldCursor(parentActivity);
        editTextBoldCursor.lineYFix = true;
        editTextBoldCursor.setTextSize(1, 18.0f);
        editTextBoldCursor.setText(ConnectionsManager.getDebugDnsConfigOverride());
        editTextBoldCursor.setTextColor(Theme.getColor(Theme.key_dialogTextBlack, this.resourceProvider));
        editTextBoldCursor.setHintColor(Theme.getColor(Theme.key_dialogTextHint, this.resourceProvider));
        editTextBoldCursor.setHintText("Base64 from Firebase Remote Config");
        editTextBoldCursor.setGravity(8388659);
        editTextBoldCursor.setMinLines(6);
        editTextBoldCursor.setMaxLines(10);
        editTextBoldCursor.setInputType(655361);
        int i = Theme.key_dialogInputFieldActivated;
        editTextBoldCursor.setCursorColor(Theme.getColor(i, this.resourceProvider));
        editTextBoldCursor.setLineColors(Theme.getColor(Theme.key_dialogInputField, this.resourceProvider), Theme.getColor(i, this.resourceProvider), Theme.getColor(Theme.key_text_RedRegular, this.resourceProvider));
        editTextBoldCursor.setBackground(null);
        editTextBoldCursor.setPadding(0, AndroidUtilities.dp(6.0f), 0, AndroidUtilities.dp(6.0f));
        Editable text = editTextBoldCursor.getText();
        editTextBoldCursor.setSelection(text != null ? text.length() : 0);
        FrameLayout frameLayout = new FrameLayout(parentActivity);
        frameLayout.addView(editTextBoldCursor, LayoutHelper.createFrame(-1, -2.0f, 8388659, 24.0f, 12.0f, 24.0f, 0.0f));
        showDialog(new AlertDialog.Builder(parentActivity).setTitle("ipconfigv3 override").setView(frameLayout).setPositiveButton("Apply", new AlertDialog.OnButtonClickListener() { // from class: com.exteragram.messenger.debug.DebugActivity$$ExternalSyntheticLambda20
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i2) {
                DebugActivity.$r8$lambda$TSIsEP8Zu81ieOsxL1x8oUKcIAA(editTextBoldCursor, this, alertDialog, i2);
            }
        }).setNegativeButton("Cancel", null).create());
    }

    public static void $r8$lambda$TSIsEP8Zu81ieOsxL1x8oUKcIAA(EditTextBoldCursor editTextBoldCursor, DebugActivity debugActivity, AlertDialog alertDialog, int i) {
        String string;
        Editable text = editTextBoldCursor.getText();
        String string2 = (text == null || (string = text.toString()) == null) ? null : StringsKt.trim((CharSequence) string).toString();
        if (string2 == null) {
            string2 = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        if (TextUtils.isEmpty(string2)) {
            ConnectionsManager.setDebugDnsConfigOverride(null);
            debugActivity.getListView$TMessagesProj().adapter.update(true);
            BulletinFactory.of(debugActivity).createSimpleBulletin(C2807R.raw.contact_check, "ipconfigv3 override cleared.").show();
        } else {
            boolean andApplyDebugDnsConfigOverride = ConnectionsManager.setAndApplyDebugDnsConfigOverride(debugActivity.currentAccount, string2);
            debugActivity.getListView$TMessagesProj().adapter.update(true);
            BulletinFactory.of(debugActivity).createSimpleBulletin(andApplyDebugDnsConfigOverride ? C2807R.raw.contact_check : C2807R.raw.error, andApplyDebugDnsConfigOverride ? "ipconfigv3 override saved and submitted." : "Failed to decode ipconfigv3 override.").show();
        }
    }
}
