package com.exteragram.messenger.preferences.appearance;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import androidx.core.content.ContextCompat;
import androidx.core.util.Consumer;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.MainMenuItem;
import com.exteragram.messenger.TransitionAnimation;
import com.exteragram.messenger.config.BottomNavigationBar;
import com.exteragram.messenger.plugins.PluginsConstants;
import com.exteragram.messenger.plugins.PluginsController;
import com.exteragram.messenger.preferences.BasePreferencesActivity;
import com.exteragram.messenger.preferences.components.AltSeekbar;
import com.exteragram.messenger.utils.ExtensionsKt;
import com.exteragram.messenger.utils.ui.PopupUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.function.Predicate;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.math.MathKt;
import kotlin.ranges.RangesKt;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.Utilities;
import org.telegram.ui.ActionBar.ActionBarMenuItem;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;
import org.telegram.ui.Components.UniversalRecyclerView;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\r\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 @2\u00020\u0001:\u0003?@AB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0017\u001a\u00020\u0018H\u0014J\b\u0010\u0019\u001a\u00020\u0018H\u0002J\b\u0010\u001a\u001a\u00020\u001bH\u0016J\u0010\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0014J\u0010\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0002J\u001e\u0010$\u001a\u00020\u00182\f\u0010%\u001a\b\u0012\u0004\u0012\u00020&0\u000f2\u0006\u0010'\u001a\u00020(H\u0014J<\u0010)\u001a\u00020\u00182\f\u0010%\u001a\b\u0012\u0004\u0012\u00020&0\u000f2\u0006\u0010'\u001a\u00020(2\u0006\u0010*\u001a\u00020\u001b2\f\u0010+\u001a\b\u0012\u0004\u0012\u00020\u00060\u000f2\u0006\u0010,\u001a\u00020!H\u0002J\u001c\u0010-\u001a\u0004\u0018\u00010&2\u0006\u0010.\u001a\u00020\u00062\b\u0010/\u001a\u0004\u0018\u00010\u0007H\u0002J\u001e\u00100\u001a\u00020\u00182\u0006\u00101\u001a\u00020\u00062\f\u00102\u001a\b\u0012\u0004\u0012\u00020&0\u000fH\u0002J0\u00103\u001a\u00020\u00182\u0006\u00104\u001a\u00020&2\u0006\u00105\u001a\u00020\u001d2\u0006\u00106\u001a\u00020\u00062\u0006\u00107\u001a\u00020#2\u0006\u00108\u001a\u00020#H\u0014J\b\u00109\u001a\u00020\u0018H\u0002J\b\u0010:\u001a\u00020;H\u0002J\u0012\u0010<\u001a\u00020\u00182\b\b\u0002\u0010=\u001a\u00020!H\u0002J\b\u0010>\u001a\u00020\u0018H\u0002R\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00060\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012X\u0082.¢\u0006\u0004\n\u0002\u0010\u0014R\u0016\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012X\u0082.¢\u0006\u0004\n\u0002\u0010\u0014R\u0016\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012X\u0082.¢\u0006\u0004\n\u0002\u0010\u0014¨\u0006B"}, d2 = {"Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;", "Lcom/exteragram/messenger/preferences/BasePreferencesActivity;", "<init>", "()V", "itemDetails", "Ljava/util/HashMap;", _UrlKt.FRAGMENT_ENCODE_SET, "Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$ItemInfo;", "reorderIcon", "Landroid/graphics/drawable/Drawable;", "resetItem", "Lorg/telegram/ui/ActionBar/ActionBarMenuItem;", "predictiveBackSeekbar", "Lcom/exteragram/messenger/preferences/components/AltSeekbar;", "stableDividerIds", "Ljava/util/ArrayList;", "nextDividerId", "tabletModeOptions", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "[Ljava/lang/CharSequence;", "bottomNavigationModes", "transitionAnimations", "initializeOptionStrings", _UrlKt.FRAGMENT_ENCODE_SET, "initItemDetails", "getTitle", _UrlKt.FRAGMENT_ENCODE_SET, "createView", "Landroid/view/View;", "context", "Landroid/content/Context;", "isPredictiveBackOff", _UrlKt.FRAGMENT_ENCODE_SET, "value", _UrlKt.FRAGMENT_ENCODE_SET, "fillItems", PluginsConstants.Settings.ITEMS, "Lorg/telegram/ui/Components/UItem;", "adapter", "Lorg/telegram/ui/Components/UniversalAdapter;", "addMenuSection", PluginsConstants.Settings.TYPE_HEADER, "ids", "mainSection", "createMenuItem", "id", "info", "updateConfigFromReorder", "sectionId", "uItems", "onClick", PluginsConstants.Settings.ITEM, PluginsConstants.Settings.VIEW, "position", "x", "y", "saveAndNotify", "refreshEditorList", "Lorg/telegram/ui/Components/UniversalRecyclerView;", "updateResetButtonVisibility", "animated", "resetToDefault", "AppNavigationItem", "Companion", "ItemInfo", "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nAppNavigationPreferencesActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppNavigationPreferencesActivity.kt\ncom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 SharedPreferences.kt\nandroidx/core/content/SharedPreferencesKt\n*L\n1#1,425:1\n1#2:426\n41#3,12:427\n41#3,12:439\n*S KotlinDebug\n*F\n+ 1 AppNavigationPreferencesActivity.kt\ncom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity\n*L\n297#1:427,12\n309#1:439,12\n*E\n"})
public final class AppNavigationPreferencesActivity extends BasePreferencesActivity {
    private CharSequence[] bottomNavigationModes;
    private AltSeekbar predictiveBackSeekbar;
    private Drawable reorderIcon;
    private ActionBarMenuItem resetItem;
    private CharSequence[] tabletModeOptions;
    private CharSequence[] transitionAnimations;
    private final HashMap<Integer, ItemInfo> itemDetails = new HashMap<>();
    private final ArrayList<Integer> stableDividerIds = new ArrayList<>();
    private int nextDividerId = -2000;

    @Metadata(m862k = 3, mv = {2, 2, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[AppNavigationItem.values().length];
            try {
                iArr[AppNavigationItem.DRAWER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AppNavigationItem.IMMERSIVE_ANIMATION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[AppNavigationItem.BOTTOM_NAVIGATION_BAR_MODE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[AppNavigationItem.TRANSITION_ANIMATION.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[AppNavigationItem.TABLET_MODE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u0000 \u000e2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000eB\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0011\u0010\n\u001a\u00020\u000b8F¢\u0006\u0006\u001a\u0004\b\f\u0010\rj\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\u000f"}, d2 = {"Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;I)V", "DRAWER", "IMMERSIVE_ANIMATION", "BOTTOM_NAVIGATION_BAR_MODE", "PREDICTIVE_BACK_ANIMATION", "TRANSITION_ANIMATION", "TABLET_MODE", "id", _UrlKt.FRAGMENT_ENCODE_SET, "getId", "()I", "Companion", "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class AppNavigationItem {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ AppNavigationItem[] $VALUES;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final AppNavigationItem DRAWER = new AppNavigationItem("DRAWER", 0);
        public static final AppNavigationItem IMMERSIVE_ANIMATION = new AppNavigationItem("IMMERSIVE_ANIMATION", 1);
        public static final AppNavigationItem BOTTOM_NAVIGATION_BAR_MODE = new AppNavigationItem("BOTTOM_NAVIGATION_BAR_MODE", 2);
        public static final AppNavigationItem PREDICTIVE_BACK_ANIMATION = new AppNavigationItem("PREDICTIVE_BACK_ANIMATION", 3);
        public static final AppNavigationItem TRANSITION_ANIMATION = new AppNavigationItem("TRANSITION_ANIMATION", 4);
        public static final AppNavigationItem TABLET_MODE = new AppNavigationItem("TABLET_MODE", 5);

        private static final /* synthetic */ AppNavigationItem[] $values() {
            return new AppNavigationItem[]{DRAWER, IMMERSIVE_ANIMATION, BOTTOM_NAVIGATION_BAR_MODE, PREDICTIVE_BACK_ANIMATION, TRANSITION_ANIMATION, TABLET_MODE};
        }

        public static EnumEntries<AppNavigationItem> getEntries() {
            return $ENTRIES;
        }

        public static AppNavigationItem valueOf(String str) {
            return (AppNavigationItem) Enum.valueOf(AppNavigationItem.class, str);
        }

        public static AppNavigationItem[] values() {
            return (AppNavigationItem[]) $VALUES.clone();
        }

        private AppNavigationItem(String str, int i) {
        }

        static {
            AppNavigationItem[] appNavigationItemArr$values = $values();
            $VALUES = appNavigationItemArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(appNavigationItemArr$values);
            INSTANCE = new Companion(null);
        }

        @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\u0005R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "BASE_ID", _UrlKt.FRAGMENT_ENCODE_SET, "fromId", "Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;", "id", "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final AppNavigationItem fromId(int id) {
                int i = id - 150;
                if (i < 0 || i >= AppNavigationItem.getEntries().size()) {
                    return null;
                }
                return AppNavigationItem.getEntries().get(i);
            }
        }

        public final int getId() {
            return ordinal() + 150;
        }
    }

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\b\b\u0082\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\bHÖ\u0001¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u000b\u001a\u00020\u0004HÖ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u001a\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0014\u001a\u0004\b\u0015\u0010\f¨\u0006\u0016"}, d2 = {"Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$ItemInfo;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "name", _UrlKt.FRAGMENT_ENCODE_SET, "iconRes", "<init>", "(Ljava/lang/CharSequence;I)V", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", "hashCode", "()I", "other", _UrlKt.FRAGMENT_ENCODE_SET, "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/CharSequence;", "getName", "()Ljava/lang/CharSequence;", "I", "getIconRes", "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
    public static final /* data */ class ItemInfo {
        private final int iconRes;
        private final CharSequence name;

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof ItemInfo)) {
                return false;
            }
            ItemInfo itemInfo = (ItemInfo) other;
            return Intrinsics.areEqual(this.name, itemInfo.name) && this.iconRes == itemInfo.iconRes;
        }

        public int hashCode() {
            return (this.name.hashCode() * 31) + Integer.hashCode(this.iconRes);
        }

        public String toString() {
            CharSequence charSequence = this.name;
            return "ItemInfo(name=" + ((Object) charSequence) + ", iconRes=" + this.iconRes + ")";
        }

        public ItemInfo(CharSequence charSequence, int i) {
            this.name = charSequence;
            this.iconRes = i;
        }

        public final int getIconRes() {
            return this.iconRes;
        }

        public final CharSequence getName() {
            return this.name;
        }
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public void initializeOptionStrings() {
        initItemDetails();
        this.tabletModeOptions = new CharSequence[]{LocaleController.getString(C2665R.string.DistanceUnitsAutomatic), LocaleController.getString(C2665R.string.PasswordOn), LocaleController.getString(C2665R.string.PasswordOff)};
        this.bottomNavigationModes = new CharSequence[]{LocaleController.getString(C2665R.string.BottomNavigationModeShow), LocaleController.getString(C2665R.string.BottomNavigationModeHide), LocaleController.getString(C2665R.string.BottomNavigationModeFloating)};
        this.transitionAnimations = new CharSequence[]{LocaleController.getString(C2665R.string.Default), LocaleController.getString(C2665R.string.TransitionAnimationAosp), LocaleController.getString(C2665R.string.TransitionAnimationSpring)};
    }

    private final void initItemDetails() {
        this.itemDetails.put(Integer.valueOf(MainMenuItem.PROFILE.getId()), new ItemInfo(LocaleController.getString(C2665R.string.MyProfile), C2665R.drawable.left_status_profile));
        this.itemDetails.put(Integer.valueOf(MainMenuItem.ARCHIVE.getId()), new ItemInfo(LocaleController.getString(C2665R.string.ArchivedChats), C2665R.drawable.msg_archive));
        this.itemDetails.put(Integer.valueOf(MainMenuItem.BOTS.getId()), new ItemInfo(LocaleController.getString(C2665R.string.FilterBots), C2665R.drawable.msg_bot));
        this.itemDetails.put(Integer.valueOf(MainMenuItem.NEW_GROUP.getId()), new ItemInfo(LocaleController.getString(C2665R.string.NewGroup), C2665R.drawable.msg_groups));
        this.itemDetails.put(Integer.valueOf(MainMenuItem.CONTACTS.getId()), new ItemInfo(LocaleController.getString(C2665R.string.Contacts), C2665R.drawable.msg_contacts));
        this.itemDetails.put(Integer.valueOf(MainMenuItem.NEW_CHANNEL.getId()), new ItemInfo(LocaleController.getString(C2665R.string.NewChannel), C2665R.drawable.msg_channel));
        this.itemDetails.put(Integer.valueOf(MainMenuItem.CALLS.getId()), new ItemInfo(LocaleController.getString(C2665R.string.Calls), C2665R.drawable.msg_calls));
        this.itemDetails.put(Integer.valueOf(MainMenuItem.SAVED.getId()), new ItemInfo(LocaleController.getString(C2665R.string.SavedMessages), C2665R.drawable.msg_saved));
        this.itemDetails.put(Integer.valueOf(MainMenuItem.FEED.getId()), new ItemInfo(LocaleController.getString(C2665R.string.Feed), C2665R.drawable.ic_feed));
        this.itemDetails.put(Integer.valueOf(MainMenuItem.SETTINGS.getId()), new ItemInfo(LocaleController.getString(C2665R.string.Settings), C2665R.drawable.msg_settings_old));
        this.itemDetails.put(Integer.valueOf(MainMenuItem.PLUGINS.getId()), new ItemInfo(LocaleController.getString(C2665R.string.Plugins), C2665R.drawable.msg_plugins));
        this.itemDetails.put(Integer.valueOf(MainMenuItem.BROWSER.getId()), new ItemInfo(LocaleController.getString(C2665R.string.BrowserSettingsTitle), C2665R.drawable.msg2_language));
        this.itemDetails.put(Integer.valueOf(MainMenuItem.QR.getId()), new ItemInfo(LocaleController.getString(C2665R.string.AuthAnotherClient), C2665R.drawable.msg_qrcode));
        ArrayList<Integer> mainMenuHiddenItems = ExteraConfig.getMainMenuHiddenItems();
        final Function1 function1 = new Function1() { // from class: com.exteragram.messenger.preferences.appearance.AppNavigationPreferencesActivity$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Boolean.valueOf(AppNavigationPreferencesActivity.$r8$lambda$abRkaPj59RSDKtqDhmMPduco8WY((Integer) obj));
            }
        };
        mainMenuHiddenItems.removeIf(new Predicate() { // from class: com.exteragram.messenger.preferences.appearance.AppNavigationPreferencesActivity$$ExternalSyntheticLambda1
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((Boolean) function1.invoke(obj)).booleanValue();
            }
        });
        this.stableDividerIds.clear();
        this.nextDividerId = -2000;
        Iterator<Integer> it = ExteraConfig.getMainMenuLayout().iterator();
        while (it.hasNext()) {
            if (it.next().intValue() == MainMenuItem.DIVIDER.getId()) {
                ArrayList<Integer> arrayList = this.stableDividerIds;
                int i = this.nextDividerId;
                this.nextDividerId = i - 1;
                arrayList.add(Integer.valueOf(i));
            }
        }
    }

    public static boolean $r8$lambda$abRkaPj59RSDKtqDhmMPduco8WY(Integer num) {
        return num.intValue() == MainMenuItem.DIVIDER.getId();
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public String getTitle() {
        return LocaleController.getString(C2665R.string.AppNavigation);
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity, org.telegram.ui.ActionBar.BaseFragment
    public View createView(final Context context) {
        View viewCreateView = super.createView(context);
        if (Build.VERSION.SDK_INT >= 34) {
            final AltSeekbar.OnDrag onDrag = new AltSeekbar.OnDrag() { // from class: com.exteragram.messenger.preferences.appearance.AppNavigationPreferencesActivity$$ExternalSyntheticLambda2
                @Override // com.exteragram.messenger.preferences.components.AltSeekbar.OnDrag
                public final void run(float f) {
                    AppNavigationPreferencesActivity.$r8$lambda$9W76nbjQWdGOuv7NzhtLBfUwV48(this.f$0, f);
                }
            };
            final String string = LocaleController.getString(C2665R.string.PredictiveBackIntensity);
            final String string2 = LocaleController.getString(C2665R.string.BlurOff);
            final String string3 = LocaleController.getString(C2665R.string.PredictiveBackMax);
            AltSeekbar altSeekbar = new AltSeekbar(context, onDrag, string, string2, string3) { // from class: com.exteragram.messenger.preferences.appearance.AppNavigationPreferencesActivity$createView$seekbar$1
                @Override // com.exteragram.messenger.preferences.components.AltSeekbar
                public boolean useExactEndpointHaptic() {
                    return true;
                }

                @Override // com.exteragram.messenger.preferences.components.AltSeekbar
                public CharSequence getTextForHeader() {
                    float fRoundToInt = MathKt.roundToInt(this.currentValue * 10.0f) / 10.0f;
                    if (fRoundToInt <= 0.0f) {
                        return this.leftTextView.getText().toString().toUpperCase(Locale.US);
                    }
                    if (fRoundToInt >= 2.0f) {
                        return this.rightTextView.getText().toString().toUpperCase(Locale.US);
                    }
                    int i = (int) fRoundToInt;
                    if (fRoundToInt == i) {
                        return String.valueOf(i);
                    }
                    StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                    return String.format(Locale.US, "%.1f", Arrays.copyOf(new Object[]{Float.valueOf(fRoundToInt)}, 1));
                }
            };
            this.predictiveBackSeekbar = altSeekbar;
            float fCoerceAtMost = RangesKt.coerceAtMost(ExteraConfig.getPredictiveBackIntensity(), 2.0f);
            if (fCoerceAtMost != ExteraConfig.getPredictiveBackIntensity()) {
                ExteraConfig.setPredictiveBackIntensity(fCoerceAtMost);
            }
            altSeekbar.setProgress(fCoerceAtMost);
        }
        ActionBarMenuItem actionBarMenuItemAddItem = this.actionBar.createMenu().addItem(0, C2665R.drawable.msg_reset);
        actionBarMenuItemAddItem.setContentDescription(LocaleController.getString(C2665R.string.Reset));
        actionBarMenuItemAddItem.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.preferences.appearance.AppNavigationPreferencesActivity$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.resetToDefault();
            }
        });
        this.resetItem = actionBarMenuItemAddItem;
        updateResetButtonVisibility(false);
        getListView$TMessagesProj().allowReorder(true);
        getListView$TMessagesProj().listenReorder(new Utilities.Callback2() { // from class: com.exteragram.messenger.preferences.appearance.AppNavigationPreferencesActivity$$ExternalSyntheticLambda4
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.updateConfigFromReorder(((Integer) obj).intValue(), (ArrayList) obj2);
            }
        });
        return viewCreateView;
    }

    public static void $r8$lambda$9W76nbjQWdGOuv7NzhtLBfUwV48(AppNavigationPreferencesActivity appNavigationPreferencesActivity, float f) {
        boolean zIsPredictiveBackOff = appNavigationPreferencesActivity.isPredictiveBackOff(ExteraConfig.getPredictiveBackIntensity());
        boolean zIsPredictiveBackOff2 = appNavigationPreferencesActivity.isPredictiveBackOff(f);
        ExteraConfig.setPredictiveBackIntensity(f);
        AltSeekbar altSeekbar = appNavigationPreferencesActivity.predictiveBackSeekbar;
        if (altSeekbar != null) {
            altSeekbar.updateHeader(f);
        }
        if (zIsPredictiveBackOff != zIsPredictiveBackOff2) {
            appNavigationPreferencesActivity.showRestartBulletin();
        }
    }

    private final boolean isPredictiveBackOff(float value) {
        return ((float) MathKt.roundToInt(value * 10.0f)) / 10.0f <= 0.0f;
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public void fillItems(ArrayList<UItem> items, UniversalAdapter adapter) {
        boolean z = Build.VERSION.SDK_INT >= 34 && this.predictiveBackSeekbar != null;
        Drawable drawable = this.reorderIcon;
        if (drawable == null) {
            drawable = ContextCompat.getDrawable(getContext(), C2665R.drawable.list_reorder);
        }
        this.reorderIcon = drawable;
        items.add(UItem.asHeader(LocaleController.getString(C2665R.string.General)));
        int id = AppNavigationItem.TABLET_MODE.getId();
        String string = LocaleController.getString(C2665R.string.TabletMode);
        CharSequence[] charSequenceArr = this.tabletModeOptions;
        if (charSequenceArr == null) {
            charSequenceArr = null;
        }
        items.add(BasePreferencesActivity.uButton$TMessagesProj$default((BasePreferencesActivity) this, id, (CharSequence) string, 0, charSequenceArr[ExteraConfig.getTabletMode()], (CharSequence) null, (Boolean) null, false, "tabletMode", false, false, (Boolean) null, 1908, (Object) null));
        int id2 = AppNavigationItem.BOTTOM_NAVIGATION_BAR_MODE.getId();
        String string2 = LocaleController.getString(C2665R.string.BottomNavigationBarMode);
        CharSequence[] charSequenceArr2 = this.bottomNavigationModes;
        if (charSequenceArr2 == null) {
            charSequenceArr2 = null;
        }
        items.add(BasePreferencesActivity.uButton$TMessagesProj$default((BasePreferencesActivity) this, id2, (CharSequence) string2, 0, charSequenceArr2[BottomNavigationBar.getMode()], (CharSequence) null, (Boolean) null, false, "bottomNavigationBarMode", false, false, (Boolean) null, 1908, (Object) null));
        int id3 = AppNavigationItem.TRANSITION_ANIMATION.getId();
        String string3 = LocaleController.getString(C2665R.string.TransitionAnimation);
        CharSequence[] charSequenceArr3 = this.transitionAnimations;
        if (charSequenceArr3 == null) {
            charSequenceArr3 = null;
        }
        items.add(BasePreferencesActivity.uButton$TMessagesProj$default((BasePreferencesActivity) this, id3, (CharSequence) string3, 0, charSequenceArr3[ExteraConfig.getTransitionAnimation().ordinal()], (CharSequence) null, (Boolean) null, false, "transitionAnimation", false, false, (Boolean) null, 1908, (Object) null));
        items.add(UItem.asShadow(LocaleController.getString(C2665R.string.TransitionAnimationInfo)));
        ExtensionsKt.addIf(items, z, UItem.asCustom(AppNavigationItem.PREDICTIVE_BACK_ANIMATION.getId(), this.predictiveBackSeekbar).setLinkAlias("predictiveBackAnimation", this));
        ExtensionsKt.addIf(items, z, UItem.asShadow(LocaleController.getString(C2665R.string.PredictiveBackInfo)));
        items.add(UItem.asHeader(LocaleController.getString(C2665R.string.AppNavigation)));
        items.add(BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) this, AppNavigationItem.DRAWER.getId(), (CharSequence) LocaleController.getString(C2665R.string.NavigationDrawer), ExteraConfig.getNavigationDrawer(), (CharSequence) null, 0, false, "navigationDrawer", false, 0, 440, (Object) null));
        ExtensionsKt.addIf(items, ExteraConfig.getNavigationDrawer(), BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) this, AppNavigationItem.IMMERSIVE_ANIMATION.getId(), (CharSequence) LocaleController.getString(C2665R.string.NavigationDrawerImmersiveAnimation), ExteraConfig.getImmersiveDrawerAnimation(), (CharSequence) null, 0, false, "immersiveDrawerAnimation", false, 0, 440, (Object) null));
        items.add(UItem.asShadow(LocaleController.getString(C2665R.string.NavigationDrawerInfo)));
        addMenuSection(items, adapter, LocaleController.getString(C2665R.string.MainMenuItems), ExteraConfig.getMainMenuLayout(), true);
        items.add(UItem.asShadow(LocaleController.getString(C2665R.string.MainMenuItemsInfo)));
        if (ExteraConfig.getMainMenuHiddenItems().isEmpty()) {
            return;
        }
        addMenuSection(items, adapter, LocaleController.getString(C2665R.string.MainMenuHiddenItems), ExteraConfig.getMainMenuHiddenItems(), false);
        items.add(UItem.asShadow(null));
    }

    private final void addMenuSection(ArrayList<UItem> items, UniversalAdapter adapter, String header, ArrayList<Integer> ids, boolean mainSection) {
        UItem uItemCreateMenuItem;
        UItem uItemCreateMenuItem2;
        adapter.whiteSectionStart();
        items.add(UItem.asHeader(header));
        adapter.reorderSectionStart();
        Iterator<Integer> it = ids.iterator();
        int i = 0;
        while (it.hasNext()) {
            int iIntValue = it.next().intValue();
            if (iIntValue != MainMenuItem.PLUGINS.getId() || PluginsController.INSTANCE.isPluginEngineSupported()) {
                MainMenuItem mainMenuItem = MainMenuItem.DIVIDER;
                if (iIntValue == mainMenuItem.getId()) {
                    if (mainSection && i < this.stableDividerIds.size()) {
                        UItem uItemCreateMenuItem3 = createMenuItem(this.stableDividerIds.get(i).intValue(), null);
                        if (uItemCreateMenuItem3 != null) {
                            items.add(uItemCreateMenuItem3);
                        }
                    } else if (!mainSection && (uItemCreateMenuItem = createMenuItem(mainMenuItem.getId(), null)) != null) {
                        items.add(uItemCreateMenuItem);
                    }
                    i++;
                } else {
                    ItemInfo itemInfo = this.itemDetails.get(Integer.valueOf(iIntValue));
                    if (itemInfo != null && (uItemCreateMenuItem2 = createMenuItem(iIntValue, itemInfo)) != null) {
                        items.add(uItemCreateMenuItem2);
                    }
                }
            }
        }
        adapter.reorderSectionEnd();
        if (mainSection) {
            items.add(BasePreferencesActivity.uButton$TMessagesProj$default((BasePreferencesActivity) this, -200, (CharSequence) LocaleController.getString(C2665R.string.MainMenuAddDivider), C2665R.drawable.msg_add, (CharSequence) null, (CharSequence) null, (Boolean) null, false, (String) null, false, true, (Boolean) null, 1464, (Object) null));
        }
        adapter.whiteSectionEnd();
    }

    private final UItem createMenuItem(int id, ItemInfo info) {
        UItem uItemUButton$TMessagesProj$default;
        if (id <= -2000 || id == MainMenuItem.DIVIDER.getId()) {
            uItemUButton$TMessagesProj$default = BasePreferencesActivity.uButton$TMessagesProj$default((BasePreferencesActivity) this, id, (CharSequence) LocaleController.getString(C2665R.string.MainMenuDivider), C2665R.drawable.msg_block, (CharSequence) null, (CharSequence) null, (Boolean) null, false, (String) null, false, false, (Boolean) null, 1976, (Object) null);
        } else {
            uItemUButton$TMessagesProj$default = info != null ? BasePreferencesActivity.uButton$TMessagesProj$default((BasePreferencesActivity) this, id, info.getName(), info.getIconRes(), (CharSequence) null, (CharSequence) null, (Boolean) null, false, (String) null, false, false, (Boolean) null, 1976, (Object) null) : null;
        }
        if (uItemUButton$TMessagesProj$default == null) {
            return null;
        }
        uItemUButton$TMessagesProj$default.object2 = this.reorderIcon;
        return uItemUButton$TMessagesProj$default;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateConfigFromReorder(int sectionId, ArrayList<UItem> uItems) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (UItem uItem : uItems) {
            int i = uItem.id;
            if (i > -2000 && i != MainMenuItem.DIVIDER.getId()) {
                arrayList.add(Integer.valueOf(uItem.id));
            } else if (sectionId == 0) {
                arrayList.add(Integer.valueOf(MainMenuItem.DIVIDER.getId()));
                int i2 = uItem.id;
                if (i2 > -2000) {
                    i2 = this.nextDividerId;
                    this.nextDividerId = i2 - 1;
                }
                arrayList2.add(Integer.valueOf(i2));
            }
        }
        if (sectionId == 0) {
            this.stableDividerIds.clear();
            this.stableDividerIds.addAll(arrayList2);
            if (BottomNavigationBar.hidden()) {
                int id = MainMenuItem.SETTINGS.getId();
                if (!arrayList.contains(Integer.valueOf(id))) {
                    arrayList.add(Integer.valueOf(id));
                }
            }
            ExteraConfig.getMainMenuLayout().clear();
            ExteraConfig.getMainMenuLayout().addAll(arrayList);
        } else if (sectionId == 1) {
            if (BottomNavigationBar.hidden()) {
                arrayList.remove(Integer.valueOf(MainMenuItem.SETTINGS.getId()));
            }
            ExteraConfig.getMainMenuHiddenItems().clear();
            ExteraConfig.getMainMenuHiddenItems().addAll(arrayList);
        }
        saveAndNotify();
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public void onClick(UItem item, View view, int position, float x, float y) {
        int i = item.id;
        AppNavigationItem appNavigationItemFromId = AppNavigationItem.INSTANCE.fromId(i);
        int i2 = 0;
        if (appNavigationItemFromId != null) {
            int i3 = WhenMappings.$EnumSwitchMapping$0[appNavigationItemFromId.ordinal()];
            if (i3 == 1) {
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.preferences.appearance.AppNavigationPreferencesActivity$$ExternalSyntheticLambda5
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setNavigationDrawer(((Boolean) obj).booleanValue());
                    }
                });
                getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.mainUserInfoChanged, new Object[0]);
                UniversalAdapter universalAdapter = getListView$TMessagesProj().adapter;
                if (universalAdapter != null) {
                    universalAdapter.update(true);
                }
                this.parentLayout.rebuildFragments(0);
                return;
            }
            if (i3 == 2) {
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.preferences.appearance.AppNavigationPreferencesActivity$$ExternalSyntheticLambda6
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setImmersiveDrawerAnimation(((Boolean) obj).booleanValue());
                    }
                });
                return;
            }
            if (i3 == 3) {
                CharSequence[] charSequenceArr = this.bottomNavigationModes;
                if (charSequenceArr == null) {
                    charSequenceArr = null;
                }
                showListDialog(item, charSequenceArr, LocaleController.getString(C2665R.string.BottomNavigationBarMode), BottomNavigationBar.getMode(), new PopupUtils.OnItemClickListener() { // from class: com.exteragram.messenger.preferences.appearance.AppNavigationPreferencesActivity$$ExternalSyntheticLambda7
                    @Override // com.exteragram.messenger.utils.ui.PopupUtils.OnItemClickListener
                    public final void onClick(int i4) {
                        AppNavigationPreferencesActivity.$r8$lambda$wUuxrEg0ymhtYK31jN2UMNG3nBo(this.f$0, i4);
                    }
                });
                return;
            }
            if (i3 != 4) {
                if (i3 != 5) {
                    return;
                }
                CharSequence[] charSequenceArr2 = this.tabletModeOptions;
                showListDialog(item, charSequenceArr2 == null ? null : charSequenceArr2, LocaleController.getString(C2665R.string.TabletMode), ExteraConfig.getTabletMode(), new PopupUtils.OnItemClickListener() { // from class: com.exteragram.messenger.preferences.appearance.AppNavigationPreferencesActivity$$ExternalSyntheticLambda9
                    @Override // com.exteragram.messenger.utils.ui.PopupUtils.OnItemClickListener
                    public final void onClick(int i4) {
                        AppNavigationPreferencesActivity.$r8$lambda$FKdqUjxjgDeAzPXGJsdoCPgJ80I(this.f$0, i4);
                    }
                });
                return;
            }
            CharSequence[] charSequenceArr3 = this.transitionAnimations;
            if (charSequenceArr3 == null) {
                charSequenceArr3 = null;
            }
            showListDialog(item, charSequenceArr3, LocaleController.getString(C2665R.string.TransitionAnimation), ExteraConfig.getTransitionAnimation().ordinal(), new PopupUtils.OnItemClickListener() { // from class: com.exteragram.messenger.preferences.appearance.AppNavigationPreferencesActivity$$ExternalSyntheticLambda8
                @Override // com.exteragram.messenger.utils.ui.PopupUtils.OnItemClickListener
                public final void onClick(int i4) {
                    AppNavigationPreferencesActivity.$r8$lambda$OcnwmapLcYeDEa0ramhMi8X2sWc(i4);
                }
            });
            return;
        }
        if (i == -200) {
            ArrayList<Integer> arrayList = this.stableDividerIds;
            int i4 = this.nextDividerId;
            this.nextDividerId = i4 - 1;
            arrayList.add(Integer.valueOf(i4));
            ExteraConfig.getMainMenuLayout().add(Integer.valueOf(MainMenuItem.DIVIDER.getId()));
            saveAndNotify();
            return;
        }
        if (i <= -2000) {
            int iIndexOf = this.stableDividerIds.indexOf(Integer.valueOf(i));
            if (iIndexOf != -1) {
                int size = ExteraConfig.getMainMenuLayout().size();
                int i5 = 0;
                while (true) {
                    if (i2 >= size) {
                        i2 = -1;
                        break;
                    }
                    Integer num = ExteraConfig.getMainMenuLayout().get(i2);
                    int id = MainMenuItem.DIVIDER.getId();
                    if (num != null && num.intValue() == id) {
                        if (i5 == iIndexOf) {
                            break;
                        } else {
                            i5++;
                        }
                    }
                    i2++;
                }
                if (i2 != -1) {
                    this.stableDividerIds.remove(iIndexOf);
                    ExteraConfig.getMainMenuLayout().remove(i2);
                    saveAndNotify();
                    return;
                }
                return;
            }
            return;
        }
        MainMenuItem mainMenuItem = MainMenuItem.DIVIDER;
        if (i == mainMenuItem.getId()) {
            ExteraConfig.getMainMenuHiddenItems().remove(Integer.valueOf(i));
            saveAndNotify();
            return;
        }
        if (BottomNavigationBar.hidden() && i == MainMenuItem.SETTINGS.getId() && ExteraConfig.getMainMenuLayout().contains(Integer.valueOf(i))) {
            BulletinFactory.of(this).createErrorBulletin(LocaleController.getString(C2665R.string.MainMenuRemoveSettingsInfo)).show();
            return;
        }
        if (ExteraConfig.getMainMenuLayout().contains(Integer.valueOf(i))) {
            ExteraConfig.getMainMenuLayout().remove(Integer.valueOf(i));
            if (i != mainMenuItem.getId() && !ExteraConfig.getMainMenuHiddenItems().contains(Integer.valueOf(i))) {
                ExteraConfig.getMainMenuHiddenItems().add(0, Integer.valueOf(i));
            }
        } else if (ExteraConfig.getMainMenuHiddenItems().contains(Integer.valueOf(i))) {
            ExteraConfig.getMainMenuHiddenItems().remove(Integer.valueOf(i));
            ExteraConfig.getMainMenuLayout().add(Integer.valueOf(i));
        }
        saveAndNotify();
    }

    public static void $r8$lambda$wUuxrEg0ymhtYK31jN2UMNG3nBo(AppNavigationPreferencesActivity appNavigationPreferencesActivity, int i) {
        SharedPreferences.Editor editorEdit = ExteraConfig.getPreferences().edit();
        editorEdit.putInt("bottomNavigationBarMode", i);
        editorEdit.apply();
        BottomNavigationBar.setMode(i);
        ExteraConfig.ensureSettingsVisibility();
        appNavigationPreferencesActivity.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.mainUserInfoChanged, new Object[0]);
        appNavigationPreferencesActivity.refreshEditorList();
        updateResetButtonVisibility$default(appNavigationPreferencesActivity, false, 1, null);
        appNavigationPreferencesActivity.parentLayout.rebuildFragments(0);
    }

    public static void $r8$lambda$OcnwmapLcYeDEa0ramhMi8X2sWc(int i) {
        ExteraConfig.setTransitionAnimation(TransitionAnimation.getEntries().get(i));
        if (ExteraConfig.getTransitionAnimation() != TransitionAnimation.DEFAULT) {
            SharedPreferences.Editor editorEdit = MessagesController.getGlobalMainSettings().edit();
            editorEdit.putBoolean("view_animations", true);
            editorEdit.apply();
            SharedConfig.setAnimationsEnabled(true);
        }
    }

    public static void $r8$lambda$FKdqUjxjgDeAzPXGJsdoCPgJ80I(AppNavigationPreferencesActivity appNavigationPreferencesActivity, int i) {
        ExteraConfig.setTabletMode(i);
        appNavigationPreferencesActivity.showRestartBulletin();
    }

    private final void saveAndNotify() {
        ExteraConfig.saveMainMenuLayout();
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.mainUserInfoChanged, new Object[0]);
        refreshEditorList();
        updateResetButtonVisibility$default(this, false, 1, null);
    }

    private final UniversalRecyclerView refreshEditorList() {
        UniversalRecyclerView listView$TMessagesProj = getListView$TMessagesProj();
        listView$TMessagesProj.hideSelector(false);
        listView$TMessagesProj.cancelClickRunnables(false);
        listView$TMessagesProj.adapter.update(true);
        return listView$TMessagesProj;
    }

    public static /* synthetic */ void updateResetButtonVisibility$default(AppNavigationPreferencesActivity appNavigationPreferencesActivity, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        appNavigationPreferencesActivity.updateResetButtonVisibility(z);
    }

    private final void updateResetButtonVisibility(boolean animated) {
        if (this.resetItem == null) {
            return;
        }
        AndroidUtilities.updateViewVisibilityAnimated(this.resetItem, !Intrinsics.areEqual(ExteraConfig.getMainMenuLayout(), ExteraConfig.getDefaultMainMenuLayout()), 0.5f, animated);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void resetToDefault() {
        ExteraConfig.getMainMenuLayout().clear();
        ExteraConfig.getMainMenuLayout().addAll(ExteraConfig.getDefaultMainMenuLayout());
        ExteraConfig.getMainMenuHiddenItems().clear();
        for (MainMenuItem mainMenuItem : MainMenuItem.getEntries()) {
            if (mainMenuItem != MainMenuItem.DIVIDER && !ExteraConfig.getMainMenuLayout().contains(Integer.valueOf(mainMenuItem.getId())) && (mainMenuItem != MainMenuItem.PLUGINS || PluginsController.INSTANCE.isPluginEngineSupported())) {
                ExteraConfig.getMainMenuHiddenItems().add(Integer.valueOf(mainMenuItem.getId()));
            }
        }
        this.stableDividerIds.clear();
        this.nextDividerId = -2000;
        Iterator<Integer> it = ExteraConfig.getMainMenuLayout().iterator();
        while (it.hasNext()) {
            if (it.next().intValue() == MainMenuItem.DIVIDER.getId()) {
                ArrayList<Integer> arrayList = this.stableDividerIds;
                int i = this.nextDividerId;
                this.nextDividerId = i - 1;
                arrayList.add(Integer.valueOf(i));
            }
        }
        ExteraConfig.saveMainMenuLayout();
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.mainUserInfoChanged, new Object[0]);
        refreshEditorList();
        updateResetButtonVisibility$default(this, false, 1, null);
    }
}
