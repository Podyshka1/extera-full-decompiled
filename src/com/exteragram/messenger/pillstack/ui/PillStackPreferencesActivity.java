package com.exteragram.messenger.pillstack.ui;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.core.content.ContextCompat;
import androidx.core.util.Consumer;
import com.exteragram.messenger.pillstack.core.PillRegistry;
import com.exteragram.messenger.pillstack.core.PillStackConfig;
import com.exteragram.messenger.plugins.PluginsConstants;
import com.exteragram.messenger.preferences.BasePreferencesActivity;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;
import org.telegram.ui.ActionBar.ActionBarMenuItem;
import org.telegram.ui.Cells.TextCell;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;
import org.telegram.ui.Components.UniversalRecyclerView;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u000b\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u0000 22\u00020\u0001:\u000223B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u000e\u001a\u00020\u000fH\u0014J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0014J\u001e\u0010\u0016\u001a\u00020\u000f2\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00190\u00182\u0006\u0010\u001a\u001a\u00020\u001bH\u0014J4\u0010\u001c\u001a\u00020\u00062\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00190\u00182\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u00112\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00060\u001fH\u0002J\u0018\u0010 \u001a\u00020\u00192\u0006\u0010!\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020\u0007H\u0002J\u001e\u0010#\u001a\u00020\u000f2\u0006\u0010$\u001a\u00020\u00062\f\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00190\u0018H\u0002J0\u0010&\u001a\u00020\u000f2\u0006\u0010'\u001a\u00020\u00192\u0006\u0010(\u001a\u00020\u00132\u0006\u0010)\u001a\u00020\u00062\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020+H\u0014J\b\u0010-\u001a\u00020\u000fH\u0002J\u0012\u0010.\u001a\u00020\u000f2\b\b\u0002\u0010/\u001a\u000200H\u0002J\b\u00101\u001a\u00020\u000fH\u0002R\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000¨\u00064"}, d2 = {"Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity;", "Lcom/exteragram/messenger/preferences/BasePreferencesActivity;", "<init>", "()V", "itemDetails", "Ljava/util/HashMap;", _UrlKt.FRAGMENT_ENCODE_SET, "Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity$ItemInfo;", "activeSectionId", "hiddenSectionId", "reorderIcon", "Landroid/graphics/drawable/Drawable;", "resetItem", "Lorg/telegram/ui/ActionBar/ActionBarMenuItem;", "initializeOptionStrings", _UrlKt.FRAGMENT_ENCODE_SET, "getTitle", _UrlKt.FRAGMENT_ENCODE_SET, "createView", "Landroid/view/View;", "context", "Landroid/content/Context;", "fillItems", PluginsConstants.Settings.ITEMS, "Ljava/util/ArrayList;", "Lorg/telegram/ui/Components/UItem;", "adapter", "Lorg/telegram/ui/Components/UniversalAdapter;", "addMenuSection", PluginsConstants.Settings.TYPE_HEADER, "ids", _UrlKt.FRAGMENT_ENCODE_SET, "createMenuItem", "id", "info", "updateConfigFromReorder", "sectionId", "uItems", "onClick", PluginsConstants.Settings.ITEM, PluginsConstants.Settings.VIEW, "position", "x", _UrlKt.FRAGMENT_ENCODE_SET, "y", "saveAndNotify", "updateResetButtonVisibility", "animated", _UrlKt.FRAGMENT_ENCODE_SET, "resetToDefault", "Companion", "ItemInfo", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nPillStackPreferencesActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PillStackPreferencesActivity.kt\ncom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,189:1\n1915#2,2:190\n1915#2,2:192\n1586#2:194\n1661#2,3:195\n1915#2,2:198\n*S KotlinDebug\n*F\n+ 1 PillStackPreferencesActivity.kt\ncom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity\n*L\n57#1:190,2\n105#1:192,2\n128#1:194\n128#1:195,3\n182#1:198,2\n*E\n"})
public final class PillStackPreferencesActivity extends BasePreferencesActivity {
    private Drawable reorderIcon;
    private ActionBarMenuItem resetItem;
    private final HashMap<Integer, ItemInfo> itemDetails = new HashMap<>();
    private int activeSectionId = -1;
    private int hiddenSectionId = -1;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u000b\b\u0002\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005¢\u0006\u0004\b\b\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0011\u0010\u0007\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\r¨\u0006\u0010"}, d2 = {"Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity$ItemInfo;", _UrlKt.FRAGMENT_ENCODE_SET, "name", _UrlKt.FRAGMENT_ENCODE_SET, "iconRes", _UrlKt.FRAGMENT_ENCODE_SET, "iconColorTop", "iconColorBottom", "<init>", "(Ljava/lang/CharSequence;III)V", "getName", "()Ljava/lang/CharSequence;", "getIconRes", "()I", "getIconColorTop", "getIconColorBottom", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class ItemInfo {
        private final int iconColorBottom;
        private final int iconColorTop;
        private final int iconRes;
        private final CharSequence name;

        public ItemInfo(CharSequence charSequence, int i, int i2, int i3) {
            this.name = charSequence;
            this.iconRes = i;
            this.iconColorTop = i2;
            this.iconColorBottom = i3;
        }

        public final CharSequence getName() {
            return this.name;
        }

        public final int getIconRes() {
            return this.iconRes;
        }

        public final int getIconColorTop() {
            return this.iconColorTop;
        }

        public final int getIconColorBottom() {
            return this.iconColorBottom;
        }
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public void initializeOptionStrings() {
        for (PillRegistry.PillInfo pillInfo : PillRegistry.getRegisteredPills()) {
            this.itemDetails.put(Integer.valueOf(pillInfo.id()), new ItemInfo(pillInfo.name(), pillInfo.iconRes(), pillInfo.iconColorTop(), pillInfo.iconColorBottom()));
        }
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public String getTitle() {
        return LocaleController.getString(C2807R.string.PillStackPills);
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity, org.telegram.ui.ActionBar.BaseFragment
    public View createView(Context context) {
        View viewCreateView = super.createView(context);
        ActionBarMenuItem actionBarMenuItemAddItem = this.actionBar.createMenu().addItem(0, C2807R.drawable.msg_reset);
        actionBarMenuItemAddItem.setContentDescription(LocaleController.getString(C2807R.string.Reset));
        actionBarMenuItemAddItem.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.pillstack.ui.PillStackPreferencesActivity$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.resetToDefault();
            }
        });
        this.resetItem = actionBarMenuItemAddItem;
        updateResetButtonVisibility(false);
        UniversalRecyclerView listView$TMessagesProj = getListView$TMessagesProj();
        listView$TMessagesProj.allowReorder(true);
        listView$TMessagesProj.listenReorder(new Utilities.Callback2() { // from class: com.exteragram.messenger.pillstack.ui.PillStackPreferencesActivity$$ExternalSyntheticLambda1
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.updateConfigFromReorder(((Integer) obj).intValue(), (ArrayList) obj2);
            }
        });
        return viewCreateView;
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public void fillItems(ArrayList<UItem> items, UniversalAdapter adapter) {
        Drawable drawable = this.reorderIcon;
        if (drawable == null) {
            drawable = ContextCompat.getDrawable(getContext(), C2807R.drawable.list_reorder);
        }
        this.reorderIcon = drawable;
        items.add(UItem.asHeader(LocaleController.getString(C2807R.string.Settings)));
        items.add(BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) this, 1000, (CharSequence) LocaleController.getString(C2807R.string.PillStackInfiniteScrolling), PillStackConfig.getInfiniteScrolling(), (CharSequence) null, 0, false, "pillStackInfiniteScrolling", false, 0, 440, (Object) null));
        items.add(UItem.asShadow(null));
        this.activeSectionId = -1;
        this.hiddenSectionId = -1;
        if (!PillStackConfig.getActivePills().isEmpty()) {
            this.activeSectionId = addMenuSection(items, adapter, LocaleController.getString(C2807R.string.PillStackActivePills), PillStackConfig.getActivePills());
            items.add(UItem.asShadow(LocaleController.getString(C2807R.string.PillStackPillsSettingsInfo)));
        }
        if (PillStackConfig.getHiddenPills().isEmpty()) {
            return;
        }
        this.hiddenSectionId = addMenuSection(items, adapter, LocaleController.getString(C2807R.string.PillStackHiddenPills), PillStackConfig.getHiddenPills());
        if (PillStackConfig.getActivePills().isEmpty()) {
            items.add(UItem.asShadow(LocaleController.getString(C2807R.string.PillStackPillsSettingsInfo)));
        }
    }

    private final int addMenuSection(ArrayList<UItem> items, UniversalAdapter adapter, String header, List<Integer> ids) {
        adapter.whiteSectionStart();
        items.add(UItem.asHeader(header));
        int iReorderSectionStart = adapter.reorderSectionStart();
        Iterator<T> it = ids.iterator();
        while (it.hasNext()) {
            int iIntValue = ((Number) it.next()).intValue();
            ItemInfo itemInfo = this.itemDetails.get(Integer.valueOf(iIntValue));
            if (itemInfo != null) {
                items.add(createMenuItem(iIntValue, itemInfo));
            }
        }
        adapter.reorderSectionEnd();
        adapter.whiteSectionEnd();
        return iReorderSectionStart;
    }

    private final UItem createMenuItem(int id, final ItemInfo info) {
        UItem uItemUButton$TMessagesProj$default = BasePreferencesActivity.uButton$TMessagesProj$default((BasePreferencesActivity) this, id, info.getName(), info.getIconRes(), (CharSequence) null, (CharSequence) null, (Boolean) null, false, (String) null, false, false, (Boolean) null, 1976, (Object) null);
        uItemUButton$TMessagesProj$default.object2 = this.reorderIcon;
        uItemUButton$TMessagesProj$default.bind = new Utilities.Callback() { // from class: com.exteragram.messenger.pillstack.ui.PillStackPreferencesActivity$$ExternalSyntheticLambda3
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                PillStackPreferencesActivity.m2775$r8$lambda$HVjwJYSrla1QmWYdwZS2ggvmn4(info, (View) obj);
            }
        };
        return uItemUButton$TMessagesProj$default;
    }

    /* JADX INFO: renamed from: $r8$lambda$HVjwJYSrla1QmWYd-wZS2ggvmn4, reason: not valid java name */
    public static void m2775$r8$lambda$HVjwJYSrla1QmWYdwZS2ggvmn4(ItemInfo itemInfo, View view) {
        if (view instanceof TextCell) {
            TextCell textCell = (TextCell) view;
            textCell.setColorfulIcon(itemInfo.getIconColorTop(), itemInfo.getIconColorBottom(), itemInfo.getIconRes());
            textCell.setImageLeft(21);
            textCell.setOffsetFromImage(65);
        }
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public void onClick(UItem item, View view, int position, float x, float y) {
        int i = item.id;
        if (i <= 0) {
            return;
        }
        if (i == 1000) {
            toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.pillstack.ui.PillStackPreferencesActivity$$ExternalSyntheticLambda2
                @Override // androidx.core.util.Consumer
                public final void accept(Object obj) {
                    PillStackConfig.setInfiniteScrolling(((Boolean) obj).booleanValue());
                }
            });
            return;
        }
        if (PillStackConfig.getActivePills().contains(Integer.valueOf(i))) {
            PillStackConfig.getActivePills().remove(Integer.valueOf(i));
            if (!PillStackConfig.getHiddenPills().contains(Integer.valueOf(i))) {
                PillStackConfig.getHiddenPills().add(0, Integer.valueOf(i));
            }
        } else if (PillStackConfig.getHiddenPills().contains(Integer.valueOf(i))) {
            PillStackConfig.getHiddenPills().remove(Integer.valueOf(i));
            PillStackConfig.getActivePills().add(Integer.valueOf(i));
        }
        saveAndNotify();
    }

    private final void saveAndNotify() {
        PillStackConfig.savePillsLayout();
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.pillStackLayoutChanged, new Object[0]);
        UniversalAdapter universalAdapter = getListView$TMessagesProj().adapter;
        if (universalAdapter != null) {
            universalAdapter.update(true);
        }
        updateResetButtonVisibility$default(this, false, 1, null);
    }

    public static /* synthetic */ void updateResetButtonVisibility$default(PillStackPreferencesActivity pillStackPreferencesActivity, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        pillStackPreferencesActivity.updateResetButtonVisibility(z);
    }

    private final void updateResetButtonVisibility(boolean animated) {
        ActionBarMenuItem actionBarMenuItem = this.resetItem;
        if (actionBarMenuItem != null) {
            AndroidUtilities.updateViewVisibilityAnimated(actionBarMenuItem, !Intrinsics.areEqual(PillStackConfig.getActivePills(), PillStackConfig.getDefaultActivePills()), 0.5f, animated);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void resetToDefault() {
        PillStackConfig.getActivePills().clear();
        PillStackConfig.getActivePills().addAll(PillStackConfig.getDefaultActivePills());
        PillStackConfig.getHiddenPills().clear();
        for (PillRegistry.PillInfo pillInfo : PillRegistry.getRegisteredPills()) {
            if (!PillStackConfig.getActivePills().contains(Integer.valueOf(pillInfo.id()))) {
                PillStackConfig.getHiddenPills().add(Integer.valueOf(pillInfo.id()));
            }
        }
        saveAndNotify();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateConfigFromReorder(int sectionId, ArrayList<UItem> uItems) {
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(uItems, 10));
        int size = uItems.size();
        int i = 0;
        while (i < size) {
            UItem uItem = uItems.get(i);
            i++;
            arrayList.add(Integer.valueOf(uItem.id));
        }
        if (sectionId == this.activeSectionId) {
            PillStackConfig.getActivePills().clear();
            PillStackConfig.getActivePills().addAll(arrayList);
        } else if (sectionId == this.hiddenSectionId) {
            PillStackConfig.getHiddenPills().clear();
            PillStackConfig.getHiddenPills().addAll(arrayList);
        }
        saveAndNotify();
    }
}
