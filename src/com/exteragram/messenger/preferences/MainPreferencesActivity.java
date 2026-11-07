package com.exteragram.messenger.preferences;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.plugins.PluginsConstants;
import com.exteragram.messenger.plugins.PluginsController;
import com.exteragram.messenger.plugins.ui.PluginsActivity;
import com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity;
import com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity;
import com.exteragram.messenger.preferences.components.HeaderSettingsCell;
import com.exteragram.messenger.utils.ExtensionsKt;
import com.exteragram.messenger.utils.system.VibratorUtils;
import java.util.ArrayList;
import kotlin.LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.browser.Browser;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;
import org.telegram.ui.LaunchActivity;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0006\u0018\u00002\u00020\u0001:\u0001 B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0007H\u0016J\b\u0010\b\u001a\u00020\tH\u0014J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0014J\u001e\u0010\u000e\u001a\u00020\u000f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010\u0013\u001a\u00020\u0014H\u0014J0\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001bH\u0014J0\u0010\u001d\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001bH\u0014J\u0010\u0010\u001e\u001a\u00020\u00192\u0006\u0010\u001f\u001a\u00020\u0019H\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n\u0000¨\u0006!"}, d2 = {"Lcom/exteragram/messenger/preferences/MainPreferencesActivity;", "Lcom/exteragram/messenger/preferences/BasePreferencesActivity;", "<init>", "()V", "headerSettingsCell", "Lcom/exteragram/messenger/preferences/components/HeaderSettingsCell;", "getTitle", _UrlKt.FRAGMENT_ENCODE_SET, "needHideTitle", _UrlKt.FRAGMENT_ENCODE_SET, "createView", "Landroid/view/View;", "context", "Landroid/content/Context;", "fillItems", _UrlKt.FRAGMENT_ENCODE_SET, PluginsConstants.Settings.ITEMS, "Ljava/util/ArrayList;", "Lorg/telegram/ui/Components/UItem;", "adapter", "Lorg/telegram/ui/Components/UniversalAdapter;", "onClick", PluginsConstants.Settings.ITEM, PluginsConstants.Settings.VIEW, "position", _UrlKt.FRAGMENT_ENCODE_SET, "x", _UrlKt.FRAGMENT_ENCODE_SET, "y", "onLongClick", "getListTopPadding", "topInset", "PreferenceItem", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
public final class MainPreferencesActivity extends BasePreferencesActivity {
    private HeaderSettingsCell headerSettingsCell;

    @Metadata(m910k = 3, mv = {2, 2, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[PreferenceItem.values().length];
            try {
                iArr[PreferenceItem.HEADER_CELL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PreferenceItem.GENERAL_CATEGORY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[PreferenceItem.APPEARANCE_CATEGORY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[PreferenceItem.CHATS_CATEGORY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[PreferenceItem.PLUGINS_CATEGORY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[PreferenceItem.OTHER_CATEGORY.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[PreferenceItem.CHANNEL.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[PreferenceItem.FORUM.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[PreferenceItem.CROWDIN.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[PreferenceItem.WEBSITE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public boolean needHideTitle() {
        return true;
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\r\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0011\u0010\u000e\u001a\u00020\u000f¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\r¨\u0006\u0012"}, d2 = {"Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;I)V", "HEADER_CELL", "GENERAL_CATEGORY", "APPEARANCE_CATEGORY", "CHATS_CATEGORY", "PLUGINS_CATEGORY", "OTHER_CATEGORY", "CHANNEL", "FORUM", "CROWDIN", "WEBSITE", "id", _UrlKt.FRAGMENT_ENCODE_SET, "getId", "()I", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class PreferenceItem {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ PreferenceItem[] $VALUES;
        private final int id = ordinal() + 1;
        public static final PreferenceItem HEADER_CELL = new PreferenceItem("HEADER_CELL", 0);
        public static final PreferenceItem GENERAL_CATEGORY = new PreferenceItem("GENERAL_CATEGORY", 1);
        public static final PreferenceItem APPEARANCE_CATEGORY = new PreferenceItem("APPEARANCE_CATEGORY", 2);
        public static final PreferenceItem CHATS_CATEGORY = new PreferenceItem("CHATS_CATEGORY", 3);
        public static final PreferenceItem PLUGINS_CATEGORY = new PreferenceItem("PLUGINS_CATEGORY", 4);
        public static final PreferenceItem OTHER_CATEGORY = new PreferenceItem("OTHER_CATEGORY", 5);
        public static final PreferenceItem CHANNEL = new PreferenceItem("CHANNEL", 6);
        public static final PreferenceItem FORUM = new PreferenceItem("FORUM", 7);
        public static final PreferenceItem CROWDIN = new PreferenceItem("CROWDIN", 8);
        public static final PreferenceItem WEBSITE = new PreferenceItem("WEBSITE", 9);

        private static final /* synthetic */ PreferenceItem[] $values() {
            return new PreferenceItem[]{HEADER_CELL, GENERAL_CATEGORY, APPEARANCE_CATEGORY, CHATS_CATEGORY, PLUGINS_CATEGORY, OTHER_CATEGORY, CHANNEL, FORUM, CROWDIN, WEBSITE};
        }

        public static EnumEntries<PreferenceItem> getEntries() {
            return $ENTRIES;
        }

        public static PreferenceItem valueOf(String str) {
            return (PreferenceItem) Enum.valueOf(PreferenceItem.class, str);
        }

        public static PreferenceItem[] values() {
            return (PreferenceItem[]) $VALUES.clone();
        }

        private PreferenceItem(String str, int i) {
        }

        static {
            PreferenceItem[] preferenceItemArr$values = $values();
            $VALUES = preferenceItemArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(preferenceItemArr$values);
        }

        public final int getId() {
            return this.id;
        }
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public String getTitle() {
        return LocaleController.getString(C2807R.string.Preferences);
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity, org.telegram.ui.ActionBar.BaseFragment
    public View createView(Context context) {
        this.headerSettingsCell = new HeaderSettingsCell(context);
        View viewCreateView = super.createView(context);
        this.fragmentView = viewCreateView;
        return viewCreateView;
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public void fillItems(ArrayList<UItem> items, UniversalAdapter adapter) {
        HeaderSettingsCell headerSettingsCell = this.headerSettingsCell;
        if (headerSettingsCell == null) {
            headerSettingsCell = null;
        }
        items.add(UItem.asCustomShadow(headerSettingsCell, 198).setId(PreferenceItem.HEADER_CELL.getId()));
        items.add(UItem.asHeader(LocaleController.getString(C2807R.string.Categories)));
        items.add(BasePreferencesActivity.uButton$TMessagesProj$default((BasePreferencesActivity) this, (Enum) PreferenceItem.GENERAL_CATEGORY, (CharSequence) LocaleController.getString(C2807R.string.General), C2807R.drawable.msg_media, (CharSequence) null, (CharSequence) null, (Boolean) null, false, "general", false, false, (Boolean) null, 1912, (Object) null));
        items.add(BasePreferencesActivity.uButton$TMessagesProj$default((BasePreferencesActivity) this, (Enum) PreferenceItem.APPEARANCE_CATEGORY, (CharSequence) LocaleController.getString(C2807R.string.Appearance), C2807R.drawable.msg_theme, (CharSequence) null, (CharSequence) null, (Boolean) null, false, "appearance", false, false, (Boolean) null, 1912, (Object) null));
        items.add(BasePreferencesActivity.uButton$TMessagesProj$default((BasePreferencesActivity) this, (Enum) PreferenceItem.CHATS_CATEGORY, (CharSequence) LocaleController.getString(C2807R.string.SearchAllChatsShort), C2807R.drawable.msg_discussion, (CharSequence) null, (CharSequence) null, (Boolean) null, false, "chats", false, false, (Boolean) null, 1912, (Object) null));
        ExtensionsKt.addIf(items, PluginsController.INSTANCE.isPluginEngineSupported(), BasePreferencesActivity.uButton$TMessagesProj$default((BasePreferencesActivity) this, (Enum) PreferenceItem.PLUGINS_CATEGORY, (CharSequence) LocaleController.getString(C2807R.string.Plugins), C2807R.drawable.msg_plugins, (CharSequence) null, (CharSequence) null, (Boolean) null, false, PluginsConstants.PLUGINS, false, false, (Boolean) null, 1912, (Object) null));
        items.add(BasePreferencesActivity.uButton$TMessagesProj$default((BasePreferencesActivity) this, (Enum) PreferenceItem.OTHER_CATEGORY, (CharSequence) LocaleController.getString(C2807R.string.LocalOther), C2807R.drawable.msg_fave, (CharSequence) null, (CharSequence) null, (Boolean) null, false, "other", false, false, (Boolean) null, 1912, (Object) null));
        items.add(UItem.asShadow());
        items.add(UItem.asHeader(LocaleController.getString(C2807R.string.Links)));
        items.add(BasePreferencesActivity.uButton$TMessagesProj$default((BasePreferencesActivity) this, (Enum) PreferenceItem.CHANNEL, (CharSequence) LocaleController.getString(C2807R.string.ProfileChannel), C2807R.drawable.msg_channel, (CharSequence) "@exteraGram", (CharSequence) null, (Boolean) null, false, "channel", false, false, (Boolean) null, 1904, (Object) null));
        items.add(BasePreferencesActivity.uButton$TMessagesProj$default((BasePreferencesActivity) this, (Enum) PreferenceItem.FORUM, (CharSequence) LocaleController.getString(C2807R.string.SearchAllChatsShort), C2807R.drawable.msg_groups, (CharSequence) "@exteraForum", (CharSequence) null, (Boolean) null, false, "chat", false, false, (Boolean) null, 1904, (Object) null));
        items.add(BasePreferencesActivity.uButton$TMessagesProj$default((BasePreferencesActivity) this, (Enum) PreferenceItem.CROWDIN, (CharSequence) LocaleController.getString(C2807R.string.Crowdin), C2807R.drawable.msg_translate, (CharSequence) "Crowdin", (CharSequence) null, (Boolean) null, false, "crowdin", false, false, (Boolean) null, 1904, (Object) null));
        items.add(BasePreferencesActivity.uButton$TMessagesProj$default((BasePreferencesActivity) this, (Enum) PreferenceItem.WEBSITE, (CharSequence) LocaleController.getString(C2807R.string.Website), C2807R.drawable.msg_language, (CharSequence) "exteraGram.app", (CharSequence) null, Boolean.FALSE, false, "website", false, false, (Boolean) null, 1872, (Object) null));
        items.add(UItem.asShadow());
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public void onClick(UItem item, View view, int position, float x, float y) {
        int i = item.id;
        if (i <= 0 || i > PreferenceItem.getEntries().size()) {
            return;
        }
        switch (WhenMappings.$EnumSwitchMapping$0[PreferenceItem.getEntries().get(item.id - 1).ordinal()]) {
            case 1:
                if (!BuildVars.PM_BUILD) {
                    Activity parentActivity = getParentActivity();
                    LaunchActivity launchActivity = parentActivity instanceof LaunchActivity ? (LaunchActivity) parentActivity : null;
                    if (launchActivity != null) {
                        launchActivity.checkAppUpdate(true);
                    }
                }
                break;
            case 2:
                presentFragment(new GeneralPreferencesActivity());
                break;
            case 3:
                presentFragment(new AppearancePreferencesActivity());
                break;
            case 4:
                presentFragment(new ChatsPreferencesActivity());
                break;
            case 5:
                presentFragment(new PluginsActivity());
                break;
            case 6:
                presentFragment(new OtherPreferencesActivity());
                break;
            case 7:
                getMessagesController().openByUserName("exteraGram", this, 1);
                break;
            case 8:
                getMessagesController().openByUserName("exteraForum", this, 1);
                break;
            case 9:
                Browser.openUrl(getParentActivity(), "https://crowdin.com/project/exteralocales");
                break;
            case 10:
                Browser.openUrl(getParentActivity(), "https://exteraGram.app");
                break;
            default:
                LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0.m909m();
                break;
        }
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public boolean onLongClick(UItem item, View view, int position, float x, float y) {
        int i = item.id;
        if (i <= 0 || i > PreferenceItem.getEntries().size()) {
            return false;
        }
        if (PreferenceItem.getEntries().get(item.id - 1) == PreferenceItem.HEADER_CELL) {
            ExteraConfig.setUseSystemIconShape(!ExteraConfig.getUseSystemIconShape());
            view.performHapticFeedback(VibratorUtils.getType(3), 1);
            view.invalidate();
            return true;
        }
        return super.onLongClick(item, view, position, x, y);
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public int getListTopPadding(int topInset) {
        return topInset + AndroidUtilities.dp(12.0f);
    }
}
