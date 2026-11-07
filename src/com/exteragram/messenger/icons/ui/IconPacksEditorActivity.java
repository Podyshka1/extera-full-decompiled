package com.exteragram.messenger.icons.ui;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.text.TextUtils;
import android.view.View;
import androidx.core.content.res.ResourcesCompat;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.icons.ExteraResources;
import com.exteragram.messenger.icons.IconManager;
import com.exteragram.messenger.icons.IconPack;
import com.exteragram.messenger.icons.ui.IconPacksEditorActivity;
import com.exteragram.messenger.icons.ui.components.NewIconPackBottomSheet;
import com.exteragram.messenger.icons.ui.picker.IconPickerController;
import com.exteragram.messenger.plugins.PluginsConstants;
import com.exteragram.messenger.preferences.BasePreferencesActivity;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.ActionBarMenu;
import org.telegram.ui.ActionBar.ActionBarMenuItem;
import org.telegram.ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.ui.ActionBar.ActionBarPopupWindow;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.TextCell;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.PopupSwipeBackLayout;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;
import org.telegram.ui.Components.UniversalRecyclerView;
import org.telegram.ui.LaunchActivity;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\u0000\n\u0002\b\u0006\b\u0016\u0018\u0000 A2\u00020\u00012\u00020\u0002:\u0002ABB\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0014J\b\u0010\u001f\u001a\u00020 H\u0002J\u0010\u0010!\u001a\u00020\"2\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J \u0010#\u001a\u00020 2\u0006\u0010$\u001a\u00020\"2\u0006\u0010%\u001a\u00020\n2\u0006\u0010&\u001a\u00020\u0012H\u0002J\u0010\u0010'\u001a\u00020 2\u0006\u0010&\u001a\u00020\u0012H\u0002J\b\u0010(\u001a\u00020 H\u0002J\b\u0010)\u001a\u00020\bH\u0016J\b\u0010*\u001a\u00020 H\u0016J\b\u0010+\u001a\u00020 H\u0002J\b\u0010,\u001a\u00020\nH\u0016J\u000e\u0010-\u001a\b\u0012\u0004\u0012\u00020\u00170\u0016H\u0002J\u001e\u0010.\u001a\u00020 2\f\u0010/\u001a\b\u0012\u0004\u0012\u00020\u00170\u00162\u0006\u00100\u001a\u000201H\u0014J0\u00102\u001a\u00020 2\u0006\u00103\u001a\u00020\u00172\u0006\u00104\u001a\u00020\u001c2\u0006\u00105\u001a\u00020\u00122\u0006\u00106\u001a\u0002072\u0006\u00108\u001a\u000207H\u0014J5\u00109\u001a\u00020 2\u0006\u0010:\u001a\u00020\u00122\u0006\u0010;\u001a\u00020\u00122\u0016\u0010<\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010=0\u000e\"\u0004\u0018\u00010=H\u0016¢\u0006\u0002\u0010>J\u0010\u0010?\u001a\u00020\b2\u0006\u0010@\u001a\u00020\bH\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u000eX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\n0\u000eX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0019R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006C"}, d2 = {"Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity;", "Lcom/exteragram/messenger/preferences/BasePreferencesActivity;", "Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;", "iconPack", "Lcom/exteragram/messenger/icons/IconPack;", "<init>", "(Lcom/exteragram/messenger/icons/IconPack;)V", "searching", _UrlKt.FRAGMENT_ENCODE_SET, "query", _UrlKt.FRAGMENT_ENCODE_SET, "otherItem", "Lorg/telegram/ui/ActionBar/ActionBarMenuItem;", "filterItems", _UrlKt.FRAGMENT_ENCODE_SET, "Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;", "[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;", "iconFilter", _UrlKt.FRAGMENT_ENCODE_SET, "searchRunnable", "Ljava/lang/Runnable;", "packItems", "Ljava/util/ArrayList;", "Lorg/telegram/ui/Components/UItem;", "packItemLowerNames", "[Ljava/lang/String;", "packItemsFor", "createView", "Landroid/view/View;", "context", "Landroid/content/Context;", "updateAdapter", _UrlKt.FRAGMENT_ENCODE_SET, "createFilterLayout", "Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;", "createFilterItem", "layout", "text", "filter", "setIconFilter", "updateFilterChecks", "onFragmentCreate", "onFragmentDestroy", "loadIconsAsync", "getTitle", "getPackItems", "fillItems", PluginsConstants.Settings.ITEMS, "adapter", "Lorg/telegram/ui/Components/UniversalAdapter;", "onClick", PluginsConstants.Settings.ITEM, PluginsConstants.Settings.VIEW, "position", "x", _UrlKt.FRAGMENT_ENCODE_SET, "y", "didReceivedNotification", "id", "account", "args", _UrlKt.FRAGMENT_ENCODE_SET, "(II[Ljava/lang/Object;)V", "onBackPressed", "invoked", "Companion", "EditorIconCell", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nIconPacksEditorActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IconPacksEditorActivity.kt\ncom/exteragram/messenger/icons/ui/IconPacksEditorActivity\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,389:1\n14113#2,3:390\n1#3:393\n1924#4,3:394\n1021#4,2:397\n*S KotlinDebug\n*F\n+ 1 IconPacksEditorActivity.kt\ncom/exteragram/messenger/icons/ui/IconPacksEditorActivity\n*L\n176#1:390,3\n229#1:394,3\n209#1:397,2\n*E\n"})
public class IconPacksEditorActivity extends BasePreferencesActivity implements NotificationCenter.NotificationCenterDelegate {
    private static final ArrayList<UItem> cachedIconItems = new ArrayList<>();
    private static boolean isIconsLoaded;
    private static boolean isLoading;
    private int iconFilter;
    private IconPack iconPack;
    private ActionBarMenuItem otherItem;
    private ArrayList<UItem> packItems;
    private IconPack packItemsFor;
    private String query;
    private Runnable searchRunnable;
    private boolean searching;
    private final ActionBarMenuSubItem[] filterItems = new ActionBarMenuSubItem[3];
    private String[] packItemLowerNames = new String[0];

    public IconPacksEditorActivity(IconPack iconPack) {
        this.iconPack = iconPack;
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity, org.telegram.ui.ActionBar.BaseFragment
    public View createView(final Context context) {
        View viewCreateView = super.createView(context);
        ActionBarMenu actionBarMenuCreateMenu = this.actionBar.createMenu();
        actionBarMenuCreateMenu.addItem(0, C2807R.drawable.outline_header_search).setIsSearchField(true).setActionBarMenuItemSearchListener(new IconPacksEditorActivity$createView$searchItem$1(this)).setSearchPaddingStart(7);
        ActionBarMenuItem actionBarMenuItemAddItem = actionBarMenuCreateMenu.addItem(3, C2807R.drawable.ic_ab_other);
        this.otherItem = actionBarMenuItemAddItem;
        actionBarMenuItemAddItem.addSwipeBackItem(C2807R.drawable.msg_select, null, LocaleController.getString(C2807R.string.IconPickerFilter), createFilterLayout(context));
        actionBarMenuItemAddItem.addSubItem(1, C2807R.drawable.msg_edit, LocaleController.getString(C2807R.string.Edit));
        if (ExteraConfig.getEditingIconPackId() != null) {
            ActionBarMenuSubItem actionBarMenuSubItemAddSubItem = actionBarMenuItemAddItem.addSubItem(2, C2807R.drawable.ic_ab_done, LocaleController.getString(C2807R.string.IconPickerSaveAndExit));
            int i = Theme.key_featuredStickers_addButtonPressed;
            actionBarMenuSubItemAddSubItem.setColors(getThemedColor(i), getThemedColor(i));
        }
        this.actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: com.exteragram.messenger.icons.ui.IconPacksEditorActivity.createView.1
            @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int id) {
                if (id == -1) {
                    IconPacksEditorActivity.this.finishFragment();
                    return;
                }
                if (id == 1) {
                    IconPacksEditorActivity iconPacksEditorActivity = IconPacksEditorActivity.this;
                    new NewIconPackBottomSheet(iconPacksEditorActivity, context, iconPacksEditorActivity.iconPack).show();
                } else {
                    if (id != 2) {
                        return;
                    }
                    ExteraConfig.setEditingIconPackId(null);
                    Activity parentActivity = IconPacksEditorActivity.this.getParentActivity();
                    LaunchActivity launchActivity = parentActivity instanceof LaunchActivity ? (LaunchActivity) parentActivity : null;
                    if (launchActivity != null) {
                        IconPickerController.setActive(launchActivity, false);
                    }
                    IconPacksEditorActivity.this.finishFragment();
                }
            }
        });
        return viewCreateView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateAdapter() {
        UniversalAdapter universalAdapter;
        if (this.fragmentView == null || (universalAdapter = getListView$TMessagesProj().adapter) == null) {
            return;
        }
        universalAdapter.update(true);
    }

    private final ActionBarPopupWindow.ActionBarPopupWindowLayout createFilterLayout(Context context) {
        ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = new ActionBarPopupWindow.ActionBarPopupWindowLayout(context, 0, this.resourceProvider);
        actionBarPopupWindowLayout.setFitItems(true);
        ActionBarMenuItem.addItem(actionBarPopupWindowLayout, C2807R.drawable.msg_arrow_back, LocaleController.getString(C2807R.string.Back), false, this.resourceProvider).setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.icons.ui.IconPacksEditorActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                IconPacksEditorActivity.m2639$r8$lambda$7Bzs4DV0Xa7qKoQ3e9Qk0UYws(this.f$0, view);
            }
        });
        View viewAddGap = ActionBarMenuItem.addGap(0, actionBarPopupWindowLayout);
        viewAddGap.setLayoutParams(LayoutHelper.createLinear(-1, 8));
        viewAddGap.setBackgroundColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuSeparator));
        createFilterItem(actionBarPopupWindowLayout, LocaleController.getString(C2807R.string.IconPickerAllIcons), 0);
        createFilterItem(actionBarPopupWindowLayout, LocaleController.getString(C2807R.string.IconPickerReplacedIcons), 1);
        createFilterItem(actionBarPopupWindowLayout, LocaleController.getString(C2807R.string.IconPickerNotReplacedIcons), 2);
        updateFilterChecks();
        return actionBarPopupWindowLayout;
    }

    /* JADX INFO: renamed from: $r8$lambda$7Bzs4DV-0Xa7qKoQ3-e9Qk0UYws, reason: not valid java name */
    public static void m2639$r8$lambda$7Bzs4DV0Xa7qKoQ3e9Qk0UYws(IconPacksEditorActivity iconPacksEditorActivity, View view) {
        ActionBarPopupWindow.ActionBarPopupWindowLayout popupLayout;
        PopupSwipeBackLayout swipeBack;
        ActionBarMenuItem actionBarMenuItem = iconPacksEditorActivity.otherItem;
        if (actionBarMenuItem == null || (popupLayout = actionBarMenuItem.getPopupLayout()) == null || (swipeBack = popupLayout.getSwipeBack()) == null) {
            return;
        }
        swipeBack.closeForeground();
    }

    private final void createFilterItem(ActionBarPopupWindow.ActionBarPopupWindowLayout layout, String text, final int filter) {
        ActionBarMenuSubItem actionBarMenuSubItem = new ActionBarMenuSubItem(layout.getContext(), true, false, false, this.resourceProvider);
        actionBarMenuSubItem.setTextAndIcon(text, 0);
        actionBarMenuSubItem.setMinimumWidth(AndroidUtilities.dp(196.0f));
        layout.addView((View) actionBarMenuSubItem, LayoutHelper.createLinear(-1, 48));
        actionBarMenuSubItem.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.icons.ui.IconPacksEditorActivity$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.setIconFilter(filter);
            }
        });
        this.filterItems[filter] = actionBarMenuSubItem;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setIconFilter(int filter) {
        if (this.iconFilter == filter) {
            return;
        }
        this.iconFilter = filter;
        updateFilterChecks();
        updateAdapter();
    }

    private final void updateFilterChecks() {
        ActionBarMenuSubItem[] actionBarMenuSubItemArr = this.filterItems;
        int length = actionBarMenuSubItemArr.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            ActionBarMenuSubItem actionBarMenuSubItem = actionBarMenuSubItemArr[i];
            int i3 = i2 + 1;
            if (actionBarMenuSubItem != null) {
                actionBarMenuSubItem.setChecked(this.iconFilter == i2);
            }
            i++;
            i2 = i3;
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.iconPackUpdated);
        loadIconsAsync();
        return super.onFragmentCreate();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.iconPackUpdated);
        super.onFragmentDestroy();
    }

    private final void loadIconsAsync() {
        if ((!isIconsLoaded || cachedIconItems.isEmpty()) && !isLoading) {
            isLoading = true;
            Utilities.globalQueue.postRunnable(new Runnable() { // from class: com.exteragram.messenger.icons.ui.IconPacksEditorActivity$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    IconPacksEditorActivity.m2637$r8$lambda$1D1TkBWKeycW3UIMgBeZ5aqz0E(this.f$0);
                }
            });
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$1D1TkBWKe-ycW3UIMgBeZ5aqz0E, reason: not valid java name */
    public static void m2637$r8$lambda$1D1TkBWKeycW3UIMgBeZ5aqz0E(final IconPacksEditorActivity iconPacksEditorActivity) {
        HashMap map = new HashMap(IconManager.INSTANCE.getSystemIcons());
        if (map.isEmpty()) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.icons.ui.IconPacksEditorActivity$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    IconPacksEditorActivity.m2638$r8$lambda$69mJBxZl5O5EW_Nl6tO4arW8Ac();
                }
            });
            return;
        }
        final ArrayList arrayList = new ArrayList(1500);
        for (Map.Entry entry : map.entrySet()) {
            arrayList.add(EditorIconCell.Factory.INSTANCE.asIcon(((Integer) entry.getValue()).intValue(), (String) entry.getKey(), null));
        }
        if (arrayList.size() > 1) {
            CollectionsKt.sortWith(arrayList, new Comparator() { // from class: com.exteragram.messenger.icons.ui.IconPacksEditorActivity$loadIconsAsync$lambda$6$$inlined$sortBy$1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    return ComparisonsKt.compareValues(((UItem) t).text.toString(), ((UItem) t2).text.toString());
                }
            });
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.icons.ui.IconPacksEditorActivity$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                IconPacksEditorActivity.m2640$r8$lambda$EYr2Y6g3Q1c1cfyqK3hsYGcNo(arrayList, iconPacksEditorActivity);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$69mJBxZl5O5EW_Nl6tO4arW-8Ac, reason: not valid java name */
    public static void m2638$r8$lambda$69mJBxZl5O5EW_Nl6tO4arW8Ac() {
        isLoading = false;
        IconManager.INSTANCE.initialize(true);
    }

    /* JADX INFO: renamed from: $r8$lambda$EYr2Y6g3-Q1c1cfyqK3hs-YGcNo, reason: not valid java name */
    public static void m2640$r8$lambda$EYr2Y6g3Q1c1cfyqK3hsYGcNo(ArrayList arrayList, IconPacksEditorActivity iconPacksEditorActivity) {
        ArrayList<UItem> arrayList2 = cachedIconItems;
        arrayList2.clear();
        arrayList2.addAll(arrayList);
        isIconsLoaded = true;
        isLoading = false;
        iconPacksEditorActivity.packItems = null;
        iconPacksEditorActivity.updateAdapter();
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public String getTitle() {
        String name;
        IconPack iconPack = this.iconPack;
        return (iconPack == null || (name = iconPack.getName()) == null) ? LocaleController.getString(C2807R.string.NewIconPack) : name;
    }

    private final ArrayList<UItem> getPackItems() {
        String lowerCase;
        String string;
        ArrayList<UItem> arrayList = this.packItems;
        if (arrayList != null && Intrinsics.areEqual(this.packItemsFor, this.iconPack)) {
            return arrayList;
        }
        ArrayList<UItem> arrayList2 = cachedIconItems;
        ArrayList<UItem> arrayList3 = new ArrayList<>(arrayList2.size());
        int size = arrayList2.size();
        String[] strArr = new String[size];
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            strArr[i2] = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        ArrayList<UItem> arrayList4 = cachedIconItems;
        int size2 = arrayList4.size();
        int i3 = 0;
        while (i3 < size2) {
            UItem uItem = arrayList4.get(i3);
            i3++;
            int i4 = i + 1;
            if (i < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            UItem uItem2 = uItem;
            arrayList3.add(EditorIconCell.Factory.INSTANCE.asIcon(uItem2.id, uItem2.text, this.iconPack));
            CharSequence charSequence = uItem2.text;
            if (charSequence == null || (string = charSequence.toString()) == null || (lowerCase = string.toLowerCase(Locale.getDefault())) == null) {
                lowerCase = _UrlKt.FRAGMENT_ENCODE_SET;
            }
            strArr[i] = lowerCase;
            i = i4;
        }
        this.packItems = arrayList3;
        this.packItemLowerNames = strArr;
        this.packItemsFor = this.iconPack;
        return arrayList3;
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x0075  */
    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void fillItems(ArrayList<UItem> items, UniversalAdapter adapter) {
        if (getContext() == null || !isIconsLoaded) {
            return;
        }
        ArrayList<UItem> packItems = getPackItems();
        String str = this.query;
        String lowerCase = (!this.searching || str == null || str.length() == 0) ? null : str.toLowerCase(Locale.getDefault());
        IconPack iconPack = this.iconPack;
        Map<String, String> icons = iconPack != null ? iconPack.getIcons() : null;
        int size = packItems.size();
        for (int i = 0; i < size; i++) {
            if (lowerCase == null || StringsKt.contains$default((CharSequence) this.packItemLowerNames[i], (CharSequence) lowerCase, false, 2, (Object) null)) {
                UItem uItem = packItems.get(i);
                if (this.iconFilter != 0) {
                    CharSequence charSequence = uItem.text;
                    String string = charSequence != null ? charSequence.toString() : null;
                    boolean z = (string == null || icons == null || !icons.containsKey(string)) ? false : true;
                    int i2 = this.iconFilter;
                    if ((i2 != 1 || z) && (i2 != 2 || !z)) {
                    }
                } else {
                    items.add(uItem);
                }
            }
        }
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public void onClick(UItem item, View view, int position, float x, float y) {
        IconManager.INSTANCE.showReplaceAlert(getContext(), item.id, this.iconPack);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int id, int account, Object... args) {
        if (id == NotificationCenter.iconPackUpdated && getContext() != null) {
            if (!isIconsLoaded) {
                loadIconsAsync();
            }
            IconPack iconPack = this.iconPack;
            if (iconPack != null) {
                IconPack iconPackFindPackById = IconManager.INSTANCE.findPackById(iconPack.getId());
                if (iconPackFindPackById == null) {
                    finishFragment();
                    return;
                } else {
                    this.iconPack = iconPackFindPackById;
                    this.actionBar.setTitle(getTitle());
                }
            }
            Parcelable parcelableOnSaveInstanceState = this.fragmentView != null ? getLayoutManager().onSaveInstanceState() : null;
            updateAdapter();
            if (parcelableOnSaveInstanceState != null) {
                getLayoutManager().onRestoreInstanceState(parcelableOnSaveInstanceState);
            }
        }
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0001\nB\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity$EditorIconCell;", "Lorg/telegram/ui/Cells/TextCell;", "context", "Landroid/content/Context;", "resourcesProvider", "Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;", "<init>", "(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V", "boundResId", _UrlKt.FRAGMENT_ENCODE_SET, "Factory", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    @SuppressLint({"ViewConstructor"})
    public static final class EditorIconCell extends TextCell {
        private int boundResId;

        public EditorIconCell(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context, resourcesProvider);
        }

        @Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u001e2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001eB\u0007¢\u0006\u0004\b\u0003\u0010\u0004J4\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012H\u0096\u0002J\u0018\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012H\u0016J4\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u00102\b\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\b\u0010\b\u001a\u0004\u0018\u00010\u001dH\u0016¨\u0006\u001f"}, d2 = {"Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity$EditorIconCell$Factory;", "Lorg/telegram/ui/Components/UItem$UItemFactory;", "Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity$EditorIconCell;", "<init>", "()V", "createView", "context", "Landroid/content/Context;", "listView", "Lorg/telegram/ui/Components/RecyclerListView;", "currentAccount", _UrlKt.FRAGMENT_ENCODE_SET, "classGuid", "resourcesProvider", "Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;", "equals", _UrlKt.FRAGMENT_ENCODE_SET, "a", "Lorg/telegram/ui/Components/UItem;", "b", "contentsEquals", "bindView", _UrlKt.FRAGMENT_ENCODE_SET, PluginsConstants.Settings.VIEW, "Landroid/view/View;", PluginsConstants.Settings.ITEM, PluginsConstants.Settings.TYPE_DIVIDER, "adapter", "Lorg/telegram/ui/Components/UniversalAdapter;", "Lorg/telegram/ui/Components/UniversalRecyclerView;", "Companion", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
        public static final class Factory extends UItem.UItemFactory<EditorIconCell> {

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);

            @JvmStatic
            public static final UItem asIcon(int i, CharSequence charSequence, IconPack iconPack) {
                return INSTANCE.asIcon(i, charSequence, iconPack);
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public EditorIconCell createView(Context context, RecyclerListView listView, int currentAccount, int classGuid, Theme.ResourcesProvider resourcesProvider) {
                return new EditorIconCell(context, resourcesProvider);
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public boolean equals(UItem a2, UItem b2) {
                return a2.id == b2.id;
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public boolean contentsEquals(UItem a2, UItem b2) {
                if (a2.id != b2.id || !TextUtils.equals(a2.text, b2.text)) {
                    return false;
                }
                Object obj = a2.object;
                IconPack iconPack = obj instanceof IconPack ? (IconPack) obj : null;
                Object obj2 = b2.object;
                IconPack iconPack2 = obj2 instanceof IconPack ? (IconPack) obj2 : null;
                if (iconPack == iconPack2) {
                    return true;
                }
                if (iconPack == null || iconPack2 == null) {
                    return false;
                }
                String string = a2.text.toString();
                return Intrinsics.areEqual(iconPack.getIcons().get(string), iconPack2.getIcons().get(string));
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public void bindView(View view, UItem item, boolean divider, UniversalAdapter adapter, UniversalRecyclerView listView) {
                Drawable drawable;
                Drawable cachedDrawable;
                final EditorIconCell editorIconCell = (EditorIconCell) view;
                editorIconCell.reset();
                editorIconCell.boundResId = item.id;
                Resources resources = editorIconCell.getContext().getResources();
                boolean z = resources instanceof ExteraResources;
                int i = item.id;
                if (z) {
                    drawable = ((ExteraResources) resources).getOriginalDrawable(i);
                } else {
                    drawable = ResourcesCompat.getDrawable(resources, i, null);
                }
                Object obj = item.object;
                IconPack iconPack = obj instanceof IconPack ? (IconPack) obj : null;
                if (iconPack != null) {
                    cachedDrawable = IconManager.INSTANCE.getCachedPackIconDrawable(iconPack, item.id);
                } else {
                    cachedDrawable = IconManager.INSTANCE.getCachedDrawable(item.id);
                }
                editorIconCell.setTextAndIconAndValueDrawable(item.text, drawable != null ? drawable.mutate() : null, cachedDrawable, divider);
                editorIconCell.setIsIcon(true);
                editorIconCell.setColors(Theme.key_windowBackgroundWhiteGrayIcon, Theme.key_windowBackgroundWhiteBlackText);
                editorIconCell.setOffsetFromImage(68);
                if (cachedDrawable == null) {
                    final int i2 = item.id;
                    Utilities.Callback<Drawable> callback = new Utilities.Callback() { // from class: com.exteragram.messenger.icons.ui.IconPacksEditorActivity$EditorIconCell$Factory$$ExternalSyntheticLambda0
                        @Override // org.telegram.messenger.Utilities.Callback
                        public final void run(Object obj2) {
                            IconPacksEditorActivity.EditorIconCell.Factory.m2641$r8$lambda$dShbUNjaZCMtCzJXPQ2TkFICTA(editorIconCell, i2, (Drawable) obj2);
                        }
                    };
                    if (iconPack != null) {
                        IconManager.INSTANCE.requestPackIconDrawable(iconPack, i2, callback);
                    } else {
                        IconManager.INSTANCE.requestDrawable(i2, callback);
                    }
                }
            }

            /* JADX INFO: renamed from: $r8$lambda$dS-hbUNjaZCMtCzJXPQ2TkFICTA, reason: not valid java name */
            public static void m2641$r8$lambda$dShbUNjaZCMtCzJXPQ2TkFICTA(EditorIconCell editorIconCell, int i, Drawable drawable) {
                if (editorIconCell.boundResId == i) {
                    editorIconCell.getValueImageView().setImageDrawable(drawable);
                }
            }

            @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J$\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0007¨\u0006\f"}, d2 = {"Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity$EditorIconCell$Factory$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "asIcon", "Lorg/telegram/ui/Components/UItem;", "id", _UrlKt.FRAGMENT_ENCODE_SET, "text", _UrlKt.FRAGMENT_ENCODE_SET, "pack", "Lcom/exteragram/messenger/icons/IconPack;", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                @JvmStatic
                public final UItem asIcon(int id, CharSequence text, IconPack pack) {
                    UItem uItemOfFactory = UItem.ofFactory(Factory.class);
                    uItemOfFactory.id = id;
                    uItemOfFactory.text = text;
                    uItemOfFactory.object = pack;
                    return uItemOfFactory;
                }
            }

            static {
                UItem.UItemFactory.setup(new Factory());
            }
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onBackPressed(boolean invoked) {
        if (!this.searching) {
            return super.onBackPressed(invoked);
        }
        if (!invoked) {
            return false;
        }
        this.actionBar.closeSearchField();
        return false;
    }
}
