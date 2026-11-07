package com.exteragram.messenger.ai.ui.activities;

import android.view.View;
import androidx.core.util.Consumer;
import com.exteragram.messenger.ai.AiConfig;
import com.exteragram.messenger.ai.AiController;
import com.exteragram.messenger.ai.data.Message;
import com.exteragram.messenger.ai.ui.MarkdownPreview;
import com.exteragram.messenger.ai.ui.components.HistoryMessageCell;
import com.exteragram.messenger.plugins.PluginsConstants;
import com.exteragram.messenger.preferences.BasePreferencesActivity;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.Utilities;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.ItemOptions;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\b\u0018\u00002\u00020\u0001:\u0002 !B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\t\u001a\u00020\nH\u0016J\b\u0010\u000b\u001a\u00020\fH\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\u001e\u0010\u000f\u001a\u00020\f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00110\u00052\u0006\u0010\u0012\u001a\u00020\u0013H\u0014J0\u0010\u0014\u001a\u00020\f2\u0006\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\b2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001aH\u0014J0\u0010\u001c\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\b2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001aH\u0014J\u0012\u0010\u001d\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u001e\u001a\u00020\bH\u0002J\u0010\u0010\u001f\u001a\u00020\f2\u0006\u0010\u001e\u001a\u00020\bH\u0002R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\""}, d2 = {"Lcom/exteragram/messenger/ai/ui/activities/AiHistoryActivity;", "Lcom/exteragram/messenger/preferences/BasePreferencesActivity;", "<init>", "()V", "entries", "Ljava/util/ArrayList;", "Lcom/exteragram/messenger/ai/ui/activities/AiHistoryActivity$Entry;", "lastEntryId", _UrlKt.FRAGMENT_ENCODE_SET, "onFragmentCreate", _UrlKt.FRAGMENT_ENCODE_SET, "formatContents", _UrlKt.FRAGMENT_ENCODE_SET, "getTitle", _UrlKt.FRAGMENT_ENCODE_SET, "fillItems", PluginsConstants.Settings.ITEMS, "Lorg/telegram/ui/Components/UItem;", "adapter", "Lorg/telegram/ui/Components/UniversalAdapter;", "onClick", PluginsConstants.Settings.ITEM, PluginsConstants.Settings.VIEW, "Landroid/view/View;", "position", "x", _UrlKt.FRAGMENT_ENCODE_SET, "y", "onLongClick", "findEntry", "id", "deleteTurn", "HistoryItem", "Entry", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nAiHistoryActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AiHistoryActivity.kt\ncom/exteragram/messenger/ai/ui/activities/AiHistoryActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,147:1\n1915#2,2:148\n1915#2,2:150\n296#2,2:152\n363#2,7:154\n1915#2,2:161\n1586#2:163\n1661#2,3:164\n1915#2,2:167\n1586#2:169\n1661#2,3:170\n*S KotlinDebug\n*F\n+ 1 AiHistoryActivity.kt\ncom/exteragram/messenger/ai/ui/activities/AiHistoryActivity\n*L\n53#1:148,2\n84#1:150,2\n126#1:152,2\n129#1:154,7\n142#1:161,2\n144#1:163\n144#1:164,3\n68#1:167,2\n65#1:169\n65#1:170,3\n*E\n"})
public final class AiHistoryActivity extends BasePreferencesActivity {
    private final ArrayList<Entry> entries = new ArrayList<>();
    private int lastEntryId = 100;

    @Metadata(m910k = 3, mv = {2, 2, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[HistoryItem.values().length];
            try {
                iArr[HistoryItem.SAVE_HISTORY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[HistoryItem.CLEAR_HISTORY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tj\u0002\b\u0004j\u0002\b\u0005¨\u0006\n"}, d2 = {"Lcom/exteragram/messenger/ai/ui/activities/AiHistoryActivity$HistoryItem;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;I)V", "SAVE_HISTORY", "CLEAR_HISTORY", "id", _UrlKt.FRAGMENT_ENCODE_SET, "getId", "()I", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class HistoryItem {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ HistoryItem[] $VALUES;
        private final int id = ordinal() + 1;
        public static final HistoryItem SAVE_HISTORY = new HistoryItem("SAVE_HISTORY", 0);
        public static final HistoryItem CLEAR_HISTORY = new HistoryItem("CLEAR_HISTORY", 1);

        private static final /* synthetic */ HistoryItem[] $values() {
            return new HistoryItem[]{SAVE_HISTORY, CLEAR_HISTORY};
        }

        public static EnumEntries<HistoryItem> getEntries() {
            return $ENTRIES;
        }

        public static HistoryItem valueOf(String str) {
            return (HistoryItem) Enum.valueOf(HistoryItem.class, str);
        }

        public static HistoryItem[] values() {
            return (HistoryItem[]) $VALUES.clone();
        }

        private HistoryItem(String str, int i) {
        }

        static {
            HistoryItem[] historyItemArr$values = $values();
            $VALUES = historyItemArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(historyItemArr$values);
        }

        public final int getId() {
            return this.id;
        }
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000f\b\u0002\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017¨\u0006\u0018"}, d2 = {"Lcom/exteragram/messenger/ai/ui/activities/AiHistoryActivity$Entry;", _UrlKt.FRAGMENT_ENCODE_SET, "id", _UrlKt.FRAGMENT_ENCODE_SET, "message", "Lcom/exteragram/messenger/ai/data/Message;", "content", _UrlKt.FRAGMENT_ENCODE_SET, "expanded", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(ILcom/exteragram/messenger/ai/data/Message;Ljava/lang/CharSequence;Z)V", "getId", "()I", "getMessage", "()Lcom/exteragram/messenger/ai/data/Message;", "getContent", "()Ljava/lang/CharSequence;", "setContent", "(Ljava/lang/CharSequence;)V", "getExpanded", "()Z", "setExpanded", "(Z)V", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Entry {
        private CharSequence content;
        private boolean expanded;
        private final int id;
        private final Message message;

        public Entry(int i, Message message, CharSequence charSequence, boolean z) {
            this.id = i;
            this.message = message;
            this.content = charSequence;
            this.expanded = z;
        }

        public final int getId() {
            return this.id;
        }

        public final Message getMessage() {
            return this.message;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public /* synthetic */ Entry(int i, Message message, CharSequence charSequence, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            if ((i2 & 4) != 0 && (charSequence = message.content()) == null) {
                charSequence = _UrlKt.FRAGMENT_ENCODE_SET;
            }
            this(i, message, charSequence, (i2 & 8) != 0 ? false : z);
        }

        public final CharSequence getContent() {
            return this.content;
        }

        public final void setContent(CharSequence charSequence) {
            this.content = charSequence;
        }

        public final boolean getExpanded() {
            return this.expanded;
        }

        public final void setExpanded(boolean z) {
            this.expanded = z;
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        ArrayList<Message> conversationHistory = AiConfig.getConversationHistory();
        int size = conversationHistory.size();
        int i = 0;
        while (i < size) {
            Message message = conversationHistory.get(i);
            i++;
            Message message2 = message;
            ArrayList<Entry> arrayList = this.entries;
            int i2 = this.lastEntryId;
            this.lastEntryId = i2 + 1;
            arrayList.add(new Entry(i2, message2, null, false, 12, null));
        }
        formatContents();
        return super.onFragmentCreate();
    }

    private final void formatContents() {
        if (this.entries.isEmpty()) {
            return;
        }
        final ArrayList arrayList = new ArrayList(this.entries);
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: com.exteragram.messenger.ai.ui.activities.AiHistoryActivity$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                AiHistoryActivity.$r8$lambda$zMhmBRYvGwkxzZlxU_WuxAu4bFc(arrayList, this);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$ofDW94-8OSkXzL1ZijoW2hKrSBA, reason: not valid java name */
    public static void m2218$r8$lambda$ofDW948OSkXzL1ZijoW2hKrSBA(AiHistoryActivity aiHistoryActivity, ArrayList arrayList, List list) {
        if (aiHistoryActivity.getContext() == null) {
            return;
        }
        Iterator<Integer> it = CollectionsKt.getIndices(arrayList).iterator();
        while (it.hasNext()) {
            int iNextInt = ((IntIterator) it).nextInt();
            ((Entry) arrayList.get(iNextInt)).setContent((CharSequence) list.get(iNextInt));
        }
        UniversalAdapter universalAdapter = aiHistoryActivity.getListView$TMessagesProj().adapter;
        if (universalAdapter != null) {
            universalAdapter.update(true);
        }
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public String getTitle() {
        return LocaleController.getString(C2807R.string.MessageHistory);
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public void fillItems(ArrayList<UItem> items, UniversalAdapter adapter) {
        items.add(UItem.asRippleCheck(HistoryItem.SAVE_HISTORY.getId(), LocaleController.getString(C2807R.string.MessageHistory)).setChecked(AiConfig.getSaveHistory()));
        items.add(UItem.asShadow(LocaleController.getString(C2807R.string.HistoryInfo)));
        if (this.entries.isEmpty()) {
            return;
        }
        int i = 0;
        items.add(UItem.asHeader(LocaleController.formatPluralString("messages", this.entries.size(), new Object[0])));
        ArrayList<Entry> arrayList = this.entries;
        int size = arrayList.size();
        while (i < size) {
            Entry entry = arrayList.get(i);
            i++;
            Entry entry2 = entry;
            items.add(HistoryMessageCell.Factory.asHistoryCell(entry2.getId(), entry2.getMessage(), entry2.getContent(), entry2.getExpanded()));
        }
        items.add(UItem.asShadow(null));
        items.add(BasePreferencesActivity.uButton$TMessagesProj$default((BasePreferencesActivity) this, (Enum) HistoryItem.CLEAR_HISTORY, (CharSequence) LocaleController.getString(C2807R.string.ClearHistory), C2807R.drawable.msg_delete, (CharSequence) null, (CharSequence) null, (Boolean) null, false, (String) null, true, false, (Boolean) null, 1720, (Object) null));
        items.add(UItem.asShadow(null));
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public void onClick(UItem item, View view, int position, float x, float y) {
        int i = item.id;
        if (i <= 0 || i > HistoryItem.getEntries().size()) {
            Entry entryFindEntry = findEntry(item.id);
            if (entryFindEntry != null) {
                entryFindEntry.setExpanded(!entryFindEntry.getExpanded());
                UniversalAdapter universalAdapter = getListView$TMessagesProj().adapter;
                if (universalAdapter != null) {
                    universalAdapter.update(true);
                    return;
                }
                return;
            }
            return;
        }
        int i2 = WhenMappings.$EnumSwitchMapping$0[HistoryItem.getEntries().get(item.id - 1).ordinal()];
        if (i2 == 1) {
            toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.ai.ui.activities.AiHistoryActivity$$ExternalSyntheticLambda4
                @Override // androidx.core.util.Consumer
                public final void accept(Object obj) {
                    AiConfig.setSaveHistory(((Boolean) obj).booleanValue());
                }
            });
        } else if (i2 != 2) {
            LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0.m909m();
        } else {
            AiController.clearHistory(this, this.resourceProvider, true, new Runnable() { // from class: com.exteragram.messenger.ai.ui.activities.AiHistoryActivity$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    AiHistoryActivity.m2217$r8$lambda$gfvGL5WLbqSMT9bA3eD6l_37F4(this.f$0);
                }
            });
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$gfvGL5WLbqSMT9-bA3eD6l_37F4, reason: not valid java name */
    public static void m2217$r8$lambda$gfvGL5WLbqSMT9bA3eD6l_37F4(AiHistoryActivity aiHistoryActivity) {
        aiHistoryActivity.entries.clear();
        UniversalAdapter universalAdapter = aiHistoryActivity.getListView$TMessagesProj().adapter;
        if (universalAdapter != null) {
            universalAdapter.update(true);
        }
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public boolean onLongClick(final UItem item, View view, int position, float x, float y) {
        Object obj = item.object;
        final Message message = obj instanceof Message ? (Message) obj : null;
        if (message == null) {
            return false;
        }
        ItemOptions itemOptionsMakeOptions = ItemOptions.makeOptions(this, view);
        itemOptionsMakeOptions.add(C2807R.drawable.msg_copy, LocaleController.getString(C2807R.string.Copy), new Runnable() { // from class: com.exteragram.messenger.ai.ui.activities.AiHistoryActivity$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                AiHistoryActivity.m2216$r8$lambda$TeKMotSU3GWzCgiEGZlnRzfEBQ(message, this);
            }
        });
        itemOptionsMakeOptions.add(C2807R.drawable.msg_delete, (CharSequence) LocaleController.getString(C2807R.string.Delete), true, new Runnable() { // from class: com.exteragram.messenger.ai.ui.activities.AiHistoryActivity$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.deleteTurn(item.id);
            }
        });
        itemOptionsMakeOptions.setGravity(LocaleController.isRTL ? 3 : 5);
        itemOptionsMakeOptions.setScrimViewBackground(getListView$TMessagesProj().getClipBackground(view));
        itemOptionsMakeOptions.setDismissOnMoveOutside(true);
        itemOptionsMakeOptions.show();
        return true;
    }

    /* JADX INFO: renamed from: $r8$lambda$TeKMotS-U3GWzCgiEGZlnRzfEBQ, reason: not valid java name */
    public static void m2216$r8$lambda$TeKMotSU3GWzCgiEGZlnRzfEBQ(Message message, AiHistoryActivity aiHistoryActivity) {
        if (AndroidUtilities.addToClipboard(message.content())) {
            BulletinFactory.of(aiHistoryActivity).createCopyBulletin(LocaleController.getString(C2807R.string.TextCopied)).show();
        }
    }

    private final Entry findEntry(int id) {
        Entry entry;
        ArrayList<Entry> arrayList = this.entries;
        int size = arrayList.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                entry = null;
                break;
            }
            entry = arrayList.get(i);
            i++;
            if (entry.getId() == id) {
                break;
            }
        }
        return entry;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void deleteTurn(int id) {
        ArrayList<Entry> arrayList = this.entries;
        int size = arrayList.size();
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (i3 >= size) {
                i2 = -1;
                break;
            }
            Entry entry = arrayList.get(i3);
            i3++;
            if (entry.getId() == id) {
                break;
            } else {
                i2++;
            }
        }
        if (i2 == -1) {
            return;
        }
        int i4 = Intrinsics.areEqual("assistant", this.entries.get(i2).getMessage().role()) ? i2 - 1 : i2;
        int i5 = i4 + 1;
        if (i4 < 0 || i5 >= this.entries.size() || Intrinsics.areEqual("assistant", this.entries.get(i4).getMessage().role()) || !Intrinsics.areEqual("assistant", this.entries.get(i5).getMessage().role())) {
            i4 = i2;
        } else {
            i2 = i5;
        }
        Iterator<Integer> it = RangesKt.downTo(i2, i4).iterator();
        while (it.hasNext()) {
            this.entries.remove(((IntIterator) it).nextInt());
        }
        ArrayList<Entry> arrayList2 = this.entries;
        ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList2, 10));
        int size2 = arrayList2.size();
        while (i < size2) {
            Entry entry2 = arrayList2.get(i);
            i++;
            arrayList3.add(entry2.getMessage());
        }
        AiConfig.saveConversationHistory(new ArrayList(arrayList3));
        UniversalAdapter universalAdapter = getListView$TMessagesProj().adapter;
        if (universalAdapter != null) {
            universalAdapter.update(true);
        }
    }

    public static void $r8$lambda$zMhmBRYvGwkxzZlxU_WuxAu4bFc(final ArrayList arrayList, final AiHistoryActivity aiHistoryActivity) {
        final ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList, 10));
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            arrayList2.add(MarkdownPreview.format(((Entry) obj).getMessage().content()));
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.ai.ui.activities.AiHistoryActivity$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                AiHistoryActivity.m2218$r8$lambda$ofDW948OSkXzL1ZijoW2hKrSBA(this.f$0, arrayList, arrayList2);
            }
        });
    }
}
