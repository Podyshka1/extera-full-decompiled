package com.exteragram.messenger.icons.ui;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.core.content.FileProvider;
import androidx.recyclerview.widget.RecyclerView;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.icons.BaseIconPacks;
import com.exteragram.messenger.icons.IconManager;
import com.exteragram.messenger.icons.IconPack;
import com.exteragram.messenger.icons.ui.components.IconPackCell;
import com.exteragram.messenger.icons.ui.components.NewIconPackBottomSheet;
import com.exteragram.messenger.icons.ui.picker.IconPickerController;
import com.exteragram.messenger.plugins.PluginsConstants;
import com.exteragram.messenger.preferences.BasePreferencesActivity;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.FragmentFloatingButton;
import org.telegram.ui.Components.ItemOptions;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;
import org.telegram.ui.LaunchActivity;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\b\u0010\u000b\u001a\u00020\bH\u0016J\b\u0010\f\u001a\u00020\rH\u0016J5\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0016\u0010\u0012\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00140\u0013\"\u0004\u0018\u00010\u0014H\u0016¢\u0006\u0002\u0010\u0015J(\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u0010H\u0016J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0014J\u001e\u0010\u001f\u001a\u00020\r2\u0006\u0010 \u001a\u00020\u00102\f\u0010!\u001a\b\u0012\u0004\u0012\u00020#0\"H\u0002J\b\u0010$\u001a\u00020%H\u0016J\u001e\u0010&\u001a\u00020\r2\f\u0010'\u001a\b\u0012\u0004\u0012\u00020#0\"2\u0006\u0010(\u001a\u00020)H\u0014J<\u0010*\u001a\u00020\r2\f\u0010'\u001a\b\u0012\u0004\u0012\u00020#0\"2\u0006\u0010(\u001a\u00020)2\u0006\u0010+\u001a\u00020%2\f\u0010,\u001a\b\u0012\u0004\u0012\u00020%0-2\u0006\u0010.\u001a\u00020\bH\u0002J\u0016\u0010/\u001a\u00020\u00102\f\u0010,\u001a\b\u0012\u0004\u0012\u00020%0-H\u0002J\u0012\u00100\u001a\u0004\u0018\u0001012\u0006\u0010\u000f\u001a\u00020%H\u0002J0\u00102\u001a\u00020\r2\u0006\u00103\u001a\u00020#2\u0006\u00104\u001a\u00020\u001c2\u0006\u00105\u001a\u00020\u00102\u0006\u00106\u001a\u0002072\u0006\u00108\u001a\u000207H\u0014J0\u00109\u001a\u00020\b2\u0006\u00103\u001a\u00020#2\u0006\u00104\u001a\u00020\u001c2\u0006\u00105\u001a\u00020\u00102\u0006\u00106\u001a\u0002072\u0006\u00108\u001a\u000207H\u0014J\u0010\u0010:\u001a\u00020\r2\u0006\u0010;\u001a\u000201H\u0002J\u0010\u0010<\u001a\u00020\r2\u0006\u0010;\u001a\u000201H\u0002J\u0010\u0010=\u001a\u00020\r2\u0006\u0010;\u001a\u000201H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006>"}, d2 = {"Lcom/exteragram/messenger/icons/ui/IconPacksActivity;", "Lcom/exteragram/messenger/preferences/BasePreferencesActivity;", "Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;", "<init>", "()V", "floatingButton", "Lorg/telegram/ui/Components/FragmentFloatingButton;", "scrollUpdated", _UrlKt.FRAGMENT_ENCODE_SET, "reorderRunnable", "Ljava/lang/Runnable;", "onFragmentCreate", "onFragmentDestroy", _UrlKt.FRAGMENT_ENCODE_SET, "didReceivedNotification", "id", _UrlKt.FRAGMENT_ENCODE_SET, "account", "args", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "(II[Ljava/lang/Object;)V", "onInsets", "left", "top", "right", "bottom", "createView", "Landroid/view/View;", "context", "Landroid/content/Context;", "updateConfigFromReorder", "sectionId", "uItems", "Ljava/util/ArrayList;", "Lorg/telegram/ui/Components/UItem;", "getTitle", _UrlKt.FRAGMENT_ENCODE_SET, "fillItems", PluginsConstants.Settings.ITEMS, "adapter", "Lorg/telegram/ui/Components/UniversalAdapter;", "addCustomPacksSection", PluginsConstants.Settings.TYPE_HEADER, "ids", _UrlKt.FRAGMENT_ENCODE_SET, "reorderable", "countCustomPacks", "getPackById", "Lcom/exteragram/messenger/icons/IconPack;", "onClick", PluginsConstants.Settings.ITEM, PluginsConstants.Settings.VIEW, "position", "x", _UrlKt.FRAGMENT_ENCODE_SET, "y", "onLongClick", "openEditor", "pack", "sharePack", "confirmDeletePack", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nIconPacksActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IconPacksActivity.kt\ncom/exteragram/messenger/icons/ui/IconPacksActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,235:1\n1642#2,10:236\n1915#2:246\n1916#2:248\n1652#2:249\n296#2,2:250\n296#2,2:253\n1834#2,4:255\n1#3:247\n1#3:252\n*S KotlinDebug\n*F\n+ 1 IconPacksActivity.kt\ncom/exteragram/messenger/icons/ui/IconPacksActivity\n*L\n89#1:236,10\n89#1:246\n89#1:248\n89#1:249\n93#1:250,2\n119#1:253,2\n164#1:255,4\n89#1:247\n*E\n"})
public final class IconPacksActivity extends BasePreferencesActivity implements NotificationCenter.NotificationCenterDelegate {
    private FragmentFloatingButton floatingButton;
    private Runnable reorderRunnable;
    private boolean scrollUpdated;

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.iconPackUpdated);
        return super.onFragmentCreate();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        super.onFragmentDestroy();
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.iconPackUpdated);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int id, int account, Object... args) {
        UniversalAdapter universalAdapter;
        if (id != NotificationCenter.iconPackUpdated || this.fragmentView == null || (universalAdapter = getListView$TMessagesProj().adapter) == null) {
            return;
        }
        universalAdapter.update(true);
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity, org.telegram.ui.ActionBar.BaseFragment
    public void onInsets(int left, int top, int right, int bottom) {
        FragmentFloatingButton fragmentFloatingButton = this.floatingButton;
        if (fragmentFloatingButton == null) {
            fragmentFloatingButton = null;
        }
        fragmentFloatingButton.setTranslationY(-bottom);
        super.onInsets(left, top, right, bottom);
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity, org.telegram.ui.ActionBar.BaseFragment
    public View createView(final Context context) {
        View viewCreateView = super.createView(context);
        FragmentFloatingButton fragmentFloatingButton = new FragmentFloatingButton(context, this.resourceProvider);
        this.floatingButton = fragmentFloatingButton;
        fragmentFloatingButton.imageView.setImageResource(C2807R.drawable.msg_add);
        FragmentFloatingButton fragmentFloatingButton2 = this.floatingButton;
        if (fragmentFloatingButton2 == null) {
            fragmentFloatingButton2 = null;
        }
        fragmentFloatingButton2.setContentDescription(LocaleController.getString(C2807R.string.Add));
        FragmentFloatingButton fragmentFloatingButton3 = this.floatingButton;
        if (fragmentFloatingButton3 == null) {
            fragmentFloatingButton3 = null;
        }
        fragmentFloatingButton3.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.icons.ui.IconPacksActivity$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                new NewIconPackBottomSheet(this.f$0, context).show();
            }
        });
        FrameLayout frameLayout = viewCreateView instanceof FrameLayout ? (FrameLayout) viewCreateView : null;
        if (frameLayout != null) {
            FragmentFloatingButton fragmentFloatingButton4 = this.floatingButton;
            frameLayout.addView(fragmentFloatingButton4 != null ? fragmentFloatingButton4 : null, FragmentFloatingButton.createDefaultLayoutParams());
        }
        getListView$TMessagesProj().allowReorder(true);
        getListView$TMessagesProj().setReorderHandleOnly(true);
        getListView$TMessagesProj().listenReorder(new Utilities.Callback2() { // from class: com.exteragram.messenger.icons.ui.IconPacksActivity$$ExternalSyntheticLambda4
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.updateConfigFromReorder(((Integer) obj).intValue(), (ArrayList) obj2);
            }
        });
        getListView$TMessagesProj().setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.exteragram.messenger.icons.ui.IconPacksActivity.createView.3
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int dx, int dy) {
                if (dy != 0 && IconPacksActivity.this.scrollUpdated) {
                    FragmentFloatingButton fragmentFloatingButton5 = IconPacksActivity.this.floatingButton;
                    if (fragmentFloatingButton5 == null) {
                        fragmentFloatingButton5 = null;
                    }
                    fragmentFloatingButton5.setButtonVisible(dy < 0, true);
                }
                IconPacksActivity.this.scrollUpdated = true;
            }
        });
        return viewCreateView;
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public String getTitle() {
        return LocaleController.getString(C2807R.string.IconPacks);
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public void fillItems(ArrayList<UItem> items, UniversalAdapter adapter) {
        String str;
        ArrayList<String> iconPacksLayout = ExteraConfig.getIconPacksLayout();
        int size = iconPacksLayout.size();
        int i = 0;
        while (true) {
            str = null;
            if (i >= size) {
                break;
            }
            String str2 = iconPacksLayout.get(i);
            i++;
            if (StringsKt.startsWith$default(str2, "base.", false, 2, (Object) null)) {
                str = str2;
                break;
            }
        }
        String str3 = str;
        if (str3 == null) {
            str3 = "base.default";
        }
        adapter.whiteSectionStart();
        items.add(UItem.asHeader(LocaleController.getString(C2807R.string.BasePacks)));
        String[] strArr = {"base.default", "base.solar", "base.remix"};
        for (int i2 = 0; i2 < 3; i2++) {
            String str4 = strArr[i2];
            IconPack packById = getPackById(str4);
            if (packById != null) {
                UItem uItemAsIconPackCell = IconPackCell.Factory.asIconPackCell(packById);
                uItemAsIconPackCell.checked = Intrinsics.areEqual(str4, str3);
                items.add(uItemAsIconPackCell);
            }
        }
        adapter.whiteSectionEnd();
        items.add(UItem.asShadow(LocaleController.getString(C2807R.string.BaseIconPackInfo)));
        int iCountCustomPacks = countCustomPacks(ExteraConfig.getIconPacksLayout());
        if (iCountCustomPacks > 0) {
            addCustomPacksSection(items, adapter, LocaleController.getString(C2807R.string.EnabledPacks), ExteraConfig.getIconPacksLayout(), iCountCustomPacks > 1);
        }
        int iCountCustomPacks2 = countCustomPacks(ExteraConfig.getIconPacksHidden());
        if (iCountCustomPacks2 > 0) {
            if (iCountCustomPacks > 0) {
                items.add(UItem.asShadow());
            }
            addCustomPacksSection(items, adapter, LocaleController.getString(C2807R.string.AllPacks), ExteraConfig.getIconPacksHidden(), iCountCustomPacks2 > 1);
        }
        if (iCountCustomPacks > 0 || iCountCustomPacks2 > 0) {
            items.add(UItem.asShadow(LocaleController.getString(C2807R.string.IconPacksHint)));
        }
    }

    private final void addCustomPacksSection(ArrayList<UItem> items, UniversalAdapter adapter, String header, List<String> ids, boolean reorderable) {
        IconPack packById;
        adapter.whiteSectionStart();
        items.add(UItem.asHeader(header));
        if (reorderable) {
            adapter.reorderSectionStart();
        }
        for (String str : ids) {
            if (!StringsKt.startsWith$default(str, "base.", false, 2, (Object) null) && (packById = getPackById(str)) != null) {
                items.add(IconPackCell.Factory.asIconPackCell(packById).setReordering(reorderable));
            }
        }
        if (reorderable) {
            adapter.reorderSectionEnd();
        }
        adapter.whiteSectionEnd();
    }

    private final int countCustomPacks(List<String> ids) {
        List<String> list = ids;
        if ((list instanceof Collection) && list.isEmpty()) {
            return 0;
        }
        int i = 0;
        for (String str : list) {
            if (!StringsKt.startsWith$default(str, "base.", false, 2, (Object) null) && getPackById(str) != null && (i = i + 1) < 0) {
                CollectionsKt.throwCountOverflow();
            }
        }
        return i;
    }

    private final IconPack getPackById(String id) {
        return StringsKt.startsWith$default(id, "base.", false, 2, (Object) null) ? BaseIconPacks.INSTANCE.getBasePack(id) : IconManager.INSTANCE.findPackById(id);
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public void onClick(UItem item, View view, int position, float x, float y) {
        String id;
        Object obj = item.object;
        IconPack iconPack = obj instanceof IconPack ? (IconPack) obj : null;
        if (iconPack == null || (id = iconPack.getId()) == null) {
            return;
        }
        if (StringsKt.startsWith$default(id, "base.", false, 2, (Object) null)) {
            CollectionsKt.removeAll((List) ExteraConfig.getIconPacksLayout(), new Function1() { // from class: com.exteragram.messenger.icons.ui.IconPacksActivity$$ExternalSyntheticLambda8
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    return Boolean.valueOf(StringsKt.startsWith$default((String) obj2, "base.", false, 2, (Object) null));
                }
            });
            ExteraConfig.getIconPacksLayout().add(id);
        } else if (ExteraConfig.getIconPacksLayout().contains(id)) {
            ExteraConfig.getIconPacksLayout().remove(id);
            if (!ExteraConfig.getIconPacksHidden().contains(id)) {
                ExteraConfig.getIconPacksHidden().add(0, id);
            }
        } else if (ExteraConfig.getIconPacksHidden().contains(id)) {
            ExteraConfig.getIconPacksHidden().remove(id);
            ExteraConfig.getIconPacksLayout().add(0, id);
        }
        ExteraConfig.saveIconPacksLayout();
        IconManager.INSTANCE.initialize(true);
        UniversalAdapter universalAdapter = getListView$TMessagesProj().adapter;
        if (universalAdapter != null) {
            universalAdapter.update(true);
        }
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public boolean onLongClick(UItem item, View view, int position, float x, float y) {
        Object obj = item.object;
        final IconPack iconPack = obj instanceof IconPack ? (IconPack) obj : null;
        if (iconPack == null) {
            return super.onLongClick(item, view, position, x, y);
        }
        if (StringsKt.startsWith$default(iconPack.getId(), "base.", false, 2, (Object) null)) {
            return false;
        }
        ItemOptions itemOptionsMakeOptions = ItemOptions.makeOptions(this, view);
        itemOptionsMakeOptions.addIf(ExteraConfig.getIconPacksLayout().contains(iconPack.getId()), C2807R.drawable.msg_edit, LocaleController.getString(C2807R.string.Edit), new Runnable() { // from class: com.exteragram.messenger.icons.ui.IconPacksActivity$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.openEditor(iconPack);
            }
        });
        itemOptionsMakeOptions.add(C2807R.drawable.msg_share, LocaleController.getString(C2807R.string.ShareFile), new Runnable() { // from class: com.exteragram.messenger.icons.ui.IconPacksActivity$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.sharePack(iconPack);
            }
        });
        itemOptionsMakeOptions.add(C2807R.drawable.msg_delete, (CharSequence) LocaleController.getString(C2807R.string.Delete), true, new Runnable() { // from class: com.exteragram.messenger.icons.ui.IconPacksActivity$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.confirmDeletePack(iconPack);
            }
        });
        itemOptionsMakeOptions.setScrimViewBackground(getListView$TMessagesProj().getClipBackground(view));
        itemOptionsMakeOptions.setDismissOnMoveOutside(true);
        itemOptionsMakeOptions.show();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void openEditor(IconPack pack) {
        ExteraConfig.setEditingIconPackId(pack.getId());
        IconPickerController.setActive((LaunchActivity) getParentActivity(), true);
        presentFragment(new IconPacksEditorActivity(pack));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void sharePack(final IconPack pack) {
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: com.exteragram.messenger.icons.ui.IconPacksActivity$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                IconPacksActivity.$r8$lambda$_KE7t3AKcOcQlqRy3JLg14r82rk(pack, this);
            }
        });
    }

    public static void $r8$lambda$_KE7t3AKcOcQlqRy3JLg14r82rk(IconPack iconPack, final IconPacksActivity iconPacksActivity) {
        final File fileBundlePackBlocking = IconManager.INSTANCE.bundlePackBlocking(iconPack.getId());
        if (fileBundlePackBlocking == null) {
            return;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.icons.ui.IconPacksActivity$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                IconPacksActivity.$r8$lambda$O09Q0YvY6IqFbcNwPawtwKXo5og(this.f$0, fileBundlePackBlocking);
            }
        });
    }

    public static void $r8$lambda$O09Q0YvY6IqFbcNwPawtwKXo5og(IconPacksActivity iconPacksActivity, File file) {
        Activity parentActivity = iconPacksActivity.getParentActivity();
        if (parentActivity == null) {
            return;
        }
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("application/zip");
        intent.putExtra("android.intent.extra.STREAM", FileProvider.getUriForFile(parentActivity, ApplicationLoader.getApplicationId() + ".provider", file));
        intent.addFlags(1);
        parentActivity.startActivity(Intent.createChooser(intent, LocaleController.getString(C2807R.string.ShareFile)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void confirmDeletePack(final IconPack pack) {
        AlertDialog alertDialogCreate = new AlertDialog.Builder(getParentActivity(), this.resourceProvider).setTitle(LocaleController.getString(C2807R.string.DeletePack)).setMessage(AndroidUtilities.replaceTags(LocaleController.formatString(C2807R.string.DeletePackInfo, pack.getName()))).setPositiveButton(LocaleController.getString(C2807R.string.Delete), new AlertDialog.OnButtonClickListener() { // from class: com.exteragram.messenger.icons.ui.IconPacksActivity$$ExternalSyntheticLambda5
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                IconManager.INSTANCE.deletePack(pack.getId());
            }
        }).setNegativeButton(LocaleController.getString(C2807R.string.Cancel), null).create();
        alertDialogCreate.show();
        View button = alertDialogCreate.getButton(-1);
        TextView textView = button instanceof TextView ? (TextView) button : null;
        if (textView != null) {
            textView.setTextColor(Theme.getColor(Theme.key_text_RedBold));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateConfigFromReorder(int sectionId, ArrayList<UItem> uItems) {
        String id;
        UniversalAdapter universalAdapter;
        ArrayList arrayList = new ArrayList();
        int size = uItems.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                break;
            }
            UItem uItem = uItems.get(i);
            i++;
            Object obj = uItem.object;
            IconPack iconPack = obj instanceof IconPack ? (IconPack) obj : null;
            id = iconPack != null ? iconPack.getId() : null;
            if (id != null) {
                arrayList.add(id);
            }
        }
        boolean z = countCustomPacks(ExteraConfig.getIconPacksLayout()) > 1 && sectionId == 0;
        if (z) {
            ArrayList<String> iconPacksLayout = ExteraConfig.getIconPacksLayout();
            int size2 = iconPacksLayout.size();
            int i2 = 0;
            while (true) {
                if (i2 >= size2) {
                    break;
                }
                String str = iconPacksLayout.get(i2);
                i2++;
                if (StringsKt.startsWith$default(str, "base.", false, 2, (Object) null)) {
                    id = str;
                    break;
                }
            }
            String str2 = id;
            ExteraConfig.getIconPacksLayout().clear();
            ExteraConfig.getIconPacksLayout().addAll(arrayList);
            if (str2 != null) {
                ExteraConfig.getIconPacksLayout().add(str2);
            }
        } else {
            ExteraConfig.getIconPacksHidden().clear();
            ExteraConfig.getIconPacksHidden().addAll(arrayList);
        }
        ExteraConfig.saveIconPacksLayout();
        if (z) {
            Runnable runnable = this.reorderRunnable;
            if (runnable != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable);
            }
            Runnable runnable2 = new Runnable() { // from class: com.exteragram.messenger.icons.ui.IconPacksActivity$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    IconManager.INSTANCE.initialize(true);
                }
            };
            this.reorderRunnable = runnable2;
            AndroidUtilities.runOnUIThread(runnable2, 500L);
        }
        if (this.fragmentView == null || (universalAdapter = getListView$TMessagesProj().adapter) == null) {
            return;
        }
        universalAdapter.update(true);
    }
}
