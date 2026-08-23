package com.exteragram.messenger.pillstack.p014ui;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.core.content.ContextCompat;
import com.exteragram.messenger.pillstack.core.PillRegistry;
import com.exteragram.messenger.pillstack.core.PillStackConfig;
import com.exteragram.messenger.preferences.BasePreferencesActivity;
import com.google.android.exoplayer2.util.Consumer;
import java.util.ArrayList;
import java.util.HashMap;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.ActionBarMenuItem;
import org.telegram.p029ui.Cells.TextCell;
import org.telegram.p029ui.Components.UItem;
import org.telegram.p029ui.Components.UniversalAdapter;
import org.telegram.p029ui.Components.UniversalRecyclerView;

/* JADX INFO: loaded from: classes4.dex */
public class PillStackPreferencesActivity extends BasePreferencesActivity {
    private Drawable reorderIcon;
    private ActionBarMenuItem resetItem;
    private final HashMap itemDetails = new HashMap();
    private int activeSectionId = -1;
    private int hiddenSectionId = -1;

    /* JADX INFO: Access modifiers changed from: private */
    static class ItemInfo {
        int iconColorBottom;
        int iconColorTop;
        int iconRes;
        CharSequence name;

        ItemInfo(CharSequence charSequence, int i, int i2, int i3) {
            this.name = charSequence;
            this.iconRes = i;
            this.iconColorTop = i2;
            this.iconColorBottom = i3;
        }
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    protected void initializeOptionStrings() {
        initItemDetails();
    }

    private void initItemDetails() {
        for (PillRegistry.PillInfo pillInfo : PillRegistry.getRegisteredPills()) {
            this.itemDetails.put(Integer.valueOf(pillInfo.m248id()), new ItemInfo(pillInfo.name(), pillInfo.iconRes(), pillInfo.iconColorTop(), pillInfo.iconColorBottom()));
        }
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public String getTitle() {
        return LocaleController.getString(C2888R.string.PillStackPills);
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity, org.telegram.p029ui.ActionBar.BaseFragment
    public View createView(Context context) {
        View viewCreateView = super.createView(context);
        ActionBarMenuItem actionBarMenuItemAddItem = this.actionBar.createMenu().addItem(0, C2888R.drawable.msg_reset);
        this.resetItem = actionBarMenuItemAddItem;
        actionBarMenuItemAddItem.setContentDescription(LocaleController.getString(C2888R.string.Reset));
        updateResetButtonVisibility();
        this.resetItem.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.pillstack.ui.PillStackPreferencesActivity$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$createView$0(view);
            }
        });
        UniversalRecyclerView universalRecyclerView = this.listView;
        if (universalRecyclerView != null) {
            universalRecyclerView.allowReorder(true);
            this.listView.listenReorder(new Utilities.Callback2() { // from class: com.exteragram.messenger.pillstack.ui.PillStackPreferencesActivity$$ExternalSyntheticLambda3
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    this.f$0.updateConfigFromReorder(((Integer) obj).intValue(), (ArrayList) obj2);
                }
            });
        }
        return viewCreateView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$0(View view) {
        resetToDefault();
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    protected void fillItems(ArrayList arrayList, UniversalAdapter universalAdapter) {
        if (this.reorderIcon == null) {
            this.reorderIcon = ContextCompat.getDrawable(getContext(), C2888R.drawable.list_reorder);
        }
        arrayList.add(UItem.asHeader(LocaleController.getString(C2888R.string.Settings)));
        arrayList.add(UItem.asCheck(MediaDataController.MAX_STYLE_RUNS_COUNT, LocaleController.getString(C2888R.string.PillStackInfiniteScrolling)).setSearchable(this).setLinkAlias("pillStackInfiniteScrolling", this).setChecked(PillStackConfig.infiniteScrolling));
        arrayList.add(UItem.asShadow(null));
        this.activeSectionId = -1;
        this.hiddenSectionId = -1;
        if (!PillStackConfig.activePills.isEmpty()) {
            this.activeSectionId = addMenuSection(arrayList, universalAdapter, LocaleController.getString(C2888R.string.PillStackActivePills), PillStackConfig.activePills);
            arrayList.add(UItem.asShadow(LocaleController.getString(C2888R.string.PillStackPillsSettingsInfo)));
        }
        if (PillStackConfig.hiddenPills.isEmpty()) {
            return;
        }
        this.hiddenSectionId = addMenuSection(arrayList, universalAdapter, LocaleController.getString(C2888R.string.PillStackHiddenPills), PillStackConfig.hiddenPills);
        if (PillStackConfig.activePills.isEmpty()) {
            arrayList.add(UItem.asShadow(LocaleController.getString(C2888R.string.PillStackPillsSettingsInfo)));
        }
    }

    private int addMenuSection(ArrayList arrayList, UniversalAdapter universalAdapter, String str, ArrayList arrayList2) {
        universalAdapter.whiteSectionStart();
        arrayList.add(UItem.asHeader(str));
        int iReorderSectionStart = universalAdapter.reorderSectionStart();
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList2.get(i);
            i++;
            Integer num = (Integer) obj;
            ItemInfo itemInfo = (ItemInfo) this.itemDetails.get(num);
            if (itemInfo != null) {
                arrayList.add(createMenuItem(num.intValue(), itemInfo));
            }
        }
        universalAdapter.reorderSectionEnd();
        universalAdapter.whiteSectionEnd();
        return iReorderSectionStart;
    }

    private UItem createMenuItem(int i, final ItemInfo itemInfo) {
        UItem uItemAsButton = UItem.asButton(i, itemInfo.iconRes, itemInfo.name);
        uItemAsButton.object2 = this.reorderIcon;
        uItemAsButton.bind = new Utilities.Callback() { // from class: com.exteragram.messenger.pillstack.ui.PillStackPreferencesActivity$$ExternalSyntheticLambda1
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                PillStackPreferencesActivity.$r8$lambda$ZNAThjqAeJc9LOjkEYIGUxiiUGM(itemInfo, (View) obj);
            }
        };
        return uItemAsButton;
    }

    public static /* synthetic */ void $r8$lambda$ZNAThjqAeJc9LOjkEYIGUxiiUGM(ItemInfo itemInfo, View view) {
        if (view instanceof TextCell) {
            ((TextCell) view).setColorfulIcon(itemInfo.iconColorTop, itemInfo.iconColorBottom, itemInfo.iconRes);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateConfigFromReorder(int i, ArrayList arrayList) {
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            arrayList2.add(Integer.valueOf(((UItem) obj).f2105id));
        }
        if (i == this.activeSectionId) {
            PillStackConfig.activePills.clear();
            PillStackConfig.activePills.addAll(arrayList2);
        } else if (i == this.hiddenSectionId) {
            PillStackConfig.hiddenPills.clear();
            PillStackConfig.hiddenPills.addAll(arrayList2);
        }
        saveAndNotify();
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    protected void onClick(UItem uItem, View view, int i, float f, float f2) {
        int i2 = uItem.f2105id;
        if (i2 == 1000) {
            toggleBooleanSettingAndRefresh(PillStackConfig.preferences, "infiniteScrolling", uItem, new Consumer() { // from class: com.exteragram.messenger.pillstack.ui.PillStackPreferencesActivity$$ExternalSyntheticLambda0
                @Override // com.google.android.exoplayer2.util.Consumer
                public final void accept(Object obj) {
                    PillStackConfig.infiniteScrolling = ((Boolean) obj).booleanValue();
                }
            });
            return;
        }
        if (PillStackConfig.activePills.contains(Integer.valueOf(i2))) {
            PillStackConfig.activePills.remove(Integer.valueOf(i2));
            if (!PillStackConfig.hiddenPills.contains(Integer.valueOf(i2))) {
                PillStackConfig.hiddenPills.add(0, Integer.valueOf(i2));
            }
        } else if (PillStackConfig.hiddenPills.contains(Integer.valueOf(i2))) {
            PillStackConfig.hiddenPills.remove(Integer.valueOf(i2));
            PillStackConfig.activePills.add(Integer.valueOf(i2));
        }
        saveAndNotify();
    }

    private void saveAndNotify() {
        UniversalAdapter universalAdapter;
        PillStackConfig.savePillsLayout();
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.pillStackLayoutChanged, new Object[0]);
        UniversalRecyclerView universalRecyclerView = this.listView;
        if (universalRecyclerView != null && (universalAdapter = universalRecyclerView.adapter) != null) {
            universalAdapter.update(true);
        }
        updateResetButtonVisibility();
    }

    private void updateResetButtonVisibility() {
        if (this.resetItem == null) {
            return;
        }
        boolean zEquals = PillStackConfig.activePills.equals(PillStackConfig.getDefaultActivePills());
        if (!zEquals && this.resetItem.getVisibility() == 8) {
            AndroidUtilities.updateViewVisibilityAnimated(this.resetItem, true, 0.5f, true);
        } else if (zEquals && this.resetItem.getVisibility() == 0) {
            AndroidUtilities.updateViewVisibilityAnimated(this.resetItem, false, 0.5f, true);
        }
    }

    private void resetToDefault() {
        UniversalAdapter universalAdapter;
        PillStackConfig.activePills.clear();
        PillStackConfig.activePills.addAll(PillStackConfig.getDefaultActivePills());
        PillStackConfig.hiddenPills.clear();
        for (PillRegistry.PillInfo pillInfo : PillRegistry.getRegisteredPills()) {
            if (!PillStackConfig.activePills.contains(Integer.valueOf(pillInfo.m248id()))) {
                PillStackConfig.hiddenPills.add(Integer.valueOf(pillInfo.m248id()));
            }
        }
        PillStackConfig.savePillsLayout();
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.pillStackLayoutChanged, new Object[0]);
        UniversalRecyclerView universalRecyclerView = this.listView;
        if (universalRecyclerView != null && (universalAdapter = universalRecyclerView.adapter) != null) {
            universalAdapter.update(true);
        }
        updateResetButtonVisibility();
    }
}
