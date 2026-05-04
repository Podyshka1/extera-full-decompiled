package org.telegram.ui.Stories;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import androidx.core.math.MathUtils;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.utils.text.LocaleUtils;
import com.google.android.exoplayer2.util.Consumer;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import me.vkryl.android.animator.BoolAnimator;
import me.vkryl.android.animator.FactorAnimator;
import me.vkryl.android.animator.ReplaceAnimator;
import okhttp3.internal.url._UrlKt;
import okhttp3.internal.ws.RealWebSocket;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BotWebViewVibrationEffect;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C2484R;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_stories;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.ActionBarAnimatedSubtitleOverlayContainer;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.SimpleTextView;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.AnimatedEmojiDrawable;
import org.telegram.ui.Components.AnimatedFloat;
import org.telegram.ui.Components.AnimatedTextView;
import org.telegram.ui.Components.AvatarDrawable;
import org.telegram.ui.Components.ButtonBounce;
import org.telegram.ui.Components.CanvasButton;
import org.telegram.ui.Components.CombinedDrawable;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.EllipsizeSpanAnimator;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.ListView.AdapterWithDiffUtils;
import org.telegram.ui.Components.Premium.LimitReachedBottomSheet;
import org.telegram.ui.Components.RadialProgress;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.SeekBarView;
import org.telegram.ui.Components.TypefaceSpan;
import org.telegram.ui.PremiumPreviewFragment;
import org.telegram.ui.Stories.DialogStoriesCell;
import org.telegram.ui.Stories.StoriesController;
import org.telegram.ui.Stories.StoriesListPlaceProvider;
import org.telegram.ui.Stories.StoriesUtilities;
import org.telegram.ui.Stories.recorder.HintView2;
import org.telegram.ui.Stories.recorder.StoryRecorder;

/* JADX INFO: loaded from: classes3.dex */
public abstract class DialogStoriesCell extends FrameLayout implements NotificationCenter.NotificationCenterDelegate, FactorAnimator.Target {

    /* JADX INFO: renamed from: K */
    public float f1538K;
    private ActionBar actionBar;
    Adapter adapter;
    Paint addCirclePaint;
    private final Drawable addNewStoryDrawable;
    private int addNewStoryLastColor;
    ArrayList afterNextLayout;
    public boolean allowGlobalUpdates;
    ArrayList animateToDialogIds;
    private Runnable animationRunnable;
    private final BoolAnimator animatorHasTitleText;
    Paint backgroundPaint;
    private long checkedStoryNotificationDeletion;
    private int clipTop;
    boolean collapsed;
    private ValueAnimator collapsedOvershootAnimator;
    private float collapsedOvershootProgress;
    float collapsedProgress;
    private float collapsedProgress1;
    private float collapsedProgress2;
    private float collapsedSpringCoef;
    Comparator comparator;
    int currentAccount;
    public int currentCellWidth;
    int currentState;
    private CharSequence currentTitle;
    private CharSequence dialogsTitleOverride;
    boolean drawCircleForce;
    EllipsizeSpanAnimator ellipsizeSpanAnimator;
    ImageView emojiStatusView;
    private ValueAnimator expandOvershootAnimator;
    private float expandOvershootAnimatorProgress;
    private float expandedSpringCoef;
    BaseFragment fragment;
    private StoriesUtilities.EnsureStoryFileLoadedObject globalCancelable;
    Paint grayPaint;
    private boolean hasOverlayText;
    DefaultItemAnimator itemAnimator;
    ArrayList items;
    private boolean lastUploadingCloseFriends;
    LinearLayoutManager layoutManager;
    RecyclerListView listViewMini;
    private float menuItemsOffset;
    Adapter miniAdapter;
    private final DefaultItemAnimator miniItemAnimator;
    ArrayList miniItems;
    CanvasButton miniItemsClickArea;
    ArrayList oldItems;
    ArrayList oldMiniItems;
    private float overScrollCoef;
    private int overlayTextId;
    private float overscrollProgress;
    private int overscrollSelectedPosition;
    private StoryCell overscrollSelectedView;
    private HintView2 premiumHint;
    private Drawable premiumStar;
    public RadialProgress radialProgress;
    public RecyclerListView recyclerListView;
    AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable statusDrawable;
    AnimatorSet storiesAnimatorSet;
    private OvershootInterpolator storiesCollapseInterpolator;
    StoriesController storiesController;
    private OvershootInterpolator storiesExpandInterpolator;
    ActionBarAnimatedSubtitleOverlayContainer subtitleOverlayContainer;
    private ValueAnimator textAnimator;
    private ValueAnimator titleOverrideAnimator;
    private boolean titleOverrideForward;
    private float titleOverrideProgress;
    AnimatedTextView titleView;
    AnimatedTextView titleViewOut;
    private final int type;
    boolean updateOnIdleState;
    private ValueAnimator valueAnimator;
    ArrayList viewsDrawInParent;
    private ValueAnimator yStoriesAnimator;
    private float yStoriesProgress;

    @Override // me.vkryl.android.animator.FactorAnimator.Target
    public /* synthetic */ void onFactorChangeFinished(int i, float f, FactorAnimator factorAnimator) {
        FactorAnimator.Target.CC.$default$onFactorChangeFinished(this, i, f, factorAnimator);
    }

    public abstract void onMiniListClicked();

    public abstract void onUserLongPressed(View view, long j);

    public DialogStoriesCell(Context context, BaseFragment baseFragment, int i, int i2) {
        super(context);
        this.animatorHasTitleText = new BoolAnimator(1, this, CubicBezierInterpolator.EASE_OUT_QUINT, 380L);
        this.oldItems = new ArrayList();
        this.oldMiniItems = new ArrayList();
        this.items = new ArrayList();
        this.miniItems = new ArrayList();
        this.adapter = new Adapter(false);
        this.miniAdapter = new Adapter(true);
        this.grayPaint = new Paint();
        this.addCirclePaint = new Paint(1);
        this.backgroundPaint = new Paint(1);
        this.miniItemsClickArea = new CanvasButton(this);
        this.collapsedProgress = -1.0f;
        this.currentState = -1;
        this.viewsDrawInParent = new ArrayList();
        this.animateToDialogIds = new ArrayList();
        this.afterNextLayout = new ArrayList();
        this.collapsedProgress1 = -1.0f;
        this.titleOverrideProgress = 1.0f;
        this.titleOverrideForward = true;
        this.allowGlobalUpdates = true;
        this.overScrollCoef = 1.0f;
        this.collapsedSpringCoef = 0.95f;
        this.expandedSpringCoef = 0.9f;
        this.comparator = new Comparator() { // from class: org.telegram.ui.Stories.DialogStoriesCell$$ExternalSyntheticLambda6
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return DialogStoriesCell.$r8$lambda$mrKyDE7kqyAfP266l3FH_xwibtA((DialogStoriesCell.StoryCell) obj, (DialogStoriesCell.StoryCell) obj2);
            }
        };
        this.f1538K = 0.3f;
        this.collapsedOvershootProgress = 1.0f;
        this.storiesExpandInterpolator = new OvershootInterpolator(this.expandedSpringCoef);
        this.storiesCollapseInterpolator = new OvershootInterpolator(this.collapsedSpringCoef);
        this.ellipsizeSpanAnimator = new EllipsizeSpanAnimator(this);
        this.type = i2;
        this.currentAccount = i;
        this.fragment = baseFragment;
        this.menuItemsOffset = AndroidUtilities.dp(68.0f);
        this.storiesController = MessagesController.getInstance(i).getStoriesController();
        RecyclerListView recyclerListView = new RecyclerListView(context) { // from class: org.telegram.ui.Stories.DialogStoriesCell.1
            @Override // org.telegram.ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
            public boolean drawChild(Canvas canvas, View view, long j) {
                if (DialogStoriesCell.this.viewsDrawInParent.contains(view)) {
                    return true;
                }
                return super.drawChild(canvas, view, j);
            }

            @Override // org.telegram.ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
            protected void onLayout(boolean z, int i3, int i4, int i5, int i6) {
                super.onLayout(z, i3, i4, i5, i6);
                for (int i7 = 0; i7 < DialogStoriesCell.this.afterNextLayout.size(); i7++) {
                    ((Runnable) DialogStoriesCell.this.afterNextLayout.get(i7)).run();
                }
                DialogStoriesCell.this.afterNextLayout.clear();
            }

            @Override // org.telegram.ui.Components.RecyclerListView, android.view.ViewGroup, android.view.View
            public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                if (motionEvent.getAction() != 0 || (DialogStoriesCell.this.collapsedProgress1 <= 0.2f && DialogStoriesCell.this.getAlpha() != 0.0f)) {
                    return super.dispatchTouchEvent(motionEvent);
                }
                return false;
            }
        };
        this.recyclerListView = recyclerListView;
        recyclerListView.setPadding(AndroidUtilities.dp(3.0f), 0, AndroidUtilities.dp(3.0f), 0);
        this.recyclerListView.setClipToPadding(false);
        this.recyclerListView.setClipChildren(false);
        this.miniItemsClickArea.setDelegate(new Runnable() { // from class: org.telegram.ui.Stories.DialogStoriesCell$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.onMiniListClicked();
            }
        });
        this.miniItemsClickArea.setLongPress(new Runnable() { // from class: org.telegram.ui.Stories.DialogStoriesCell$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$0();
            }
        });
        this.recyclerListView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Stories.DialogStoriesCell.5
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i3, int i4) {
                super.onScrolled(recyclerView, i3, i4);
                DialogStoriesCell.this.invalidate();
                DialogStoriesCell.this.checkLoadMore();
                if (DialogStoriesCell.this.premiumHint != null) {
                    DialogStoriesCell.this.premiumHint.hide();
                }
            }
        });
        DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator();
        this.itemAnimator = defaultItemAnimator;
        defaultItemAnimator.setDelayAnimations(false);
        this.itemAnimator.setDurations(150L);
        this.itemAnimator.setSupportsChangeAnimations(false);
        this.recyclerListView.setItemAnimator(this.itemAnimator);
        RecyclerListView recyclerListView2 = this.recyclerListView;
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context, 0, false);
        this.layoutManager = linearLayoutManager;
        recyclerListView2.setLayoutManager(linearLayoutManager);
        this.recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Stories.DialogStoriesCell$$ExternalSyntheticLambda9
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i3) {
                this.f$0.lambda$new$1(view, i3);
            }
        });
        this.recyclerListView.setOnItemLongClickListener(new RecyclerListView.OnItemLongClickListener() { // from class: org.telegram.ui.Stories.DialogStoriesCell$$ExternalSyntheticLambda10
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemLongClickListener
            public final boolean onItemClick(View view, int i3) {
                return this.f$0.lambda$new$2(view, i3);
            }
        });
        this.recyclerListView.setAdapter(this.adapter);
        addView(this.recyclerListView, LayoutHelper.createFrame(-1, -2.0f, 0, 0.0f, 4.0f, 0.0f, 0.0f));
        AnimatedTextView animatedTextViewCreateTitleView = createTitleView();
        this.titleViewOut = animatedTextViewCreateTitleView;
        animatedTextViewCreateTitleView.setVisibility(8);
        addView(this.titleViewOut, LayoutHelper.createFrame(-1, -2.0f));
        AnimatedTextView animatedTextViewCreateTitleView2 = createTitleView();
        this.titleView = animatedTextViewCreateTitleView2;
        addView(animatedTextViewCreateTitleView2, LayoutHelper.createFrame(-1, -2.0f));
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = new AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable(null, AndroidUtilities.dp(26.0f));
        this.statusDrawable = swapAnimatedEmojiDrawable;
        swapAnimatedEmojiDrawable.center = true;
        swapAnimatedEmojiDrawable.setCallback(this);
        ImageView imageView = new ImageView(context);
        this.emojiStatusView = imageView;
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        this.emojiStatusView.setImageDrawable(this.statusDrawable);
        addView(this.emojiStatusView, LayoutHelper.createFrame(40, 40.0f));
        ActionBarAnimatedSubtitleOverlayContainer actionBarAnimatedSubtitleOverlayContainer = new ActionBarAnimatedSubtitleOverlayContainer(context, null, this.ellipsizeSpanAnimator) { // from class: org.telegram.ui.Stories.DialogStoriesCell.6
            @Override // org.telegram.ui.ActionBar.ActionBarAnimatedSubtitleOverlayContainer, me.vkryl.android.animator.ReplaceAnimator.Callback
            public void onItemChanged(ReplaceAnimator replaceAnimator) {
                super.onItemChanged(replaceAnimator);
                DialogStoriesCell.this.invalidate();
            }
        };
        this.subtitleOverlayContainer = actionBarAnimatedSubtitleOverlayContainer;
        addView(actionBarAnimatedSubtitleOverlayContainer, LayoutHelper.createFrame(-2, -2.0f));
        this.grayPaint.setColor(-2762018);
        this.grayPaint.setStyle(Paint.Style.STROKE);
        this.grayPaint.setStrokeWidth(AndroidUtilities.dp(1.0f));
        this.addNewStoryDrawable = ContextCompat.getDrawable(getContext(), C2484R.drawable.msg_mini_addstory);
        RecyclerListView recyclerListView3 = new RecyclerListView(getContext()) { // from class: org.telegram.ui.Stories.DialogStoriesCell.7
            @Override // org.telegram.ui.Components.RecyclerListView, android.view.ViewGroup, android.view.View
            public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                return false;
            }

            @Override // org.telegram.ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
            public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
                return false;
            }

            @Override // org.telegram.ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                return false;
            }

            @Override // org.telegram.ui.Components.RecyclerListView, android.view.ViewGroup, android.view.View
            protected void dispatchDraw(Canvas canvas) {
                Canvas canvas2;
                DialogStoriesCell.this.viewsDrawInParent.clear();
                int i3 = 0;
                for (int i4 = 0; i4 < getChildCount(); i4++) {
                    StoryCell storyCell = (StoryCell) getChildAt(i4);
                    int childAdapterPosition = getChildAdapterPosition(storyCell);
                    storyCell.position = childAdapterPosition;
                    boolean z = true;
                    storyCell.drawInParent = true;
                    storyCell.isFirst = childAdapterPosition == 0;
                    if (childAdapterPosition != DialogStoriesCell.this.miniItems.size() - 1) {
                        z = false;
                    }
                    storyCell.isLast = z;
                    DialogStoriesCell.this.viewsDrawInParent.add(storyCell);
                }
                DialogStoriesCell dialogStoriesCell = DialogStoriesCell.this;
                Collections.sort(dialogStoriesCell.viewsDrawInParent, dialogStoriesCell.comparator);
                while (i3 < DialogStoriesCell.this.viewsDrawInParent.size()) {
                    StoryCell storyCell2 = (StoryCell) DialogStoriesCell.this.viewsDrawInParent.get(i3);
                    int iSave = canvas.save();
                    canvas.translate(storyCell2.getX(), storyCell2.getY());
                    if (storyCell2.getAlpha() != 1.0f) {
                        canvas2 = canvas;
                        canvas2.saveLayerAlpha(-AndroidUtilities.dp(4.0f), -AndroidUtilities.dp(4.0f), AndroidUtilities.dp(50.0f), AndroidUtilities.dp(50.0f), (int) (storyCell2.getAlpha() * 255.0f), 31);
                    } else {
                        canvas2 = canvas;
                    }
                    canvas2.scale(storyCell2.getScaleX(), storyCell2.getScaleY(), AndroidUtilities.dp(14.0f), storyCell2.getCy());
                    storyCell2.draw(canvas2);
                    canvas2.restoreToCount(iSave);
                    i3++;
                    canvas = canvas2;
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView
            public void onScrolled(int i3, int i4) {
                super.onScrolled(i3, i4);
                if (DialogStoriesCell.this.premiumHint != null) {
                    DialogStoriesCell.this.premiumHint.hide();
                }
            }
        };
        this.listViewMini = recyclerListView3;
        recyclerListView3.setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
        this.listViewMini.addItemDecoration(new RecyclerView.ItemDecoration() { // from class: org.telegram.ui.Stories.DialogStoriesCell.8
            @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
            public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
                int childLayoutPosition = recyclerView.getChildLayoutPosition(view);
                rect.setEmpty();
                if (childLayoutPosition == 1) {
                    rect.left = (-AndroidUtilities.dp(85.0f)) + AndroidUtilities.dp(31.0f);
                } else if (childLayoutPosition == 2) {
                    rect.left = (-AndroidUtilities.dp(85.0f)) + AndroidUtilities.dp(31.0f);
                }
            }
        });
        DefaultItemAnimator defaultItemAnimator2 = new DefaultItemAnimator() { // from class: org.telegram.ui.Stories.DialogStoriesCell.9
            @Override // androidx.recyclerview.widget.DefaultItemAnimator
            protected float animateByScale(View view) {
                return 0.6f;
            }
        };
        this.miniItemAnimator = defaultItemAnimator2;
        defaultItemAnimator2.setDelayAnimations(false);
        defaultItemAnimator2.setSupportsChangeAnimations(false);
        this.listViewMini.setItemAnimator(defaultItemAnimator2);
        this.listViewMini.setAdapter(this.miniAdapter);
        this.listViewMini.setClipChildren(false);
        addView(this.listViewMini, LayoutHelper.createFrame(-1, -2.0f, 0, 0.0f, 4.0f, 0.0f, 0.0f));
        setClipChildren(false);
        setClipToPadding(false);
        checkUi_titleVisibility();
        updateItems(false, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        if (BuildVars.DEBUG_PRIVATE_VERSION) {
            AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
            LinearLayout linearLayout = new LinearLayout(getContext());
            linearLayout.setOrientation(1);
            final TextView textView = new TextView(getContext());
            textView.setText("Screen oversrcoll: " + this.overScrollCoef);
            int i = Theme.key_windowBackgroundWhiteBlueText;
            textView.setTextColor(Theme.getColor(i));
            SeekBarView seekBarView = new SeekBarView(getContext());
            seekBarView.setProgress(Math.min(1.0f, Math.max(0.0f, (this.overScrollCoef - 0.2f) / 0.8f)));
            seekBarView.setDelegate(new SeekBarView.SeekBarViewDelegate() { // from class: org.telegram.ui.Stories.DialogStoriesCell.2
                @Override // org.telegram.ui.Components.SeekBarView.SeekBarViewDelegate
                public /* synthetic */ CharSequence getContentDescription() {
                    return SeekBarView.SeekBarViewDelegate.CC.$default$getContentDescription(this);
                }

                @Override // org.telegram.ui.Components.SeekBarView.SeekBarViewDelegate
                public /* synthetic */ int getStepsCount() {
                    return SeekBarView.SeekBarViewDelegate.CC.$default$getStepsCount(this);
                }

                @Override // org.telegram.ui.Components.SeekBarView.SeekBarViewDelegate
                public /* synthetic */ boolean needVisuallyDivideSteps() {
                    return SeekBarView.SeekBarViewDelegate.CC.$default$needVisuallyDivideSteps(this);
                }

                @Override // org.telegram.ui.Components.SeekBarView.SeekBarViewDelegate
                public void onSeekBarPressed(boolean z) {
                }

                @Override // org.telegram.ui.Components.SeekBarView.SeekBarViewDelegate
                public void onSeekBarDrag(boolean z, float f) {
                    DialogStoriesCell.this.overScrollCoef = AndroidUtilities.lerp(0.2f, 1.0f, f);
                    textView.setText("Screen oversrcoll: " + DialogStoriesCell.this.overScrollCoef);
                }
            });
            linearLayout.addView(textView, LayoutHelper.createLinear(-1, 38, 0, 20, 20, 5, 0));
            linearLayout.addView(seekBarView, LayoutHelper.createLinear(-1, 38, 0, 5, 0, 20, 0));
            final TextView textView2 = new TextView(getContext());
            textView2.setText("Collapsed spring: " + this.collapsedSpringCoef);
            textView2.setTextColor(Theme.getColor(i));
            linearLayout.addView(textView2, LayoutHelper.createLinear(-1, 38, 0, 20, 0, 20, 0));
            SeekBarView seekBarView2 = new SeekBarView(getContext());
            seekBarView2.setProgress((this.collapsedSpringCoef - 0.25f) / 2.25f);
            seekBarView2.setDelegate(new SeekBarView.SeekBarViewDelegate() { // from class: org.telegram.ui.Stories.DialogStoriesCell.3
                @Override // org.telegram.ui.Components.SeekBarView.SeekBarViewDelegate
                public /* synthetic */ CharSequence getContentDescription() {
                    return SeekBarView.SeekBarViewDelegate.CC.$default$getContentDescription(this);
                }

                @Override // org.telegram.ui.Components.SeekBarView.SeekBarViewDelegate
                public /* synthetic */ int getStepsCount() {
                    return SeekBarView.SeekBarViewDelegate.CC.$default$getStepsCount(this);
                }

                @Override // org.telegram.ui.Components.SeekBarView.SeekBarViewDelegate
                public /* synthetic */ boolean needVisuallyDivideSteps() {
                    return SeekBarView.SeekBarViewDelegate.CC.$default$needVisuallyDivideSteps(this);
                }

                @Override // org.telegram.ui.Components.SeekBarView.SeekBarViewDelegate
                public void onSeekBarPressed(boolean z) {
                }

                @Override // org.telegram.ui.Components.SeekBarView.SeekBarViewDelegate
                public void onSeekBarDrag(boolean z, float f) {
                    DialogStoriesCell.this.collapsedSpringCoef = AndroidUtilities.lerp(0.25f, 2.5f, f);
                    textView2.setText("Collapsed spring: " + DialogStoriesCell.this.collapsedSpringCoef);
                }
            });
            linearLayout.addView(seekBarView2, LayoutHelper.createLinear(-1, 38, 0, 5, 0, 20, 0));
            final TextView textView3 = new TextView(getContext());
            textView3.setText("Expanded X spring: " + this.expandedSpringCoef);
            textView3.setTextColor(Theme.getColor(i));
            linearLayout.addView(textView3, LayoutHelper.createLinear(-1, 38, 0, 20, 0, 20, 0));
            SeekBarView seekBarView3 = new SeekBarView(getContext());
            seekBarView3.setProgress((this.expandedSpringCoef - 0.25f) / 2.25f);
            seekBarView3.setDelegate(new SeekBarView.SeekBarViewDelegate() { // from class: org.telegram.ui.Stories.DialogStoriesCell.4
                @Override // org.telegram.ui.Components.SeekBarView.SeekBarViewDelegate
                public /* synthetic */ CharSequence getContentDescription() {
                    return SeekBarView.SeekBarViewDelegate.CC.$default$getContentDescription(this);
                }

                @Override // org.telegram.ui.Components.SeekBarView.SeekBarViewDelegate
                public /* synthetic */ int getStepsCount() {
                    return SeekBarView.SeekBarViewDelegate.CC.$default$getStepsCount(this);
                }

                @Override // org.telegram.ui.Components.SeekBarView.SeekBarViewDelegate
                public /* synthetic */ boolean needVisuallyDivideSteps() {
                    return SeekBarView.SeekBarViewDelegate.CC.$default$needVisuallyDivideSteps(this);
                }

                @Override // org.telegram.ui.Components.SeekBarView.SeekBarViewDelegate
                public void onSeekBarPressed(boolean z) {
                }

                @Override // org.telegram.ui.Components.SeekBarView.SeekBarViewDelegate
                public void onSeekBarDrag(boolean z, float f) {
                    DialogStoriesCell.this.expandedSpringCoef = AndroidUtilities.lerp(0.25f, 2.5f, f);
                    textView3.setText("Expanded X spring: " + DialogStoriesCell.this.expandedSpringCoef);
                }
            });
            linearLayout.addView(seekBarView3, LayoutHelper.createLinear(-1, 38, 0, 5, 0, 20, 0));
            builder.setTopView(linearLayout);
            builder.setTopViewAspectRatio(1.0f);
            builder.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(View view, int i) {
        openStoryForCell((StoryCell) view, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$2(View view, int i) {
        if (this.collapsedProgress != 0.0f || this.overscrollProgress != 0.0f) {
            return false;
        }
        onUserLongPressed(view, ((StoryCell) view).dialogId);
        return false;
    }

    public void setMenuItemsOffset(float f) {
        this.menuItemsOffset = f;
    }

    public void openStoryForCell(StoryCell storyCell) {
        openStoryForCell(storyCell, false);
    }

    private void openStoryForCell(final StoryCell storyCell, boolean z) {
        ValueAnimator valueAnimator;
        if ((z && (valueAnimator = this.expandOvershootAnimator) != null && valueAnimator.isRunning()) || storyCell == null) {
            return;
        }
        try {
            performHapticFeedback(3);
        } catch (Exception unused) {
        }
        if (storyCell.isSelf && !this.storiesController.hasSelfStories()) {
            if (!MessagesController.getInstance(this.currentAccount).storiesEnabled()) {
                showPremiumHint();
                return;
            } else {
                openStoryRecorder();
                return;
            }
        }
        if (this.storiesController.hasStories(storyCell.dialogId) || this.storiesController.hasUploadingStories(storyCell.dialogId)) {
            TL_stories.PeerStories stories = this.storiesController.getStories(storyCell.dialogId);
            final long j = storyCell.dialogId;
            StoriesUtilities.EnsureStoryFileLoadedObject ensureStoryFileLoadedObject = this.globalCancelable;
            if (ensureStoryFileLoadedObject != null) {
                ensureStoryFileLoadedObject.cancel();
                this.globalCancelable = null;
            }
            Runnable runnable = new Runnable() { // from class: org.telegram.ui.Stories.DialogStoriesCell$$ExternalSyntheticLambda11
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$openStoryForCell$5(storyCell, j);
                }
            };
            if (z) {
                runnable.run();
                return;
            }
            StoriesUtilities.EnsureStoryFileLoadedObject ensureStoryFileLoadedObjectEnsureStoryFileLoaded = StoriesUtilities.ensureStoryFileLoaded(stories, runnable);
            storyCell.cancellable = ensureStoryFileLoadedObjectEnsureStoryFileLoaded;
            this.globalCancelable = ensureStoryFileLoadedObjectEnsureStoryFileLoaded;
            if (ensureStoryFileLoadedObjectEnsureStoryFileLoaded != null) {
                this.storiesController.setLoading(storyCell.dialogId, true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openStoryForCell$5(StoryCell storyCell, final long j) {
        boolean z;
        final boolean z2;
        boolean z3;
        BaseFragment baseFragment = this.fragment;
        if (baseFragment == null || baseFragment.getParentActivity() == null) {
            return;
        }
        int size = storyCell.position;
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (true) {
            if (i >= this.items.size()) {
                z = true;
                break;
            }
            long j2 = ((Item) this.items.get(i)).dialogId;
            if (j2 != UserConfig.getInstance(this.currentAccount).clientUserId && this.storiesController.hasUnreadStories(j2)) {
                z = false;
                break;
            }
            i++;
        }
        if (storyCell.isSelf && (!z || this.items.size() == 1)) {
            arrayList.add(Long.valueOf(storyCell.dialogId));
            z3 = false;
            z2 = true;
        } else if (!storyCell.isSelf && this.storiesController.hasUnreadStories(storyCell.dialogId)) {
            for (int i2 = 0; i2 < this.items.size(); i2++) {
                long j3 = ((Item) this.items.get(i2)).dialogId;
                if (!storyCell.isSelf && this.storiesController.hasUnreadStories(j3)) {
                    arrayList.add(Long.valueOf(j3));
                }
                if (j3 == storyCell.dialogId) {
                    size = arrayList.size() - 1;
                }
            }
            z2 = false;
            z3 = true;
        } else {
            for (int i3 = 0; i3 < this.items.size(); i3++) {
                if (this.storiesController.hasStories(((Item) this.items.get(i3)).dialogId)) {
                    arrayList.add(Long.valueOf(((Item) this.items.get(i3)).dialogId));
                } else if (i3 <= size) {
                    size--;
                }
            }
            z2 = false;
            z3 = false;
        }
        StoryViewer orCreateStoryViewer = this.fragment.getOrCreateStoryViewer();
        orCreateStoryViewer.doOnAnimationReady(new Runnable() { // from class: org.telegram.ui.Stories.DialogStoriesCell$$ExternalSyntheticLambda18
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$openStoryForCell$3(j);
            }
        });
        orCreateStoryViewer.open(getContext(), null, arrayList, size, null, null, StoriesListPlaceProvider.of(this.recyclerListView).with(new StoriesListPlaceProvider.LoadNextInterface() { // from class: org.telegram.ui.Stories.DialogStoriesCell$$ExternalSyntheticLambda19
            @Override // org.telegram.ui.Stories.StoriesListPlaceProvider.LoadNextInterface
            public final void loadNext(boolean z4) {
                this.f$0.lambda$openStoryForCell$4(z2, z4);
            }
        }).setPaginationParaments(this.type == 1, z3, z2), false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openStoryForCell$3(long j) {
        this.storiesController.setLoading(j, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openStoryForCell$4(boolean z, boolean z2) {
        if (!z && z2) {
            this.storiesController.loadNextStories(this.type == 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkLoadMore() {
        if (this.layoutManager.findLastVisibleItemPosition() + 10 > this.items.size() || isReadAtPosition(this.layoutManager.findLastVisibleItemPosition() + 9)) {
            this.storiesController.loadNextStories(this.type == 1);
        }
    }

    private boolean isReadAtPosition(int i) {
        return i < this.items.size() && this.storiesController.getUnreadState(((Item) this.items.get(i)).dialogId) == 0;
    }

    public float getOverScrollCoef() {
        return this.overScrollCoef;
    }

    public void updateItems(boolean z, boolean z2) {
        CharSequence pluralString;
        if ((this.currentState == 1 || this.overscrollProgress != 0.0f) && !z2) {
            this.updateOnIdleState = true;
            return;
        }
        this.oldItems.clear();
        this.oldItems.addAll(this.items);
        this.oldMiniItems.clear();
        this.oldMiniItems.addAll(this.miniItems);
        this.items.clear();
        if (this.type != 1) {
            this.items.add(new Item(UserConfig.getInstance(this.currentAccount).getClientUserId()));
        }
        ArrayList hiddenList = this.type == 1 ? this.storiesController.getHiddenList() : this.storiesController.getDialogListStories();
        for (int i = 0; i < hiddenList.size(); i++) {
            long peerDialogId = DialogObject.getPeerDialogId(((TL_stories.PeerStories) hiddenList.get(i)).peer);
            if (peerDialogId != UserConfig.getInstance(this.currentAccount).getClientUserId()) {
                this.items.add(new Item(peerDialogId));
            }
        }
        int size = this.items.size();
        if (!this.storiesController.hasSelfStories()) {
            size--;
        }
        int iMax = Math.max(1, Math.max(this.storiesController.getTotalStoriesCount(this.type == 1), size));
        if (this.type == 0) {
            pluralString = getDialogsMainTitle();
        } else {
            pluralString = LocaleController.formatPluralString("Stories", iMax, new Object[0]);
        }
        this.currentTitle = pluralString;
        if (!this.hasOverlayText) {
            this.titleView.setText(pluralString, z && !LocaleController.isRTL);
        }
        this.animatorHasTitleText.setValue(true, z);
        this.miniItems.clear();
        for (int i2 = 0; i2 < this.items.size(); i2++) {
            if (((Item) this.items.get(i2)).dialogId != UserConfig.getInstance(this.currentAccount).clientUserId || shouldDrawSelfInMini()) {
                this.miniItems.add((Item) this.items.get(i2));
                if (this.miniItems.size() >= 3) {
                    break;
                }
            }
        }
        if (z) {
            if (this.currentState == 2) {
                this.listViewMini.setItemAnimator(this.miniItemAnimator);
                this.recyclerListView.setItemAnimator(null);
            } else {
                this.recyclerListView.setItemAnimator(this.itemAnimator);
                this.listViewMini.setItemAnimator(null);
            }
        } else {
            this.recyclerListView.setItemAnimator(null);
            this.listViewMini.setItemAnimator(null);
        }
        this.adapter.setItems(this.oldItems, this.items);
        this.miniAdapter.setItems(this.oldMiniItems, this.miniItems);
        this.oldItems.clear();
        invalidate();
    }

    private boolean shouldDrawSelfInMini() {
        if (this.storiesController.hasUnreadStories(UserConfig.getInstance(this.currentAccount).clientUserId)) {
            return true;
        }
        return this.storiesController.hasSelfStories() && this.storiesController.getDialogListStories().size() <= 3;
    }

    public static /* synthetic */ int $r8$lambda$mrKyDE7kqyAfP266l3FH_xwibtA(StoryCell storyCell, StoryCell storyCell2) {
        return storyCell2.position - storyCell.position;
    }

    /* JADX WARN: Removed duplicated region for block: B:108:0x0338  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x03ae  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x03b1  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x03ba  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x03d5  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x042d  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x0470  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x0499  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void dispatchDraw(Canvas canvas) {
        int childAdapterPosition;
        float f;
        int i;
        float f2;
        float f3;
        float f4;
        float f5;
        int i2;
        float f6;
        boolean z;
        boolean z2;
        float f7;
        double d;
        float f8;
        float f9;
        float f10;
        float fDp;
        float f11;
        float fLerp;
        float f12;
        float f13;
        float fLerp2;
        float fLerp3;
        float f14;
        double dPow;
        int childAdapterPosition2;
        canvas.save();
        int i3 = this.clipTop;
        boolean z3 = false;
        if (i3 > 0) {
            canvas.clipRect(0, i3, getMeasuredWidth(), getMeasuredHeight());
        }
        float measuredHeight = (getMeasuredHeight() - ActionBar.getCurrentActionBarHeight()) - AndroidUtilities.dp(4.0f);
        float fLerp4 = AndroidUtilities.lerp(0.0f, measuredHeight, this.collapsedProgress1);
        this.recyclerListView.setTranslationY(fLerp4);
        this.listViewMini.setTranslationY(fLerp4);
        this.listViewMini.setTranslationX(this.menuItemsOffset);
        for (int i4 = 0; i4 < this.viewsDrawInParent.size(); i4++) {
            ((StoryCell) this.viewsDrawInParent.get(i4)).drawInParent = false;
        }
        this.viewsDrawInParent.clear();
        int i5 = this.currentState;
        int i6 = -1;
        if ((i5 == 1 || i5 == 0) && !this.animateToDialogIds.isEmpty()) {
            childAdapterPosition = -1;
            for (int i7 = 0; i7 < this.recyclerListView.getChildCount(); i7++) {
                StoryCell storyCell = (StoryCell) this.recyclerListView.getChildAt(i7);
                if (storyCell.dialogId == ((Long) this.animateToDialogIds.get(0)).longValue()) {
                    childAdapterPosition = this.recyclerListView.getChildAdapterPosition(storyCell);
                }
            }
        } else {
            childAdapterPosition = this.currentState == 2 ? 0 : -1;
        }
        int i8 = this.currentState;
        if (i8 >= 0 && i8 != 2) {
            if (childAdapterPosition == -1) {
                childAdapterPosition = this.layoutManager.findFirstCompletelyVisibleItemPosition();
                if (childAdapterPosition == -1) {
                    childAdapterPosition = this.layoutManager.findFirstVisibleItemPosition();
                }
                z = true;
            } else {
                z = false;
            }
            f = 4.0f;
            f2 = 16.0f;
            this.recyclerListView.setAlpha(1.0f - Utilities.clamp(this.collapsedProgress / this.f1538K, 1.0f, 0.0f));
            this.overscrollSelectedPosition = -1;
            if (this.overscrollProgress != 0.0f) {
                int i9 = 0;
                int i10 = -1;
                while (i9 < this.recyclerListView.getChildCount()) {
                    View childAt = this.recyclerListView.getChildAt(i9);
                    if (childAt.getX() >= 0.0f && childAt.getX() + childAt.getMeasuredWidth() <= getMeasuredWidth() && (childAdapterPosition2 = this.recyclerListView.getChildAdapterPosition(childAt)) >= 0 && ((i10 == i6 || childAdapterPosition2 < i10) && ((Item) this.items.get(childAdapterPosition2)).dialogId != UserConfig.getInstance(this.currentAccount).clientUserId)) {
                        this.overscrollSelectedView = (StoryCell) childAt;
                        i10 = childAdapterPosition2;
                    }
                    i9++;
                    i6 = -1;
                }
                f3 = 2.0f;
                this.overscrollSelectedPosition = i10;
            } else {
                f3 = 2.0f;
            }
            int i11 = 0;
            f4 = 0.0f;
            while (i11 < this.recyclerListView.getChildCount()) {
                StoryCell storyCell2 = (StoryCell) this.recyclerListView.getChildAt(i11);
                storyCell2.setClipInParent(z3);
                int childAdapterPosition3 = this.recyclerListView.getChildAdapterPosition(storyCell2);
                float fPow = this.collapsedProgress;
                int i12 = i11;
                if (childAdapterPosition3 < childAdapterPosition || childAdapterPosition3 >= this.animateToDialogIds.size() + childAdapterPosition) {
                    z2 = z;
                } else {
                    int i13 = childAdapterPosition3 - childAdapterPosition;
                    if (i13 == childAdapterPosition + 2) {
                        fPow = this.collapsedProgress;
                        z2 = z;
                    } else {
                        if (i13 == childAdapterPosition + 1) {
                            z2 = z;
                            dPow = Math.pow(this.collapsedProgress, 0.5d);
                        } else {
                            z2 = z;
                            dPow = Math.pow(this.collapsedProgress, 0.25d);
                        }
                        fPow = (float) dPow;
                    }
                }
                if (childAdapterPosition3 < childAdapterPosition) {
                    fPow = (float) Math.pow(this.collapsedProgress, 0.25d);
                }
                storyCell2.setProgressToCollapsed(fPow, this.collapsedProgress2, this.overscrollProgress, this.overscrollSelectedPosition == storyCell2.position);
                if (childAdapterPosition3 > childAdapterPosition && childAdapterPosition3 < this.animateToDialogIds.size() + childAdapterPosition) {
                    StoryCell storyCell3 = (StoryCell) this.recyclerListView.getChildAt(i12 - 1);
                    if (storyCell3 != null) {
                        float fDp2 = AndroidUtilities.dp(48.0f);
                        float fDp3 = AndroidUtilities.dp(26.33f);
                        d = 0.5d;
                        float fLerp5 = AndroidUtilities.lerp(fDp2, fDp3, storyCell3.progressToCollapsed) + AndroidUtilities.dp(8.0f);
                        float fLerp6 = (AndroidUtilities.lerp(fDp2, fDp3, storyCell2.progressToCollapsed) + AndroidUtilities.dp(8.0f)) / f3;
                        float fCenterX = storyCell3.params.originalAvatarRect.centerX() + storyCell3.getX();
                        float fCenterY = storyCell3.params.originalAvatarRect.centerY() + storyCell3.getY();
                        float fCenterX2 = (storyCell2.params.originalAvatarRect.centerX() + storyCell2.getX()) - fCenterX;
                        float fCenterY2 = (storyCell2.params.originalAvatarRect.centerY() + storyCell2.getY()) - fCenterY;
                        float f15 = measuredHeight;
                        if (((float) Math.sqrt((fCenterX2 * fCenterX2) + (fCenterY2 * fCenterY2))) < (fLerp5 / f3) + fLerp6) {
                            float degrees = (float) Math.toDegrees(Math.acos(r2 / r14) * 2.0d);
                            f7 = f15;
                            f8 = f4;
                            float degrees2 = (float) Math.toDegrees(Math.atan2(fCenterY2, fCenterX2));
                            float f16 = degrees / f3;
                            StoriesUtilities.AvatarStoryParams avatarStoryParams = storyCell3.params;
                            avatarStoryParams.rightTopAngleToExclude = degrees2 - f16;
                            avatarStoryParams.rightBottomAngleToExclude = degrees2 + f16;
                            float degrees3 = (float) Math.toDegrees(Math.atan2(-fCenterY2, -fCenterX2));
                            float f17 = -Math.abs(degrees3 - f16);
                            float fAbs = Math.abs(degrees3 + f16);
                            StoriesUtilities.AvatarStoryParams avatarStoryParams2 = storyCell2.params;
                            avatarStoryParams2.leftTopAngleToExclude = f17;
                            avatarStoryParams2.leftBottomAngleToExclude = fAbs;
                        } else {
                            f7 = f15;
                            f8 = f4;
                            StoriesUtilities.AvatarStoryParams avatarStoryParams3 = storyCell3.params;
                            avatarStoryParams3.rightTopAngleToExclude = 0.0f;
                            avatarStoryParams3.rightBottomAngleToExclude = 0.0f;
                            StoriesUtilities.AvatarStoryParams avatarStoryParams4 = storyCell2.params;
                            avatarStoryParams4.leftTopAngleToExclude = 0.0f;
                            avatarStoryParams4.leftBottomAngleToExclude = 0.0f;
                        }
                        storyCell3.params.useArcProgress = false;
                        storyCell2.params.useArcProgress = false;
                    } else {
                        f7 = measuredHeight;
                        d = 0.5d;
                        f8 = f4;
                    }
                    f9 = 0.0f;
                } else {
                    f7 = measuredHeight;
                    d = 0.5d;
                    f8 = f4;
                    StoriesUtilities.AvatarStoryParams avatarStoryParams5 = storyCell2.params;
                    f9 = 0.0f;
                    avatarStoryParams5.rightTopAngleToExclude = 0.0f;
                    avatarStoryParams5.rightBottomAngleToExclude = 0.0f;
                    avatarStoryParams5.leftTopAngleToExclude = 0.0f;
                    avatarStoryParams5.leftBottomAngleToExclude = 0.0f;
                    avatarStoryParams5.useArcProgress = false;
                }
                float fClamp = Utilities.clamp((this.overscrollProgress - 0.5f) / 0.5f, 1.0f, f9);
                float fDp4 = AndroidUtilities.dp(16.0f) * fClamp;
                float f18 = (float) (((double) ((1.0f - fClamp) * 0.5f)) + d);
                if (childAdapterPosition3 <= childAdapterPosition) {
                    f10 = 0.0f;
                    fDp = 0.0f;
                } else if (childAdapterPosition3 == childAdapterPosition + 1) {
                    fDp = AndroidUtilities.lerp(AndroidUtilities.dp(16.0f), 0.0f, this.collapsedProgress) + ((AndroidUtilities.dp(16.0f) * fPow) - AndroidUtilities.dpf2(0.5f));
                    f10 = 0.0f;
                } else {
                    f10 = 0.0f;
                    fDp = ((AndroidUtilities.dp(16.0f) + (AndroidUtilities.dp(16.0f) * fPow)) - AndroidUtilities.dpf2(0.5f)) + AndroidUtilities.lerp(AndroidUtilities.dp(32.0f), 0.0f, this.collapsedProgress);
                }
                float f19 = fDp + this.menuItemsOffset;
                if (this.collapsed) {
                    f11 = 0.0f;
                    fLerp = AndroidUtilities.lerp(0.0f, f19 - storyCell2.getLeft(), this.storiesCollapseInterpolator.getInterpolation(this.collapsedOvershootProgress));
                } else if (this.overscrollProgress > f10) {
                    int i14 = storyCell2.position;
                    int i15 = this.overscrollSelectedPosition;
                    if (i14 < i15) {
                        f14 = -fDp4;
                    } else if (i14 > i15) {
                        f14 = fDp4;
                    }
                    fLerp = AndroidUtilities.lerp(f19 - storyCell2.getLeft(), f14, 1.0f - this.expandOvershootAnimatorProgress);
                    f11 = 0.0f;
                } else {
                    f14 = 0.0f;
                    fLerp = AndroidUtilities.lerp(f19 - storyCell2.getLeft(), f14, 1.0f - this.expandOvershootAnimatorProgress);
                    f11 = 0.0f;
                }
                float fClamp2 = MathUtils.clamp((this.collapsedProgress1 - 0.2f) / 0.1f, f11, 1.0f);
                int i16 = childAdapterPosition3 - childAdapterPosition;
                if (i16 == 0) {
                    f12 = 0.65f;
                    fLerp2 = AndroidUtilities.lerp(f11, fLerp4 - f7, CubicBezierInterpolator.EASE_OUT_QUINT.getInterpolation(this.collapsedProgress));
                } else {
                    f12 = 0.65f;
                    if (i16 == 1) {
                        fLerp2 = AndroidUtilities.lerp(f11, (fLerp4 - f7) * 0.65f, CubicBezierInterpolator.EASE_OUT_QUINT.getInterpolation(this.collapsedProgress));
                    } else {
                        f13 = f11;
                        float f20 = (storyCell2.position == this.overscrollSelectedPosition || this.overscrollProgress <= f11) ? 0.0f : (-fDp4) / f3;
                        if (i16 != 0) {
                            fLerp3 = AndroidUtilities.lerp(f20, fLerp4 - f7, this.yStoriesProgress);
                        } else {
                            fLerp3 = i16 == 1 ? AndroidUtilities.lerp(f20, (fLerp4 - f7) * f12, this.yStoriesProgress) : 0.0f;
                        }
                        float fLerp7 = AndroidUtilities.lerp(fLerp3, f13, fClamp2);
                        if (this.collapsedProgress <= 0.0f) {
                            boolean z4 = childAdapterPosition3 >= childAdapterPosition && childAdapterPosition3 <= childAdapterPosition + 2;
                            if (z2 && i16 >= 0 && i16 < this.animateToDialogIds.size()) {
                                storyCell2.setCrossfadeTo(((Long) this.animateToDialogIds.get(i16)).longValue());
                            } else {
                                storyCell2.setCrossfadeTo(-1L);
                            }
                            storyCell2.drawInParent = z4;
                            storyCell2.isFirst = childAdapterPosition3 == childAdapterPosition;
                            storyCell2.isLast = childAdapterPosition3 >= (this.animateToDialogIds.size() + childAdapterPosition) + (-1);
                            storyCell2.setTranslationX(fLerp);
                            storyCell2.setTranslationY(fLerp7);
                            if (z4) {
                                this.viewsDrawInParent.add(storyCell2);
                            }
                        } else if (this.recyclerListView.getItemAnimator() == null || !this.recyclerListView.getItemAnimator().isRunning()) {
                            if (this.overscrollProgress > 0.0f) {
                                int i17 = storyCell2.position;
                                int i18 = this.overscrollSelectedPosition;
                                if (i17 < i18 || i17 > i18) {
                                    storyCell2.setAlpha(f18);
                                } else {
                                    storyCell2.setAlpha(1.0f);
                                }
                            } else {
                                storyCell2.setAlpha(1.0f);
                            }
                            storyCell2.setTranslationX(fLerp);
                            storyCell2.setTranslationY(fLerp7);
                        }
                        if (!storyCell2.drawInParent) {
                            float x = this.recyclerListView.getX() + storyCell2.getX() + (storyCell2.getMeasuredWidth() / f3) + (AndroidUtilities.dp(70.0f) / f3);
                            f4 = (f8 == 0.0f || x > f8) ? x : f8;
                        }
                        i11 = i12 + 1;
                        z = z2;
                        measuredHeight = f7;
                        z3 = false;
                    }
                }
                f13 = fLerp2;
                if (storyCell2.position == this.overscrollSelectedPosition) {
                }
                if (i16 != 0) {
                }
                float fLerp72 = AndroidUtilities.lerp(fLerp3, f13, fClamp2);
                if (this.collapsedProgress <= 0.0f) {
                }
                if (!storyCell2.drawInParent) {
                }
                i11 = i12 + 1;
                z = z2;
                measuredHeight = f7;
                z3 = false;
            }
            i = 1;
        } else {
            f = 4.0f;
            i = 1;
            f2 = 16.0f;
            f3 = 2.0f;
            f4 = 0.0f;
            for (int i19 = 0; i19 < this.listViewMini.getChildCount(); i19++) {
                float x2 = this.listViewMini.getX() + ((StoryCell) this.listViewMini.getChildAt(i19)).getX() + r2.getMeasuredWidth();
                if (f4 == 0.0f || x2 > f4) {
                    f4 = x2;
                }
            }
        }
        if (this.premiumHint != null) {
            float fLerp8 = AndroidUtilities.lerp(29, 74, CubicBezierInterpolator.EASE_OUT.getInterpolation(this.collapsedProgress));
            if (this.recyclerListView.getChildCount() > 0) {
                fLerp8 += this.recyclerListView.getChildAt(0).getLeft();
            }
            f5 = 0.0f;
            this.premiumHint.setJoint(0.0f, fLerp8);
        } else {
            f5 = 0.0f;
        }
        float fMin = Math.min(this.collapsedProgress, this.collapsedProgress2);
        if (fMin != f5) {
            float totalVisibility = this.subtitleOverlayContainer.getTotalVisibility() * (-AndroidUtilities.dp(10.0f));
            float fLerp9 = AndroidUtilities.lerp(1.0f, 0.95f, this.subtitleOverlayContainer.getTotalVisibility());
            float fDp5 = (((AndroidUtilities.dp(19.0f) + fLerp4) - ((this.titleView.getMeasuredHeight() - this.titleView.getTextHeight()) / f3)) + AndroidUtilities.dp(f)) - (AndroidUtilities.dp(6.0f) * this.subtitleOverlayContainer.getTotalVisibility());
            this.titleView.setPivotX(0.0f);
            this.titleView.setScaleX(fLerp9);
            this.titleView.setScaleY(fLerp9);
            this.titleView.setTranslationY(fDp5);
            float avatarRight = f4 + (-r6) + getAvatarRight(AndroidUtilities.dp(72.0f), this.collapsedProgress) + AndroidUtilities.dp(f2);
            float fDp6 = AndroidUtilities.dp(10.0f) * (this.titleOverrideForward ? -1 : i);
            this.titleView.setTranslationX((this.titleOverrideAnimator != null ? (-fDp6) * (1.0f - this.titleOverrideProgress) : 0.0f) + avatarRight);
            this.titleView.getDrawable().setRightPadding((avatarRight - AndroidUtilities.dp(12.0f)) + (this.actionBar.menu.getVisibleItemsMeasuredWidthWithAlpha() * fMin));
            this.titleView.setAlpha(this.titleOverrideProgress * fMin);
            this.titleViewOut.setPivotX(0.0f);
            this.titleViewOut.setScaleX(fLerp9);
            this.titleViewOut.setScaleY(fLerp9);
            this.titleViewOut.setTranslationY(fDp5);
            if (this.titleOverrideAnimator != null) {
                this.titleViewOut.setTranslationX((fDp6 * this.titleOverrideProgress) + avatarRight);
                this.titleViewOut.getDrawable().setRightPadding((avatarRight - AndroidUtilities.dp(12.0f)) + (this.actionBar.menu.getVisibleItemsMeasuredWidthWithAlpha() * fMin));
                this.titleViewOut.setAlpha((1.0f - this.titleOverrideProgress) * fMin);
                i2 = 0;
                this.titleViewOut.setVisibility(0);
                f6 = 0.0f;
            } else {
                i2 = 0;
                f6 = 0.0f;
                this.titleViewOut.setAlpha(0.0f);
                this.titleViewOut.setVisibility(8);
            }
            this.emojiStatusView.setTranslationX(this.titleView.getTranslationX() + this.titleView.getMeasuredWidth() + AndroidUtilities.dp(f));
            this.emojiStatusView.setTranslationY(AndroidUtilities.dp(11.333f) + fLerp4 + totalVisibility);
            this.emojiStatusView.setTranslationY(AndroidUtilities.dp(11.333f) + fLerp4 + totalVisibility);
            this.emojiStatusView.setAlpha(this.hasOverlayText ? f6 : fMin * this.titleOverrideProgress);
            this.subtitleOverlayContainer.setTranslationX(this.titleView.getTranslationX());
            this.subtitleOverlayContainer.setTranslationY(fLerp4 + AndroidUtilities.dp(36.333f));
        } else {
            i2 = 0;
        }
        super.dispatchDraw(canvas);
        int i20 = this.currentState;
        if (i20 >= 0 && i20 != 2) {
            Collections.sort(this.viewsDrawInParent, this.comparator);
            for (int i21 = i2; i21 < this.viewsDrawInParent.size(); i21++) {
                StoryCell storyCell4 = (StoryCell) this.viewsDrawInParent.get(i21);
                canvas.save();
                canvas.translate(this.recyclerListView.getX() + storyCell4.getX(), this.recyclerListView.getY() + storyCell4.getY());
                storyCell4.draw(canvas);
                canvas.restore();
            }
        }
        canvas.restore();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        updateItems(false, false);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.storiesUpdated);
        this.ellipsizeSpanAnimator.onAttachedToWindow();
        this.statusDrawable.attach();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.storiesUpdated);
        this.ellipsizeSpanAnimator.onDetachedFromWindow();
        StoriesUtilities.EnsureStoryFileLoadedObject ensureStoryFileLoadedObject = this.globalCancelable;
        if (ensureStoryFileLoadedObject != null) {
            ensureStoryFileLoadedObject.cancel();
            this.globalCancelable = null;
        }
        this.statusDrawable.detach();
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        float fDp = AndroidUtilities.dp((AndroidUtilities.isTablet() || getResources().getConfiguration().orientation != 2) ? 20.0f : 18.0f);
        this.titleView.setTextSize(fDp);
        this.titleViewOut.setTextSize(fDp);
        this.currentCellWidth = AndroidUtilities.dp(70.0f);
        AndroidUtilities.rectTmp.set(0.0f, 0.0f, getMeasuredWidth(), getMeasuredHeight());
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(89.0f), TLObject.FLAG_30));
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.storiesUpdated && this.allowGlobalUpdates) {
            updateItems(getVisibility() == 0, false);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.DialogStoriesCell$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.checkLoadMore();
                }
            });
        }
    }

    public void setProgressToCollapse(float f) {
        setProgressToCollapse(f, true);
    }

    public void setProgressToCollapse(float f, boolean z) {
        if (this.collapsedProgress1 == f) {
            return;
        }
        this.collapsedProgress1 = f;
        checkCollapsedProgress();
        final boolean z2 = f > this.f1538K;
        if (z2 != this.collapsed) {
            this.collapsed = z2;
            AnimatorSet animatorSet = this.storiesAnimatorSet;
            if (animatorSet != null) {
                animatorSet.removeAllListeners();
                this.storiesAnimatorSet.cancel();
                this.storiesAnimatorSet = null;
            }
            if (z) {
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.collapsedProgress2, z2 ? 1.0f : 0.0f);
                this.valueAnimator = valueAnimatorOfFloat;
                valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.DialogStoriesCell$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        this.f$0.lambda$setProgressToCollapse$7(valueAnimator);
                    }
                });
                this.valueAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
                float f2 = this.collapsedProgress1;
                ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(f2, z2 ? f2 : 0.0f);
                this.yStoriesAnimator = valueAnimatorOfFloat2;
                valueAnimatorOfFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.DialogStoriesCell$$ExternalSyntheticLambda1
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        this.f$0.lambda$setProgressToCollapse$8(valueAnimator);
                    }
                });
                this.yStoriesAnimator.setDuration(100L);
                AnimatorSet animatorSet2 = new AnimatorSet();
                this.storiesAnimatorSet = animatorSet2;
                animatorSet2.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.DialogStoriesCell.10
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        DialogStoriesCell.this.collapsedProgress2 = z2 ? 1.0f : 0.0f;
                        DialogStoriesCell.this.checkCollapsedProgress();
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                        super.onAnimationStart(animator);
                        try {
                            DialogStoriesCell.this.performHapticFeedback(3);
                        } catch (Exception unused) {
                        }
                    }
                });
                ArrayList arrayList = new ArrayList();
                arrayList.add(this.valueAnimator);
                arrayList.add(this.yStoriesAnimator);
                if (this.collapsed) {
                    this.storiesAnimatorSet.setDuration(1000L);
                    ValueAnimator valueAnimatorOfFloat3 = ValueAnimator.ofFloat(this.collapsedProgress2, z2 ? 1.0f : 0.0f);
                    this.collapsedOvershootAnimator = valueAnimatorOfFloat3;
                    valueAnimatorOfFloat3.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.DialogStoriesCell$$ExternalSyntheticLambda2
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                            this.f$0.lambda$setProgressToCollapse$9(valueAnimator);
                        }
                    });
                    OvershootInterpolator overshootInterpolator = new OvershootInterpolator(this.collapsedSpringCoef);
                    this.storiesCollapseInterpolator = overshootInterpolator;
                    this.collapsedOvershootAnimator.setInterpolator(overshootInterpolator);
                    this.collapsedOvershootAnimator.setDuration(750L);
                    arrayList.add(this.collapsedOvershootAnimator);
                } else {
                    this.expandOvershootAnimator = ValueAnimator.ofFloat(this.collapsedProgress2, z2 ? 1.0f : 0.0f);
                    OvershootInterpolator overshootInterpolator2 = new OvershootInterpolator(this.expandedSpringCoef);
                    this.storiesExpandInterpolator = overshootInterpolator2;
                    this.expandOvershootAnimator.setInterpolator(overshootInterpolator2);
                    this.expandOvershootAnimator.setDuration(350L);
                    this.expandOvershootAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.DialogStoriesCell$$ExternalSyntheticLambda3
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                            this.f$0.lambda$setProgressToCollapse$10(valueAnimator);
                        }
                    });
                    arrayList.add(this.expandOvershootAnimator);
                }
                this.storiesAnimatorSet.playTogether(arrayList);
                this.storiesAnimatorSet.start();
                return;
            }
            this.collapsedProgress2 = z2 ? 1.0f : 0.0f;
            checkCollapsedProgress();
            AndroidUtilities.forEachViews((RecyclerView) this.recyclerListView, new Consumer() { // from class: org.telegram.ui.Stories.DialogStoriesCell$$ExternalSyntheticLambda4
                @Override // com.google.android.exoplayer2.util.Consumer
                public final void accept(Object obj) {
                    ((View) obj).setTranslationY(0.0f);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setProgressToCollapse$7(ValueAnimator valueAnimator) {
        this.collapsedProgress2 = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        checkCollapsedProgress();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setProgressToCollapse$8(ValueAnimator valueAnimator) {
        this.yStoriesProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setProgressToCollapse$9(ValueAnimator valueAnimator) {
        this.collapsedOvershootProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setProgressToCollapse$10(ValueAnimator valueAnimator) {
        this.expandOvershootAnimatorProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkCollapsedProgress() {
        this.collapsedProgress = 1.0f - AndroidUtilities.lerp(1.0f - this.collapsedProgress1, 1.0f, 1.0f - this.collapsedProgress2);
        checkUi_titleVisibility();
        float f = this.collapsedProgress;
        updateCurrentState(f == 1.0f ? 2 : f != 0.0f ? 1 : 0);
        invalidate();
    }

    public float getCollapsedProgress() {
        return this.collapsedProgress;
    }

    public void scrollToFirstCell() {
        this.layoutManager.scrollToPositionWithOffset(0, 0);
    }

    public void updateColors() {
        StoriesUtilities.updateColors();
        final int textColor = getTextColor();
        this.titleView.setTextColor(getTextLogoColor());
        this.titleViewOut.setTextColor(getTextLogoColor());
        ActionBarAnimatedSubtitleOverlayContainer actionBarAnimatedSubtitleOverlayContainer = this.subtitleOverlayContainer;
        if (actionBarAnimatedSubtitleOverlayContainer != null) {
            actionBarAnimatedSubtitleOverlayContainer.updateColors();
        }
        AndroidUtilities.forEachViews((RecyclerView) this.recyclerListView, new Consumer() { // from class: org.telegram.ui.Stories.DialogStoriesCell$$ExternalSyntheticLambda12
            @Override // com.google.android.exoplayer2.util.Consumer
            public final void accept(Object obj) {
                DialogStoriesCell.$r8$lambda$Elfeqd_jiE4bOsxLma6AIZYknaU(textColor, (View) obj);
            }
        });
        AndroidUtilities.forEachViews((RecyclerView) this.listViewMini, new Consumer() { // from class: org.telegram.ui.Stories.DialogStoriesCell$$ExternalSyntheticLambda13
            @Override // com.google.android.exoplayer2.util.Consumer
            public final void accept(Object obj) {
                ((DialogStoriesCell.StoryCell) ((View) obj)).invalidate();
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$Elfeqd_jiE4bOsxLma6AIZYknaU(int i, View view) {
        StoryCell storyCell = (StoryCell) view;
        storyCell.invalidate();
        storyCell.textView.setTextColor(i);
    }

    private int getTextLogoColor() {
        return getThemedColor(Theme.key_telegram_color_dialogsLogo);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getTextColor() {
        if (this.type == 0) {
            return getThemedColor(Theme.key_actionBarDefaultTitle);
        }
        return getThemedColor(Theme.key_actionBarDefaultArchivedTitle);
    }

    public boolean scrollTo(long j) {
        int i = 0;
        while (true) {
            if (i >= this.items.size()) {
                i = -1;
                break;
            }
            if (((Item) this.items.get(i)).dialogId == j) {
                break;
            }
            i++;
        }
        if (i >= 0) {
            if (i < this.layoutManager.findFirstCompletelyVisibleItemPosition()) {
                this.layoutManager.scrollToPositionWithOffset(i, 0);
                return true;
            }
            if (i > this.layoutManager.findLastCompletelyVisibleItemPosition()) {
                this.layoutManager.scrollToPositionWithOffset(i, 0, true);
                return true;
            }
        }
        return false;
    }

    public void afterNextLayout(Runnable runnable) {
        this.afterNextLayout.add(runnable);
    }

    public boolean isExpanded() {
        int i = this.currentState;
        return i == 0 || i == 1;
    }

    public boolean isFullExpanded() {
        return this.currentState == 0;
    }

    public boolean scrollToFirst() {
        if (this.layoutManager.findFirstVisibleItemPosition() == 0) {
            return false;
        }
        this.recyclerListView.smoothScrollToPosition(0);
        return true;
    }

    public void openStoryRecorder() {
        openStoryRecorder(0L);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0055, code lost:
    
        r5 = r3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void openStoryRecorder(final long j) {
        final StoryCell storyCell;
        StoriesController.StoryLimit storyLimitCheckStoryLimit;
        if (j == 0 && (storyLimitCheckStoryLimit = MessagesController.getInstance(this.currentAccount).getStoriesController().checkStoryLimit()) != null && storyLimitCheckStoryLimit.active(this.currentAccount)) {
            this.fragment.showDialog(new LimitReachedBottomSheet(this.fragment, getContext(), storyLimitCheckStoryLimit.getLimitReachedType(), this.currentAccount, null));
            return;
        }
        int i = 0;
        while (true) {
            if (i >= this.recyclerListView.getChildCount()) {
                storyCell = null;
                break;
            }
            StoryCell storyCell2 = (StoryCell) this.recyclerListView.getChildAt(i);
            if (j == 0) {
                if (storyCell2.isSelf) {
                    break;
                } else {
                    i++;
                }
            } else if (storyCell2.dialogId == j) {
                break;
            } else {
                i++;
            }
        }
        if (storyCell == null) {
            return;
        }
        if (j != 0) {
            BaseFragment baseFragment = this.fragment;
            Theme.ResourcesProvider resourceProvider = baseFragment != null ? baseFragment.getResourceProvider() : null;
            final AlertDialog alertDialog = new AlertDialog(getContext(), 3, resourceProvider);
            alertDialog.showDelayed(500L);
            MessagesController.getInstance(this.currentAccount).getStoriesController().canSendStoryFor(j, new Consumer() { // from class: org.telegram.ui.Stories.DialogStoriesCell$$ExternalSyntheticLambda20
                @Override // com.google.android.exoplayer2.util.Consumer
                public final void accept(Object obj) {
                    this.f$0.lambda$openStoryRecorder$14(alertDialog, j, storyCell, (Boolean) obj);
                }
            }, true, resourceProvider);
            return;
        }
        StoryRecorder.getInstance(this.fragment.getParentActivity(), this.currentAccount).open(StoryRecorder.SourceView.fromStoryCell(storyCell));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openStoryRecorder$14(AlertDialog alertDialog, long j, StoryCell storyCell, Boolean bool) {
        alertDialog.dismiss();
        if (bool.booleanValue()) {
            StoryRecorder.getInstance(this.fragment.getParentActivity(), this.currentAccount).selectedPeerId(j).canChangePeer(false).open(StoryRecorder.SourceView.fromStoryCell(storyCell));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0087  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setTitleOverlayText(String str, int i) {
        boolean z;
        CharSequence charSequence;
        int iIndexOf;
        cancelTitleOverrideAnimation();
        this.subtitleOverlayContainer.setText(i == C2484R.string.ConnectingToProxyWithDots ? AndroidUtilities.replaceArrows(LocaleController.getString(C2484R.string.TitleSetupProxy), true, AndroidUtilities.dp(2.6666667f), AndroidUtilities.dp(2.0f)) : null, true);
        if (str != null) {
            this.hasOverlayText = true;
            if (this.overlayTextId != i) {
                this.overlayTextId = i;
                String string = LocaleController.getString(str, i);
                if (TextUtils.isEmpty(string) || (iIndexOf = TextUtils.indexOf(string, "...")) < 0) {
                    z = false;
                    charSequence = string;
                } else {
                    SpannableString spannableStringValueOf = SpannableString.valueOf(string);
                    this.ellipsizeSpanAnimator.wrap(spannableStringValueOf, iIndexOf);
                    z = true;
                    charSequence = spannableStringValueOf;
                }
                this.titleView.setText(charSequence, !LocaleController.isRTL);
            }
            this.titleViewOut.setText(null, false);
            this.titleViewOut.setVisibility(8);
            this.animatorHasTitleText.setValue(this.hasOverlayText, true);
            if (!z) {
                this.ellipsizeSpanAnimator.addView(this.titleView);
                return;
            } else {
                this.ellipsizeSpanAnimator.removeView(this.titleView);
                return;
            }
        }
        this.hasOverlayText = false;
        this.overlayTextId = 0;
        this.titleView.setText(this.currentTitle, !LocaleController.isRTL);
        z = false;
        this.titleViewOut.setText(null, false);
        this.titleViewOut.setVisibility(8);
        this.animatorHasTitleText.setValue(this.hasOverlayText, true);
        if (!z) {
        }
    }

    public void setClipTop(int i) {
        if (i < 0) {
            i = 0;
        }
        if (this.clipTop != i) {
            this.clipTop = i;
            invalidate();
        }
    }

    public void openSelfStories() {
        if (this.storiesController.hasSelfStories()) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(Long.valueOf(UserConfig.getInstance(this.currentAccount).clientUserId));
            this.fragment.getOrCreateStoryViewer().open(getContext(), null, arrayList, 0, null, null, StoriesListPlaceProvider.of(this.listViewMini), false);
        }
    }

    public void onResume() {
        this.storiesController.checkExpiredStories();
        for (int i = 0; i < this.items.size(); i++) {
            TL_stories.PeerStories stories = this.storiesController.getStories(((Item) this.items.get(i)).dialogId);
            if (stories != null) {
                this.storiesController.preloadUserStories(stories);
            }
        }
    }

    public void setOverscroll(float f) {
        this.overscrollProgress = f / AndroidUtilities.dp(90.0f);
        invalidate();
        this.recyclerListView.invalidate();
    }

    public boolean openOverscrollSelectedStory() {
        ValueAnimator valueAnimator = this.expandOvershootAnimator;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            return false;
        }
        openStoryForCell(this.overscrollSelectedView, true);
        return true;
    }

    public void setActionBar(ActionBar actionBar) {
        this.actionBar = actionBar;
    }

    public void setDialogsTitleOverride(CharSequence charSequence, boolean z) {
        setDialogsTitleOverride(charSequence, z, true);
    }

    public void setDialogsTitleOverride(CharSequence charSequence, boolean z, boolean z2) {
        if (ExteraConfig.tabIcons != 2) {
            charSequence = null;
        }
        this.dialogsTitleOverride = charSequence;
        if (this.type != 0) {
            return;
        }
        this.currentTitle = getDialogsMainTitle();
        if (this.hasOverlayText) {
            return;
        }
        CharSequence text = this.titleView.getText();
        cancelTitleOverrideAnimation();
        if (!z || TextUtils.equals(text, this.currentTitle)) {
            this.titleView.setText(this.currentTitle, false);
            invalidate();
            return;
        }
        this.titleOverrideForward = z2;
        this.titleOverrideProgress = 0.0f;
        this.titleViewOut.setText(text, false);
        this.titleViewOut.setVisibility(0);
        this.titleViewOut.setAlpha(MathUtils.clamp(Math.min(this.collapsedProgress, this.collapsedProgress2), 0.0f, 1.0f));
        this.titleView.setText(this.currentTitle, false);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.titleOverrideAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.DialogStoriesCell$$ExternalSyntheticLambda14
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$setDialogsTitleOverride$15(valueAnimator);
            }
        });
        this.titleOverrideAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.DialogStoriesCell.11
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (DialogStoriesCell.this.titleOverrideAnimator == animator) {
                    DialogStoriesCell.this.titleOverrideAnimator = null;
                    DialogStoriesCell.this.titleOverrideProgress = 1.0f;
                    DialogStoriesCell.this.titleViewOut.setText(null, false);
                    DialogStoriesCell.this.titleViewOut.setVisibility(8);
                }
                DialogStoriesCell.this.invalidate();
            }
        });
        this.titleOverrideAnimator.setDuration(350L);
        this.titleOverrideAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        this.titleOverrideAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setDialogsTitleOverride$15(ValueAnimator valueAnimator) {
        this.titleOverrideProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    private AnimatedTextView createTitleView() {
        AnimatedTextView animatedTextView = new AnimatedTextView(getContext(), true, true, false);
        animatedTextView.setGravity(3);
        animatedTextView.setTextColor(getTextLogoColor());
        animatedTextView.setEllipsizeByGradient(true);
        animatedTextView.setTypeface(AndroidUtilities.bold());
        animatedTextView.setPadding(0, AndroidUtilities.dp(8.0f), 0, AndroidUtilities.dp(8.0f));
        animatedTextView.setTextSize(AndroidUtilities.dp((AndroidUtilities.isTablet() || getResources().getConfiguration().orientation != 2) ? 20.0f : 18.0f));
        return animatedTextView;
    }

    private void cancelTitleOverrideAnimation() {
        ValueAnimator valueAnimator = this.titleOverrideAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.titleOverrideAnimator = null;
        }
        this.titleOverrideProgress = 1.0f;
        AnimatedTextView animatedTextView = this.titleViewOut;
        if (animatedTextView != null) {
            animatedTextView.setText(null, false);
            this.titleViewOut.setAlpha(0.0f);
            this.titleViewOut.setVisibility(8);
        }
    }

    private CharSequence getDialogsMainTitle() {
        CharSequence actionBarTitle = !TextUtils.isEmpty(this.dialogsTitleOverride) ? this.dialogsTitleOverride : LocaleUtils.getActionBarTitle();
        return !TextUtils.isEmpty(actionBarTitle) ? Emoji.replaceEmoji(actionBarTitle, this.titleView.getPaint().getFontMetricsInt(), false) : actionBarTitle;
    }

    public float overscrollProgress() {
        return this.overscrollProgress;
    }

    private class Adapter extends AdapterWithDiffUtils {
        boolean mini;

        @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return false;
        }

        public Adapter(boolean z) {
            this.mini = z;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            StoryCell storyCell = DialogStoriesCell.this.new StoryCell(viewGroup.getContext());
            storyCell.mini = this.mini;
            if (this.mini) {
                storyCell.setProgressToCollapsed(1.0f, 1.0f, 0.0f, false);
            }
            return new RecyclerListView.Holder(storyCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            StoryCell storyCell = (StoryCell) viewHolder.itemView;
            storyCell.position = i;
            if (this.mini) {
                storyCell.setDialogId(((Item) DialogStoriesCell.this.miniItems.get(i)).dialogId);
            } else {
                storyCell.setDialogId(((Item) DialogStoriesCell.this.items.get(i)).dialogId);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return (this.mini ? DialogStoriesCell.this.miniItems : DialogStoriesCell.this.items).size();
        }
    }

    private class Item extends AdapterWithDiffUtils.Item {
        final long dialogId;

        public Item(long j) {
            super(0, false);
            this.dialogId = j;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Item) && this.dialogId == ((Item) obj).dialogId;
        }

        public int hashCode() {
            return Objects.hash(Long.valueOf(this.dialogId));
        }
    }

    public StoryCell findStoryCell(long j) {
        RecyclerListView recyclerListView = this.recyclerListView;
        if (this.currentState == 2) {
            recyclerListView = this.listViewMini;
        }
        for (int i = 0; i < recyclerListView.getChildCount(); i++) {
            View childAt = recyclerListView.getChildAt(i);
            if (childAt instanceof StoryCell) {
                StoryCell storyCell = (StoryCell) childAt;
                if (storyCell.dialogId == j) {
                    return storyCell;
                }
            }
        }
        return null;
    }

    public class StoryCell extends FrameLayout {
        AvatarDrawable avatarDrawable;
        public ImageReceiver avatarImage;
        private float bounceScale;
        public StoriesUtilities.EnsureStoryFileLoadedObject cancellable;
        TLRPC.Chat chat;
        AvatarDrawable crossfadeAvatarDrawable;
        public ImageReceiver crossfadeToAvatarImage;
        boolean crossfadeToDialog;
        long crossfadeToDialogId;
        private float cx;
        private float cy;
        long dialogId;
        public boolean drawAvatar;
        public boolean drawInParent;
        private final AnimatedFloat failT;
        boolean isFail;
        public boolean isFirst;
        public boolean isLast;
        boolean isSelf;
        private boolean isUploadingState;
        private boolean mini;
        private float overscrollProgress;
        public final StoriesUtilities.AvatarStoryParams params;
        public int position;
        float progressToCollapsed;
        float progressToCollapsed2;
        boolean progressWasDrawn;
        public RadialProgress radialProgress;
        private boolean selectedForOverscroll;
        float textAlpha;
        float textAlphaTransition;
        SimpleTextView textView;
        FrameLayout textViewContainer;
        TLRPC.User user;
        private Drawable verifiedDrawable;

        public StoryCell(Context context) {
            super(context);
            this.avatarDrawable = new AvatarDrawable();
            this.avatarImage = new ImageReceiver(this);
            this.crossfadeToAvatarImage = new ImageReceiver(this);
            this.crossfadeAvatarDrawable = new AvatarDrawable();
            this.drawAvatar = true;
            StoriesUtilities.AvatarStoryParams avatarStoryParams = new StoriesUtilities.AvatarStoryParams(true);
            this.params = avatarStoryParams;
            this.textAlpha = 1.0f;
            this.textAlphaTransition = 1.0f;
            this.bounceScale = 1.0f;
            this.failT = new AnimatedFloat(this, 0L, 350L, CubicBezierInterpolator.EASE_OUT_QUINT);
            avatarStoryParams.isArchive = DialogStoriesCell.this.type == 1;
            avatarStoryParams.isDialogStoriesCell = true;
            this.avatarImage.setInvalidateAll(true);
            this.avatarImage.setAllowLoadingOnAttachedOnly(true);
            FrameLayout frameLayout = new FrameLayout(getContext());
            this.textViewContainer = frameLayout;
            frameLayout.setClipChildren(false);
            if (!this.mini) {
                setClipChildren(false);
            }
            createTextView();
            addView(this.textViewContainer, LayoutHelper.createFrame(-1, -2.0f));
            this.avatarImage.setRoundRadius(ExteraConfig.getAvatarCorners(48.0f));
            this.crossfadeToAvatarImage.setRoundRadius(ExteraConfig.getAvatarCorners(48.0f));
        }

        private void createTextView() {
            SimpleTextView simpleTextView = new SimpleTextView(getContext());
            this.textView = simpleTextView;
            simpleTextView.setTypeface(AndroidUtilities.bold());
            this.textView.setGravity(17);
            this.textView.setTextSize(11);
            this.textView.setTextColor(DialogStoriesCell.this.getTextColor());
            NotificationCenter.listenEmojiLoading(this.textView);
            this.textView.setMaxLines(1);
            this.textViewContainer.addView(this.textView, LayoutHelper.createFrame(-1, -2.0f, 0, 1.0f, 0.0f, 1.0f, 0.0f));
            this.avatarImage.setRoundRadius(ExteraConfig.getAvatarCorners(48.0f));
            this.crossfadeToAvatarImage.setRoundRadius(ExteraConfig.getAvatarCorners(48.0f));
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        public void setDialogId(long j) {
            TLObject tLObject;
            long j2 = this.dialogId;
            boolean z = j2 == j;
            if (!z && this.cancellable != null) {
                DialogStoriesCell.this.storiesController.setLoading(j2, false);
                this.cancellable.cancel();
                this.cancellable = null;
            }
            this.dialogId = j;
            this.isSelf = j == UserConfig.getInstance(DialogStoriesCell.this.currentAccount).getClientUserId();
            this.isFail = DialogStoriesCell.this.storiesController.isLastUploadingFailed(j);
            if (j > 0) {
                TLRPC.User user = MessagesController.getInstance(DialogStoriesCell.this.currentAccount).getUser(Long.valueOf(j));
                this.user = user;
                this.chat = null;
                tLObject = user;
            } else {
                TLRPC.Chat chat = MessagesController.getInstance(DialogStoriesCell.this.currentAccount).getChat(Long.valueOf(-j));
                this.chat = chat;
                this.user = null;
                tLObject = chat;
            }
            String strSubstring = _UrlKt.FRAGMENT_ENCODE_SET;
            if (tLObject == null) {
                this.textView.setText(_UrlKt.FRAGMENT_ENCODE_SET);
                this.avatarImage.clearImage();
                return;
            }
            this.avatarDrawable.setInfo(DialogStoriesCell.this.currentAccount, tLObject);
            this.avatarImage.setForUserOrChat(tLObject, this.avatarDrawable);
            if (this.mini) {
                return;
            }
            this.textView.setRightDrawable((Drawable) null);
            if (DialogStoriesCell.this.storiesController.isLastUploadingFailed(j)) {
                this.textView.setTextSize(10);
                this.textView.setText(LocaleController.getString(C2484R.string.FailedStory));
                this.isUploadingState = false;
                return;
            }
            if (!Utilities.isNullOrEmpty(DialogStoriesCell.this.storiesController.getUploadingStories(j))) {
                this.textView.setTextSize(10);
                StoriesUtilities.applyUploadingStr(this.textView, true, false);
                this.isUploadingState = true;
                return;
            }
            if (DialogStoriesCell.this.storiesController.getEditingStory(j) != null) {
                this.textView.setTextSize(10);
                StoriesUtilities.applyUploadingStr(this.textView, true, false);
                this.isUploadingState = true;
                return;
            }
            if (this.isSelf) {
                if (z && this.isUploadingState && !this.mini) {
                    final SimpleTextView simpleTextView = this.textView;
                    createTextView();
                    if (DialogStoriesCell.this.textAnimator != null) {
                        DialogStoriesCell.this.textAnimator.cancel();
                        DialogStoriesCell.this.textAnimator = null;
                    }
                    DialogStoriesCell.this.textAnimator = ValueAnimator.ofFloat(0.0f, 1.0f);
                    DialogStoriesCell.this.textAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.DialogStoriesCell$StoryCell$$ExternalSyntheticLambda1
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                            this.f$0.lambda$setDialogId$0(simpleTextView, valueAnimator);
                        }
                    });
                    DialogStoriesCell.this.textAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.DialogStoriesCell.StoryCell.1
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            super.onAnimationEnd(animator);
                            DialogStoriesCell.this.textAnimator = null;
                            AndroidUtilities.removeFromParent(simpleTextView);
                        }
                    });
                    DialogStoriesCell.this.textAnimator.setDuration(150L);
                    this.textView.setAlpha(0.0f);
                    this.textView.setTranslationY(AndroidUtilities.dp(5.0f));
                    DialogStoriesCell.this.animationRunnable = new Runnable() { // from class: org.telegram.ui.Stories.DialogStoriesCell$StoryCell$$ExternalSyntheticLambda2
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$setDialogId$1();
                        }
                    };
                }
                AndroidUtilities.runOnUIThread(DialogStoriesCell.this.animationRunnable, 500L);
                this.isUploadingState = false;
                if (DialogStoriesCell.this.type == 1) {
                    TL_stories.PeerStories stories = DialogStoriesCell.this.storiesController.getStories(j);
                    int size = stories != null ? stories.stories.size() : 1;
                    this.textView.setTextSize(11);
                    this.textView.setText(LocaleController.formatPluralString("Stories", Math.max(1, size), new Object[0]));
                    return;
                }
                this.textView.setTextSize(10);
                this.textView.setText(LocaleController.getString(C2484R.string.MyStory));
                return;
            }
            if (this.user != null) {
                this.textView.setTextSize(11);
                String str = this.user.first_name;
                if (str != null) {
                    strSubstring = str.trim();
                }
                int iIndexOf = strSubstring.indexOf(" ");
                if (iIndexOf > 0) {
                    strSubstring = strSubstring.substring(0, iIndexOf);
                }
                if (this.user.verified) {
                    if (this.verifiedDrawable == null) {
                        this.verifiedDrawable = DialogStoriesCell.this.createVerifiedDrawable();
                    }
                    this.textView.setText(Emoji.replaceEmoji(strSubstring, this.textView.getPaint().getFontMetricsInt(), false));
                    this.textView.setRightDrawable(this.verifiedDrawable);
                    return;
                }
                this.textView.setText(Emoji.replaceEmoji(strSubstring, this.textView.getPaint().getFontMetricsInt(), false));
                this.textView.setRightDrawable((Drawable) null);
                return;
            }
            this.textView.setTextSize(11);
            this.textView.setText(Emoji.replaceEmoji(this.chat.title, this.textView.getPaint().getFontMetricsInt(), false));
            this.textView.setRightDrawable((Drawable) null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setDialogId$0(View view, ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            float f = 1.0f - fFloatValue;
            view.setAlpha(f);
            view.setTranslationY((-AndroidUtilities.dp(5.0f)) * fFloatValue);
            this.textView.setAlpha(fFloatValue);
            this.textView.setTranslationY(AndroidUtilities.dp(5.0f) * f);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setDialogId$1() {
            if (DialogStoriesCell.this.textAnimator != null) {
                DialogStoriesCell.this.textAnimator.start();
            }
            DialogStoriesCell.this.animationRunnable = null;
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(this.mini ? AndroidUtilities.dp(70.0f) : DialogStoriesCell.this.currentCellWidth, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(81.0f), TLObject.FLAG_30));
        }

        float getCy() {
            float fDp = AndroidUtilities.dp(48.0f);
            float fDp2 = AndroidUtilities.dp(26.33f);
            return AndroidUtilities.lerp(AndroidUtilities.dp(5.0f), (ActionBar.getCurrentActionBarHeight() - fDp2) / 2.0f, DialogStoriesCell.this.collapsedProgress1) + (AndroidUtilities.lerp(fDp, fDp2, this.progressToCollapsed) / 2.0f);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v48, types: [boolean] */
        /* JADX WARN: Type inference failed for: r1v60 */
        /* JADX WARN: Type inference failed for: r5v10 */
        /* JADX WARN: Type inference failed for: r5v11 */
        /* JADX WARN: Type inference failed for: r5v32, types: [org.telegram.ui.Components.RadialProgress] */
        /* JADX WARN: Type inference failed for: r5v41 */
        /* JADX WARN: Type inference failed for: r9v1 */
        /* JADX WARN: Type inference failed for: r9v14 */
        /* JADX WARN: Type inference failed for: r9v2, types: [boolean, int] */
        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            float f;
            float f2;
            Canvas canvas2;
            float f3;
            float f4;
            float f5;
            float f6;
            float f7;
            float f8;
            float f9;
            float f10;
            ?? r9;
            float size;
            boolean zIsCloseFriends;
            Paint unreadCirclePaint;
            RadialProgress radialProgress;
            float fDp = AndroidUtilities.dp(48.0f);
            float fDp2 = AndroidUtilities.dp(26.33f);
            float fDp3 = AndroidUtilities.dp(8.0f) * Utilities.clamp(DialogStoriesCell.this.overscrollProgress / 0.5f, 1.0f, 0.0f);
            if (this.selectedForOverscroll) {
                fDp3 += AndroidUtilities.dp(16.0f) * Utilities.clamp((DialogStoriesCell.this.overscrollProgress - 0.5f) / 0.5f, 1.0f, 0.0f);
            }
            float fLerp = AndroidUtilities.lerp(fDp + fDp3, fDp2, this.progressToCollapsed);
            float f11 = fLerp / 2.0f;
            float measuredWidth = (getMeasuredWidth() / 2.0f) - f11;
            float fLerp2 = AndroidUtilities.lerp(measuredWidth, 0.0f, this.progressToCollapsed);
            float fLerp3 = AndroidUtilities.lerp(AndroidUtilities.dp(5.0f), (ActionBar.getCurrentActionBarHeight() - fDp2) / 2.0f, this.progressToCollapsed);
            float fClamp = Utilities.clamp(this.progressToCollapsed / 0.5f, 1.0f, 0.0f);
            StoriesUtilities.AvatarStoryParams avatarStoryParams = this.params;
            avatarStoryParams.drawSegments = true;
            if (!avatarStoryParams.forceAnimateProgressToSegments) {
                avatarStoryParams.progressToSegments = 1.0f - DialogStoriesCell.this.collapsedProgress2;
            }
            float f12 = fLerp3 + fLerp;
            this.params.originalAvatarRect.set(fLerp2, fLerp3, fLerp2 + fLerp, f12);
            this.params.additionalInset = AndroidUtilities.dpf2(1.33f) * this.progressToCollapsed;
            this.avatarImage.setAlpha(1.0f);
            this.avatarImage.setRoundRadius(ExteraConfig.getAvatarCorners(fLerp, true));
            float f13 = fLerp2 + f11;
            this.cx = f13;
            float f14 = fLerp3 + f11;
            this.cy = f14;
            if (DialogStoriesCell.this.type == 0) {
                DialogStoriesCell dialogStoriesCell = DialogStoriesCell.this;
                f = 8.0f;
                f2 = 16.0f;
                dialogStoriesCell.backgroundPaint.setColor(dialogStoriesCell.getThemedColor(Theme.key_actionBarDefault));
            } else {
                f = 8.0f;
                f2 = 16.0f;
                DialogStoriesCell dialogStoriesCell2 = DialogStoriesCell.this;
                dialogStoriesCell2.backgroundPaint.setColor(dialogStoriesCell2.getThemedColor(Theme.key_actionBarDefaultArchived));
            }
            if (this.progressToCollapsed != 0.0f) {
                float fDp4 = AndroidUtilities.dp(3.0f) + f11;
                float f15 = this.cx;
                f7 = 3.0f;
                float f16 = this.cy;
                float f17 = f11 * 2.0f;
                f8 = 2.0f;
                f6 = 1.0f;
                f3 = f13;
                f4 = f14;
                f5 = f12;
                f10 = fLerp3;
                r9 = 1;
                f9 = fLerp2;
                canvas.drawRoundRect(f15 - fDp4, f16 - fDp4, f15 + fDp4, f16 + fDp4, ExteraConfig.getAvatarCorners(f17 + AndroidUtilities.dp(f), true), ExteraConfig.getAvatarCorners(f17 + AndroidUtilities.dp(f), true), DialogStoriesCell.this.backgroundPaint);
                canvas2 = canvas;
            } else {
                canvas2 = canvas;
                f3 = f13;
                f4 = f14;
                f5 = f12;
                f6 = 1.0f;
                f7 = 3.0f;
                f8 = 2.0f;
                f9 = fLerp2;
                f10 = fLerp3;
                r9 = 1;
            }
            canvas2.save();
            float f18 = this.bounceScale;
            canvas2.scale(f18, f18, this.cx, this.cy);
            if (this.radialProgress == null) {
                this.radialProgress = DialogStoriesCell.this.radialProgress;
            }
            ArrayList uploadingAndEditingStories = DialogStoriesCell.this.storiesController.getUploadingAndEditingStories(this.dialogId);
            ?? r5 = (uploadingAndEditingStories == null || uploadingAndEditingStories.isEmpty()) ? 0 : r9;
            if (r5 != 0 || (this.progressWasDrawn && (radialProgress = this.radialProgress) != null && radialProgress.getAnimatedProgress() < 0.98f)) {
                if (r5 == 0) {
                    zIsCloseFriends = DialogStoriesCell.this.lastUploadingCloseFriends;
                    size = 1.0f;
                } else {
                    float f19 = 0.0f;
                    for (int i = 0; i < uploadingAndEditingStories.size(); i++) {
                        f19 += ((StoriesController.UploadingStory) uploadingAndEditingStories.get(i)).progress;
                    }
                    size = (DialogStoriesCell.this.storiesController.uploadedStories + f19) / (r2 + uploadingAndEditingStories.size());
                    DialogStoriesCell dialogStoriesCell3 = DialogStoriesCell.this;
                    zIsCloseFriends = ((StoriesController.UploadingStory) uploadingAndEditingStories.get(uploadingAndEditingStories.size() - r9)).isCloseFriends();
                    dialogStoriesCell3.lastUploadingCloseFriends = zIsCloseFriends;
                }
                invalidate();
                if (this.radialProgress == null) {
                    DialogStoriesCell dialogStoriesCell4 = DialogStoriesCell.this;
                    RadialProgress radialProgress2 = dialogStoriesCell4.radialProgress;
                    if (radialProgress2 != null) {
                        this.radialProgress = radialProgress2;
                    } else {
                        ?? radialProgress3 = new RadialProgress(this);
                        this.radialProgress = radialProgress3;
                        dialogStoriesCell4.radialProgress = radialProgress3;
                        radialProgress3.setBackground(null, r9, false);
                    }
                }
                if (this.drawAvatar) {
                    canvas2.save();
                    canvas2.scale(this.params.getScale(), this.params.getScale(), this.params.originalAvatarRect.centerX(), this.params.originalAvatarRect.centerY());
                    this.avatarImage.setImageCoords(this.params.originalAvatarRect);
                    this.avatarImage.draw(canvas2);
                    canvas2.restore();
                }
                this.radialProgress.setDiff(0);
                if (zIsCloseFriends) {
                    unreadCirclePaint = StoriesUtilities.getCloseFriendsPaint(this.avatarImage);
                } else {
                    unreadCirclePaint = StoriesUtilities.getUnreadCirclePaint(this.avatarImage, r9);
                }
                unreadCirclePaint.setAlpha(255);
                this.radialProgress.setPaint(unreadCirclePaint);
                this.radialProgress.setProgressRect((int) (this.avatarImage.getImageX() - AndroidUtilities.dp(f7)), (int) (this.avatarImage.getImageY() - AndroidUtilities.dp(f7)), (int) (this.avatarImage.getImageX2() + AndroidUtilities.dp(f7)), (int) (this.avatarImage.getImageY2() + AndroidUtilities.dp(f7)));
                this.radialProgress.setProgress(Utilities.clamp(size, 1.0f, 0.0f), this.progressWasDrawn);
                if (this.avatarImage.getVisible()) {
                    this.radialProgress.draw(canvas2);
                }
                this.progressWasDrawn = r9;
                DialogStoriesCell.this.drawCircleForce = r9;
                invalidate();
            } else {
                float f20 = this.failT.set(this.isFail);
                if (this.drawAvatar) {
                    if (this.progressWasDrawn) {
                        StoriesUtilities.AvatarStoryParams avatarStoryParams2 = this.params;
                        avatarStoryParams2.forceAnimateProgressToSegments = r9;
                        avatarStoryParams2.progressToSegments = 0.0f;
                        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
                        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.DialogStoriesCell$StoryCell$$ExternalSyntheticLambda0
                            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                                this.f$0.lambda$dispatchDraw$2(valueAnimator);
                            }
                        });
                        valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.DialogStoriesCell.StoryCell.2
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator) {
                                super.onAnimationEnd(animator);
                                StoryCell.this.params.forceAnimateProgressToSegments = false;
                            }
                        });
                        valueAnimatorOfFloat.setDuration(100L);
                        valueAnimatorOfFloat.start();
                    }
                    StoriesUtilities.AvatarStoryParams avatarStoryParams3 = this.params;
                    float f21 = f20 * avatarStoryParams3.progressToSegments;
                    avatarStoryParams3.animate = (this.progressWasDrawn ? 1 : 0) ^ r9;
                    avatarStoryParams3.progressToArc = getArcProgress(this.cx, f11);
                    StoriesUtilities.AvatarStoryParams avatarStoryParams4 = this.params;
                    avatarStoryParams4.isLast = this.isLast;
                    avatarStoryParams4.isFirst = this.isFirst;
                    avatarStoryParams4.alpha = f6 - f21;
                    boolean z = this.isSelf;
                    if (!z && this.crossfadeToDialog) {
                        avatarStoryParams4.crossfadeToDialog = this.crossfadeToDialogId;
                        avatarStoryParams4.crossfadeToDialogProgress = this.progressToCollapsed2;
                    } else {
                        avatarStoryParams4.crossfadeToDialog = 0L;
                    }
                    if (z) {
                        StoriesUtilities.drawAvatarWithStory(this.dialogId, canvas2, this.avatarImage, DialogStoriesCell.this.storiesController.hasSelfStories(), this.params);
                        canvas2 = canvas;
                    } else {
                        long j = this.dialogId;
                        canvas2 = canvas;
                        StoriesUtilities.drawAvatarWithStory(j, canvas2, this.avatarImage, DialogStoriesCell.this.storiesController.hasStories(j), this.params);
                    }
                    if (f21 > 0.0f) {
                        Paint errorPaint = StoriesUtilities.getErrorPaint(this.avatarImage);
                        errorPaint.setStrokeWidth(AndroidUtilities.dp(f8));
                        errorPaint.setAlpha((int) (255.0f * f21));
                        canvas2.drawCircle(f3, f4, (f11 + AndroidUtilities.dp(4.0f)) * this.params.getScale(), errorPaint);
                    }
                    f20 = f21;
                }
                this.progressWasDrawn = false;
                if (this.drawAvatar) {
                    canvas2.save();
                    float f22 = f6 - fClamp;
                    canvas2.scale(f22, f22, this.cx + AndroidUtilities.dp(f2), this.cy + AndroidUtilities.dp(f2));
                    drawPlus(canvas2, this.cx, this.cy, f6);
                    drawFail(canvas2, this.cx, this.cy, f20);
                    canvas2.restore();
                }
            }
            canvas2.restore();
            if (this.crossfadeToDialog && this.progressToCollapsed2 > 0.0f) {
                this.crossfadeToAvatarImage.setImageCoords(f9, f10, fLerp, fLerp);
                this.crossfadeToAvatarImage.setAlpha(this.progressToCollapsed2);
                this.crossfadeToAvatarImage.draw(canvas2);
            }
            this.textViewContainer.setTranslationY(f5 + (AndroidUtilities.dp(7.0f) * (1.0f - this.progressToCollapsed)));
            this.textViewContainer.setTranslationX(f9 - measuredWidth);
            if (!this.mini) {
                if (this.isSelf) {
                    this.textAlpha = 1.0f;
                } else {
                    StoriesUtilities.AvatarStoryParams avatarStoryParams5 = this.params;
                    if (avatarStoryParams5.progressToSate != 1.0f) {
                        int i2 = avatarStoryParams5.currentState;
                    } else {
                        int i3 = avatarStoryParams5.currentState;
                    }
                    this.textAlpha = avatarStoryParams5.globalState == 2 ? 0.7f : 1.0f;
                }
                this.textViewContainer.setAlpha(this.textAlphaTransition * this.textAlpha);
            }
            super.dispatchDraw(canvas);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$dispatchDraw$2(ValueAnimator valueAnimator) {
            this.params.progressToSegments = AndroidUtilities.lerp(0.0f, 1.0f - DialogStoriesCell.this.collapsedProgress2, ((Float) valueAnimator.getAnimatedValue()).floatValue());
            invalidate();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setClipInParent(boolean z) {
            if (getParent() != null) {
                ((ViewGroup) getParent()).setClipChildren(z);
            }
            if (getParent() == null || getParent().getParent() == null || getParent().getParent().getParent() == null) {
                return;
            }
            ((ViewGroup) getParent().getParent().getParent()).setClipChildren(z);
        }

        private float getArcProgress(float f, float f2) {
            if (!this.isLast && DialogStoriesCell.this.overscrollProgress <= 0.0f) {
                if (AndroidUtilities.lerp(getMeasuredWidth(), AndroidUtilities.dp(16.0f), CubicBezierInterpolator.EASE_OUT.getInterpolation(this.progressToCollapsed)) < (f2 + AndroidUtilities.dpf2(3.5f)) * 2.0f) {
                    return ((float) Math.toDegrees(Math.acos((r4 / 2.0f) / r5))) * 2.0f;
                }
            }
            return 0.0f;
        }

        @Override // android.view.View
        public void setPressed(boolean z) {
            super.setPressed(z);
            if (z) {
                StoriesUtilities.AvatarStoryParams avatarStoryParams = this.params;
                if (avatarStoryParams.buttonBounce == null) {
                    avatarStoryParams.buttonBounce = new ButtonBounce(this, 1.5f, 5.0f);
                }
            }
            ButtonBounce buttonBounce = this.params.buttonBounce;
            if (buttonBounce != null) {
                buttonBounce.setPressed(z);
            }
        }

        @Override // android.view.View
        public void invalidate() {
            if (this.mini || (this.drawInParent && getParent() != null)) {
                ViewParent parent = getParent();
                DialogStoriesCell dialogStoriesCell = DialogStoriesCell.this;
                RecyclerListView recyclerListView = dialogStoriesCell.listViewMini;
                if (parent == recyclerListView) {
                    recyclerListView.invalidate();
                } else {
                    dialogStoriesCell.invalidate();
                }
            }
            super.invalidate();
        }

        @Override // android.view.View
        public void invalidate(int i, int i2, int i3, int i4) {
            if (this.mini || (this.drawInParent && getParent() != null)) {
                ViewParent parent = getParent();
                RecyclerListView recyclerListView = DialogStoriesCell.this.listViewMini;
                if (parent == recyclerListView) {
                    recyclerListView.invalidate();
                }
                DialogStoriesCell.this.invalidate();
            }
            super.invalidate(i, i2, i3, i4);
        }

        public void drawPlus(Canvas canvas, float f, float f2, float f3) {
            DialogStoriesCell dialogStoriesCell;
            int i;
            if (this.isSelf && !DialogStoriesCell.this.storiesController.hasStories(this.dialogId) && Utilities.isNullOrEmpty(DialogStoriesCell.this.storiesController.getUploadingStories(this.dialogId))) {
                float fDp = f + AndroidUtilities.dp(16.0f);
                float fDp2 = f2 + AndroidUtilities.dp(16.0f);
                DialogStoriesCell dialogStoriesCell2 = DialogStoriesCell.this;
                dialogStoriesCell2.addCirclePaint.setColor(Theme.multAlpha(dialogStoriesCell2.getThemedColor(Theme.key_telegram_color), f3));
                if (DialogStoriesCell.this.type == 0) {
                    DialogStoriesCell dialogStoriesCell3 = DialogStoriesCell.this;
                    dialogStoriesCell3.backgroundPaint.setColor(Theme.multAlpha(dialogStoriesCell3.getThemedColor(Theme.key_actionBarDefault), f3));
                } else {
                    DialogStoriesCell dialogStoriesCell4 = DialogStoriesCell.this;
                    dialogStoriesCell4.backgroundPaint.setColor(Theme.multAlpha(dialogStoriesCell4.getThemedColor(Theme.key_actionBarDefaultArchived), f3));
                }
                canvas.drawCircle(fDp, fDp2, AndroidUtilities.dp(11.0f), DialogStoriesCell.this.backgroundPaint);
                canvas.drawCircle(fDp, fDp2, AndroidUtilities.dp(9.0f), DialogStoriesCell.this.addCirclePaint);
                if (DialogStoriesCell.this.type == 0) {
                    dialogStoriesCell = DialogStoriesCell.this;
                    i = Theme.key_actionBarDefault;
                } else {
                    dialogStoriesCell = DialogStoriesCell.this;
                    i = Theme.key_actionBarDefaultArchived;
                }
                int themedColor = dialogStoriesCell.getThemedColor(i);
                if (themedColor != DialogStoriesCell.this.addNewStoryLastColor) {
                    Drawable drawable = DialogStoriesCell.this.addNewStoryDrawable;
                    DialogStoriesCell.this.addNewStoryLastColor = themedColor;
                    drawable.setColorFilter(new PorterDuffColorFilter(themedColor, PorterDuff.Mode.MULTIPLY));
                }
                DialogStoriesCell.this.addNewStoryDrawable.setAlpha((int) (f3 * 255.0f));
                DialogStoriesCell.this.addNewStoryDrawable.setBounds((int) (fDp - (DialogStoriesCell.this.addNewStoryDrawable.getIntrinsicWidth() / 2.0f)), (int) (fDp2 - (DialogStoriesCell.this.addNewStoryDrawable.getIntrinsicHeight() / 2.0f)), (int) (fDp + (DialogStoriesCell.this.addNewStoryDrawable.getIntrinsicWidth() / 2.0f)), (int) (fDp2 + (DialogStoriesCell.this.addNewStoryDrawable.getIntrinsicHeight() / 2.0f)));
                DialogStoriesCell.this.addNewStoryDrawable.draw(canvas);
            }
        }

        public void drawFail(Canvas canvas, float f, float f2, float f3) {
            if (f3 <= 0.0f) {
                return;
            }
            float fDp = f + AndroidUtilities.dp(17.0f);
            float fDp2 = f2 + AndroidUtilities.dp(17.0f);
            DialogStoriesCell dialogStoriesCell = DialogStoriesCell.this;
            dialogStoriesCell.addCirclePaint.setColor(Theme.multAlpha(dialogStoriesCell.getThemedColor(Theme.key_text_RedBold), f3));
            if (DialogStoriesCell.this.type == 0) {
                DialogStoriesCell dialogStoriesCell2 = DialogStoriesCell.this;
                dialogStoriesCell2.backgroundPaint.setColor(Theme.multAlpha(dialogStoriesCell2.getThemedColor(Theme.key_actionBarDefault), f3));
            } else {
                DialogStoriesCell dialogStoriesCell3 = DialogStoriesCell.this;
                dialogStoriesCell3.backgroundPaint.setColor(Theme.multAlpha(dialogStoriesCell3.getThemedColor(Theme.key_actionBarDefaultArchived), f3));
            }
            float fDp3 = AndroidUtilities.dp(9.0f) * CubicBezierInterpolator.EASE_OUT_BACK.getInterpolation(f3);
            canvas.drawCircle(fDp, fDp2, AndroidUtilities.dp(2.0f) + fDp3, DialogStoriesCell.this.backgroundPaint);
            canvas.drawCircle(fDp, fDp2, fDp3, DialogStoriesCell.this.addCirclePaint);
            DialogStoriesCell dialogStoriesCell4 = DialogStoriesCell.this;
            dialogStoriesCell4.addCirclePaint.setColor(Theme.multAlpha(dialogStoriesCell4.getTextColor(), f3));
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set(fDp - AndroidUtilities.dp(1.0f), fDp2 - AndroidUtilities.dpf2(4.6f), AndroidUtilities.dp(1.0f) + fDp, AndroidUtilities.dpf2(1.6f) + fDp2);
            canvas.drawRoundRect(rectF, AndroidUtilities.dp(3.0f), AndroidUtilities.dp(3.0f), DialogStoriesCell.this.addCirclePaint);
            rectF.set(fDp - AndroidUtilities.dp(1.0f), AndroidUtilities.dpf2(2.6f) + fDp2, fDp + AndroidUtilities.dp(1.0f), fDp2 + AndroidUtilities.dpf2(4.6f));
            canvas.drawRoundRect(rectF, AndroidUtilities.dp(3.0f), AndroidUtilities.dp(3.0f), DialogStoriesCell.this.addCirclePaint);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            this.avatarImage.onAttachedToWindow();
            this.crossfadeToAvatarImage.onAttachedToWindow();
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            this.avatarImage.onDetachedFromWindow();
            this.crossfadeToAvatarImage.onDetachedFromWindow();
            this.params.onDetachFromWindow();
            StoriesUtilities.EnsureStoryFileLoadedObject ensureStoryFileLoadedObject = this.cancellable;
            if (ensureStoryFileLoadedObject != null) {
                ensureStoryFileLoadedObject.cancel();
                this.cancellable = null;
            }
        }

        public void setProgressToCollapsed(float f, float f2, float f3, boolean z) {
            if (this.progressToCollapsed != f || this.progressToCollapsed2 != f2 || this.overscrollProgress != f3 || this.selectedForOverscroll != z) {
                this.selectedForOverscroll = z;
                this.progressToCollapsed = f;
                this.progressToCollapsed2 = f2;
                invalidate();
                DialogStoriesCell.this.recyclerListView.invalidate();
            }
            float fClamp = 0.0f;
            if (!this.mini) {
                DialogStoriesCell dialogStoriesCell = DialogStoriesCell.this;
                fClamp = 1.0f - Utilities.clamp(dialogStoriesCell.collapsedProgress / dialogStoriesCell.f1538K, 1.0f, 0.0f);
            }
            this.textAlphaTransition = fClamp;
            this.textViewContainer.setAlpha(fClamp * this.textAlpha);
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        public void setCrossfadeTo(long j) {
            TLObject tLObject;
            if (this.crossfadeToDialogId != j) {
                this.crossfadeToDialogId = j;
                boolean z = j != -1;
                this.crossfadeToDialog = z;
                if (!z) {
                    this.crossfadeToAvatarImage.clearImage();
                    return;
                }
                if (j > 0) {
                    TLRPC.User user = MessagesController.getInstance(DialogStoriesCell.this.currentAccount).getUser(Long.valueOf(j));
                    this.user = user;
                    this.chat = null;
                    tLObject = user;
                } else {
                    TLRPC.Chat chat = MessagesController.getInstance(DialogStoriesCell.this.currentAccount).getChat(Long.valueOf(-j));
                    this.chat = chat;
                    this.user = null;
                    tLObject = chat;
                }
                if (tLObject != null) {
                    this.crossfadeAvatarDrawable.setInfo(DialogStoriesCell.this.currentAccount, tLObject);
                    this.crossfadeToAvatarImage.setForUserOrChat(tLObject, this.crossfadeAvatarDrawable);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Drawable createVerifiedDrawable() {
        final Drawable drawableMutate = ContextCompat.getDrawable(getContext(), C2484R.drawable.verified_area).mutate();
        final Drawable drawableMutate2 = ContextCompat.getDrawable(getContext(), C2484R.drawable.verified_check).mutate();
        CombinedDrawable combinedDrawable = new CombinedDrawable(drawableMutate, drawableMutate2) { // from class: org.telegram.ui.Stories.DialogStoriesCell.12
            int lastColor;

            @Override // org.telegram.ui.Components.CombinedDrawable, android.graphics.drawable.Drawable
            public void draw(Canvas canvas) {
                DialogStoriesCell dialogStoriesCell;
                int i;
                DialogStoriesCell dialogStoriesCell2;
                int i2;
                if (DialogStoriesCell.this.type == 0) {
                    dialogStoriesCell = DialogStoriesCell.this;
                    i = Theme.key_actionBarDefault;
                } else {
                    dialogStoriesCell = DialogStoriesCell.this;
                    i = Theme.key_actionBarDefaultArchived;
                }
                int themedColor = dialogStoriesCell.getThemedColor(i);
                if (this.lastColor != themedColor) {
                    this.lastColor = themedColor;
                    if (DialogStoriesCell.this.type == 0) {
                        dialogStoriesCell2 = DialogStoriesCell.this;
                        i2 = Theme.key_actionBarDefaultTitle;
                    } else {
                        dialogStoriesCell2 = DialogStoriesCell.this;
                        i2 = Theme.key_actionBarDefaultArchivedTitle;
                    }
                    int themedColor2 = dialogStoriesCell2.getThemedColor(i2);
                    Drawable drawable = drawableMutate;
                    int iBlendARGB = ColorUtils.blendARGB(themedColor2, themedColor, 0.1f);
                    PorterDuff.Mode mode = PorterDuff.Mode.MULTIPLY;
                    drawable.setColorFilter(new PorterDuffColorFilter(iBlendARGB, mode));
                    drawableMutate2.setColorFilter(new PorterDuffColorFilter(themedColor, mode));
                }
                super.draw(canvas);
            }
        };
        combinedDrawable.setFullsize(true);
        return combinedDrawable;
    }

    private void updateCurrentState(int i) {
        if (this.currentState == i) {
            return;
        }
        this.currentState = i;
        if (i != 1 && this.updateOnIdleState) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.DialogStoriesCell$$ExternalSyntheticLambda15
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$updateCurrentState$16();
                }
            });
        }
        int i2 = this.currentState;
        if (i2 == 0) {
            AndroidUtilities.forEachViews((RecyclerView) this.recyclerListView, new Consumer() { // from class: org.telegram.ui.Stories.DialogStoriesCell$$ExternalSyntheticLambda16
                @Override // com.google.android.exoplayer2.util.Consumer
                public final void accept(Object obj) {
                    DialogStoriesCell.$r8$lambda$cLLcGrs3ecWcfBgfj5WeKmCtcUg((View) obj);
                }
            });
            this.listViewMini.setVisibility(4);
            this.recyclerListView.setVisibility(0);
            checkExpanded();
        } else if (i2 == 1) {
            this.animateToDialogIds.clear();
            for (int i3 = 0; i3 < this.items.size(); i3++) {
                if (((Item) this.items.get(i3)).dialogId != UserConfig.getInstance(this.currentAccount).getClientUserId() || shouldDrawSelfInMini()) {
                    this.animateToDialogIds.add(Long.valueOf(((Item) this.items.get(i3)).dialogId));
                    if (this.animateToDialogIds.size() == 3) {
                        break;
                    }
                }
            }
            this.listViewMini.setVisibility(4);
            this.recyclerListView.setVisibility(0);
        } else if (i2 == 2) {
            this.listViewMini.setVisibility(0);
            this.recyclerListView.setVisibility(4);
            this.layoutManager.scrollToPositionWithOffset(0, 0);
            MessagesController.getInstance(this.currentAccount).getStoriesController().scheduleSort();
            StoriesUtilities.EnsureStoryFileLoadedObject ensureStoryFileLoadedObject = this.globalCancelable;
            if (ensureStoryFileLoadedObject != null) {
                ensureStoryFileLoadedObject.cancel();
                this.globalCancelable = null;
            }
        }
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateCurrentState$16() {
        updateItems(true, false);
    }

    public static /* synthetic */ void $r8$lambda$cLLcGrs3ecWcfBgfj5WeKmCtcUg(View view) {
        view.setAlpha(1.0f);
        view.setTranslationX(0.0f);
        view.setTranslationY(0.0f);
    }

    static float getAvatarRight(int i, float f) {
        float fLerp = AndroidUtilities.lerp(AndroidUtilities.dp(48.0f), AndroidUtilities.dp(26.33f), f) / 2.0f;
        return AndroidUtilities.lerp((i / 2.0f) - fLerp, 0.0f, f) + (fLerp * 2.0f);
    }

    private void checkExpanded() {
        if (System.currentTimeMillis() < this.checkedStoryNotificationDeletion) {
            return;
        }
        this.checkedStoryNotificationDeletion = System.currentTimeMillis() + RealWebSocket.CANCEL_AFTER_CLOSE_MILLIS;
    }

    @Override // android.view.View
    public void setTranslationY(float f) {
        super.setTranslationY(f);
        HintView2 hintView2 = this.premiumHint;
        if (hintView2 != null) {
            hintView2.setTranslationY(f);
        }
    }

    public HintView2 getPremiumHint() {
        return this.premiumHint;
    }

    private HintView2 makePremiumHint() {
        HintView2 hintView2 = this.premiumHint;
        if (hintView2 != null) {
            return hintView2;
        }
        this.premiumHint = new HintView2(getContext(), 1).setBgColor(getThemedColor(Theme.key_undo_background)).setMultilineText(true).setTextAlign(Layout.Alignment.ALIGN_CENTER).setJoint(0.0f, 29.0f);
        SpannableStringBuilder spannableStringBuilderReplaceSingleTag = AndroidUtilities.replaceSingleTag(LocaleController.getString("StoriesPremiumHint2").replace('\n', ' '), Theme.key_undo_cancelColor, 0, new Runnable() { // from class: org.telegram.ui.Stories.DialogStoriesCell$$ExternalSyntheticLambda17
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$makePremiumHint$18();
            }
        });
        ClickableSpan[] clickableSpanArr = (ClickableSpan[]) spannableStringBuilderReplaceSingleTag.getSpans(0, spannableStringBuilderReplaceSingleTag.length(), ClickableSpan.class);
        if (clickableSpanArr != null && clickableSpanArr.length >= 1) {
            spannableStringBuilderReplaceSingleTag.setSpan(new TypefaceSpan(AndroidUtilities.bold()), spannableStringBuilderReplaceSingleTag.getSpanStart(clickableSpanArr[0]), spannableStringBuilderReplaceSingleTag.getSpanEnd(clickableSpanArr[0]), 33);
        }
        HintView2 hintView22 = this.premiumHint;
        hintView22.setMaxWidthPx(HintView2.cutInFancyHalf(spannableStringBuilderReplaceSingleTag, hintView22.getTextPaint()));
        this.premiumHint.setText(spannableStringBuilderReplaceSingleTag);
        this.premiumHint.setPadding(AndroidUtilities.dp(8.0f), AndroidUtilities.dp(24.0f), AndroidUtilities.dp(8.0f), 0);
        if (getParent() instanceof FrameLayout) {
            ((FrameLayout) getParent()).addView(this.premiumHint, LayoutHelper.createFrame(-1, 150, 51));
        }
        return this.premiumHint;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$makePremiumHint$18() {
        HintView2 hintView2 = this.premiumHint;
        if (hintView2 != null) {
            hintView2.hide();
        }
        this.fragment.presentFragment(new PremiumPreviewFragment("stories"));
    }

    public void showPremiumHint() {
        makePremiumHint();
        HintView2 hintView2 = this.premiumHint;
        if (hintView2 != null) {
            if (hintView2.shown()) {
                BotWebViewVibrationEffect.APP_ERROR.vibrate();
            }
            this.premiumHint.show();
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.currentState == 2) {
            int size = this.miniItems.size();
            this.miniItemsClickArea.setRect((int) this.listViewMini.getX(), (int) this.listViewMini.getY(), (int) (this.listViewMini.getX() + AndroidUtilities.dp((size * 26.33f) - (Math.max(0, size - 1) * 16.0f))), (int) (this.listViewMini.getY() + this.listViewMini.getHeight()));
            if (this.miniItemsClickArea.checkTouchEvent(motionEvent)) {
                return true;
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    public void updateStatus(TLRPC.User user, boolean z) {
        if (this.statusDrawable == null || this.actionBar == null) {
            return;
        }
        Long emojiStatusDocumentId = UserObject.getEmojiStatusDocumentId(user);
        if (emojiStatusDocumentId != null) {
            boolean z2 = user.emoji_status instanceof TLRPC.TL_emojiStatusCollectible;
            this.statusDrawable.set(emojiStatusDocumentId.longValue(), z);
            this.statusDrawable.setParticles(z2, z);
        } else if (user != null && MessagesController.getInstance(this.currentAccount).isPremiumUser(user)) {
            if (this.premiumStar == null) {
                this.premiumStar = getContext().getResources().getDrawable(C2484R.drawable.msg_premium_liststar).mutate();
                this.premiumStar = new AnimatedEmojiDrawable.WrapSizeDrawable(this.premiumStar, AndroidUtilities.dp(18.0f), AndroidUtilities.dp(18.0f)) { // from class: org.telegram.ui.Stories.DialogStoriesCell.13
                    @Override // org.telegram.ui.Components.AnimatedEmojiDrawable.WrapSizeDrawable, android.graphics.drawable.Drawable
                    public void draw(Canvas canvas) {
                        canvas.save();
                        canvas.translate(AndroidUtilities.dp(-2.0f), AndroidUtilities.dp(1.0f));
                        super.draw(canvas);
                        canvas.restore();
                    }
                };
            }
            this.premiumStar.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_profile_verifiedBackground), PorterDuff.Mode.MULTIPLY));
            this.statusDrawable.set(this.premiumStar, z);
            this.statusDrawable.setParticles(false, z);
        } else {
            this.statusDrawable.set((Drawable) null, z);
            this.statusDrawable.setParticles(false, z);
        }
        this.statusDrawable.setColor(Integer.valueOf(getThemedColor(Theme.key_profile_verifiedBackground)));
        this.emojiStatusView.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getThemedColor(int i) {
        BaseFragment baseFragment = this.fragment;
        if (baseFragment == null || baseFragment.getResourceProvider() == null) {
            return Theme.getColor(i);
        }
        return this.fragment.getThemedColor(i);
    }

    @Override // me.vkryl.android.animator.FactorAnimator.Target
    public void onFactorChanged(int i, float f, float f2, FactorAnimator factorAnimator) {
        if (i == 1) {
            checkUi_titleVisibility();
        }
    }

    private void checkUi_titleVisibility() {
        float fClamp = MathUtils.clamp(Math.min(this.collapsedProgress, this.collapsedProgress2), 0.0f, 1.0f);
        AnimatedTextView animatedTextView = this.titleView;
        if (animatedTextView != null) {
            animatedTextView.setAlpha(fClamp);
            this.titleView.setVisibility(fClamp > 0.0f ? 0 : 8);
        }
        AnimatedTextView animatedTextView2 = this.titleViewOut;
        if (animatedTextView2 != null && this.titleOverrideAnimator == null) {
            animatedTextView2.setAlpha(fClamp);
            this.titleViewOut.setVisibility(fClamp > 0.0f ? 0 : 8);
        }
        ImageView imageView = this.emojiStatusView;
        if (imageView != null) {
            imageView.setAlpha(fClamp);
            this.emojiStatusView.setVisibility(fClamp > 0.0f ? 0 : 8);
        }
        ActionBarAnimatedSubtitleOverlayContainer actionBarAnimatedSubtitleOverlayContainer = this.subtitleOverlayContainer;
        if (actionBarAnimatedSubtitleOverlayContainer != null) {
            actionBarAnimatedSubtitleOverlayContainer.setAlpha(fClamp);
            this.subtitleOverlayContainer.setVisibility(fClamp > 0.0f ? 0 : 8);
        }
    }
}
