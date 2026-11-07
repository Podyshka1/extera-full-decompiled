package org.telegram.ui.QrShare;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.function.Consumer;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.Components.AnimatedEmojiDrawable;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.RecyclerAnimationScrollHelper;
import org.telegram.ui.Components.RecyclerListView;

/* JADX INFO: loaded from: classes7.dex */
@SuppressLint({"ViewConstructor"})
public abstract class QrEmojiPanel extends FrameLayout implements NotificationCenter.NotificationCenterDelegate {
    private static final long[] PRESETS = {5449505950283078474L, 5420315771991497307L, 5373141891321699086L, 5373026167722876724L, 5435957248314579621L, 5440354006335495210L, 5436040291507247633L, 5445284980978621387L, 5442983582882601962L, 5409008750893734809L, 5371017798065592581L, 5472030678633684592L, 5467583879948803288L, 5471952986970267163L, 5415696465945173620L, 5397915559037785261L, 5283020991981693429L, 5283051451889756068L, 5282816560128336499L, 5465449362807070392L, 5470012829983580233L};
    private static final PorterDuffColorFilter TEXT_COLOR = new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_IN);
    private final int account;
    private final Adapter adapter;
    private ArrayList<Long> applied;
    private final Delegate delegate;
    private final Grid grid;
    private int headerColor;
    private int itemCount;
    private final GridLayoutManager layoutManager;
    private boolean premium;
    private final HashSet<Long> presetIds;
    private TLRPC.TL_messages_stickerSet presetSet;
    private boolean presetsFailed;
    private final HashSet<Long> presetsFetched;
    private boolean presetsRequested;
    private boolean recentDirty;
    private final RecyclerAnimationScrollHelper scrollHelper;
    private final ArrayList<Section> sections;
    private boolean smoothScrolling;
    private int spanCount;
    private final Tabs tabs;

    public interface BoundsDraw {
        void draw(Canvas canvas, float f, float f2, float f3, float f4);
    }

    public interface Delegate {
        void onEmojiPicked(long j, TLRPC.Document document);

        void onUnlock();
    }

    public static final class Section {
        final ArrayList<TLRPC.Document> documents;
        final int kind;
        final long setId;
        int start;
        final String title;

        public Section(int i, String str, long j, ArrayList<TLRPC.Document> arrayList) {
            this.kind = i;
            this.title = str;
            this.setId = j;
            this.documents = arrayList;
        }
    }

    public QrEmojiPanel(Context context, int i, final Delegate delegate) {
        super(context);
        Adapter adapter = new Adapter();
        this.adapter = adapter;
        this.sections = new ArrayList<>();
        this.spanCount = 7;
        this.headerColor = -1711276033;
        this.presetsFetched = new HashSet<>();
        this.presetIds = new HashSet<>();
        this.account = i;
        this.delegate = delegate;
        this.premium = UserConfig.getInstance(i).isPremium();
        Grid grid = new Grid(context);
        this.grid = grid;
        GridLayoutManager gridLayoutManager = new GridLayoutManager(context, this.spanCount);
        this.layoutManager = gridLayoutManager;
        gridLayoutManager.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup() { // from class: org.telegram.ui.QrShare.QrEmojiPanel.1
            @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
            public int getSpanSize(int i2) {
                if (QrEmojiPanel.this.adapter.getItemViewType(i2) == 0) {
                    return QrEmojiPanel.this.spanCount;
                }
                return 1;
            }
        });
        grid.setLayoutManager(gridLayoutManager);
        RecyclerAnimationScrollHelper recyclerAnimationScrollHelper = new RecyclerAnimationScrollHelper(grid, gridLayoutManager);
        this.scrollHelper = recyclerAnimationScrollHelper;
        recyclerAnimationScrollHelper.setAnimationCallback(new RecyclerAnimationScrollHelper.AnimationCallback() { // from class: org.telegram.ui.QrShare.QrEmojiPanel.2
            @Override // org.telegram.ui.Components.RecyclerAnimationScrollHelper.AnimationCallback
            public void onEndAnimation() {
                QrEmojiPanel.this.smoothScrolling = false;
            }
        });
        grid.setAdapter(adapter);
        grid.setSelectorDrawableColor(0);
        grid.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.QrShare.QrEmojiPanel$$ExternalSyntheticLambda3
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i2) {
                QrEmojiPanel.$r8$lambda$ONOoyF5g6WqGedkousbO5zx4aRU(delegate, view, i2);
            }
        });
        grid.setItemAnimator(null);
        grid.setOverScrollMode(2);
        grid.setVerticalScrollBarEnabled(false);
        grid.setClipToPadding(false);
        grid.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.QrShare.QrEmojiPanel.3
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i2, int i3) {
                if (QrEmojiPanel.this.smoothScrolling) {
                    return;
                }
                Tabs tabs = QrEmojiPanel.this.tabs;
                QrEmojiPanel qrEmojiPanel = QrEmojiPanel.this;
                tabs.select(qrEmojiPanel.sectionAt(qrEmojiPanel.firstShownPosition()), true);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i2) {
                if (i2 == 0) {
                    QrEmojiPanel.this.smoothScrolling = false;
                }
            }
        });
        addView(grid, LayoutHelper.createFrame(-1, -1.0f));
        Tabs tabs = new Tabs(context);
        this.tabs = tabs;
        addView(tabs, LayoutHelper.createFrame(-1, 36, 48));
        reload();
    }

    public static /* synthetic */ void $r8$lambda$ONOoyF5g6WqGedkousbO5zx4aRU(Delegate delegate, View view, int i) {
        if (view instanceof Cell) {
            Cell cell = (Cell) view;
            if (cell.document == null || cell.document.id == 0) {
                return;
            }
            TLRPC.Document document = cell.document;
            delegate.onEmojiPicked(document.id, document);
        }
    }

    public Grid getGrid() {
        return this.grid;
    }

    public Tabs getTabs() {
        return this.tabs;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        NotificationCenter.getInstance(this.account).addObserver(this, NotificationCenter.stickersDidLoad);
        NotificationCenter.getInstance(this.account).addObserver(this, NotificationCenter.groupStickersDidLoad);
        reload();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        NotificationCenter.getInstance(this.account).removeObserver(this, NotificationCenter.stickersDidLoad);
        NotificationCenter.getInstance(this.account).removeObserver(this, NotificationCenter.groupStickersDidLoad);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.stickersDidLoad && objArr.length > 0) {
            Object obj = objArr[0];
            if ((obj instanceof Integer) && ((Integer) obj).intValue() != 5) {
                return;
            }
        }
        reload();
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        int iMax = Math.max(5, ((i - this.grid.getPaddingLeft()) - this.grid.getPaddingRight()) / AndroidUtilities.dp(46.0f));
        if (iMax != this.spanCount) {
            this.spanCount = iMax;
            this.layoutManager.setSpanCount(iMax);
            post(new Runnable() { // from class: org.telegram.ui.QrShare.QrEmojiPanel$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.reload();
                }
            });
        }
    }

    public static boolean isTextColor(Drawable drawable) {
        return (drawable instanceof AnimatedEmojiDrawable) && MessageObject.isTextColorEmoji(((AnimatedEmojiDrawable) drawable).getDocument());
    }

    public static void drawEmoji(Canvas canvas, Drawable drawable) {
        boolean zIsTextColor = isTextColor(drawable);
        if (zIsTextColor) {
            drawable.setColorFilter(TEXT_COLOR);
        }
        drawable.draw(canvas);
        if (zIsTextColor) {
            drawable.setColorFilter(null);
        }
    }

    private static boolean isLottie(TLRPC.Document document) {
        return document != null && "application/x-tgsticker".equals(document.mime_type);
    }

    public boolean isPreset(long j) {
        return this.presetIds.contains(Long.valueOf(j));
    }

    public void addRecent(long j) {
        ArrayList<Long> arrayListApplied = applied();
        arrayListApplied.remove(Long.valueOf(j));
        arrayListApplied.add(0, Long.valueOf(j));
        while (arrayListApplied.size() > PRESETS.length) {
            arrayListApplied.remove(arrayListApplied.size() - 1);
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < arrayListApplied.size(); i++) {
            if (i > 0) {
                sb.append(',');
            }
            sb.append(arrayListApplied.get(i));
        }
        MessagesController.getMainSettings(this.account).edit().putString("qrAppliedEmoji", sb.toString()).apply();
        this.recentDirty = true;
    }

    public void refreshRecent() {
        if (this.recentDirty) {
            this.recentDirty = false;
            reload();
        }
    }

    public void setHeaderColor(int i) {
        if (this.headerColor == i) {
            return;
        }
        this.headerColor = i;
        for (int i2 = 0; i2 < this.grid.getChildCount(); i2++) {
            View childAt = this.grid.getChildAt(i2);
            if (childAt instanceof Header) {
                ((Header) childAt).title.setTextColor(i);
            }
        }
    }

    private ArrayList<Long> applied() {
        if (this.applied == null) {
            this.applied = new ArrayList<>();
            for (String str : MessagesController.getMainSettings(this.account).getString("qrAppliedEmoji", _UrlKt.FRAGMENT_ENCODE_SET).split(",")) {
                try {
                    if (!str.isEmpty()) {
                        this.applied.add(Long.valueOf(Long.parseLong(str)));
                    }
                } catch (NumberFormatException unused) {
                }
            }
        }
        return this.applied;
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0123 A[EDGE_INSN: B:85:0x0123->B:66:0x0123 BREAK  A[LOOP:3: B:47:0x00c9->B:65:0x0120], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private ArrayList<TLRPC.Document> presets() {
        long jLongValue;
        long[] jArr;
        ArrayList<TLRPC.TL_stickerPack> arrayList;
        String str;
        ArrayList<Long> arrayList2;
        ArrayList<TLRPC.Document> arrayList3;
        ArrayList<TLRPC.Document> arrayList4;
        if (this.presetSet == null && !this.presetsRequested) {
            this.presetsRequested = true;
            TLRPC.TL_inputStickerSetShortName tL_inputStickerSetShortName = new TLRPC.TL_inputStickerSetShortName();
            tL_inputStickerSetShortName.short_name = "RestrictedEmoji";
            TLRPC.TL_messages_stickerSet stickerSet = MediaDataController.getInstance(this.account).getStickerSet(tL_inputStickerSetShortName, null, false, true, new Utilities.Callback() { // from class: org.telegram.ui.QrShare.QrEmojiPanel$$ExternalSyntheticLambda1
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$presets$1((TLRPC.TL_messages_stickerSet) obj);
                }
            });
            if (stickerSet != null && (arrayList4 = stickerSet.documents) != null && !arrayList4.isEmpty()) {
                this.presetSet = stickerSet;
            }
        }
        ArrayList<TLRPC.Document> arrayList5 = new ArrayList<>(PRESETS.length);
        this.presetIds.clear();
        int i = 0;
        if (this.presetSet == null && !this.presetsFailed) {
            while (i < PRESETS.length) {
                arrayList5.add(new TLRPC.TL_documentEmpty());
                i++;
            }
        } else {
            HashMap map = new HashMap();
            TLRPC.TL_messages_stickerSet tL_messages_stickerSet = this.presetSet;
            if (tL_messages_stickerSet != null && (arrayList3 = tL_messages_stickerSet.documents) != null) {
                int size = arrayList3.size();
                int i2 = 0;
                while (i2 < size) {
                    TLRPC.Document document = arrayList3.get(i2);
                    i2++;
                    TLRPC.Document document2 = document;
                    if (document2 != null) {
                        map.put(Long.valueOf(document2.id), document2);
                    }
                }
            }
            TLRPC.TL_messages_stickerSet tL_messages_stickerSet2 = this.presetSet;
            if (tL_messages_stickerSet2 == null || (arrayList = tL_messages_stickerSet2.packs) == null) {
                jLongValue = 0;
                while (true) {
                    jArr = PRESETS;
                    if (i < jArr.length) {
                        break;
                    }
                    long j = (i == 4 && jLongValue != 0 && map.containsKey(Long.valueOf(jLongValue))) ? jLongValue : jArr[i];
                    TLRPC.Document documentFindDocument = (TLRPC.Document) map.get(Long.valueOf(j));
                    if (documentFindDocument == null) {
                        documentFindDocument = AnimatedEmojiDrawable.findDocument(this.account, j);
                    }
                    if (documentFindDocument != null) {
                        arrayList5.add(documentFindDocument);
                        this.presetIds.add(Long.valueOf(documentFindDocument.id));
                    } else if (this.presetsFetched.add(Long.valueOf(j))) {
                        AnimatedEmojiDrawable.getDocumentFetcher(this.account).fetchDocument(j, new AnimatedEmojiDrawable.ReceivedDocument() { // from class: org.telegram.ui.QrShare.QrEmojiPanel$$ExternalSyntheticLambda2
                            @Override // org.telegram.ui.Components.AnimatedEmojiDrawable.ReceivedDocument
                            public final void run(TLRPC.Document document3) {
                                this.f$0.lambda$presets$3(document3);
                            }
                        });
                    }
                    i++;
                }
            } else {
                int size2 = arrayList.size();
                int i3 = 0;
                while (i3 < size2) {
                    TLRPC.TL_stickerPack tL_stickerPack = arrayList.get(i3);
                    i3++;
                    TLRPC.TL_stickerPack tL_stickerPack2 = tL_stickerPack;
                    if (tL_stickerPack2 != null && (str = tL_stickerPack2.emoticon) != null && str.replace("️", _UrlKt.FRAGMENT_ENCODE_SET).equals("❄") && (arrayList2 = tL_stickerPack2.documents) != null && !arrayList2.isEmpty()) {
                        jLongValue = tL_stickerPack2.documents.get(0).longValue();
                        break;
                    }
                }
                jLongValue = 0;
                while (true) {
                    jArr = PRESETS;
                    if (i < jArr.length) {
                    }
                    i++;
                }
            }
        }
        return arrayList5;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$presets$1(TLRPC.TL_messages_stickerSet tL_messages_stickerSet) {
        if (this.presetSet != null) {
            return;
        }
        if (tL_messages_stickerSet == null || tL_messages_stickerSet.documents == null) {
            this.presetsFailed = true;
        } else {
            this.presetSet = tL_messages_stickerSet;
        }
        reload();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$presets$3(final TLRPC.Document document) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.QrShare.QrEmojiPanel$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$presets$2(document);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$presets$2(TLRPC.Document document) {
        if (document != null) {
            reload();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reload() {
        int i;
        TLRPC.Document documentFindDocument;
        MediaDataController mediaDataController = MediaDataController.getInstance(this.account);
        this.sections.clear();
        ArrayList arrayList = new ArrayList();
        ArrayList<TLRPC.TL_messages_stickerSet> stickerSets = mediaDataController.getStickerSets(5);
        int size = stickerSets.size();
        int i2 = 0;
        while (i2 < size) {
            TLRPC.TL_messages_stickerSet tL_messages_stickerSet = stickerSets.get(i2);
            i2++;
            TLRPC.TL_messages_stickerSet tL_messages_stickerSet2 = tL_messages_stickerSet;
            if (tL_messages_stickerSet2 != null && tL_messages_stickerSet2.set != null && tL_messages_stickerSet2.documents != null) {
                ArrayList arrayList2 = new ArrayList();
                ArrayList<TLRPC.Document> arrayList3 = tL_messages_stickerSet2.documents;
                int size2 = arrayList3.size();
                int i3 = 0;
                while (i3 < size2) {
                    TLRPC.Document document = arrayList3.get(i3);
                    i3++;
                    TLRPC.Document document2 = document;
                    if (isLottie(document2)) {
                        arrayList2.add(document2);
                    }
                }
                if (!arrayList2.isEmpty()) {
                    TLRPC.StickerSet stickerSet = tL_messages_stickerSet2.set;
                    arrayList.add(new Section(2, stickerSet.title, stickerSet.id, arrayList2));
                }
            }
        }
        ArrayList<TLRPC.Document> arrayListPresets = presets();
        if (!arrayListPresets.isEmpty()) {
            this.sections.add(new Section(0, LocaleController.getString(C2807R.string.QrEmojiPresets), 0L, arrayListPresets));
        }
        ArrayList arrayList4 = new ArrayList();
        HashSet hashSet = new HashSet();
        int i4 = this.spanCount * 3;
        ArrayList<Long> arrayListApplied = applied();
        int i5 = 0;
        while (i5 < arrayListApplied.size() && arrayList4.size() < i4) {
            long jLongValue = arrayListApplied.get(i5).longValue();
            int size3 = arrayListPresets.size();
            int i6 = 0;
            while (true) {
                if (i6 >= size3) {
                    i = i4;
                    documentFindDocument = null;
                    break;
                }
                TLRPC.Document document3 = arrayListPresets.get(i6);
                i6++;
                documentFindDocument = document3;
                i = i4;
                if (documentFindDocument.id == jLongValue) {
                    break;
                } else {
                    i4 = i;
                }
            }
            if (documentFindDocument == null) {
                documentFindDocument = AnimatedEmojiDrawable.findDocument(this.account, jLongValue);
            }
            if (isLottie(documentFindDocument) && hashSet.add(Long.valueOf(documentFindDocument.id))) {
                arrayList4.add(documentFindDocument);
            }
            i5++;
            i4 = i;
        }
        int i7 = i4;
        int i8 = 0;
        while (true) {
            ArrayList<String> arrayList5 = Emoji.recentEmoji;
            if (i8 >= arrayList5.size() || arrayList4.size() >= i7) {
                break;
            }
            String str = arrayList5.get(i8);
            if (str != null && str.startsWith("animated_")) {
                try {
                    TLRPC.Document documentFindDocument2 = AnimatedEmojiDrawable.findDocument(this.account, Long.parseLong(str.substring(9)));
                    if (isLottie(documentFindDocument2) && hashSet.add(Long.valueOf(documentFindDocument2.id))) {
                        arrayList4.add(documentFindDocument2);
                    }
                } catch (NumberFormatException unused) {
                }
            }
            i8++;
        }
        if (!arrayList4.isEmpty()) {
            this.sections.add(new Section(1, LocaleController.getString(C2807R.string.RecentlyUsed), 0L, arrayList4));
        }
        this.sections.addAll(arrayList);
        ArrayList<Section> arrayList6 = this.sections;
        int size4 = arrayList6.size();
        int size5 = 0;
        int i9 = 0;
        while (i9 < size4) {
            Section section = arrayList6.get(i9);
            i9++;
            Section section2 = section;
            section2.start = size5;
            size5 += (section2.title != null ? 1 : 0) + section2.documents.size();
        }
        this.itemCount = size5;
        this.adapter.notifyDataSetChanged();
        this.tabs.setSections(this.sections);
        this.tabs.select(sectionAt(firstShownPosition()), false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int sectionAt(int i) {
        for (int size = this.sections.size() - 1; size >= 0; size--) {
            if (this.sections.get(size).start <= i) {
                return size;
            }
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int firstShownPosition() {
        int childAdapterPosition;
        int paddingTop = this.grid.getPaddingTop();
        int i = Integer.MAX_VALUE;
        int i2 = -1;
        for (int i3 = 0; i3 < this.grid.getChildCount(); i3++) {
            View childAt = this.grid.getChildAt(i3);
            int decoratedTop = this.layoutManager.getDecoratedTop(childAt);
            if (decoratedTop >= paddingTop && decoratedTop < i && (childAdapterPosition = this.grid.getChildAdapterPosition(childAt)) != -1) {
                i2 = childAdapterPosition;
                i = decoratedTop;
            }
        }
        if (i2 != -1) {
            return i2;
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scrollToSection(int i) {
        if (i < 0 || i >= this.sections.size()) {
            return;
        }
        this.smoothScrolling = true;
        this.tabs.select(i, true);
        int i2 = this.sections.get(i).start;
        int iFindFirstVisibleItemPosition = this.layoutManager.findFirstVisibleItemPosition();
        if ((this.layoutManager.findViewByPosition(i2) == null && Math.abs(i2 - iFindFirstVisibleItemPosition) > this.spanCount * 9) || !SharedConfig.animationsEnabled()) {
            this.grid.stopScroll();
            this.scrollHelper.setScrollDirection(iFindFirstVisibleItemPosition < i2 ? 0 : 1);
            this.scrollHelper.scrollToPosition(i2, 0, false, true);
        } else {
            LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(getContext()) { // from class: org.telegram.ui.QrShare.QrEmojiPanel.4
                @Override // androidx.recyclerview.widget.LinearSmoothScroller
                public int getVerticalSnapPreference() {
                    return -1;
                }
            };
            linearSmoothScroller.setTargetPosition(this.sections.get(i).start);
            this.layoutManager.startSmoothScroll(linearSmoothScroller);
        }
    }

    public static class Grid extends RecyclerListView {
        public Consumer<Canvas> afterChildrenDraw;
        public Consumer<Canvas> beforeChildrenDraw;

        public Grid(Context context) {
            super(context);
        }

        @Override // org.telegram.ui.Components.RecyclerListView, android.view.ViewGroup, android.view.View
        public void dispatchDraw(Canvas canvas) {
            Canvas canvas2;
            int iSaveLayer;
            if (this.afterChildrenDraw != null) {
                canvas2 = canvas;
                iSaveLayer = canvas2.saveLayer(0.0f, 0.0f, getWidth(), getHeight(), null);
            } else {
                canvas2 = canvas;
                iSaveLayer = -1;
            }
            Consumer<Canvas> consumer = this.beforeChildrenDraw;
            if (consumer != null) {
                consumer.accept(canvas2);
            }
            super.dispatchDraw(canvas2);
            Consumer<Canvas> consumer2 = this.afterChildrenDraw;
            if (consumer2 != null) {
                consumer2.accept(canvas2);
                canvas2.restoreToCount(iSaveLayer);
            }
        }
    }

    public static class Cell extends View {
        private final int account;
        public float cascadeScale;
        private TLRPC.Document document;
        private long documentId;
        private AnimatedEmojiDrawable drawable;
        private String key;
        private final Paint placeholder;
        private float pressK;
        public float selectScale;

        public Cell(Context context, int i) {
            super(context);
            Paint paint = new Paint(1);
            this.placeholder = paint;
            this.selectScale = 1.0f;
            this.cascadeScale = 1.0f;
            this.account = i;
            paint.setColor(738197503);
        }

        public String getKey() {
            return this.key;
        }

        public void set(TLRPC.Document document) {
            long j = document.id;
            if (j == 0) {
                if (this.drawable != null && isAttachedToWindow()) {
                    this.drawable.removeView(this);
                }
                this.drawable = null;
                this.documentId = 0L;
                this.document = document;
                this.key = null;
                invalidate();
                return;
            }
            if (j != this.documentId || this.drawable == null) {
                if (this.drawable != null && isAttachedToWindow()) {
                    this.drawable.removeView(this);
                }
                this.documentId = document.id;
                this.document = document;
                this.key = "c:" + document.id;
                this.drawable = AnimatedEmojiDrawable.make(this.account, 2, document);
                if (isAttachedToWindow()) {
                    this.drawable.addView(this);
                }
                setContentDescription(document.id + _UrlKt.FRAGMENT_ENCODE_SET);
                invalidate();
            }
        }

        @Override // android.view.View
        public void onAttachedToWindow() {
            super.onAttachedToWindow();
            AnimatedEmojiDrawable animatedEmojiDrawable = this.drawable;
            if (animatedEmojiDrawable != null) {
                animatedEmojiDrawable.addView(this);
            }
        }

        @Override // android.view.View
        public void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            AnimatedEmojiDrawable animatedEmojiDrawable = this.drawable;
            if (animatedEmojiDrawable != null) {
                animatedEmojiDrawable.removeView(this);
            }
        }

        @Override // android.view.View
        public void onMeasure(int i, int i2) {
            int size = View.MeasureSpec.getSize(i);
            setMeasuredDimension(size, size);
        }

        @Override // android.view.View
        public void setPressed(boolean z) {
            if (z != isPressed()) {
                super.setPressed(z);
                invalidate();
            }
        }

        @Override // android.view.View
        public void onDraw(Canvas canvas) {
            float f = isPressed() ? 1.0f : 0.0f;
            float f2 = this.pressK;
            if (f2 != f) {
                if (Math.abs(f2 - f) >= 0.02f) {
                    float f3 = this.pressK;
                    f = ((f - f3) * 0.35f) + f3;
                }
                this.pressK = f;
                invalidate();
            }
            float f4 = (1.0f - (this.pressK * 0.2f)) * this.selectScale * this.cascadeScale;
            if (f4 <= 0.01f) {
                return;
            }
            float width = getWidth() * 0.78f * f4;
            float width2 = getWidth() / 2.0f;
            float height = getHeight() / 2.0f;
            AnimatedEmojiDrawable animatedEmojiDrawable = this.drawable;
            if (animatedEmojiDrawable == null || animatedEmojiDrawable.getImageReceiver() == null || !this.drawable.getImageReceiver().hasBitmapImage()) {
                canvas.drawCircle(width2, height, 0.42f * width, this.placeholder);
            }
            AnimatedEmojiDrawable animatedEmojiDrawable2 = this.drawable;
            if (animatedEmojiDrawable2 != null) {
                float f5 = width / 2.0f;
                animatedEmojiDrawable2.setBounds((int) (width2 - f5), (int) (height - f5), (int) (width2 + f5), (int) (height + f5));
                QrEmojiPanel.drawEmoji(canvas, this.drawable);
            }
        }
    }

    public final class Header extends FrameLayout {
        final TextView title;
        final TextView unlock;

        public Header(Context context) {
            super(context);
            TextView textView = new TextView(context);
            this.title = textView;
            textView.setTextColor(QrEmojiPanel.this.headerColor);
            textView.setTextSize(1, 15.0f);
            textView.setTypeface(AndroidUtilities.bold());
            textView.setSingleLine();
            textView.setEllipsize(TextUtils.TruncateAt.END);
            textView.setGravity(16);
            addView(textView, LayoutHelper.createFrame(-1, -1.0f, 51, 15.0f, 8.0f, 15.0f, 0.0f));
            TextView textView2 = new TextView(context);
            this.unlock = textView2;
            textView2.setTextColor(-1);
            textView2.setTextSize(1, 13.0f);
            textView2.setTypeface(AndroidUtilities.bold());
            textView2.setGravity(17);
            textView2.setPadding(AndroidUtilities.dp(10.0f), 0, AndroidUtilities.dp(10.0f), 0);
            textView2.setText(LocaleController.getString(C2807R.string.Unlock));
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setColor(620756991);
            gradientDrawable.setCornerRadius(AndroidUtilities.dp(13.0f));
            textView2.setBackground(gradientDrawable);
            textView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.QrShare.QrEmojiPanel$Header$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$0(view);
                }
            });
            addView(textView2, LayoutHelper.createFrame(-2, 26.0f, 21, 0.0f, 4.0f, 12.0f, 0.0f));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(View view) {
            QrEmojiPanel.this.delegate.onUnlock();
        }

        public void set(String str, boolean z) {
            this.title.setText(str != null ? str.replace('\n', ' ') : null);
            this.title.setTextColor(QrEmojiPanel.this.headerColor);
            this.unlock.setVisibility(z ? 0 : 8);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.title.getLayoutParams();
            int iDp = AndroidUtilities.dp(15.0f) + (z ? AndroidUtilities.dp(6.0f) + AndroidUtilities.dp(12.0f) + ((int) Math.ceil(this.unlock.getPaint().measureText(this.unlock.getText().toString()))) + AndroidUtilities.dp(20.0f) : 0);
            if (layoutParams.rightMargin != iDp) {
                layoutParams.rightMargin = iDp;
                this.title.setLayoutParams(layoutParams);
            }
        }
    }

    public final class Adapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
        private Adapter() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return QrEmojiPanel.this.itemCount;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            Section section = (Section) QrEmojiPanel.this.sections.get(QrEmojiPanel.this.sectionAt(i));
            return (section.title == null || i != section.start) ? 1 : 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View cell;
            if (i == 0) {
                cell = QrEmojiPanel.this.new Header(viewGroup.getContext());
                cell.setLayoutParams(new RecyclerView.LayoutParams(-1, AndroidUtilities.dp(44.0f)));
            } else {
                cell = new Cell(viewGroup.getContext(), QrEmojiPanel.this.account);
                cell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            }
            return new RecyclerView.ViewHolder(cell) { // from class: org.telegram.ui.QrShare.QrEmojiPanel.Adapter.1
            };
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            bind(viewHolder, i);
        }

        private void bind(RecyclerView.ViewHolder viewHolder, int i) {
            Section section = (Section) QrEmojiPanel.this.sections.get(QrEmojiPanel.this.sectionAt(i));
            z = false;
            boolean z = false;
            if (viewHolder.getItemViewType() == 0) {
                Header header = (Header) viewHolder.itemView;
                String str = section.title;
                if (!QrEmojiPanel.this.premium && section.kind == 2) {
                    z = true;
                }
                header.set(str, z);
                return;
            }
            ((Cell) viewHolder.itemView).set(section.documents.get((i - section.start) - (section.title != null ? 1 : 0)));
        }
    }

    public class Tabs extends HorizontalScrollView {
        private final Paint circle;
        private float circleX;
        private final LinearLayout content;
        public BoundsDraw overDraw;
        private int selected;
        public BoundsDraw underDraw;

        public Tabs(Context context) {
            super(context);
            Paint paint = new Paint(1);
            this.circle = paint;
            this.selected = -1;
            this.circleX = Float.NaN;
            setHorizontalScrollBarEnabled(false);
            setOverScrollMode(2);
            setFillViewport(true);
            setWillNotDraw(false);
            LinearLayout linearLayout = new LinearLayout(context) { // from class: org.telegram.ui.QrShare.QrEmojiPanel.Tabs.1
                @Override // android.view.ViewGroup, android.view.View
                public void dispatchDraw(Canvas canvas) {
                    Tabs.this.drawCircle(canvas);
                    super.dispatchDraw(canvas);
                }
            };
            this.content = linearLayout;
            linearLayout.setOrientation(0);
            linearLayout.setGravity(16);
            linearLayout.setPadding(AndroidUtilities.dp(3.0f), 0, AndroidUtilities.dp(3.0f), 0);
            addView(linearLayout, new FrameLayout.LayoutParams(-2, -1));
            paint.setColor(1560281087);
        }

        public void setSections(ArrayList<Section> arrayList) {
            this.content.removeAllViews();
            for (final int i = 0; i < arrayList.size(); i++) {
                Section section = arrayList.get(i);
                QrEmojiPanel qrEmojiPanel = QrEmojiPanel.this;
                Context context = getContext();
                int i2 = section.kind;
                Tab tab = qrEmojiPanel.new Tab(context, i2, i2 == 2 ? section.documents.get(0) : null);
                tab.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.QrShare.QrEmojiPanel$Tabs$$ExternalSyntheticLambda0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$setSections$0(i, view);
                    }
                });
                tab.setContentDescription(section.title);
                this.content.addView(tab, new LinearLayout.LayoutParams(AndroidUtilities.dp(34.0f), AndroidUtilities.dp(30.0f)));
            }
            this.selected = -1;
            this.circleX = Float.NaN;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setSections$0(int i, View view) {
            QrEmojiPanel.this.scrollToSection(i);
        }

        public void select(int i, boolean z) {
            if (i == this.selected || i < 0 || i >= this.content.getChildCount()) {
                return;
            }
            this.selected = i;
            if (!z) {
                this.circleX = Float.NaN;
            }
            View childAt = this.content.getChildAt(i);
            int left = childAt.getLeft() - AndroidUtilities.dp(30.0f);
            int right = childAt.getRight() + AndroidUtilities.dp(30.0f);
            if (left < getScrollX()) {
                if (z) {
                    smoothScrollTo(left, 0);
                } else {
                    scrollTo(left, 0);
                }
            } else if (right > getScrollX() + getWidth()) {
                if (z) {
                    smoothScrollTo(right - getWidth(), 0);
                } else {
                    scrollTo(right - getWidth(), 0);
                }
            }
            this.content.invalidate();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void drawCircle(Canvas canvas) {
            int i = this.selected;
            if (i < 0 || i >= this.content.getChildCount()) {
                return;
            }
            float left = r0.getLeft() + (r0.getWidth() / 2.0f);
            if (this.content.getChildAt(this.selected).getWidth() == 0) {
                return;
            }
            if (Float.isNaN(this.circleX)) {
                this.circleX = left;
            } else {
                float f = this.circleX;
                if (f != left) {
                    float f2 = left - f;
                    if (Math.abs(f2) >= 0.5f) {
                        left = this.circleX + (f2 * 0.3f);
                    }
                    this.circleX = left;
                    this.content.invalidate();
                }
            }
            canvas.drawCircle(this.circleX, this.content.getHeight() / 2.0f, (getHeight() - AndroidUtilities.dp(6.0f)) / 2.0f, this.circle);
        }

        @Override // android.widget.HorizontalScrollView, android.view.View
        public void draw(Canvas canvas) {
            Canvas canvas2;
            BoundsDraw boundsDraw = this.underDraw;
            if (boundsDraw != null) {
                canvas2 = canvas;
                boundsDraw.draw(canvas2, getScrollX(), 0.0f, getScrollX() + getWidth(), getHeight());
            } else {
                canvas2 = canvas;
            }
            super.draw(canvas2);
            BoundsDraw boundsDraw2 = this.overDraw;
            if (boundsDraw2 != null) {
                boundsDraw2.draw(canvas2, getScrollX(), 0.0f, getScrollX() + getWidth(), getHeight());
            }
        }
    }

    public final class Tab extends View {
        private final AnimatedEmojiDrawable emoji;
        private final Drawable icon;
        private float pressK;
        private boolean pressed;

        public Tab(Context context, int i, TLRPC.Document document) {
            super(context);
            if (document != null) {
                this.emoji = AnimatedEmojiDrawable.make(QrEmojiPanel.this.account, 5, document);
                this.icon = null;
            } else {
                this.emoji = null;
                Drawable drawableMutate = ContextCompat.getDrawable(context, i == 0 ? C2807R.drawable.emoji_tabs_faves : C2807R.drawable.msg_emoji_recent).mutate();
                this.icon = drawableMutate;
                drawableMutate.setColorFilter(new PorterDuffColorFilter(-1711276033, PorterDuff.Mode.SRC_IN));
            }
        }

        @Override // android.view.View
        public void onAttachedToWindow() {
            super.onAttachedToWindow();
            AnimatedEmojiDrawable animatedEmojiDrawable = this.emoji;
            if (animatedEmojiDrawable != null) {
                animatedEmojiDrawable.addView(this);
            }
        }

        @Override // android.view.View
        public void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            AnimatedEmojiDrawable animatedEmojiDrawable = this.emoji;
            if (animatedEmojiDrawable != null) {
                animatedEmojiDrawable.removeView(this);
            }
        }

        @Override // android.view.View
        @SuppressLint({"ClickableViewAccessibility"})
        public boolean onTouchEvent(MotionEvent motionEvent) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                this.pressed = true;
                invalidate();
            } else if (actionMasked == 1 || actionMasked == 3) {
                this.pressed = false;
                invalidate();
            }
            return super.onTouchEvent(motionEvent);
        }

        @Override // android.view.View
        public void onDraw(Canvas canvas) {
            float f = this.pressed ? 1.0f : 0.0f;
            float f2 = this.pressK;
            if (f2 != f) {
                if (Math.abs(f2 - f) >= 0.02f) {
                    float f3 = this.pressK;
                    f = ((f - f3) * 0.35f) + f3;
                }
                this.pressK = f;
                invalidate();
            }
            float fDp = AndroidUtilities.dp(26.0f) * (1.0f - (CubicBezierInterpolator.EASE_OUT.getInterpolation(this.pressK) * 0.15f));
            float f4 = fDp / 2.0f;
            int width = (int) ((getWidth() / 2.0f) - f4);
            int height = (int) ((getHeight() / 2.0f) - f4);
            Drawable drawable = this.emoji;
            if (drawable == null) {
                drawable = this.icon;
            }
            if (drawable != null) {
                drawable.setBounds(width, height, (int) (width + fDp), (int) (height + fDp));
                QrEmojiPanel.drawEmoji(canvas, drawable);
            }
        }
    }
}
