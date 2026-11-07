package com.exteragram.messenger.preferences.chats;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.core.content.ContextCompat;
import androidx.core.util.Consumer;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.plugins.PluginsConstants;
import com.exteragram.messenger.preferences.BasePreferencesActivity;
import com.exteragram.messenger.preferences.chats.components.SwipeActionsCell;
import com.exteragram.messenger.utils.chats.SwipeAction;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.Utilities;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0002\b\u0006\u0018\u0000 (2\u00020\u0001:\u0001(B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0014J\u001e\u0010\u000e\u001a\u00020\u000f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010\u0013\u001a\u00020\u0014H\u0014J4\u0010\u0015\u001a\u00020\u00142\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\t2\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00190\u0018H\u0002J\u001e\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u001c2\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011H\u0002J0\u0010\u001e\u001a\u00020\u000f2\u0006\u0010\u001f\u001a\u00020\u00122\u0006\u0010 \u001a\u00020\u000b2\u0006\u0010!\u001a\u00020\u001c2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020#H\u0014J\b\u0010%\u001a\u00020\u000fH\u0002J\u0012\u0010&\u001a\u0004\u0018\u00010\u00192\u0006\u0010'\u001a\u00020\u001cH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006)"}, d2 = {"Lcom/exteragram/messenger/preferences/chats/SwipeActionsPreferencesActivity;", "Lcom/exteragram/messenger/preferences/BasePreferencesActivity;", "<init>", "()V", "previewCell", "Lcom/exteragram/messenger/preferences/chats/components/SwipeActionsCell;", "reorderIcon", "Landroid/graphics/drawable/Drawable;", "getTitle", _UrlKt.FRAGMENT_ENCODE_SET, "createView", "Landroid/view/View;", "context", "Landroid/content/Context;", "fillItems", _UrlKt.FRAGMENT_ENCODE_SET, PluginsConstants.Settings.ITEMS, "Ljava/util/ArrayList;", "Lorg/telegram/ui/Components/UItem;", "adapter", "Lorg/telegram/ui/Components/UniversalAdapter;", "addSection", PluginsConstants.Settings.TYPE_HEADER, "actions", _UrlKt.FRAGMENT_ENCODE_SET, "Lcom/exteragram/messenger/utils/chats/SwipeAction;", "onReorder", "sectionId", _UrlKt.FRAGMENT_ENCODE_SET, "uItems", "onClick", PluginsConstants.Settings.ITEM, PluginsConstants.Settings.VIEW, "position", "x", _UrlKt.FRAGMENT_ENCODE_SET, "y", "refresh", "fromId", "id", "Companion", "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSwipeActionsPreferencesActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SwipeActionsPreferencesActivity.kt\ncom/exteragram/messenger/preferences/chats/SwipeActionsPreferencesActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,122:1\n1586#2:123\n1661#2,3:124\n1642#2,10:127\n1915#2:137\n1916#2:139\n1652#2:140\n1#3:138\n*S KotlinDebug\n*F\n+ 1 SwipeActionsPreferencesActivity.kt\ncom/exteragram/messenger/preferences/chats/SwipeActionsPreferencesActivity\n*L\n78#1:123\n78#1:124,3\n90#1:127,10\n90#1:137\n90#1:139\n90#1:140\n90#1:138\n*E\n"})
public final class SwipeActionsPreferencesActivity extends BasePreferencesActivity {
    private SwipeActionsCell previewCell;
    private Drawable reorderIcon;

    @Metadata(m862k = 3, mv = {2, 2, 0}, xi = 48)
    public static final /* synthetic */ class EntriesMappings {
        public static final /* synthetic */ EnumEntries<SwipeAction> entries$0 = EnumEntriesKt.enumEntries(SwipeAction.values());
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public String getTitle() {
        return LocaleController.getString(C2665R.string.SwipeActions);
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity, org.telegram.ui.ActionBar.BaseFragment
    public View createView(Context context) {
        this.previewCell = new SwipeActionsCell(context);
        View viewCreateView = super.createView(context);
        getListView$TMessagesProj().allowReorder(true);
        getListView$TMessagesProj().listenReorder(new Utilities.Callback2() { // from class: com.exteragram.messenger.preferences.chats.SwipeActionsPreferencesActivity$$ExternalSyntheticLambda0
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.onReorder(((Integer) obj).intValue(), (ArrayList) obj2);
            }
        });
        return viewCreateView;
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public void fillItems(ArrayList<UItem> items, UniversalAdapter adapter) {
        Drawable drawable = this.reorderIcon;
        if (drawable == null) {
            drawable = ContextCompat.getDrawable(getContext(), C2665R.drawable.list_reorder);
        }
        this.reorderIcon = drawable;
        SwipeActionsCell swipeActionsCell = this.previewCell;
        if (swipeActionsCell == null) {
            swipeActionsCell = null;
        }
        items.add(UItem.asCustom(1, swipeActionsCell));
        items.add(UItem.asShadow(LocaleController.getString(C2665R.string.SwipeActionsInfo)));
        adapter.whiteSectionStart();
        items.add(UItem.asHeader(LocaleController.getString(C2665R.string.SwipeActionsBehavior)));
        items.add(BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) this, 2, (CharSequence) LocaleController.getString(C2665R.string.SwipeActionsLoop), ExteraConfig.getSwipeActionsLoop(), (CharSequence) null, 0, false, "swipeActionsLoop", false, 0, 440, (Object) null));
        items.add(BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) this, 3, (CharSequence) LocaleController.getString(C2665R.string.SwipeActionsReversed), ExteraConfig.getSwipeActionsReversed(), (CharSequence) null, 0, false, "swipeActionsReversed", false, 0, 440, (Object) null));
        adapter.whiteSectionEnd();
        items.add(UItem.asShadow(LocaleController.getString(C2665R.string.SwipeActionsBehaviorInfo)));
        addSection(items, adapter, LocaleController.getString(C2665R.string.SwipeActionsEnabled), SwipeAction.enabled());
        items.add(UItem.asShadow(LocaleController.getString(C2665R.string.SwipeActionsOrderInfo)));
        List<SwipeAction> listDisabled = SwipeAction.disabled();
        if (listDisabled.isEmpty()) {
            return;
        }
        addSection(items, adapter, LocaleController.getString(C2665R.string.SwipeActionsDisabled), listDisabled);
        items.add(UItem.asShadow(null));
    }

    private final UniversalAdapter addSection(ArrayList<UItem> items, UniversalAdapter adapter, String header, List<? extends SwipeAction> actions) {
        adapter.whiteSectionStart();
        items.add(UItem.asHeader(header));
        adapter.reorderSectionStart();
        List<? extends SwipeAction> list = actions;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        for (SwipeAction swipeAction : list) {
            UItem uItemUButton$TMessagesProj$default = BasePreferencesActivity.uButton$TMessagesProj$default((BasePreferencesActivity) this, swipeAction.ordinal() + 100, (CharSequence) LocaleController.getString(swipeAction.titleRes), swipeAction.iconRes, (CharSequence) null, (CharSequence) null, (Boolean) null, false, (String) null, false, false, (Boolean) null, 1976, (Object) null);
            uItemUButton$TMessagesProj$default.object2 = this.reorderIcon;
            arrayList.add(uItemUButton$TMessagesProj$default);
        }
        items.addAll(arrayList);
        adapter.reorderSectionEnd();
        adapter.whiteSectionEnd();
        return adapter;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onReorder(int sectionId, ArrayList<UItem> uItems) {
        if (sectionId != 0) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int size = uItems.size();
        int i = 0;
        while (i < size) {
            UItem uItem = uItems.get(i);
            i++;
            SwipeAction swipeActionFromId = fromId(uItem.id);
            if (swipeActionFromId != null) {
                arrayList2.add(swipeActionFromId);
            }
        }
        arrayList.addAll(arrayList2);
        SwipeAction.setEnabled(arrayList);
        refresh();
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public void onClick(UItem item, View view, int position, float x, float y) {
        int i = item.id;
        if (i == 2) {
            toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.SwipeActionsPreferencesActivity$$ExternalSyntheticLambda1
                @Override // androidx.core.util.Consumer
                public final void accept(Object obj) {
                    ExteraConfig.setSwipeActionsLoop(((Boolean) obj).booleanValue());
                }
            });
            SwipeActionsCell swipeActionsCell = this.previewCell;
            if (swipeActionsCell == null) {
                swipeActionsCell = null;
            }
            swipeActionsCell.updateActions();
            return;
        }
        if (i == 3) {
            toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.SwipeActionsPreferencesActivity$$ExternalSyntheticLambda2
                @Override // androidx.core.util.Consumer
                public final void accept(Object obj) {
                    ExteraConfig.setSwipeActionsReversed(((Boolean) obj).booleanValue());
                }
            });
            return;
        }
        SwipeAction swipeActionFromId = fromId(i);
        if (swipeActionFromId == null) {
            return;
        }
        swipeActionFromId.setEnabled(!swipeActionFromId.isEnabled());
        refresh();
    }

    private final void refresh() {
        SwipeActionsCell swipeActionsCell = this.previewCell;
        if (swipeActionsCell == null) {
            swipeActionsCell = null;
        }
        swipeActionsCell.updateActions();
        UniversalAdapter universalAdapter = getListView$TMessagesProj().adapter;
        if (universalAdapter != null) {
            universalAdapter.update(true);
        }
    }

    private final SwipeAction fromId(int id) {
        int i = id - 100;
        EnumEntries<SwipeAction> enumEntries = EntriesMappings.entries$0;
        if (i < 0 || i >= enumEntries.size()) {
            return null;
        }
        return enumEntries.get(i);
    }
}
