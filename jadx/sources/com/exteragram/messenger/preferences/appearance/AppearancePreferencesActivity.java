package com.exteragram.messenger.preferences.appearance;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Parcelable;
import android.view.View;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.icons.p012ui.IconPacksActivity;
import com.exteragram.messenger.pillstack.p014ui.PillStackPreferencesActivity;
import com.exteragram.messenger.preferences.BasePreferencesActivity;
import com.exteragram.messenger.preferences.appearance.components.AvatarCornersPreviewCell;
import com.exteragram.messenger.preferences.appearance.components.ChatListPreviewCell;
import com.exteragram.messenger.preferences.appearance.components.FabShapeCell;
import com.exteragram.messenger.preferences.appearance.components.FilterTabsPreviewCell;
import com.exteragram.messenger.utils.network.RemoteUtils;
import com.exteragram.messenger.utils.p017ui.PopupUtils;
import com.google.android.exoplayer2.util.Consumer;
import java.util.ArrayList;
import java.util.Locale;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.p029ui.ActionBar.ActionBar;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Cells.TextCheckCell2;
import org.telegram.p029ui.Components.UItem;
import org.telegram.p029ui.Components.UniversalAdapter;

/* JADX INFO: loaded from: classes.dex */
public class AppearancePreferencesActivity extends BasePreferencesActivity {
    private AvatarCornersPreviewCell avatarCornersPreviewCell;
    private ChatListPreviewCell chatListPreviewCell;
    private FabShapeCell fabShapeCell;
    private FilterTabsPreviewCell filterTabsPreviewCell;
    private boolean md3StylesExpanded;
    private Parcelable recyclerViewState;
    private CharSequence[] tabIcons;
    private CharSequence[] titles;

    public enum AppearanceItem {
        AVATAR_CORNERS_PREVIEW,
        SINGLE_CORNER_RADIUS,
        CHAT_LIST_PREVIEW,
        FORCE_SNOW,
        HIDE_ACTION_BAR_STATUS,
        CENTER_TITLE,
        HIDE_STORIES,
        HIDE_FLOATING_BUTTON,
        SENDER_MINI_AVATARS,
        ACTION_BAR_TITLE,
        PILL_STACK,
        FOLDERS_PREVIEW,
        TAB_TITLE,
        TAB_COUNTER,
        HIDE_ALL_CHATS,
        APP_NAVIGATION_SETTINGS,
        ICON_PACKS,
        FAB_SHAPE,
        SEPARATED_HEADERS,
        DISABLE_DIVIDERS,
        TABLET_MODE,
        MD3_STYLES,
        NEW_LOADING_STYLE,
        NEW_SLIDER_STYLE,
        NEW_SWITCH_STYLE,
        USE_SYSTEM_FONTS,
        USE_SYSTEM_EMOJI,
        GOOEY_AVATAR_ANIMATION,
        CUSTOM_THEMES,
        PREDICTIVE_BACK_ANIMATION,
        SPRING_ANIMATIONS,
        GLARE_ON_ELEMENTS,
        FORCE_BLUR;

        public int getId() {
            return ordinal() + 1;
        }
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    protected void initializeOptionStrings() {
        this.titles = new CharSequence[]{LocaleController.getString(C2888R.string.exteraAppName), LocaleController.getString(C2888R.string.ActionBarTitleUsername), LocaleController.getString(C2888R.string.ActionBarTitleName), LocaleController.getString(C2888R.string.FilterChats)};
        this.tabIcons = new CharSequence[]{LocaleController.getString(C2888R.string.TabTitleStyleTextWithIcons), LocaleController.getString(C2888R.string.TabTitleStyleTextOnly), LocaleController.getString(C2888R.string.TabTitleStyleIconsOnly)};
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity, org.telegram.p029ui.ActionBar.BaseFragment
    public View createView(Context context) {
        this.avatarCornersPreviewCell = new AvatarCornersPreviewCell(context, this, this.resourceProvider, RemoteUtils.getIntConfigValue("preferences_preview_style", 0).intValue());
        this.chatListPreviewCell = new ChatListPreviewCell(context);
        this.filterTabsPreviewCell = new FilterTabsPreviewCell(context);
        this.fabShapeCell = new FabShapeCell(context) { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity.1
            @Override // com.exteragram.messenger.preferences.appearance.components.FabShapeCell
            protected void rebuildFragments() {
                ((BaseFragment) AppearancePreferencesActivity.this).parentLayout.rebuildFragments(0);
            }
        };
        return super.createView(context);
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public String getTitle() {
        return LocaleController.getString(C2888R.string.Appearance);
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    protected void fillItems(ArrayList arrayList, UniversalAdapter universalAdapter) {
        arrayList.add(UItem.asCustom(AppearanceItem.AVATAR_CORNERS_PREVIEW.getId(), this.avatarCornersPreviewCell).setLinkAlias("avatarCorners", this));
        arrayList.add(UItem.asCheck(AppearanceItem.SINGLE_CORNER_RADIUS.getId(), LocaleController.getString(C2888R.string.SingleCornerRadius)).setChecked(ExteraConfig.singleCornerRadius).setSearchable(this).setLinkAlias("singleCornerRadius", this));
        arrayList.add(UItem.asShadow(LocaleController.getString(C2888R.string.SingleCornerRadiusInfo)));
        arrayList.add(UItem.asHeader(LocaleController.getString(C2888R.string.ListOfChats)));
        arrayList.add(UItem.asCustom(AppearanceItem.CHAT_LIST_PREVIEW.getId(), this.chatListPreviewCell));
        arrayList.add(UItem.asCheck(AppearanceItem.FORCE_SNOW.getId(), LocaleController.getString(C2888R.string.ForceSnow), LocaleController.getString(C2888R.string.ForceSnowInfo), true).setChecked(ExteraConfig.forceSnow).setSearchable(this).setLinkAlias("forceSnow", this));
        if (getUserConfig().isPremium()) {
            arrayList.add(UItem.asCheck(AppearanceItem.HIDE_ACTION_BAR_STATUS.getId(), LocaleController.getString(C2888R.string.HideActionBarStatus)).setChecked(ExteraConfig.hideActionBarStatus).setSearchable(this).setLinkAlias("hideActionBarStatus", this));
        }
        arrayList.add(UItem.asCheck(AppearanceItem.CENTER_TITLE.getId(), LocaleController.getString(C2888R.string.CenterTitle)).setChecked(ExteraConfig.centerTitle).setSearchable(this).setLinkAlias("centerTitle", this));
        arrayList.add(UItem.asCheck(AppearanceItem.HIDE_STORIES.getId(), LocaleController.getString(C2888R.string.HideStories)).setChecked(ExteraConfig.hideStories).setSearchable(this).setLinkAlias("hideStories", this));
        arrayList.add(UItem.asCheck(AppearanceItem.HIDE_FLOATING_BUTTON.getId(), LocaleController.getString(C2888R.string.HideFloatingButton)).setChecked(ExteraConfig.hideFloatingButton).setSearchable(this).setLinkAlias("hideFloatingButton", this));
        arrayList.add(UItem.asCheck(AppearanceItem.SENDER_MINI_AVATARS.getId(), LocaleController.getString(C2888R.string.SenderMiniAvatars)).setChecked(ExteraConfig.senderMiniAvatars).setSearchable(this).setLinkAlias("senderMiniAvatars", this));
        arrayList.add(UItem.asButton(AppearanceItem.ACTION_BAR_TITLE.getId(), LocaleController.getString(C2888R.string.ActionBarTitle), this.titles[ExteraConfig.titleText]).setSearchable(this).setLinkAlias("actionBarTitle", this));
        arrayList.add(UItem.asShadow(LocaleController.getString(C2888R.string.ListOfChatsInfo)));
        arrayList.add(UItem.asHeader(LocaleController.getString(C2888R.string.Filters)));
        arrayList.add(UItem.asCustom(AppearanceItem.FOLDERS_PREVIEW.getId(), this.filterTabsPreviewCell));
        arrayList.add(UItem.asButton(AppearanceItem.TAB_TITLE.getId(), LocaleController.getString(C2888R.string.TabTitleStyle), this.tabIcons[ExteraConfig.tabIcons]).setSearchable(this).setLinkAlias("tabTitleStyle", this));
        arrayList.add(UItem.asCheck(AppearanceItem.TAB_COUNTER.getId(), LocaleController.getString(C2888R.string.TabCounter)).setChecked(ExteraConfig.tabCounter).setSearchable(this).setLinkAlias("tabCounter", this));
        arrayList.add(UItem.asCheck(AppearanceItem.HIDE_ALL_CHATS.getId(), LocaleController.formatString(C2888R.string.HideAllChats, LocaleController.getString(C2888R.string.FilterAllChats))).setChecked(ExteraConfig.hideAllChats).setSearchable(this).setLinkAlias("hideAllChats", this));
        arrayList.add(UItem.asShadow(LocaleController.getString(C2888R.string.FoldersInfo)));
        arrayList.add(UItem.asButtonWithSubtext(AppearanceItem.APP_NAVIGATION_SETTINGS.getId(), C2888R.drawable.msg_newphone, LocaleController.getString(C2888R.string.AppNavigation), LocaleController.getString(C2888R.string.AppNavigationInfo), 64, 60).setSearchable(this).setLinkAlias("appNavigationSettings", this));
        arrayList.add(UItem.asButtonWithSubtext(AppearanceItem.ICON_PACKS.getId(), C2888R.drawable.msg_sticker, LocaleController.getString(C2888R.string.IconPacks), LocaleController.getString(C2888R.string.IconPacksInfo), 64, 60).setSearchable(this).setLinkAlias("iconPacks", this));
        arrayList.add(UItem.asButtonWithSubtext(AppearanceItem.PILL_STACK.getId(), C2888R.drawable.ic_ab_search, LocaleController.getString(C2888R.string.PillStackPills), LocaleController.getString(C2888R.string.PillStackPillsInfo), 64, 60).setSearchable(this).setLinkAlias("pillStack", this));
        arrayList.add(UItem.asShadow());
        arrayList.add(UItem.asHeader(LocaleController.getString(C2888R.string.Appearance)));
        arrayList.add(UItem.asCustom(AppearanceItem.FAB_SHAPE.getId(), this.fabShapeCell).setLinkAlias("fabShape", this));
        arrayList.add(UItem.asCheck(AppearanceItem.USE_SYSTEM_FONTS.getId(), LocaleController.getString(C2888R.string.UseSystemFonts)).setChecked(ExteraConfig.useSystemFonts).setSearchable(this).setLinkAlias("useSystemFonts", this));
        arrayList.add(UItem.asCheck(AppearanceItem.USE_SYSTEM_EMOJI.getId(), LocaleController.getString(C2888R.string.UseSystemEmoji)).setChecked(SharedConfig.useSystemEmoji).setSearchable(this).setLinkAlias("useSystemEmoji", this));
        arrayList.add(UItem.asExteraExpandableSwitch(AppearanceItem.MD3_STYLES.getId(), LocaleController.getString(C2888R.string.MaterialDesign3), String.format(Locale.US, "%d/%d", Integer.valueOf(getMD3StylesSelectedCount(false)), Integer.valueOf(getMD3StylesSelectedCount(true))), new View.OnClickListener() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda21
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.handleMD3StylesSwitchClick(view);
            }
        }).setChecked(getMD3StylesSelectedCount(false) > 0).setCollapsed(!this.md3StylesExpanded).setSearchable(this).setLinkAlias("md3Styles", this));
        if (this.md3StylesExpanded) {
            arrayList.add(UItem.asRoundCheckbox(AppearanceItem.NEW_LOADING_STYLE.getId(), LocaleController.getString(C2888R.string.NewLoadingStyle)).setChecked(ExteraConfig.newLoadingStyle).pad());
            arrayList.add(UItem.asRoundCheckbox(AppearanceItem.NEW_SLIDER_STYLE.getId(), LocaleController.getString(C2888R.string.NewSliderStyle)).setChecked(ExteraConfig.newSliderStyle).pad());
            arrayList.add(UItem.asRoundCheckbox(AppearanceItem.NEW_SWITCH_STYLE.getId(), LocaleController.getString(C2888R.string.NewSwitchStyle)).setChecked(ExteraConfig.newSwitchStyle).pad());
        }
        arrayList.add(UItem.asCheck(AppearanceItem.SEPARATED_HEADERS.getId(), LocaleController.getString(C2888R.string.SeparateHeaders)).setChecked(ExteraConfig.sectionsSeparatedHeaders).setSearchable(this).setLinkAlias("sectionsSeparatedHeaders", this));
        arrayList.add(UItem.asCheck(AppearanceItem.DISABLE_DIVIDERS.getId(), LocaleController.getString(C2888R.string.DisableDividers)).setChecked(ExteraConfig.disableDividers).setSearchable(this).setLinkAlias("disableDividers", this));
        arrayList.add(UItem.asCheck(AppearanceItem.GOOEY_AVATAR_ANIMATION.getId(), LocaleController.getString(C2888R.string.GooeyAvatarAnimation)).setChecked(ExteraConfig.gooeyAvatarAnimation).setSearchable(this).setLinkAlias("gooeyAvatarAnimation", this));
        arrayList.add(UItem.asCheck(AppearanceItem.CUSTOM_THEMES.getId(), LocaleController.getString(C2888R.string.CustomChatThemes)).setChecked(ExteraConfig.customThemes).setSearchable(this).setLinkAlias("customThemes", this));
        arrayList.add(UItem.asShadow(LocaleController.getString(C2888R.string.CustomChatThemesInfo)));
        arrayList.add(UItem.asHeader(LocaleController.getString(C2888R.string.BlurOptions)));
        arrayList.add(UItem.asCheck(AppearanceItem.GLARE_ON_ELEMENTS.getId(), LocaleController.getString(C2888R.string.GlareOnElements), LocaleController.getString(C2888R.string.GlareOnElementsInfo), true).setChecked(ExteraConfig.glareOnElements).setSearchable(this).setLinkAlias("glareOnElements", this));
        arrayList.add(UItem.asCheck(AppearanceItem.FORCE_BLUR.getId(), LocaleController.getString(C2888R.string.ForceBlur)).setChecked(ExteraConfig.forceBlur).setSearchable(this).setLinkAlias("forceBlur", this));
        arrayList.add(UItem.asShadow(LocaleController.getString(C2888R.string.ForceBlurInfo)));
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    protected void onClick(UItem uItem, View view, int i, float f, float f2) {
        int i2 = uItem.f2105id;
        if (i2 <= 0 || i2 > AppearanceItem.values().length) {
            return;
        }
        switch (AppearanceItem.values()[uItem.f2105id - 1].ordinal()) {
            case 1:
                toggleBooleanSettingAndRefresh("singleCornerRadius", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda0
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.singleCornerRadius = ((Boolean) obj).booleanValue();
                    }
                });
                this.parentLayout.rebuildFragments(0);
                break;
            case 3:
                toggleBooleanSettingAndRefresh("forceSnow", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda9
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.forceSnow = ((Boolean) obj).booleanValue();
                    }
                });
                this.chatListPreviewCell.invalidate();
                break;
            case 4:
                toggleBooleanSettingAndRefresh("hideActionBarStatus", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda14
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.hideActionBarStatus = ((Boolean) obj).booleanValue();
                    }
                });
                ChatListPreviewCell chatListPreviewCell = this.chatListPreviewCell;
                if (chatListPreviewCell != null) {
                    chatListPreviewCell.updateStatus(true);
                }
                this.parentLayout.rebuildFragments(0);
                break;
            case 5:
                toggleBooleanSettingAndRefresh("centerTitle", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda15
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.centerTitle = ((Boolean) obj).booleanValue();
                    }
                });
                ChatListPreviewCell chatListPreviewCell2 = this.chatListPreviewCell;
                if (chatListPreviewCell2 != null) {
                    chatListPreviewCell2.updateCentered(true);
                }
                ActionBar actionBar = this.actionBar;
                if (actionBar != null) {
                    actionBar.refreshTitlePosition(true);
                }
                this.parentLayout.rebuildFragments(0);
                break;
            case 6:
                toggleBooleanSettingAndRefresh("hideStories", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda13
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.hideStories = ((Boolean) obj).booleanValue();
                    }
                });
                getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesEnabledUpdate, new Object[0]);
                break;
            case 7:
                toggleBooleanSettingAndRefresh("hideFloatingButton", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda16
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.hideFloatingButton = ((Boolean) obj).booleanValue();
                    }
                });
                this.parentLayout.rebuildFragments(0);
                break;
            case 8:
                toggleBooleanSettingAndRefresh("senderMiniAvatars", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda17
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.senderMiniAvatars = ((Boolean) obj).booleanValue();
                    }
                });
                break;
            case 9:
                showListDialog(uItem, this.titles, LocaleController.getString(C2888R.string.ActionBarTitle), ExteraConfig.titleText, new PopupUtils.OnItemClickListener() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda11
                    @Override // com.exteragram.messenger.utils.ui.PopupUtils.OnItemClickListener
                    public final void onClick(int i3) {
                        this.f$0.lambda$onClick$1(i3);
                    }
                });
                break;
            case 10:
                presentFragment(new PillStackPreferencesActivity());
                break;
            case 12:
                showListDialog(uItem, this.tabIcons, LocaleController.getString(C2888R.string.TabTitleStyle), ExteraConfig.tabIcons, new PopupUtils.OnItemClickListener() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda18
                    @Override // com.exteragram.messenger.utils.ui.PopupUtils.OnItemClickListener
                    public final void onClick(int i3) {
                        this.f$0.lambda$onClick$7(i3);
                    }
                });
                break;
            case 13:
                toggleBooleanSettingAndRefresh("tabCounter", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda19
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.tabCounter = ((Boolean) obj).booleanValue();
                    }
                });
                handleTabCounterClick();
                break;
            case 14:
                toggleBooleanSettingAndRefresh("hideAllChats", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda20
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.hideAllChats = ((Boolean) obj).booleanValue();
                    }
                });
                handleHideAllChatsClick();
                break;
            case 15:
                presentFragment(new AppNavigationPreferencesActivity());
                break;
            case 16:
                presentFragment(new IconPacksActivity());
                break;
            case 18:
                toggleBooleanSettingAndRefresh("sectionsSeparatedHeaders", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda1
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.sectionsSeparatedHeaders = ((Boolean) obj).booleanValue();
                    }
                });
                this.parentLayout.rebuildFragments(0);
                break;
            case 19:
                toggleBooleanSettingAndRefresh("disableDividers", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda2
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.disableDividers = ((Boolean) obj).booleanValue();
                    }
                });
                Theme.applyCommonTheme();
                this.avatarCornersPreviewCell.invalidate();
                this.chatListPreviewCell.invalidate();
                this.fabShapeCell.invalidate();
                this.filterTabsPreviewCell.invalidate();
                this.parentLayout.rebuildFragments(0);
                break;
            case 21:
                boolean z = !this.md3StylesExpanded;
                this.md3StylesExpanded = z;
                uItem.setCollapsed(z);
                this.listView.adapter.update(true);
                break;
            case 22:
                toggleBooleanSettingAndRefresh("newLoadingStyle", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda5
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.newLoadingStyle = ((Boolean) obj).booleanValue();
                    }
                });
                break;
            case 23:
                toggleBooleanSettingAndRefresh("newSliderStyle", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda6
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        this.f$0.lambda$onClick$15((Boolean) obj);
                    }
                });
                break;
            case 24:
                toggleBooleanSettingAndRefresh("newSwitchStyle", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda4
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.newSwitchStyle = ((Boolean) obj).booleanValue();
                    }
                });
                break;
            case 25:
                toggleBooleanSettingAndRefresh("useSystemFonts", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda3
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.useSystemFonts = ((Boolean) obj).booleanValue();
                    }
                });
                handleUseSystemFontsClick();
                break;
            case 26:
                handleUseSystemEmojiClick(uItem);
                break;
            case 27:
                toggleBooleanSettingAndRefresh("gooeyAvatarAnimation", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda7
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.gooeyAvatarAnimation = ((Boolean) obj).booleanValue();
                    }
                });
                break;
            case 28:
                toggleBooleanSettingAndRefresh("customThemes", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda8
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.customThemes = ((Boolean) obj).booleanValue();
                    }
                });
                break;
            case 31:
                toggleBooleanSettingAndRefresh("glareOnElements", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda10
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.glareOnElements = ((Boolean) obj).booleanValue();
                    }
                });
                break;
            case 32:
                toggleBooleanSettingAndRefresh("forceBlur", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda12
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.forceBlur = ((Boolean) obj).booleanValue();
                    }
                });
                handleForceBlurChange();
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$1(int i) {
        ExteraConfig.titleText = i;
        changeIntSetting("titleText", i);
        handleActionBarTitleClick();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$7(int i) {
        ExteraConfig.tabIcons = i;
        changeIntSetting("tabIcons", i);
        handleTabTitleClick();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$15(Boolean bool) {
        ExteraConfig.newSliderStyle = bool.booleanValue();
        AvatarCornersPreviewCell avatarCornersPreviewCell = this.avatarCornersPreviewCell;
        if (avatarCornersPreviewCell != null) {
            avatarCornersPreviewCell.updateSliderStyle();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleMD3StylesSwitchClick(View view) {
        UItem uItemFindItemByItemId = this.listView.findItemByItemId(((TextCheckCell2) view).f1911id);
        boolean z = !uItemFindItemByItemId.checked;
        SharedPreferences.Editor editor = ExteraConfig.editor;
        ExteraConfig.newLoadingStyle = z;
        SharedPreferences.Editor editorPutBoolean = editor.putBoolean("newLoadingStyle", z);
        ExteraConfig.newSliderStyle = z;
        SharedPreferences.Editor editorPutBoolean2 = editorPutBoolean.putBoolean("newSliderStyle", z);
        ExteraConfig.newSwitchStyle = z;
        editorPutBoolean2.putBoolean("newSwitchStyle", z).apply();
        uItemFindItemByItemId.setChecked(z);
        this.listView.adapter.update(true);
        AvatarCornersPreviewCell avatarCornersPreviewCell = this.avatarCornersPreviewCell;
        if (avatarCornersPreviewCell != null) {
            avatarCornersPreviewCell.updateSliderStyle();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [boolean, int] */
    private int getMD3StylesSelectedCount(boolean z) {
        if (z) {
            return 3;
        }
        ?? r2 = ExteraConfig.newLoadingStyle;
        int i = r2;
        if (ExteraConfig.newSliderStyle) {
            i = r2 + 1;
        }
        return ExteraConfig.newSwitchStyle ? i + 1 : i;
    }

    private void handleActionBarTitleClick() {
        this.chatListPreviewCell.updateStatus(true);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.currentUserPremiumStatusChanged, new Object[0]);
    }

    private void handleTabTitleClick() {
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogFiltersUpdated, new Object[0]);
    }

    private void handleTabCounterClick() {
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogFiltersUpdated, new Object[0]);
    }

    private void handleHideAllChatsClick() {
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogFiltersUpdated, new Object[0]);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.mainUserInfoChanged, new Object[0]);
    }

    private void handleUseSystemFontsClick() {
        AndroidUtilities.clearTypefaceCache();
        rebuildListWithStateRestore();
    }

    private void rebuildListWithStateRestore() {
        if (this.listView.getLayoutManager() != null) {
            this.recyclerViewState = this.listView.getLayoutManager().onSaveInstanceState();
        }
        this.parentLayout.rebuildFragments(1);
        if (this.listView.getLayoutManager() != null) {
            this.listView.getLayoutManager().onRestoreInstanceState(this.recyclerViewState);
        }
    }

    private void handleForceBlurChange() {
        if (SharedConfig.chatBlurEnabled() || !ExteraConfig.forceBlur) {
            return;
        }
        SharedConfig.toggleChatBlur();
    }

    private void handleUseSystemEmojiClick(UItem uItem) {
        SharedConfig.toggleUseSystemEmoji();
        uItem.setChecked(!SharedConfig.useSystemEmoji);
        this.parentLayout.rebuildFragments(0);
        this.listView.adapter.update(true);
    }
}
