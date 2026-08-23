package com.exteragram.messenger.icons.p012ui;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.icons.ExteraResources;
import com.exteragram.messenger.icons.IconManager;
import com.exteragram.messenger.icons.IconPack;
import com.exteragram.messenger.icons.p012ui.components.NewIconPackBottomSheet;
import com.exteragram.messenger.icons.p012ui.picker.IconPickerController;
import com.exteragram.messenger.preferences.BasePreferencesActivity;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.function.Function;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.ActionBar;
import org.telegram.p029ui.ActionBar.ActionBarMenu;
import org.telegram.p029ui.ActionBar.ActionBarMenuItem;
import org.telegram.p029ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Cells.TextCell;
import org.telegram.p029ui.Components.RecyclerListView;
import org.telegram.p029ui.Components.UItem;
import org.telegram.p029ui.Components.UniversalAdapter;
import org.telegram.p029ui.Components.UniversalRecyclerView;
import org.telegram.p029ui.LaunchActivity;
import p022j$.util.Comparator;
import p022j$.util.Objects;
import p022j$.util.concurrent.ConcurrentHashMap;
import p022j$.util.function.Function$CC;

/* JADX INFO: loaded from: classes4.dex */
public class IconPacksEditorActivity extends BasePreferencesActivity implements NotificationCenter.NotificationCenterDelegate {
    private static final ArrayList cachedIconItems = new ArrayList();
    private static boolean isIconsLoaded = false;
    private static boolean isLoading = false;
    private IconPack iconPack;
    private ActionBarMenuItem otherItem;
    private String query;
    private Runnable searchRunnable;
    private boolean searching;

    public IconPacksEditorActivity(IconPack iconPack) {
        this.iconPack = iconPack;
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity, org.telegram.p029ui.ActionBar.BaseFragment
    public View createView(Context context) {
        super.createView(context);
        ActionBarMenu actionBarMenuCreateMenu = this.actionBar.createMenu();
        actionBarMenuCreateMenu.addItem(0, C2888R.drawable.ic_ab_search).setIsSearchField(true).setActionBarMenuItemSearchListener(new C11281());
        ActionBarMenuItem actionBarMenuItemAddItem = actionBarMenuCreateMenu.addItem(3, C2888R.drawable.ic_ab_other);
        this.otherItem = actionBarMenuItemAddItem;
        actionBarMenuItemAddItem.addSubItem(1, C2888R.drawable.msg_edit, LocaleController.getString(C2888R.string.Edit));
        if (ExteraConfig.editingIconPackId != null) {
            ActionBarMenuSubItem actionBarMenuSubItemAddSubItem = this.otherItem.addSubItem(2, C2888R.drawable.ic_ab_done, LocaleController.getString(C2888R.string.IconPickerSaveAndExit));
            int i = Theme.key_featuredStickers_addButtonPressed;
            actionBarMenuSubItemAddSubItem.setColors(getThemedColor(i), getThemedColor(i));
        }
        this.actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: com.exteragram.messenger.icons.ui.IconPacksEditorActivity.2
            @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i2) {
                if (i2 == -1) {
                    IconPacksEditorActivity.this.finishFragment();
                    return;
                }
                if (i2 != 2) {
                    if (i2 == 1) {
                        IconPacksEditorActivity iconPacksEditorActivity = IconPacksEditorActivity.this;
                        new NewIconPackBottomSheet(iconPacksEditorActivity, iconPacksEditorActivity.getContext(), IconPacksEditorActivity.this.iconPack).show();
                        return;
                    }
                    return;
                }
                SharedPreferences.Editor editor = ExteraConfig.editor;
                ExteraConfig.editingIconPackId = null;
                editor.putString("editingIconPackId", null).apply();
                if (IconPacksEditorActivity.this.getParentActivity() instanceof LaunchActivity) {
                    IconPickerController.setActive((LaunchActivity) IconPacksEditorActivity.this.getParentActivity(), false);
                }
                IconPacksEditorActivity.this.finishFragment();
            }
        });
        return this.fragmentView;
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.icons.ui.IconPacksEditorActivity$1 */
    class C11281 extends ActionBarMenuItem.ActionBarMenuItemSearchListener {
        C11281() {
        }

        @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
        public void onSearchExpand() {
            IconPacksEditorActivity.this.searching = true;
            if (IconPacksEditorActivity.this.otherItem != null) {
                IconPacksEditorActivity.this.otherItem.setVisibility(8);
            }
        }

        @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
        public void onSearchCollapse() {
            IconPacksEditorActivity.this.searching = false;
            IconPacksEditorActivity.this.query = null;
            if (IconPacksEditorActivity.this.otherItem != null) {
                IconPacksEditorActivity.this.otherItem.setVisibility(0);
            }
            IconPacksEditorActivity.this.updateAdapter();
        }

        @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
        public void onTextChanged(final EditText editText) {
            if (IconPacksEditorActivity.this.searchRunnable != null) {
                AndroidUtilities.cancelRunOnUIThread(IconPacksEditorActivity.this.searchRunnable);
            }
            IconPacksEditorActivity.this.searchRunnable = new Runnable() { // from class: com.exteragram.messenger.icons.ui.IconPacksEditorActivity$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onTextChanged$0(editText);
                }
            };
            AndroidUtilities.runOnUIThread(IconPacksEditorActivity.this.searchRunnable, 200L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onTextChanged$0(EditText editText) {
            IconPacksEditorActivity.this.query = editText.getText().toString();
            IconPacksEditorActivity.this.updateAdapter();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateAdapter() {
        UniversalAdapter universalAdapter;
        UniversalRecyclerView universalRecyclerView = this.listView;
        if (universalRecyclerView == null || (universalAdapter = universalRecyclerView.adapter) == null) {
            return;
        }
        universalAdapter.update(true);
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.iconPackUpdated);
        loadIconsAsync();
        return super.onFragmentCreate();
    }

    private void loadIconsAsync() {
        if ((!isIconsLoaded || cachedIconItems.isEmpty()) && !isLoading) {
            isLoading = true;
            Utilities.globalQueue.postRunnable(new Runnable() { // from class: com.exteragram.messenger.icons.ui.IconPacksEditorActivity$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$loadIconsAsync$2();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadIconsAsync$2() {
        final ArrayList arrayList = new ArrayList(1500);
        ConcurrentHashMap systemIcons = IconManager.INSTANCE.getSystemIcons();
        if (systemIcons.isEmpty()) {
            for (Field field : C2888R.drawable.class.getFields()) {
                try {
                    String name = field.getName();
                    if (!IconManager.INSTANCE.isBlacklisted(name)) {
                        systemIcons.put(name, Integer.valueOf(field.getInt(null)));
                    }
                } catch (Exception unused) {
                }
            }
        }
        Iterator it = systemIcons.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            try {
                ApplicationLoader.applicationContext.getResources().getResourceName(((Integer) entry.getValue()).intValue());
                arrayList.add(EditorIconCell.Factory.asIcon(((Integer) entry.getValue()).intValue(), (CharSequence) entry.getKey(), null));
            } catch (Exception unused2) {
            }
        }
        Collections.sort(arrayList, Comparator.CC.comparing(new Function() { // from class: com.exteragram.messenger.icons.ui.IconPacksEditorActivity$$ExternalSyntheticLambda1
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((UItem) obj).text.toString();
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }));
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.icons.ui.IconPacksEditorActivity$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadIconsAsync$1(arrayList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadIconsAsync$1(ArrayList arrayList) {
        ArrayList arrayList2 = cachedIconItems;
        arrayList2.clear();
        arrayList2.addAll(arrayList);
        isIconsLoaded = true;
        isLoading = false;
        updateAdapter();
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public String getTitle() {
        IconPack iconPack = this.iconPack;
        return iconPack == null ? LocaleController.getString(C2888R.string.NewIconPack) : iconPack.getName();
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    protected void fillItems(ArrayList arrayList, UniversalAdapter universalAdapter) {
        if (getContext() != null && isIconsLoaded) {
            ArrayList arrayList2 = cachedIconItems;
            if (this.searching && !TextUtils.isEmpty(this.query)) {
                String lowerCase = this.query.toLowerCase();
                ArrayList arrayList3 = new ArrayList();
                int i = 0;
                while (true) {
                    ArrayList arrayList4 = cachedIconItems;
                    if (i >= arrayList4.size()) {
                        break;
                    }
                    UItem uItem = (UItem) arrayList4.get(i);
                    CharSequence charSequence = uItem.text;
                    if (charSequence != null && charSequence.toString().toLowerCase().contains(lowerCase)) {
                        arrayList3.add(uItem);
                    }
                    i++;
                }
                arrayList2 = arrayList3;
            }
            for (int i2 = 0; i2 < arrayList2.size(); i2++) {
                UItem uItem2 = (UItem) arrayList2.get(i2);
                arrayList.add(EditorIconCell.Factory.asIcon(uItem2.f2105id, uItem2.text, this.iconPack));
            }
        }
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    protected void onClick(UItem uItem, View view, int i, float f, float f2) {
        IconManager.INSTANCE.showReplaceAlert(getContext(), uItem.f2105id, this.iconPack);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        UniversalRecyclerView universalRecyclerView;
        if (i != NotificationCenter.iconPackUpdated || getContext() == null) {
            return;
        }
        IconPack iconPack = this.iconPack;
        if (iconPack != null) {
            IconPack iconPackFindPackById = IconManager.INSTANCE.findPackById(iconPack.getId());
            if (iconPackFindPackById != null) {
                this.iconPack = iconPackFindPackById;
            } else {
                finishFragment();
                return;
            }
        }
        UniversalRecyclerView universalRecyclerView2 = this.listView;
        Parcelable parcelableOnSaveInstanceState = (universalRecyclerView2 == null || universalRecyclerView2.getLayoutManager() == null) ? null : this.listView.getLayoutManager().onSaveInstanceState();
        updateAdapter();
        if (parcelableOnSaveInstanceState == null || (universalRecyclerView = this.listView) == null || universalRecyclerView.getLayoutManager() == null) {
            return;
        }
        this.listView.getLayoutManager().onRestoreInstanceState(parcelableOnSaveInstanceState);
    }

    public static class EditorIconCell extends TextCell {
        public EditorIconCell(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context, resourcesProvider);
        }

        public static class Factory extends UItem.UItemFactory {
            static {
                UItem.UItemFactory.setup(new Factory());
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public EditorIconCell createView(Context context, RecyclerListView recyclerListView, int i, int i2, Theme.ResourcesProvider resourcesProvider) {
                return new EditorIconCell(context, resourcesProvider);
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public boolean equals(UItem uItem, UItem uItem2) {
                return uItem.f2105id == uItem2.f2105id;
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public boolean contentsEquals(UItem uItem, UItem uItem2) {
                if (uItem.f2105id != uItem2.f2105id || !TextUtils.equals(uItem.text, uItem2.text)) {
                    return false;
                }
                Object obj = uItem.object;
                IconPack iconPack = obj instanceof IconPack ? (IconPack) obj : null;
                Object obj2 = uItem2.object;
                IconPack iconPack2 = obj2 instanceof IconPack ? (IconPack) obj2 : null;
                if (iconPack == iconPack2) {
                    return true;
                }
                if (iconPack == null || iconPack2 == null) {
                    return false;
                }
                String string = uItem.text.toString();
                return Objects.equals((String) iconPack.getIcons().get(string), (String) iconPack2.getIcons().get(string));
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public void bindView(View view, UItem uItem, boolean z, UniversalAdapter universalAdapter, UniversalRecyclerView universalRecyclerView) {
                Drawable drawable;
                Drawable drawable2;
                EditorIconCell editorIconCell = (EditorIconCell) view;
                editorIconCell.reset();
                if (editorIconCell.getContext().getResources() instanceof ExteraResources) {
                    drawable = ((ExteraResources) editorIconCell.getContext().getResources()).getOriginalDrawable(uItem.f2105id);
                } else {
                    drawable = editorIconCell.getContext().getResources().getDrawable(uItem.f2105id);
                }
                Object obj = uItem.object;
                if (obj instanceof IconPack) {
                    drawable2 = IconManager.INSTANCE.getPackIconDrawable((IconPack) obj, uItem.f2105id);
                } else {
                    drawable2 = IconManager.INSTANCE.getDrawable(uItem.f2105id, AndroidUtilities.displayMetrics.densityDpi, null);
                }
                if (drawable != null) {
                    drawable = drawable.mutate();
                }
                editorIconCell.setTextAndIconAndValueDrawable(uItem.text, drawable, drawable2, z);
                editorIconCell.setIsIcon(true);
                editorIconCell.setColors(Theme.key_windowBackgroundWhiteGrayIcon, Theme.key_windowBackgroundWhiteBlackText);
                editorIconCell.setOffsetFromImage(68);
            }

            public static UItem asIcon(int i, CharSequence charSequence, Object obj) {
                UItem uItemOfFactory = UItem.ofFactory(Factory.class);
                uItemOfFactory.f2105id = i;
                uItemOfFactory.text = charSequence;
                uItemOfFactory.object = obj;
                return uItemOfFactory;
            }
        }
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public boolean onBackPressed(boolean z) {
        if (!this.searching) {
            return super.onBackPressed(z);
        }
        if (!z) {
            return false;
        }
        this.actionBar.closeSearchField();
        return false;
    }
}
