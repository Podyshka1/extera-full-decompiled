package com.exteragram.messenger.preferences.appearance;

import android.content.Context;
import android.os.Parcelable;
import android.view.View;
import com.exteragram.messenger.DividerStyle;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.GlassOutlineStyle;
import com.exteragram.messenger.TabIconsMode;
import com.exteragram.messenger.icons.ui.IconPacksActivity;
import com.exteragram.messenger.pillstack.ui.PillStackPreferencesActivity;
import com.exteragram.messenger.preferences.BasePreferencesActivity;
import com.exteragram.messenger.preferences.SwitchGroup;
import com.exteragram.messenger.preferences.appearance.components.AvatarCornersPreviewCell;
import com.exteragram.messenger.preferences.appearance.components.ChatListPreviewCell;
import com.exteragram.messenger.preferences.appearance.components.FabShapeCell;
import com.exteragram.messenger.preferences.appearance.components.FilterTabsPreviewCell;
import com.exteragram.messenger.preferences.utils.SettingsRegistry;
import com.exteragram.messenger.utils.network.RemoteUtils;
import com.exteragram.messenger.utils.text.LocaleUtils;
import com.exteragram.messenger.utils.ui.PopupUtils;
import com.google.android.exoplayer2.util.Consumer;
import java.util.ArrayList;
import java.util.function.BooleanSupplier;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2573R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.Utilities;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;
import org.telegram.ui.Components.UniversalRecyclerView;

/* JADX INFO: loaded from: classes4.dex */
public class AppearancePreferencesActivity extends BasePreferencesActivity {
    private AvatarCornersPreviewCell avatarCornersPreviewCell;
    private ChatListPreviewCell chatListPreviewCell;
    private CharSequence[] dividerStyles;
    private FabShapeCell fabShapeCell;
    private FilterTabsPreviewCell filterTabsPreviewCell;
    private CharSequence[] glassOutlineStyles;
    private final SwitchGroup md3Styles = SwitchGroup.of(this, AppearanceItem.MD3_STYLES.getId(), C2573R.string.MaterialDesign3).searchable().linkAlias("md3Styles").onChanged(new Runnable() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda0
        @Override // java.lang.Runnable
        public final void run() {
            this.f$0.updateMD3Styles();
        }
    }).add(AppearanceItem.NEW_LOADING_STYLE.getId(), C2573R.string.NewLoadingStyle, new BooleanSupplier() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda2
        @Override // java.util.function.BooleanSupplier
        public final boolean getAsBoolean() {
            return ExteraConfig.getNewLoadingStyle();
        }
    }, new SwitchGroup.Setter() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda3
        @Override // com.exteragram.messenger.preferences.SwitchGroup.Setter
        public final void set(boolean z) {
            ExteraConfig.setNewLoadingStyle(z);
        }
    }).add(AppearanceItem.NEW_SLIDER_STYLE.getId(), C2573R.string.NewSliderStyle, new BooleanSupplier() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda4
        @Override // java.util.function.BooleanSupplier
        public final boolean getAsBoolean() {
            return ExteraConfig.getNewSliderStyle();
        }
    }, new SwitchGroup.Setter() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda5
        @Override // com.exteragram.messenger.preferences.SwitchGroup.Setter
        public final void set(boolean z) {
            ExteraConfig.setNewSliderStyle(z);
        }
    }).add(AppearanceItem.NEW_SWITCH_STYLE.getId(), C2573R.string.NewSwitchStyle, new BooleanSupplier() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda6
        @Override // java.util.function.BooleanSupplier
        public final boolean getAsBoolean() {
            return ExteraConfig.getNewSwitchStyle();
        }
    }, new SwitchGroup.Setter() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda7
        @Override // com.exteragram.messenger.preferences.SwitchGroup.Setter
        public final void set(boolean z) {
            ExteraConfig.setNewSwitchStyle(z);
        }
    }).add(AppearanceItem.NEW_CHAT_HEADER_STYLE.getId(), C2573R.string.ChatHeader, new BooleanSupplier() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda8
        @Override // java.util.function.BooleanSupplier
        public final boolean getAsBoolean() {
            return ExteraConfig.getNewChatHeaderStyle();
        }
    }, new SwitchGroup.Setter() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda9
        @Override // com.exteragram.messenger.preferences.SwitchGroup.Setter
        public final void set(boolean z) {
            ExteraConfig.setNewChatHeaderStyle(z);
        }
    }).markNew("Appearance-M3Styles-ChatHeader").add(AppearanceItem.NEW_NAVIGATION_BAR_STYLE.getId(), C2573R.string.BottomNavigationBarMode, new BooleanSupplier() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda10
        @Override // java.util.function.BooleanSupplier
        public final boolean getAsBoolean() {
            return ExteraConfig.getNewNavigationBarStyle();
        }
    }, new SwitchGroup.Setter() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda1
        @Override // com.exteragram.messenger.preferences.SwitchGroup.Setter
        public final void set(boolean z) {
            ExteraConfig.setNewNavigationBarStyle(z);
        }
    }).markNew("Appearance-M3Styles-NavigationBar");
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
        HIDE_DIALOGS_SEARCH_BAR,
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
        SECTION_RADIUS,
        SEPARATED_HEADERS,
        DIVIDER_STYLE,
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
        GLASS_OUTLINE_STYLE,
        FORCE_BLUR,
        GLASS_MESSAGE_MENU,
        NEW_CHAT_HEADER_STYLE,
        NEW_NAVIGATION_BAR_STYLE;

        public int getId() {
            return ordinal() + 1;
        }
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public void initializeOptionStrings() {
        this.titles = new CharSequence[]{LocaleController.getString(C2573R.string.exteraAppName), LocaleController.getString(C2573R.string.ActionBarTitleUsername), LocaleController.getString(C2573R.string.ActionBarTitleName), LocaleController.getString(C2573R.string.FilterChats)};
        this.tabIcons = new CharSequence[]{LocaleController.getString(C2573R.string.TabTitleStyleTextWithIcons), LocaleController.getString(C2573R.string.TabTitleStyleTextOnly), LocaleController.getString(C2573R.string.TabTitleStyleIconsOnly)};
        this.dividerStyles = new CharSequence[]{LocaleController.getString(C2573R.string.DividerStyleHidden), LocaleController.getString(C2573R.string.DividerStyleLine), LocaleController.getString(C2573R.string.DividerStyleSegments)};
        this.glassOutlineStyles = new CharSequence[]{LocaleController.getString(C2573R.string.GlassOutlineGlare), LocaleController.getString(C2573R.string.GlassOutlineSolid), LocaleController.getString(C2573R.string.GlassOutlineHidden)};
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity, org.telegram.ui.ActionBar.BaseFragment
    public View createView(Context context) {
        this.avatarCornersPreviewCell = new AvatarCornersPreviewCell(context, this, this.resourceProvider, RemoteUtils.getIntConfigValue("preferences_preview_style", 0).intValue());
        this.chatListPreviewCell = new ChatListPreviewCell(context);
        this.filterTabsPreviewCell = new FilterTabsPreviewCell(context);
        this.fabShapeCell = new FabShapeCell(context) { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity.1
            @Override // com.exteragram.messenger.preferences.appearance.components.FabShapeCell
            public void rebuildFragments() {
                ((BaseFragment) AppearancePreferencesActivity.this).parentLayout.rebuildFragments(0);
            }
        };
        return super.createView(context);
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public String getTitle() {
        return LocaleController.getString(C2573R.string.Appearance);
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public void fillItems(ArrayList<UItem> arrayList, UniversalAdapter universalAdapter) {
        arrayList.add(UItem.asCustom(AppearanceItem.AVATAR_CORNERS_PREVIEW.getId(), this.avatarCornersPreviewCell).setLinkAlias("avatarCorners", this));
        arrayList.add(UItem.asCheck(AppearanceItem.SINGLE_CORNER_RADIUS.getId(), LocaleController.getString(C2573R.string.SingleCornerRadius)).setChecked(ExteraConfig.getSingleCornerRadius()).setSearchable(this).setLinkAlias("singleCornerRadius", this));
        arrayList.add(UItem.asShadow(LocaleController.getString(C2573R.string.SingleCornerRadiusInfo)));
        arrayList.add(UItem.asHeader(LocaleController.getString(C2573R.string.ListOfChats)));
        arrayList.add(UItem.asCustom(AppearanceItem.CHAT_LIST_PREVIEW.getId(), this.chatListPreviewCell));
        arrayList.add(UItem.asCheck(AppearanceItem.FORCE_SNOW.getId(), LocaleController.getString(C2573R.string.ForceSnow), LocaleController.getString(C2573R.string.ForceSnowInfo), true).setChecked(ExteraConfig.getForceSnow()).setSearchable(this).setLinkAlias("forceSnow", this));
        if (getUserConfig().isPremium()) {
            arrayList.add(UItem.asCheck(AppearanceItem.HIDE_ACTION_BAR_STATUS.getId(), LocaleController.getString(C2573R.string.HideActionBarStatus)).setChecked(ExteraConfig.getHideActionBarStatus()).setSearchable(this).setLinkAlias("hideActionBarStatus", this));
        }
        arrayList.add(UItem.asCheck(AppearanceItem.CENTER_TITLE.getId(), LocaleController.getString(C2573R.string.CenterTitle)).setChecked(ExteraConfig.getCenterTitle()).setSearchable(this).setLinkAlias("centerTitle", this));
        arrayList.add(UItem.asCheck(AppearanceItem.HIDE_STORIES.getId(), LocaleController.getString(C2573R.string.HideStories)).setChecked(ExteraConfig.getHideStories()).setSearchable(this).setLinkAlias("hideStories", this));
        arrayList.add(UItem.asCheck(AppearanceItem.HIDE_FLOATING_BUTTON.getId(), LocaleController.getString(C2573R.string.HideFloatingButton)).setChecked(ExteraConfig.getHideFloatingButton()).setSearchable(this).setLinkAlias("hideFloatingButton", this));
        arrayList.add(UItem.asCheck(AppearanceItem.HIDE_DIALOGS_SEARCH_BAR.getId(), LocaleController.getString(C2573R.string.HideDialogsSearchBar)).setChecked(ExteraConfig.getHideDialogsSearchBar()).setSearchable(this).setLinkAlias("hideDialogsSearchBar", this));
        arrayList.add(UItem.asCheck(AppearanceItem.SENDER_MINI_AVATARS.getId(), LocaleController.getString(C2573R.string.SenderMiniAvatars)).setChecked(ExteraConfig.getSenderMiniAvatars()).setSearchable(this).setLinkAlias("senderMiniAvatars", this));
        arrayList.add(UItem.asButton(AppearanceItem.ACTION_BAR_TITLE.getId(), LocaleController.getString(C2573R.string.ActionBarTitle), this.titles[ExteraConfig.getTitleText()]).setSearchable(this).setLinkAlias("actionBarTitle", this));
        arrayList.add(UItem.asShadow(LocaleController.getString(C2573R.string.ListOfChatsInfo)));
        arrayList.add(UItem.asHeader(LocaleController.getString(C2573R.string.Filters)));
        arrayList.add(UItem.asCustom(AppearanceItem.FOLDERS_PREVIEW.getId(), this.filterTabsPreviewCell));
        arrayList.add(UItem.asButton(AppearanceItem.TAB_TITLE.getId(), LocaleController.getString(C2573R.string.TabTitleStyle), this.tabIcons[ExteraConfig.getTabIcons().ordinal()]).setSearchable(this).setLinkAlias("tabTitleStyle", this));
        arrayList.add(UItem.asCheck(AppearanceItem.TAB_COUNTER.getId(), LocaleController.getString(C2573R.string.TabCounter)).setChecked(ExteraConfig.getTabCounter()).setSearchable(this).setLinkAlias("tabCounter", this));
        arrayList.add(UItem.asCheck(AppearanceItem.HIDE_ALL_CHATS.getId(), LocaleController.formatString(C2573R.string.HideAllChats, LocaleController.getString(C2573R.string.FilterAllChats))).setChecked(ExteraConfig.getHideAllChats()).setSearchable(this).setLinkAlias("hideAllChats", this));
        arrayList.add(UItem.asShadow(LocaleController.getString(C2573R.string.FoldersInfo)));
        arrayList.add(UItem.asButtonWithSubtext(AppearanceItem.APP_NAVIGATION_SETTINGS.getId(), C2573R.drawable.msg_newphone, LocaleController.getString(C2573R.string.AppNavigation), LocaleController.getString(C2573R.string.AppNavigationInfo), 64, 60).setSearchable(this).setLinkAlias("appNavigationSettings", this));
        arrayList.add(UItem.asButtonWithSubtext(AppearanceItem.ICON_PACKS.getId(), C2573R.drawable.msg_sticker, LocaleController.getString(C2573R.string.IconPacks), LocaleController.getString(C2573R.string.IconPacksInfo), 64, 60).setSearchable(this).setLinkAlias("iconPacks", this));
        arrayList.add(UItem.asButtonWithSubtext(AppearanceItem.PILL_STACK.getId(), C2573R.drawable.outline_header_search, LocaleController.getString(C2573R.string.PillStackPills), LocaleController.getString(C2573R.string.PillStackPillsInfo), 64, 60).setSearchable(this).setLinkAlias("pillStack", this));
        arrayList.add(UItem.asShadow());
        arrayList.add(UItem.asHeader(LocaleController.getString(C2573R.string.Appearance)));
        arrayList.add(UItem.asCustom(AppearanceItem.FAB_SHAPE.getId(), this.fabShapeCell).setLinkAlias("fabShape", this));
        arrayList.add(UItem.asCheck(AppearanceItem.USE_SYSTEM_FONTS.getId(), LocaleController.getString(C2573R.string.UseSystemFonts)).setChecked(ExteraConfig.getUseSystemFonts()).setSearchable(this).setLinkAlias("useSystemFonts", this));
        arrayList.add(UItem.asCheck(AppearanceItem.USE_SYSTEM_EMOJI.getId(), LocaleController.getString(C2573R.string.UseSystemEmoji)).setChecked(SharedConfig.useSystemEmoji).setSearchable(this).setLinkAlias("useSystemEmoji", this));
        this.md3Styles.fill(arrayList);
        arrayList.add(UItem.asCheck(AppearanceItem.GOOEY_AVATAR_ANIMATION.getId(), LocaleController.getString(C2573R.string.GooeyAvatarAnimation)).setChecked(ExteraConfig.getGooeyAvatarAnimation()).setSearchable(this).setLinkAlias("gooeyAvatarAnimation", this));
        arrayList.add(UItem.asCheck(AppearanceItem.CUSTOM_THEMES.getId(), LocaleController.getString(C2573R.string.CustomChatThemes)).setChecked(ExteraConfig.getCustomThemes()).setSearchable(this).setLinkAlias("customThemes", this));
        arrayList.add(UItem.asShadow(LocaleController.getString(C2573R.string.CustomChatThemesInfo)));
        arrayList.add(UItem.asHeader(SettingsRegistry.markAsNewFeature("Appearance-Sections") ? LocaleUtils.applyNewSpan(LocaleController.getString(C2573R.string.Sections)) : LocaleController.getString(C2573R.string.Sections)));
        arrayList.add(createSectionRadiusSliderItem().setSearchable(this).setLinkAlias("sectionRadius", this));
        arrayList.add(UItem.asCheck(AppearanceItem.SEPARATED_HEADERS.getId(), LocaleController.getString(C2573R.string.SeparateHeaders)).setChecked(ExteraConfig.getSectionsSeparatedHeaders()).setEnabled(!(ExteraConfig.getDividerStyle() == DividerStyle.SEGMENTS)).setSearchable(this).setLinkAlias("sectionsSeparatedHeaders", this));
        arrayList.add(UItem.asButton(AppearanceItem.DIVIDER_STYLE.getId(), LocaleController.getString(C2573R.string.DividerStyle), this.dividerStyles[ExteraConfig.getDividerStyle().ordinal()]).setSearchable(this).setLinkAlias("dividerStyle", this));
        arrayList.add(UItem.asShadow());
        arrayList.add(UItem.asHeader(LocaleController.getString(C2573R.string.BlurOptions)));
        arrayList.add(UItem.asButton(AppearanceItem.GLASS_OUTLINE_STYLE.getId(), LocaleController.getString(C2573R.string.GlassOutlineStyle), this.glassOutlineStyles[ExteraConfig.getGlassOutlineStyle().ordinal()]).setSearchable(this).setLinkAlias("glassOutlineStyle", this));
        arrayList.add(UItem.asCheck(AppearanceItem.GLASS_MESSAGE_MENU.getId(), LocaleController.getString(C2573R.string.GlassMessageMenu), LocaleController.getString(C2573R.string.GlassMessageMenuInfo), true).setChecked(ExteraConfig.getGlassMessageMenu()).setSearchable(this).setLinkAlias("glassMessageMenu", this));
        arrayList.add(UItem.asCheck(AppearanceItem.FORCE_BLUR.getId(), LocaleController.getString(C2573R.string.ForceBlur)).setChecked(ExteraConfig.getForceBlur()).setSearchable(this).setLinkAlias("forceBlur", this));
        arrayList.add(UItem.asShadow(LocaleController.getString(C2573R.string.ForceBlurInfo)));
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public void onClick(UItem uItem, View view, int i, float f, float f2) {
        int i2 = uItem.id;
        if (i2 <= 0 || i2 > AppearanceItem.values().length) {
            return;
        }
        switch (C11622.f198x6ee27ce4[AppearanceItem.values()[uItem.id - 1].ordinal()]) {
            case 1:
                toggleBooleanSettingAndRefresh(uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda11
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setSingleCornerRadius(((Boolean) obj).booleanValue());
                    }
                });
                this.parentLayout.rebuildFragments(0);
                break;
            case 2:
                showListDialog(uItem, this.titles, LocaleController.getString(C2573R.string.ActionBarTitle), ExteraConfig.getTitleText(), new PopupUtils.OnItemClickListener() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda22
                    @Override // com.exteragram.messenger.utils.ui.PopupUtils.OnItemClickListener
                    public final void onClick(int i3) {
                        this.f$0.lambda$onClick$0(i3);
                    }
                });
                break;
            case 3:
                presentFragment(new PillStackPreferencesActivity());
                break;
            case 4:
                toggleBooleanSettingAndRefresh(uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda23
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setHideStories(((Boolean) obj).booleanValue());
                    }
                });
                getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesEnabledUpdate, new Object[0]);
                break;
            case 5:
                toggleBooleanSettingAndRefresh(uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda24
                    @Override // com.google.android.exoplayer2.util.Consumer
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
                toggleBooleanSettingAndRefresh(uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda25
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setCenterTitle(((Boolean) obj).booleanValue());
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
            case 7:
                toggleBooleanSettingAndRefresh(uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda26
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setHideFloatingButton(((Boolean) obj).booleanValue());
                    }
                });
                this.parentLayout.rebuildFragments(0);
                break;
            case 8:
                toggleBooleanSettingAndRefresh(uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda27
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setHideDialogsSearchBar(((Boolean) obj).booleanValue());
                    }
                });
                this.parentLayout.rebuildFragments(0);
                break;
            case 9:
                toggleBooleanSettingAndRefresh(uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda28
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setSenderMiniAvatars(((Boolean) obj).booleanValue());
                    }
                });
                break;
            case 10:
                showListDialog(uItem, this.tabIcons, LocaleController.getString(C2573R.string.TabTitleStyle), ExteraConfig.getTabIcons().ordinal(), new PopupUtils.OnItemClickListener() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda29
                    @Override // com.exteragram.messenger.utils.ui.PopupUtils.OnItemClickListener
                    public final void onClick(int i3) {
                        this.f$0.lambda$onClick$1(i3);
                    }
                });
                break;
            case 11:
                toggleBooleanSettingAndRefresh(uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda30
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setTabCounter(((Boolean) obj).booleanValue());
                    }
                });
                handleTabCounterClick();
                break;
            case 12:
                toggleBooleanSettingAndRefresh(uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda12
                    @Override // com.google.android.exoplayer2.util.Consumer
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
                presentFragment(new IconPacksActivity());
                break;
            case 15:
                if (ExteraConfig.getDividerStyle() != DividerStyle.SEGMENTS) {
                    toggleBooleanSettingAndRefresh(uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda13
                        @Override // com.google.android.exoplayer2.util.Consumer
                        public final void accept(Object obj) {
                            ExteraConfig.setSectionsSeparatedHeaders(((Boolean) obj).booleanValue());
                        }
                    });
                    this.listView.invalidateItemDecorations();
                    break;
                }
                break;
            case 16:
                showListDialog(uItem, this.dividerStyles, LocaleController.getString(C2573R.string.DividerStyle), ExteraConfig.getDividerStyle().ordinal(), new PopupUtils.OnItemClickListener() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda14
                    @Override // com.exteragram.messenger.utils.ui.PopupUtils.OnItemClickListener
                    public final void onClick(int i3) {
                        this.f$0.lambda$onClick$2(i3);
                    }
                });
                break;
            case 17:
                toggleBooleanSettingAndRefresh(uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda15
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setUseSystemFonts(((Boolean) obj).booleanValue());
                    }
                });
                handleUseSystemFontsClick();
                break;
            case 18:
                handleUseSystemEmojiClick(uItem);
                break;
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
                this.md3Styles.onClick(uItem);
                break;
            case 25:
                toggleBooleanSettingAndRefresh(uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda16
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setGooeyAvatarAnimation(((Boolean) obj).booleanValue());
                    }
                });
                break;
            case 26:
                toggleBooleanSettingAndRefresh(uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda17
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setCustomThemes(((Boolean) obj).booleanValue());
                    }
                });
                break;
            case 27:
                toggleBooleanSettingAndRefresh(uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda18
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setForceSnow(((Boolean) obj).booleanValue());
                    }
                });
                this.chatListPreviewCell.invalidate();
                break;
            case 28:
                showListDialog(uItem, this.glassOutlineStyles, LocaleController.getString(C2573R.string.GlassOutlineStyle), ExteraConfig.getGlassOutlineStyle().ordinal(), new PopupUtils.OnItemClickListener() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda19
                    @Override // com.exteragram.messenger.utils.ui.PopupUtils.OnItemClickListener
                    public final void onClick(int i3) {
                        this.f$0.lambda$onClick$3(i3);
                    }
                });
                break;
            case 29:
                toggleBooleanSettingAndRefresh(uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda20
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setForceBlur(((Boolean) obj).booleanValue());
                    }
                });
                handleForceBlurChange();
                break;
            case 30:
                toggleBooleanSettingAndRefresh(uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda21
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setGlassMessageMenu(((Boolean) obj).booleanValue());
                    }
                });
                handleGlassMessageMenuChange();
                break;
        }
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$2 */
    public static /* synthetic */ class C11622 {

        /* JADX INFO: renamed from: $SwitchMap$com$exteragram$messenger$preferences$appearance$AppearancePreferencesActivity$AppearanceItem */
        static final /* synthetic */ int[] f198x6ee27ce4;

        static {
            int[] iArr = new int[AppearanceItem.values().length];
            f198x6ee27ce4 = iArr;
            try {
                iArr[AppearanceItem.SINGLE_CORNER_RADIUS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f198x6ee27ce4[AppearanceItem.ACTION_BAR_TITLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f198x6ee27ce4[AppearanceItem.PILL_STACK.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f198x6ee27ce4[AppearanceItem.HIDE_STORIES.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f198x6ee27ce4[AppearanceItem.HIDE_ACTION_BAR_STATUS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f198x6ee27ce4[AppearanceItem.CENTER_TITLE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f198x6ee27ce4[AppearanceItem.HIDE_FLOATING_BUTTON.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f198x6ee27ce4[AppearanceItem.HIDE_DIALOGS_SEARCH_BAR.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f198x6ee27ce4[AppearanceItem.SENDER_MINI_AVATARS.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f198x6ee27ce4[AppearanceItem.TAB_TITLE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f198x6ee27ce4[AppearanceItem.TAB_COUNTER.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f198x6ee27ce4[AppearanceItem.HIDE_ALL_CHATS.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f198x6ee27ce4[AppearanceItem.APP_NAVIGATION_SETTINGS.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f198x6ee27ce4[AppearanceItem.ICON_PACKS.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f198x6ee27ce4[AppearanceItem.SEPARATED_HEADERS.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f198x6ee27ce4[AppearanceItem.DIVIDER_STYLE.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f198x6ee27ce4[AppearanceItem.USE_SYSTEM_FONTS.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f198x6ee27ce4[AppearanceItem.USE_SYSTEM_EMOJI.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f198x6ee27ce4[AppearanceItem.MD3_STYLES.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f198x6ee27ce4[AppearanceItem.NEW_LOADING_STYLE.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f198x6ee27ce4[AppearanceItem.NEW_SLIDER_STYLE.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f198x6ee27ce4[AppearanceItem.NEW_SWITCH_STYLE.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                f198x6ee27ce4[AppearanceItem.NEW_CHAT_HEADER_STYLE.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                f198x6ee27ce4[AppearanceItem.NEW_NAVIGATION_BAR_STYLE.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                f198x6ee27ce4[AppearanceItem.GOOEY_AVATAR_ANIMATION.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                f198x6ee27ce4[AppearanceItem.CUSTOM_THEMES.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                f198x6ee27ce4[AppearanceItem.FORCE_SNOW.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                f198x6ee27ce4[AppearanceItem.GLASS_OUTLINE_STYLE.ordinal()] = 28;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                f198x6ee27ce4[AppearanceItem.FORCE_BLUR.ordinal()] = 29;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                f198x6ee27ce4[AppearanceItem.GLASS_MESSAGE_MENU.ordinal()] = 30;
            } catch (NoSuchFieldError unused30) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$0(int i) {
        ExteraConfig.setTitleText(i);
        handleActionBarTitleClick();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$1(int i) {
        ExteraConfig.setTabIcons(TabIconsMode.getEntries().get(i));
        handleTabTitleClick();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$2(int i) {
        DividerStyle dividerStyle = DividerStyle.getEntries().get(i);
        ExteraConfig.setDividerStyle(dividerStyle);
        if (dividerStyle == DividerStyle.SEGMENTS) {
            ExteraConfig.setSectionsSeparatedHeaders(true);
        }
        handleDividerStyleChange();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$3(int i) {
        ExteraConfig.setGlassOutlineStyle(GlassOutlineStyle.getEntries().get(i));
        this.parentLayout.rebuildFragments(0);
    }

    private UItem createSectionRadiusSliderItem() {
        UItem uItemAsIntSlideView = UItem.asIntSlideView(1, 0, ExteraConfig.getSectionRadiusDp(), 28, new Utilities.CallbackReturn() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda31
            @Override // org.telegram.messenger.Utilities.CallbackReturn
            public final Object run(Object obj) {
                return this.f$0.formatSectionRadius(((Integer) obj).intValue());
            }
        }, new Utilities.Callback() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda32
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$createSectionRadiusSliderItem$4((Integer) obj);
            }
        });
        uItemAsIntSlideView.id = AppearanceItem.SECTION_RADIUS.getId();
        uItemAsIntSlideView.text = LocaleController.getString(C2573R.string.Sections);
        return uItemAsIntSlideView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createSectionRadiusSliderItem$4(Integer num) {
        ExteraConfig.setSectionRadius(num.intValue());
        handleSectionRadiusChange();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public CharSequence formatSectionRadius(int i) {
        if (i == 0) {
            return LocaleController.getString(C2573R.string.BlurOff);
        }
        if (i == 28) {
            return LocaleController.getString(C2573R.string.PredictiveBackMax);
        }
        return i + " dp";
    }

    private void handleDividerStyleChange() {
        Theme.applyCommonTheme();
        this.listView.invalidate();
        this.listView.invalidateItemDecorations();
        this.avatarCornersPreviewCell.invalidate();
        this.chatListPreviewCell.invalidate();
        this.fabShapeCell.invalidate();
        this.filterTabsPreviewCell.invalidate();
        this.parentLayout.rebuildFragments(0);
    }

    private void handleSectionRadiusChange() {
        UniversalRecyclerView universalRecyclerView = this.listView;
        if (universalRecyclerView != null) {
            universalRecyclerView.setSections();
            this.listView.invalidate();
            this.listView.invalidateItemDecorations();
        }
        this.parentLayout.rebuildFragments(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateMD3Styles() {
        AvatarCornersPreviewCell avatarCornersPreviewCell = this.avatarCornersPreviewCell;
        if (avatarCornersPreviewCell != null) {
            avatarCornersPreviewCell.updateSliderStyle();
        }
        this.parentLayout.rebuildFragments(0);
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
        if (SharedConfig.chatBlurEnabled() || !ExteraConfig.getForceBlur()) {
            return;
        }
        SharedConfig.toggleChatBlur();
    }

    private void handleGlassMessageMenuChange() {
        if (!ExteraConfig.getGlassMessageMenu() || SharedConfig.chatBlurEnabled()) {
            return;
        }
        BulletinFactory.of(this).createSimpleBulletin(C2573R.raw.info, LocaleController.getString(C2573R.string.GlassMessageMenuBlurOff), LocaleController.getString(C2573R.string.Enable), new Runnable() { // from class: com.exteragram.messenger.preferences.appearance.AppearancePreferencesActivity$$ExternalSyntheticLambda33
            @Override // java.lang.Runnable
            public final void run() {
                SharedConfig.toggleChatBlur();
            }
        }).show();
    }

    private void handleUseSystemEmojiClick(UItem uItem) {
        SharedConfig.toggleUseSystemEmoji();
        uItem.setChecked(!SharedConfig.useSystemEmoji);
        this.parentLayout.rebuildFragments(0);
        this.listView.adapter.update(true);
    }
}
