package com.exteragram.messenger.preferences;

import android.content.Context;
import android.content.SharedPreferences;
import android.view.View;
import android.widget.FrameLayout;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.plugins.PluginsController;
import com.exteragram.messenger.plugins.p015ui.PluginsActivity;
import com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity;
import com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity;
import com.exteragram.messenger.preferences.components.HeaderSettingsCell;
import com.exteragram.messenger.utils.system.VibratorUtils;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.browser.Browser;
import org.telegram.p029ui.ActionBar.ActionBar;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.UItem;
import org.telegram.p029ui.Components.UniversalAdapter;
import org.telegram.p029ui.LaunchActivity;

/* JADX INFO: loaded from: classes.dex */
public class MainPreferencesActivity extends BasePreferencesActivity {
    private HeaderSettingsCell headerSettingsCell;

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    protected boolean hasHeaderCell() {
        return true;
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    protected boolean hasWhiteActionBar() {
        return true;
    }

    public enum PreferenceItem {
        HEADER_CELL,
        GENERAL_CATEGORY,
        APPEARANCE_CATEGORY,
        CHATS_CATEGORY,
        PLUGINS_CATEGORY,
        OTHER_CATEGORY,
        CHANNEL,
        CHAT,
        CROWDIN,
        WEBSITE;

        public int getId() {
            return ordinal() + 1;
        }
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public String getTitle() {
        return LocaleController.getString(C2888R.string.Preferences);
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity, org.telegram.p029ui.ActionBar.BaseFragment
    public View createView(Context context) {
        View viewCreateView = super.createView(context);
        this.headerSettingsCell = new HeaderSettingsCell(context);
        this.actionBar.setBackground(null);
        ActionBar actionBar = this.actionBar;
        int i = Theme.key_windowBackgroundWhiteBlackText;
        actionBar.setTitleColor(Theme.getColor(i));
        this.actionBar.setItemsColor(Theme.getColor(i), false);
        this.actionBar.setItemsBackgroundColor(Theme.getColor(Theme.key_listSelector), false);
        this.actionBar.setCastShadows(false);
        this.actionBar.setAddToContainer(false);
        this.actionBar.getTitleTextView().setAlpha(0.0f);
        if (viewCreateView instanceof FrameLayout) {
            ((FrameLayout) viewCreateView).addView(this.actionBar, LayoutHelper.createFrame(-1, -2.0f));
        }
        this.fragmentView = viewCreateView;
        return viewCreateView;
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    protected void fillItems(ArrayList arrayList, UniversalAdapter universalAdapter) {
        arrayList.add(UItem.asCustomShadow(this.headerSettingsCell, 198));
        arrayList.add(UItem.asHeader(LocaleController.getString(C2888R.string.Categories)));
        arrayList.add(UItem.asButton(PreferenceItem.GENERAL_CATEGORY.getId(), C2888R.drawable.msg_media, LocaleController.getString(C2888R.string.General)).setSearchable(this).setLinkAlias("general", this));
        arrayList.add(UItem.asButton(PreferenceItem.APPEARANCE_CATEGORY.getId(), C2888R.drawable.msg_theme, LocaleController.getString(C2888R.string.Appearance)).setSearchable(this).setLinkAlias("appearance", this));
        arrayList.add(UItem.asButton(PreferenceItem.CHATS_CATEGORY.getId(), C2888R.drawable.msg_discussion, LocaleController.getString(C2888R.string.SearchAllChatsShort)).setSearchable(this).setLinkAlias("chats", this));
        if (PluginsController.isPluginEngineSupported()) {
            arrayList.add(UItem.asButton(PreferenceItem.PLUGINS_CATEGORY.getId(), C2888R.drawable.msg_plugins, LocaleController.getString(C2888R.string.Plugins)).setSearchable(this).setLinkAlias("plugins", this));
        }
        arrayList.add(UItem.asButton(PreferenceItem.OTHER_CATEGORY.getId(), C2888R.drawable.msg_fave, LocaleController.getString(C2888R.string.LocalOther)).setSearchable(this).setLinkAlias("other", this));
        arrayList.add(UItem.asShadow());
        arrayList.add(UItem.asHeader(LocaleController.getString(C2888R.string.Links)));
        arrayList.add(UItem.asButton(PreferenceItem.CHANNEL.getId(), C2888R.drawable.msg_channel, LocaleController.getString(C2888R.string.ProfileChannel), "@exteraGram").setSearchable(this).setLinkAlias("channel", this));
        arrayList.add(UItem.asButton(PreferenceItem.CHAT.getId(), C2888R.drawable.msg_groups, LocaleController.getString(C2888R.string.SearchAllChatsShort), "@exteraChat").setSearchable(this).setLinkAlias("chat", this));
        arrayList.add(UItem.asButton(PreferenceItem.CROWDIN.getId(), C2888R.drawable.msg_translate, LocaleController.getString(C2888R.string.Crowdin), "Crowdin").setSearchable(this).setLinkAlias("crowdin", this));
        arrayList.add(UItem.asButton(PreferenceItem.WEBSITE.getId(), C2888R.drawable.msg_language, LocaleController.getString(C2888R.string.Website), "exteraGram.app").showDivider(false).setSearchable(this).setLinkAlias("website", this));
        arrayList.add(UItem.asShadow());
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    protected void onClick(UItem uItem, View view, int i, float f, float f2) {
        int i2 = uItem.f2105id;
        if (i2 <= 0 || i2 > PreferenceItem.values().length) {
            return;
        }
        switch (PreferenceItem.values()[uItem.f2105id - 1]) {
            case HEADER_CELL:
                if (!BuildVars.PM_BUILD) {
                    ((LaunchActivity) getParentActivity()).checkAppUpdate(true);
                }
                break;
            case GENERAL_CATEGORY:
                presentFragment(new GeneralPreferencesActivity());
                break;
            case APPEARANCE_CATEGORY:
                presentFragment(new AppearancePreferencesActivity());
                break;
            case CHATS_CATEGORY:
                presentFragment(new ChatsPreferencesActivity());
                break;
            case PLUGINS_CATEGORY:
                presentFragment(new PluginsActivity());
                break;
            case OTHER_CATEGORY:
                presentFragment(new OtherPreferencesActivity());
                break;
            case CHANNEL:
                getMessagesController().openByUserName("exteraGram", this, 1);
                break;
            case CHAT:
                getMessagesController().openByUserName("exteraChat", this, 1);
                break;
            case CROWDIN:
                Browser.openUrl(getParentActivity(), "https://crowdin.com/project/exteralocales");
                break;
            case WEBSITE:
                Browser.openUrl(getParentActivity(), "https://exteraGram.app");
                break;
        }
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    protected boolean onLongClick(UItem uItem, View view, int i, float f, float f2) {
        int i2 = uItem.f2105id;
        if (i2 <= 0 || i2 > PreferenceItem.values().length) {
            return false;
        }
        if (PreferenceItem.values()[uItem.f2105id - 1] == PreferenceItem.HEADER_CELL) {
            SharedPreferences.Editor editor = ExteraConfig.editor;
            boolean z = !ExteraConfig.useSystemIconShape;
            ExteraConfig.useSystemIconShape = z;
            editor.putBoolean("useSystemIconShape", z).apply();
            view.performHapticFeedback(VibratorUtils.getType(3), 1);
            view.invalidate();
            return true;
        }
        return super.onLongClick(uItem, view, i, f, f2);
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity, org.telegram.p029ui.ActionBar.BaseFragment
    public void onInsets(int i, int i2, int i3, int i4) {
        super.onInsets(i, i2, i3, i4);
        this.listView.setPadding(0, i2 + AndroidUtilities.m1124dp(12.0f), 0, i4);
    }
}
