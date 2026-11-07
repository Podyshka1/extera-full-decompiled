package com.exteragram.messenger.preferences.appearance;

import android.content.Context;
import android.view.View;
import androidx.core.util.Consumer;
import com.exteragram.messenger.DividerStyle;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.GlassOutlineStyle;
import com.exteragram.messenger.TabCounterMode;
import com.exteragram.messenger.TabIconsMode;
import com.exteragram.messenger.appicons.AppIcon;
import com.exteragram.messenger.appicons.AppIconController;
import com.exteragram.messenger.appicons.AppIconPreviewDrawable;
import com.exteragram.messenger.appicons.ui.AppIconsActivity;
import com.exteragram.messenger.icons.ui.IconPacksActivity;
import com.exteragram.messenger.pillstack.ui.PillStackPreferencesActivity;
import com.exteragram.messenger.plugins.PluginsConstants;
import com.exteragram.messenger.preferences.BasePreferencesActivity;
import com.exteragram.messenger.preferences.SwitchGroup;
import com.exteragram.messenger.preferences.appearance.components.AvatarCornersPreviewCell;
import com.exteragram.messenger.preferences.appearance.components.ChatListPreviewCell;
import com.exteragram.messenger.preferences.appearance.components.FabShapeCell;
import com.exteragram.messenger.preferences.appearance.components.FilterTabsPreviewCell;
import com.exteragram.messenger.preferences.utils.SettingsRegistry;
import com.exteragram.messenger.utils.ExtensionsKt;
import com.exteragram.messenger.utils.chats.FolderCounters;
import com.exteragram.messenger.utils.network.RemoteUtils;
import com.exteragram.messenger.utils.text.LocaleUtils;
import com.exteragram.messenger.utils.ui.PopupUtils;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.MutablePropertyReference0Impl;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.Utilities;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.TextCell;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;
import org.telegram.ui.Components.UniversalRecyclerView;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0010\r\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0013\u0018\u0000 A2\u00020\u0001:\u0002ABB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u001c\u001a\u00020\u001dH\u0014J\u0010\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H\u0014J\b\u0010\"\u001a\u00020#H\u0016J\u001e\u0010$\u001a\u00020\u001d2\f\u0010%\u001a\b\u0012\u0004\u0012\u00020'0&2\u0006\u0010(\u001a\u00020)H\u0014J0\u0010*\u001a\u00020\u001d2\u0006\u0010+\u001a\u00020'2\u0006\u0010,\u001a\u00020\u001f2\u0006\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u0002002\u0006\u00101\u001a\u000200H\u0014J\b\u00102\u001a\u00020'H\u0002J\u0010\u00103\u001a\u00020\u00062\u0006\u00104\u001a\u00020.H\u0002J\b\u00105\u001a\u00020\u001dH\u0002J\b\u00106\u001a\u00020\u001dH\u0002J\b\u00107\u001a\u00020\u001dH\u0002J\b\u00108\u001a\u00020\u001dH\u0002J\b\u00109\u001a\u00020\u001dH\u0002J\b\u0010:\u001a\u00020\u001dH\u0002J\b\u0010;\u001a\u00020\u0019H\u0002J\b\u0010<\u001a\u00020\u001dH\u0002J\b\u0010=\u001a\u00020\u001dH\u0002J\b\u0010>\u001a\u00020\u001dH\u0002J\b\u0010?\u001a\u00020\u001dH\u0002J\u0010\u0010@\u001a\u00020\u001d2\u0006\u0010+\u001a\u00020'H\u0002R\u0016\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082.¢\u0006\u0004\n\u0002\u0010\u0007R\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082.¢\u0006\u0004\n\u0002\u0010\u0007R\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082.¢\u0006\u0004\n\u0002\u0010\u0007R\u0016\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082.¢\u0006\u0004\n\u0002\u0010\u0007R\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082.¢\u0006\u0004\n\u0002\u0010\u0007R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006C"}, d2 = {"Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity;", "Lcom/exteragram/messenger/preferences/BasePreferencesActivity;", "<init>", "()V", "titles", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "[Ljava/lang/CharSequence;", "tabIconsOptions", "tabCounterModes", "dividerStyles", "glassOutlineStyles", "avatarCornersPreviewCell", "Lcom/exteragram/messenger/preferences/appearance/components/AvatarCornersPreviewCell;", "chatListPreviewCell", "Lcom/exteragram/messenger/preferences/appearance/components/ChatListPreviewCell;", "filterTabsPreviewCell", "Lcom/exteragram/messenger/preferences/appearance/components/FilterTabsPreviewCell;", "fabShapeCell", "Lcom/exteragram/messenger/preferences/appearance/components/FabShapeCell;", "appIconDrawableIcon", "Lcom/exteragram/messenger/appicons/AppIcon;", "appIconDrawableShape", _UrlKt.FRAGMENT_ENCODE_SET, "appIconDrawable", "Lcom/exteragram/messenger/appicons/AppIconPreviewDrawable;", "md3Styles", "Lcom/exteragram/messenger/preferences/SwitchGroup;", "initializeOptionStrings", _UrlKt.FRAGMENT_ENCODE_SET, "createView", "Landroid/view/View;", "context", "Landroid/content/Context;", "getTitle", _UrlKt.FRAGMENT_ENCODE_SET, "fillItems", PluginsConstants.Settings.ITEMS, "Ljava/util/ArrayList;", "Lorg/telegram/ui/Components/UItem;", "adapter", "Lorg/telegram/ui/Components/UniversalAdapter;", "onClick", PluginsConstants.Settings.ITEM, PluginsConstants.Settings.VIEW, "position", _UrlKt.FRAGMENT_ENCODE_SET, "x", _UrlKt.FRAGMENT_ENCODE_SET, "y", "createSectionRadiusSliderItem", "formatSectionRadius", "value", "handleDividerStyleChange", "handleSectionRadiusChange", "updateMD3Styles", "handleActionBarTitleClick", "handleTabTitleClick", "handleTabCounterClick", "getAppIconDrawable", "handleHideAllChatsClick", "handleUseSystemFontsClick", "handleForceBlurChange", "handleGlassMessageMenuChange", "handleUseSystemEmojiClick", "Companion", "AppearanceItem", "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
public final class AppearancePreferencesActivity extends BasePreferencesActivity {
    private AppIconPreviewDrawable appIconDrawable;
    private AppIcon appIconDrawableIcon;
    private boolean appIconDrawableShape;
    private AvatarCornersPreviewCell avatarCornersPreviewCell;
    private ChatListPreviewCell chatListPreviewCell;
    private CharSequence[] dividerStyles;
    private FabShapeCell fabShapeCell;
    private FilterTabsPreviewCell filterTabsPreviewCell;
    private CharSequence[] glassOutlineStyles;
    private final SwitchGroup md3Styles;
    private CharSequence[] tabCounterModes;
    private CharSequence[] tabIconsOptions;
    private CharSequence[] titles;

    @Metadata(m862k = 3, mv = {2, 2, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[AppearanceItem.values().length];
            try {
                iArr[AppearanceItem.SINGLE_CORNER_RADIUS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AppearanceItem.ACTION_BAR_TITLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[AppearanceItem.PILL_STACK.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[AppearanceItem.HIDE_STORIES.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[AppearanceItem.HIDE_ACTION_BAR_STATUS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[AppearanceItem.CENTER_TITLE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[AppearanceItem.HIDE_FLOATING_BUTTON.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[AppearanceItem.HIDE_DIALOGS_SEARCH_BAR.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[AppearanceItem.SENDER_MINI_AVATARS.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[AppearanceItem.TAB_TITLE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[AppearanceItem.TAB_COUNTER.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[AppearanceItem.HIDE_ALL_CHATS.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[AppearanceItem.APP_NAVIGATION_SETTINGS.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr[AppearanceItem.APP_ICON.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr[AppearanceItem.ICON_PACKS.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr[AppearanceItem.SEPARATED_HEADERS.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                iArr[AppearanceItem.DIVIDER_STYLE.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr[AppearanceItem.USE_SYSTEM_FONTS.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                iArr[AppearanceItem.USE_SYSTEM_EMOJI.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                iArr[AppearanceItem.MD3_STYLES.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                iArr[AppearanceItem.NEW_LOADING_STYLE.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                iArr[AppearanceItem.NEW_SLIDER_STYLE.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                iArr[AppearanceItem.NEW_SWITCH_STYLE.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                iArr[AppearanceItem.NEW_CHAT_HEADER_STYLE.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                iArr[AppearanceItem.NEW_NAVIGATION_BAR_STYLE.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                iArr[AppearanceItem.NEW_FAB_STYLE.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                iArr[AppearanceItem.GOOEY_AVATAR_ANIMATION.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                iArr[AppearanceItem.CUSTOM_THEMES.ordinal()] = 28;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                iArr[AppearanceItem.FORCE_SNOW.ordinal()] = 29;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                iArr[AppearanceItem.GLASS_OUTLINE_STYLE.ordinal()] = 30;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                iArr[AppearanceItem.FORCE_BLUR.ordinal()] = 31;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                iArr[AppearanceItem.GLASS_MESSAGE_MENU.ordinal()] = 32;
            } catch (NoSuchFieldError unused32) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public AppearancePreferencesActivity() {
        SwitchGroup switchGroup = new SwitchGroup(this, AppearanceItem.MD3_STYLES, C2665R.string.MaterialDesign3, null, "md3Styles", false, 40, null);
        switchGroup.onChanged(new AppearancePreferencesActivity$md3Styles$1$1(this));
        SwitchGroup.add$default(switchGroup, AppearanceItem.NEW_LOADING_STYLE, C2665R.string.NewLoadingStyle, new MutablePropertyReference0Impl() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$md3Styles$1$2
            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KProperty0
            public Object get() {
                return Boolean.valueOf(ExteraConfig.getNewLoadingStyle());
            }

            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KMutableProperty0
            public void set(Object obj) {
                ExteraConfig.setNewLoadingStyle(((Boolean) obj).booleanValue());
            }
        }, null, 8, null);
        SwitchGroup.add$default(switchGroup, AppearanceItem.NEW_SLIDER_STYLE, C2665R.string.NewSliderStyle, new MutablePropertyReference0Impl() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$md3Styles$1$3
            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KProperty0
            public Object get() {
                return Boolean.valueOf(ExteraConfig.getNewSliderStyle());
            }

            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KMutableProperty0
            public void set(Object obj) {
                ExteraConfig.setNewSliderStyle(((Boolean) obj).booleanValue());
            }
        }, null, 8, null);
        SwitchGroup.add$default(switchGroup, AppearanceItem.NEW_SWITCH_STYLE, C2665R.string.NewSwitchStyle, new MutablePropertyReference0Impl() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$md3Styles$1$4
            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KProperty0
            public Object get() {
                return Boolean.valueOf(ExteraConfig.getNewSwitchStyle());
            }

            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KMutableProperty0
            public void set(Object obj) {
                ExteraConfig.setNewSwitchStyle(((Boolean) obj).booleanValue());
            }
        }, null, 8, null);
        SwitchGroup.add$default(switchGroup, AppearanceItem.NEW_CHAT_HEADER_STYLE, C2665R.string.ChatHeader, new MutablePropertyReference0Impl() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$md3Styles$1$5
            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KProperty0
            public Object get() {
                return Boolean.valueOf(ExteraConfig.getNewChatHeaderStyle());
            }

            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KMutableProperty0
            public void set(Object obj) {
                ExteraConfig.setNewChatHeaderStyle(((Boolean) obj).booleanValue());
            }
        }, null, 8, null);
        switchGroup.markNew("Appearance-M3Styles-ChatHeader");
        SwitchGroup.add$default(switchGroup, AppearanceItem.NEW_NAVIGATION_BAR_STYLE, C2665R.string.BottomNavigationBarMode, new MutablePropertyReference0Impl() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$md3Styles$1$6
            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KProperty0
            public Object get() {
                return Boolean.valueOf(ExteraConfig.getNewNavigationBarStyle());
            }

            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KMutableProperty0
            public void set(Object obj) {
                ExteraConfig.setNewNavigationBarStyle(((Boolean) obj).booleanValue());
            }
        }, null, 8, null);
        switchGroup.markNew("Appearance-M3Styles-NavigationBar");
        SwitchGroup.add$default(switchGroup, AppearanceItem.NEW_FAB_STYLE, C2665R.string.NewFabStyle, new MutablePropertyReference0Impl() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$md3Styles$1$7
            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KProperty0
            public Object get() {
                return Boolean.valueOf(ExteraConfig.getNewFabStyle());
            }

            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KMutableProperty0
            public void set(Object obj) {
                ExteraConfig.setNewFabStyle(((Boolean) obj).booleanValue());
            }
        }, null, 8, null);
        switchGroup.markNew("Appearance-M3Styles-FloatingButton");
        this.md3Styles = switchGroup;
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b(\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0011\u0010)\u001a\u00020*¢\u0006\b\n\u0000\u001a\u0004\b+\u0010,j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"j\u0002\b#j\u0002\b$j\u0002\b%j\u0002\b&j\u0002\b'j\u0002\b(¨\u0006-"}, d2 = {"Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;I)V", "AVATAR_CORNERS_PREVIEW", "SINGLE_CORNER_RADIUS", "CHAT_LIST_PREVIEW", "FORCE_SNOW", "HIDE_ACTION_BAR_STATUS", "CENTER_TITLE", "HIDE_STORIES", "HIDE_FLOATING_BUTTON", "HIDE_DIALOGS_SEARCH_BAR", "SENDER_MINI_AVATARS", "ACTION_BAR_TITLE", "PILL_STACK", "FOLDERS_PREVIEW", "TAB_TITLE", "TAB_COUNTER", "HIDE_ALL_CHATS", "APP_NAVIGATION_SETTINGS", "APP_ICON", "ICON_PACKS", "FAB_SHAPE", "SECTION_RADIUS", "SEPARATED_HEADERS", "DIVIDER_STYLE", "MD3_STYLES", "NEW_LOADING_STYLE", "NEW_SLIDER_STYLE", "NEW_SWITCH_STYLE", "USE_SYSTEM_FONTS", "USE_SYSTEM_EMOJI", "GOOEY_AVATAR_ANIMATION", "CUSTOM_THEMES", "GLASS_OUTLINE_STYLE", "FORCE_BLUR", "GLASS_MESSAGE_MENU", "NEW_CHAT_HEADER_STYLE", "NEW_NAVIGATION_BAR_STYLE", "NEW_FAB_STYLE", "id", _UrlKt.FRAGMENT_ENCODE_SET, "getId", "()I", "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class AppearanceItem {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ AppearanceItem[] $VALUES;
        private final int id = ordinal() + 1;
        public static final AppearanceItem AVATAR_CORNERS_PREVIEW = new AppearanceItem("AVATAR_CORNERS_PREVIEW", 0);
        public static final AppearanceItem SINGLE_CORNER_RADIUS = new AppearanceItem("SINGLE_CORNER_RADIUS", 1);
        public static final AppearanceItem CHAT_LIST_PREVIEW = new AppearanceItem("CHAT_LIST_PREVIEW", 2);
        public static final AppearanceItem FORCE_SNOW = new AppearanceItem("FORCE_SNOW", 3);
        public static final AppearanceItem HIDE_ACTION_BAR_STATUS = new AppearanceItem("HIDE_ACTION_BAR_STATUS", 4);
        public static final AppearanceItem CENTER_TITLE = new AppearanceItem("CENTER_TITLE", 5);
        public static final AppearanceItem HIDE_STORIES = new AppearanceItem("HIDE_STORIES", 6);
        public static final AppearanceItem HIDE_FLOATING_BUTTON = new AppearanceItem("HIDE_FLOATING_BUTTON", 7);
        public static final AppearanceItem HIDE_DIALOGS_SEARCH_BAR = new AppearanceItem("HIDE_DIALOGS_SEARCH_BAR", 8);
        public static final AppearanceItem SENDER_MINI_AVATARS = new AppearanceItem("SENDER_MINI_AVATARS", 9);
        public static final AppearanceItem ACTION_BAR_TITLE = new AppearanceItem("ACTION_BAR_TITLE", 10);
        public static final AppearanceItem PILL_STACK = new AppearanceItem("PILL_STACK", 11);
        public static final AppearanceItem FOLDERS_PREVIEW = new AppearanceItem("FOLDERS_PREVIEW", 12);
        public static final AppearanceItem TAB_TITLE = new AppearanceItem("TAB_TITLE", 13);
        public static final AppearanceItem TAB_COUNTER = new AppearanceItem("TAB_COUNTER", 14);
        public static final AppearanceItem HIDE_ALL_CHATS = new AppearanceItem("HIDE_ALL_CHATS", 15);
        public static final AppearanceItem APP_NAVIGATION_SETTINGS = new AppearanceItem("APP_NAVIGATION_SETTINGS", 16);
        public static final AppearanceItem APP_ICON = new AppearanceItem("APP_ICON", 17);
        public static final AppearanceItem ICON_PACKS = new AppearanceItem("ICON_PACKS", 18);
        public static final AppearanceItem FAB_SHAPE = new AppearanceItem("FAB_SHAPE", 19);
        public static final AppearanceItem SECTION_RADIUS = new AppearanceItem("SECTION_RADIUS", 20);
        public static final AppearanceItem SEPARATED_HEADERS = new AppearanceItem("SEPARATED_HEADERS", 21);
        public static final AppearanceItem DIVIDER_STYLE = new AppearanceItem("DIVIDER_STYLE", 22);
        public static final AppearanceItem MD3_STYLES = new AppearanceItem("MD3_STYLES", 23);
        public static final AppearanceItem NEW_LOADING_STYLE = new AppearanceItem("NEW_LOADING_STYLE", 24);
        public static final AppearanceItem NEW_SLIDER_STYLE = new AppearanceItem("NEW_SLIDER_STYLE", 25);
        public static final AppearanceItem NEW_SWITCH_STYLE = new AppearanceItem("NEW_SWITCH_STYLE", 26);
        public static final AppearanceItem USE_SYSTEM_FONTS = new AppearanceItem("USE_SYSTEM_FONTS", 27);
        public static final AppearanceItem USE_SYSTEM_EMOJI = new AppearanceItem("USE_SYSTEM_EMOJI", 28);
        public static final AppearanceItem GOOEY_AVATAR_ANIMATION = new AppearanceItem("GOOEY_AVATAR_ANIMATION", 29);
        public static final AppearanceItem CUSTOM_THEMES = new AppearanceItem("CUSTOM_THEMES", 30);
        public static final AppearanceItem GLASS_OUTLINE_STYLE = new AppearanceItem("GLASS_OUTLINE_STYLE", 31);
        public static final AppearanceItem FORCE_BLUR = new AppearanceItem("FORCE_BLUR", 32);
        public static final AppearanceItem GLASS_MESSAGE_MENU = new AppearanceItem("GLASS_MESSAGE_MENU", 33);
        public static final AppearanceItem NEW_CHAT_HEADER_STYLE = new AppearanceItem("NEW_CHAT_HEADER_STYLE", 34);
        public static final AppearanceItem NEW_NAVIGATION_BAR_STYLE = new AppearanceItem("NEW_NAVIGATION_BAR_STYLE", 35);
        public static final AppearanceItem NEW_FAB_STYLE = new AppearanceItem("NEW_FAB_STYLE", 36);

        private static final /* synthetic */ AppearanceItem[] $values() {
            return new AppearanceItem[]{AVATAR_CORNERS_PREVIEW, SINGLE_CORNER_RADIUS, CHAT_LIST_PREVIEW, FORCE_SNOW, HIDE_ACTION_BAR_STATUS, CENTER_TITLE, HIDE_STORIES, HIDE_FLOATING_BUTTON, HIDE_DIALOGS_SEARCH_BAR, SENDER_MINI_AVATARS, ACTION_BAR_TITLE, PILL_STACK, FOLDERS_PREVIEW, TAB_TITLE, TAB_COUNTER, HIDE_ALL_CHATS, APP_NAVIGATION_SETTINGS, APP_ICON, ICON_PACKS, FAB_SHAPE, SECTION_RADIUS, SEPARATED_HEADERS, DIVIDER_STYLE, MD3_STYLES, NEW_LOADING_STYLE, NEW_SLIDER_STYLE, NEW_SWITCH_STYLE, USE_SYSTEM_FONTS, USE_SYSTEM_EMOJI, GOOEY_AVATAR_ANIMATION, CUSTOM_THEMES, GLASS_OUTLINE_STYLE, FORCE_BLUR, GLASS_MESSAGE_MENU, NEW_CHAT_HEADER_STYLE, NEW_NAVIGATION_BAR_STYLE, NEW_FAB_STYLE};
        }

        public static EnumEntries<AppearanceItem> getEntries() {
            return $ENTRIES;
        }

        public static AppearanceItem valueOf(String str) {
            return (AppearanceItem) Enum.valueOf(AppearanceItem.class, str);
        }

        public static AppearanceItem[] values() {
            return (AppearanceItem[]) $VALUES.clone();
        }

        private AppearanceItem(String str, int i) {
        }

        static {
            AppearanceItem[] appearanceItemArr$values = $values();
            $VALUES = appearanceItemArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(appearanceItemArr$values);
        }

        public final int getId() {
            return this.id;
        }
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public void initializeOptionStrings() {
        this.titles = new CharSequence[]{LocaleController.getString(C2665R.string.exteraAppName), LocaleController.getString(C2665R.string.ActionBarTitleUsername), LocaleController.getString(C2665R.string.ActionBarTitleName), LocaleController.getString(C2665R.string.FilterChats)};
        this.tabIconsOptions = new CharSequence[]{LocaleController.getString(C2665R.string.TabTitleStyleTextWithIcons), LocaleController.getString(C2665R.string.TabTitleStyleTextOnly), LocaleController.getString(C2665R.string.TabTitleStyleIconsOnly)};
        this.tabCounterModes = new CharSequence[]{LocaleController.getString(C2665R.string.FilterAllChats), LocaleController.getString(C2665R.string.TabCounterUnmuted), LocaleController.getString(C2665R.string.BlurOff)};
        this.dividerStyles = new CharSequence[]{LocaleController.getString(C2665R.string.DividerStyleHidden), LocaleController.getString(C2665R.string.DividerStyleLine), LocaleController.getString(C2665R.string.DividerStyleSegments)};
        this.glassOutlineStyles = new CharSequence[]{LocaleController.getString(C2665R.string.GlassOutlineGlare), LocaleController.getString(C2665R.string.GlassOutlineSolid), LocaleController.getString(C2665R.string.GlassOutlineHidden)};
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity, org.telegram.ui.ActionBar.BaseFragment
    public View createView(Context context) {
        this.avatarCornersPreviewCell = new AvatarCornersPreviewCell(context, this, this.resourceProvider, RemoteUtils.getIntConfigValue("preferences_preview_style", 0).intValue());
        this.chatListPreviewCell = new ChatListPreviewCell(context);
        this.filterTabsPreviewCell = new FilterTabsPreviewCell(context);
        this.fabShapeCell = new FabShapeCell(context) { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity.createView.1
            @Override // com.exteragram.messenger.preferences.appearance.components.FabShapeCell
            public void rebuildFragments() {
                ((BaseFragment) this).parentLayout.rebuildFragments(0);
            }
        };
        return super.createView(context);
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public String getTitle() {
        return LocaleController.getString(C2665R.string.Appearance);
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public void fillItems(ArrayList<UItem> items, UniversalAdapter adapter) {
        items.add(UItem.asCustom(AppearanceItem.AVATAR_CORNERS_PREVIEW.getId(), this.avatarCornersPreviewCell).setLinkAlias("avatarCorners", this));
        items.add(BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) this, (Enum) AppearanceItem.SINGLE_CORNER_RADIUS, (CharSequence) LocaleController.getString(C2665R.string.SingleCornerRadius), ExteraConfig.getSingleCornerRadius(), (CharSequence) null, 0, false, "singleCornerRadius", false, 0, 440, (Object) null));
        items.add(UItem.asShadow(LocaleController.getString(C2665R.string.SingleCornerRadiusInfo)));
        items.add(UItem.asHeader(LocaleController.getString(C2665R.string.ListOfChats)));
        items.add(UItem.asCustom(AppearanceItem.CHAT_LIST_PREVIEW.getId(), this.chatListPreviewCell));
        items.add(BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) this, (Enum) AppearanceItem.FORCE_SNOW, (CharSequence) LocaleController.getString(C2665R.string.ForceSnow), ExteraConfig.getForceSnow(), (CharSequence) LocaleController.getString(C2665R.string.ForceSnowInfo), 0, false, "forceSnow", false, 0, 432, (Object) null));
        ExtensionsKt.addIf(items, getUserConfig().isPremium(), BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) this, (Enum) AppearanceItem.HIDE_ACTION_BAR_STATUS, (CharSequence) LocaleController.getString(C2665R.string.HideActionBarStatus), ExteraConfig.getHideActionBarStatus(), (CharSequence) null, 0, false, "hideActionBarStatus", false, 0, 440, (Object) null));
        items.add(BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) this, (Enum) AppearanceItem.CENTER_TITLE, (CharSequence) LocaleController.getString(C2665R.string.CenterTitle), ExteraConfig.getCenterTitle(), (CharSequence) null, 0, false, "centerTitle", false, 0, 440, (Object) null));
        items.add(BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) this, (Enum) AppearanceItem.HIDE_STORIES, (CharSequence) LocaleController.getString(C2665R.string.HideStories), ExteraConfig.getHideStories(), (CharSequence) null, 0, false, "hideStories", false, 0, 440, (Object) null));
        items.add(BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) this, (Enum) AppearanceItem.HIDE_FLOATING_BUTTON, (CharSequence) LocaleController.getString(C2665R.string.HideFloatingButton), ExteraConfig.getHideFloatingButton(), (CharSequence) null, 0, false, "hideFloatingButton", false, 0, 440, (Object) null));
        items.add(BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) this, (Enum) AppearanceItem.HIDE_DIALOGS_SEARCH_BAR, (CharSequence) LocaleController.getString(C2665R.string.HideDialogsSearchBar), ExteraConfig.getHideDialogsSearchBar(), (CharSequence) null, 0, false, "hideDialogsSearchBar", false, 0, 440, (Object) null));
        items.add(BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) this, (Enum) AppearanceItem.SENDER_MINI_AVATARS, (CharSequence) LocaleController.getString(C2665R.string.SenderMiniAvatars), ExteraConfig.getSenderMiniAvatars(), (CharSequence) null, 0, false, "senderMiniAvatars", false, 0, 440, (Object) null));
        AppearanceItem appearanceItem = AppearanceItem.ACTION_BAR_TITLE;
        String string = LocaleController.getString(C2665R.string.ActionBarTitle);
        CharSequence[] charSequenceArr = this.titles;
        if (charSequenceArr == null) {
            charSequenceArr = null;
        }
        items.add(BasePreferencesActivity.uButton$TMessagesProj$default((BasePreferencesActivity) this, (Enum) appearanceItem, (CharSequence) string, 0, charSequenceArr[ExteraConfig.getTitleText()], (CharSequence) null, (Boolean) null, false, "actionBarTitle", false, false, (Boolean) null, 1908, (Object) null));
        items.add(UItem.asShadow(LocaleController.getString(C2665R.string.ListOfChatsInfo)));
        items.add(UItem.asHeader(LocaleController.getString(C2665R.string.Filters)));
        items.add(UItem.asCustom(AppearanceItem.FOLDERS_PREVIEW.getId(), this.filterTabsPreviewCell));
        AppearanceItem appearanceItem2 = AppearanceItem.TAB_TITLE;
        String string2 = LocaleController.getString(C2665R.string.TabTitleStyle);
        CharSequence[] charSequenceArr2 = this.tabIconsOptions;
        if (charSequenceArr2 == null) {
            charSequenceArr2 = null;
        }
        items.add(BasePreferencesActivity.uButton$TMessagesProj$default((BasePreferencesActivity) this, (Enum) appearanceItem2, (CharSequence) string2, 0, charSequenceArr2[TabIconsMode.getEntries().indexOf(ExteraConfig.getTabIcons())], (CharSequence) null, (Boolean) null, false, "tabTitleStyle", false, false, (Boolean) null, 1908, (Object) null));
        AppearanceItem appearanceItem3 = AppearanceItem.TAB_COUNTER;
        String string3 = LocaleController.getString(C2665R.string.TabCounter);
        CharSequence[] charSequenceArr3 = this.tabCounterModes;
        if (charSequenceArr3 == null) {
            charSequenceArr3 = null;
        }
        items.add(BasePreferencesActivity.uButton$TMessagesProj$default((BasePreferencesActivity) this, (Enum) appearanceItem3, (CharSequence) string3, 0, charSequenceArr3[ExteraConfig.getTabCounterMode().ordinal()], (CharSequence) null, (Boolean) null, false, "tabCounter", false, false, (Boolean) null, 1908, (Object) null));
        items.add(BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) this, (Enum) AppearanceItem.HIDE_ALL_CHATS, (CharSequence) LocaleController.formatString(C2665R.string.HideAllChats, LocaleController.getString(C2665R.string.FilterAllChats)), ExteraConfig.getHideAllChats(), (CharSequence) null, 0, false, "hideAllChats", false, 0, 440, (Object) null));
        items.add(UItem.asShadow(LocaleController.getString(C2665R.string.FoldersInfo)));
        items.add(BasePreferencesActivity.uButton$TMessagesProj$default((BasePreferencesActivity) this, (Enum) AppearanceItem.APP_NAVIGATION_SETTINGS, (CharSequence) LocaleController.getString(C2665R.string.AppNavigation), C2665R.drawable.msg_newphone, (CharSequence) null, (CharSequence) LocaleController.getString(C2665R.string.AppNavigationInfo), (Boolean) null, false, "appNavigationSettings", false, false, (Boolean) null, 1896, (Object) null));
        items.add(BasePreferencesActivity.uButton$TMessagesProj$default((BasePreferencesActivity) this, (Enum) AppearanceItem.APP_ICON, (CharSequence) LocaleController.getString(C2665R.string.AppIcon), C2665R.drawable.menu_edit_appearance, (CharSequence) null, AppIconController.getSelectedIcon().getTitle(), (Boolean) null, false, "appIcon", false, false, (Boolean) null, 1896, (Object) null).onBind(new Utilities.Callback() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda20
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                AppearancePreferencesActivity.m2726$r8$lambda$BroMj8zTOlcCXqcxN3abB0FVwI(this.f$0, (View) obj);
            }
        }));
        items.add(BasePreferencesActivity.uButton$TMessagesProj$default((BasePreferencesActivity) this, (Enum) AppearanceItem.ICON_PACKS, (CharSequence) LocaleController.getString(C2665R.string.IconPacks), C2665R.drawable.msg_sticker, (CharSequence) null, (CharSequence) LocaleController.getString(C2665R.string.IconPacksInfo), (Boolean) null, false, "iconPacks", false, false, (Boolean) null, 1896, (Object) null));
        items.add(BasePreferencesActivity.uButton$TMessagesProj$default((BasePreferencesActivity) this, (Enum) AppearanceItem.PILL_STACK, (CharSequence) LocaleController.getString(C2665R.string.PillStackPills), C2665R.drawable.outline_header_search, (CharSequence) null, (CharSequence) LocaleController.getString(C2665R.string.PillStackPillsInfo), (Boolean) null, false, "pillStack", false, false, (Boolean) null, 1896, (Object) null));
        items.add(UItem.asShadow());
        items.add(UItem.asHeader(LocaleController.getString(C2665R.string.Appearance)));
        items.add(UItem.asCustom(AppearanceItem.FAB_SHAPE.getId(), this.fabShapeCell).setLinkAlias("fabShape", this));
        items.add(BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) this, (Enum) AppearanceItem.USE_SYSTEM_FONTS, (CharSequence) LocaleController.getString(C2665R.string.UseSystemFonts), ExteraConfig.getUseSystemFonts(), (CharSequence) null, 0, false, "useSystemFonts", false, 0, 440, (Object) null));
        items.add(BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) this, (Enum) AppearanceItem.USE_SYSTEM_EMOJI, (CharSequence) LocaleController.getString(C2665R.string.UseSystemEmoji), SharedConfig.useSystemEmoji, (CharSequence) null, 0, false, "useSystemEmoji", false, 0, 440, (Object) null));
        this.md3Styles.fill(items);
        items.add(BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) this, (Enum) AppearanceItem.GOOEY_AVATAR_ANIMATION, (CharSequence) LocaleController.getString(C2665R.string.GooeyAvatarAnimation), ExteraConfig.getGooeyAvatarAnimation(), (CharSequence) null, 0, false, "gooeyAvatarAnimation", false, 0, 440, (Object) null));
        items.add(BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) this, (Enum) AppearanceItem.CUSTOM_THEMES, (CharSequence) LocaleController.getString(C2665R.string.CustomChatThemes), ExteraConfig.getCustomThemes(), (CharSequence) null, 0, false, "customThemes", false, 0, 440, (Object) null));
        items.add(UItem.asShadow(LocaleController.getString(C2665R.string.CustomChatThemesInfo)));
        items.add(UItem.asHeader(SettingsRegistry.markAsNewFeature("Appearance-Sections") ? LocaleUtils.applyNewSpan(LocaleController.getString(C2665R.string.Sections)) : LocaleController.getString(C2665R.string.Sections)));
        items.add(createSectionRadiusSliderItem().setSearchable(this).setLinkAlias("sectionRadius", this));
        boolean z = ExteraConfig.getDividerStyle() == DividerStyle.SEGMENTS;
        UItem uItemUCheck$TMessagesProj$default = BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) this, (Enum) AppearanceItem.SEPARATED_HEADERS, (CharSequence) LocaleController.getString(C2665R.string.SeparateHeaders), ExteraConfig.getSectionsSeparatedHeaders(), (CharSequence) null, 0, false, "sectionsSeparatedHeaders", false, 0, 440, (Object) null);
        uItemUCheck$TMessagesProj$default.setEnabled(!z);
        items.add(uItemUCheck$TMessagesProj$default);
        AppearanceItem appearanceItem4 = AppearanceItem.DIVIDER_STYLE;
        String string4 = LocaleController.getString(C2665R.string.DividerStyle);
        CharSequence[] charSequenceArr4 = this.dividerStyles;
        if (charSequenceArr4 == null) {
            charSequenceArr4 = null;
        }
        items.add(BasePreferencesActivity.uButton$TMessagesProj$default((BasePreferencesActivity) this, (Enum) appearanceItem4, (CharSequence) string4, 0, charSequenceArr4[ExteraConfig.getDividerStyle().ordinal()], (CharSequence) null, (Boolean) null, false, "dividerStyle", false, false, (Boolean) null, 1908, (Object) null));
        items.add(UItem.asShadow());
        items.add(UItem.asHeader(LocaleController.getString(C2665R.string.BlurOptions)));
        AppearanceItem appearanceItem5 = AppearanceItem.GLASS_OUTLINE_STYLE;
        String string5 = LocaleController.getString(C2665R.string.GlassOutlineStyle);
        CharSequence[] charSequenceArr5 = this.glassOutlineStyles;
        items.add(BasePreferencesActivity.uButton$TMessagesProj$default((BasePreferencesActivity) this, (Enum) appearanceItem5, (CharSequence) string5, 0, (charSequenceArr5 != null ? charSequenceArr5 : null)[ExteraConfig.getGlassOutlineStyle().ordinal()], (CharSequence) null, (Boolean) null, false, "glassOutlineStyle", false, false, (Boolean) null, 1908, (Object) null));
        items.add(BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) this, (Enum) AppearanceItem.GLASS_MESSAGE_MENU, (CharSequence) LocaleController.getString(C2665R.string.GlassMessageMenu), ExteraConfig.getGlassMessageMenu(), (CharSequence) LocaleController.getString(C2665R.string.GlassMessageMenuInfo), 0, false, "glassMessageMenu", false, 0, 432, (Object) null));
        items.add(BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) this, (Enum) AppearanceItem.FORCE_BLUR, (CharSequence) LocaleController.getString(C2665R.string.ForceBlur), ExteraConfig.getForceBlur(), (CharSequence) null, 0, false, "forceBlur", false, 0, 440, (Object) null));
        items.add(UItem.asShadow(LocaleController.getString(C2665R.string.ForceBlurInfo)));
    }

    /* JADX INFO: renamed from: $r8$lambda$BroMj8zTOlcCXqcxN3abB-0FVwI, reason: not valid java name */
    public static void m2726$r8$lambda$BroMj8zTOlcCXqcxN3abB0FVwI(AppearancePreferencesActivity appearancePreferencesActivity, View view) {
        if (view instanceof TextCell) {
            TextCell textCell = (TextCell) view;
            textCell.getValueImageView().setVisibility(0);
            textCell.getValueImageView().setImageDrawable(appearancePreferencesActivity.getAppIconDrawable());
            textCell.valueImageRight = (textCell.heightDp - 34) / 2;
        }
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public void onClick(UItem item, View view, int position, float x, float y) {
        int i = item.id;
        if (i <= 0 || i > AppearanceItem.getEntries().size()) {
            return;
        }
        switch (WhenMappings.$EnumSwitchMapping$0[AppearanceItem.getEntries().get(item.id - 1).ordinal()]) {
            case 1:
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda0
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setSingleCornerRadius(((Boolean) obj).booleanValue());
                    }
                });
                this.parentLayout.rebuildFragments(0);
                break;
            case 2:
                CharSequence[] charSequenceArr = this.titles;
                if (charSequenceArr == null) {
                    charSequenceArr = null;
                }
                showListDialog(item, charSequenceArr, LocaleController.getString(C2665R.string.ActionBarTitle), ExteraConfig.getTitleText(), new PopupUtils.OnItemClickListener() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda11
                    @Override // com.exteragram.messenger.utils.ui.PopupUtils.OnItemClickListener
                    public final void onClick(int i2) {
                        AppearancePreferencesActivity.$r8$lambda$bnTvQSZ4KR0iSISWLhmrYR3liWM(this.f$0, i2);
                    }
                });
                break;
            case 3:
                presentFragment(new PillStackPreferencesActivity());
                break;
            case 4:
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda12
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setHideStories(((Boolean) obj).booleanValue());
                    }
                });
                getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesEnabledUpdate, new Object[0]);
                break;
            case 5:
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda13
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setHideActionBarStatus(((Boolean) obj).booleanValue());
                    }
                });
                ChatListPreviewCell chatListPreviewCell = this.chatListPreviewCell;
                if (chatListPreviewCell != null) {
                    chatListPreviewCell.updateStatus(true);
                }
                this.parentLayout.rebuildFragments(0);
                break;
            case 6:
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda14
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setCenterTitle(((Boolean) obj).booleanValue());
                    }
                });
                ChatListPreviewCell chatListPreviewCell2 = this.chatListPreviewCell;
                if (chatListPreviewCell2 != null) {
                    chatListPreviewCell2.updateCentered(true);
                }
                this.actionBar.refreshTitlePosition(true);
                this.parentLayout.rebuildFragments(0);
                break;
            case 7:
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda15
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setHideFloatingButton(((Boolean) obj).booleanValue());
                    }
                });
                this.parentLayout.rebuildFragments(0);
                break;
            case 8:
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda16
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setHideDialogsSearchBar(((Boolean) obj).booleanValue());
                    }
                });
                this.parentLayout.rebuildFragments(0);
                break;
            case 9:
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda17
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setSenderMiniAvatars(((Boolean) obj).booleanValue());
                    }
                });
                break;
            case 10:
                CharSequence[] charSequenceArr2 = this.tabIconsOptions;
                if (charSequenceArr2 == null) {
                    charSequenceArr2 = null;
                }
                showListDialog(item, charSequenceArr2, LocaleController.getString(C2665R.string.TabTitleStyle), TabIconsMode.getEntries().indexOf(ExteraConfig.getTabIcons()), new PopupUtils.OnItemClickListener() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda18
                    @Override // com.exteragram.messenger.utils.ui.PopupUtils.OnItemClickListener
                    public final void onClick(int i2) {
                        AppearancePreferencesActivity.$r8$lambda$kaybrtE5Evj9ZdKXmh8rIZuvcFg(this.f$0, i2);
                    }
                });
                break;
            case 11:
                CharSequence[] charSequenceArr3 = this.tabCounterModes;
                if (charSequenceArr3 == null) {
                    charSequenceArr3 = null;
                }
                showListDialog(item, charSequenceArr3, LocaleController.getString(C2665R.string.TabCounter), ExteraConfig.getTabCounterMode().ordinal(), new PopupUtils.OnItemClickListener() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda19
                    @Override // com.exteragram.messenger.utils.ui.PopupUtils.OnItemClickListener
                    public final void onClick(int i2) {
                        AppearancePreferencesActivity.$r8$lambda$BWpsglEKp91Y3TBO2mIytxIjNyw(this.f$0, i2);
                    }
                });
                break;
            case 12:
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda1
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setHideAllChats(((Boolean) obj).booleanValue());
                    }
                });
                handleHideAllChatsClick();
                break;
            case 13:
                presentFragment(new AppNavigationPreferencesActivity());
                break;
            case 14:
                presentFragment(new AppIconsActivity());
                break;
            case 15:
                presentFragment(new IconPacksActivity());
                break;
            case 16:
                if (ExteraConfig.getDividerStyle() != DividerStyle.SEGMENTS) {
                    toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda2
                        @Override // androidx.core.util.Consumer
                        public final void accept(Object obj) {
                            ExteraConfig.setSectionsSeparatedHeaders(((Boolean) obj).booleanValue());
                        }
                    });
                    getListView$TMessagesProj().invalidateItemDecorations();
                    break;
                }
                break;
            case 17:
                CharSequence[] charSequenceArr4 = this.dividerStyles;
                if (charSequenceArr4 == null) {
                    charSequenceArr4 = null;
                }
                showListDialog(item, charSequenceArr4, LocaleController.getString(C2665R.string.DividerStyle), ExteraConfig.getDividerStyle().ordinal(), new PopupUtils.OnItemClickListener() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda3
                    @Override // com.exteragram.messenger.utils.ui.PopupUtils.OnItemClickListener
                    public final void onClick(int i2) {
                        AppearancePreferencesActivity.m2723$r8$lambda$1ca0TsQHxg_veCd4fD2LnWERcQ(this.f$0, i2);
                    }
                });
                break;
            case 18:
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda4
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setUseSystemFonts(((Boolean) obj).booleanValue());
                    }
                });
                handleUseSystemFontsClick();
                break;
            case 19:
                handleUseSystemEmojiClick(item);
                break;
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
                this.md3Styles.onClick(item);
                break;
            case 27:
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda5
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setGooeyAvatarAnimation(((Boolean) obj).booleanValue());
                    }
                });
                break;
            case 28:
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda6
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setCustomThemes(((Boolean) obj).booleanValue());
                    }
                });
                break;
            case 29:
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda7
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setForceSnow(((Boolean) obj).booleanValue());
                    }
                });
                ChatListPreviewCell chatListPreviewCell3 = this.chatListPreviewCell;
                if (chatListPreviewCell3 != null) {
                    chatListPreviewCell3.invalidate();
                }
                break;
            case 30:
                CharSequence[] charSequenceArr5 = this.glassOutlineStyles;
                showListDialog(item, charSequenceArr5 == null ? null : charSequenceArr5, LocaleController.getString(C2665R.string.GlassOutlineStyle), ExteraConfig.getGlassOutlineStyle().ordinal(), new PopupUtils.OnItemClickListener() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda8
                    @Override // com.exteragram.messenger.utils.ui.PopupUtils.OnItemClickListener
                    public final void onClick(int i2) {
                        AppearancePreferencesActivity.m2731$r8$lambda$o0XG87MBSw9iCPkdSYz77htMTU(this.f$0, i2);
                    }
                });
                break;
            case 31:
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda9
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setForceBlur(((Boolean) obj).booleanValue());
                    }
                });
                handleForceBlurChange();
                break;
            case 32:
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda10
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setGlassMessageMenu(((Boolean) obj).booleanValue());
                    }
                });
                handleGlassMessageMenuChange();
                break;
        }
    }

    public static void $r8$lambda$bnTvQSZ4KR0iSISWLhmrYR3liWM(AppearancePreferencesActivity appearancePreferencesActivity, int i) {
        ExteraConfig.setTitleText(i);
        appearancePreferencesActivity.handleActionBarTitleClick();
    }

    public static void $r8$lambda$kaybrtE5Evj9ZdKXmh8rIZuvcFg(AppearancePreferencesActivity appearancePreferencesActivity, int i) {
        ExteraConfig.setTabIcons(TabIconsMode.getEntries().get(i));
        appearancePreferencesActivity.handleTabTitleClick();
    }

    public static void $r8$lambda$BWpsglEKp91Y3TBO2mIytxIjNyw(AppearancePreferencesActivity appearancePreferencesActivity, int i) {
        ExteraConfig.setTabCounterMode(TabCounterMode.getEntries().get(i));
        appearancePreferencesActivity.handleTabCounterClick();
    }

    /* JADX INFO: renamed from: $r8$lambda$1ca0TsQHxg_ve-Cd4fD2LnWERcQ, reason: not valid java name */
    public static void m2723$r8$lambda$1ca0TsQHxg_veCd4fD2LnWERcQ(AppearancePreferencesActivity appearancePreferencesActivity, int i) {
        ExteraConfig.setDividerStyle(DividerStyle.getEntries().get(i));
        if (ExteraConfig.getDividerStyle() == DividerStyle.SEGMENTS) {
            ExteraConfig.setSectionsSeparatedHeaders(true);
        }
        appearancePreferencesActivity.handleDividerStyleChange();
    }

    /* JADX INFO: renamed from: $r8$lambda$o0XG8-7MBSw9iCPkdSYz77htMTU, reason: not valid java name */
    public static void m2731$r8$lambda$o0XG87MBSw9iCPkdSYz77htMTU(AppearancePreferencesActivity appearancePreferencesActivity, int i) {
        ExteraConfig.setGlassOutlineStyle(GlassOutlineStyle.getEntries().get(i));
        appearancePreferencesActivity.parentLayout.rebuildFragments(0);
    }

    private final UItem createSectionRadiusSliderItem() {
        UItem uItemAsIntSlideView = UItem.asIntSlideView(1, 0, ExteraConfig.getSectionRadiusDp(), 28, new Utilities.CallbackReturn() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda22
            @Override // org.telegram.messenger.Utilities.CallbackReturn
            public final Object run(Object obj) {
                return this.f$0.formatSectionRadius(((Integer) obj).intValue());
            }
        }, new Utilities.Callback() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda23
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                AppearancePreferencesActivity.$r8$lambda$BQktZMK8L3x7TpZfpqssg2gNJSE(this.f$0, (Integer) obj);
            }
        });
        uItemAsIntSlideView.id = AppearanceItem.SECTION_RADIUS.getId();
        uItemAsIntSlideView.text = LocaleController.getString(C2665R.string.Sections);
        return uItemAsIntSlideView;
    }

    public static void $r8$lambda$BQktZMK8L3x7TpZfpqssg2gNJSE(AppearancePreferencesActivity appearancePreferencesActivity, Integer num) {
        ExteraConfig.setSectionRadius(num.intValue());
        appearancePreferencesActivity.handleSectionRadiusChange();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CharSequence formatSectionRadius(int value) {
        if (value == 0) {
            return LocaleController.getString(C2665R.string.BlurOff);
        }
        if (value == 28) {
            return LocaleController.getString(C2665R.string.PredictiveBackMax);
        }
        return value + " dp";
    }

    private final void handleDividerStyleChange() {
        Theme.applyCommonTheme();
        getListView$TMessagesProj().invalidate();
        getListView$TMessagesProj().invalidateItemDecorations();
        AvatarCornersPreviewCell avatarCornersPreviewCell = this.avatarCornersPreviewCell;
        if (avatarCornersPreviewCell != null) {
            avatarCornersPreviewCell.invalidate();
        }
        ChatListPreviewCell chatListPreviewCell = this.chatListPreviewCell;
        if (chatListPreviewCell != null) {
            chatListPreviewCell.invalidate();
        }
        FabShapeCell fabShapeCell = this.fabShapeCell;
        if (fabShapeCell != null) {
            fabShapeCell.invalidate();
        }
        FilterTabsPreviewCell filterTabsPreviewCell = this.filterTabsPreviewCell;
        if (filterTabsPreviewCell != null) {
            filterTabsPreviewCell.invalidate();
        }
        this.parentLayout.rebuildFragments(0);
    }

    private final void handleSectionRadiusChange() {
        UniversalRecyclerView listView$TMessagesProj = getListView$TMessagesProj();
        listView$TMessagesProj.setSections();
        listView$TMessagesProj.invalidate();
        listView$TMessagesProj.invalidateItemDecorations();
        this.parentLayout.rebuildFragments(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateMD3Styles() {
        AvatarCornersPreviewCell avatarCornersPreviewCell = this.avatarCornersPreviewCell;
        if (avatarCornersPreviewCell != null) {
            avatarCornersPreviewCell.updateSliderStyle();
        }
        this.parentLayout.rebuildFragments(0);
    }

    private final void handleActionBarTitleClick() {
        ChatListPreviewCell chatListPreviewCell = this.chatListPreviewCell;
        if (chatListPreviewCell != null) {
            chatListPreviewCell.updateStatus(true);
        }
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.currentUserPremiumStatusChanged, new Object[0]);
    }

    private final void handleTabTitleClick() {
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogFiltersUpdated, new Object[0]);
    }

    private final void handleTabCounterClick() {
        FolderCounters.INSTANCE.recountAll();
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogFiltersUpdated, new Object[0]);
    }

    private final AppIconPreviewDrawable getAppIconDrawable() {
        AppIcon selectedIcon = AppIconController.getSelectedIcon();
        boolean useSystemIconShape = ExteraConfig.getUseSystemIconShape();
        AppIconPreviewDrawable appIconPreviewDrawable = this.appIconDrawable;
        if (appIconPreviewDrawable != null && Intrinsics.areEqual(this.appIconDrawableIcon, selectedIcon) && this.appIconDrawableShape == useSystemIconShape) {
            return appIconPreviewDrawable;
        }
        this.appIconDrawableIcon = selectedIcon;
        this.appIconDrawableShape = useSystemIconShape;
        AppIconPreviewDrawable appIconPreviewDrawable2 = new AppIconPreviewDrawable(selectedIcon, AndroidUtilities.dp(34.0f));
        this.appIconDrawable = appIconPreviewDrawable2;
        return appIconPreviewDrawable2;
    }

    private final void handleHideAllChatsClick() {
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogFiltersUpdated, new Object[0]);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.mainUserInfoChanged, new Object[0]);
    }

    private final void handleUseSystemFontsClick() {
        AndroidUtilities.clearTypefaceCache();
        this.parentLayout.rebuildFragments(1);
    }

    private final void handleForceBlurChange() {
        if (SharedConfig.chatBlurEnabled() || !ExteraConfig.getForceBlur()) {
            return;
        }
        SharedConfig.toggleChatBlur();
    }

    private final void handleGlassMessageMenuChange() {
        if (!ExteraConfig.getGlassMessageMenu() || SharedConfig.chatBlurEnabled()) {
            return;
        }
        BulletinFactory.of(this).createSimpleBulletin(C2665R.raw.info, LocaleController.getString(C2665R.string.GlassMessageMenuBlurOff), LocaleController.getString(C2665R.string.Enable), new Runnable() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda21
            @Override // java.lang.Runnable
            public final void run() {
                SharedConfig.toggleChatBlur();
            }
        }).show();
    }

    private final void handleUseSystemEmojiClick(UItem item) {
        SharedConfig.toggleUseSystemEmoji();
        item.setChecked(!SharedConfig.useSystemEmoji);
        this.parentLayout.rebuildFragments(0);
        UniversalAdapter universalAdapter = getListView$TMessagesProj().adapter;
        if (universalAdapter != null) {
            universalAdapter.update(true);
        }
    }
}
