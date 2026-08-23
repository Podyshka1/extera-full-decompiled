package org.telegram.ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.os.Build;
import android.os.SystemClock;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.util.Pair;
import android.util.SparseIntArray;
import android.util.StateSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewPropertyAnimator;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import androidx.core.util.Consumer;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.exteragram.messenger.DividerStyle;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.utils.system.VibratorUtils;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C2573R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.GenericProvider;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLObject;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.ActionBar.ThemeDescription;
import org.telegram.ui.Cells.ChatActionCell;
import org.telegram.ui.Cells.ChatMessageCell;
import org.telegram.ui.Cells.CollapseTextCell;
import org.telegram.ui.Cells.GraySectionCell;
import org.telegram.ui.Cells.HeaderCell;
import org.telegram.ui.Cells.ShadowSectionCell;
import org.telegram.ui.Cells.TextInfoPrivacyCell;
import org.telegram.ui.Components.EdgeEffectTrackerFactory;
import org.telegram.ui.Components.GestureDetectorFixDoubleTap;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.blur3.BlurredBackgroundDrawableViewFactory;
import org.telegram.ui.Components.blur3.capture.IBlur3Capture;
import org.telegram.ui.Components.blur3.capture.IBlur3Hash;
import org.telegram.ui.Components.blur3.drawable.BlurredBackgroundDrawable;
import org.telegram.ui.Components.blur3.drawable.color.BlurredBackgroundProvider;
import org.telegram.ui.FiltersSetupActivity;

/* JADX INFO: loaded from: classes3.dex */
public class RecyclerListView extends RecyclerView implements IBlur3Capture {
    public static final int TAG_ROUND_SECTION;
    private static int[] attributes;
    private static boolean gotAttributes;
    private static final Method initializeScrollbars;
    private static final float[] radii;
    private static final Paint sectionBackgroundPaint;
    private static final Path sectionBackgroundPath;
    private static final Paint sectionBackgroundStrokePaint;
    private View.AccessibilityDelegate accessibilityDelegate;
    private boolean accessibilityEnabled;
    private int activeTouches;
    private boolean adaptiveOverScroll;
    private boolean allowItemsInteractionDuringAnimation;
    private boolean allowStopHeaveOperations;
    private boolean animateEmptyView;
    public boolean applyPaddingToSections;
    private Paint backgroundPaint;
    private boolean canCaptureSectionsDecorator;
    private Runnable clickRunnable;
    private final Path clipPath;
    private int currentChildPosition;
    private View currentChildView;
    private int currentFirst;
    int currentSelectedPosition;
    private int currentVisible;
    private boolean disableHighlightState;
    private boolean disallowInterceptTouchEvents;
    private View draggingChild;
    private Utilities.Callback5<Canvas, RectF, Float, Float, Float> drawSectionBackground;
    private boolean drawSelection;
    private boolean drawSelectorBehind;
    private final EdgeEffectTrackerFactory edgeEffectTrackerFactory;
    private View emptyView;
    int emptyViewAnimateToVisibility;
    private int emptyViewAnimationType;
    private FastScroll fastScroll;
    public boolean fastScrollAnimationRunning;
    public ArrayList<Long> forcedSections;
    private GestureDetectorFixDoubleTap gestureDetector;
    private GenericProvider<Integer, Integer> getSelectorColor;
    private ArrayList<View> headers;
    private ArrayList<View> headersCache;
    private boolean hiddenByEmptyView;
    private boolean hideIfEmpty;
    private int highlightPosition;
    private boolean ignoreClipChild;
    private boolean ignoreLayout;
    private boolean instantClick;
    private boolean interceptedByChild;
    private boolean isChildViewEnabled;
    private boolean isHidden;
    private Utilities.CallbackReturn<Integer, Boolean> isViewTypeSection;
    RecyclerItemsEnterAnimator itemsEnterAnimator;
    private long lastAlphaAnimationTime;
    float lastX;
    float lastY;
    int[] listPaddings;
    private boolean longPressCalled;
    boolean multiSelectionGesture;
    boolean multiSelectionGestureStarted;
    onMultiSelectionChanged multiSelectionListener;
    boolean multiselectScrollRunning;
    boolean multiselectScrollToTop;
    private final RecyclerView.AdapterDataObserver observer;
    private OnInterceptTouchListener onInterceptTouchListener;
    private OnItemClickListener onItemClickListener;
    private OnItemClickListenerExtended onItemClickListenerExtended;
    private OnItemLongClickListener onItemLongClickListener;
    private OnItemLongClickListenerExtended onItemLongClickListenerExtended;
    private RecyclerView.OnScrollListener onScrollListener;
    private FrameLayout overlayContainer;
    private IntReturnCallback pendingHighlightPosition;
    private View pinnedHeader;
    private float pinnedHeaderShadowAlpha;
    private Drawable pinnedHeaderShadowDrawable;
    private float pinnedHeaderShadowTargetAlpha;
    private Runnable removeHighlighSelectionRunnable;
    private ArrayList<SectionsDrawer.Section> removedSections;
    private boolean resetSelectorOnChanged;
    protected final Theme.ResourcesProvider resourcesProvider;
    private boolean scrollEnabled;
    public boolean scrolledByUserOnce;
    Runnable scroller;
    public boolean scrollingByUser;
    private int sectionOffset;
    private float sectionRadius;
    private float[] sectionRadiusBottom;
    private float[] sectionRadiusTop;
    private ArrayList<SectionsDrawer.Section> sections;
    private SectionsAdapter sectionsAdapter;
    private int sectionsCount;
    private ListSectionsDecoration sectionsItemDecoration;
    private int sectionsType;
    private boolean segmentedSectionsEnabled;
    private Runnable selectChildRunnable;
    HashSet<Integer> selectedPositions;
    protected Drawable selectorDrawable;
    private boolean selectorIsSection;
    protected int selectorPosition;
    private int selectorRadius;
    protected Rect selectorRect;
    private boolean selectorSectionHasNext;
    private boolean selectorSectionHasPrev;
    protected Consumer<Canvas> selectorTransformer;
    private int selectorType;
    protected View selectorView;
    private boolean selfOnLayout;
    private Matrix selfTransformationsMatrix;
    private boolean skipDrawSection;
    private int startSection;
    int startSelectionFrom;
    private boolean stoppedAllHeavyOperations;
    private int topBottomSelectorRadius;
    private int touchSlop;
    private int translateSelector;
    public boolean useLayoutPositionOnClick;
    boolean useRelativePositions;

    public interface HitTestable {
        boolean hasClickableNodeAt(float f, float f2);
    }

    /* JADX INFO: loaded from: classes7.dex */
    public interface IntReturnCallback {
        int run();
    }

    /* JADX INFO: loaded from: classes7.dex */
    public interface OnInterceptTouchListener {
        boolean onInterceptTouchEvent(MotionEvent motionEvent);
    }

    public interface OnItemClickListener {
        void onItemClick(View view, int i);
    }

    public interface OnItemClickListenerExtended {
        default boolean hasDoubleTap(View view, int i) {
            return false;
        }

        default void onDoubleTap(View view, int i, float f, float f2) {
        }

        void onItemClick(View view, int i, float f, float f2);
    }

    public interface OnItemLongClickListener {
        boolean onItemClick(View view, int i);
    }

    public interface OnItemLongClickListenerExtended {
        boolean onItemClick(View view, int i, float f, float f2);

        default void onLongClickRelease() {
        }

        default void onMove(float f, float f2) {
        }
    }

    public static abstract class SelectionAdapter extends RecyclerView.Adapter {
        public int getSelectionBottomPadding(View view) {
            return 0;
        }

        public abstract boolean isEnabled(RecyclerView.ViewHolder viewHolder);
    }

    /* JADX INFO: loaded from: classes7.dex */
    public interface onMultiSelectionChanged {
        boolean canSelect(int i);

        int checkPosition(int i, boolean z);

        void getPaddings(int[] iArr);

        default int getStartDragDistance() {
            return 0;
        }

        boolean limitReached();

        void onSelectionChanged(int i, boolean z, float f, float f2);

        void scrollBy(int i);
    }

    public boolean allowSelectChildAtPosition(float f, float f2) {
        return true;
    }

    public boolean allowSelectChildAtPosition(View view) {
        return true;
    }

    public boolean canHighlightChildAt(View view, float f, float f2) {
        return true;
    }

    public void emptyViewUpdated(boolean z, boolean z2) {
    }

    public ViewParent getTouchParent() {
        return null;
    }

    @Override // android.view.View
    public boolean hasOverlappingRendering() {
        return false;
    }

    static {
        Method declaredMethod;
        try {
            declaredMethod = View.class.getDeclaredMethod("initializeScrollbars", TypedArray.class);
        } catch (Exception unused) {
            declaredMethod = null;
        }
        initializeScrollbars = declaredMethod;
        TAG_ROUND_SECTION = C2573R.id.round_section_tag;
        sectionBackgroundPaint = new Paint(1);
        sectionBackgroundStrokePaint = new Paint(1);
        sectionBackgroundPath = new Path();
        radii = new float[8];
    }

    public void setSelectorTransformer(Consumer<Canvas> consumer) {
        this.selectorTransformer = consumer;
    }

    public FastScroll getFastScroll() {
        return this.fastScroll;
    }

    public static abstract class FastScrollAdapter extends SelectionAdapter {
        public boolean fastScrollIsVisible(RecyclerListView recyclerListView) {
            return true;
        }

        public abstract String getLetter(int i);

        public abstract void getPositionForScrollProgress(RecyclerListView recyclerListView, float f, int[] iArr);

        public void onFastScrollSingleTap() {
        }

        public void onFinishFastScroll(RecyclerListView recyclerListView) {
        }

        public void onStartFastScroll() {
        }

        public int getTotalItemsCount() {
            return getItemCount();
        }

        public float getScrollProgress(RecyclerListView recyclerListView) {
            return recyclerListView.computeVerticalScrollOffset() / ((getTotalItemsCount() * recyclerListView.getChildAt(0).getMeasuredHeight()) - recyclerListView.getMeasuredHeight());
        }
    }

    public static abstract class SectionsAdapter extends FastScrollAdapter {
        private int count;
        private ArrayList<Integer> hashes = new ArrayList<>();
        private SparseIntArray sectionCache;
        private int sectionCount;
        private SparseIntArray sectionCountCache;
        private SparseIntArray sectionPositionCache;

        public abstract int getCountForSection(int i);

        public abstract Object getItem(int i, int i2);

        public abstract int getItemViewType(int i, int i2);

        public abstract int getSectionCount();

        public abstract View getSectionHeaderView(int i, View view);

        public abstract boolean isEnabled(RecyclerView.ViewHolder viewHolder, int i, int i2);

        public abstract void onBindViewHolder(int i, int i2, RecyclerView.ViewHolder viewHolder);

        public void cleanupCache() {
            SparseIntArray sparseIntArray = this.sectionCache;
            if (sparseIntArray == null) {
                this.sectionCache = new SparseIntArray();
                this.sectionPositionCache = new SparseIntArray();
                this.sectionCountCache = new SparseIntArray();
            } else {
                sparseIntArray.clear();
                this.sectionPositionCache.clear();
                this.sectionCountCache.clear();
            }
            this.count = -1;
            this.sectionCount = -1;
        }

        public void notifySectionsChanged() {
            cleanupCache();
        }

        public SectionsAdapter() {
            cleanupCache();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void notifyDataSetChanged() {
            update(false);
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            int adapterPosition = viewHolder.getAdapterPosition();
            return isEnabled(viewHolder, getSectionForPosition(adapterPosition), getPositionInSectionForPosition(adapterPosition));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            int i = this.count;
            if (i >= 0) {
                return i;
            }
            int i2 = 0;
            this.count = 0;
            int iInternalGetSectionCount = internalGetSectionCount();
            while (true) {
                int i3 = this.count;
                if (i2 >= iInternalGetSectionCount) {
                    return i3;
                }
                this.count = i3 + internalGetCountForSection(i2);
                i2++;
            }
        }

        public final Object getItem(int i) {
            return getItem(getSectionForPosition(i), getPositionInSectionForPosition(i));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final int getItemViewType(int i) {
            return getItemViewType(getSectionForPosition(i), getPositionInSectionForPosition(i));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            onBindViewHolder(getSectionForPosition(i), getPositionInSectionForPosition(i), viewHolder);
        }

        private int internalGetCountForSection(int i) {
            int i2 = this.sectionCountCache.get(i, Integer.MAX_VALUE);
            if (i2 != Integer.MAX_VALUE) {
                return i2;
            }
            int countForSection = getCountForSection(i);
            this.sectionCountCache.put(i, countForSection);
            return countForSection;
        }

        private int internalGetSectionCount() {
            int i = this.sectionCount;
            if (i >= 0) {
                return i;
            }
            int sectionCount = getSectionCount();
            this.sectionCount = sectionCount;
            return sectionCount;
        }

        public final int getSectionForPosition(int i) {
            int i2 = this.sectionCache.get(i, Integer.MAX_VALUE);
            if (i2 != Integer.MAX_VALUE) {
                return i2;
            }
            int iInternalGetSectionCount = internalGetSectionCount();
            int i3 = 0;
            int i4 = 0;
            while (i3 < iInternalGetSectionCount) {
                int iInternalGetCountForSection = internalGetCountForSection(i3) + i4;
                if (i >= i4 && i < iInternalGetCountForSection) {
                    this.sectionCache.put(i, i3);
                    return i3;
                }
                i3++;
                i4 = iInternalGetCountForSection;
            }
            return -1;
        }

        public int getPositionInSectionForPosition(int i) {
            int i2 = this.sectionPositionCache.get(i, Integer.MAX_VALUE);
            if (i2 != Integer.MAX_VALUE) {
                return i2;
            }
            int iInternalGetSectionCount = internalGetSectionCount();
            int i3 = 0;
            int i4 = 0;
            while (i3 < iInternalGetSectionCount) {
                int iInternalGetCountForSection = internalGetCountForSection(i3) + i4;
                if (i >= i4 && i < iInternalGetCountForSection) {
                    int i5 = i - i4;
                    this.sectionPositionCache.put(i, i5);
                    return i5;
                }
                i3++;
                i4 = iInternalGetCountForSection;
            }
            return -1;
        }

        public void update(boolean z) {
            final ArrayList arrayList = new ArrayList(this.hashes);
            updateHashes();
            if (z) {
                DiffUtil.calculateDiff(new DiffUtil.Callback() { // from class: org.telegram.ui.Components.RecyclerListView.SectionsAdapter.1
                    @Override // androidx.recyclerview.widget.DiffUtil.Callback
                    public int getOldListSize() {
                        return arrayList.size();
                    }

                    @Override // androidx.recyclerview.widget.DiffUtil.Callback
                    public int getNewListSize() {
                        return SectionsAdapter.this.hashes.size();
                    }

                    @Override // androidx.recyclerview.widget.DiffUtil.Callback
                    public boolean areItemsTheSame(int i, int i2) {
                        return Objects.equals(arrayList.get(i), SectionsAdapter.this.hashes.get(i2));
                    }

                    @Override // androidx.recyclerview.widget.DiffUtil.Callback
                    public boolean areContentsTheSame(int i, int i2) {
                        return areItemsTheSame(i, i2);
                    }
                }, true).dispatchUpdatesTo(this);
            } else {
                super.notifyDataSetChanged();
            }
        }

        public void updateHashes() {
            cleanupCache();
            this.hashes.clear();
            int iInternalGetSectionCount = internalGetSectionCount();
            for (int i = 0; i < iInternalGetSectionCount; i++) {
                int iInternalGetCountForSection = internalGetCountForSection(i);
                for (int i2 = 0; i2 < iInternalGetCountForSection; i2++) {
                    this.hashes.add(Integer.valueOf(getHash(i, i2)));
                }
            }
        }

        public int getHash(int i, int i2) {
            return Objects.hash(Integer.valueOf((-49612) * i), getItem(i, i2));
        }
    }

    public static class Holder extends RecyclerView.ViewHolder {
        public Holder(View view) {
            super(view);
            if (ExteraConfig.getInAppVibration()) {
                return;
            }
            VibratorUtils.disableHapticFeedback(view);
        }
    }

    public class FastScroll extends View {
        private int activeColor;
        private Path arrowPath;
        BlurredBackgroundDrawable blurredCircleDrawable;
        BlurredBackgroundDrawable blurredTagDrawable;
        private float bubbleProgress;
        private String currentLetter;
        Drawable fastScrollBackgroundDrawable;
        Drawable fastScrollShadowDrawable;
        private float floatingDateProgress;
        private boolean floatingDateVisible;
        private boolean fromTop;
        private float fromWidth;
        Runnable hideFloatingDateRunnable;
        private StaticLayout inLetterLayout;
        private int inactiveColor;
        boolean isMoving;
        boolean isRtl;
        public boolean isVisible;
        private float lastLetterY;
        private long lastUpdateTime;
        private float lastY;
        private StaticLayout letterLayout;
        private TextPaint letterPaint;
        private StaticLayout oldLetterLayout;
        private StaticLayout outLetterLayout;
        private Paint paint;
        private Paint paint2;
        private Path path;
        private int[] positionWithOffset;
        private boolean pressed;
        private float progress;
        private float[] radii;
        private RectF rect;
        private float replaceLayoutProgress;
        private int scrollX;
        private StaticLayout stableLetterLayout;
        private float startDy;
        long startTime;
        float startY;
        private float textX;
        private float textY;
        public int topOffset;
        float touchSlop;
        private int type;
        public boolean usePadding;
        float viewAlpha;
        float visibilityAlpha;

        public FastScroll(Context context, int i) {
            super(context);
            this.usePadding = true;
            this.rect = new RectF();
            this.paint = new Paint(1);
            this.paint2 = new Paint(1);
            this.replaceLayoutProgress = 1.0f;
            this.letterPaint = new TextPaint(1);
            this.path = new Path();
            this.arrowPath = new Path();
            this.radii = new float[8];
            this.positionWithOffset = new int[2];
            this.hideFloatingDateRunnable = new Runnable() { // from class: org.telegram.ui.Components.RecyclerListView.FastScroll.1
                @Override // java.lang.Runnable
                public void run() {
                    boolean z = FastScroll.this.pressed;
                    FastScroll fastScroll = FastScroll.this;
                    if (z) {
                        AndroidUtilities.cancelRunOnUIThread(fastScroll.hideFloatingDateRunnable);
                        AndroidUtilities.runOnUIThread(FastScroll.this.hideFloatingDateRunnable, 4000L);
                    } else {
                        fastScroll.floatingDateVisible = false;
                        FastScroll.this.invalidate();
                    }
                }
            };
            this.viewAlpha = 1.0f;
            this.type = i;
            if (i == 0) {
                this.letterPaint.setTextSize(AndroidUtilities.dp(45.0f));
                this.isRtl = LocaleController.isRTL;
            } else {
                this.isRtl = false;
                this.letterPaint.setTextSize(AndroidUtilities.dp(13.0f));
                this.letterPaint.setTypeface(AndroidUtilities.bold());
                Paint paint = this.paint2;
                int i2 = Theme.key_windowBackgroundWhite;
                paint.setColor(Theme.getColor(i2, RecyclerListView.this.resourcesProvider));
                Drawable drawableMutate = ContextCompat.getDrawable(context, C2573R.drawable.calendar_date).mutate();
                this.fastScrollBackgroundDrawable = drawableMutate;
                drawableMutate.setColorFilter(new PorterDuffColorFilter(ColorUtils.blendARGB(Theme.getColor(i2, RecyclerListView.this.resourcesProvider), -1, 0.1f), PorterDuff.Mode.MULTIPLY));
            }
            for (int i3 = 0; i3 < 8; i3++) {
                this.radii[i3] = AndroidUtilities.dp(44.0f);
            }
            this.scrollX = AndroidUtilities.dp(this.isRtl ? 10.0f : (i == 0 ? 132 : 240) - 15);
            if (RecyclerListView.this.hasSections()) {
                this.scrollX += AndroidUtilities.dp(this.isRtl ? -4.0f : 6.0f);
            }
            updateColors();
            setFocusableInTouchMode(true);
            this.touchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
            this.fastScrollShadowDrawable = ContextCompat.getDrawable(context, C2573R.drawable.fast_scroll_shadow);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateColors() {
            this.inactiveColor = this.type == 0 ? Theme.getColor(Theme.key_fastScrollInactive, RecyclerListView.this.resourcesProvider) : ColorUtils.setAlphaComponent(-16777216, 102);
            this.activeColor = Theme.getColor(Theme.key_fastScrollActive, RecyclerListView.this.resourcesProvider);
            this.paint.setColor(this.inactiveColor);
            int i = this.type;
            TextPaint textPaint = this.letterPaint;
            if (i == 0) {
                textPaint.setColor(Theme.getColor(Theme.key_fastScrollText, RecyclerListView.this.resourcesProvider));
            } else {
                textPaint.setColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, RecyclerListView.this.resourcesProvider));
            }
            invalidate();
        }

        /* JADX WARN: Code restructure failed: missing block: B:79:0x0159, code lost:
        
            if (r0 <= (org.telegram.messenger.AndroidUtilities.dp(30.0f) + r8)) goto L81;
         */
        @Override // android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public boolean onTouchEvent(MotionEvent motionEvent) {
            if (!this.isVisible) {
                this.pressed = false;
                return false;
            }
            int action = motionEvent.getAction();
            if (action == 0) {
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                this.lastY = y;
                this.startY = y;
                float fCeil = ((float) Math.ceil((getMeasuredHeight() - AndroidUtilities.dp(54.0f)) * this.progress)) + AndroidUtilities.dp(12.0f);
                if ((!this.isRtl || x <= AndroidUtilities.dp(25.0f)) && (this.isRtl || x >= AndroidUtilities.dp(107.0f))) {
                    float f = this.lastY;
                    if (f >= fCeil && f <= AndroidUtilities.dp(30.0f) + fCeil) {
                        if (this.type == 1 && !this.floatingDateVisible) {
                            if ((!this.isRtl || x <= AndroidUtilities.dp(25.0f)) && (this.isRtl || x >= getMeasuredWidth() - AndroidUtilities.dp(25.0f))) {
                                float f2 = this.lastY;
                                if (f2 >= fCeil) {
                                }
                            }
                            return false;
                        }
                        this.startDy = this.lastY - fCeil;
                        this.startTime = System.currentTimeMillis();
                        this.pressed = true;
                        this.isMoving = false;
                        this.lastUpdateTime = System.currentTimeMillis();
                        invalidate();
                        RecyclerView.Adapter adapter = RecyclerListView.this.getAdapter();
                        showFloatingDate();
                        if (adapter instanceof FastScrollAdapter) {
                            ((FastScrollAdapter) adapter).onStartFastScroll();
                        }
                        return true;
                    }
                }
                return false;
            }
            if (action != 1) {
                if (action == 2) {
                    if (!this.pressed) {
                        return true;
                    }
                    if (Math.abs(motionEvent.getY() - this.startY) > this.touchSlop) {
                        this.isMoving = true;
                    }
                    if (this.isMoving) {
                        float y2 = motionEvent.getY();
                        float fDp = AndroidUtilities.dp(12.0f) + this.startDy;
                        float measuredHeight = (getMeasuredHeight() - AndroidUtilities.dp(42.0f)) + this.startDy;
                        if (y2 < fDp) {
                            y2 = fDp;
                        } else if (y2 > measuredHeight) {
                            y2 = measuredHeight;
                        }
                        float f3 = y2 - this.lastY;
                        this.lastY = y2;
                        float measuredHeight2 = this.progress + (f3 / (getMeasuredHeight() - AndroidUtilities.dp(54.0f)));
                        this.progress = measuredHeight2;
                        if (measuredHeight2 < 0.0f) {
                            this.progress = 0.0f;
                        } else if (measuredHeight2 > 1.0f) {
                            this.progress = 1.0f;
                        }
                        getCurrentLetter(true);
                        invalidate();
                    }
                    return true;
                }
                if (action != 3) {
                    return this.pressed;
                }
            }
            RecyclerView.Adapter adapter2 = RecyclerListView.this.getAdapter();
            if (this.pressed && !this.isMoving && System.currentTimeMillis() - this.startTime < 150 && (adapter2 instanceof FastScrollAdapter)) {
                ((FastScrollAdapter) adapter2).onFastScrollSingleTap();
            }
            this.isMoving = false;
            this.pressed = false;
            this.lastUpdateTime = System.currentTimeMillis();
            invalidate();
            if (adapter2 instanceof FastScrollAdapter) {
                ((FastScrollAdapter) adapter2).onFinishFastScroll(RecyclerListView.this);
            }
            showFloatingDate();
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void getCurrentLetter(boolean z) {
            RecyclerView.LayoutManager layoutManager = RecyclerListView.this.getLayoutManager();
            if (layoutManager instanceof LinearLayoutManager) {
                LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
                if (linearLayoutManager.getOrientation() == 1) {
                    RecyclerView.Adapter adapter = RecyclerListView.this.getAdapter();
                    if (adapter instanceof FastScrollAdapter) {
                        FastScrollAdapter fastScrollAdapter = (FastScrollAdapter) adapter;
                        fastScrollAdapter.getPositionForScrollProgress(RecyclerListView.this, this.progress, this.positionWithOffset);
                        if (z) {
                            int[] iArr = this.positionWithOffset;
                            linearLayoutManager.scrollToPositionWithOffset(iArr[0], (-iArr[1]) + RecyclerListView.this.sectionOffset);
                        }
                        String letter = fastScrollAdapter.getLetter(this.positionWithOffset[0]);
                        if (letter == null) {
                            StaticLayout staticLayout = this.letterLayout;
                            if (staticLayout != null) {
                                this.oldLetterLayout = staticLayout;
                            }
                            this.letterLayout = null;
                            return;
                        }
                        if (letter.equals(this.currentLetter)) {
                            return;
                        }
                        this.currentLetter = letter;
                        if (this.type == 0) {
                            this.letterLayout = new StaticLayout(letter, this.letterPaint, 1000, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
                        } else {
                            this.outLetterLayout = this.letterLayout;
                            int iMeasureText = ((int) this.letterPaint.measureText(letter)) + 1;
                            TextPaint textPaint = this.letterPaint;
                            Layout.Alignment alignment = Layout.Alignment.ALIGN_NORMAL;
                            this.letterLayout = new StaticLayout(letter, textPaint, iMeasureText, alignment, 1.0f, 0.0f, false);
                            if (this.outLetterLayout != null) {
                                String[] strArrSplit = letter.split(" ");
                                String[] strArrSplit2 = this.outLetterLayout.getText().toString().split(" ");
                                if (strArrSplit != null && strArrSplit2 != null && strArrSplit.length == 2 && strArrSplit2.length == 2 && strArrSplit[1].equals(strArrSplit2[1])) {
                                    String string = this.outLetterLayout.getText().toString();
                                    SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(string);
                                    spannableStringBuilder.setSpan(new EmptyStubSpan(), strArrSplit2[0].length(), string.length(), 0);
                                    this.outLetterLayout = new StaticLayout(spannableStringBuilder, this.letterPaint, ((int) this.letterPaint.measureText(string)) + 1, alignment, 1.0f, 0.0f, false);
                                    SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(letter);
                                    spannableStringBuilder2.setSpan(new EmptyStubSpan(), strArrSplit[0].length(), letter.length(), 0);
                                    this.inLetterLayout = new StaticLayout(spannableStringBuilder2, this.letterPaint, iMeasureText, alignment, 1.0f, 0.0f, false);
                                    SpannableStringBuilder spannableStringBuilder3 = new SpannableStringBuilder(letter);
                                    spannableStringBuilder3.setSpan(new EmptyStubSpan(), 0, strArrSplit[0].length(), 0);
                                    this.stableLetterLayout = new StaticLayout(spannableStringBuilder3, this.letterPaint, iMeasureText, alignment, 1.0f, 0.0f, false);
                                } else {
                                    this.inLetterLayout = this.letterLayout;
                                    this.stableLetterLayout = null;
                                }
                                this.fromWidth = this.outLetterLayout.getWidth();
                                this.replaceLayoutProgress = 0.0f;
                                this.fromTop = getProgress() > this.lastLetterY;
                            }
                            this.lastLetterY = getProgress();
                        }
                        this.oldLetterLayout = null;
                        if (this.letterLayout.getLineCount() > 0) {
                            this.letterLayout.getLineWidth(0);
                            this.letterLayout.getLineLeft(0);
                            if (this.isRtl) {
                                this.textX = (AndroidUtilities.dp(10.0f) + ((AndroidUtilities.dp(88.0f) - this.letterLayout.getLineWidth(0)) / 2.0f)) - this.letterLayout.getLineLeft(0);
                            } else {
                                this.textX = ((AndroidUtilities.dp(88.0f) - this.letterLayout.getLineWidth(0)) / 2.0f) - this.letterLayout.getLineLeft(0);
                            }
                            this.textY = (AndroidUtilities.dp(88.0f) - this.letterLayout.getHeight()) / 2;
                        }
                    }
                }
            }
        }

        @Override // android.view.View
        public void onMeasure(int i, int i2) {
            setMeasuredDimension(AndroidUtilities.dp(this.type == 0 ? 132.0f : 240.0f), View.MeasureSpec.getSize(i2));
            this.arrowPath.reset();
            this.arrowPath.setLastPoint(0.0f, 0.0f);
            this.arrowPath.lineTo(AndroidUtilities.dp(4.0f), -AndroidUtilities.dp(4.0f));
            this.arrowPath.lineTo(-AndroidUtilities.dp(4.0f), -AndroidUtilities.dp(4.0f));
            this.arrowPath.close();
        }

        /* JADX WARN: Removed duplicated region for block: B:34:0x022d  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x023d  */
        /* JADX WARN: Removed duplicated region for block: B:55:0x0293  */
        /* JADX WARN: Removed duplicated region for block: B:57:0x0297  */
        @Override // android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void onDraw(Canvas canvas) {
            char c2;
            float f;
            float f2;
            float fDp;
            float fDp2;
            float fDp3;
            StaticLayout staticLayout;
            int paddingTop = (this.usePadding ? getPaddingTop() : 0) + ((int) Math.ceil(((getMeasuredHeight() - r2) - AndroidUtilities.dp(54.0f)) * this.progress));
            this.rect.set(this.scrollX, AndroidUtilities.dp(12.0f) + paddingTop, this.scrollX + AndroidUtilities.dp(5.0f), AndroidUtilities.dp(42.0f) + paddingTop);
            int i = this.type;
            Paint paint = this.paint;
            if (i == 0) {
                c2 = 0;
                paint.setColor(ColorUtils.blendARGB(this.inactiveColor, this.activeColor, this.bubbleProgress));
                canvas.drawRoundRect(this.rect, AndroidUtilities.dp(2.0f), AndroidUtilities.dp(2.0f), this.paint);
                f = 12.0f;
                f2 = 36.0f;
            } else {
                c2 = 0;
                paint.setColor(ColorUtils.blendARGB(Theme.getColor(Theme.key_windowBackgroundWhite, RecyclerListView.this.resourcesProvider), -1, 0.1f));
                float fDp4 = AndroidUtilities.dp(27.0f) + paddingTop;
                BlurredBackgroundDrawable blurredBackgroundDrawable = this.blurredCircleDrawable;
                if (blurredBackgroundDrawable != null) {
                    f = 12.0f;
                    blurredBackgroundDrawable.setBounds(this.scrollX + AndroidUtilities.dp(-20.0f), AndroidUtilities.dp(-1.0f) + paddingTop, this.scrollX + AndroidUtilities.dp(36.0f), paddingTop + AndroidUtilities.dp(55.0f));
                    this.blurredCircleDrawable.draw(canvas);
                    f2 = 36.0f;
                } else {
                    f = 12.0f;
                    f2 = 36.0f;
                    this.fastScrollShadowDrawable.setBounds(getMeasuredWidth() - this.fastScrollShadowDrawable.getIntrinsicWidth(), (int) (fDp4 - (this.fastScrollShadowDrawable.getIntrinsicHeight() / 2)), getMeasuredWidth(), (int) (fDp4 + (this.fastScrollShadowDrawable.getIntrinsicHeight() / 2)));
                    this.fastScrollShadowDrawable.draw(canvas);
                    canvas.drawCircle(this.scrollX + AndroidUtilities.dp(8.0f), AndroidUtilities.dp(27.0f) + paddingTop, AndroidUtilities.dp(24.0f), this.paint);
                }
                this.paint.setColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, RecyclerListView.this.resourcesProvider));
                canvas.save();
                canvas.translate(this.scrollX + AndroidUtilities.dp(4.0f), AndroidUtilities.dp(34.0f) + paddingTop + (AndroidUtilities.dp(2.0f) * this.bubbleProgress));
                canvas.drawPath(this.arrowPath, this.paint);
                canvas.restore();
                canvas.save();
                canvas.translate(this.scrollX + AndroidUtilities.dp(4.0f), (AndroidUtilities.dp(24.0f) + paddingTop) - (AndroidUtilities.dp(2.0f) * this.bubbleProgress));
                canvas.rotate(180.0f, 0.0f, -AndroidUtilities.dp(2.0f));
                canvas.drawPath(this.arrowPath, this.paint);
                canvas.restore();
            }
            int i2 = this.type;
            if (i2 == 0) {
                if (this.isMoving || this.bubbleProgress != 0.0f) {
                    this.paint.setAlpha((int) (this.bubbleProgress * 255.0f));
                    int iDp = AndroidUtilities.dp(30.0f) + paddingTop;
                    int iDp2 = paddingTop - AndroidUtilities.dp(46.0f);
                    if (iDp2 <= AndroidUtilities.dp(f)) {
                        fDp = AndroidUtilities.dp(f) - iDp2;
                        iDp2 = AndroidUtilities.dp(f);
                    } else {
                        fDp = 0.0f;
                    }
                    canvas.translate(AndroidUtilities.dp(10.0f), iDp2);
                    if (fDp <= AndroidUtilities.dp(29.0f)) {
                        fDp3 = AndroidUtilities.dp(44.0f);
                        fDp2 = AndroidUtilities.dp(4.0f) + ((fDp / AndroidUtilities.dp(29.0f)) * AndroidUtilities.dp(40.0f));
                    } else {
                        fDp2 = AndroidUtilities.dp(44.0f);
                        fDp3 = ((1.0f - ((fDp - AndroidUtilities.dp(29.0f)) / AndroidUtilities.dp(29.0f))) * AndroidUtilities.dp(40.0f)) + AndroidUtilities.dp(4.0f);
                    }
                    boolean z = this.isRtl;
                    if (z) {
                        float[] fArr = this.radii;
                        if (fArr[c2] != fDp3 || fArr[6] != fDp2) {
                            float[] fArr2 = this.radii;
                            if (z) {
                                fArr2[1] = fDp3;
                                fArr2[c2] = fDp3;
                                fArr2[7] = fDp2;
                                fArr2[6] = fDp2;
                            } else {
                                fArr2[3] = fDp3;
                                fArr2[2] = fDp3;
                                fArr2[5] = fDp2;
                                fArr2[4] = fDp2;
                            }
                            this.path.reset();
                            this.rect.set(this.isRtl ? AndroidUtilities.dp(10.0f) : 0.0f, 0.0f, AndroidUtilities.dp(this.isRtl ? 98.0f : 88.0f), AndroidUtilities.dp(88.0f));
                            this.path.addRoundRect(this.rect, this.radii, Path.Direction.CW);
                            this.path.close();
                            staticLayout = this.letterLayout;
                            if (staticLayout == null) {
                                staticLayout = this.oldLetterLayout;
                            }
                            if (staticLayout != null) {
                                canvas.save();
                                float f3 = this.bubbleProgress;
                                canvas.scale(f3, f3, this.scrollX, iDp - iDp2);
                                canvas.drawPath(this.path, this.paint);
                                canvas.translate(this.textX, this.textY);
                                staticLayout.draw(canvas);
                                canvas.restore();
                            }
                        } else {
                            if (!z) {
                                float[] fArr3 = this.radii;
                                if (fArr3[2] != fDp3 || fArr3[4] != fDp2) {
                                }
                            }
                            staticLayout = this.letterLayout;
                            if (staticLayout == null) {
                            }
                            if (staticLayout != null) {
                            }
                        }
                    }
                }
            } else if (i2 == 1 && this.letterLayout != null && this.floatingDateProgress != 0.0f) {
                canvas.save();
                float f4 = (this.floatingDateProgress * 0.3f) + 0.7f;
                canvas.scale(f4, f4, this.rect.right - AndroidUtilities.dp(f), this.rect.centerY());
                float fCenterY = this.rect.centerY();
                float fDp5 = (this.rect.left - (AndroidUtilities.dp(30.0f) * this.bubbleProgress)) - AndroidUtilities.dp(8.0f);
                this.letterLayout.getHeight();
                AndroidUtilities.dp(6.0f);
                this.rect.set((fDp5 - ((this.replaceLayoutProgress * this.letterLayout.getWidth()) + (this.fromWidth * (1.0f - this.replaceLayoutProgress)))) - AndroidUtilities.dp(f2), (fCenterY - (this.letterLayout.getHeight() / 2.0f)) - AndroidUtilities.dp(8.0f), fDp5 - AndroidUtilities.dp(f), (this.letterLayout.getHeight() / 2.0f) + fCenterY + AndroidUtilities.dp(8.0f));
                int alpha = this.paint2.getAlpha();
                int alpha2 = this.letterPaint.getAlpha();
                this.paint2.setAlpha((int) (alpha * this.floatingDateProgress));
                if (this.blurredTagDrawable != null) {
                    RectF rectF = this.rect;
                    Rect rect = AndroidUtilities.rectTmp2;
                    rectF.round(rect);
                    rect.inset(-AndroidUtilities.dp(4.0f), -AndroidUtilities.dp(4.0f));
                    this.blurredTagDrawable.setBounds(rect);
                    this.blurredTagDrawable.draw(canvas);
                } else {
                    Drawable drawable = this.fastScrollBackgroundDrawable;
                    RectF rectF2 = this.rect;
                    drawable.setBounds((int) rectF2.left, (int) rectF2.top, (int) rectF2.right, (int) rectF2.bottom);
                    this.fastScrollBackgroundDrawable.setAlpha((int) (this.floatingDateProgress * 255.0f));
                    this.fastScrollBackgroundDrawable.draw(canvas);
                }
                float f5 = this.replaceLayoutProgress;
                if (f5 != 1.0f) {
                    float f6 = f5 + 0.10666667f;
                    this.replaceLayoutProgress = f6;
                    if (f6 > 1.0f) {
                        this.replaceLayoutProgress = 1.0f;
                    } else {
                        invalidate();
                    }
                }
                if (this.replaceLayoutProgress != 1.0f) {
                    canvas.save();
                    this.rect.inset(AndroidUtilities.dp(4.0f), AndroidUtilities.dp(2.0f));
                    canvas.clipRect(this.rect);
                    if (this.outLetterLayout != null) {
                        this.letterPaint.setAlpha((int) (alpha2 * this.floatingDateProgress * (1.0f - this.replaceLayoutProgress)));
                        canvas.save();
                        canvas.translate((fDp5 - this.outLetterLayout.getWidth()) - AndroidUtilities.dp(24.0f), (fCenterY - (this.outLetterLayout.getHeight() / 2.0f)) + ((this.fromTop ? -1 : 1) * AndroidUtilities.dp(15.0f) * this.replaceLayoutProgress));
                        this.outLetterLayout.draw(canvas);
                        canvas.restore();
                    }
                    if (this.inLetterLayout != null) {
                        this.letterPaint.setAlpha((int) (alpha2 * this.floatingDateProgress * this.replaceLayoutProgress));
                        canvas.save();
                        canvas.translate((fDp5 - this.inLetterLayout.getWidth()) - AndroidUtilities.dp(24.0f), (fCenterY - (this.inLetterLayout.getHeight() / 2.0f)) + (AndroidUtilities.dp(15.0f) * (this.fromTop ? 1 : -1) * (1.0f - this.replaceLayoutProgress)));
                        this.inLetterLayout.draw(canvas);
                        canvas.restore();
                    }
                    if (this.stableLetterLayout != null) {
                        this.letterPaint.setAlpha((int) (alpha2 * this.floatingDateProgress));
                        canvas.save();
                        canvas.translate((fDp5 - this.stableLetterLayout.getWidth()) - AndroidUtilities.dp(24.0f), fCenterY - (this.stableLetterLayout.getHeight() / 2.0f));
                        this.stableLetterLayout.draw(canvas);
                        canvas.restore();
                    }
                    canvas.restore();
                } else {
                    this.letterPaint.setAlpha((int) (alpha2 * this.floatingDateProgress));
                    canvas.save();
                    canvas.translate((fDp5 - this.letterLayout.getWidth()) - AndroidUtilities.dp(24.0f), (fCenterY - (this.letterLayout.getHeight() / 2.0f)) + (AndroidUtilities.dp(15.0f) * (1.0f - this.replaceLayoutProgress)));
                    this.letterLayout.draw(canvas);
                    canvas.restore();
                }
                this.paint2.setAlpha(alpha);
                this.letterPaint.setAlpha(alpha2);
                canvas.restore();
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            long j = jCurrentTimeMillis - this.lastUpdateTime;
            if (j < 0 || j > 17) {
                j = 17;
            }
            boolean z2 = this.isMoving;
            if ((z2 && this.letterLayout != null && this.bubbleProgress < 1.0f) || ((!z2 || this.letterLayout == null) && this.bubbleProgress > 0.0f)) {
                this.lastUpdateTime = jCurrentTimeMillis;
                invalidate();
                if (this.isMoving && this.letterLayout != null) {
                    float f7 = this.bubbleProgress + (j / 120.0f);
                    this.bubbleProgress = f7;
                    if (f7 > 1.0f) {
                        this.bubbleProgress = 1.0f;
                    }
                } else {
                    float f8 = this.bubbleProgress - (j / 120.0f);
                    this.bubbleProgress = f8;
                    if (f8 < 0.0f) {
                        this.bubbleProgress = 0.0f;
                    }
                }
            }
            boolean z3 = this.floatingDateVisible;
            if (z3) {
                float f9 = this.floatingDateProgress;
                if (f9 != 1.0f) {
                    float f10 = f9 + (j / 120.0f);
                    this.floatingDateProgress = f10;
                    if (f10 > 1.0f) {
                        this.floatingDateProgress = 1.0f;
                    }
                    invalidate();
                    return;
                }
            }
            if (z3) {
                return;
            }
            float f11 = this.floatingDateProgress;
            if (f11 != 0.0f) {
                float f12 = f11 - (j / 120.0f);
                this.floatingDateProgress = f12;
                if (f12 < 0.0f) {
                    this.floatingDateProgress = 0.0f;
                }
                invalidate();
            }
        }

        @Override // android.view.View
        public void layout(int i, int i2, int i3, int i4) {
            if (RecyclerListView.this.selfOnLayout) {
                super.layout(i, i2, i3, i4);
            }
        }

        public void setProgress(float f) {
            this.progress = f;
            invalidate();
        }

        @Override // android.view.View
        public boolean isPressed() {
            return this.pressed;
        }

        public void showFloatingDate() {
            if (this.type != 1) {
                return;
            }
            if (!this.floatingDateVisible) {
                this.floatingDateVisible = true;
                invalidate();
            }
            AndroidUtilities.cancelRunOnUIThread(this.hideFloatingDateRunnable);
            AndroidUtilities.runOnUIThread(this.hideFloatingDateRunnable, 2000L);
        }

        public void setIsVisible(boolean z) {
            if (this.isVisible != z) {
                this.isVisible = z;
                float f = z ? 1.0f : 0.0f;
                this.visibilityAlpha = f;
                super.setAlpha(this.viewAlpha * f);
            }
        }

        public void setVisibilityAlpha(float f) {
            if (this.visibilityAlpha != f) {
                this.visibilityAlpha = f;
                super.setAlpha(this.viewAlpha * f);
            }
        }

        @Override // android.view.View
        public void setAlpha(float f) {
            if (this.viewAlpha != f) {
                this.viewAlpha = f;
                super.setAlpha(f * this.visibilityAlpha);
            }
        }

        @Override // android.view.View
        public float getAlpha() {
            return this.viewAlpha;
        }

        public int getScrollBarY() {
            return ((int) Math.ceil((getMeasuredHeight() - AndroidUtilities.dp(54.0f)) * this.progress)) + AndroidUtilities.dp(17.0f);
        }

        public float getProgress() {
            return this.progress;
        }

        public void applyBlurDrawables(BlurredBackgroundDrawableViewFactory blurredBackgroundDrawableViewFactory, BlurredBackgroundProvider blurredBackgroundProvider) {
            BlurredBackgroundDrawable blurredBackgroundDrawableCreate = blurredBackgroundDrawableViewFactory.create(RecyclerListView.this.fastScroll, blurredBackgroundProvider);
            this.blurredCircleDrawable = blurredBackgroundDrawableCreate;
            blurredBackgroundDrawableCreate.setPadding(AndroidUtilities.dp(4.0f));
            this.blurredCircleDrawable.setRadius(AndroidUtilities.dp(24.0f));
            BlurredBackgroundDrawable blurredBackgroundDrawableCreate2 = blurredBackgroundDrawableViewFactory.create(RecyclerListView.this.fastScroll, blurredBackgroundProvider);
            this.blurredTagDrawable = blurredBackgroundDrawableCreate2;
            blurredBackgroundDrawableCreate2.setPadding(AndroidUtilities.dp(6.0f));
            this.blurredTagDrawable.setThickness(AndroidUtilities.dp(4.0f));
            this.blurredTagDrawable.setRadius(AndroidUtilities.dp(14.0f));
        }

        public boolean fillDrawablesRect(RectF rectF) {
            if (this.blurredCircleDrawable == null && this.blurredTagDrawable == null) {
                return false;
            }
            rectF.set(this.blurredTagDrawable.getBounds());
            RectF rectF2 = AndroidUtilities.rectTmp;
            rectF2.set(this.blurredCircleDrawable.getBounds());
            rectF.union(rectF2);
            return true;
        }
    }

    public class RecyclerListViewItemClickListener implements RecyclerView.OnItemTouchListener {
        @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
        public void onTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
        }

        public RecyclerListViewItemClickListener(Context context) {
            RecyclerListView.this.gestureDetector = new GestureDetectorFixDoubleTap(context, new GestureDetectorFixDoubleTap.OnGestureListener() { // from class: org.telegram.ui.Components.RecyclerListView.RecyclerListViewItemClickListener.1
                private View doubleTapView;

                @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
                public boolean onDown(MotionEvent motionEvent) {
                    return false;
                }

                @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
                public boolean onSingleTapUp(MotionEvent motionEvent) {
                    if (RecyclerListView.this.currentChildView != null) {
                        if (RecyclerListView.this.onItemClickListenerExtended != null && RecyclerListView.this.onItemClickListenerExtended.hasDoubleTap(RecyclerListView.this.currentChildView, RecyclerListView.this.currentChildPosition)) {
                            this.doubleTapView = RecyclerListView.this.currentChildView;
                        } else {
                            onPressItem(RecyclerListView.this.currentChildView, motionEvent);
                        }
                    }
                    return false;
                }

                @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
                public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
                    if (this.doubleTapView == null || RecyclerListView.this.onItemClickListenerExtended == null || !RecyclerListView.this.onItemClickListenerExtended.hasDoubleTap(this.doubleTapView, RecyclerListView.this.currentChildPosition)) {
                        return false;
                    }
                    onPressItem(this.doubleTapView, motionEvent);
                    this.doubleTapView = null;
                    return true;
                }

                @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
                public boolean onDoubleTap(MotionEvent motionEvent) {
                    if (this.doubleTapView == null || RecyclerListView.this.onItemClickListenerExtended == null || !RecyclerListView.this.onItemClickListenerExtended.hasDoubleTap(this.doubleTapView, RecyclerListView.this.currentChildPosition)) {
                        return false;
                    }
                    RecyclerListView.this.onItemClickListenerExtended.onDoubleTap(this.doubleTapView, RecyclerListView.this.currentChildPosition, motionEvent.getX(), motionEvent.getY());
                    this.doubleTapView = null;
                    return true;
                }

                private void onPressItem(final View view, MotionEvent motionEvent) {
                    if (view != null) {
                        if (RecyclerListView.this.onItemClickListener == null && RecyclerListView.this.onItemClickListenerExtended == null) {
                            return;
                        }
                        final float x = motionEvent.getX();
                        final float y = motionEvent.getY();
                        RecyclerListView.this.onChildPressed(view, x, y, true);
                        final int i = RecyclerListView.this.currentChildPosition;
                        if (RecyclerListView.this.instantClick && i != -1) {
                            try {
                                view.playSoundEffect(0);
                            } catch (Exception unused) {
                            }
                            view.sendAccessibilityEvent(1);
                            OnItemClickListener onItemClickListener = RecyclerListView.this.onItemClickListener;
                            RecyclerListViewItemClickListener recyclerListViewItemClickListener = RecyclerListViewItemClickListener.this;
                            if (onItemClickListener != null) {
                                RecyclerListView.this.onItemClickListener.onItemClick(view, i);
                            } else if (RecyclerListView.this.onItemClickListenerExtended != null) {
                                RecyclerListView.this.onItemClickListenerExtended.onItemClick(view, i, x - view.getX(), y - view.getY());
                            }
                        }
                        RecyclerListView recyclerListView = RecyclerListView.this;
                        Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.RecyclerListView.RecyclerListViewItemClickListener.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (this == RecyclerListView.this.clickRunnable) {
                                    RecyclerListView.this.clickRunnable = null;
                                }
                                View view2 = view;
                                if (view2 != null) {
                                    RecyclerListView.this.onChildPressed(view2, 0.0f, 0.0f, false);
                                    if (RecyclerListView.this.instantClick) {
                                        return;
                                    }
                                    try {
                                        view.playSoundEffect(0);
                                    } catch (Exception unused2) {
                                    }
                                    view.sendAccessibilityEvent(1);
                                    if (i != -1) {
                                        OnItemClickListener onItemClickListener2 = RecyclerListView.this.onItemClickListener;
                                        C42521 c42521 = C42521.this;
                                        if (onItemClickListener2 != null) {
                                            RecyclerListView.this.onItemClickListener.onItemClick(view, i);
                                        } else if (RecyclerListView.this.onItemClickListenerExtended != null) {
                                            OnItemClickListenerExtended onItemClickListenerExtended = RecyclerListView.this.onItemClickListenerExtended;
                                            View view3 = view;
                                            onItemClickListenerExtended.onItemClick(view3, i, x - view3.getX(), y - view.getY());
                                        }
                                    }
                                }
                            }
                        };
                        recyclerListView.clickRunnable = runnable;
                        AndroidUtilities.runOnUIThread(runnable, ViewConfiguration.getPressedStateDuration());
                        if (RecyclerListView.this.selectChildRunnable != null) {
                            AndroidUtilities.cancelRunOnUIThread(RecyclerListView.this.selectChildRunnable);
                            RecyclerListView.this.selectChildRunnable = null;
                            RecyclerListView.this.currentChildView = null;
                            RecyclerListView.this.interceptedByChild = false;
                            RecyclerListView.this.removeSelection(view, motionEvent);
                        }
                    }
                }

                @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
                public void onLongPress(MotionEvent motionEvent) {
                    if (RecyclerListView.this.currentChildView == null || RecyclerListView.this.currentChildPosition == -1) {
                        return;
                    }
                    if (RecyclerListView.this.onItemLongClickListener == null && RecyclerListView.this.onItemLongClickListenerExtended == null) {
                        return;
                    }
                    View view = RecyclerListView.this.currentChildView;
                    OnItemLongClickListener onItemLongClickListener = RecyclerListView.this.onItemLongClickListener;
                    RecyclerListViewItemClickListener recyclerListViewItemClickListener = RecyclerListViewItemClickListener.this;
                    if (onItemLongClickListener != null) {
                        if (RecyclerListView.this.onItemLongClickListener.onItemClick(RecyclerListView.this.currentChildView, RecyclerListView.this.currentChildPosition)) {
                            try {
                                view.performHapticFeedback(0, 2);
                            } catch (Exception unused) {
                            }
                            view.sendAccessibilityEvent(2);
                            return;
                        }
                        return;
                    }
                    if (RecyclerListView.this.onItemLongClickListenerExtended.onItemClick(RecyclerListView.this.currentChildView, RecyclerListView.this.currentChildPosition, motionEvent.getX() - RecyclerListView.this.currentChildView.getX(), motionEvent.getY() - RecyclerListView.this.currentChildView.getY())) {
                        try {
                            view.performHapticFeedback(0, 2);
                        } catch (Exception unused2) {
                        }
                        view.sendAccessibilityEvent(2);
                        RecyclerListView.this.longPressCalled = true;
                    }
                }

                @Override // org.telegram.ui.Components.GestureDetectorFixDoubleTap.OnGestureListener
                public boolean hasDoubleTap(MotionEvent motionEvent) {
                    return RecyclerListView.this.onItemLongClickListenerExtended != null;
                }
            });
            RecyclerListView.this.gestureDetector.setIsLongpressEnabled(false);
        }

        /* JADX WARN: Removed duplicated region for block: B:90:0x0253  */
        @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public boolean onInterceptTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
            View viewFindChildViewUnder;
            int actionMasked = motionEvent.getActionMasked();
            boolean z = RecyclerListView.this.getScrollState() == 0;
            if ((actionMasked == 0 || actionMasked == 5) && RecyclerListView.this.currentChildView == null && z) {
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                RecyclerListView.this.longPressCalled = false;
                RecyclerView.ItemAnimator itemAnimator = RecyclerListView.this.getItemAnimator();
                if ((RecyclerListView.this.allowItemsInteractionDuringAnimation || itemAnimator == null || !itemAnimator.isRunning()) && RecyclerListView.this.allowSelectChildAtPosition(x, y) && (viewFindChildViewUnder = RecyclerListView.this.findChildViewUnder(x, y)) != null && RecyclerListView.this.allowSelectChildAtPosition(viewFindChildViewUnder)) {
                    RecyclerListView.this.currentChildView = viewFindChildViewUnder;
                }
                if (RecyclerListView.this.currentChildView instanceof ViewGroup) {
                    float x2 = motionEvent.getX() - RecyclerListView.this.currentChildView.getLeft();
                    float y2 = motionEvent.getY() - RecyclerListView.this.currentChildView.getTop();
                    RecyclerListView recyclerListView = RecyclerListView.this;
                    if (recyclerListView.hasClickableChild((ViewGroup) recyclerListView.currentChildView, x2, y2)) {
                        RecyclerListView.this.currentChildView = null;
                    }
                }
                RecyclerListView.this.currentChildPosition = -1;
                if (RecyclerListView.this.currentChildView != null) {
                    RecyclerListView recyclerListView2 = RecyclerListView.this;
                    if (recyclerListView2.useLayoutPositionOnClick) {
                        recyclerListView2.currentChildPosition = recyclerView.getChildLayoutPosition(recyclerListView2.currentChildView);
                    } else {
                        recyclerListView2.currentChildPosition = recyclerView.getChildAdapterPosition(recyclerListView2.currentChildView);
                    }
                    MotionEvent motionEventObtain = MotionEvent.obtain(0L, 0L, motionEvent.getActionMasked(), motionEvent.getX() - RecyclerListView.this.currentChildView.getLeft(), motionEvent.getY() - RecyclerListView.this.currentChildView.getTop(), 0);
                    if (RecyclerListView.this.currentChildView.onTouchEvent(motionEventObtain)) {
                        RecyclerListView.this.interceptedByChild = true;
                    }
                    motionEventObtain.recycle();
                }
            }
            if (RecyclerListView.this.currentChildView != null && !RecyclerListView.this.interceptedByChild) {
                try {
                    RecyclerListView.this.gestureDetector.onTouchEvent(motionEvent);
                } catch (Exception e) {
                    FileLog.m898e(e);
                }
            }
            if (actionMasked == 0 || actionMasked == 5) {
                if (!RecyclerListView.this.interceptedByChild && RecyclerListView.this.currentChildView != null) {
                    final float x3 = motionEvent.getX();
                    final float y3 = motionEvent.getY();
                    RecyclerListView.this.selectChildRunnable = new Runnable() { // from class: org.telegram.ui.Components.RecyclerListView$RecyclerListViewItemClickListener$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$onInterceptTouchEvent$0(x3, y3);
                        }
                    };
                    AndroidUtilities.runOnUIThread(RecyclerListView.this.selectChildRunnable, ViewConfiguration.getTapTimeout());
                    if (RecyclerListView.this.currentChildView.isEnabled()) {
                        RecyclerListView recyclerListView3 = RecyclerListView.this;
                        if (recyclerListView3.canHighlightChildAt(recyclerListView3.currentChildView, x3 - RecyclerListView.this.currentChildView.getX(), y3 - RecyclerListView.this.currentChildView.getY())) {
                            RecyclerListView recyclerListView4 = RecyclerListView.this;
                            recyclerListView4.positionSelector(recyclerListView4.currentChildPosition, RecyclerListView.this.currentChildView);
                            Drawable drawable = RecyclerListView.this.selectorDrawable;
                            if (drawable != null) {
                                Drawable current = drawable.getCurrent();
                                if (current instanceof TransitionDrawable) {
                                    if (RecyclerListView.this.onItemLongClickListener != null || RecyclerListView.this.onItemClickListenerExtended != null) {
                                        ((TransitionDrawable) current).startTransition(ViewConfiguration.getLongPressTimeout());
                                    } else {
                                        ((TransitionDrawable) current).resetTransition();
                                    }
                                }
                                RecyclerListView.this.selectorDrawable.setHotspot(motionEvent.getX(), motionEvent.getY());
                            }
                            RecyclerListView.this.updateSelectorState();
                        } else {
                            RecyclerListView.this.selectorRect.setEmpty();
                        }
                    }
                } else {
                    RecyclerListView.this.selectorRect.setEmpty();
                }
            } else if ((actionMasked == 1 || actionMasked == 6 || actionMasked == 3 || !z) && RecyclerListView.this.currentChildView != null) {
                if (RecyclerListView.this.selectChildRunnable != null) {
                    AndroidUtilities.cancelRunOnUIThread(RecyclerListView.this.selectChildRunnable);
                    RecyclerListView.this.selectChildRunnable = null;
                }
                View view = RecyclerListView.this.currentChildView;
                RecyclerListView recyclerListView5 = RecyclerListView.this;
                recyclerListView5.onChildPressed(recyclerListView5.currentChildView, 0.0f, 0.0f, false);
                RecyclerListView.this.currentChildView = null;
                RecyclerListView.this.interceptedByChild = false;
                RecyclerListView.this.removeSelection(view, motionEvent);
                if ((actionMasked == 1 || actionMasked == 6 || actionMasked == 3) && RecyclerListView.this.onItemLongClickListenerExtended != null && RecyclerListView.this.longPressCalled) {
                    RecyclerListView.this.onItemLongClickListenerExtended.onLongClickRelease();
                    RecyclerListView.this.longPressCalled = false;
                }
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onInterceptTouchEvent$0(float f, float f2) {
            if (RecyclerListView.this.selectChildRunnable == null || RecyclerListView.this.currentChildView == null) {
                return;
            }
            RecyclerListView recyclerListView = RecyclerListView.this;
            recyclerListView.onChildPressed(recyclerListView.currentChildView, f, f2, true);
            RecyclerListView.this.selectChildRunnable = null;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
        public void onRequestDisallowInterceptTouchEvent(boolean z) {
            RecyclerListView.this.cancelClickRunnables(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public boolean hasClickableChild(ViewGroup viewGroup, float f, float f2) {
        for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = viewGroup.getChildAt(childCount);
            if (childAt.getVisibility() == 0) {
                float left = f - childAt.getLeft();
                float top = f2 - childAt.getTop();
                if (left >= 0.0f && left <= childAt.getWidth() && top >= 0.0f && top <= childAt.getHeight()) {
                    if (childAt instanceof HitTestable) {
                        if (((HitTestable) childAt).hasClickableNodeAt(left, top)) {
                            return true;
                        }
                    } else if (childAt.isClickable()) {
                        return true;
                    }
                    if ((childAt instanceof ViewGroup) && hasClickableChild((ViewGroup) childAt, left, top)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public View findChildViewUnder(float f, float f2) {
        int childCount = getChildCount();
        int i = 0;
        while (i < 2) {
            for (int i2 = childCount - 1; i2 >= 0; i2--) {
                View childAt = getChildAt(i2);
                if ((!(childAt instanceof ChatMessageCell) && !(childAt instanceof ChatActionCell)) || childAt.getVisibility() != 4) {
                    float translationX = i == 0 ? childAt.getTranslationX() : 0.0f;
                    float translationY = i == 0 ? childAt.getTranslationY() : 0.0f;
                    if (f >= childAt.getLeft() + translationX && f <= childAt.getRight() + translationX && f2 >= childAt.getTop() + translationY && f2 <= childAt.getBottom() + translationY) {
                        return childAt;
                    }
                }
            }
            i++;
        }
        return null;
    }

    public void setDisableHighlightState(boolean z) {
        this.disableHighlightState = z;
    }

    public View getPressedChildView() {
        return this.currentChildView;
    }

    public void onChildPressed(View view, float f, float f2, boolean z) {
        if (this.disableHighlightState || view == null) {
            return;
        }
        view.setPressed(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeSelection(View view, MotionEvent motionEvent) {
        if (view == null || this.selectorRect.isEmpty()) {
            return;
        }
        if (view.isEnabled()) {
            positionSelector(this.currentChildPosition, view);
            Drawable drawable = this.selectorDrawable;
            if (drawable != null) {
                Drawable current = drawable.getCurrent();
                if (current instanceof TransitionDrawable) {
                    ((TransitionDrawable) current).resetTransition();
                }
                if (motionEvent != null) {
                    this.selectorDrawable.setHotspot(motionEvent.getX(), motionEvent.getY());
                }
            }
        } else {
            this.selectorRect.setEmpty();
        }
        updateSelectorState();
    }

    public void cancelClickRunnables(boolean z) {
        Runnable runnable = this.selectChildRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
            this.selectChildRunnable = null;
        }
        View view = this.currentChildView;
        if (view != null) {
            if (z) {
                onChildPressed(view, 0.0f, 0.0f, false);
            }
            this.currentChildView = null;
            removeSelection(view, null);
        }
        this.selectorRect.setEmpty();
        Runnable runnable2 = this.clickRunnable;
        if (runnable2 != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable2);
            this.clickRunnable = null;
        }
        this.interceptedByChild = false;
    }

    public void setResetSelectorOnChanged(boolean z) {
        this.resetSelectorOnChanged = z;
    }

    public int[] getResourceDeclareStyleableIntArray(String str, String str2) {
        try {
            Field field = Class.forName(str + ".R$styleable").getField(str2);
            if (field != null) {
                return (int[]) field.get(null);
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    public RecyclerListView(Context context) {
        this(context, null);
    }

    @SuppressLint({"PrivateApi"})
    public RecyclerListView(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.drawSelection = true;
        this.allowItemsInteractionDuringAnimation = true;
        this.currentFirst = -1;
        this.currentVisible = -1;
        this.skipDrawSection = false;
        this.hideIfEmpty = true;
        this.selectorType = 2;
        this.selectorRect = new Rect();
        this.translateSelector = -1;
        this.scrollEnabled = true;
        this.lastX = Float.MAX_VALUE;
        this.lastY = Float.MAX_VALUE;
        this.accessibilityEnabled = true;
        this.accessibilityDelegate = new View.AccessibilityDelegate() { // from class: org.telegram.ui.Components.RecyclerListView.1
            @Override // android.view.View.AccessibilityDelegate
            public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
                if (view.isEnabled()) {
                    accessibilityNodeInfo.addAction(16);
                }
            }
        };
        this.resetSelectorOnChanged = true;
        this.observer = new RecyclerView.AdapterDataObserver() { // from class: org.telegram.ui.Components.RecyclerListView.2
            @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
            public void onChanged() {
                RecyclerListView.this.checkIfEmpty(true);
                if (RecyclerListView.this.resetSelectorOnChanged) {
                    RecyclerListView.this.currentFirst = -1;
                    if (RecyclerListView.this.removeHighlighSelectionRunnable == null) {
                        RecyclerListView.this.selectorRect.setEmpty();
                    }
                }
                RecyclerListView.this.invalidate();
            }

            @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
            public void onItemRangeInserted(int i, int i2) {
                RecyclerListView.this.checkIfEmpty(true);
                if (RecyclerListView.this.pinnedHeader == null || RecyclerListView.this.pinnedHeader.getAlpha() != 0.0f) {
                    return;
                }
                RecyclerListView.this.currentFirst = -1;
                RecyclerListView.this.invalidateViews();
            }

            @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
            public void onItemRangeRemoved(int i, int i2) {
                RecyclerListView.this.checkIfEmpty(true);
            }
        };
        this.scroller = new Runnable() { // from class: org.telegram.ui.Components.RecyclerListView.6
            @Override // java.lang.Runnable
            public void run() {
                int iDp;
                RecyclerListView recyclerListView = RecyclerListView.this;
                recyclerListView.multiSelectionListener.getPaddings(recyclerListView.listPaddings);
                if (RecyclerListView.this.multiselectScrollToTop) {
                    iDp = -AndroidUtilities.dp(12.0f);
                    RecyclerListView.this.chekMultiselect(0.0f, r2.listPaddings[0]);
                } else {
                    iDp = AndroidUtilities.dp(12.0f);
                    RecyclerListView.this.chekMultiselect(0.0f, r2.getMeasuredHeight() - RecyclerListView.this.listPaddings[1]);
                }
                RecyclerListView.this.multiSelectionListener.scrollBy(iDp);
                RecyclerListView recyclerListView2 = RecyclerListView.this;
                if (recyclerListView2.multiselectScrollRunning) {
                    AndroidUtilities.runOnUIThread(recyclerListView2.scroller);
                }
            }
        };
        this.applyPaddingToSections = false;
        this.segmentedSectionsEnabled = true;
        this.clipPath = new Path();
        this.resourcesProvider = resourcesProvider;
        EdgeEffectTrackerFactory edgeEffectTrackerFactory = new EdgeEffectTrackerFactory();
        this.edgeEffectTrackerFactory = edgeEffectTrackerFactory;
        setEdgeEffectFactory(edgeEffectTrackerFactory);
        setGlowColor(getThemedColor(Theme.key_actionBarDefault));
        Drawable selectorDrawable = Theme.getSelectorDrawable(getThemedColor(Theme.key_listSelector), false);
        this.selectorDrawable = selectorDrawable;
        selectorDrawable.setCallback(this);
        try {
            if (!gotAttributes) {
                int[] resourceDeclareStyleableIntArray = getResourceDeclareStyleableIntArray("com.android.internal", "View");
                attributes = resourceDeclareStyleableIntArray;
                if (resourceDeclareStyleableIntArray == null) {
                    attributes = new int[0];
                }
                gotAttributes = true;
            }
            TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributes);
            Method method = initializeScrollbars;
            if (method != null) {
                method.invoke(this, typedArrayObtainStyledAttributes);
            }
        } catch (Throwable th) {
            FileLog.m898e(th);
        }
        super.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Components.RecyclerListView.3
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i) {
                RecyclerListView.this.checkStopHeavyOperations(i);
                if (i != 0 && RecyclerListView.this.currentChildView != null) {
                    if (RecyclerListView.this.selectChildRunnable != null) {
                        AndroidUtilities.cancelRunOnUIThread(RecyclerListView.this.selectChildRunnable);
                        RecyclerListView.this.selectChildRunnable = null;
                    }
                    MotionEvent motionEventObtain = MotionEvent.obtain(0L, 0L, 3, 0.0f, 0.0f, 0);
                    try {
                        RecyclerListView.this.gestureDetector.onTouchEvent(motionEventObtain);
                    } catch (Exception e) {
                        FileLog.m898e(e);
                    }
                    RecyclerListView.this.currentChildView.onTouchEvent(motionEventObtain);
                    motionEventObtain.recycle();
                    View view = RecyclerListView.this.currentChildView;
                    RecyclerListView recyclerListView = RecyclerListView.this;
                    recyclerListView.onChildPressed(recyclerListView.currentChildView, 0.0f, 0.0f, false);
                    RecyclerListView.this.currentChildView = null;
                    RecyclerListView.this.removeSelection(view, null);
                    RecyclerListView.this.interceptedByChild = false;
                }
                if (RecyclerListView.this.onScrollListener != null) {
                    RecyclerListView.this.onScrollListener.onScrollStateChanged(recyclerView, i);
                }
                RecyclerListView recyclerListView2 = RecyclerListView.this;
                boolean z = i == 1 || i == 2;
                recyclerListView2.scrollingByUser = z;
                if (z) {
                    recyclerListView2.scrolledByUserOnce = true;
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                if (RecyclerListView.this.onScrollListener != null) {
                    RecyclerListView.this.onScrollListener.onScrolled(recyclerView, i, i2);
                }
                RecyclerListView recyclerListView = RecyclerListView.this;
                if (recyclerListView.selectorPosition != -1) {
                    recyclerListView.selectorRect.offset(-i, -i2);
                    RecyclerListView recyclerListView2 = RecyclerListView.this;
                    Drawable drawable = recyclerListView2.selectorDrawable;
                    if (drawable != null) {
                        drawable.setBounds(recyclerListView2.selectorRect);
                    }
                    RecyclerListView.this.invalidate();
                } else {
                    recyclerListView.selectorRect.setEmpty();
                }
                RecyclerListView.this.checkSection(false);
                if (i2 != 0 && RecyclerListView.this.fastScroll != null) {
                    RecyclerListView.this.fastScroll.showFloatingDate();
                }
                if (RecyclerListView.this.pendingHighlightPosition != null) {
                    RecyclerListView recyclerListView3 = RecyclerListView.this;
                    recyclerListView3.highlightRowInternal(recyclerListView3.pendingHighlightPosition, 700, false);
                }
            }
        });
        addOnItemTouchListener(new RecyclerListViewItemClickListener(context));
        if (ExteraConfig.getInAppVibration()) {
            return;
        }
        VibratorUtils.disableHapticFeedback(this);
    }

    public void drawSectionBackground(Canvas canvas, int i, int i2, int i3) {
        drawSectionBackground(canvas, i, i2, i3, 0, 0);
    }

    public void drawSectionBackground(Canvas canvas, int i, int i2, int i3, int i4, int i5) {
        if (i2 < i || i < 0 || i2 < 0) {
            return;
        }
        int iMax = Integer.MIN_VALUE;
        int iMin = Integer.MAX_VALUE;
        boolean zIsRoundSectionView = false;
        for (int i6 = 0; i6 < getChildCount(); i6++) {
            View childAt = getChildAt(i6);
            if (childAt != null) {
                int childAdapterPosition = getChildAdapterPosition(childAt);
                int top = childAt.getTop();
                if (childAdapterPosition >= i && childAdapterPosition <= i2) {
                    iMin = Math.min(top, iMin);
                    iMax = Math.max((int) (top + (childAt.getHeight() * childAt.getAlpha())), iMax);
                    if (childAdapterPosition == i && childAdapterPosition == i2) {
                        zIsRoundSectionView = isRoundSectionView(childAt);
                    }
                }
            }
        }
        if (iMin < iMax) {
            if (this.backgroundPaint == null) {
                this.backgroundPaint = new Paint(1);
            }
            this.backgroundPaint.setColor(i3);
            if (i == i2 && zIsRoundSectionView) {
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(0.0f, iMin - i4, getWidth(), iMax + i5);
                float singleSectionRadius = getSingleSectionRadius(rectF);
                canvas.drawRoundRect(rectF, singleSectionRadius, singleSectionRadius, this.backgroundPaint);
                return;
            }
            canvas.drawRect(0.0f, iMin - i4, getWidth(), iMax + i5, this.backgroundPaint);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkStopHeavyOperations(int i) {
        boolean z = this.stoppedAllHeavyOperations;
        if (i == 0) {
            if (z) {
                this.stoppedAllHeavyOperations = false;
                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.startAllHeavyOperations, 512);
                return;
            }
            return;
        }
        if (z || !this.allowStopHeaveOperations) {
            return;
        }
        this.stoppedAllHeavyOperations = true;
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.stopAllHeavyOperations, 512);
    }

    @Override // android.view.View
    public void setVerticalScrollBarEnabled(boolean z) {
        if (attributes != null) {
            super.setVerticalScrollBarEnabled(z);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        FastScroll fastScroll = this.fastScroll;
        if (fastScroll != null && fastScroll.getLayoutParams() != null) {
            FastScroll fastScroll2 = this.fastScroll;
            int measuredHeight = (getMeasuredHeight() - (fastScroll2.usePadding ? getPaddingTop() : fastScroll2.topOffset)) - getPaddingBottom();
            this.fastScroll.getLayoutParams().height = measuredHeight;
            this.fastScroll.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(132.0f), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(measuredHeight, TLObject.FLAG_30));
        }
        this.touchSlop = ViewConfiguration.get(getContext()).getScaledTouchSlop();
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        try {
            super.onLayout(z, i, i2, i3, i4);
            FastScroll fastScroll = this.fastScroll;
            if (fastScroll != null) {
                this.selfOnLayout = true;
                int paddingTop = i2 + (fastScroll.usePadding ? getPaddingTop() : fastScroll.topOffset);
                FastScroll fastScroll2 = this.fastScroll;
                if (fastScroll2.isRtl) {
                    fastScroll2.layout(0, paddingTop, fastScroll2.getMeasuredWidth(), this.fastScroll.getMeasuredHeight() + paddingTop);
                } else {
                    int measuredWidth = getMeasuredWidth() - this.fastScroll.getMeasuredWidth();
                    FastScroll fastScroll3 = this.fastScroll;
                    fastScroll3.layout(measuredWidth, paddingTop, fastScroll3.getMeasuredWidth() + measuredWidth, this.fastScroll.getMeasuredHeight() + paddingTop);
                }
                this.selfOnLayout = false;
            }
            checkSection(false);
            IntReturnCallback intReturnCallback = this.pendingHighlightPosition;
            if (intReturnCallback != null) {
                highlightRowInternal(intReturnCallback, 700, false);
            }
        } catch (Exception e) {
            FileLog.m898e(e);
            post(new Runnable() { // from class: org.telegram.ui.Components.RecyclerListView$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onLayout$0();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onLayout$0() {
        try {
            getAdapter().notifyDataSetChanged();
        } catch (Exception e) {
            FileLog.m898e(e);
        }
    }

    public void setSelectorType(int i) {
        this.selectorType = i;
    }

    public void setSelectorRadius(int i) {
        this.selectorRadius = i;
    }

    public void setTopBottomSelectorRadius(int i) {
        this.topBottomSelectorRadius = i;
    }

    public void setDrawSelectorBehind(boolean z) {
        this.drawSelectorBehind = z;
    }

    public void setSelectorDrawableColor(int i) {
        Drawable drawable = this.selectorDrawable;
        if (drawable != null) {
            drawable.setCallback(null);
        }
        int i2 = this.selectorType;
        if (i2 == 100) {
            this.selectorDrawable = Theme.createSimpleSelectorRoundRectDrawable(0, 0, 0, 0);
        } else if (i2 == 8) {
            this.selectorDrawable = Theme.createRadSelectorDrawable(i, this.selectorRadius, 0);
        } else if (i2 == 9) {
            this.selectorDrawable = null;
        } else {
            int i3 = this.topBottomSelectorRadius;
            if (i3 > 0) {
                this.selectorDrawable = Theme.createRadSelectorDrawable(i, i3, i3);
            } else {
                int i4 = this.selectorRadius;
                if (i4 > 0 && i2 != 1) {
                    this.selectorDrawable = Theme.createSimpleSelectorRoundRectDrawable(i4, 0, i, -16777216);
                } else if (i2 == 2) {
                    this.selectorDrawable = Theme.getSelectorDrawable(i, false);
                } else {
                    this.selectorDrawable = Theme.createSelectorDrawable(i, i2, i4);
                }
            }
        }
        Drawable drawable2 = this.selectorDrawable;
        if (drawable2 != null) {
            drawable2.setCallback(this);
        }
    }

    public Drawable getSelectorDrawable() {
        return this.selectorDrawable;
    }

    public void checkSection(boolean z) {
        FastScroll fastScroll;
        RecyclerView.ViewHolder childViewHolder;
        FastScroll fastScroll2;
        View view;
        int top;
        RecyclerView.ViewHolder childViewHolder2;
        int adapterPosition;
        int sectionForPosition;
        if (((this.scrollingByUser || z) && this.fastScroll != null) || !(this.sectionsType == 0 || this.sectionsAdapter == null)) {
            RecyclerView.LayoutManager layoutManager = getLayoutManager();
            if (layoutManager instanceof LinearLayoutManager) {
                LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
                if (linearLayoutManager.getOrientation() == 1) {
                    if (this.sectionsAdapter != null) {
                        int paddingTop = this.sectionsType == 1 ? 0 : getPaddingTop();
                        int i = this.sectionsType;
                        float f = 32.0f;
                        int i2 = Integer.MAX_VALUE;
                        if (i != 1 && i != 3) {
                            if (i == 2) {
                                this.pinnedHeaderShadowTargetAlpha = 0.0f;
                                if (this.sectionsAdapter.getItemCount() == 0) {
                                    return;
                                }
                                int childCount = getChildCount();
                                int iMax = 0;
                                int i3 = Integer.MAX_VALUE;
                                View view2 = null;
                                View view3 = null;
                                for (int i4 = 0; i4 < childCount; i4++) {
                                    View childAt = getChildAt(i4);
                                    int bottom = childAt.getBottom();
                                    if (bottom > this.sectionOffset + paddingTop) {
                                        if (bottom < i2) {
                                            view3 = childAt;
                                            i2 = bottom;
                                        }
                                        iMax = Math.max(iMax, bottom);
                                        if (bottom >= this.sectionOffset + paddingTop + AndroidUtilities.dp(32.0f) && bottom < i3) {
                                            view2 = childAt;
                                            i3 = bottom;
                                        }
                                    }
                                }
                                if (view3 == null || (childViewHolder2 = getChildViewHolder(view3)) == null || (sectionForPosition = this.sectionsAdapter.getSectionForPosition((adapterPosition = childViewHolder2.getAdapterPosition()))) < 0) {
                                    return;
                                }
                                if (this.currentFirst != sectionForPosition || this.pinnedHeader == null) {
                                    View sectionHeaderView = getSectionHeaderView(sectionForPosition, this.pinnedHeader);
                                    this.pinnedHeader = sectionHeaderView;
                                    sectionHeaderView.measure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0));
                                    View view4 = this.pinnedHeader;
                                    view4.layout(0, 0, view4.getMeasuredWidth(), this.pinnedHeader.getMeasuredHeight());
                                    this.currentFirst = sectionForPosition;
                                }
                                if (this.pinnedHeader != null && view2 != null && view2.getClass() != this.pinnedHeader.getClass()) {
                                    this.pinnedHeaderShadowTargetAlpha = 1.0f;
                                }
                                int countForSection = this.sectionsAdapter.getCountForSection(sectionForPosition);
                                int positionInSectionForPosition = this.sectionsAdapter.getPositionInSectionForPosition(adapterPosition);
                                int i5 = (iMax == 0 || iMax >= getMeasuredHeight() - getPaddingBottom()) ? this.sectionOffset : -paddingTop;
                                int i6 = countForSection - 1;
                                View view5 = this.pinnedHeader;
                                if (positionInSectionForPosition == i6) {
                                    int height = view5.getHeight();
                                    int top2 = ((view3.getTop() - paddingTop) - this.sectionOffset) + view3.getHeight();
                                    int i7 = top2 < height ? top2 - height : paddingTop;
                                    View view6 = this.pinnedHeader;
                                    if (i7 < 0) {
                                        view6.setTag(Integer.valueOf(paddingTop + i5 + i7));
                                    } else {
                                        view6.setTag(Integer.valueOf(paddingTop + i5));
                                    }
                                } else {
                                    view5.setTag(Integer.valueOf(paddingTop + i5));
                                }
                                invalidate();
                                return;
                            }
                            return;
                        }
                        int childCount2 = getChildCount();
                        int i8 = 0;
                        int iMax2 = 0;
                        int i9 = Integer.MAX_VALUE;
                        View view7 = null;
                        while (i8 < childCount2) {
                            View childAt2 = getChildAt(i8);
                            float f2 = f;
                            int bottom2 = childAt2.getBottom();
                            if (bottom2 > this.sectionOffset + paddingTop) {
                                if (bottom2 < i2) {
                                    i2 = bottom2;
                                    view7 = childAt2;
                                }
                                iMax2 = Math.max(iMax2, bottom2);
                                if (bottom2 >= this.sectionOffset + paddingTop + AndroidUtilities.dp(f2) && bottom2 < i9) {
                                    i9 = bottom2;
                                }
                            }
                            i8++;
                            f = f2;
                        }
                        if (view7 == null || (childViewHolder = getChildViewHolder(view7)) == null) {
                            return;
                        }
                        int adapterPosition2 = childViewHolder.getAdapterPosition();
                        int iAbs = Math.abs(linearLayoutManager.findLastVisibleItemPosition() - adapterPosition2) + 1;
                        if ((this.scrollingByUser || z) && (fastScroll2 = this.fastScroll) != null && !fastScroll2.isPressed() && (getAdapter() instanceof FastScrollAdapter)) {
                            this.fastScroll.setProgress(Math.min(1.0f, adapterPosition2 / ((this.sectionsAdapter.getTotalItemsCount() - iAbs) + 1)));
                        }
                        this.headersCache.addAll(this.headers);
                        this.headers.clear();
                        if (this.sectionsAdapter.getItemCount() == 0) {
                            return;
                        }
                        if (this.currentFirst != adapterPosition2 || this.currentVisible != iAbs) {
                            this.currentFirst = adapterPosition2;
                            this.currentVisible = iAbs;
                            this.sectionsCount = 1;
                            int sectionForPosition2 = this.sectionsAdapter.getSectionForPosition(adapterPosition2);
                            this.startSection = sectionForPosition2;
                            int countForSection2 = (this.sectionsAdapter.getCountForSection(sectionForPosition2) + adapterPosition2) - this.sectionsAdapter.getPositionInSectionForPosition(adapterPosition2);
                            while (countForSection2 < adapterPosition2 + iAbs) {
                                countForSection2 += this.sectionsAdapter.getCountForSection(this.startSection + this.sectionsCount);
                                this.sectionsCount++;
                            }
                        }
                        if (this.sectionsType != 3) {
                            int i10 = adapterPosition2;
                            for (int i11 = this.startSection; i11 < this.startSection + this.sectionsCount; i11++) {
                                if (this.headersCache.isEmpty()) {
                                    view = null;
                                } else {
                                    view = this.headersCache.get(0);
                                    this.headersCache.remove(0);
                                }
                                View sectionHeaderView2 = getSectionHeaderView(i11, view);
                                this.headers.add(sectionHeaderView2);
                                int countForSection3 = this.sectionsAdapter.getCountForSection(i11);
                                if (i11 == this.startSection) {
                                    int positionInSectionForPosition2 = this.sectionsAdapter.getPositionInSectionForPosition(i10);
                                    if (positionInSectionForPosition2 == countForSection3 - 1) {
                                        sectionHeaderView2.setTag(Integer.valueOf((-sectionHeaderView2.getHeight()) + paddingTop));
                                    } else if (positionInSectionForPosition2 == countForSection3 - 2) {
                                        View childAt3 = getChildAt(i10 - adapterPosition2);
                                        if (childAt3 != null) {
                                            top = childAt3.getTop() + paddingTop;
                                        } else {
                                            top = -AndroidUtilities.dp(100.0f);
                                        }
                                        sectionHeaderView2.setTag(Integer.valueOf(Math.min(top, 0)));
                                    } else {
                                        sectionHeaderView2.setTag(0);
                                    }
                                    countForSection3 -= this.sectionsAdapter.getPositionInSectionForPosition(adapterPosition2);
                                } else {
                                    View childAt4 = getChildAt(i10 - adapterPosition2);
                                    if (childAt4 != null) {
                                        sectionHeaderView2.setTag(Integer.valueOf(childAt4.getTop() + paddingTop));
                                    } else {
                                        sectionHeaderView2.setTag(Integer.valueOf(-AndroidUtilities.dp(100.0f)));
                                    }
                                }
                                i10 += countForSection3;
                            }
                            return;
                        }
                        return;
                    }
                    int iFindFirstVisibleItemPosition = linearLayoutManager.findFirstVisibleItemPosition();
                    Math.abs(linearLayoutManager.findLastVisibleItemPosition() - iFindFirstVisibleItemPosition);
                    if (iFindFirstVisibleItemPosition == -1) {
                        return;
                    }
                    if ((!this.scrollingByUser && !z) || (fastScroll = this.fastScroll) == null || fastScroll.isPressed()) {
                        return;
                    }
                    RecyclerView.Adapter adapter = getAdapter();
                    if (adapter instanceof FastScrollAdapter) {
                        FastScrollAdapter fastScrollAdapter = (FastScrollAdapter) adapter;
                        float scrollProgress = fastScrollAdapter.getScrollProgress(this);
                        this.fastScroll.setIsVisible(fastScrollAdapter.fastScrollIsVisible(this));
                        this.fastScroll.setProgress(Math.min(1.0f, scrollProgress));
                        this.fastScroll.getCurrentLetter(false);
                    }
                }
            }
        }
    }

    public void setListSelectorColor(Integer num) {
        int iIntValue;
        Drawable drawable = this.selectorDrawable;
        if (num == null) {
            iIntValue = getThemedColor(hasSections() ? Theme.key_settings_listSelector : Theme.key_listSelector);
        } else {
            iIntValue = num.intValue();
        }
        Theme.setSelectorDrawableColor(drawable, iIntValue, true);
    }

    public Integer getSelectorColor(int i) {
        GenericProvider<Integer, Integer> genericProvider = this.getSelectorColor;
        if (genericProvider != null) {
            return genericProvider.provide(Integer.valueOf(i));
        }
        return null;
    }

    public void setItemSelectorColorProvider(GenericProvider<Integer, Integer> genericProvider) {
        this.getSelectorColor = genericProvider;
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.onItemClickListener = onItemClickListener;
    }

    public void setOnItemClickListener(OnItemClickListenerExtended onItemClickListenerExtended) {
        this.onItemClickListenerExtended = onItemClickListenerExtended;
    }

    public OnItemClickListener getOnItemClickListener() {
        return this.onItemClickListener;
    }

    public void clickItem(View view, int i) {
        OnItemClickListener onItemClickListener = this.onItemClickListener;
        if (onItemClickListener != null) {
            onItemClickListener.onItemClick(view, i);
            return;
        }
        OnItemClickListenerExtended onItemClickListenerExtended = this.onItemClickListenerExtended;
        if (onItemClickListenerExtended != null) {
            onItemClickListenerExtended.onItemClick(view, i, 0.0f, 0.0f);
        }
    }

    public boolean longClickItem(View view, int i) {
        OnItemLongClickListener onItemLongClickListener = this.onItemLongClickListener;
        if (onItemLongClickListener != null) {
            return onItemLongClickListener.onItemClick(view, i);
        }
        OnItemLongClickListenerExtended onItemLongClickListenerExtended = this.onItemLongClickListenerExtended;
        if (onItemLongClickListenerExtended != null) {
            return onItemLongClickListenerExtended.onItemClick(view, i, 0.0f, 0.0f);
        }
        return false;
    }

    public void setOnItemLongClickListener(OnItemLongClickListener onItemLongClickListener) {
        setOnItemLongClickListener(onItemLongClickListener, ViewConfiguration.getLongPressTimeout());
    }

    public void setOnItemLongClickListener(OnItemLongClickListener onItemLongClickListener, long j) {
        this.onItemLongClickListener = onItemLongClickListener;
        this.gestureDetector.setIsLongpressEnabled(onItemLongClickListener != null);
        this.gestureDetector.setLongpressDuration(j);
    }

    public void setOnItemLongClickListener(OnItemLongClickListenerExtended onItemLongClickListenerExtended) {
        setOnItemLongClickListener(onItemLongClickListenerExtended, ViewConfiguration.getLongPressTimeout());
    }

    public void setOnItemLongClickListener(OnItemLongClickListenerExtended onItemLongClickListenerExtended, long j) {
        this.onItemLongClickListenerExtended = onItemLongClickListenerExtended;
        this.gestureDetector.setIsLongpressEnabled(onItemLongClickListenerExtended != null);
        this.gestureDetector.setLongpressDuration(j);
    }

    public void setEmptyView(View view) {
        View view2 = this.emptyView;
        if (view2 == view) {
            return;
        }
        if (view2 != null) {
            view2.animate().setListener(null).cancel();
        }
        this.emptyView = view;
        if (this.animateEmptyView && view != null) {
            view.setVisibility(8);
        }
        if (this.isHidden) {
            View view3 = this.emptyView;
            if (view3 != null) {
                this.emptyViewAnimateToVisibility = 8;
                view3.setVisibility(8);
                return;
            }
            return;
        }
        this.emptyViewAnimateToVisibility = -1;
        checkIfEmpty(false);
    }

    public boolean updateEmptyViewAnimated() {
        return isAttachedToWindow();
    }

    public View getEmptyView() {
        return this.emptyView;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void invalidateViews() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt instanceof Theme.Colorable) {
                ((Theme.Colorable) childAt).updateColors();
            }
            childAt.invalidate();
        }
    }

    public void updateFastScrollColors() {
        FastScroll fastScroll = this.fastScroll;
        if (fastScroll != null) {
            fastScroll.updateColors();
        }
    }

    public void setPinnedHeaderShadowDrawable(Drawable drawable) {
        this.pinnedHeaderShadowDrawable = drawable;
    }

    @Override // android.view.View
    public boolean canScrollVertically(int i) {
        return this.scrollEnabled && super.canScrollVertically(i);
    }

    public void setScrollEnabled(boolean z) {
        this.scrollEnabled = z;
    }

    public void highlightRow(IntReturnCallback intReturnCallback) {
        highlightRowInternal(intReturnCallback, 700, true);
    }

    public void highlightRow(IntReturnCallback intReturnCallback, int i) {
        highlightRowInternal(intReturnCallback, i, true);
    }

    public void removeHighlightRow() {
        int i;
        Runnable runnable = this.removeHighlighSelectionRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
            this.removeHighlighSelectionRunnable.run();
            this.removeHighlighSelectionRunnable = null;
            this.selectorView = null;
            return;
        }
        this.removeHighlighSelectionRunnable = null;
        this.pendingHighlightPosition = null;
        View view = this.selectorView;
        if (view != null && (i = this.highlightPosition) != -1) {
            positionSelector(i, view);
            Drawable drawable = this.selectorDrawable;
            if (drawable != null) {
                drawable.setState(new int[0]);
                invalidateDrawable(this.selectorDrawable);
            }
            this.selectorView = null;
            this.highlightPosition = -1;
            return;
        }
        Drawable drawable2 = this.selectorDrawable;
        if (drawable2 != null) {
            Drawable current = drawable2.getCurrent();
            if (current instanceof TransitionDrawable) {
                ((TransitionDrawable) current).resetTransition();
            }
        }
        Drawable drawable3 = this.selectorDrawable;
        if (drawable3 != null && drawable3.isStateful() && this.selectorDrawable.setState(StateSet.NOTHING)) {
            invalidateDrawable(this.selectorDrawable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void highlightRowInternal(IntReturnCallback intReturnCallback, int i, boolean z) {
        Runnable runnable = this.removeHighlighSelectionRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
            this.removeHighlighSelectionRunnable = null;
        }
        RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition = findViewHolderForAdapterPosition(intReturnCallback.run());
        if (viewHolderFindViewHolderForAdapterPosition == null) {
            if (z) {
                this.pendingHighlightPosition = intReturnCallback;
                return;
            }
            return;
        }
        int layoutPosition = viewHolderFindViewHolderForAdapterPosition.getLayoutPosition();
        this.highlightPosition = layoutPosition;
        positionSelector(layoutPosition, viewHolderFindViewHolderForAdapterPosition.itemView, false, -1.0f, -1.0f, true);
        Drawable drawable = this.selectorDrawable;
        if (drawable != null) {
            Drawable current = drawable.getCurrent();
            if (current instanceof TransitionDrawable) {
                if (this.onItemLongClickListener != null || this.onItemClickListenerExtended != null) {
                    ((TransitionDrawable) current).startTransition(ViewConfiguration.getLongPressTimeout());
                } else {
                    ((TransitionDrawable) current).resetTransition();
                }
            }
            this.selectorDrawable.setHotspot(viewHolderFindViewHolderForAdapterPosition.itemView.getMeasuredWidth() / 2, viewHolderFindViewHolderForAdapterPosition.itemView.getMeasuredHeight() / 2);
        }
        Drawable drawable2 = this.selectorDrawable;
        if (drawable2 != null && drawable2.isStateful() && this.selectorDrawable.setState(getDrawableStateForSelector())) {
            invalidateDrawable(this.selectorDrawable);
        }
        if (i > 0) {
            this.pendingHighlightPosition = null;
            Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Components.RecyclerListView$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$highlightRowInternal$1();
                }
            };
            this.removeHighlighSelectionRunnable = runnable2;
            AndroidUtilities.runOnUIThread(runnable2, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$highlightRowInternal$1() {
        this.removeHighlighSelectionRunnable = null;
        this.pendingHighlightPosition = null;
        Drawable drawable = this.selectorDrawable;
        if (drawable != null) {
            Drawable current = drawable.getCurrent();
            if (current instanceof TransitionDrawable) {
                ((TransitionDrawable) current).resetTransition();
            }
        }
        Drawable drawable2 = this.selectorDrawable;
        if (drawable2 == null || !drawable2.isStateful()) {
            return;
        }
        this.selectorDrawable.setState(StateSet.NOTHING);
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (!isEnabled()) {
            return false;
        }
        if (this.disallowInterceptTouchEvents) {
            requestDisallowInterceptTouchEvent(this, true);
        }
        OnInterceptTouchListener onInterceptTouchListener = this.onInterceptTouchListener;
        return (onInterceptTouchListener != null && onInterceptTouchListener.onInterceptTouchEvent(motionEvent)) || super.onInterceptTouchEvent(motionEvent);
    }

    public void setAdaptiveOverScroll() {
        this.adaptiveOverScroll = true;
        setOverScrollMode(2);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        View view;
        int action = motionEvent.getAction();
        if (action == 0) {
            if (this.activeTouches == 0 && this.adaptiveOverScroll) {
                setOverScrollMode(0);
            }
            this.activeTouches++;
        } else if (action == 1 || action == 3) {
            int i = this.activeTouches - 1;
            this.activeTouches = i;
            if (i == 0 && this.adaptiveOverScroll) {
                setOverScrollMode(2);
            }
        }
        FastScroll fastScroll = getFastScroll();
        if (fastScroll != null && fastScroll.isVisible && fastScroll.isMoving && motionEvent.getActionMasked() != 1 && motionEvent.getActionMasked() != 3) {
            return true;
        }
        if (this.sectionsAdapter == null || (view = this.pinnedHeader) == null || view.getAlpha() == 0.0f || !this.pinnedHeader.dispatchTouchEvent(motionEvent)) {
            return super.dispatchTouchEvent(motionEvent);
        }
        return true;
    }

    public void checkIfEmpty() {
        checkIfEmpty(updateEmptyViewAnimated());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkIfEmpty(boolean z) {
        if (this.isHidden) {
            return;
        }
        if (getAdapter() == null || this.emptyView == null) {
            if (!this.hiddenByEmptyView || getVisibility() == 0) {
                return;
            }
            setVisibility(0);
            this.hiddenByEmptyView = false;
            return;
        }
        boolean zEmptyViewIsVisible = emptyViewIsVisible();
        int i = zEmptyViewIsVisible ? 0 : 8;
        if (!this.animateEmptyView || !SharedConfig.animationsEnabled()) {
            z = false;
        }
        emptyViewUpdated(zEmptyViewIsVisible, z);
        if (z) {
            if (this.emptyViewAnimateToVisibility != i) {
                this.emptyViewAnimateToVisibility = i;
                View view = this.emptyView;
                if (i == 0) {
                    view.animate().setListener(null).cancel();
                    if (this.emptyView.getVisibility() == 8) {
                        this.emptyView.setVisibility(0);
                        this.emptyView.setAlpha(0.0f);
                        if (this.emptyViewAnimationType == 1) {
                            this.emptyView.setScaleX(0.7f);
                            this.emptyView.setScaleY(0.7f);
                        }
                    }
                    this.emptyView.animate().alpha(1.0f).scaleX(1.0f).scaleY(1.0f).setDuration(150L).start();
                } else if (view.getVisibility() != 8) {
                    ViewPropertyAnimator viewPropertyAnimatorAlpha = this.emptyView.animate().alpha(0.0f);
                    if (this.emptyViewAnimationType == 1) {
                        viewPropertyAnimatorAlpha.scaleY(0.7f).scaleX(0.7f);
                    }
                    viewPropertyAnimatorAlpha.setDuration(150L).setListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.RecyclerListView.4
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            if (RecyclerListView.this.emptyView != null) {
                                RecyclerListView.this.emptyView.setVisibility(8);
                            }
                            if (RecyclerListView.this.hasSections()) {
                                RecyclerListView.this.invalidate();
                            }
                        }
                    }).start();
                }
            }
        } else {
            this.emptyViewAnimateToVisibility = i;
            this.emptyView.setVisibility(i);
            this.emptyView.setAlpha(1.0f);
        }
        if (this.hideIfEmpty) {
            int i2 = zEmptyViewIsVisible ? 4 : 0;
            if (getVisibility() != i2) {
                setVisibility(i2);
            }
            this.hiddenByEmptyView = true;
        }
    }

    @Override // android.view.View
    public ViewPropertyAnimator animate() {
        return super.animate();
    }

    public boolean emptyViewIsVisible() {
        return (getAdapter() == null || isFastScrollAnimationRunning() || getAdapter().getItemCount() != 0) ? false : true;
    }

    public void hide() {
        if (this.isHidden) {
            return;
        }
        this.isHidden = true;
        if (getVisibility() != 8) {
            setVisibility(8);
        }
        View view = this.emptyView;
        if (view == null || view.getVisibility() == 8) {
            return;
        }
        this.emptyView.setVisibility(8);
    }

    public void show() {
        if (this.isHidden) {
            this.isHidden = false;
            checkIfEmpty(false);
        }
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        if (i != 0) {
            this.hiddenByEmptyView = false;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void setOnScrollListener(RecyclerView.OnScrollListener onScrollListener) {
        this.onScrollListener = onScrollListener;
    }

    public void setHideIfEmpty(boolean z) {
        this.hideIfEmpty = z;
    }

    public RecyclerView.OnScrollListener getOnScrollListener() {
        return this.onScrollListener;
    }

    public void setOnInterceptTouchListener(OnInterceptTouchListener onInterceptTouchListener) {
        this.onInterceptTouchListener = onInterceptTouchListener;
    }

    public void setInstantClick(boolean z) {
        this.instantClick = z;
    }

    public void setDisallowInterceptTouchEvents(boolean z) {
        this.disallowInterceptTouchEvents = z;
    }

    public void setFastScrollEnabled(int i) {
        this.fastScroll = new FastScroll(getContext(), i);
        if (getParent() != null) {
            ((ViewGroup) getParent()).addView(this.fastScroll);
        }
    }

    public void setFastScrollVisible(boolean z) {
        FastScroll fastScroll = this.fastScroll;
        if (fastScroll == null) {
            return;
        }
        fastScroll.setVisibility(z ? 0 : 8);
        this.fastScroll.isVisible = z;
    }

    public void setSectionsType(int i) {
        this.sectionsType = i;
        if (i == 1 || i == 3) {
            this.headers = new ArrayList<>();
            this.headersCache = new ArrayList<>();
        }
    }

    public void setPinnedSectionOffsetY(int i) {
        this.sectionOffset = i;
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void positionSelector(int i, View view) {
        positionSelector(i, view, false, -1.0f, -1.0f, false);
    }

    public void updateSelector() {
        View view;
        int i = this.selectorPosition;
        if (i == -1 || (view = this.selectorView) == null) {
            return;
        }
        positionSelector(i, view);
        invalidate();
    }

    private void positionSelector(int i, View view, boolean z, float f, float f2, boolean z2) {
        ListSectionsDecoration listSectionsDecoration;
        Runnable runnable = this.removeHighlighSelectionRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
            this.removeHighlighSelectionRunnable = null;
            this.pendingHighlightPosition = null;
        }
        if (this.selectorDrawable == null) {
            return;
        }
        boolean z3 = i != this.selectorPosition;
        int selectionBottomPadding = getAdapter() instanceof SelectionAdapter ? ((SelectionAdapter) getAdapter()).getSelectionBottomPadding(view) : 0;
        if (i != -1) {
            this.selectorPosition = i;
        }
        this.selectorView = view;
        if (hasSections() && (listSectionsDecoration = this.sectionsItemDecoration) != null && i != -1 && listSectionsDecoration.isSectionItem.run(view).booleanValue()) {
            View viewFindViewByPosition = findViewByPosition(i - 1);
            View viewFindViewByPosition2 = findViewByPosition(i + 1);
            this.selectorIsSection = true;
            this.selectorSectionHasPrev = viewFindViewByPosition != null && this.sectionsItemDecoration.isSectionItem.run(viewFindViewByPosition).booleanValue();
            this.selectorSectionHasNext = viewFindViewByPosition2 != null && this.sectionsItemDecoration.isSectionItem.run(viewFindViewByPosition2).booleanValue();
        } else {
            this.selectorIsSection = false;
        }
        if (this.selectorType == 8) {
            Theme.setMaskDrawableRad(this.selectorDrawable, this.selectorRadius, 0);
        } else if (this.topBottomSelectorRadius > 0 && getAdapter() != null) {
            Theme.setMaskDrawableRad(this.selectorDrawable, i == 0 ? this.topBottomSelectorRadius : 0, i == getAdapter().getItemCount() + (-2) ? this.topBottomSelectorRadius : 0);
        }
        this.selectorRect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom() - selectionBottomPadding);
        boolean zIsEnabled = view.isEnabled();
        if (this.isChildViewEnabled != zIsEnabled) {
            this.isChildViewEnabled = zIsEnabled;
        }
        if (z3) {
            this.selectorDrawable.setVisible(false, false);
            this.selectorDrawable.setState(StateSet.NOTHING);
        }
        setListSelectorColor(getSelectorColor(i));
        this.selectorDrawable.setBounds(this.selectorRect);
        if (z3 && getVisibility() == 0) {
            this.selectorDrawable.setVisible(true, false);
        }
        if (z) {
            this.selectorDrawable.setHotspot(f, f2);
        }
    }

    public void setAllowItemsInteractionDuringAnimation(boolean z) {
        this.allowItemsInteractionDuringAnimation = z;
    }

    public void hideSelector(boolean z) {
        View view = this.currentChildView;
        if (view != null) {
            onChildPressed(view, 0.0f, 0.0f, false);
            this.currentChildView = null;
            if (z) {
                removeSelection(view, null);
            }
        }
        if (z) {
            return;
        }
        this.selectorDrawable.setState(StateSet.NOTHING);
        this.selectorRect.setEmpty();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSelectorState() {
        Drawable drawable = this.selectorDrawable;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        if (this.currentChildView != null) {
            if (this.selectorDrawable.setState(getDrawableStateForSelector())) {
                invalidateDrawable(this.selectorDrawable);
            }
        } else if (this.removeHighlighSelectionRunnable == null) {
            this.selectorDrawable.setState(StateSet.NOTHING);
        }
    }

    private int[] getDrawableStateForSelector() {
        int[] iArrOnCreateDrawableState = onCreateDrawableState(1);
        iArrOnCreateDrawableState[iArrOnCreateDrawableState.length - 1] = 16842919;
        return iArrOnCreateDrawableState;
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void onChildAttachedToWindow(View view) {
        if (getAdapter() instanceof SelectionAdapter) {
            RecyclerView.ViewHolder viewHolderFindContainingViewHolder = findContainingViewHolder(view);
            if (viewHolderFindContainingViewHolder != null) {
                view.setEnabled(((SelectionAdapter) getAdapter()).isEnabled(viewHolderFindContainingViewHolder));
                if (this.accessibilityEnabled) {
                    view.setAccessibilityDelegate(this.accessibilityDelegate);
                }
            }
        } else {
            view.setEnabled(false);
            view.setAccessibilityDelegate(null);
        }
        super.onChildAttachedToWindow(view);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        updateSelectorState();
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return this.selectorDrawable == drawable || super.verifyDrawable(drawable);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.selectorDrawable;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        FastScroll fastScroll = this.fastScroll;
        if (fastScroll != null && fastScroll.getParent() != getParent()) {
            ViewGroup viewGroup = (ViewGroup) this.fastScroll.getParent();
            if (viewGroup != null) {
                viewGroup.removeView(this.fastScroll);
            }
            ((ViewGroup) getParent()).addView(this.fastScroll);
        }
        if (ExteraConfig.getInAppVibration()) {
            return;
        }
        VibratorUtils.disableHapticFeedback(getRootView());
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void setAdapter(RecyclerView.Adapter adapter) {
        RecyclerView.Adapter adapter2 = getAdapter();
        if (adapter2 != null) {
            adapter2.unregisterAdapterDataObserver(this.observer);
        }
        ArrayList<View> arrayList = this.headers;
        if (arrayList != null) {
            arrayList.clear();
            this.headersCache.clear();
        }
        this.currentFirst = -1;
        this.selectorPosition = -1;
        this.selectorView = null;
        this.selectorIsSection = false;
        this.selectorRect.setEmpty();
        this.pinnedHeader = null;
        if (adapter instanceof SectionsAdapter) {
            this.sectionsAdapter = (SectionsAdapter) adapter;
        } else {
            this.sectionsAdapter = null;
        }
        super.setAdapter(adapter);
        if (adapter != null) {
            adapter.registerAdapterDataObserver(this.observer);
        }
        checkIfEmpty(false);
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void stopScroll() {
        try {
            super.stopScroll();
        } catch (NullPointerException unused) {
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2, int i3) {
        if (this.longPressCalled) {
            OnItemLongClickListenerExtended onItemLongClickListenerExtended = this.onItemLongClickListenerExtended;
            if (onItemLongClickListenerExtended != null) {
                onItemLongClickListenerExtended.onMove(i, i2);
            }
            iArr[0] = i;
            iArr[1] = i2;
            return true;
        }
        return super.dispatchNestedPreScroll(i, i2, iArr, iArr2, i3);
    }

    private View getSectionHeaderView(int i, View view) {
        boolean z = view == null;
        View sectionHeaderView = this.sectionsAdapter.getSectionHeaderView(i, view);
        if (z) {
            ensurePinnedHeaderLayout(sectionHeaderView, false);
        }
        return sectionHeaderView;
    }

    private void ensurePinnedHeaderLayout(View view, boolean z) {
        if (view == null) {
            return;
        }
        if (view.isLayoutRequested() || z) {
            int i = this.sectionsType;
            if (i == 1) {
                ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                try {
                    view.measure(View.MeasureSpec.makeMeasureSpec(layoutParams.width, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(layoutParams.height, TLObject.FLAG_30));
                } catch (Exception e) {
                    FileLog.m898e(e);
                }
            } else if (i == 2) {
                try {
                    view.measure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(0, 0));
                } catch (Exception e2) {
                    FileLog.m898e(e2);
                }
            }
            view.layout(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight());
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        View view;
        super.onSizeChanged(i, i2, i3, i4);
        FrameLayout frameLayout = this.overlayContainer;
        if (frameLayout != null) {
            frameLayout.requestLayout();
        }
        int i5 = this.sectionsType;
        if (i5 == 1) {
            if (this.sectionsAdapter == null || this.headers.isEmpty()) {
                return;
            }
            for (int i6 = 0; i6 < this.headers.size(); i6++) {
                ensurePinnedHeaderLayout(this.headers.get(i6), true);
            }
            return;
        }
        if (i5 != 2 || this.sectionsAdapter == null || (view = this.pinnedHeader) == null) {
            return;
        }
        ensurePinnedHeaderLayout(view, true);
    }

    public Rect getSelectorRect() {
        return this.selectorRect;
    }

    public void setTranslateSelector(boolean z) {
        this.translateSelector = z ? -2 : -1;
    }

    public void setTranslateSelectorPosition(int i) {
        if (i <= 0) {
            i = -1;
        }
        this.translateSelector = i;
    }

    private void drawSelectors2(Canvas canvas) {
        Drawable drawable;
        Consumer<Canvas> consumer;
        View view;
        if (this.selectorRect.isEmpty() || (drawable = this.selectorDrawable) == null) {
            return;
        }
        int i = this.translateSelector;
        if ((i == -2 || i == this.selectorPosition) && this.selectorView != null) {
            this.selectorDrawable.setBounds(this.selectorView.getLeft(), this.selectorView.getTop(), this.selectorView.getRight(), this.selectorView.getBottom() - (getAdapter() instanceof SelectionAdapter ? ((SelectionAdapter) getAdapter()).getSelectionBottomPadding(this.selectorView) : 0));
        } else {
            drawable.setBounds(this.selectorRect);
        }
        canvas.save();
        int i2 = this.translateSelector;
        if ((i2 == -2 || i2 == this.selectorPosition) && (consumer = this.selectorTransformer) != null) {
            consumer.accept(canvas);
        }
        int i3 = this.translateSelector;
        if ((i3 == -2 || i3 == this.selectorPosition) && (view = this.selectorView) != null) {
            canvas.translate(view.getX() - this.selectorRect.left, this.selectorView.getY() - this.selectorRect.top);
            this.selectorDrawable.setAlpha((int) (this.selectorView.getAlpha() * 255.0f));
        }
        drawSelector(canvas);
        canvas.restore();
    }

    private void drawSelector(Canvas canvas) {
        if (hasSections()) {
            canvas.save();
            clipSelector(canvas, this.selectorView);
            this.selectorDrawable.draw(canvas);
            canvas.restore();
            return;
        }
        this.selectorDrawable.draw(canvas);
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j) {
        if (hasSections() && !this.ignoreClipChild && view != this.draggingChild) {
            canvas.save();
            clipChild(canvas, view);
            boolean zDrawChild = super.drawChild(canvas, view, j);
            canvas.restore();
            return zDrawChild;
        }
        return super.drawChild(canvas, view, j);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        View view;
        RecyclerItemsEnterAnimator recyclerItemsEnterAnimator = this.itemsEnterAnimator;
        if (recyclerItemsEnterAnimator != null) {
            recyclerItemsEnterAnimator.dispatchDraw();
        }
        if (this.drawSelection && this.drawSelectorBehind) {
            drawSelectors2(canvas);
        }
        super.dispatchDraw(canvas);
        if (this.drawSelection && !this.drawSelectorBehind) {
            drawSelectors2(canvas);
        }
        FrameLayout frameLayout = this.overlayContainer;
        if (frameLayout != null) {
            frameLayout.draw(canvas);
        }
        if (this.skipDrawSection) {
            return;
        }
        int i = this.sectionsType;
        if (i == 1) {
            if (this.sectionsAdapter == null || this.headers.isEmpty()) {
                return;
            }
            for (int i2 = 0; i2 < this.headers.size(); i2++) {
                View view2 = this.headers.get(i2);
                int iSave = canvas.save();
                canvas.translate(LocaleController.isRTL ? getWidth() - view2.getWidth() : 0.0f, ((Integer) view2.getTag()).intValue());
                canvas.clipRect(0, 0, getWidth(), view2.getMeasuredHeight());
                view2.draw(canvas);
                canvas.restoreToCount(iSave);
            }
            return;
        }
        if (i != 2 || this.sectionsAdapter == null || (view = this.pinnedHeader) == null || view.getAlpha() == 0.0f) {
            return;
        }
        int iSave2 = canvas.save();
        canvas.translate(LocaleController.isRTL ? getWidth() - this.pinnedHeader.getWidth() : 0.0f, ((Integer) this.pinnedHeader.getTag()).intValue());
        Drawable drawable = this.pinnedHeaderShadowDrawable;
        if (drawable != null) {
            drawable.setBounds(0, this.pinnedHeader.getMeasuredHeight(), getWidth(), this.pinnedHeader.getMeasuredHeight() + this.pinnedHeaderShadowDrawable.getIntrinsicHeight());
            this.pinnedHeaderShadowDrawable.setAlpha((int) (this.pinnedHeaderShadowAlpha * 255.0f));
            this.pinnedHeaderShadowDrawable.draw(canvas);
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long jMin = Math.min(20L, jElapsedRealtime - this.lastAlphaAnimationTime);
            this.lastAlphaAnimationTime = jElapsedRealtime;
            float f = this.pinnedHeaderShadowAlpha;
            float f2 = this.pinnedHeaderShadowTargetAlpha;
            if (f < f2) {
                float f3 = f + (jMin / 180.0f);
                this.pinnedHeaderShadowAlpha = f3;
                if (f3 > f2) {
                    this.pinnedHeaderShadowAlpha = f2;
                }
                invalidate();
            } else if (f > f2) {
                float f4 = f - (jMin / 180.0f);
                this.pinnedHeaderShadowAlpha = f4;
                if (f4 < f2) {
                    this.pinnedHeaderShadowAlpha = f2;
                }
                invalidate();
            }
        }
        canvas.clipRect(0, 0, getWidth(), this.pinnedHeader.getMeasuredHeight());
        this.pinnedHeader.draw(canvas);
        canvas.restoreToCount(iSave2);
    }

    public void setSkipDrawSection(boolean z) {
        this.skipDrawSection = z;
    }

    public void relayoutPinnedHeader() {
        View view = this.pinnedHeader;
        if (view != null) {
            view.measure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0));
            View view2 = this.pinnedHeader;
            view2.layout(0, 0, view2.getMeasuredWidth(), this.pinnedHeader.getMeasuredHeight());
            invalidate();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.selectorPosition = -1;
        this.selectorView = null;
        this.selectorIsSection = false;
        this.selectorRect.setEmpty();
        RecyclerItemsEnterAnimator recyclerItemsEnterAnimator = this.itemsEnterAnimator;
        if (recyclerItemsEnterAnimator != null) {
            recyclerItemsEnterAnimator.onDetached();
        }
        if (this.stoppedAllHeavyOperations) {
            this.stoppedAllHeavyOperations = false;
            NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.startAllHeavyOperations, 512);
        }
    }

    public void addOverlayView(View view, FrameLayout.LayoutParams layoutParams) {
        if (this.overlayContainer == null) {
            this.overlayContainer = new FrameLayout(getContext()) { // from class: org.telegram.ui.Components.RecyclerListView.5
                @Override // android.view.View, android.view.ViewParent
                public void requestLayout() {
                    super.requestLayout();
                    try {
                        measure(View.MeasureSpec.makeMeasureSpec(RecyclerListView.this.getMeasuredWidth(), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(RecyclerListView.this.getMeasuredHeight(), TLObject.FLAG_30));
                        layout(0, 0, RecyclerListView.this.overlayContainer.getMeasuredWidth(), RecyclerListView.this.overlayContainer.getMeasuredHeight());
                    } catch (Exception unused) {
                    }
                }
            };
        }
        this.overlayContainer.addView(view, layoutParams);
    }

    public ArrayList<View> getHeaders() {
        return this.headers;
    }

    public ArrayList<View> getHeadersCache() {
        return this.headersCache;
    }

    public View getPinnedHeader() {
        return this.pinnedHeader;
    }

    public boolean isFastScrollAnimationRunning() {
        return this.fastScrollAnimationRunning;
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.fastScrollAnimationRunning || this.ignoreLayout) {
            return;
        }
        super.requestLayout();
    }

    public void setPadding(int i, int i2, int i3, int i4, boolean z) {
        if (z) {
            setPaddingWithoutRequestLayout(i, i2, i3, i4);
        } else {
            setPadding(i, i2, i3, i4);
        }
    }

    public void setPaddingWithoutRequestLayout(int i, int i2, int i3, int i4) {
        if (getPaddingLeft() == i && getPaddingTop() == i2 && getPaddingRight() == i3 && getPaddingBottom() == i4) {
            return;
        }
        this.ignoreLayout = true;
        setPadding(i, i2, i3, i4);
        this.ignoreLayout = false;
    }

    private void requestDisallowInterceptTouchEvent(View view, boolean z) {
        ViewParent parent;
        if (view == null || (parent = view.getParent()) == null) {
            return;
        }
        parent.requestDisallowInterceptTouchEvent(z);
        ViewParent touchParent = getTouchParent();
        if (touchParent == null) {
            return;
        }
        touchParent.requestDisallowInterceptTouchEvent(z);
    }

    public void setAnimateEmptyView(boolean z, int i) {
        this.animateEmptyView = z;
        this.emptyViewAnimationType = i;
    }

    /* JADX INFO: loaded from: classes7.dex */
    public static class FoucsableOnTouchListener implements View.OnTouchListener {
        private boolean onFocus;

        /* JADX INFO: renamed from: x */
        private float f1003x;

        /* JADX INFO: renamed from: y */
        private float f1004y;

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            ViewParent parent = view.getParent();
            if (parent == null) {
                return false;
            }
            if (motionEvent.getAction() == 0) {
                this.f1003x = motionEvent.getX();
                this.f1004y = motionEvent.getY();
                this.onFocus = true;
                parent.requestDisallowInterceptTouchEvent(true);
            }
            if (motionEvent.getAction() == 2) {
                float x = this.f1003x - motionEvent.getX();
                float y = this.f1004y - motionEvent.getY();
                float scaledTouchSlop = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
                if (this.onFocus && Math.sqrt((x * x) + (y * y)) > scaledTouchSlop) {
                    this.onFocus = false;
                    parent.requestDisallowInterceptTouchEvent(false);
                }
            } else if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
                this.onFocus = false;
                parent.requestDisallowInterceptTouchEvent(false);
            }
            return false;
        }
    }

    @Override // android.view.View
    public void setTranslationY(float f) {
        super.setTranslationY(f);
        FastScroll fastScroll = this.fastScroll;
        if (fastScroll != null) {
            fastScroll.setTranslationY(f);
        }
    }

    public void startMultiselect(int i, boolean z, onMultiSelectionChanged onmultiselectionchanged) {
        if (!this.multiSelectionGesture) {
            this.listPaddings = new int[2];
            this.selectedPositions = new HashSet<>();
            requestDisallowInterceptTouchEvent(this, true);
            this.multiSelectionListener = onmultiselectionchanged;
            this.multiSelectionGesture = true;
            this.currentSelectedPosition = i;
            this.startSelectionFrom = i;
        }
        this.useRelativePositions = z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        FastScroll fastScroll = this.fastScroll;
        if (fastScroll != null && fastScroll.pressed) {
            return false;
        }
        if (this.multiSelectionGesture && motionEvent.getAction() != 0 && motionEvent.getAction() != 1 && motionEvent.getAction() != 3) {
            float rawY = motionEvent.getRawY();
            if (this.lastX == Float.MAX_VALUE && this.lastY == Float.MAX_VALUE) {
                this.lastX = motionEvent.getRawX();
                this.lastY = rawY;
            }
            int iMax = Math.max(this.touchSlop, this.multiSelectionListener.getStartDragDistance());
            if (!this.multiSelectionGestureStarted && Math.abs(rawY - this.lastY) > iMax) {
                this.multiSelectionGestureStarted = true;
                requestDisallowInterceptTouchEvent(this, true);
            }
            if (this.multiSelectionGestureStarted) {
                chekMultiselect(motionEvent.getX(), motionEvent.getY());
                this.multiSelectionListener.getPaddings(this.listPaddings);
                if (motionEvent.getY() > (getMeasuredHeight() - AndroidUtilities.dp(56.0f)) - this.listPaddings[1] && (this.currentSelectedPosition >= this.startSelectionFrom || !this.multiSelectionListener.limitReached())) {
                    startMultiselectScroll(false);
                } else if (motionEvent.getY() < AndroidUtilities.dp(56.0f) + this.listPaddings[0] && (this.currentSelectedPosition <= this.startSelectionFrom || !this.multiSelectionListener.limitReached())) {
                    startMultiselectScroll(true);
                } else {
                    cancelMultiselectScroll();
                }
            }
            return true;
        }
        this.lastX = Float.MAX_VALUE;
        this.lastY = Float.MAX_VALUE;
        this.multiSelectionGesture = false;
        this.multiSelectionGestureStarted = false;
        requestDisallowInterceptTouchEvent(this, false);
        cancelMultiselectScroll();
        return super.onTouchEvent(motionEvent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean chekMultiselect(float f, float f2) {
        int measuredHeight = getMeasuredHeight();
        int[] iArr = this.listPaddings;
        float fMin = Math.min(measuredHeight - iArr[1], Math.max(f2, iArr[0]));
        float fMin2 = Math.min(getMeasuredWidth(), Math.max(f, 0.0f));
        int i = 0;
        while (true) {
            if (i >= getChildCount()) {
                break;
            }
            this.multiSelectionListener.getPaddings(this.listPaddings);
            if (!this.useRelativePositions) {
                View childAt = getChildAt(i);
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(childAt.getLeft(), childAt.getTop(), childAt.getLeft() + childAt.getMeasuredWidth(), childAt.getTop() + childAt.getMeasuredHeight());
                if (rectF.contains(fMin2, fMin)) {
                    int childLayoutPosition = getChildLayoutPosition(childAt);
                    int i2 = this.currentSelectedPosition;
                    if (i2 != childLayoutPosition) {
                        int i3 = this.startSelectionFrom;
                        boolean z = i2 > i3 || childLayoutPosition > i3;
                        childLayoutPosition = this.multiSelectionListener.checkPosition(childLayoutPosition, z);
                        int i4 = this.currentSelectedPosition;
                        if (z) {
                            if (childLayoutPosition <= i4) {
                                while (i4 > childLayoutPosition) {
                                    if (i4 != this.startSelectionFrom && this.multiSelectionListener.canSelect(i4)) {
                                        this.multiSelectionListener.onSelectionChanged(i4, false, fMin2, fMin);
                                    }
                                    i4--;
                                }
                            } else if (!this.multiSelectionListener.limitReached()) {
                                for (int i5 = this.currentSelectedPosition + 1; i5 <= childLayoutPosition; i5++) {
                                    if (i5 != this.startSelectionFrom && this.multiSelectionListener.canSelect(i5)) {
                                        this.multiSelectionListener.onSelectionChanged(i5, true, fMin2, fMin);
                                    }
                                }
                            }
                        } else if (childLayoutPosition > i4) {
                            while (i4 < childLayoutPosition) {
                                if (i4 != this.startSelectionFrom && this.multiSelectionListener.canSelect(i4)) {
                                    this.multiSelectionListener.onSelectionChanged(i4, false, fMin2, fMin);
                                }
                                i4++;
                            }
                        } else if (!this.multiSelectionListener.limitReached()) {
                            for (int i6 = this.currentSelectedPosition - 1; i6 >= childLayoutPosition; i6--) {
                                if (i6 != this.startSelectionFrom && this.multiSelectionListener.canSelect(i6)) {
                                    this.multiSelectionListener.onSelectionChanged(i6, true, fMin2, fMin);
                                }
                            }
                        }
                    }
                    if (!this.multiSelectionListener.limitReached()) {
                        this.currentSelectedPosition = childLayoutPosition;
                    }
                }
            }
            i++;
        }
        return true;
    }

    private void cancelMultiselectScroll() {
        this.multiselectScrollRunning = false;
        AndroidUtilities.cancelRunOnUIThread(this.scroller);
    }

    private void startMultiselectScroll(boolean z) {
        this.multiselectScrollToTop = z;
        if (this.multiselectScrollRunning) {
            return;
        }
        this.multiselectScrollRunning = true;
        AndroidUtilities.cancelRunOnUIThread(this.scroller);
        AndroidUtilities.runOnUIThread(this.scroller);
    }

    public boolean isMultiselect() {
        return this.multiSelectionGesture;
    }

    public int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }

    public Drawable getThemedDrawable(String str) {
        Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
        Drawable drawable = resourcesProvider != null ? resourcesProvider.getDrawable(str) : null;
        return drawable != null ? drawable : Theme.getThemeDrawable(str);
    }

    public Paint getThemedPaint(String str) {
        Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
        Paint paint = resourcesProvider != null ? resourcesProvider.getPaint(str) : null;
        return paint != null ? paint : Theme.getThemePaint(str);
    }

    public void setItemsEnterAnimator(RecyclerItemsEnterAnimator recyclerItemsEnterAnimator) {
        this.itemsEnterAnimator = recyclerItemsEnterAnimator;
    }

    public void setAccessibilityEnabled(boolean z) {
        this.accessibilityEnabled = z;
    }

    public void setAllowStopHeaveOperations(boolean z) {
        this.allowStopHeaveOperations = z;
    }

    public void setDrawSelection(boolean z) {
        this.drawSelection = z;
    }

    public boolean hasActiveEdgeEffects() {
        return this.edgeEffectTrackerFactory.hasVisibleEdges();
    }

    public void addEdgeEffectListener(final Runnable runnable) {
        addEdgeEffectListener(new EdgeEffectTrackerFactory.OnEdgeEffectListener() { // from class: org.telegram.ui.Components.RecyclerListView$$ExternalSyntheticLambda2
            @Override // org.telegram.ui.Components.EdgeEffectTrackerFactory.OnEdgeEffectListener
            public final void onEdgeEffectVisibilityChange(int i, boolean z) {
                runnable.run();
            }
        });
    }

    public void addEdgeEffectListener(EdgeEffectTrackerFactory.OnEdgeEffectListener onEdgeEffectListener) {
        this.edgeEffectTrackerFactory.addEdgeEffectListener(onEdgeEffectListener);
    }

    public void capture(Canvas canvas, RectF rectF) {
        long jUptimeMillis = SystemClock.uptimeMillis();
        if (hasActiveEdgeEffects() && getOverScrollMode() != 2) {
            if (this.selfTransformationsMatrix == null) {
                this.selfTransformationsMatrix = new Matrix();
            }
            canvas.save();
            if (getMatrix().invert(this.selfTransformationsMatrix)) {
                canvas.concat(this.selfTransformationsMatrix);
            }
            canvas.translate(-getX(), -getY());
            try {
                super.drawChild(canvas, this, jUptimeMillis);
            } catch (Throwable th) {
                FileLog.m898e(th);
            }
            canvas.restore();
            boolean z = BuildVars.DEBUG_VERSION;
            return;
        }
        int itemDecorationCount = getItemDecorationCount();
        for (int i = 0; i < itemDecorationCount; i++) {
            Object itemDecorationAt = getItemDecorationAt(i);
            if ((itemDecorationAt instanceof IBlur3Capture) && (itemDecorationAt != this.sectionsItemDecoration || this.canCaptureSectionsDecorator)) {
                ((IBlur3Capture) itemDecorationAt).capture(canvas, rectF);
            }
        }
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            float x = childAt.getX();
            float y = childAt.getY();
            if (rectF.intersects(x, y, childAt.getWidth() + x, childAt.getHeight() + y)) {
                this.ignoreClipChild = true;
                drawChild(canvas, childAt, jUptimeMillis);
                this.ignoreClipChild = false;
            }
        }
    }

    @Override // org.telegram.ui.Components.blur3.capture.IBlur3Capture
    public void captureCalculateHash(IBlur3Hash iBlur3Hash, RectF rectF) {
        if (Build.VERSION.SDK_INT < 29) {
            iBlur3Hash.unsupported();
            return;
        }
        if (hasActiveEdgeEffects() && getOverScrollMode() != 2) {
            iBlur3Hash.unsupported();
            return;
        }
        int itemDecorationCount = getItemDecorationCount();
        for (int i = 0; i < itemDecorationCount; i++) {
            Object itemDecorationAt = getItemDecorationAt(i);
            if ((itemDecorationAt instanceof IBlur3Capture) && (itemDecorationAt != this.sectionsItemDecoration || this.canCaptureSectionsDecorator)) {
                ((IBlur3Capture) itemDecorationAt).captureCalculateHash(iBlur3Hash, rectF);
            }
        }
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            float x = childAt.getX();
            float y = childAt.getY();
            if (rectF.intersects(x, y, childAt.getWidth() + x, childAt.getHeight() + y)) {
                iBlur3Hash.add(childAt);
            }
        }
    }

    public void setCaptureSectionsDecoratorAllowed(boolean z) {
        this.canCaptureSectionsDecorator = z;
    }

    public View findViewByPosition(int i) {
        if (i == -1) {
            return null;
        }
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            int childAdapterPosition = getChildAdapterPosition(childAt);
            if (childAdapterPosition != -1 && childAdapterPosition == i) {
                return childAt;
            }
        }
        return null;
    }

    public boolean hasSections() {
        return this.sectionsItemDecoration != null;
    }

    public void setDraggingChild(View view) {
        this.draggingChild = view;
    }

    public void setSegmentedSectionsEnabled(boolean z) {
        if (this.segmentedSectionsEnabled == z) {
            return;
        }
        this.segmentedSectionsEnabled = z;
        if (this.sectionsItemDecoration != null) {
            invalidateItemDecorations();
            invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean useSegmentedSections() {
        return this.segmentedSectionsEnabled && ExteraConfig.getDividerStyle() == DividerStyle.SEGMENTS;
    }

    public static boolean isRoundSectionView(View view) {
        return view != null && Boolean.TRUE.equals(view.getTag(TAG_ROUND_SECTION));
    }

    public void disableSections() {
        setSelectorDrawableColor(getThemedColor(Theme.key_listSelector));
        this.isViewTypeSection = null;
        this.sectionRadius = 0.0f;
        this.sectionRadiusTop = null;
        this.sectionRadiusBottom = null;
        this.drawSectionBackground = null;
        ListSectionsDecoration listSectionsDecoration = this.sectionsItemDecoration;
        if (listSectionsDecoration != null) {
            removeItemDecoration(listSectionsDecoration);
            this.sectionsItemDecoration = null;
        }
    }

    public void setSections() {
        setSections(AndroidUtilities.dp(12.0f), AndroidUtilities.dp(ExteraConfig.getSectionRadiusDp()), false);
    }

    public void setSections(boolean z) {
        setSections(AndroidUtilities.dp(12.0f), AndroidUtilities.dp(ExteraConfig.getSectionRadiusDp()), z);
    }

    public void setSections(int i, float f, boolean z) {
        setSections(new Utilities.CallbackReturn() { // from class: org.telegram.ui.Components.RecyclerListView$$ExternalSyntheticLambda0
            @Override // org.telegram.messenger.Utilities.CallbackReturn
            public final Object run(Object obj) {
                View view = (View) obj;
                return Boolean.valueOf(((view instanceof TextInfoPrivacyCell) || (view instanceof ShadowSectionCell) || (view instanceof FiltersSetupActivity.HintInnerCell) || (view instanceof GraySectionCell) || (view instanceof CollapseTextCell) || (ExteraConfig.getSectionsSeparatedHeaders() && (view instanceof HeaderCell)) || Objects.equals(view.getTag(), -33024)) ? false : true);
            }
        }, i, f, new RecyclerListView$$ExternalSyntheticLambda1(this), z);
    }

    private static Pair<Utilities.CallbackReturn<View, Boolean>, Utilities.CallbackReturn<Integer, Boolean>> cachedIsViewTypeShadow(final RecyclerListView recyclerListView, final Utilities.CallbackReturn<View, Boolean> callbackReturn) {
        final SparseIntArray sparseIntArray = new SparseIntArray();
        return new Pair<>(new Utilities.CallbackReturn() { // from class: org.telegram.ui.Components.RecyclerListView$$ExternalSyntheticLambda7
            @Override // org.telegram.messenger.Utilities.CallbackReturn
            public final Object run(Object obj) {
                return RecyclerListView.$r8$lambda$2wEbk7S82O_026x6oum7LynZ9ss(this.f$0, callbackReturn, sparseIntArray, (View) obj);
            }
        }, new Utilities.CallbackReturn() { // from class: org.telegram.ui.Components.RecyclerListView$$ExternalSyntheticLambda8
            @Override // org.telegram.messenger.Utilities.CallbackReturn
            public final Object run(Object obj) {
                return RecyclerListView.$r8$lambda$uLqj5sOj2BJSCnoGu0P0HShlnBQ(sparseIntArray, (Integer) obj);
            }
        });
    }

    public static /* synthetic */ Boolean $r8$lambda$2wEbk7S82O_026x6oum7LynZ9ss(RecyclerListView recyclerListView, Utilities.CallbackReturn callbackReturn, SparseIntArray sparseIntArray, View view) {
        try {
            if (view.getParent() != recyclerListView) {
                return Boolean.FALSE;
            }
            Boolean bool = (Boolean) callbackReturn.run(view);
            boolean zBooleanValue = bool.booleanValue();
            RecyclerView.ViewHolder childViewHolder = recyclerListView.getChildViewHolder(view);
            if (childViewHolder != null) {
                sparseIntArray.put(childViewHolder.getItemViewType(), zBooleanValue ? 1 : 0);
            }
            return bool;
        } catch (Exception unused) {
            return Boolean.FALSE;
        }
    }

    public static /* synthetic */ Boolean $r8$lambda$uLqj5sOj2BJSCnoGu0P0HShlnBQ(SparseIntArray sparseIntArray, Integer num) {
        int i = sparseIntArray.get(num.intValue(), -1);
        if (i == -1) {
            return Boolean.TRUE;
        }
        return Boolean.valueOf(i == 1);
    }

    public void setSections(Utilities.CallbackReturn<View, Boolean> callbackReturn, int i, float f, Utilities.Callback5<Canvas, RectF, Float, Float, Float> callback5, boolean z) {
        Pair<Utilities.CallbackReturn<View, Boolean>, Utilities.CallbackReturn<Integer, Boolean>> pairCachedIsViewTypeShadow = cachedIsViewTypeShadow(this, callbackReturn);
        setSections((Utilities.CallbackReturn) pairCachedIsViewTypeShadow.first, (Utilities.CallbackReturn) pairCachedIsViewTypeShadow.second, i, f, callback5, z);
    }

    public void setSections(Utilities.CallbackReturn<View, Boolean> callbackReturn, Utilities.CallbackReturn<Integer, Boolean> callbackReturn2, int i, float f, Utilities.Callback5<Canvas, RectF, Float, Float, Float> callback5, boolean z) {
        setSelectorDrawableColor(getThemedColor(Theme.key_settings_listSelector));
        this.isViewTypeSection = callbackReturn2;
        this.sectionRadius = f;
        this.sectionRadiusTop = new float[]{f, f, f, f, 0.0f, 0.0f, 0.0f, 0.0f};
        this.sectionRadiusBottom = new float[]{0.0f, 0.0f, 0.0f, 0.0f, f, f, f, f};
        this.drawSectionBackground = callback5;
        RecyclerView.ItemDecoration itemDecoration = this.sectionsItemDecoration;
        if (itemDecoration != null) {
            removeItemDecoration(itemDecoration);
        }
        ListSectionsDecoration listSectionsDecoration = new ListSectionsDecoration(this, callbackReturn, i, z);
        this.sectionsItemDecoration = listSectionsDecoration;
        addItemDecoration(listSectionsDecoration);
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void setItemAnimator(RecyclerView.ItemAnimator itemAnimator) {
        super.setItemAnimator(itemAnimator);
    }

    /* JADX INFO: loaded from: classes7.dex */
    public static class ListSectionsDecoration extends RecyclerView.ItemDecoration implements IBlur3Capture {
        private boolean enableTopPadding;
        public final Utilities.CallbackReturn<View, Boolean> isSectionItem;
        private int padding;
        public final RecyclerListView parent;

        public ListSectionsDecoration(RecyclerListView recyclerListView, Utilities.CallbackReturn<View, Boolean> callbackReturn, int i, boolean z) {
            this.parent = recyclerListView;
            this.isSectionItem = callbackReturn;
            this.padding = i;
            this.enableTopPadding = z;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
            int adapterPosition;
            if (this.isSectionItem.run(view).booleanValue()) {
                int i = this.padding;
                rect.right = i;
                rect.left = i;
                RecyclerView.ViewHolder childViewHolder = recyclerView.getChildViewHolder(view);
                RecyclerView.Adapter adapter = recyclerView.getAdapter();
                if (childViewHolder == null || adapter == null || (adapterPosition = childViewHolder.getAdapterPosition()) == -1) {
                    return;
                }
                boolean z = adapterPosition == 0;
                boolean z2 = adapterPosition == adapter.getItemCount() - 1;
                if (z) {
                    rect.top = this.enableTopPadding ? this.padding : AndroidUtilities.dp(4.0f);
                }
                if (this.parent.useSegmentedSections() && isSectionPosition(adapter, adapterPosition - 1)) {
                    rect.top += AndroidUtilities.dp(2.0f);
                }
                if (z2) {
                    rect.bottom = this.padding;
                }
            }
        }

        private boolean isSectionPosition(RecyclerView.Adapter adapter, int i) {
            if (adapter == null || this.parent.isViewTypeSection == null || i < 0 || i >= adapter.getItemCount()) {
                return false;
            }
            return ((Boolean) this.parent.isViewTypeSection.run(Integer.valueOf(adapter.getItemViewType(i)))).booleanValue();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
            if (recyclerView instanceof RecyclerListView) {
                ((RecyclerListView) recyclerView).drawSectionsBackgrounds(canvas);
            }
        }

        @Override // org.telegram.ui.Components.blur3.capture.IBlur3Capture
        public void capture(Canvas canvas, RectF rectF) {
            canvas.save();
            canvas.clipRect(rectF);
            this.parent.drawSectionsBackgrounds(canvas);
            canvas.restore();
        }
    }

    private void drawSectionBackground(Canvas canvas, View view, View view2, boolean z, boolean z2) {
        if (view == null || view2 == null) {
            return;
        }
        float bottomInfoMargin = view2 instanceof JoinToSendSettingsView ? ((JoinToSendSettingsView) view2).getBottomInfoMargin() : 0.0f;
        RectF rectF = AndroidUtilities.rectTmp;
        rectF.set(view.getLeft(), Math.max(this.applyPaddingToSections ? getPaddingTop() : -this.sectionRadius, top(view) - (z ? this.sectionRadius : 0.0f)), view.getRight(), Math.min(getHeight() - (this.applyPaddingToSections ? getPaddingBottom() : -this.sectionRadius), (bottom(view2) + (z2 ? this.sectionRadius : 0.0f)) - bottomInfoMargin));
        if (rectF.bottom < rectF.top) {
            return;
        }
        float singleSectionRadius = (view != view2 || z || z2 || !isRoundSectionView(view)) ? this.sectionRadius : getSingleSectionRadius(rectF);
        this.drawSectionBackground.run(canvas, rectF, Float.valueOf(singleSectionRadius), Float.valueOf(singleSectionRadius), Float.valueOf(view.getAlpha()));
    }

    private float getSingleSectionRadius(RectF rectF) {
        return rectF.height() / 2.0f;
    }

    private boolean hasAbove(View view, int i) {
        int childAdapterPosition;
        if (view == null || i > 0 || getAdapter() == null || this.isViewTypeSection == null || (childAdapterPosition = getChildAdapterPosition(view)) == -1 || childAdapterPosition == 0) {
            return false;
        }
        return this.isViewTypeSection.run(Integer.valueOf(getAdapter().getItemViewType(childAdapterPosition - 1))).booleanValue();
    }

    private boolean hasBelow(View view, int i) {
        int childAdapterPosition;
        if (view == null || i < getChildCount() - 1 || getAdapter() == null || this.isViewTypeSection == null || (childAdapterPosition = getChildAdapterPosition(view)) == -1 || childAdapterPosition == getAdapter().getItemCount() - 1) {
            return false;
        }
        return this.isViewTypeSection.run(Integer.valueOf(getAdapter().getItemViewType(childAdapterPosition + 1))).booleanValue();
    }

    private boolean hasSegmentedSectionNeighbor(View view, int i) {
        int childAdapterPosition;
        int i2;
        if (view == null || getAdapter() == null || this.isViewTypeSection == null || (childAdapterPosition = getChildAdapterPosition(view)) == -1 || (i2 = childAdapterPosition + i) < 0 || i2 >= getAdapter().getItemCount()) {
            return false;
        }
        return this.isViewTypeSection.run(Integer.valueOf(getAdapter().getItemViewType(i2))).booleanValue();
    }

    private boolean setSegmentedSectionRect(View view, RectF rectF) {
        if (view != null && this.sectionsItemDecoration != null) {
            rectF.set(view.getX(), Math.max(this.applyPaddingToSections ? getPaddingTop() : -this.sectionRadius, top(view)), view.getX() + view.getWidth(), Math.min(getHeight() - (this.applyPaddingToSections ? getPaddingBottom() : -this.sectionRadius), bottom(view) - (view instanceof JoinToSendSettingsView ? ((JoinToSendSettingsView) view).getBottomInfoMargin() : 0.0f)));
            if (rectF.bottom >= rectF.top) {
                return true;
            }
        }
        return false;
    }

    private float getSegmentedSectionTopRadius(View view, RectF rectF) {
        boolean zHasSegmentedSectionNeighbor = hasSegmentedSectionNeighbor(view, -1);
        boolean zHasSegmentedSectionNeighbor2 = hasSegmentedSectionNeighbor(view, 1);
        if (!zHasSegmentedSectionNeighbor && !zHasSegmentedSectionNeighbor2 && isRoundSectionView(view)) {
            return getSingleSectionRadius(rectF);
        }
        float f = this.sectionRadius;
        return zHasSegmentedSectionNeighbor ? Math.min(f, AndroidUtilities.dp(4.0f)) : f;
    }

    private float getSegmentedSectionBottomRadius(View view, RectF rectF) {
        boolean zHasSegmentedSectionNeighbor = hasSegmentedSectionNeighbor(view, -1);
        boolean zHasSegmentedSectionNeighbor2 = hasSegmentedSectionNeighbor(view, 1);
        if (!zHasSegmentedSectionNeighbor && !zHasSegmentedSectionNeighbor2 && isRoundSectionView(view)) {
            return getSingleSectionRadius(rectF);
        }
        float f = this.sectionRadius;
        return zHasSegmentedSectionNeighbor2 ? Math.min(f, AndroidUtilities.dp(4.0f)) : f;
    }

    private void drawSegmentedSectionBackground(Canvas canvas, View view) {
        if (view == null || this.drawSectionBackground == null) {
            return;
        }
        RectF rectF = AndroidUtilities.rectTmp;
        if (setSegmentedSectionRect(view, rectF)) {
            this.drawSectionBackground.run(canvas, rectF, Float.valueOf(getSegmentedSectionTopRadius(view, rectF)), Float.valueOf(getSegmentedSectionBottomRadius(view, rectF)), Float.valueOf(view.getAlpha()));
        }
    }

    private void drawSegmentedSectionsBackgrounds(Canvas canvas) {
        if (this.sectionsItemDecoration == null) {
            return;
        }
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt != this.draggingChild && childAt != this.emptyView && childAt.getVisibility() == 0 && childAt.getAlpha() > 0.0f && this.sectionsItemDecoration.isSectionItem.run(childAt).booleanValue() && !isInsideForcedSection(getChildAdapterPosition(childAt))) {
                drawSegmentedSectionBackground(canvas, childAt);
            }
        }
    }

    public boolean isInsideForcedSection(int i) {
        if (this.forcedSections != null && i >= 0) {
            for (int i2 = 0; i2 < this.forcedSections.size(); i2++) {
                long jLongValue = this.forcedSections.get(i2).longValue();
                int iUnpackA = AndroidUtilities.unpackA(jLongValue);
                int iUnpackB = AndroidUtilities.unpackB(jLongValue);
                if (i >= iUnpackA && i <= iUnpackB) {
                    return true;
                }
            }
        }
        return false;
    }

    private boolean hasSectionChildAt(View view, int i, boolean z) {
        View childAt;
        RecyclerView.ViewHolder childViewHolder;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            if (i2 != i && (childAt = getChildAt(i2)) != this.draggingChild && childAt != this.emptyView && childAt.getVisibility() == 0 && childAt.getAlpha() > 0.0f && this.sectionsItemDecoration.isSectionItem.run(childAt).booleanValue() && (childViewHolder = getChildViewHolder(childAt)) != null && childViewHolder.isRemoved() == z && Math.abs(childAt.getY() - view.getY()) < AndroidUtilities.dp(2.0f)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:123:0x0274 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x019f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void drawSectionsBackgrounds(final Canvas canvas) {
        Canvas canvas2;
        if (this.drawSectionBackground == null) {
            return;
        }
        if (isAnimating()) {
            if (this.sections == null) {
                this.sections = new ArrayList<>();
            }
            if (this.removedSections == null) {
                this.removedSections = new ArrayList<>();
            }
            for (int i = 0; i < getChildCount(); i++) {
                View childAt = getChildAt(i);
                if (childAt != this.draggingChild && childAt != this.emptyView && childAt.getVisibility() == 0 && childAt.getAlpha() > 0.0f && this.sectionsItemDecoration.isSectionItem.run(childAt).booleanValue()) {
                    float pVar = top(childAt);
                    float fBottom = bottom(childAt);
                    RecyclerView.ViewHolder childViewHolder = getChildViewHolder(childAt);
                    if (childViewHolder.isRemoved() && childAt.getAlpha() < 1.0f) {
                        if (!hasSectionChildAt(childAt, i, false)) {
                            ArrayList<SectionsDrawer.Section> arrayList = this.removedSections;
                            if (!useSegmentedSections()) {
                                pVar -= this.sectionRadius;
                            }
                            arrayList.add(new SectionsDrawer.Section(pVar, fBottom, childAt.getAlpha(), isRoundSectionView(childAt)));
                        }
                    } else if (!isInsideForcedSection(childViewHolder.getAdapterPosition())) {
                        float alpha = childAt.getAlpha();
                        if (!childViewHolder.isRemoved() && alpha < 0.99f && hasSectionChildAt(childAt, i, true)) {
                            alpha = 1.0f;
                        }
                        this.sections.add(new SectionsDrawer.Section(pVar, fBottom, alpha, isRoundSectionView(childAt)));
                    }
                }
            }
            if (!this.removedSections.isEmpty()) {
                SectionsDrawer.draw(this.removedSections, this.sectionRadius, new Utilities.Callback5() { // from class: org.telegram.ui.Components.RecyclerListView$$ExternalSyntheticLambda5
                    @Override // org.telegram.messenger.Utilities.Callback5
                    public final void run(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
                        this.f$0.lambda$drawSectionsBackgrounds$6(canvas, (Float) obj, (Float) obj2, (Float) obj3, (Float) obj4, (Float) obj5);
                    }
                }, useSegmentedSections());
                this.removedSections.clear();
            }
            SectionsDrawer.draw(this.sections, this.sectionRadius, new Utilities.Callback5() { // from class: org.telegram.ui.Components.RecyclerListView$$ExternalSyntheticLambda6
                @Override // org.telegram.messenger.Utilities.Callback5
                public final void run(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
                    this.f$0.lambda$drawSectionsBackgrounds$7(canvas, (Float) obj, (Float) obj2, (Float) obj3, (Float) obj4, (Float) obj5);
                }
            }, useSegmentedSections());
            this.sections.clear();
        } else if (useSegmentedSections()) {
            drawSegmentedSectionsBackgrounds(canvas);
        } else {
            View view = null;
            View view2 = null;
            int i2 = -1;
            int i3 = -1;
            for (int i4 = 0; i4 < getChildCount(); i4++) {
                View childAt2 = getChildAt(i4);
                if (childAt2 == this.draggingChild || childAt2 == this.emptyView || childAt2.getVisibility() != 0 || childAt2.getAlpha() <= 0.0f || !this.sectionsItemDecoration.isSectionItem.run(childAt2).booleanValue() || isInsideForcedSection(getChildAdapterPosition(childAt2))) {
                    drawSectionBackground(canvas, view, view2, hasAbove(view, i2), hasBelow(view2, i3));
                    view = null;
                    view2 = null;
                    i2 = -1;
                    i3 = -1;
                } else {
                    if (view != null && Math.abs(view2.getAlpha() - childAt2.getAlpha()) > 0.1f) {
                        drawSectionBackground(canvas, view, view2, hasAbove(view, i2), hasBelow(view2, i3));
                        view = null;
                        i2 = -1;
                    }
                    if (view == null) {
                        i2 = i4;
                        view = childAt2;
                    }
                    i3 = i4;
                    view2 = childAt2;
                }
            }
            boolean zHasAbove = hasAbove(view, i2);
            boolean zHasBelow = hasBelow(view2, i3);
            canvas2 = canvas;
            drawSectionBackground(canvas2, view, view2, zHasAbove, zHasBelow);
            if (this.forcedSections == null) {
                for (int i5 = 0; i5 < this.forcedSections.size(); i5++) {
                    long jLongValue = this.forcedSections.get(i5).longValue();
                    int iUnpackA = AndroidUtilities.unpackA(jLongValue);
                    int iUnpackB = AndroidUtilities.unpackB(jLongValue);
                    float height = getHeight();
                    float f = this.sectionRadius;
                    float fMin = height + f;
                    float fMax = -f;
                    for (int i6 = 0; i6 < getChildCount(); i6++) {
                        View childAt3 = getChildAt(i6);
                        int childAdapterPosition = getChildAdapterPosition(childAt3);
                        if (childAt3 != this.draggingChild && childAdapterPosition >= iUnpackA && childAdapterPosition <= iUnpackB) {
                            fMin = Math.min(fMin, top(childAt3));
                            fMax = Math.max(fMax, bottom(childAt3));
                        }
                    }
                    if (fMin < fMax) {
                        if (useSegmentedSections()) {
                            for (int i7 = 0; i7 < getChildCount(); i7++) {
                                View childAt4 = getChildAt(i7);
                                int childAdapterPosition2 = getChildAdapterPosition(childAt4);
                                if (childAt4 != this.draggingChild && childAt4 != this.emptyView && childAt4.getVisibility() == 0 && childAt4.getAlpha() > 0.0f && childAdapterPosition2 >= iUnpackA && childAdapterPosition2 <= iUnpackB && this.sectionsItemDecoration.isSectionItem.run(childAt4).booleanValue()) {
                                    drawSegmentedSectionBackground(canvas2, childAt4);
                                }
                            }
                        } else {
                            RectF rectF = AndroidUtilities.rectTmp;
                            rectF.set(getPaddingLeft() + this.sectionsItemDecoration.padding, fMin, (getWidth() - getPaddingRight()) - this.sectionsItemDecoration.padding, fMax);
                            this.drawSectionBackground.run(canvas2, rectF, Float.valueOf(this.sectionRadius), Float.valueOf(this.sectionRadius), Float.valueOf(1.0f));
                        }
                    }
                }
                return;
            }
            return;
        }
        canvas2 = canvas;
        if (this.forcedSections == null) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$drawSectionsBackgrounds$6(Canvas canvas, Float f, Float f2, Float f3, Float f4, Float f5) {
        RectF rectF = AndroidUtilities.rectTmp;
        rectF.set(this.sectionsItemDecoration.padding, f.floatValue(), getWidth() - this.sectionsItemDecoration.padding, f2.floatValue());
        this.drawSectionBackground.run(canvas, rectF, f3, f4, f5);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$drawSectionsBackgrounds$7(Canvas canvas, Float f, Float f2, Float f3, Float f4, Float f5) {
        RectF rectF = AndroidUtilities.rectTmp;
        rectF.set(getPaddingLeft() + this.sectionsItemDecoration.padding, f.floatValue(), (getWidth() - this.sectionsItemDecoration.padding) - getPaddingRight(), f2.floatValue());
        this.drawSectionBackground.run(canvas, rectF, f3, f4, f5);
    }

    public static void drawBackgroundRect(Canvas canvas, RectF rectF, float f, float f2, float f3, Theme.ResourcesProvider resourcesProvider) {
        if (SharedConfig.shadowsInSections) {
            Paint paint = sectionBackgroundStrokePaint;
            paint.setShadowLayer(AndroidUtilities.dpf2(0.33f), 0.0f, 0.0f, Theme.multAlpha(201326592, f3));
            paint.setColor(0);
            sectionBackgroundPaint.setShadowLayer(AndroidUtilities.dpf2(2.0f), 0.0f, AndroidUtilities.dpf2(0.33f), Theme.multAlpha(167772160, f3));
        } else {
            sectionBackgroundPaint.setShadowLayer(0.0f, 0.0f, 0.0f, 0);
        }
        Paint paint2 = sectionBackgroundPaint;
        paint2.setColor(Theme.multAlpha(Theme.getColor(Theme.key_windowBackgroundWhite, resourcesProvider), f3));
        if (f == f2) {
            if (SharedConfig.shadowsInSections) {
                canvas.drawRoundRect(rectF, f, f, sectionBackgroundStrokePaint);
            }
            canvas.drawRoundRect(rectF, f, f, paint2);
            return;
        }
        Path path = sectionBackgroundPath;
        path.rewind();
        float[] fArr = radii;
        fArr[3] = f;
        fArr[2] = f;
        fArr[1] = f;
        fArr[0] = f;
        fArr[7] = f2;
        fArr[6] = f2;
        fArr[5] = f2;
        fArr[4] = f2;
        path.addRoundRect(rectF, fArr, Path.Direction.CW);
        if (SharedConfig.shadowsInSections) {
            canvas.drawPath(path, sectionBackgroundStrokePaint);
        }
        canvas.drawPath(path, paint2);
    }

    public void drawBackgroundRect(Canvas canvas, RectF rectF, float f, float f2, float f3) {
        drawBackgroundRect(canvas, rectF, f, f2, f3, this.resourcesProvider);
    }

    private void clipChild(Canvas canvas, View view) {
        boolean z;
        if (view == null || !this.sectionsItemDecoration.isSectionItem.run(view).booleanValue()) {
            return;
        }
        int childAdapterPosition = getChildAdapterPosition(view);
        boolean z2 = false;
        if (childAdapterPosition == -1) {
            z = false;
        } else {
            View viewFindViewByPosition = findViewByPosition(childAdapterPosition - 1);
            View viewFindViewByPosition2 = findViewByPosition(childAdapterPosition + 1);
            boolean z3 = viewFindViewByPosition != null && this.sectionsItemDecoration.isSectionItem.run(viewFindViewByPosition).booleanValue();
            if (viewFindViewByPosition2 != null && this.sectionsItemDecoration.isSectionItem.run(viewFindViewByPosition2).booleanValue()) {
                z2 = true;
            }
            z = z2;
            z2 = z3;
        }
        clipChildWithSection(canvas, view, z2, z);
    }

    private void clipSelector(Canvas canvas, View view) {
        if (view == null || !this.selectorIsSection) {
            return;
        }
        if (useSegmentedSections()) {
            clipChildWithSegmentedSection(canvas, view);
        } else {
            clipChildWithSection(canvas, view, this.selectorSectionHasPrev, this.selectorSectionHasNext);
        }
    }

    private void clipChildWithSegmentedSection(Canvas canvas, View view) {
        RectF rectF = AndroidUtilities.rectTmp;
        if (setSegmentedSectionRect(view, rectF)) {
            this.clipPath.rewind();
            float[] fArr = radii;
            float segmentedSectionTopRadius = getSegmentedSectionTopRadius(view, rectF);
            fArr[3] = segmentedSectionTopRadius;
            fArr[2] = segmentedSectionTopRadius;
            fArr[1] = segmentedSectionTopRadius;
            fArr[0] = segmentedSectionTopRadius;
            float segmentedSectionBottomRadius = getSegmentedSectionBottomRadius(view, rectF);
            fArr[7] = segmentedSectionBottomRadius;
            fArr[6] = segmentedSectionBottomRadius;
            fArr[5] = segmentedSectionBottomRadius;
            fArr[4] = segmentedSectionBottomRadius;
            this.clipPath.addRoundRect(rectF, fArr, Path.Direction.CW);
            canvas.clipPath(this.clipPath);
        }
    }

    private void clipChildWithSection(Canvas canvas, View view, boolean z, boolean z2) {
        if (useSegmentedSections()) {
            clipChildWithSegmentedSection(canvas, view);
            return;
        }
        RectF rectF = AndroidUtilities.rectTmp;
        rectF.set(view.getX(), Math.max(this.applyPaddingToSections ? getPaddingTop() : -this.sectionRadius, top(view)), view.getX() + view.getWidth(), Math.min(getHeight() - (this.applyPaddingToSections ? getPaddingBottom() : -this.sectionRadius), bottom(view)));
        if (z && z2) {
            z = top(view) >= rectF.top;
            z2 = bottom(view) <= rectF.bottom;
            if (z && z2) {
                return;
            }
        }
        if (!z && !z2) {
            this.clipPath.rewind();
            float singleSectionRadius = isRoundSectionView(view) ? getSingleSectionRadius(rectF) : this.sectionRadius;
            this.clipPath.addRoundRect(rectF, singleSectionRadius, singleSectionRadius, Path.Direction.CW);
            canvas.clipPath(this.clipPath);
            return;
        }
        if (!z) {
            this.clipPath.rewind();
            this.clipPath.addRoundRect(rectF, this.sectionRadiusTop, Path.Direction.CW);
            canvas.clipPath(this.clipPath);
        } else {
            if (z2) {
                return;
            }
            this.clipPath.rewind();
            this.clipPath.addRoundRect(rectF, this.sectionRadiusBottom, Path.Direction.CW);
            canvas.clipPath(this.clipPath);
        }
    }

    public static float top(View view) {
        if (view.getTag(C2573R.id.dragging) != null) {
            return view.getTop();
        }
        return view.getY();
    }

    public static float bottom(View view) {
        if (view.getTag(C2573R.id.dragging) != null) {
            return view.getBottom();
        }
        return view.getY() + view.getHeight();
    }

    public Drawable getClipBackground(View view) {
        return getClipBackground(view, false);
    }

    public Drawable getClipBackground(View view, boolean z) {
        boolean z2;
        boolean z3;
        if (view.getParent() != this || !hasSections() || !this.sectionsItemDecoration.isSectionItem.run(view).booleanValue()) {
            return null;
        }
        if (useSegmentedSections()) {
            RectF rectF = new RectF();
            if (!setSegmentedSectionRect(view, rectF)) {
                return null;
            }
            Path path = new Path();
            float segmentedSectionTopRadius = getSegmentedSectionTopRadius(view, rectF);
            float segmentedSectionBottomRadius = getSegmentedSectionBottomRadius(view, rectF);
            float[] fArr = radii;
            fArr[3] = segmentedSectionTopRadius;
            fArr[2] = segmentedSectionTopRadius;
            fArr[1] = segmentedSectionTopRadius;
            fArr[0] = segmentedSectionTopRadius;
            fArr[7] = segmentedSectionBottomRadius;
            fArr[6] = segmentedSectionBottomRadius;
            fArr[5] = segmentedSectionBottomRadius;
            fArr[4] = segmentedSectionBottomRadius;
            path.addRoundRect(rectF, fArr, Path.Direction.CW);
            return createClipBackgroundDrawable(view, rectF, path);
        }
        int childAdapterPosition = getChildAdapterPosition(view);
        if (childAdapterPosition == -1) {
            z3 = false;
            z2 = false;
        } else {
            View viewFindViewByPosition = findViewByPosition(childAdapterPosition - 1);
            View viewFindViewByPosition2 = findViewByPosition(childAdapterPosition + 1);
            z2 = viewFindViewByPosition != null && this.sectionsItemDecoration.isSectionItem.run(viewFindViewByPosition).booleanValue();
            z3 = viewFindViewByPosition2 != null && this.sectionsItemDecoration.isSectionItem.run(viewFindViewByPosition2).booleanValue();
        }
        RectF rectF2 = new RectF();
        rectF2.set(view.getX(), Math.max(this.applyPaddingToSections ? getPaddingTop() : 0.0f, top(view)), view.getX() + view.getWidth(), Math.min(getHeight() - (this.applyPaddingToSections ? getPaddingBottom() : 0), bottom(view)));
        if (z2 && z3 && !z) {
            z2 = top(view) >= rectF2.top;
            boolean z4 = bottom(view) <= rectF2.bottom;
            if (z2 && z4) {
                return Theme.createRoundRectDrawable(0, Theme.getColor(Theme.key_windowBackgroundWhite, this.resourcesProvider));
            }
            z3 = z4;
        }
        Path path2 = new Path();
        if ((!z2 && !z3) || z) {
            path2.rewind();
            float singleSectionRadius = isRoundSectionView(view) ? getSingleSectionRadius(rectF2) : this.sectionRadius;
            path2.addRoundRect(rectF2, singleSectionRadius, singleSectionRadius, Path.Direction.CW);
        } else if (!z2) {
            path2.rewind();
            path2.addRoundRect(rectF2, this.sectionRadiusTop, Path.Direction.CW);
        } else if (!z3) {
            path2.rewind();
            path2.addRoundRect(rectF2, this.sectionRadiusBottom, Path.Direction.CW);
        }
        return createClipBackgroundDrawable(view, rectF2, path2);
    }

    private Drawable createClipBackgroundDrawable(final View view, final RectF rectF, final Path path) {
        return new Drawable() { // from class: org.telegram.ui.Components.RecyclerListView.7
            private final Paint paint = new Paint(1);

            @Override // android.graphics.drawable.Drawable
            public int getOpacity() {
                return -2;
            }

            @Override // android.graphics.drawable.Drawable
            public void setColorFilter(ColorFilter colorFilter) {
            }

            @Override // android.graphics.drawable.Drawable
            public void draw(Canvas canvas) {
                canvas.save();
                canvas.translate(-view.getX(), -view.getY());
                canvas.clipPath(path);
                this.paint.setColor(ColorUtils.setAlphaComponent(Theme.getColor(Theme.key_windowBackgroundWhite, RecyclerListView.this.resourcesProvider), this.paint.getAlpha()));
                canvas.drawRect(rectF, this.paint);
                canvas.restore();
            }

            @Override // android.graphics.drawable.Drawable
            public void setAlpha(int i) {
                this.paint.setAlpha(i);
            }
        };
    }

    /* JADX INFO: loaded from: classes7.dex */
    public static class SectionsDrawer {
        private static final ArrayList<float[]> groups = new ArrayList<>();

        public static class Section {
            public float alpha;
            public float from;
            public boolean round;
            public float to;

            public Section(float f, float f2, float f3, boolean z) {
                this.from = f;
                this.to = f2;
                this.alpha = f3;
                this.round = z;
            }
        }

        public static void draw(List<Section> list, float f, Utilities.Callback5<Float, Float, Float, Float, Float> callback5, boolean z) {
            int i;
            if (list == null || list.isEmpty()) {
                return;
            }
            Collections.sort(list, new Comparator() { // from class: org.telegram.ui.Components.RecyclerListView$SectionsDrawer$$ExternalSyntheticLambda0
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return Float.compare(((RecyclerListView.SectionsDrawer.Section) obj).from, ((RecyclerListView.SectionsDrawer.Section) obj2).from);
                }
            });
            groups.clear();
            if (z) {
                drawSegmentedSections(list, f, callback5);
                return;
            }
            for (int i2 = 0; i2 < list.size(); i2 = i) {
                float fMax = list.get(i2).to;
                i = i2 + 1;
                while (i < list.size() && list.get(i).from <= 1.5f + fMax) {
                    fMax = Math.max(fMax, list.get(i).to);
                    i++;
                }
                float[] fArrCalculateGroup = calculateGroup(list, i2, i, f);
                if (fArrCalculateGroup != null) {
                    groups.add(fArrCalculateGroup);
                }
            }
            int i3 = 0;
            while (true) {
                ArrayList<float[]> arrayList = groups;
                if (i3 >= arrayList.size()) {
                    return;
                }
                float[] fArr = arrayList.get(i3);
                float f2 = fArr[0];
                float f3 = fArr[1];
                float fMin = fArr[2];
                float fMin2 = fArr[3];
                float f4 = fArr[4];
                if (i3 > 0) {
                    float f5 = f2 - arrayList.get(i3 - 1)[1];
                    float f6 = f * 0.2f;
                    if (f5 < f6) {
                        fMin = Math.min(fMin, (f5 / f6) * f);
                    }
                }
                if (i3 < arrayList.size() - 1) {
                    float f7 = arrayList.get(i3 + 1)[0] - f3;
                    float f8 = f * 0.2f;
                    if (f7 < f8) {
                        fMin2 = Math.min(fMin2, (f7 / f8) * f);
                    }
                }
                callback5.run(Float.valueOf(f2), Float.valueOf(f3), Float.valueOf(fMin), Float.valueOf(fMin2), Float.valueOf(f4));
                i3++;
            }
        }

        private static void drawSegmentedSections(List<Section> list, float f, Utilities.Callback5<Float, Float, Float, Float, Float> callback5) {
            float fMin = Math.min(f, AndroidUtilities.dp(4.0f));
            float fDp = AndroidUtilities.dp(2.0f) + 1.5f;
            int i = 0;
            while (i < list.size()) {
                Section section = list.get(i);
                if (section.alpha >= 0.001f) {
                    boolean z = i > 0 && section.from <= list.get(i + (-1)).to + fDp;
                    boolean z2 = i < list.size() - 1 && list.get(i + 1).from <= section.to + fDp;
                    float f2 = section.from;
                    float f3 = section.to;
                    if (f3 > f2) {
                        float f4 = z ? fMin : f;
                        float f5 = z2 ? fMin : f;
                        if (!z && !z2 && section.round) {
                            f4 = (f3 - f2) / 2.0f;
                            f5 = f4;
                        }
                        callback5.run(Float.valueOf(f2), Float.valueOf(f3), Float.valueOf(f4), Float.valueOf(f5), Float.valueOf(section.alpha));
                    }
                }
                i++;
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:47:0x00d5  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private static float[] calculateGroup(List<Section> list, int i, int i2, float f) {
            float f2;
            float fLerp;
            float f3;
            float fLerp2 = f;
            float fMin = Float.MAX_VALUE;
            float fMax = Float.MIN_VALUE;
            int i3 = i;
            float fMin2 = Float.MAX_VALUE;
            float fMax2 = Float.MIN_VALUE;
            while (true) {
                f2 = 0.99f;
                if (i3 >= i2) {
                    break;
                }
                Section section = list.get(i3);
                if (section.alpha >= 0.99f) {
                    fMin2 = Math.min(fMin2, section.from);
                    fMax2 = Math.max(fMax2, section.to);
                }
                i3++;
            }
            boolean z = fMin2 != Float.MAX_VALUE;
            float f4 = 0.0f;
            float fMax3 = 0.0f;
            for (int i4 = i; i4 < i2; i4++) {
                Section section2 = list.get(i4);
                fMin = Math.min(fMin, section2.from);
                fMax = Math.max(fMax, section2.to);
                fMax3 = Math.max(fMax3, section2.alpha);
            }
            if (fMax3 < 0.001f) {
                return null;
            }
            if (z) {
                int i5 = i;
                float f5 = 0.0f;
                Section section3 = null;
                while (i5 < i2) {
                    Section section4 = list.get(i5);
                    float f6 = section4.alpha;
                    if (f6 >= f2) {
                        f3 = f2;
                    } else {
                        f3 = f2;
                        float f7 = section4.from;
                        if (f7 < fMin2) {
                            float f8 = (fMin2 - f7) * f6;
                            if (f8 > f5) {
                                f5 = f8;
                                section3 = section4;
                            }
                        }
                    }
                    i5++;
                    f2 = f3;
                }
                float f9 = f2;
                Section section5 = null;
                for (int i6 = i; i6 < i2; i6++) {
                    Section section6 = list.get(i6);
                    float f10 = section6.alpha;
                    if (f10 < f9) {
                        float f11 = section6.to;
                        if (f11 > fMax2) {
                            float f12 = (f11 - fMax2) * f10;
                            if (f12 > f4) {
                                section5 = section6;
                                f4 = f12;
                            }
                        }
                    }
                }
                if (section3 != null) {
                    float f13 = section3.alpha;
                    if (f13 > 0.001f) {
                        float fLerp3 = AndroidUtilities.lerp(fMin2, section3.from, f13);
                        fLerp = AndroidUtilities.lerp(fLerp2, section3.alpha * fLerp2, (fMin2 - fLerp3) / ((fMin2 - section3.from) + 0.001f));
                        fMin2 = fLerp3;
                    } else {
                        fLerp = fLerp2;
                    }
                    fMax3 = 1.0f;
                    if (section5 != null) {
                        float f14 = section5.alpha;
                        if (f14 > 0.001f) {
                            float fLerp4 = AndroidUtilities.lerp(fMax2, section5.to, f14);
                            fLerp2 = AndroidUtilities.lerp(fLerp2, section5.alpha * fLerp2, (fLerp4 - fMax2) / ((section5.to - fMax2) + 0.001f));
                            fMax2 = fLerp4;
                        }
                    }
                    fMin = fMin2;
                }
            } else {
                fLerp = fLerp2;
                fMax2 = fMax;
            }
            if (fMax2 <= fMin) {
                return null;
            }
            if (i2 - i == 1 && list.get(i).round) {
                fLerp = (fMax2 - fMin) / 2.0f;
                fLerp2 = fLerp;
            }
            return new float[]{fMin, fMax2, fLerp, fLerp2, fMax3};
        }
    }

    public static Class[] filterThemeDescription(int i, Class[] clsArr) {
        if (ExteraConfig.getSectionsSeparatedHeaders() && i == ThemeDescription.FLAG_CELLBACKGROUNDCOLOR && clsArr != null) {
            int i2 = 0;
            for (Class cls : clsArr) {
                if (cls != null && !cls.equals(HeaderCell.class)) {
                    i2++;
                }
            }
            if (i2 != clsArr.length) {
                Class[] clsArr2 = new Class[i2];
                int i3 = 0;
                for (Class cls2 : clsArr) {
                    if (cls2 != null && !cls2.equals(HeaderCell.class)) {
                        clsArr2[i3] = cls2;
                        i3++;
                    }
                }
                return clsArr2;
            }
        }
        return clsArr;
    }
}
