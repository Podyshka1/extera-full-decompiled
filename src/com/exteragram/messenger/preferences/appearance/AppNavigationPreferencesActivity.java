package com.exteragram.messenger.preferences.appearance;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import androidx.core.content.ContextCompat;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.plugins.PluginsController;
import com.exteragram.messenger.preferences.BasePreferencesActivity;
import com.exteragram.messenger.utils.p017ui.PopupUtils;
import com.google.android.exoplayer2.util.Consumer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.function.Predicate;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.ActionBarMenuItem;
import org.telegram.p029ui.Components.BulletinFactory;
import org.telegram.p029ui.Components.UItem;
import org.telegram.p029ui.Components.UniversalAdapter;
import org.telegram.p029ui.Components.UniversalRecyclerView;
import p022j$.util.Collection;
import p022j$.util.function.Predicate$CC;

/* JADX INFO: loaded from: classes.dex */
public class AppNavigationPreferencesActivity extends BasePreferencesActivity {
    private CharSequence[] bottomNavigationModes;
    private Drawable reorderIcon;
    private ActionBarMenuItem resetItem;
    private CharSequence[] tabletMode;
    private final HashMap itemDetails = new HashMap();
    private final ArrayList stableDividerIds = new ArrayList();
    private int nextDividerId = -2000;

    public enum AppNavigationItem {
        DRAWER,
        IMMERSIVE_ANIMATION,
        BOTTOM_NAVIGATION_BAR_MODE,
        PREDICTIVE_BACK_ANIMATION,
        SPRING_ANIMATIONS,
        TABLET_MODE;

        public int getId() {
            return ordinal() + 150;
        }

        public static AppNavigationItem fromId(int i) {
            int i2 = i - 150;
            if (i2 < 0 || i2 >= values().length) {
                return null;
            }
            return values()[i2];
        }
    }

    private static class ItemInfo {
        int iconRes;
        CharSequence name;

        ItemInfo(CharSequence charSequence, int i) {
            this.name = charSequence;
            this.iconRes = i;
        }
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    protected void initializeOptionStrings() {
        initItemDetails();
        this.tabletMode = new CharSequence[]{LocaleController.getString(C2888R.string.DistanceUnitsAutomatic), LocaleController.getString(C2888R.string.PasswordOn), LocaleController.getString(C2888R.string.PasswordOff)};
        this.bottomNavigationModes = new CharSequence[]{LocaleController.getString(C2888R.string.BottomNavigationModeShow), LocaleController.getString(C2888R.string.BottomNavigationModeHide), LocaleController.getString(C2888R.string.BottomNavigationModeFloating)};
    }

    private void initItemDetails() {
        this.itemDetails.put(Integer.valueOf(ExteraConfig.MainMenuItem.PROFILE.f201id), new ItemInfo(LocaleController.getString(C2888R.string.MyProfile), C2888R.drawable.left_status_profile));
        this.itemDetails.put(Integer.valueOf(ExteraConfig.MainMenuItem.ARCHIVE.f201id), new ItemInfo(LocaleController.getString(C2888R.string.ArchivedChats), C2888R.drawable.msg_archive));
        this.itemDetails.put(Integer.valueOf(ExteraConfig.MainMenuItem.BOTS.f201id), new ItemInfo(LocaleController.getString(C2888R.string.FilterBots), C2888R.drawable.msg_bot));
        this.itemDetails.put(Integer.valueOf(ExteraConfig.MainMenuItem.NEW_GROUP.f201id), new ItemInfo(LocaleController.getString(C2888R.string.NewGroup), C2888R.drawable.msg_groups));
        this.itemDetails.put(Integer.valueOf(ExteraConfig.MainMenuItem.CONTACTS.f201id), new ItemInfo(LocaleController.getString(C2888R.string.Contacts), C2888R.drawable.msg_contacts));
        this.itemDetails.put(Integer.valueOf(ExteraConfig.MainMenuItem.NEW_CHANNEL.f201id), new ItemInfo(LocaleController.getString(C2888R.string.NewChannel), C2888R.drawable.msg_channel));
        this.itemDetails.put(Integer.valueOf(ExteraConfig.MainMenuItem.CALLS.f201id), new ItemInfo(LocaleController.getString(C2888R.string.Calls), C2888R.drawable.msg_calls));
        this.itemDetails.put(Integer.valueOf(ExteraConfig.MainMenuItem.SAVED.f201id), new ItemInfo(LocaleController.getString(C2888R.string.SavedMessages), C2888R.drawable.msg_saved));
        this.itemDetails.put(Integer.valueOf(ExteraConfig.MainMenuItem.SETTINGS.f201id), new ItemInfo(LocaleController.getString(C2888R.string.Settings), C2888R.drawable.msg_settings_old));
        this.itemDetails.put(Integer.valueOf(ExteraConfig.MainMenuItem.PLUGINS.f201id), new ItemInfo(LocaleController.getString(C2888R.string.Plugins), C2888R.drawable.msg_plugins));
        this.itemDetails.put(Integer.valueOf(ExteraConfig.MainMenuItem.BROWSER.f201id), new ItemInfo(LocaleController.getString(C2888R.string.BrowserSettingsTitle), C2888R.drawable.msg2_language));
        this.itemDetails.put(Integer.valueOf(ExteraConfig.MainMenuItem.QR.f201id), new ItemInfo(LocaleController.getString(C2888R.string.AuthAnotherClient), C2888R.drawable.msg_qrcode));
        Collection.EL.removeIf(ExteraConfig.mainMenuHiddenItems, new Predicate() { // from class: com.exteragram.messenger.preferences.appearance.AppNavigationPreferencesActivity$$ExternalSyntheticLambda6
            public /* synthetic */ Predicate and(Predicate predicate) {
                return Predicate$CC.$default$and(this, predicate);
            }

            public /* synthetic */ Predicate negate() {
                return Predicate$CC.$default$negate(this);
            }

            /* JADX INFO: renamed from: or */
            public /* synthetic */ Predicate m271or(Predicate predicate) {
                return Predicate$CC.$default$or(this, predicate);
            }

            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return AppNavigationPreferencesActivity.$r8$lambda$Po3A4RwV39YnktoT4g7JvvXtYv0((Integer) obj);
            }
        });
        this.stableDividerIds.clear();
        this.nextDividerId = -2000;
        ArrayList arrayList = ExteraConfig.mainMenuLayout;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            if (((Integer) obj).intValue() == ExteraConfig.MainMenuItem.DIVIDER.f201id) {
                ArrayList arrayList2 = this.stableDividerIds;
                int i2 = this.nextDividerId;
                this.nextDividerId = i2 - 1;
                arrayList2.add(Integer.valueOf(i2));
            }
        }
    }

    public static /* synthetic */ boolean $r8$lambda$Po3A4RwV39YnktoT4g7JvvXtYv0(Integer num) {
        return num.intValue() == ExteraConfig.MainMenuItem.DIVIDER.f201id;
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public String getTitle() {
        return LocaleController.getString(C2888R.string.AppNavigation);
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity, org.telegram.p029ui.ActionBar.BaseFragment
    public View createView(Context context) {
        View viewCreateView = super.createView(context);
        ActionBarMenuItem actionBarMenuItemAddItem = this.actionBar.createMenu().addItem(0, C2888R.drawable.msg_reset);
        this.resetItem = actionBarMenuItemAddItem;
        actionBarMenuItemAddItem.setContentDescription(LocaleController.getString(C2888R.string.Reset));
        updateResetButtonVisibility();
        this.resetItem.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.preferences.appearance.AppNavigationPreferencesActivity$$ExternalSyntheticLambda7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$createView$1(view);
            }
        });
        UniversalRecyclerView universalRecyclerView = this.listView;
        if (universalRecyclerView != null) {
            universalRecyclerView.allowReorder(true);
            this.listView.listenReorder(new Utilities.Callback2() { // from class: com.exteragram.messenger.preferences.appearance.AppNavigationPreferencesActivity$$ExternalSyntheticLambda8
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    this.f$0.updateConfigFromReorder(((Integer) obj).intValue(), (ArrayList) obj2);
                }
            });
        }
        return viewCreateView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$1(View view) {
        resetToDefault();
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    protected void fillItems(ArrayList arrayList, UniversalAdapter universalAdapter) {
        if (this.reorderIcon == null) {
            this.reorderIcon = ContextCompat.getDrawable(getContext(), C2888R.drawable.list_reorder);
        }
        arrayList.add(UItem.asHeader(LocaleController.getString(C2888R.string.General)));
        arrayList.add(UItem.asButton(AppNavigationItem.TABLET_MODE.getId(), LocaleController.getString(C2888R.string.TabletMode), this.tabletMode[ExteraConfig.tabletMode]).setSearchable(this).setLinkAlias("tabletMode", this));
        arrayList.add(UItem.asButton(AppNavigationItem.BOTTOM_NAVIGATION_BAR_MODE.getId(), LocaleController.getString(C2888R.string.BottomNavigationBarMode), this.bottomNavigationModes[ExteraConfig.BottomNavigationBar.getMode()]).setSearchable(this).setLinkAlias("bottomNavigationBarMode", this));
        if (Build.VERSION.SDK_INT >= 34) {
            arrayList.add(UItem.asCheck(AppNavigationItem.PREDICTIVE_BACK_ANIMATION.getId(), LocaleController.getString(C2888R.string.PredictiveBackAnimation)).setChecked(ExteraConfig.predictiveBackAnimation).setSearchable(this).setLinkAlias("predictiveBackAnimation", this));
        }
        arrayList.add(UItem.asCheck(AppNavigationItem.SPRING_ANIMATIONS.getId(), LocaleController.getString(C2888R.string.SpringAnimations)).setChecked(ExteraConfig.springAnimations).setSearchable(this).setLinkAlias("springAnimations", this));
        arrayList.add(UItem.asShadow(LocaleController.getString(C2888R.string.SpringAnimationsInfo)));
        arrayList.add(UItem.asHeader(LocaleController.getString(C2888R.string.AppNavigation)));
        arrayList.add(UItem.asCheck(AppNavigationItem.DRAWER.getId(), LocaleController.getString(C2888R.string.NavigationDrawer)).setChecked(ExteraConfig.navigationDrawer).setSearchable(this).setLinkAlias("navigationDrawer", this));
        if (ExteraConfig.navigationDrawer) {
            arrayList.add(UItem.asCheck(AppNavigationItem.IMMERSIVE_ANIMATION.getId(), LocaleController.getString(C2888R.string.NavigationDrawerImmersiveAnimation)).setChecked(ExteraConfig.immersiveDrawerAnimation).setSearchable(this).setLinkAlias("immersiveDrawerAnimation", this));
        }
        arrayList.add(UItem.asShadow(LocaleController.getString(C2888R.string.NavigationDrawerInfo)));
        addMenuSection(arrayList, universalAdapter, LocaleController.getString(C2888R.string.MainMenuItems), ExteraConfig.mainMenuLayout, true);
        arrayList.add(UItem.asShadow(LocaleController.getString(C2888R.string.MainMenuItemsInfo)));
        if (ExteraConfig.mainMenuHiddenItems.isEmpty()) {
            return;
        }
        addMenuSection(arrayList, universalAdapter, LocaleController.getString(C2888R.string.MainMenuHiddenItems), ExteraConfig.mainMenuHiddenItems, false);
        arrayList.add(UItem.asShadow(null));
    }

    private void addMenuSection(ArrayList arrayList, UniversalAdapter universalAdapter, String str, ArrayList arrayList2, boolean z) {
        universalAdapter.whiteSectionStart();
        arrayList.add(UItem.asHeader(str));
        universalAdapter.reorderSectionStart();
        int size = arrayList2.size();
        int i = 0;
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList2.get(i2);
            i2++;
            Integer num = (Integer) obj;
            if (num.intValue() != ExteraConfig.MainMenuItem.PLUGINS.f201id || PluginsController.isPluginEngineSupported()) {
                int iIntValue = num.intValue();
                ExteraConfig.MainMenuItem mainMenuItem = ExteraConfig.MainMenuItem.DIVIDER;
                if (iIntValue == mainMenuItem.f201id) {
                    if (z && i < this.stableDividerIds.size()) {
                        arrayList.add(createMenuItem(((Integer) this.stableDividerIds.get(i)).intValue(), null));
                    } else if (!z) {
                        arrayList.add(createMenuItem(mainMenuItem.f201id, null));
                    }
                    i++;
                } else {
                    ItemInfo itemInfo = (ItemInfo) this.itemDetails.get(num);
                    if (itemInfo != null) {
                        arrayList.add(createMenuItem(num.intValue(), itemInfo));
                    }
                }
            }
        }
        universalAdapter.reorderSectionEnd();
        if (z) {
            arrayList.add(UItem.asButton(-200, C2888R.drawable.msg_add, LocaleController.getString(C2888R.string.MainMenuAddDivider)).accent());
        }
        universalAdapter.whiteSectionEnd();
    }

    private UItem createMenuItem(int i, ItemInfo itemInfo) {
        UItem uItemAsButton;
        if (i <= -2000 || i == ExteraConfig.MainMenuItem.DIVIDER.f201id) {
            uItemAsButton = UItem.asButton(i, C2888R.drawable.msg_block, LocaleController.getString(C2888R.string.MainMenuDivider));
        } else {
            if (itemInfo == null) {
                return null;
            }
            uItemAsButton = UItem.asButton(i, itemInfo.iconRes, itemInfo.name);
        }
        uItemAsButton.object2 = this.reorderIcon;
        return uItemAsButton;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateConfigFromReorder(int i, ArrayList arrayList) {
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            UItem uItem = (UItem) obj;
            int i3 = uItem.f2105id;
            if (i3 > -2000 && i3 != ExteraConfig.MainMenuItem.DIVIDER.f201id) {
                arrayList2.add(Integer.valueOf(i3));
            } else if (i == 0) {
                arrayList2.add(Integer.valueOf(ExteraConfig.MainMenuItem.DIVIDER.f201id));
                int i4 = uItem.f2105id;
                if (i4 > -2000) {
                    i4 = this.nextDividerId;
                    this.nextDividerId = i4 - 1;
                }
                arrayList3.add(Integer.valueOf(i4));
            }
        }
        if (i == 0) {
            this.stableDividerIds.clear();
            this.stableDividerIds.addAll(arrayList3);
            if (ExteraConfig.BottomNavigationBar.hidden()) {
                Integer numValueOf = Integer.valueOf(ExteraConfig.MainMenuItem.SETTINGS.f201id);
                if (!arrayList2.contains(numValueOf)) {
                    arrayList2.add(numValueOf);
                }
            }
            ExteraConfig.mainMenuLayout.clear();
            ExteraConfig.mainMenuLayout.addAll(arrayList2);
        } else if (i == 1) {
            if (ExteraConfig.BottomNavigationBar.hidden()) {
                arrayList2.remove(Integer.valueOf(ExteraConfig.MainMenuItem.SETTINGS.f201id));
            }
            ExteraConfig.mainMenuHiddenItems.clear();
            ExteraConfig.mainMenuHiddenItems.addAll(arrayList2);
        }
        saveAndNotify();
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    protected void onClick(UItem uItem, View view, int i, float f, float f2) {
        UniversalAdapter universalAdapter;
        int i2 = uItem.f2105id;
        AppNavigationItem appNavigationItemFromId = AppNavigationItem.fromId(i2);
        int i3 = 0;
        if (appNavigationItemFromId != null) {
            int iOrdinal = appNavigationItemFromId.ordinal();
            if (iOrdinal == 0) {
                toggleBooleanSettingAndRefresh("navigationDrawer", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.appearance.AppNavigationPreferencesActivity$$ExternalSyntheticLambda0
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.navigationDrawer = ((Boolean) obj).booleanValue();
                    }
                });
                getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.mainUserInfoChanged, new Object[0]);
                UniversalRecyclerView universalRecyclerView = this.listView;
                if (universalRecyclerView != null && (universalAdapter = universalRecyclerView.adapter) != null) {
                    universalAdapter.update(true);
                }
                this.parentLayout.rebuildFragments(0);
                return;
            }
            if (iOrdinal == 1) {
                toggleBooleanSettingAndRefresh("immersiveDrawerAnimation", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.appearance.AppNavigationPreferencesActivity$$ExternalSyntheticLambda1
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.immersiveDrawerAnimation = ((Boolean) obj).booleanValue();
                    }
                });
                return;
            }
            if (iOrdinal == 2) {
                showListDialog(uItem, this.bottomNavigationModes, LocaleController.getString(C2888R.string.BottomNavigationBarMode), ExteraConfig.BottomNavigationBar.getMode(), new PopupUtils.OnItemClickListener() { // from class: com.exteragram.messenger.preferences.appearance.AppNavigationPreferencesActivity$$ExternalSyntheticLambda2
                    @Override // com.exteragram.messenger.utils.ui.PopupUtils.OnItemClickListener
                    public final void onClick(int i4) {
                        this.f$0.lambda$onClick$4(i4);
                    }
                });
                return;
            }
            if (iOrdinal == 3) {
                toggleBooleanSettingAndRefresh("predictiveBackAnimation", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.appearance.AppNavigationPreferencesActivity$$ExternalSyntheticLambda3
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.predictiveBackAnimation = ((Boolean) obj).booleanValue();
                    }
                });
                showRestartBulletin();
                return;
            } else if (iOrdinal == 4) {
                toggleBooleanSettingAndRefresh("springAnimations", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.appearance.AppNavigationPreferencesActivity$$ExternalSyntheticLambda4
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        AppNavigationPreferencesActivity.m2701$r8$lambda$u07TReZ5mBL6eLs_1kcuhUW0_k((Boolean) obj);
                    }
                });
                return;
            } else {
                if (iOrdinal != 5) {
                    return;
                }
                showListDialog(uItem, this.tabletMode, LocaleController.getString(C2888R.string.TabletMode), ExteraConfig.tabletMode, new PopupUtils.OnItemClickListener() { // from class: com.exteragram.messenger.preferences.appearance.AppNavigationPreferencesActivity$$ExternalSyntheticLambda5
                    @Override // com.exteragram.messenger.utils.ui.PopupUtils.OnItemClickListener
                    public final void onClick(int i4) {
                        this.f$0.lambda$onClick$7(i4);
                    }
                });
                return;
            }
        }
        if (i2 == -200) {
            ArrayList arrayList = this.stableDividerIds;
            int i4 = this.nextDividerId;
            this.nextDividerId = i4 - 1;
            arrayList.add(Integer.valueOf(i4));
            ExteraConfig.mainMenuLayout.add(Integer.valueOf(ExteraConfig.MainMenuItem.DIVIDER.f201id));
            saveAndNotify();
            return;
        }
        if (i2 <= -2000) {
            int iIndexOf = this.stableDividerIds.indexOf(Integer.valueOf(i2));
            if (iIndexOf != -1) {
                int i5 = 0;
                while (true) {
                    if (i3 >= ExteraConfig.mainMenuLayout.size()) {
                        i3 = -1;
                        break;
                    }
                    if (((Integer) ExteraConfig.mainMenuLayout.get(i3)).intValue() == ExteraConfig.MainMenuItem.DIVIDER.f201id) {
                        if (i5 == iIndexOf) {
                            break;
                        } else {
                            i5++;
                        }
                    }
                    i3++;
                }
                if (i3 != -1) {
                    this.stableDividerIds.remove(iIndexOf);
                    ExteraConfig.mainMenuLayout.remove(i3);
                    saveAndNotify();
                    return;
                }
                return;
            }
            return;
        }
        ExteraConfig.MainMenuItem mainMenuItem = ExteraConfig.MainMenuItem.DIVIDER;
        if (i2 == mainMenuItem.f201id) {
            ExteraConfig.mainMenuHiddenItems.remove(Integer.valueOf(i2));
            saveAndNotify();
            return;
        }
        if (ExteraConfig.BottomNavigationBar.hidden() && i2 == ExteraConfig.MainMenuItem.SETTINGS.f201id && ExteraConfig.mainMenuLayout.contains(Integer.valueOf(i2))) {
            BulletinFactory.m1246of(this).createErrorBulletin(LocaleController.getString(C2888R.string.MainMenuRemoveSettingsInfo)).show();
            return;
        }
        if (ExteraConfig.mainMenuLayout.contains(Integer.valueOf(i2))) {
            ExteraConfig.mainMenuLayout.remove(Integer.valueOf(i2));
            if (i2 != mainMenuItem.f201id && !ExteraConfig.mainMenuHiddenItems.contains(Integer.valueOf(i2))) {
                ExteraConfig.mainMenuHiddenItems.add(0, Integer.valueOf(i2));
            }
        } else if (ExteraConfig.mainMenuHiddenItems.contains(Integer.valueOf(i2))) {
            ExteraConfig.mainMenuHiddenItems.remove(Integer.valueOf(i2));
            ExteraConfig.mainMenuLayout.add(Integer.valueOf(i2));
        }
        saveAndNotify();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$4(int i) {
        boolean z = ExteraConfig.BottomNavigationBar.hidden() != (i == 1);
        changeIntSetting("bottomNavigationBarMode", i);
        ExteraConfig.BottomNavigationBar.setMode(i);
        if (z) {
            resetToDefault();
        } else {
            ExteraConfig.ensureSettingsVisibility();
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.mainUserInfoChanged, new Object[0]);
            updateResetButtonVisibility();
        }
        this.parentLayout.rebuildFragments(0);
    }

    /* JADX INFO: renamed from: $r8$lambda$u07TReZ5mBL6eLs-_1kcuhUW0_k, reason: not valid java name */
    public static /* synthetic */ void m2701$r8$lambda$u07TReZ5mBL6eLs_1kcuhUW0_k(Boolean bool) {
        ExteraConfig.springAnimations = bool.booleanValue();
        if (bool.booleanValue()) {
            MessagesController.getGlobalMainSettings().edit().putBoolean("view_animations", true).apply();
            SharedConfig.setAnimationsEnabled(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$7(int i) {
        ExteraConfig.tabletMode = i;
        changeIntSetting("tabletMode", i);
        showRestartBulletin();
    }

    private void saveAndNotify() {
        ExteraConfig.saveMainMenuLayout();
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.mainUserInfoChanged, new Object[0]);
        refreshEditorList();
        updateResetButtonVisibility();
    }

    private void refreshEditorList() {
        UniversalRecyclerView universalRecyclerView = this.listView;
        if (universalRecyclerView == null || universalRecyclerView.adapter == null) {
            return;
        }
        universalRecyclerView.hideSelector(false);
        this.listView.cancelClickRunnables(false);
        this.listView.adapter.update(true);
    }

    private void updateResetButtonVisibility() {
        if (this.resetItem == null) {
            return;
        }
        boolean zEquals = ExteraConfig.mainMenuLayout.equals(ExteraConfig.getDefaultMainMenuLayout());
        if (!zEquals && this.resetItem.getVisibility() == 8) {
            AndroidUtilities.updateViewVisibilityAnimated(this.resetItem, true, 0.5f, true);
        } else if (zEquals && this.resetItem.getVisibility() == 0) {
            AndroidUtilities.updateViewVisibilityAnimated(this.resetItem, false, 0.5f, true);
        }
    }

    private void resetToDefault() {
        ExteraConfig.mainMenuLayout.clear();
        ExteraConfig.mainMenuLayout.addAll(ExteraConfig.getDefaultMainMenuLayout());
        ExteraConfig.mainMenuHiddenItems.clear();
        for (ExteraConfig.MainMenuItem mainMenuItem : ExteraConfig.MainMenuItem.values()) {
            if (mainMenuItem != ExteraConfig.MainMenuItem.DIVIDER && !ExteraConfig.mainMenuLayout.contains(Integer.valueOf(mainMenuItem.f201id)) && (mainMenuItem != ExteraConfig.MainMenuItem.PLUGINS || PluginsController.isPluginEngineSupported())) {
                ExteraConfig.mainMenuHiddenItems.add(Integer.valueOf(mainMenuItem.f201id));
            }
        }
        this.stableDividerIds.clear();
        this.nextDividerId = -2000;
        ArrayList arrayList = ExteraConfig.mainMenuLayout;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            if (((Integer) obj).intValue() == ExteraConfig.MainMenuItem.DIVIDER.f201id) {
                ArrayList arrayList2 = this.stableDividerIds;
                int i2 = this.nextDividerId;
                this.nextDividerId = i2 - 1;
                arrayList2.add(Integer.valueOf(i2));
            }
        }
        ExteraConfig.saveMainMenuLayout();
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.mainUserInfoChanged, new Object[0]);
        refreshEditorList();
        updateResetButtonVisibility();
    }
}
