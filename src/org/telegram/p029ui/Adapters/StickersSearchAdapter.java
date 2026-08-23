package org.telegram.p029ui.Adapters;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.text.TextUtils;
import android.util.LongSparseArray;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Space;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.UserConfig;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.ActionBar.ThemeDescription;
import org.telegram.p029ui.Cells.EmptyCell;
import org.telegram.p029ui.Cells.FeaturedStickerSetInfoCell;
import org.telegram.p029ui.Cells.StickerEmojiCell;
import org.telegram.p029ui.Cells.StickerSetNameCell;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.RecyclerListView;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes6.dex */
public class StickersSearchAdapter extends RecyclerListView.SelectionAdapter {
    boolean cleared;
    private final Context context;
    private final Delegate delegate;
    private int emojiSearchId;
    private ImageView emptyImageView;
    private TextView emptyTextView;
    private final LongSparseArray installingStickerSets;
    private final TLRPC.StickerSetCovered[] primaryInstallingStickerSets;
    private final LongSparseArray removingStickerSets;
    private int reqId;
    private int reqId2;
    private final Theme.ResourcesProvider resourcesProvider;
    private String searchQuery;
    private int totalItems;
    private final int currentAccount = UserConfig.selectedAccount;
    private SparseArray rowStartPack = new SparseArray();
    private SparseArray cache = new SparseArray();
    private SparseArray cacheParent = new SparseArray();
    private SparseIntArray positionToRow = new SparseIntArray();
    private SparseArray positionToEmoji = new SparseArray();
    private ArrayList serverPacks = new ArrayList();
    private ArrayList localPacks = new ArrayList();
    private HashMap localPacksByShortName = new HashMap();
    private HashMap localPacksByName = new HashMap();
    private HashMap emojiStickers = new HashMap();
    private ArrayList emojiArrays = new ArrayList();
    private SparseArray positionsToSets = new SparseArray();
    private Runnable searchRunnable = new RunnableC31441();

    public interface Delegate {
        String[] getLastSearchKeyboardLanguage();

        int getStickersPerRow();

        void onSearchStart();

        void onSearchStop();

        void onStickerSetAdd(TLRPC.StickerSetCovered stickerSetCovered, boolean z);

        void onStickerSetRemove(TLRPC.StickerSetCovered stickerSetCovered);

        void setAdapterVisible(boolean z);

        void setLastSearchKeyboardLanguage(String[] strArr);
    }

    @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
    public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
        return false;
    }

    /* JADX INFO: renamed from: org.telegram.ui.Adapters.StickersSearchAdapter$1 */
    class RunnableC31441 implements Runnable {
        RunnableC31441() {
        }

        private void clear() {
            StickersSearchAdapter stickersSearchAdapter = StickersSearchAdapter.this;
            if (stickersSearchAdapter.cleared) {
                return;
            }
            stickersSearchAdapter.cleared = true;
            stickersSearchAdapter.emojiStickers.clear();
            StickersSearchAdapter.this.emojiArrays.clear();
            StickersSearchAdapter.this.localPacks.clear();
            StickersSearchAdapter.this.serverPacks.clear();
            StickersSearchAdapter.this.localPacksByShortName.clear();
            StickersSearchAdapter.this.localPacksByName.clear();
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x0079  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x00b9  */
        /* JADX WARN: Removed duplicated region for block: B:95:0x00d4 A[SYNTHETIC] */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() {
            int iIndexOfIgnoreCase;
            int iIndexOfIgnoreCase2;
            if (TextUtils.isEmpty(StickersSearchAdapter.this.searchQuery)) {
                return;
            }
            StickersSearchAdapter.this.delegate.onSearchStart();
            StickersSearchAdapter stickersSearchAdapter = StickersSearchAdapter.this;
            stickersSearchAdapter.cleared = false;
            final int i = stickersSearchAdapter.emojiSearchId + 1;
            stickersSearchAdapter.emojiSearchId = i;
            final ArrayList arrayList = new ArrayList(0);
            final LongSparseArray longSparseArray = new LongSparseArray(0);
            final HashMap<String, ArrayList<TLRPC.Document>> allStickers = MediaDataController.getInstance(StickersSearchAdapter.this.currentAccount).getAllStickers();
            if (StickersSearchAdapter.this.searchQuery.length() <= 14) {
                CharSequence charSequenceConcat = StickersSearchAdapter.this.searchQuery;
                int length = charSequenceConcat.length();
                int i2 = 0;
                while (i2 < length) {
                    if (i2 < length - 1) {
                        if (charSequenceConcat.charAt(i2) == 55356) {
                            int i3 = i2 + 1;
                            if (charSequenceConcat.charAt(i3) < 57339 || charSequenceConcat.charAt(i3) > 57343) {
                                if (charSequenceConcat.charAt(i2) == 8205) {
                                    int i4 = i2 + 1;
                                    if (charSequenceConcat.charAt(i4) == 9792 || charSequenceConcat.charAt(i4) == 9794) {
                                    }
                                    i2--;
                                }
                                if (charSequenceConcat.charAt(i2) != 65039) {
                                }
                            }
                            charSequenceConcat = TextUtils.concat(charSequenceConcat.subSequence(0, i2), charSequenceConcat.subSequence(i2 + 2, charSequenceConcat.length()));
                            length -= 2;
                            i2--;
                        }
                    } else if (charSequenceConcat.charAt(i2) != 65039) {
                        charSequenceConcat = TextUtils.concat(charSequenceConcat.subSequence(0, i2), charSequenceConcat.subSequence(i2 + 1, charSequenceConcat.length()));
                        length--;
                        i2--;
                    }
                    i2++;
                }
                ArrayList<TLRPC.Document> arrayList2 = allStickers != null ? allStickers.get(charSequenceConcat.toString()) : null;
                if (arrayList2 != null && !arrayList2.isEmpty()) {
                    clear();
                    arrayList.addAll(arrayList2);
                    int size = arrayList2.size();
                    for (int i5 = 0; i5 < size; i5++) {
                        TLRPC.Document document = arrayList2.get(i5);
                        longSparseArray.put(document.f1668id, document);
                    }
                    StickersSearchAdapter.this.emojiStickers.put(arrayList, StickersSearchAdapter.this.searchQuery);
                    StickersSearchAdapter.this.emojiArrays.add(arrayList);
                }
            }
            if (allStickers != null && !allStickers.isEmpty() && StickersSearchAdapter.this.searchQuery.length() > 1) {
                String[] currentKeyboardLanguage = AndroidUtilities.getCurrentKeyboardLanguage();
                if (!Arrays.equals(StickersSearchAdapter.this.delegate.getLastSearchKeyboardLanguage(), currentKeyboardLanguage)) {
                    MediaDataController.getInstance(StickersSearchAdapter.this.currentAccount).fetchNewEmojiKeywords(currentKeyboardLanguage);
                }
                StickersSearchAdapter.this.delegate.setLastSearchKeyboardLanguage(currentKeyboardLanguage);
                MediaDataController.getInstance(StickersSearchAdapter.this.currentAccount).getEmojiSuggestions(StickersSearchAdapter.this.delegate.getLastSearchKeyboardLanguage(), StickersSearchAdapter.this.searchQuery, false, new MediaDataController.KeywordResultCallback() { // from class: org.telegram.ui.Adapters.StickersSearchAdapter$1$$ExternalSyntheticLambda0
                    @Override // org.telegram.messenger.MediaDataController.KeywordResultCallback
                    public final void run(ArrayList arrayList3, String str) {
                        this.f$0.lambda$run$0(i, allStickers, arrayList3, str);
                    }
                }, false);
            }
            ArrayList<TLRPC.TL_messages_stickerSet> stickerSets = MediaDataController.getInstance(StickersSearchAdapter.this.currentAccount).getStickerSets(0);
            int size2 = stickerSets.size();
            for (int i6 = 0; i6 < size2; i6++) {
                TLRPC.TL_messages_stickerSet tL_messages_stickerSet = stickerSets.get(i6);
                int iIndexOfIgnoreCase3 = AndroidUtilities.indexOfIgnoreCase(tL_messages_stickerSet.set.title, StickersSearchAdapter.this.searchQuery);
                if (iIndexOfIgnoreCase3 >= 0) {
                    if (iIndexOfIgnoreCase3 == 0 || tL_messages_stickerSet.set.title.charAt(iIndexOfIgnoreCase3 - 1) == ' ') {
                        clear();
                        StickersSearchAdapter.this.localPacks.add(tL_messages_stickerSet);
                        StickersSearchAdapter.this.localPacksByName.put(tL_messages_stickerSet, Integer.valueOf(iIndexOfIgnoreCase3));
                    }
                } else {
                    String str = tL_messages_stickerSet.set.short_name;
                    if (str != null && (iIndexOfIgnoreCase2 = AndroidUtilities.indexOfIgnoreCase(str, StickersSearchAdapter.this.searchQuery)) >= 0 && (iIndexOfIgnoreCase2 == 0 || tL_messages_stickerSet.set.short_name.charAt(iIndexOfIgnoreCase2 - 1) == ' ')) {
                        clear();
                        StickersSearchAdapter.this.localPacks.add(tL_messages_stickerSet);
                        StickersSearchAdapter.this.localPacksByShortName.put(tL_messages_stickerSet, Boolean.TRUE);
                    }
                }
            }
            ArrayList<TLRPC.TL_messages_stickerSet> stickerSets2 = MediaDataController.getInstance(StickersSearchAdapter.this.currentAccount).getStickerSets(3);
            int size3 = stickerSets2.size();
            for (int i7 = 0; i7 < size3; i7++) {
                TLRPC.TL_messages_stickerSet tL_messages_stickerSet2 = stickerSets2.get(i7);
                int iIndexOfIgnoreCase4 = AndroidUtilities.indexOfIgnoreCase(tL_messages_stickerSet2.set.title, StickersSearchAdapter.this.searchQuery);
                if (iIndexOfIgnoreCase4 >= 0) {
                    if (iIndexOfIgnoreCase4 == 0 || tL_messages_stickerSet2.set.title.charAt(iIndexOfIgnoreCase4 - 1) == ' ') {
                        clear();
                        StickersSearchAdapter.this.localPacks.add(tL_messages_stickerSet2);
                        StickersSearchAdapter.this.localPacksByName.put(tL_messages_stickerSet2, Integer.valueOf(iIndexOfIgnoreCase4));
                    }
                } else {
                    String str2 = tL_messages_stickerSet2.set.short_name;
                    if (str2 != null && (iIndexOfIgnoreCase = AndroidUtilities.indexOfIgnoreCase(str2, StickersSearchAdapter.this.searchQuery)) >= 0 && (iIndexOfIgnoreCase == 0 || tL_messages_stickerSet2.set.short_name.charAt(iIndexOfIgnoreCase - 1) == ' ')) {
                        clear();
                        StickersSearchAdapter.this.localPacks.add(tL_messages_stickerSet2);
                        StickersSearchAdapter.this.localPacksByShortName.put(tL_messages_stickerSet2, Boolean.TRUE);
                    }
                }
            }
            if (!StickersSearchAdapter.this.localPacks.isEmpty() || !StickersSearchAdapter.this.emojiStickers.isEmpty()) {
                StickersSearchAdapter.this.delegate.setAdapterVisible(true);
            }
            final TLRPC.TL_messages_searchStickerSets tL_messages_searchStickerSets = new TLRPC.TL_messages_searchStickerSets();
            tL_messages_searchStickerSets.f1779q = StickersSearchAdapter.this.searchQuery;
            StickersSearchAdapter stickersSearchAdapter2 = StickersSearchAdapter.this;
            stickersSearchAdapter2.reqId = ConnectionsManager.getInstance(stickersSearchAdapter2.currentAccount).sendRequest(tL_messages_searchStickerSets, new RequestDelegate() { // from class: org.telegram.ui.Adapters.StickersSearchAdapter$1$$ExternalSyntheticLambda1
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$run$2(tL_messages_searchStickerSets, tLObject, tL_error);
                }
            });
            if (Emoji.isValidEmoji(StickersSearchAdapter.this.searchQuery)) {
                final TLRPC.TL_messages_getStickers tL_messages_getStickers = new TLRPC.TL_messages_getStickers();
                tL_messages_getStickers.emoticon = StickersSearchAdapter.this.searchQuery;
                tL_messages_getStickers.hash = 0L;
                StickersSearchAdapter stickersSearchAdapter3 = StickersSearchAdapter.this;
                stickersSearchAdapter3.reqId2 = ConnectionsManager.getInstance(stickersSearchAdapter3.currentAccount).sendRequest(tL_messages_getStickers, new RequestDelegate() { // from class: org.telegram.ui.Adapters.StickersSearchAdapter$1$$ExternalSyntheticLambda2
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        this.f$0.lambda$run$4(tL_messages_getStickers, arrayList, longSparseArray, tLObject, tL_error);
                    }
                });
            }
            StickersSearchAdapter.this.notifyDataSetChanged();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$0(int i, HashMap map, ArrayList arrayList, String str) {
            if (i != StickersSearchAdapter.this.emojiSearchId) {
                return;
            }
            int size = arrayList.size();
            boolean z = false;
            for (int i2 = 0; i2 < size; i2++) {
                String str2 = ((MediaDataController.KeywordResult) arrayList.get(i2)).emoji;
                ArrayList arrayList2 = map != null ? (ArrayList) map.get(str2) : null;
                if (arrayList2 != null && !arrayList2.isEmpty()) {
                    clear();
                    if (!StickersSearchAdapter.this.emojiStickers.containsKey(arrayList2)) {
                        StickersSearchAdapter.this.emojiStickers.put(arrayList2, str2);
                        StickersSearchAdapter.this.emojiArrays.add(arrayList2);
                        z = true;
                    }
                }
            }
            if (z) {
                StickersSearchAdapter.this.notifyDataSetChanged();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$2(final TLRPC.TL_messages_searchStickerSets tL_messages_searchStickerSets, final TLObject tLObject, TLRPC.TL_error tL_error) {
            if (tLObject instanceof TLRPC.TL_messages_foundStickerSets) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Adapters.StickersSearchAdapter$1$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$run$1(tL_messages_searchStickerSets, tLObject);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$1(TLRPC.TL_messages_searchStickerSets tL_messages_searchStickerSets, TLObject tLObject) {
            if (tL_messages_searchStickerSets.f1779q.equals(StickersSearchAdapter.this.searchQuery)) {
                clear();
                StickersSearchAdapter.this.delegate.onSearchStop();
                StickersSearchAdapter.this.reqId = 0;
                StickersSearchAdapter.this.delegate.setAdapterVisible(true);
                StickersSearchAdapter.this.serverPacks.addAll(((TLRPC.TL_messages_foundStickerSets) tLObject).sets);
                StickersSearchAdapter.this.notifyDataSetChanged();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$4(final TLRPC.TL_messages_getStickers tL_messages_getStickers, final ArrayList arrayList, final LongSparseArray longSparseArray, final TLObject tLObject, TLRPC.TL_error tL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Adapters.StickersSearchAdapter$1$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$run$3(tL_messages_getStickers, tLObject, arrayList, longSparseArray);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$3(TLRPC.TL_messages_getStickers tL_messages_getStickers, TLObject tLObject, ArrayList arrayList, LongSparseArray longSparseArray) {
            if (tL_messages_getStickers.emoticon.equals(StickersSearchAdapter.this.searchQuery)) {
                StickersSearchAdapter.this.reqId2 = 0;
                if (tLObject instanceof TLRPC.TL_messages_stickers) {
                    TLRPC.TL_messages_stickers tL_messages_stickers = (TLRPC.TL_messages_stickers) tLObject;
                    int size = arrayList.size();
                    int size2 = tL_messages_stickers.stickers.size();
                    for (int i = 0; i < size2; i++) {
                        TLRPC.Document document = (TLRPC.Document) tL_messages_stickers.stickers.get(i);
                        if (longSparseArray.indexOfKey(document.f1668id) < 0) {
                            arrayList.add(document);
                        }
                    }
                    if (size != arrayList.size()) {
                        StickersSearchAdapter.this.emojiStickers.put(arrayList, StickersSearchAdapter.this.searchQuery);
                        if (size == 0) {
                            StickersSearchAdapter.this.emojiArrays.add(arrayList);
                        }
                        StickersSearchAdapter.this.notifyDataSetChanged();
                    }
                }
            }
        }
    }

    public StickersSearchAdapter(Context context, Delegate delegate, TLRPC.StickerSetCovered[] stickerSetCoveredArr, LongSparseArray longSparseArray, LongSparseArray longSparseArray2, Theme.ResourcesProvider resourcesProvider) {
        this.context = context;
        this.delegate = delegate;
        this.primaryInstallingStickerSets = stickerSetCoveredArr;
        this.installingStickerSets = longSparseArray;
        this.removingStickerSets = longSparseArray2;
        this.resourcesProvider = resourcesProvider;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return Math.max(1, this.totalItems + 1);
    }

    public void search(String str) {
        if (this.reqId != 0) {
            ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.reqId, true);
            this.reqId = 0;
        }
        if (this.reqId2 != 0) {
            ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.reqId2, true);
            this.reqId2 = 0;
        }
        if (TextUtils.isEmpty(str)) {
            this.searchQuery = null;
            this.localPacks.clear();
            this.emojiStickers.clear();
            this.serverPacks.clear();
            this.delegate.setAdapterVisible(false);
            notifyDataSetChanged();
        } else {
            this.searchQuery = str.toLowerCase();
        }
        AndroidUtilities.cancelRunOnUIThread(this.searchRunnable);
        AndroidUtilities.runOnUIThread(this.searchRunnable, 300L);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        if (i == 0 && this.totalItems == 0) {
            return 5;
        }
        if (i == getItemCount() - 1) {
            return 4;
        }
        Object obj = this.cache.get(i);
        if (obj == null) {
            return 1;
        }
        if (obj instanceof TLRPC.Document) {
            return 0;
        }
        return obj instanceof TLRPC.StickerSetCovered ? 3 : 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreateViewHolder$0(View view) {
        FeaturedStickerSetInfoCell featuredStickerSetInfoCell = (FeaturedStickerSetInfoCell) view.getParent();
        TLRPC.StickerSetCovered stickerSet = featuredStickerSetInfoCell.getStickerSet();
        if (stickerSet == null || this.installingStickerSets.indexOfKey(stickerSet.set.f1696id) >= 0 || this.removingStickerSets.indexOfKey(stickerSet.set.f1696id) >= 0) {
            return;
        }
        if (featuredStickerSetInfoCell.isInstalled()) {
            this.removingStickerSets.put(stickerSet.set.f1696id, stickerSet);
            this.delegate.onStickerSetRemove(featuredStickerSetInfoCell.getStickerSet());
        } else {
            installStickerSet(stickerSet, featuredStickerSetInfoCell);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        View stickerSetNameCell;
        if (i == 0) {
            StickerEmojiCell stickerEmojiCell = new StickerEmojiCell(this.context, false, this.resourcesProvider) { // from class: org.telegram.ui.Adapters.StickersSearchAdapter.2
                @Override // android.widget.FrameLayout, android.view.View
                public void onMeasure(int i2, int i3) {
                    super.onMeasure(i2, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(82.0f), TLObject.FLAG_30));
                }
            };
            stickerEmojiCell.getImageView().setLayerNum(3);
            stickerSetNameCell = stickerEmojiCell;
        } else if (i == 1) {
            stickerSetNameCell = new EmptyCell(this.context);
        } else if (i == 2) {
            stickerSetNameCell = new StickerSetNameCell(this.context, false, true, this.resourcesProvider, false);
        } else if (i == 3) {
            FeaturedStickerSetInfoCell featuredStickerSetInfoCell = new FeaturedStickerSetInfoCell(this.context, 17, true, true, this.resourcesProvider);
            featuredStickerSetInfoCell.setAddOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Adapters.StickersSearchAdapter$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$onCreateViewHolder$0(view);
                }
            });
            stickerSetNameCell = featuredStickerSetInfoCell;
        } else if (i == 4) {
            stickerSetNameCell = new View(this.context);
        } else if (i != 5) {
            stickerSetNameCell = null;
        } else {
            LinearLayout linearLayout = new LinearLayout(this.context);
            linearLayout.setOrientation(1);
            linearLayout.setGravity(17);
            ImageView imageView = new ImageView(this.context);
            this.emptyImageView = imageView;
            imageView.setScaleType(ImageView.ScaleType.CENTER);
            this.emptyImageView.setImageResource(C2888R.drawable.stickers_empty);
            ImageView imageView2 = this.emptyImageView;
            int i2 = Theme.key_chat_emojiPanelEmptyText;
            imageView2.setColorFilter(new PorterDuffColorFilter(getThemedColor(i2), PorterDuff.Mode.MULTIPLY));
            linearLayout.addView(this.emptyImageView, LayoutHelper.createLinear(-2, -2));
            linearLayout.addView(new Space(this.context), LayoutHelper.createLinear(-1, 15));
            TextView textView = new TextView(this.context);
            this.emptyTextView = textView;
            textView.setText(LocaleController.getString(C2888R.string.NoStickersFound));
            this.emptyTextView.setTextSize(1, 16.0f);
            this.emptyTextView.setTextColor(getThemedColor(i2));
            linearLayout.addView(this.emptyTextView, LayoutHelper.createLinear(-2, -2));
            linearLayout.setMinimumHeight(AndroidUtilities.m1124dp(112.0f));
            linearLayout.setLayoutParams(LayoutHelper.createFrame(-1, -1.0f));
            stickerSetNameCell = linearLayout;
        }
        return new RecyclerListView.Holder(stickerSetNameCell);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        int itemViewType = viewHolder.getItemViewType();
        if (itemViewType == 0) {
            ((StickerEmojiCell) viewHolder.itemView).setSticker((TLRPC.Document) this.cache.get(i), null, this.cacheParent.get(i), (String) this.positionToEmoji.get(i), false);
            return;
        }
        if (itemViewType == 1) {
            ((EmptyCell) viewHolder.itemView).setHeight(0);
            return;
        }
        if (itemViewType != 2) {
            if (itemViewType != 3) {
                return;
            }
            bindFeaturedStickerSetInfoCell((FeaturedStickerSetInfoCell) viewHolder.itemView, i, false);
            return;
        }
        StickerSetNameCell stickerSetNameCell = (StickerSetNameCell) viewHolder.itemView;
        Object obj = this.cache.get(i);
        if (obj instanceof TLRPC.TL_messages_stickerSet) {
            TLRPC.TL_messages_stickerSet tL_messages_stickerSet = (TLRPC.TL_messages_stickerSet) obj;
            if (!TextUtils.isEmpty(this.searchQuery) && this.localPacksByShortName.containsKey(tL_messages_stickerSet)) {
                TLRPC.StickerSet stickerSet = tL_messages_stickerSet.set;
                if (stickerSet != null) {
                    stickerSetNameCell.setText(stickerSet.title, 0);
                }
                stickerSetNameCell.setUrl(tL_messages_stickerSet.set.short_name, this.searchQuery.length());
                return;
            }
            Integer num = (Integer) this.localPacksByName.get(tL_messages_stickerSet);
            TLRPC.StickerSet stickerSet2 = tL_messages_stickerSet.set;
            if (stickerSet2 != null && num != null) {
                stickerSetNameCell.setText(stickerSet2.title, 0, num.intValue(), !TextUtils.isEmpty(this.searchQuery) ? this.searchQuery.length() : 0);
            }
            stickerSetNameCell.setUrl(null, 0);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i, List list) {
        if (list.contains(0) && viewHolder.getItemViewType() == 3) {
            bindFeaturedStickerSetInfoCell((FeaturedStickerSetInfoCell) viewHolder.itemView, i, true);
        } else {
            super.onBindViewHolder(viewHolder, i, list);
        }
    }

    public void installStickerSet(TLRPC.InputStickerSet inputStickerSet) {
        for (int i = 0; i < this.serverPacks.size(); i++) {
            TLRPC.StickerSetCovered stickerSetCovered = (TLRPC.StickerSetCovered) this.serverPacks.get(i);
            if (stickerSetCovered.set.f1696id == inputStickerSet.f1685id) {
                installStickerSet(stickerSetCovered, null);
                return;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x003f, code lost:
    
        r1 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0040, code lost:
    
        r2 = r6.primaryInstallingStickerSets;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0044, code lost:
    
        if (r1 >= r2.length) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0048, code lost:
    
        if (r2[r1] != null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x004a, code lost:
    
        r2[r1] = r7;
        r1 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x004e, code lost:
    
        r1 = r1 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0051, code lost:
    
        r1 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0052, code lost:
    
        if (r1 != false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0054, code lost:
    
        if (r8 == null) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0056, code lost:
    
        r8.setAddDrawProgress(true, true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0059, code lost:
    
        r6.installingStickerSets.put(r7.set.f1696id, r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0062, code lost:
    
        if (r8 == null) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0064, code lost:
    
        r6.delegate.onStickerSetAdd(r8.getStickerSet(), r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x006d, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x006e, code lost:
    
        r8 = r6.positionsToSets.size();
        r1 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0075, code lost:
    
        if (r1 >= r8) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0077, code lost:
    
        r2 = (org.telegram.tgnet.TLRPC.StickerSetCovered) r6.positionsToSets.get(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x007f, code lost:
    
        if (r2 == null) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x008b, code lost:
    
        if (r2.set.f1696id != r7.set.f1696id) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x008d, code lost:
    
        notifyItemChanged(r1, 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0094, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0095, code lost:
    
        r1 = r1 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:?, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void installStickerSet(TLRPC.StickerSetCovered stickerSetCovered, FeaturedStickerSetInfoCell featuredStickerSetInfoCell) {
        int i = 0;
        while (true) {
            TLRPC.StickerSetCovered[] stickerSetCoveredArr = this.primaryInstallingStickerSets;
            if (i >= stickerSetCoveredArr.length) {
                break;
            }
            if (stickerSetCoveredArr[i] != null) {
                TLRPC.TL_messages_stickerSet stickerSetById = MediaDataController.getInstance(this.currentAccount).getStickerSetById(this.primaryInstallingStickerSets[i].set.f1696id);
                if (stickerSetById != null && !stickerSetById.set.archived) {
                    this.primaryInstallingStickerSets[i] = null;
                    break;
                } else if (this.primaryInstallingStickerSets[i].set.f1696id == stickerSetCovered.set.f1696id) {
                    return;
                }
            }
            i++;
        }
    }

    private void bindFeaturedStickerSetInfoCell(FeaturedStickerSetInfoCell featuredStickerSetInfoCell, int i, boolean z) {
        boolean z2;
        FeaturedStickerSetInfoCell featuredStickerSetInfoCell2;
        boolean z3;
        MediaDataController mediaDataController = MediaDataController.getInstance(this.currentAccount);
        ArrayList<Long> unreadStickerSets = mediaDataController.getUnreadStickerSets();
        TLRPC.StickerSetCovered stickerSetCovered = (TLRPC.StickerSetCovered) this.cache.get(i);
        boolean z4 = unreadStickerSets != null && unreadStickerSets.contains(Long.valueOf(stickerSetCovered.set.f1696id));
        int i2 = 0;
        while (true) {
            TLRPC.StickerSetCovered[] stickerSetCoveredArr = this.primaryInstallingStickerSets;
            if (i2 >= stickerSetCoveredArr.length) {
                z2 = false;
                break;
            }
            if (stickerSetCoveredArr[i2] != null) {
                TLRPC.TL_messages_stickerSet stickerSetById = MediaDataController.getInstance(this.currentAccount).getStickerSetById(this.primaryInstallingStickerSets[i2].set.f1696id);
                if (stickerSetById != null && !stickerSetById.set.archived) {
                    this.primaryInstallingStickerSets[i2] = null;
                } else if (this.primaryInstallingStickerSets[i2].set.f1696id == stickerSetCovered.set.f1696id) {
                    z2 = true;
                    break;
                }
            }
            i2++;
        }
        int iIndexOfIgnoreCase = TextUtils.isEmpty(this.searchQuery) ? -1 : AndroidUtilities.indexOfIgnoreCase(stickerSetCovered.set.title, this.searchQuery);
        if (iIndexOfIgnoreCase >= 0) {
            featuredStickerSetInfoCell2 = featuredStickerSetInfoCell;
            z3 = z;
            featuredStickerSetInfoCell2.setStickerSet(stickerSetCovered, z4, z3, iIndexOfIgnoreCase, this.searchQuery.length(), z2);
        } else {
            featuredStickerSetInfoCell2 = featuredStickerSetInfoCell;
            z3 = z;
            featuredStickerSetInfoCell2.setStickerSet(stickerSetCovered, z4, z3, 0, 0, z2);
            if (!TextUtils.isEmpty(this.searchQuery) && AndroidUtilities.indexOfIgnoreCase(stickerSetCovered.set.short_name, this.searchQuery) == 0) {
                featuredStickerSetInfoCell2.setUrl(stickerSetCovered.set.short_name, this.searchQuery.length());
            }
        }
        if (z4) {
            mediaDataController.markFeaturedStickersByIdAsRead(false, stickerSetCovered.set.f1696id);
        }
        boolean z5 = this.installingStickerSets.indexOfKey(stickerSetCovered.set.f1696id) >= 0;
        boolean z6 = this.removingStickerSets.indexOfKey(stickerSetCovered.set.f1696id) >= 0;
        if (z5 || z6) {
            if (z5 && featuredStickerSetInfoCell2.isInstalled()) {
                this.installingStickerSets.remove(stickerSetCovered.set.f1696id);
                z5 = false;
            } else if (z6 && !featuredStickerSetInfoCell2.isInstalled()) {
                this.removingStickerSets.remove(stickerSetCovered.set.f1696id);
            }
        }
        featuredStickerSetInfoCell2.setAddDrawProgress(!z2 && z5, z3);
        mediaDataController.preloadStickerSetThumb(stickerSetCovered);
        featuredStickerSetInfoCell2.setNeedDivider(i > 0);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void notifyDataSetChanged() {
        int i;
        ArrayList arrayList;
        Object obj;
        this.rowStartPack.clear();
        this.positionToRow.clear();
        this.cache.clear();
        this.positionsToSets.clear();
        this.positionToEmoji.clear();
        int i2 = 0;
        this.totalItems = 0;
        int size = this.serverPacks.size();
        int size2 = this.localPacks.size();
        int i3 = !this.emojiArrays.isEmpty() ? 1 : 0;
        int i4 = 0;
        int i5 = 0;
        while (i4 < size + size2 + i3) {
            if (i4 < size2) {
                TLRPC.TL_messages_stickerSet tL_messages_stickerSet = (TLRPC.TL_messages_stickerSet) this.localPacks.get(i4);
                arrayList = tL_messages_stickerSet.documents;
                i = size;
                obj = tL_messages_stickerSet;
            } else {
                int i6 = i4 - size2;
                if (i6 < i3) {
                    int size3 = this.emojiArrays.size();
                    String str = _UrlKt.FRAGMENT_ENCODE_SET;
                    int i7 = i2;
                    int i8 = i7;
                    while (i7 < size3) {
                        ArrayList arrayList2 = (ArrayList) this.emojiArrays.get(i7);
                        String str2 = (String) this.emojiStickers.get(arrayList2);
                        if (str2 != null && !str.equals(str2)) {
                            this.positionToEmoji.put(this.totalItems + i8, str2);
                            str = str2;
                        }
                        int size4 = arrayList2.size();
                        int i9 = i2;
                        while (i9 < size4) {
                            int i10 = this.totalItems + i8;
                            int stickersPerRow = (i8 / this.delegate.getStickersPerRow()) + i5;
                            TLRPC.Document document = (TLRPC.Document) arrayList2.get(i9);
                            int i11 = size;
                            this.cache.put(i10, document);
                            int i12 = size3;
                            String str3 = str;
                            TLRPC.TL_messages_stickerSet stickerSetById = MediaDataController.getInstance(this.currentAccount).getStickerSetById(MediaDataController.getStickerSetId(document));
                            if (stickerSetById != null) {
                                this.cacheParent.put(i10, stickerSetById);
                            }
                            this.positionToRow.put(i10, stickersPerRow);
                            i8++;
                            i9++;
                            size = i11;
                            size3 = i12;
                            str = str3;
                        }
                        i7++;
                        i2 = 0;
                    }
                    i = size;
                    int iCeil = (int) Math.ceil(i8 / this.delegate.getStickersPerRow());
                    for (int i13 = 0; i13 < iCeil; i13++) {
                        this.rowStartPack.put(i5 + i13, Integer.valueOf(i8));
                    }
                    this.totalItems += this.delegate.getStickersPerRow() * iCeil;
                    i5 += iCeil;
                    i4++;
                    size = i;
                    i2 = 0;
                } else {
                    i = size;
                    TLRPC.StickerSetCovered stickerSetCovered = (TLRPC.StickerSetCovered) this.serverPacks.get(i6 - i3);
                    arrayList = stickerSetCovered.covers;
                    obj = stickerSetCovered;
                }
            }
            if (!arrayList.isEmpty()) {
                int iCeil2 = (int) Math.ceil(arrayList.size() / this.delegate.getStickersPerRow());
                this.cache.put(this.totalItems, obj);
                if (i4 >= size2 && (obj instanceof TLRPC.StickerSetCovered)) {
                    this.positionsToSets.put(this.totalItems, (TLRPC.StickerSetCovered) obj);
                }
                this.positionToRow.put(this.totalItems, i5);
                int size5 = arrayList.size();
                int i14 = 0;
                while (i14 < size5) {
                    int i15 = i14 + 1;
                    int i16 = this.totalItems + i15;
                    int stickersPerRow2 = i5 + 1 + (i14 / this.delegate.getStickersPerRow());
                    this.cache.put(i16, (TLRPC.Document) arrayList.get(i14));
                    this.cacheParent.put(i16, obj);
                    this.positionToRow.put(i16, stickersPerRow2);
                    if (i4 >= size2 && (obj instanceof TLRPC.StickerSetCovered)) {
                        this.positionsToSets.put(i16, (TLRPC.StickerSetCovered) obj);
                    }
                    i14 = i15;
                }
                int i17 = iCeil2 + 1;
                for (int i18 = 0; i18 < i17; i18++) {
                    this.rowStartPack.put(i5 + i18, obj);
                }
                this.totalItems += (iCeil2 * this.delegate.getStickersPerRow()) + 1;
                i5 += i17;
            }
            i4++;
            size = i;
            i2 = 0;
        }
        super.notifyDataSetChanged();
    }

    public int getSpanSize(int i) {
        if (i == this.totalItems || !(this.cache.get(i) == null || (this.cache.get(i) instanceof TLRPC.Document))) {
            return this.delegate.getStickersPerRow();
        }
        return 1;
    }

    public TLRPC.StickerSetCovered getSetForPosition(int i) {
        return (TLRPC.StickerSetCovered) this.positionsToSets.get(i);
    }

    public void updateColors(RecyclerListView recyclerListView) {
        int childCount = recyclerListView.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = recyclerListView.getChildAt(i);
            if (childAt instanceof FeaturedStickerSetInfoCell) {
                ((FeaturedStickerSetInfoCell) childAt).updateColors();
            } else if (childAt instanceof StickerSetNameCell) {
                ((StickerSetNameCell) childAt).updateColors();
            }
        }
    }

    public void getThemeDescriptions(List list, RecyclerListView recyclerListView, ThemeDescription.ThemeDescriptionDelegate themeDescriptionDelegate) {
        FeaturedStickerSetInfoCell.createThemeDescriptions(list, recyclerListView, themeDescriptionDelegate);
        StickerSetNameCell.createThemeDescriptions(list, recyclerListView, themeDescriptionDelegate);
        ImageView imageView = this.emptyImageView;
        int i = ThemeDescription.FLAG_IMAGECOLOR;
        int i2 = Theme.key_chat_emojiPanelEmptyText;
        list.add(new ThemeDescription(imageView, i, null, null, null, null, i2));
        list.add(new ThemeDescription(this.emptyTextView, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, i2));
    }

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }
}
