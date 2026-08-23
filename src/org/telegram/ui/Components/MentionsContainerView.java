package org.telegram.ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.text.SpannableString;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.FloatValueHolder;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.android.dx.AppDataDirGuesser;
import com.exteragram.messenger.ExteraConfig;
import com.google.android.exoplayer2.util.Consumer;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.VideoEditedInfo;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Adapters.MentionsAdapter;
import org.telegram.ui.Adapters.PaddedListAdapter;
import org.telegram.ui.Business.QuickRepliesActivity;
import org.telegram.ui.Cells.ContextLinkCell;
import org.telegram.ui.Cells.MentionCell;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.blur3.drawable.BlurredBackgroundDrawable;
import org.telegram.ui.ContentPreviewViewer;
import org.telegram.ui.PhotoViewer;
import org.webrtc.MediaStreamTrack;

/* JADX INFO: loaded from: classes3.dex */
public abstract class MentionsContainerView extends FrameLayout implements NotificationCenter.NotificationCenterDelegate {
    private MentionsAdapter adapter;
    private int animationIndex;
    private BlurredBackgroundDrawable backgroundDrawable;
    WeakReference baseFragment;
    private PhotoViewer.PhotoViewerProvider botContextProvider;
    private ArrayList botContextResults;
    private final RectF clipBounds;
    private final Path clipPath;
    private Integer color;
    private float containerBottom;
    private float containerPadding;
    private float containerTop;
    private WeakReference delegate;
    private ExtendedGridLayoutManager gridLayoutManager;
    private float hideT;
    private boolean ignoreLayout;
    private LinearLayoutManager linearLayoutManager;
    private MentionsListView listView;
    private boolean listViewHiding;
    private float listViewPadding;
    private SpringAnimation listViewTranslationAnimator;
    private RecyclerListView.OnItemClickListener mentionsOnItemClickListener;
    private PaddedListAdapter paddedAdapter;
    private Paint paint;
    private android.graphics.Rect rect;
    private final Theme.ResourcesProvider resourcesProvider;
    private int scrollRangeUpdateTries;
    private boolean scrollToFirst;
    private boolean shouldLiftMentions;
    private boolean shown;
    private boolean switchLayoutManagerOnEnd;
    private Runnable updateVisibilityRunnable;

    public static /* synthetic */ void $r8$lambda$dd_L2UtPYzHyIxI7hKB0lrroym8(DynamicAnimation dynamicAnimation, boolean z, float f, float f2) {
    }

    protected boolean canOpen() {
        return true;
    }

    protected boolean isStories() {
        return false;
    }

    protected void onAnimationScroll() {
    }

    protected void onClose() {
    }

    protected void onContextClick(TLRPC.BotInlineResult botInlineResult) {
    }

    protected void onContextSearch(boolean z) {
    }

    protected void onOpen() {
    }

    protected void onScrolled(boolean z, boolean z2) {
    }

    public MentionsContainerView(Context context, long j, long j2, BaseFragment baseFragment, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.shouldLiftMentions = false;
        this.rect = new android.graphics.Rect();
        this.ignoreLayout = false;
        this.scrollToFirst = false;
        this.shown = false;
        this.updateVisibilityRunnable = new Runnable() { // from class: org.telegram.ui.Components.MentionsContainerView$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$0();
            }
        };
        this.animationIndex = -1;
        this.listViewHiding = false;
        this.hideT = 0.0f;
        this.switchLayoutManagerOnEnd = false;
        this.botContextProvider = new PhotoViewer.EmptyPhotoViewerProvider() { // from class: org.telegram.ui.Components.MentionsContainerView.5
            /* JADX WARN: Removed duplicated region for block: B:14:0x0044  */
            @Override // org.telegram.ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.ui.PhotoViewer.PhotoViewerProvider
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public PhotoViewer.PlaceProviderObject getPlaceForPhoto(MessageObject messageObject, TLRPC.FileLocation fileLocation, int i, boolean z, boolean z2) {
                ImageReceiver photoImage;
                if (i >= 0 && i < MentionsContainerView.this.botContextResults.size()) {
                    int childCount = MentionsContainerView.this.getListView().getChildCount();
                    Object obj = MentionsContainerView.this.botContextResults.get(i);
                    for (int i2 = 0; i2 < childCount; i2++) {
                        View childAt = MentionsContainerView.this.getListView().getChildAt(i2);
                        if (childAt instanceof ContextLinkCell) {
                            ContextLinkCell contextLinkCell = (ContextLinkCell) childAt;
                            photoImage = contextLinkCell.getResult() == obj ? contextLinkCell.getPhotoImage() : null;
                        }
                        if (photoImage != null) {
                            int[] iArr = new int[2];
                            childAt.getLocationInWindow(iArr);
                            PhotoViewer.PlaceProviderObject placeProviderObject = new PhotoViewer.PlaceProviderObject();
                            placeProviderObject.viewX = iArr[0];
                            placeProviderObject.viewY = iArr[1];
                            placeProviderObject.parentView = MentionsContainerView.this.getListView();
                            placeProviderObject.imageReceiver = photoImage;
                            placeProviderObject.thumb = photoImage.getBitmapSafe();
                            placeProviderObject.radius = photoImage.getRoundRadius(true);
                            return placeProviderObject;
                        }
                    }
                }
                return null;
            }

            @Override // org.telegram.ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.ui.PhotoViewer.PhotoViewerProvider
            public void sendButtonPressed(int i, VideoEditedInfo videoEditedInfo, boolean z, int i2, int i3, boolean z2) {
                if (i < 0 || i >= MentionsContainerView.this.botContextResults.size() || MentionsContainerView.this.delegate == null || MentionsContainerView.this.delegate.get() == null) {
                    return;
                }
                ((Delegate) MentionsContainerView.this.delegate.get()).sendBotInlineResult((TLRPC.BotInlineResult) MentionsContainerView.this.botContextResults.get(i), z, i2);
            }
        };
        this.clipPath = new Path();
        this.clipBounds = new RectF();
        this.baseFragment = new WeakReference(baseFragment);
        this.resourcesProvider = resourcesProvider;
        setVisibility(8);
        setWillNotDraw(false);
        setClipToOutline(true);
        this.listViewPadding = (int) Math.min(AndroidUtilities.dp(126.0f), AndroidUtilities.displaySize.y * 0.22f);
        this.listView = new MentionsListView(context, resourcesProvider);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context) { // from class: org.telegram.ui.Components.MentionsContainerView.1
            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public boolean supportsPredictiveItemAnimations() {
                return false;
            }

            @Override // androidx.recyclerview.widget.LinearLayoutManager
            public void setReverseLayout(boolean z) {
                super.setReverseLayout(z);
                MentionsContainerView.this.listView.setTranslationY((z ? -1 : 1) * AndroidUtilities.dp(6.0f));
            }
        };
        this.linearLayoutManager = linearLayoutManager;
        linearLayoutManager.setOrientation(1);
        ExtendedGridLayoutManager extendedGridLayoutManager = new ExtendedGridLayoutManager(context, 100, false, false) { // from class: org.telegram.ui.Components.MentionsContainerView.2
            private Size size = new Size();

            @Override // org.telegram.ui.Components.ExtendedGridLayoutManager
            protected Size getSizeForItem(int i) {
                TLRPC.PhotoSize closestPhotoSizeWithSize;
                Size size = this.size;
                int i2 = 0;
                size.full = false;
                if (i == 0) {
                    size.width = getWidth();
                    this.size.height = MentionsContainerView.this.paddedAdapter.getPadding();
                    Size size2 = this.size;
                    size2.full = true;
                    return size2;
                }
                int i3 = i - 1;
                if (MentionsContainerView.this.adapter.getBotContextSwitch() == null && MentionsContainerView.this.adapter.getBotWebViewSwitch() == null) {
                    i = i3;
                }
                Size size3 = this.size;
                size3.width = 0.0f;
                size3.height = 0.0f;
                Object item = MentionsContainerView.this.adapter.getItem(i);
                if (item instanceof TLRPC.BotInlineResult) {
                    TLRPC.BotInlineResult botInlineResult = (TLRPC.BotInlineResult) item;
                    TLRPC.Document document = botInlineResult.document;
                    if (document != null) {
                        TLRPC.PhotoSize closestPhotoSizeWithSize2 = FileLoader.getClosestPhotoSizeWithSize(document.thumbs, 90);
                        Size size4 = this.size;
                        size4.width = closestPhotoSizeWithSize2 != null ? closestPhotoSizeWithSize2.f1341w : 100.0f;
                        size4.height = closestPhotoSizeWithSize2 != null ? closestPhotoSizeWithSize2.f1340h : 100.0f;
                        while (i2 < botInlineResult.document.attributes.size()) {
                            TLRPC.DocumentAttribute documentAttribute = botInlineResult.document.attributes.get(i2);
                            if ((documentAttribute instanceof TLRPC.TL_documentAttributeImageSize) || (documentAttribute instanceof TLRPC.TL_documentAttributeVideo)) {
                                Size size5 = this.size;
                                size5.width = documentAttribute.f1339w;
                                size5.height = documentAttribute.f1338h;
                                break;
                            }
                            i2++;
                        }
                    } else if (botInlineResult.content != null) {
                        while (i2 < botInlineResult.content.attributes.size()) {
                            TLRPC.DocumentAttribute documentAttribute2 = (TLRPC.DocumentAttribute) botInlineResult.content.attributes.get(i2);
                            if ((documentAttribute2 instanceof TLRPC.TL_documentAttributeImageSize) || (documentAttribute2 instanceof TLRPC.TL_documentAttributeVideo)) {
                                Size size6 = this.size;
                                size6.width = documentAttribute2.f1339w;
                                size6.height = documentAttribute2.f1338h;
                                break;
                            }
                            i2++;
                        }
                    } else if (botInlineResult.thumb != null) {
                        while (i2 < botInlineResult.thumb.attributes.size()) {
                            TLRPC.DocumentAttribute documentAttribute3 = (TLRPC.DocumentAttribute) botInlineResult.thumb.attributes.get(i2);
                            if ((documentAttribute3 instanceof TLRPC.TL_documentAttributeImageSize) || (documentAttribute3 instanceof TLRPC.TL_documentAttributeVideo)) {
                                Size size7 = this.size;
                                size7.width = documentAttribute3.f1339w;
                                size7.height = documentAttribute3.f1338h;
                                break;
                            }
                            i2++;
                        }
                    } else {
                        TLRPC.Photo photo = botInlineResult.photo;
                        if (photo != null && (closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(photo.sizes, AndroidUtilities.getPhotoSize())) != null) {
                            Size size8 = this.size;
                            size8.width = closestPhotoSizeWithSize.f1341w;
                            size8.height = closestPhotoSizeWithSize.f1340h;
                        }
                    }
                }
                return this.size;
            }

            @Override // org.telegram.ui.Components.ExtendedGridLayoutManager
            protected int getFlowItemCount() {
                if (MentionsContainerView.this.adapter.getBotContextSwitch() != null || MentionsContainerView.this.adapter.getBotWebViewSwitch() != null) {
                    return getItemCount() - 1;
                }
                return super.getFlowItemCount();
            }
        };
        this.gridLayoutManager = extendedGridLayoutManager;
        extendedGridLayoutManager.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup() { // from class: org.telegram.ui.Components.MentionsContainerView.3
            @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
            public int getSpanSize(int i) {
                if (i == 0) {
                    return 100;
                }
                Object item = MentionsContainerView.this.adapter.getItem(i - 1);
                if (item instanceof TLRPC.TL_inlineBotSwitchPM) {
                    return 100;
                }
                if (item instanceof TLRPC.Document) {
                    return 20;
                }
                if (MentionsContainerView.this.adapter.getBotContextSwitch() != null || MentionsContainerView.this.adapter.getBotWebViewSwitch() != null) {
                    i--;
                }
                return MentionsContainerView.this.gridLayoutManager.getSpanSizeForItem(i);
            }
        });
        DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator();
        defaultItemAnimator.setAddDuration(150L);
        defaultItemAnimator.setMoveDuration(150L);
        defaultItemAnimator.setChangeDuration(150L);
        defaultItemAnimator.setRemoveDuration(150L);
        defaultItemAnimator.setTranslationInterpolator(CubicBezierInterpolator.DEFAULT);
        defaultItemAnimator.setDelayAnimations(false);
        this.listView.setItemAnimator(defaultItemAnimator);
        this.listView.setClipToPadding(false);
        this.listView.setLayoutManager(this.linearLayoutManager);
        MentionsAdapter mentionsAdapter = new MentionsAdapter(context, false, j, j2, new MentionsAdapter.MentionsAdapterDelegate() { // from class: org.telegram.ui.Components.MentionsContainerView.4
            @Override // org.telegram.ui.Adapters.MentionsAdapter.MentionsAdapterDelegate
            public void onItemCountUpdate(int i, int i2) {
                if (MentionsContainerView.this.listView.getLayoutManager() == MentionsContainerView.this.gridLayoutManager || !MentionsContainerView.this.shown) {
                    return;
                }
                AndroidUtilities.cancelRunOnUIThread(MentionsContainerView.this.updateVisibilityRunnable);
                Runnable runnable = MentionsContainerView.this.updateVisibilityRunnable;
                WeakReference weakReference = MentionsContainerView.this.baseFragment;
                AndroidUtilities.runOnUIThread(runnable, (weakReference == null || weakReference.get() == null || !((BaseFragment) MentionsContainerView.this.baseFragment.get()).getFragmentBeginToShow()) ? 100L : 0L);
            }

            @Override // org.telegram.ui.Adapters.MentionsAdapter.MentionsAdapterDelegate
            public void needChangePanelVisibility(boolean z) {
                if (MentionsContainerView.this.getNeededLayoutManager() != MentionsContainerView.this.getCurrentLayoutManager() && MentionsContainerView.this.canOpen()) {
                    if (MentionsContainerView.this.adapter.getLastItemCount() > 0) {
                        MentionsContainerView.this.switchLayoutManagerOnEnd = true;
                        MentionsContainerView.this.updateVisibility(false);
                        return;
                    }
                    MentionsContainerView.this.listView.setLayoutManager(MentionsContainerView.this.getNeededLayoutManager());
                }
                if (z && !MentionsContainerView.this.canOpen()) {
                    z = false;
                }
                MentionsContainerView.this.updateVisibility((!z || MentionsContainerView.this.adapter.getItemCountInternal() > 0) ? z : false);
            }

            @Override // org.telegram.ui.Adapters.MentionsAdapter.MentionsAdapterDelegate
            public void onContextSearch(boolean z) {
                MentionsContainerView.this.onContextSearch(z);
            }

            @Override // org.telegram.ui.Adapters.MentionsAdapter.MentionsAdapterDelegate
            public void onContextClick(TLRPC.BotInlineResult botInlineResult) {
                MentionsContainerView.this.onContextClick(botInlineResult);
            }
        }, resourcesProvider, isStories());
        this.adapter = mentionsAdapter;
        PaddedListAdapter paddedListAdapter = new PaddedListAdapter(mentionsAdapter);
        this.paddedAdapter = paddedListAdapter;
        this.listView.setAdapter(paddedListAdapter);
        this.listView.setTranslationY(AndroidUtilities.dp(6.0f));
        addView(this.listView, LayoutHelper.createFrame(-1, -1.0f));
        setReversed(false);
    }

    public MentionsListView getListView() {
        return this.listView;
    }

    public MentionsAdapter getAdapter() {
        return this.adapter;
    }

    public void setReversed(boolean z) {
        if (z != isReversed()) {
            this.scrollToFirst = true;
            this.linearLayoutManager.setReverseLayout(z);
            this.adapter.setIsReversed(z);
        }
    }

    public boolean isReversed() {
        RecyclerView.LayoutManager layoutManager = this.listView.getLayoutManager();
        LinearLayoutManager linearLayoutManager = this.linearLayoutManager;
        return layoutManager == linearLayoutManager && linearLayoutManager.getReverseLayout();
    }

    public LinearLayoutManager getCurrentLayoutManager() {
        RecyclerView.LayoutManager layoutManager = this.listView.getLayoutManager();
        LinearLayoutManager linearLayoutManager = this.linearLayoutManager;
        return layoutManager == linearLayoutManager ? linearLayoutManager : this.gridLayoutManager;
    }

    public LinearLayoutManager getNeededLayoutManager() {
        return ((this.adapter.isStickers() || this.adapter.isBotContext()) && this.adapter.isMediaLayout()) ? this.gridLayoutManager : this.linearLayoutManager;
    }

    public float clipBottom() {
        if (getVisibility() == 0 && !isReversed()) {
            return getMeasuredHeight() - this.containerTop;
        }
        return 0.0f;
    }

    public float clipTop() {
        if (getVisibility() == 0 && isReversed()) {
            return this.containerBottom;
        }
        return 0.0f;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        float fMin;
        BlurredBackgroundDrawable blurredBackgroundDrawable = this.backgroundDrawable;
        if (blurredBackgroundDrawable != null) {
            blurredBackgroundDrawable.draw(canvas);
            canvas.save();
            canvas.clipPath(this.clipPath);
            super.dispatchDraw(canvas);
            canvas.restore();
            return;
        }
        boolean zIsReversed = isReversed();
        this.containerPadding = AndroidUtilities.dp(((this.adapter.isStickers() || this.adapter.isBotContext()) && this.adapter.isMediaLayout() && this.adapter.getBotContextSwitch() == null && this.adapter.getBotWebViewSwitch() == null ? 2 : 0) + 2);
        canvas.save();
        float fDp = AndroidUtilities.dp(6.0f);
        float f = this.containerTop;
        if (zIsReversed) {
            float fMin2 = Math.min(Math.max(0.0f, (this.paddedAdapter.paddingViewAttached ? r0.paddingView.getTop() : getHeight()) + this.listView.getTranslationY()) + this.containerPadding, (1.0f - this.hideT) * getHeight());
            android.graphics.Rect rect = this.rect;
            this.containerTop = 0.0f;
            int measuredWidth = getMeasuredWidth();
            this.containerBottom = fMin2;
            rect.set(0, (int) 0.0f, measuredWidth, (int) fMin2);
            fMin = Math.min(fDp, Math.abs(getMeasuredHeight() - this.containerBottom));
            if (fMin > 0.0f) {
                canvas.clipRect(0, 0, getWidth(), getHeight());
                this.rect.top -= (int) fMin;
            }
        } else {
            if (this.listView.getLayoutManager() == this.gridLayoutManager) {
                this.containerPadding += AndroidUtilities.dp(2.0f);
                fDp += AndroidUtilities.dp(2.0f);
            }
            float fMax = Math.max(0.0f, (this.paddedAdapter.paddingViewAttached ? r0.paddingView.getBottom() : 0) + this.listView.getTranslationY()) - this.containerPadding;
            this.containerTop = fMax;
            float fMax2 = Math.max(fMax, this.hideT * getHeight());
            android.graphics.Rect rect2 = this.rect;
            this.containerTop = fMax2;
            int measuredWidth2 = getMeasuredWidth();
            float measuredHeight = getMeasuredHeight();
            this.containerBottom = measuredHeight;
            rect2.set(0, (int) fMax2, measuredWidth2, (int) measuredHeight);
            fMin = Math.min(fDp, Math.abs(this.containerTop));
            if (fMin > 0.0f) {
                canvas.clipRect(0, 0, getWidth(), getHeight());
                this.rect.bottom += (int) fMin;
            }
        }
        if (Math.abs(f - this.containerTop) > 0.1f) {
            onAnimationScroll();
        }
        if (this.paint == null) {
            Paint paint = new Paint(1);
            this.paint = paint;
            paint.setShadowLayer(AndroidUtilities.dp(4.0f), 0.0f, 0.0f, 503316480);
        }
        Paint paint2 = this.paint;
        Integer num = this.color;
        paint2.setColor(num != null ? num.intValue() : getThemedColor(Theme.key_chat_messagePanelBackground));
        drawRoundRect(canvas, this.rect, fMin);
        canvas.clipRect(this.rect);
        super.dispatchDraw(canvas);
        canvas.restore();
    }

    public void drawRoundRect(Canvas canvas, android.graphics.Rect rect, float f) {
        RectF rectF = AndroidUtilities.rectTmp;
        rectF.set(rect);
        canvas.drawRoundRect(rectF, f, f, this.paint);
    }

    public void setOverrideColor(int i) {
        this.color = Integer.valueOf(i);
        invalidate();
    }

    public void setIgnoreLayout(boolean z) {
        this.ignoreLayout = z;
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.ignoreLayout) {
            return;
        }
        super.requestLayout();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        updateListViewTranslation(!this.shown, true);
    }

    public void updateVisibility(boolean z) {
        if (z) {
            boolean zIsReversed = isReversed();
            if (!this.shown) {
                this.scrollToFirst = true;
                RecyclerView.LayoutManager layoutManager = this.listView.getLayoutManager();
                LinearLayoutManager linearLayoutManager = this.linearLayoutManager;
                if (layoutManager == linearLayoutManager) {
                    linearLayoutManager.scrollToPositionWithOffset(0, zIsReversed ? -100000 : AppDataDirGuesser.PER_USER_RANGE);
                }
                if (getVisibility() == 8) {
                    this.hideT = 1.0f;
                    this.listView.setTranslationY(zIsReversed ? -(this.listViewPadding + AndroidUtilities.dp(12.0f)) : r2.computeVerticalScrollOffset() + this.listViewPadding);
                }
            }
            setVisibility(0);
        } else {
            this.scrollToFirst = false;
        }
        this.shown = z;
        AndroidUtilities.cancelRunOnUIThread(this.updateVisibilityRunnable);
        SpringAnimation springAnimation = this.listViewTranslationAnimator;
        if (springAnimation != null) {
            springAnimation.cancel();
        }
        Runnable runnable = this.updateVisibilityRunnable;
        WeakReference weakReference = this.baseFragment;
        AndroidUtilities.runOnUIThread(runnable, (weakReference == null || weakReference.get() == null || !((BaseFragment) this.baseFragment.get()).getFragmentBeginToShow()) ? 100L : 0L);
        if (z) {
            onOpen();
        } else {
            onClose();
        }
    }

    public boolean isOpen() {
        return this.shown;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        checkListViewPadding();
        super.onMeasure(i, i2);
    }

    private void updateListViewTranslation(final boolean z, boolean z2) {
        float fDp;
        int i;
        SpringAnimation springAnimation;
        if (this.listView == null || this.paddedAdapter == null) {
            this.scrollRangeUpdateTries = 0;
            return;
        }
        if (this.listViewHiding && (springAnimation = this.listViewTranslationAnimator) != null && springAnimation.isRunning() && z) {
            this.scrollRangeUpdateTries = 0;
            return;
        }
        boolean zIsReversed = isReversed();
        if (z) {
            fDp = (-this.containerPadding) - AndroidUtilities.dp(6.0f);
        } else {
            int iComputeVerticalScrollRange = this.listView.computeVerticalScrollRange();
            float padding = (iComputeVerticalScrollRange - this.paddedAdapter.getPadding()) + this.containerPadding;
            if (iComputeVerticalScrollRange <= 0 && this.adapter.getItemCountInternal() > 0 && (i = this.scrollRangeUpdateTries) < 3) {
                this.scrollRangeUpdateTries = i + 1;
                updateVisibility(true);
                return;
            }
            fDp = padding;
        }
        this.scrollRangeUpdateTries = 0;
        float f = this.listViewPadding;
        float fMax = zIsReversed ? -Math.max(0.0f, f - fDp) : Math.max(0.0f, f - fDp) + (-f);
        if (z && !zIsReversed) {
            fMax += this.listView.computeVerticalScrollOffset();
        }
        final float f2 = fMax;
        SpringAnimation springAnimation2 = this.listViewTranslationAnimator;
        if (springAnimation2 != null) {
            springAnimation2.cancel();
        }
        Integer numValueOf = null;
        if (z2) {
            this.listViewHiding = z;
            final float translationY = this.listView.getTranslationY();
            final float f3 = this.hideT;
            final float f4 = z ? 1.0f : 0.0f;
            if (translationY == f2) {
                this.listViewTranslationAnimator = null;
                numValueOf = Integer.valueOf(z ? 8 : 0);
                if (this.switchLayoutManagerOnEnd && z) {
                    this.switchLayoutManagerOnEnd = false;
                    this.listView.setLayoutManager(getNeededLayoutManager());
                    this.shown = true;
                    updateVisibility(true);
                }
            } else {
                SpringAnimation spring = new SpringAnimation(new FloatValueHolder(translationY)).setSpring(new SpringForce(f2).setDampingRatio(1.0f).setStiffness(550.0f));
                this.listViewTranslationAnimator = spring;
                spring.addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() { // from class: org.telegram.ui.Components.MentionsContainerView$$ExternalSyntheticLambda2
                    @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationUpdateListener
                    public final void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f5, float f6) {
                        this.f$0.lambda$updateListViewTranslation$1(f3, f4, translationY, f2, dynamicAnimation, f5, f6);
                    }
                });
                if (z) {
                    this.listViewTranslationAnimator.addEndListener(new DynamicAnimation.OnAnimationEndListener() { // from class: org.telegram.ui.Components.MentionsContainerView$$ExternalSyntheticLambda3
                        @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationEndListener
                        public final void onAnimationEnd(DynamicAnimation dynamicAnimation, boolean z3, float f5, float f6) {
                            this.f$0.lambda$updateListViewTranslation$2(z, dynamicAnimation, z3, f5, f6);
                        }
                    });
                }
                this.listViewTranslationAnimator.addEndListener(new DynamicAnimation.OnAnimationEndListener() { // from class: org.telegram.ui.Components.MentionsContainerView$$ExternalSyntheticLambda4
                    @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationEndListener
                    public final void onAnimationEnd(DynamicAnimation dynamicAnimation, boolean z3, float f5, float f6) {
                        MentionsContainerView.$r8$lambda$dd_L2UtPYzHyIxI7hKB0lrroym8(dynamicAnimation, z3, f5, f6);
                    }
                });
                this.listViewTranslationAnimator.start();
            }
        } else {
            this.hideT = z ? 1.0f : 0.0f;
            this.listView.setTranslationY(f2);
            if (z) {
                numValueOf = 8;
            }
        }
        if (numValueOf == null || getVisibility() == numValueOf.intValue()) {
            return;
        }
        setVisibility(numValueOf.intValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateListViewTranslation$1(float f, float f2, float f3, float f4, DynamicAnimation dynamicAnimation, float f5, float f6) {
        this.listView.setTranslationY(f5);
        onAnimationScroll();
        this.hideT = AndroidUtilities.lerp(f, f2, (f5 - f3) / (f4 - f3));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateListViewTranslation$2(boolean z, DynamicAnimation dynamicAnimation, boolean z2, float f, float f2) {
        if (z2) {
            return;
        }
        this.listViewTranslationAnimator = null;
        setVisibility(z ? 8 : 0);
        if (this.switchLayoutManagerOnEnd && z) {
            this.switchLayoutManagerOnEnd = false;
            this.listView.setLayoutManager(getNeededLayoutManager());
            this.shown = true;
            updateVisibility(true);
        }
    }

    public void setDialogId(long j) {
        this.adapter.setDialogId(j);
    }

    public void withDelegate(final Delegate delegate) {
        this.delegate = new WeakReference(delegate);
        MentionsListView listView = getListView();
        RecyclerListView.OnItemClickListener onItemClickListener = new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Components.MentionsContainerView$$ExternalSyntheticLambda5
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i) {
                this.f$0.lambda$withDelegate$4(delegate, view, i);
            }
        };
        this.mentionsOnItemClickListener = onItemClickListener;
        listView.setOnItemClickListener(onItemClickListener);
        getListView().setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.Components.MentionsContainerView$$ExternalSyntheticLambda6
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return this.f$0.lambda$withDelegate$5(view, motionEvent);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$withDelegate$4(Delegate delegate, View view, int i) {
        WeakReference weakReference;
        Paint.FontMetricsInt fontMetrics;
        AnimatedEmojiSpan animatedEmojiSpan;
        if (i == 0 || getAdapter().isBannedInline() || (weakReference = this.delegate) == null || weakReference.get() == null) {
            return;
        }
        int i2 = i - 1;
        Object item = getAdapter().getItem(i2);
        int resultStartPosition = getAdapter().getResultStartPosition();
        int resultLength = getAdapter().getResultLength();
        boolean zIsLocalHashtagHint = getAdapter().isLocalHashtagHint(i2);
        String str = _UrlKt.FRAGMENT_ENCODE_SET;
        if (zIsLocalHashtagHint) {
            TLRPC.Chat currentChat = getAdapter().chat;
            if (currentChat == null && getAdapter().parentFragment != null) {
                currentChat = getAdapter().parentFragment.getCurrentChat();
            }
            StringBuilder sb = new StringBuilder();
            sb.append(getAdapter().getHashtagHint());
            if (currentChat != null) {
                str = "@" + ChatObject.getPublicUsername(currentChat);
            }
            sb.append(str);
            sb.append(" ");
            delegate.replaceText(resultStartPosition, resultLength, sb.toString(), false);
            return;
        }
        if (getAdapter().isGlobalHashtagHint(i2)) {
            delegate.replaceText(resultStartPosition, resultLength, getAdapter().getHashtagHint() + " ", false);
            return;
        }
        if (item instanceof TLRPC.TL_document) {
            TLRPC.TL_document tL_document = (TLRPC.TL_document) item;
            ((Delegate) this.delegate.get()).onStickerSelected(tL_document, MessageObject.findAnimatedEmojiEmoticon(tL_document), getAdapter().getItemParent(i2));
        } else if (item instanceof TLRPC.Chat) {
            String publicUsername = ChatObject.getPublicUsername((TLRPC.Chat) item);
            if (publicUsername != null) {
                Delegate delegate2 = (Delegate) this.delegate.get();
                StringBuilder sb2 = new StringBuilder();
                sb2.append("@");
                sb2.append(publicUsername);
                sb2.append(ExteraConfig.addCommaAfterMention ? ", " : " ");
                delegate2.replaceText(resultStartPosition, resultLength, sb2.toString(), false);
            }
        } else if (item instanceof TLRPC.User) {
            TLRPC.User user = (TLRPC.User) item;
            if (UserObject.getPublicUsername(user) != null) {
                Delegate delegate3 = (Delegate) this.delegate.get();
                StringBuilder sb3 = new StringBuilder();
                sb3.append("@");
                sb3.append(UserObject.getPublicUsername(user));
                sb3.append(ExteraConfig.addCommaAfterMention ? ", " : " ");
                delegate3.replaceText(resultStartPosition, resultLength, sb3.toString(), false);
            } else {
                String firstName = UserObject.getFirstName(user, false);
                StringBuilder sb4 = new StringBuilder();
                sb4.append(firstName);
                sb4.append(ExteraConfig.addCommaAfterMention ? ", " : " ");
                SpannableString spannableString = new SpannableString(sb4.toString());
                spannableString.setSpan(new URLSpanUserMention(_UrlKt.FRAGMENT_ENCODE_SET + user.id, 3), 0, firstName.length() + 1, 33);
                ((Delegate) this.delegate.get()).replaceText(resultStartPosition, resultLength, spannableString, false);
            }
        } else if (item instanceof String) {
            ((Delegate) this.delegate.get()).replaceText(resultStartPosition, resultLength, item + " ", false);
        } else if (item instanceof MediaDataController.KeywordResult) {
            String str2 = ((MediaDataController.KeywordResult) item).emoji;
            ((Delegate) this.delegate.get()).addEmojiToRecent(str2);
            if (str2 != null && str2.startsWith("animated_")) {
                try {
                    try {
                        fontMetrics = ((Delegate) this.delegate.get()).getFontMetrics();
                    } catch (Exception e) {
                        FileLog.m955e(e);
                        fontMetrics = null;
                    }
                    long j = Long.parseLong(str2.substring(9));
                    TLRPC.Document documentFindDocument = AnimatedEmojiDrawable.findDocument(UserConfig.selectedAccount, j);
                    SpannableString spannableString2 = new SpannableString(MessageObject.findAnimatedEmojiEmoticon(documentFindDocument));
                    if (documentFindDocument != null) {
                        animatedEmojiSpan = new AnimatedEmojiSpan(documentFindDocument, fontMetrics);
                    } else {
                        animatedEmojiSpan = new AnimatedEmojiSpan(j, fontMetrics);
                    }
                    spannableString2.setSpan(animatedEmojiSpan, 0, spannableString2.length(), 33);
                    ((Delegate) this.delegate.get()).replaceText(resultStartPosition, resultLength, spannableString2, false);
                } catch (Exception unused) {
                    ((Delegate) this.delegate.get()).replaceText(resultStartPosition, resultLength, str2, true);
                }
            } else {
                ((Delegate) this.delegate.get()).replaceText(resultStartPosition, resultLength, str2, true);
            }
            updateVisibility(false);
        }
        if (item instanceof TLRPC.BotInlineResult) {
            TLRPC.BotInlineResult botInlineResult = (TLRPC.BotInlineResult) item;
            if ((botInlineResult.type.equals("photo") && (botInlineResult.photo != null || botInlineResult.content != null)) || ((botInlineResult.type.equals("gif") && (botInlineResult.document != null || botInlineResult.content != null)) || (botInlineResult.type.equals(MediaStreamTrack.VIDEO_TRACK_KIND) && botInlineResult.document != null))) {
                ArrayList arrayList = new ArrayList(getAdapter().getSearchResultBotContext());
                this.botContextResults = arrayList;
                PhotoViewer photoViewer = PhotoViewer.getInstance();
                WeakReference weakReference2 = this.baseFragment;
                photoViewer.setParentActivity(weakReference2 != null ? (BaseFragment) weakReference2.get() : null, this.resourcesProvider);
                PhotoViewer.getInstance().openPhotoForSelect(arrayList, getAdapter().getItemPosition(i2), 3, false, this.botContextProvider, null);
                return;
            }
            ((Delegate) this.delegate.get()).sendBotInlineResult(botInlineResult, true, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$withDelegate$5(View view, MotionEvent motionEvent) {
        return ContentPreviewViewer.getInstance().onTouch(motionEvent, getListView(), 0, this.mentionsOnItemClickListener, null, this.resourcesProvider);
    }

    public class MentionsListView extends RecyclerListView {
        private boolean isDragging;
        private boolean isScrolling;
        private int lastHeight;
        private int lastWidth;

        public MentionsListView(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context, resourcesProvider);
            setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Components.MentionsContainerView.MentionsListView.1
                @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                public void onScrollStateChanged(RecyclerView recyclerView, int i) {
                    MentionsListView.this.isScrolling = i != 0;
                    MentionsListView.this.isDragging = i == 1;
                }

                @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                    int iFindLastVisibleItemPosition;
                    if (MentionsListView.this.getLayoutManager() == MentionsContainerView.this.gridLayoutManager) {
                        iFindLastVisibleItemPosition = MentionsContainerView.this.gridLayoutManager.findLastVisibleItemPosition();
                    } else {
                        iFindLastVisibleItemPosition = MentionsContainerView.this.linearLayoutManager.findLastVisibleItemPosition();
                    }
                    if ((iFindLastVisibleItemPosition == -1 ? 0 : iFindLastVisibleItemPosition) > 0 && iFindLastVisibleItemPosition > MentionsContainerView.this.adapter.getLastItemCount() - 5) {
                        MentionsContainerView.this.adapter.searchForContextBotForNextOffset();
                    }
                    MentionsContainerView.this.onScrolled(!r2.canScrollVertically(-1), true ^ MentionsListView.this.canScrollVertically(1));
                    MentionsContainerView.this.checkBackgroundBounds();
                }
            });
            addItemDecoration(new RecyclerView.ItemDecoration() { // from class: org.telegram.ui.Components.MentionsContainerView.MentionsListView.2
                @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
                public void getItemOffsets(android.graphics.Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
                    int childAdapterPosition;
                    rect.left = 0;
                    rect.right = 0;
                    rect.top = 0;
                    rect.bottom = 0;
                    if (recyclerView.getLayoutManager() != MentionsContainerView.this.gridLayoutManager || (childAdapterPosition = recyclerView.getChildAdapterPosition(view)) == 0 || MentionsContainerView.this.adapter.isStickers()) {
                        return;
                    }
                    if (MentionsContainerView.this.adapter.getBotContextSwitch() == null && MentionsContainerView.this.adapter.getBotWebViewSwitch() == null) {
                        rect.top = AndroidUtilities.dp(2.0f);
                    } else {
                        if (childAdapterPosition == 0) {
                            return;
                        }
                        childAdapterPosition--;
                        if (!MentionsContainerView.this.gridLayoutManager.isFirstRow(childAdapterPosition)) {
                            rect.top = AndroidUtilities.dp(2.0f);
                        }
                    }
                    rect.right = MentionsContainerView.this.gridLayoutManager.isLastInRow(childAdapterPosition) ? 0 : AndroidUtilities.dp(2.0f);
                }
            });
        }

        @Override // org.telegram.ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            MotionEvent motionEvent2;
            boolean z;
            if (MentionsContainerView.this.linearLayoutManager.getReverseLayout()) {
                if (!this.isDragging && MentionsContainerView.this.paddedAdapter != null && MentionsContainerView.this.paddedAdapter.paddingView != null && MentionsContainerView.this.paddedAdapter.paddingViewAttached && motionEvent.getY() > MentionsContainerView.this.paddedAdapter.paddingView.getTop()) {
                    return false;
                }
            } else if (!this.isDragging && MentionsContainerView.this.paddedAdapter != null && MentionsContainerView.this.paddedAdapter.paddingView != null && MentionsContainerView.this.paddedAdapter.paddingViewAttached && motionEvent.getY() < MentionsContainerView.this.paddedAdapter.paddingView.getBottom()) {
                return false;
            }
            if (!this.isScrolling) {
                motionEvent2 = motionEvent;
                if (ContentPreviewViewer.getInstance().onInterceptTouchEvent(motionEvent2, MentionsContainerView.this.listView, 0, null, this.resourcesProvider)) {
                    z = true;
                }
                if ((!MentionsContainerView.this.adapter.isStickers() && motionEvent2.getAction() == 0) || motionEvent2.getAction() == 2) {
                    MentionsContainerView.this.adapter.doSomeStickersAction();
                }
                return !super.onInterceptTouchEvent(motionEvent2) || z;
            }
            motionEvent2 = motionEvent;
            z = false;
            if (!MentionsContainerView.this.adapter.isStickers()) {
                MentionsContainerView.this.adapter.doSomeStickersAction();
            } else {
                MentionsContainerView.this.adapter.doSomeStickersAction();
            }
            if (super.onInterceptTouchEvent(motionEvent2)) {
            }
        }

        @Override // org.telegram.ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            if (MentionsContainerView.this.linearLayoutManager.getReverseLayout()) {
                if (!this.isDragging && MentionsContainerView.this.paddedAdapter != null && MentionsContainerView.this.paddedAdapter.paddingView != null && MentionsContainerView.this.paddedAdapter.paddingViewAttached && motionEvent.getY() > MentionsContainerView.this.paddedAdapter.paddingView.getTop()) {
                    return false;
                }
            } else if (!this.isDragging && MentionsContainerView.this.paddedAdapter != null && MentionsContainerView.this.paddedAdapter.paddingView != null && MentionsContainerView.this.paddedAdapter.paddingViewAttached && motionEvent.getY() < MentionsContainerView.this.paddedAdapter.paddingView.getBottom()) {
                return false;
            }
            return super.onTouchEvent(motionEvent);
        }

        @Override // org.telegram.ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View, android.view.ViewParent
        public void requestLayout() {
            if (MentionsContainerView.this.ignoreLayout) {
                return;
            }
            super.requestLayout();
        }

        @Override // org.telegram.ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            int top;
            int i5 = i3 - i;
            int i6 = i4 - i2;
            boolean zIsReversed = MentionsContainerView.this.isReversed();
            LinearLayoutManager currentLayoutManager = MentionsContainerView.this.getCurrentLayoutManager();
            int iFindFirstVisibleItemPosition = zIsReversed ? currentLayoutManager.findFirstVisibleItemPosition() : currentLayoutManager.findLastVisibleItemPosition();
            View viewFindViewByPosition = currentLayoutManager.findViewByPosition(iFindFirstVisibleItemPosition);
            if (viewFindViewByPosition != null) {
                top = viewFindViewByPosition.getTop() - (zIsReversed ? 0 : this.lastHeight - i6);
            } else {
                top = 0;
            }
            super.onLayout(z, i, i2, i3, i4);
            if (MentionsContainerView.this.scrollToFirst) {
                MentionsContainerView.this.ignoreLayout = true;
                currentLayoutManager.scrollToPositionWithOffset(0, AppDataDirGuesser.PER_USER_RANGE);
                super.onLayout(false, i, i2, i3, i4);
                MentionsContainerView.this.ignoreLayout = false;
                MentionsContainerView.this.scrollToFirst = false;
            } else if (iFindFirstVisibleItemPosition != -1 && i5 == this.lastWidth && i6 - this.lastHeight != 0) {
                MentionsContainerView.this.ignoreLayout = true;
                currentLayoutManager.scrollToPositionWithOffset(iFindFirstVisibleItemPosition, top, false);
                super.onLayout(false, i, i2, i3, i4);
                MentionsContainerView.this.ignoreLayout = false;
            }
            this.lastHeight = i6;
            this.lastWidth = i5;
        }

        @Override // org.telegram.ui.Components.RecyclerListView, android.view.View
        public void setTranslationY(float f) {
            super.setTranslationY(f);
            MentionsContainerView.this.invalidate();
            MentionsContainerView.this.checkBackgroundBounds();
        }

        @Override // org.telegram.ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View
        protected void onMeasure(int i, int i2) {
            int size = View.MeasureSpec.getSize(i2);
            if (MentionsContainerView.this.paddedAdapter != null) {
                MentionsContainerView.this.paddedAdapter.setPadding(size);
            }
            MentionsContainerView.this.listViewPadding = (int) Math.min(AndroidUtilities.dp(126.0f), AndroidUtilities.displaySize.y * 0.22f);
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(size + ((int) MentionsContainerView.this.listViewPadding), TLObject.FLAG_30));
        }

        @Override // androidx.recyclerview.widget.RecyclerView
        public void onScrolled(int i, int i2) {
            super.onScrolled(i, i2);
            MentionsContainerView.this.invalidate();
            MentionsContainerView.this.checkBackgroundBounds();
        }
    }

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }

    /* JADX INFO: loaded from: classes7.dex */
    public interface Delegate {
        void addEmojiToRecent(String str);

        Paint.FontMetricsInt getFontMetrics();

        void onStickerSelected(TLRPC.TL_document tL_document, String str, Object obj);

        void replaceText(int i, int i2, CharSequence charSequence, boolean z);

        void sendBotInlineResult(TLRPC.BotInlineResult botInlineResult, boolean z, int i);

        /* JADX INFO: renamed from: org.telegram.ui.Components.MentionsContainerView$Delegate$-CC, reason: invalid class name */
        public abstract /* synthetic */ class CC {
            public static void $default$onStickerSelected(Delegate delegate, TLRPC.TL_document tL_document, String str, Object obj) {
            }

            public static void $default$addEmojiToRecent(Delegate delegate, String str) {
            }

            public static void $default$sendBotInlineResult(Delegate delegate, TLRPC.BotInlineResult botInlineResult, boolean z, int i) {
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.emojiLoaded);
        if (getAdapter() != null) {
            getAdapter().onAttachedToWindow();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.emojiLoaded);
        if (getAdapter() != null) {
            getAdapter().onDestroy();
        }
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.emojiLoaded) {
            AndroidUtilities.forEachViews((RecyclerView) this.listView, new Consumer() { // from class: org.telegram.ui.Components.MentionsContainerView$$ExternalSyntheticLambda0
                @Override // com.google.android.exoplayer2.util.Consumer
                public final void accept(Object obj) {
                    MentionsContainerView.$r8$lambda$P0RBUas03aNl8uv9eCnt3Tgs_hs((View) obj);
                }
            });
        }
    }

    public static /* synthetic */ void $r8$lambda$P0RBUas03aNl8uv9eCnt3Tgs_hs(View view) {
        if (view instanceof MentionCell) {
            ((MentionCell) view).invalidateEmojis();
        } else if (view instanceof QuickRepliesActivity.QuickReplyView) {
            ((QuickRepliesActivity.QuickReplyView) view).invalidateEmojis();
        } else {
            view.invalidate();
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        checkBackgroundBounds();
    }

    public void setBackgroundDrawable(BlurredBackgroundDrawable blurredBackgroundDrawable) {
        this.backgroundDrawable = blurredBackgroundDrawable;
        blurredBackgroundDrawable.setRadius(AndroidUtilities.dp(22.0f));
        this.backgroundDrawable.setPadding(AndroidUtilities.dp(5.0f));
        checkListViewPadding();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkBackgroundBounds() {
        if (this.listView == null || this.linearLayoutManager == null) {
            return;
        }
        boolean zIsReversed = isReversed();
        this.containerPadding = 0.0f;
        if (zIsReversed) {
            float fMin = Math.min(Math.max(0.0f, (this.paddedAdapter.paddingViewAttached ? r0.paddingView.getTop() : getHeight()) + this.listView.getTranslationY()) + this.containerPadding, (1.0f - this.hideT) * getHeight());
            this.containerTop = 0.0f;
            this.containerBottom = fMin;
        } else {
            this.containerTop = Math.max(Math.max(0.0f, (this.paddedAdapter.paddingViewAttached ? r0.paddingView.getBottom() : 0) + this.listView.getTranslationY()) - this.containerPadding, this.hideT * getHeight());
            this.containerBottom = getMeasuredHeight();
        }
        BlurredBackgroundDrawable blurredBackgroundDrawable = this.backgroundDrawable;
        if (blurredBackgroundDrawable != null) {
            blurredBackgroundDrawable.setBounds(0, ((int) this.containerTop) - AndroidUtilities.dp(5.0f), getMeasuredWidth(), ((int) this.containerBottom) + AndroidUtilities.dp(5.0f));
            this.clipPath.rewind();
            this.clipBounds.set(this.backgroundDrawable.getPaddedBounds());
            if (isGif()) {
                this.clipBounds.inset(AndroidUtilities.dp(2.0f), AndroidUtilities.dp(2.0f));
                this.clipPath.addRoundRect(this.clipBounds, AndroidUtilities.dp(20.0f), AndroidUtilities.dp(20.0f), Path.Direction.CW);
            } else {
                this.clipPath.addRoundRect(this.clipBounds, AndroidUtilities.dp(22.0f), AndroidUtilities.dp(22.0f), Path.Direction.CW);
            }
            this.clipPath.close();
            invalidate();
        }
    }

    private boolean isGif() {
        MentionsAdapter mentionsAdapter;
        MentionsListView mentionsListView = this.listView;
        return (mentionsListView == null || this.gridLayoutManager == null || mentionsListView.getLayoutManager() != this.gridLayoutManager || (mentionsAdapter = this.adapter) == null || !mentionsAdapter.isBotContext()) ? false : true;
    }

    private void checkListViewPadding() {
        if (this.listView == null || this.linearLayoutManager == null) {
            return;
        }
        boolean zIsGif = isGif();
        if (this.backgroundDrawable == null) {
            this.listView.setPadding(0, 0, 0, 0);
        } else {
            this.listView.setPadding(AndroidUtilities.dp(zIsGif ? 7.0f : 5.0f), zIsGif ? AndroidUtilities.dp(2.0f) : 0, AndroidUtilities.dp(zIsGif ? 7.0f : 5.0f), zIsGif ? AndroidUtilities.dp(2.0f) : 0);
        }
    }
}
