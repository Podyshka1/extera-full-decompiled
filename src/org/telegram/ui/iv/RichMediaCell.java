package org.telegram.ui.iv;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.os.Build;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.RichMessageLayout;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.tl.TL_iv;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.TextSelectionHelper;
import org.telegram.ui.Components.AnimatedFloat;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.ItemOptions;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.ScaleStateListAnimator;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;
import org.telegram.ui.Components.UniversalRecyclerView;
import org.telegram.ui.Components.blur3.drawable.BlurredBackgroundDrawableRenderNode;
import org.telegram.ui.Components.blur3.drawable.color.BlurredBackgroundColorProvider;
import org.telegram.ui.Components.blur3.source.BlurredBackgroundSourceColor;
import org.telegram.ui.Components.blur3.source.BlurredBackgroundSourceRenderNode;
import org.telegram.ui.Components.spoilers.SpoilerEffect2;
import org.telegram.ui.iv.RichCaptionController;
import org.telegram.ui.iv.RichEditor;

/* JADX INFO: loaded from: classes7.dex */
public class RichMediaCell extends RichBlockCell implements Theme.Colorable, TextSelectionHelper.ArticleSelectableView, RichCaptionHost {
    private static Paint slideDotPaint;
    private final ImageView addButton;
    private boolean attached;
    private final Paint backgroundPaint;
    private BlurredBackgroundColorProvider blurColors;
    private BlurredBackgroundSourceRenderNode blurSource;
    private final RichCaptionController caption;
    private final HashMap<ImageView, BlurredBackgroundDrawableRenderNode> circleButtonBg;
    private final ArrayList<ImageView> circleButtons;
    private final Path clipPath;
    private int collageH;
    private final ArrayList<RectF> collageRects;
    private int currentPage;
    private Delegate delegate;
    private float downX;
    private float downY;
    private boolean dragging;
    private final boolean glass;
    private int imageH;
    private int imageW;
    private final ArrayList<RectF> itemRects;
    private final ArrayList<RichMediaItem> items;
    private int lastSwitchIconRes;
    private int maxFlingVelocity;
    private final ArrayList<ImageView> menuButtons;
    private int minFlingVelocity;
    private final AnimatedFloat modeProgress;
    private float pageOffset;
    private int pressedItem;
    private final Theme.ResourcesProvider resourcesProvider;
    private final Paint selectionPaint;
    private ValueAnimator settleAnimator;
    private int slideH;
    private int slideW;
    private SpoilerEffect2 spoilerEffect;
    private final ImageView switchModeButton;
    private int touchSlop;
    private VelocityTracker velocityTracker;

    public interface Delegate {
        TextSelectionHelper.ArticleTextSelectionHelper getSelectionHelper();

        ItemOptions makeMenu(View view);

        void onAddMedia(BlockRow blockRow);

        void onCancelUpload(BlockRow blockRow, MediaUploadState mediaUploadState);

        void onCaptionChanged(BlockRow blockRow);

        void onCaptionEnter(BlockRow blockRow);

        void onCaptionLockedInsert(CharSequence charSequence);

        boolean onCaptionSelectAll(BlockRow blockRow);

        void onCaptionSpansChanged(BlockRow blockRow);

        void onCaptionWillChange(BlockRow blockRow, int i, int i2);

        void onDeleteMedia(BlockRow blockRow, MediaUploadState mediaUploadState);

        void onMediaPick(BlockRow blockRow);

        void onRequestWindowFocusable(RichEditText richEditText, boolean z);

        void onSwitchMode(BlockRow blockRow);

        void onToggleSpoiler(BlockRow blockRow, MediaUploadState mediaUploadState);
    }

    @Override // org.telegram.ui.ActionBar.Theme.Colorable
    public /* bridge */ /* synthetic */ int[] getColorKeys() {
        return super.getColorKeys();
    }

    public RichMediaCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.backgroundPaint = new Paint(1);
        this.selectionPaint = new Paint(1);
        this.items = new ArrayList<>();
        this.menuButtons = new ArrayList<>();
        this.collageRects = new ArrayList<>();
        this.itemRects = new ArrayList<>();
        int i = Build.VERSION.SDK_INT;
        boolean z = i >= 31 && SharedConfig.chatBlurEnabled();
        this.glass = z;
        this.circleButtons = new ArrayList<>();
        this.circleButtonBg = new HashMap<>();
        this.pressedItem = -1;
        this.modeProgress = new AnimatedFloat(this, 0L, 320L, CubicBezierInterpolator.EASE_OUT_QUINT);
        this.clipPath = new Path();
        this.resourcesProvider = resourcesProvider;
        setWillNotDraw(false);
        setBlockPadding(0, AndroidUtilities.dp(6.0f), 0, AndroidUtilities.dp(4.0f));
        RichCaptionController richCaptionController = new RichCaptionController(context, resourcesProvider, new RichCaptionController.Host() { // from class: org.telegram.ui.iv.RichMediaCell.1
            @Override // org.telegram.ui.iv.RichCaptionController.Host
            public BlockRow currentRow() {
                return RichMediaCell.this.currentRow;
            }

            @Override // org.telegram.ui.iv.RichCaptionController.Host
            public TextSelectionHelper.ArticleTextSelectionHelper selectionHelper() {
                if (RichMediaCell.this.delegate != null) {
                    return RichMediaCell.this.delegate.getSelectionHelper();
                }
                return null;
            }

            @Override // org.telegram.ui.iv.RichCaptionController.Host
            public TextSelectionHelper.ArticleSelectableView cell() {
                return RichMediaCell.this;
            }

            @Override // org.telegram.ui.iv.RichCaptionController.Host
            public void onCaptionWillChange(int i2, int i3) {
                if (RichMediaCell.this.delegate != null) {
                    RichMediaCell.this.delegate.onCaptionWillChange(RichMediaCell.this.currentRow, i2, i3);
                }
            }

            @Override // org.telegram.ui.iv.RichCaptionController.Host
            public void onCaptionChanged() {
                if (RichMediaCell.this.delegate != null) {
                    RichMediaCell.this.delegate.onCaptionChanged(RichMediaCell.this.currentRow);
                }
            }

            @Override // org.telegram.ui.iv.RichCaptionController.Host
            public void onCaptionSpansChanged() {
                if (RichMediaCell.this.delegate != null) {
                    RichMediaCell.this.delegate.onCaptionSpansChanged(RichMediaCell.this.currentRow);
                }
            }

            @Override // org.telegram.ui.iv.RichCaptionController.Host
            public void onCaptionEnter() {
                if (RichMediaCell.this.delegate != null) {
                    RichMediaCell.this.delegate.onCaptionEnter(RichMediaCell.this.currentRow);
                }
            }

            @Override // org.telegram.ui.iv.RichCaptionController.Host
            public void onRequestWindowFocusable(RichEditText richEditText, boolean z2) {
                if (RichMediaCell.this.delegate != null) {
                    RichMediaCell.this.delegate.onRequestWindowFocusable(richEditText, z2);
                }
            }

            @Override // org.telegram.ui.iv.RichCaptionController.Host
            public void onCaptionLockedInsert(CharSequence charSequence) {
                if (RichMediaCell.this.delegate != null) {
                    RichMediaCell.this.delegate.onCaptionLockedInsert(charSequence);
                }
            }

            @Override // org.telegram.ui.iv.RichCaptionController.Host
            public boolean onCaptionSelectAll() {
                return RichMediaCell.this.delegate != null && RichMediaCell.this.delegate.onCaptionSelectAll(RichMediaCell.this.currentRow);
            }
        });
        this.caption = richCaptionController;
        addView(richCaptionController.editText, LayoutHelper.createFrame(-2, -2, 51));
        setClipChildren(false);
        setClipToPadding(false);
        if (z && i >= 31) {
            BlurredBackgroundSourceRenderNode blurredBackgroundSourceRenderNode = new BlurredBackgroundSourceRenderNode(new BlurredBackgroundSourceColor());
            this.blurSource = blurredBackgroundSourceRenderNode;
            blurredBackgroundSourceRenderNode.setBlur(AndroidUtilities.dp(24.0f));
            this.blurColors = new BlurredBackgroundColorProvider() { // from class: org.telegram.ui.iv.RichMediaCell.2
                @Override // org.telegram.ui.Components.blur3.drawable.color.BlurredBackgroundColorProvider
                public int getBackgroundColor() {
                    return 1711276032;
                }

                @Override // org.telegram.ui.Components.blur3.drawable.color.BlurredBackgroundColorProvider
                public int getShadowColor() {
                    return 0;
                }

                @Override // org.telegram.ui.Components.blur3.drawable.color.BlurredBackgroundColorProvider
                public int getStrokeColorBottom() {
                    return 352321535;
                }

                @Override // org.telegram.ui.Components.blur3.drawable.color.BlurredBackgroundColorProvider
                public int getStrokeColorTop() {
                    return 872415231;
                }
            };
        }
        ImageView imageViewCreateCircleButton = createCircleButton();
        this.addButton = imageViewCreateCircleButton;
        imageViewCreateCircleButton.setImageResource(C2665R.drawable.iv_media_add);
        addView(imageViewCreateCircleButton, LayoutHelper.createFrame(32, 32.0f, 53, 12.0f, 12.0f, 12.0f, 12.0f));
        imageViewCreateCircleButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.iv.RichMediaCell$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$0(view);
            }
        });
        ImageView imageViewCreateCircleButton2 = createCircleButton();
        this.switchModeButton = imageViewCreateCircleButton2;
        imageViewCreateCircleButton2.setVisibility(8);
        addView(imageViewCreateCircleButton2, LayoutHelper.createFrame(32, 32.0f, 53, 12.0f, 12.0f, 66.0f, 12.0f));
        imageViewCreateCircleButton2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.iv.RichMediaCell$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$1(view);
            }
        });
        updateColors();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        BlockRow blockRow;
        Delegate delegate = this.delegate;
        if (delegate == null || (blockRow = this.currentRow) == null) {
            return;
        }
        delegate.onAddMedia(blockRow);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(View view) {
        BlockRow blockRow;
        Delegate delegate = this.delegate;
        if (delegate == null || (blockRow = this.currentRow) == null) {
            return;
        }
        delegate.onSwitchMode(blockRow);
    }

    private ImageView createCircleButton() {
        ImageView imageView = new ImageView(getContext());
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        if (this.glass && Build.VERSION.SDK_INT >= 31) {
            imageView.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_IN));
            BlurredBackgroundDrawableRenderNode blurredBackgroundDrawableRenderNode = (BlurredBackgroundDrawableRenderNode) this.blurSource.createDrawable();
            blurredBackgroundDrawableRenderNode.setColorProvider(this.blurColors);
            blurredBackgroundDrawableRenderNode.setRadius(AndroidUtilities.dp(16.0f));
            this.circleButtonBg.put(imageView, blurredBackgroundDrawableRenderNode);
        } else {
            imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, this.resourcesProvider), PorterDuff.Mode.SRC_IN));
            int i = Theme.key_windowBackgroundWhite;
            imageView.setBackground(RichEditor.withShadow(Theme.createRadSelectorDrawable(Theme.getColor(i, this.resourcesProvider), Theme.blendOver(Theme.getColor(i, this.resourcesProvider), Theme.getColor(Theme.key_listSelector, this.resourcesProvider)), 20, 20)));
        }
        ScaleStateListAnimator.apply(imageView);
        this.circleButtons.add(imageView);
        return imageView;
    }

    private boolean isSlideshow() {
        BlockRow blockRow = this.currentRow;
        return blockRow != null && (blockRow.block instanceof TL_iv.pageBlockSlideshow);
    }

    @Override // org.telegram.ui.iv.RichBlockCell
    public int nestedContentMargin() {
        return AndroidUtilities.dp(16.0f);
    }

    private int captionMargin() {
        if (RichBlockChrome.insetFor(this.currentRow) > 0) {
            return nestedContentMargin();
        }
        return 0;
    }

    public void bind(BlockRow blockRow, Delegate delegate) {
        this.currentRow = blockRow;
        this.delegate = delegate;
        bindBlockInset(blockRow);
        if (blockRow != null && !isGalleryRow() && blockRow.media == null) {
            blockRow.media = new MediaUploadState();
        }
        rebuildItems();
        this.caption.bind();
        if (this.currentPage >= this.items.size()) {
            this.currentPage = Math.max(0, this.items.size() - 1);
        }
        this.pageOffset = 0.0f;
        this.modeProgress.set(isSlideshow() ? 1.0f : 0.0f, true);
        updateSwitchButton(false);
        requestLayout();
        invalidate();
    }

    public void refresh() {
        if (this.currentRow == null) {
            return;
        }
        rebuildItems();
        if (this.currentPage >= this.items.size()) {
            this.currentPage = Math.max(0, this.items.size() - 1);
        }
        updateSwitchButton(false);
        requestLayout();
        invalidate();
    }

    private boolean isGalleryRow() {
        BlockRow blockRow = this.currentRow;
        if (blockRow == null) {
            return false;
        }
        TL_iv.PageBlock pageBlock = blockRow.block;
        return (pageBlock instanceof TL_iv.pageBlockCollage) || (pageBlock instanceof TL_iv.pageBlockSlideshow);
    }

    private List<MediaUploadState> medias() {
        if (this.currentRow == null) {
            return Collections.EMPTY_LIST;
        }
        boolean zIsGalleryRow = isGalleryRow();
        BlockRow blockRow = this.currentRow;
        if (zIsGalleryRow) {
            ArrayList<MediaUploadState> arrayList = blockRow.medias;
            return arrayList != null ? arrayList : Collections.EMPTY_LIST;
        }
        MediaUploadState mediaUploadState = blockRow.media;
        return mediaUploadState != null ? Collections.singletonList(mediaUploadState) : Collections.EMPTY_LIST;
    }

    private void updateSwitchButton(boolean z) {
        boolean z2 = this.items.size() >= 2;
        this.switchModeButton.setVisibility(z2 ? 0 : 8);
        if (z2) {
            int i = isSlideshow() ? C2665R.drawable.iv_media_slideshow : C2665R.drawable.iv_media_collage;
            if (i == this.lastSwitchIconRes) {
                return;
            }
            this.lastSwitchIconRes = i;
            ImageView imageView = this.switchModeButton;
            if (z) {
                AndroidUtilities.updateImageViewImageAnimated(imageView, i);
            } else {
                imageView.setImageResource(i);
            }
        }
    }

    public void onModeChanged() {
        ValueAnimator valueAnimator = this.settleAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.settleAnimator = null;
        }
        if (getParent() != null) {
            getParent().requestDisallowInterceptTouchEvent(false);
        }
        VelocityTracker velocityTracker = this.velocityTracker;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.velocityTracker = null;
        }
        this.currentPage = 0;
        this.pageOffset = 0.0f;
        updateSwitchButton(true);
        requestLayout();
        invalidate();
    }

    private void rebuildItems() {
        List<MediaUploadState> listMedias = medias();
        while (this.items.size() < listMedias.size()) {
            RichMediaItem richMediaItem = new RichMediaItem(this, this.resourcesProvider);
            if (this.attached) {
                richMediaItem.attach();
            }
            this.items.add(richMediaItem);
        }
        while (this.items.size() > listMedias.size()) {
            this.items.remove(r1.size() - 1).detach();
        }
        for (int i = 0; i < listMedias.size(); i++) {
            this.items.get(i).setMedia(listMedias.get(i));
        }
        while (this.menuButtons.size() < listMedias.size()) {
            ImageView imageViewCreateCircleButton = createCircleButton();
            imageViewCreateCircleButton.setImageResource(C2665R.drawable.iv_media_dots);
            imageViewCreateCircleButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.iv.RichMediaCell$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$rebuildItems$2(view);
                }
            });
            addView(imageViewCreateCircleButton, LayoutHelper.createFrame(32, 32, 51));
            this.menuButtons.add(imageViewCreateCircleButton);
        }
        this.addButton.bringToFront();
        this.switchModeButton.bringToFront();
        while (this.menuButtons.size() > listMedias.size()) {
            ImageView imageViewRemove = this.menuButtons.remove(r1.size() - 1);
            removeView(imageViewRemove);
            this.circleButtons.remove(imageViewRemove);
            this.circleButtonBg.remove(imageViewRemove);
        }
        if (this.spoilerEffect == null || hasAnySpoiler()) {
            return;
        }
        this.spoilerEffect.detach(this);
        this.spoilerEffect = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$rebuildItems$2(View view) {
        onMenuClicked(this.menuButtons.indexOf(view));
    }

    private boolean hasAnySpoiler() {
        for (int i = 0; i < this.items.size(); i++) {
            MediaUploadState media = this.items.get(i).getMedia();
            if (media != null && media.hasSpoiler) {
                return true;
            }
        }
        return false;
    }

    private void onMenuClicked(int i) {
        if (this.delegate == null || this.currentRow == null) {
            return;
        }
        List<MediaUploadState> listMedias = medias();
        if (i < 0 || i >= listMedias.size() || i >= this.menuButtons.size()) {
            return;
        }
        final MediaUploadState mediaUploadState = listMedias.get(i);
        ItemOptions itemOptionsMakeMenu = this.delegate.makeMenu(this.menuButtons.get(i));
        if (itemOptionsMakeMenu == null) {
            return;
        }
        boolean z = mediaUploadState.hasSpoiler;
        itemOptionsMakeMenu.add(z ? C2665R.drawable.msg_spoiler_off : C2665R.drawable.msg_spoiler, LocaleController.getString(z ? C2665R.string.DisablePhotoSpoiler : C2665R.string.EnablePhotoSpoiler), new Runnable() { // from class: org.telegram.ui.iv.RichMediaCell$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onMenuClicked$3(mediaUploadState);
            }
        });
        itemOptionsMakeMenu.add(C2665R.drawable.msg_delete, (CharSequence) LocaleController.getString(C2665R.string.Delete), true, new Runnable() { // from class: org.telegram.ui.iv.RichMediaCell$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onMenuClicked$4(mediaUploadState);
            }
        });
        itemOptionsMakeMenu.translate(0.0f, -AndroidUtilities.dp(38.0f));
        if (this.glass) {
            itemOptionsMakeMenu.setBlur(false, true);
            itemOptionsMakeMenu.setDimAlpha(0);
        }
        itemOptionsMakeMenu.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onMenuClicked$3(MediaUploadState mediaUploadState) {
        BlockRow blockRow;
        Delegate delegate = this.delegate;
        if (delegate == null || (blockRow = this.currentRow) == null) {
            return;
        }
        delegate.onToggleSpoiler(blockRow, mediaUploadState);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onMenuClicked$4(MediaUploadState mediaUploadState) {
        BlockRow blockRow;
        Delegate delegate = this.delegate;
        if (delegate == null || (blockRow = this.currentRow) == null) {
            return;
        }
        delegate.onDeleteMedia(blockRow, mediaUploadState);
    }

    @Override // org.telegram.ui.iv.RichCaptionHost
    public BlockRow getRow() {
        return this.currentRow;
    }

    @Override // org.telegram.ui.iv.RichCaptionHost
    public RichEditText getCaptionEditText() {
        return this.caption.editText;
    }

    @Override // org.telegram.ui.iv.RichCaptionHost
    public void persistCaption() {
        this.caption.persist();
    }

    @Override // org.telegram.ui.iv.RichCaptionHost
    public boolean isPressOnCaption(int i, int i2) {
        return this.caption.isPressOnCaption(i, i2);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.attached = true;
        for (int i = 0; i < this.items.size(); i++) {
            this.items.get(i).attach();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.attached = false;
        if (getParent() != null) {
            getParent().requestDisallowInterceptTouchEvent(false);
        }
        VelocityTracker velocityTracker = this.velocityTracker;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.velocityTracker = null;
        }
        this.dragging = false;
        for (int i = 0; i < this.items.size(); i++) {
            this.items.get(i).detach();
        }
        SpoilerEffect2 spoilerEffect2 = this.spoilerEffect;
        if (spoilerEffect2 != null) {
            spoilerEffect2.detach(this);
            this.spoilerEffect = null;
        }
        ValueAnimator valueAnimator = this.settleAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.settleAnimator = null;
        }
    }

    private SpoilerEffect2 getSpoilerEffect() {
        if (!this.attached || !SpoilerEffect2.supports()) {
            return null;
        }
        SpoilerEffect2 spoilerEffect2 = this.spoilerEffect;
        if (spoilerEffect2 != null && spoilerEffect2.destroyed) {
            this.spoilerEffect = null;
        }
        if (this.spoilerEffect == null) {
            this.spoilerEffect = SpoilerEffect2.getInstance(this);
        }
        return this.spoilerEffect;
    }

    @Override // org.telegram.ui.ActionBar.Theme.Colorable
    public void updateColors() {
        this.backgroundPaint.setColor(Theme.getColor(Theme.key_chat_inFileBackground, this.resourcesProvider));
        this.selectionPaint.setColor(Theme.getColor(Theme.key_chat_inTextSelectionHighlight, this.resourcesProvider));
        RichCaptionController richCaptionController = this.caption;
        if (richCaptionController != null) {
            richCaptionController.applyColors();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int iMax = Math.max(0, (size - paddingLeft) - paddingRight);
        float f = this.modeProgress.set(isSlideshow() ? 1.0f : 0.0f);
        computeGeometry(iMax);
        this.imageW = iMax;
        this.imageH = Math.round(AndroidUtilities.lerp(this.collageH, this.slideH, f));
        buildItemRects(f);
        int iCaptionMargin = captionMargin();
        setMeasuredDimension(size, getPaddingTop() + this.imageH + this.caption.measure(paddingLeft - iCaptionMargin, paddingRight - iCaptionMargin, size) + getPaddingBottom());
        this.addButton.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(32.0f), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(32.0f), TLObject.FLAG_30));
        this.switchModeButton.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(32.0f), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(32.0f), TLObject.FLAG_30));
        for (int i3 = 0; i3 < this.menuButtons.size(); i3++) {
            this.menuButtons.get(i3).measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(32.0f), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(32.0f), TLObject.FLAG_30));
        }
        if (this.modeProgress.isInProgress()) {
            requestLayout();
        }
    }

    private void computeGeometry(int i) {
        int iRound;
        float f;
        int i2;
        int iDp;
        int iMax;
        this.collageRects.clear();
        int paddingTop = getPaddingTop();
        int size = this.items.size();
        if (size == 0) {
            int iDp2 = (AndroidUtilities.dp(200.0f) - getPaddingTop()) - getPaddingBottom();
            this.slideH = iDp2;
            this.collageH = iDp2;
            this.slideW = i;
            return;
        }
        float f2 = 0.55f;
        int i3 = 0;
        int i4 = 1;
        if (size == 1) {
            RichMediaItem richMediaItem = this.items.get(0);
            int width = richMediaItem.getWidth();
            int height = richMediaItem.getHeight();
            if (width > 0 && height > 0) {
                iDp = (int) ((i / Math.max(1, width)) * height);
                Point point = AndroidUtilities.displaySize;
                int iMax2 = (int) (Math.max(point.x, point.y) * 0.55f);
                if (iDp > iMax2) {
                    iMax = (int) ((iMax2 / Math.max(1, height)) * width);
                    iDp = iMax2;
                }
                this.collageRects.add(new RectF((i - iMax) / 2, paddingTop, r1 + iMax, paddingTop + iDp));
                this.collageH = iDp;
                this.slideW = iMax;
                this.slideH = iDp;
                return;
            }
            iDp = (AndroidUtilities.dp(200.0f) - getPaddingTop()) - getPaddingBottom();
            iMax = i;
            this.collageRects.add(new RectF((i - iMax) / 2, paddingTop, r1 + iMax, paddingTop + iDp));
            this.collageH = iDp;
            this.slideW = iMax;
            this.slideH = iDp;
            return;
        }
        float[] fArr = new float[size];
        for (int i5 = 0; i5 < size; i5++) {
            fArr[i5] = aspectRatio(this.items.get(i5));
        }
        MessageObject.GroupedMessagePosition[] groupedMessagePositionArrComputeGrouped = RichMessageLayout.computeGrouped(fArr);
        int iMax3 = 0;
        for (MessageObject.GroupedMessagePosition groupedMessagePosition : groupedMessagePositionArrComputeGrouped) {
            iMax3 = Math.max(iMax3, (int) groupedMessagePosition.maxY);
        }
        int i6 = iMax3 + 1;
        float[] fArr2 = new float[i6];
        for (MessageObject.GroupedMessagePosition groupedMessagePosition2 : groupedMessagePositionArrComputeGrouped) {
            byte b2 = groupedMessagePosition2.minY;
            if (b2 == groupedMessagePosition2.maxY) {
                fArr2[b2] = Math.max(fArr2[b2], groupedMessagePosition2.ph);
            }
        }
        int length = groupedMessagePositionArrComputeGrouped.length;
        int i7 = 0;
        while (i7 < length) {
            MessageObject.GroupedMessagePosition groupedMessagePosition3 = groupedMessagePositionArrComputeGrouped[i7];
            int i8 = groupedMessagePosition3.minY;
            byte b3 = groupedMessagePosition3.maxY;
            if (i8 != b3) {
                int i9 = (b3 - i8) + i4;
                f = f2;
                float[] fArr3 = groupedMessagePosition3.siblingHeights;
                if (fArr3 == null || fArr3.length != i9) {
                    i2 = i4;
                    float f3 = groupedMessagePosition3.ph / i9;
                    while (i8 <= groupedMessagePosition3.maxY) {
                        fArr2[i8] = Math.max(fArr2[i8], f3);
                        i8++;
                    }
                    i7++;
                    f2 = f;
                    i4 = i2;
                } else {
                    int i10 = 0;
                    while (i10 < i9) {
                        byte b4 = groupedMessagePosition3.minY;
                        fArr2[b4 + i10] = Math.max(fArr2[b4 + i10], groupedMessagePosition3.siblingHeights[i10]);
                        i10++;
                        i4 = i4;
                    }
                }
            } else {
                f = f2;
            }
            i2 = i4;
            i7++;
            f2 = f;
            i4 = i2;
        }
        float f4 = f2;
        Point point2 = AndroidUtilities.displaySize;
        float fMax = Math.max(point2.x, point2.y) * 0.5f;
        int[] iArr = new int[iMax3 + 2];
        float f5 = 0.0f;
        for (int i11 = 0; i11 <= iMax3; i11++) {
            iArr[i11] = Math.round(f5 * fMax);
            f5 += fArr2[i11];
        }
        iArr[i6] = Math.round(f5 * fMax);
        int iDp3 = AndroidUtilities.dp(2.0f);
        int i12 = 0;
        while (i12 < groupedMessagePositionArrComputeGrouped.length) {
            MessageObject.GroupedMessagePosition groupedMessagePosition4 = groupedMessagePositionArrComputeGrouped[i12];
            int i13 = iArr[groupedMessagePosition4.minY];
            int i14 = iArr[groupedMessagePosition4.maxY + 1] - i13;
            if (groupedMessagePosition4.leftSpanOffset > 0) {
                iRound = Math.round((r15 * i) / 1000.0f);
            } else {
                int i15 = i3;
                int i16 = i15;
                while (i15 < groupedMessagePositionArrComputeGrouped.length) {
                    if (i15 != i12) {
                        MessageObject.GroupedMessagePosition groupedMessagePosition5 = groupedMessagePositionArrComputeGrouped[i15];
                        byte b5 = groupedMessagePosition5.minY;
                        byte b6 = groupedMessagePosition4.minY;
                        if (b5 <= b6 && groupedMessagePosition5.maxY >= b6 && groupedMessagePosition5.minX < groupedMessagePosition4.minX) {
                            i16 += groupedMessagePosition5.pw;
                        }
                    }
                    i15++;
                }
                iRound = Math.round((i16 * i) / 1000.0f);
            }
            int iRound2 = (groupedMessagePosition4.flags & 2) != 0 ? i - iRound : Math.round((groupedMessagePosition4.pw * i) / 1000.0f) - iDp3;
            if ((groupedMessagePosition4.flags & 8) == 0) {
                i14 -= iDp3;
            }
            this.collageRects.add(new RectF(iRound, i13 + paddingTop, iRound + Math.max(0, iRound2), r13 + Math.max(0, i14)));
            i12++;
            i3 = 0;
            paddingTop = paddingTop;
            groupedMessagePositionArrComputeGrouped = groupedMessagePositionArrComputeGrouped;
        }
        this.collageH = iArr[i6];
        this.slideW = i;
        float fAspectRatio = 0.0f;
        while (i3 < size) {
            fAspectRatio += aspectRatio(this.items.get(i3));
            i3++;
        }
        int iMax4 = (int) (this.slideW / Math.max(0.5f, fAspectRatio / size));
        Point point3 = AndroidUtilities.displaySize;
        int iMax5 = (int) (Math.max(point3.x, point3.y) * f4);
        if (iMax4 > iMax5) {
            iMax4 = iMax5;
        }
        this.slideH = iMax4;
    }

    private void buildItemRects(float f) {
        this.itemRects.clear();
        int size = this.items.size();
        if (size == 0) {
            return;
        }
        int paddingTop = getPaddingTop();
        if (size == 1) {
            this.itemRects.add(new RectF(this.collageRects.get(0)));
            return;
        }
        float f2 = (-this.pageOffset) * this.slideW;
        for (int i = 0; i < size && i < this.collageRects.size(); i++) {
            RectF rectF = this.collageRects.get(i);
            float f3 = ((i - this.currentPage) * this.slideW) + f2;
            this.itemRects.add(new RectF(AndroidUtilities.lerp(rectF.left, f3, f), AndroidUtilities.lerp(rectF.top, paddingTop, f), AndroidUtilities.lerp(rectF.right, f3 + this.slideW, f), AndroidUtilities.lerp(rectF.bottom, this.slideH + paddingTop, f)));
        }
    }

    private static float aspectRatio(RichMediaItem richMediaItem) {
        int width = richMediaItem.getWidth();
        int height = richMediaItem.getHeight();
        if (width <= 0 || height <= 0) {
            return 1.0f;
        }
        return width / height;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int i5 = i3 - i;
        int iMax = Math.max(0, (i5 - paddingLeft) - paddingRight);
        int i6 = i5 - paddingRight;
        int iCaptionMargin = captionMargin();
        this.caption.layout(paddingLeft - iCaptionMargin, paddingRight - iCaptionMargin, i5, getPaddingTop() + this.imageH);
        int iDp = AndroidUtilities.dp(6.0f);
        ImageView imageView = this.addButton;
        int i7 = i6 - iDp;
        imageView.layout(i7 - imageView.getMeasuredWidth(), getPaddingTop() + iDp, i7, getPaddingTop() + iDp + this.addButton.getMeasuredHeight());
        int i8 = i7 - iDp;
        this.switchModeButton.layout((i8 - this.addButton.getMeasuredWidth()) - this.switchModeButton.getMeasuredWidth(), getPaddingTop() + iDp, i8 - this.addButton.getMeasuredWidth(), getPaddingTop() + iDp + this.addButton.getMeasuredHeight());
        List<MediaUploadState> listMedias = medias();
        for (int i9 = 0; i9 < this.menuButtons.size(); i9++) {
            ImageView imageView2 = this.menuButtons.get(i9);
            if (i9 >= listMedias.size() || listMedias.get(i9).state == 0 || i9 >= this.itemRects.size()) {
                imageView2.setVisibility(8);
            } else {
                RectF rectF = this.itemRects.get(i9);
                if (rectF.right <= 0.0f || rectF.left >= iMax || rectF.bottom <= getPaddingTop() || rectF.top >= getPaddingTop() + this.imageH) {
                    imageView2.setVisibility(8);
                } else {
                    int i10 = ((int) rectF.left) + iDp + paddingLeft;
                    int i11 = ((int) rectF.top) + iDp;
                    imageView2.layout(i10, i11, imageView2.getMeasuredWidth() + i10, imageView2.getMeasuredHeight() + i11);
                    float fMax = 1.0f;
                    if (this.glass) {
                        int left = (this.switchModeButton.getVisibility() == 0 ? this.switchModeButton : this.addButton).getLeft() - AndroidUtilities.dp(4.0f);
                        if (i10 + imageView2.getMeasuredWidth() > left) {
                            fMax = Math.max(0.0f, 1.0f - ((r4 - left) / imageView2.getMeasuredWidth()));
                        }
                    }
                    imageView2.setAlpha(fMax);
                    imageView2.setVisibility(fMax > 0.01f ? 0 : 8);
                }
            }
        }
    }

    private boolean isCellSelected() {
        TextSelectionHelper.ArticleTextSelectionHelper selectionHelper;
        int childAdapterPosition;
        Delegate delegate = this.delegate;
        return delegate != null && (selectionHelper = delegate.getSelectionHelper()) != null && selectionHelper.isInSelectionMode() && (getParent() instanceof RecyclerView) && (childAdapterPosition = ((RecyclerView) getParent()).getChildAdapterPosition(this)) >= 0 && childAdapterPosition > selectionHelper.getStartCell() && childAdapterPosition <= selectionHelper.getEndCell();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        Canvas canvas2;
        int paddingTop = getPaddingTop();
        drawMedia(canvas);
        float f = this.modeProgress.get();
        if (this.items.size() >= 2 && f > 0.001f) {
            drawDots(canvas, f);
        }
        if (isCellSelected()) {
            canvas2 = canvas;
            canvas2.drawRect(getPaddingLeft(), paddingTop, getWidth() - getPaddingRight(), paddingTop + this.imageH, this.selectionPaint);
        } else {
            canvas2 = canvas;
        }
        drawGlassButtons(canvas2);
        if (this.modeProgress.isInProgress()) {
            requestLayout();
        }
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j) {
        if (this.menuButtons.contains(view) && RichBlockChrome.quoteDepth(this.currentRow) > 0) {
            canvas.save();
            this.clipPath.rewind();
            this.clipPath.addRoundRect(getPaddingLeft(), getPaddingTop(), getPaddingLeft() + Math.max(0, (getWidth() - getPaddingLeft()) - getPaddingRight()), getPaddingTop() + this.imageH, AndroidUtilities.dp(8.0f), AndroidUtilities.dp(8.0f), Path.Direction.CW);
            canvas.clipPath(this.clipPath);
            boolean zDrawChild = super.drawChild(canvas, view, j);
            canvas.restore();
            return zDrawChild;
        }
        return super.drawChild(canvas, view, j);
    }

    private void drawMedia(Canvas canvas) {
        Canvas canvas2;
        int i;
        int paddingTop = getPaddingTop();
        int paddingLeft = getPaddingLeft();
        int iMax = Math.max(0, (getWidth() - paddingLeft) - getPaddingRight());
        canvas.save();
        canvas.translate(paddingLeft, 0.0f);
        if (RichBlockChrome.quoteDepth(this.currentRow) > 0) {
            this.clipPath.rewind();
            this.clipPath.addRoundRect(0.0f, paddingTop, iMax, this.imageH + paddingTop, AndroidUtilities.dp(8.0f), AndroidUtilities.dp(8.0f), Path.Direction.CW);
            canvas.clipPath(this.clipPath);
        } else {
            canvas.clipRect(0, paddingTop, iMax, this.imageH + paddingTop);
        }
        boolean z = isSlideshow() && this.items.size() >= 2;
        int iDp = RichBlockChrome.quoteDepth(this.currentRow) > 0 ? AndroidUtilities.dp(8.0f) : 0;
        if (!z || (((i = this.currentPage) != 0 || this.pageOffset >= 0.0f) && (i != this.items.size() - 1 || this.pageOffset <= 0.0f))) {
            canvas2 = canvas;
        } else {
            canvas2 = canvas;
            canvas2.drawRect(0.0f, paddingTop, iMax, this.imageH + paddingTop, this.backgroundPaint);
        }
        if (this.items.size() == 1 && this.itemRects.size() == 1) {
            RectF rectF = this.itemRects.get(0);
            if (rectF.left > 0.5f || rectF.right < iMax - 0.5f) {
                RectF rectF2 = AndroidUtilities.rectTmp;
                rectF2.set(0.0f, paddingTop, iMax, paddingTop + this.imageH);
                this.items.get(0).drawBlurBackground(canvas2, rectF2);
            }
        }
        int i2 = 0;
        while (i2 < this.items.size() && i2 < this.itemRects.size()) {
            RichMediaItem richMediaItem = this.items.get(i2);
            RectF rectF3 = this.itemRects.get(i2);
            if (z) {
                richMediaItem.setRoundRadius(i2 == 0 ? iDp : 0, i2 == this.items.size() - 1 ? iDp : 0, i2 == this.items.size() - 1 ? iDp : 0, i2 == 0 ? iDp : 0);
            } else {
                richMediaItem.setRoundRadius(0, 0, 0, 0);
            }
            if (!richMediaItem.hasImage()) {
                canvas2.drawRect(rectF3, this.backgroundPaint);
            }
            richMediaItem.draw(canvas2, rectF3);
            MediaUploadState media = richMediaItem.getMedia();
            if (media != null && media.hasSpoiler && richMediaItem.hasImage()) {
                richMediaItem.drawSpoiler(canvas2, rectF3, getSpoilerEffect(), this);
            }
            i2++;
        }
        canvas2.restore();
    }

    private void drawGlassButtons(Canvas canvas) {
        if (!this.glass || this.blurSource == null || Build.VERSION.SDK_INT < 31) {
            return;
        }
        int width = getWidth();
        int height = getHeight();
        if (width <= 0 || height <= 0) {
            return;
        }
        if (canvas.isHardwareAccelerated() && !this.blurSource.inRecording()) {
            try {
                drawMedia(this.blurSource.beginRecording(width, height));
            } finally {
                this.blurSource.endRecording();
            }
        }
        for (int i = 0; i < this.circleButtons.size(); i++) {
            ImageView imageView = this.circleButtons.get(i);
            if (imageView != this.addButton && imageView != this.switchModeButton) {
                drawGlassButton(canvas, imageView);
            }
        }
        drawGlassButton(canvas, this.switchModeButton);
        drawGlassButton(canvas, this.addButton);
    }

    private void drawGlassButton(Canvas canvas, ImageView imageView) {
        BlurredBackgroundDrawableRenderNode blurredBackgroundDrawableRenderNode;
        if (imageView.getVisibility() == 0 && (blurredBackgroundDrawableRenderNode = this.circleButtonBg.get(imageView)) != null) {
            blurredBackgroundDrawableRenderNode.setBounds(imageView.getLeft(), imageView.getTop(), imageView.getRight(), imageView.getBottom());
            blurredBackgroundDrawableRenderNode.setAlpha((int) (imageView.getAlpha() * 255.0f));
            blurredBackgroundDrawableRenderNode.invalidateDisplayList();
            blurredBackgroundDrawableRenderNode.draw(canvas);
        }
    }

    private void drawDots(Canvas canvas, float f) {
        float f2;
        float f3;
        float fClamp;
        if (slideDotPaint == null) {
            Paint paint = new Paint(1);
            slideDotPaint = paint;
            paint.setColor(-1);
            slideDotPaint.setShadowLayer(AndroidUtilities.dpf2(3.0f), 0.0f, AndroidUtilities.dpf2(1.0f), Integer.MIN_VALUE);
        }
        int size = this.items.size();
        float paddingTop = ((getPaddingTop() + this.imageH) - AndroidUtilities.dp(23.0f)) + AndroidUtilities.dp(5.0f);
        int iDp = (AndroidUtilities.dp(7.0f) * size) + ((size - 1) * AndroidUtilities.dp(6.0f)) + AndroidUtilities.dp(4.0f);
        int paddingLeft = getPaddingLeft();
        int iMax = Math.max(0, (getWidth() - paddingLeft) - getPaddingRight());
        float f4 = this.currentPage + this.pageOffset;
        if (iDp < iMax) {
            fClamp = paddingLeft + ((iMax - iDp) / 2.0f);
            f2 = 1.0f;
            f3 = 23.0f;
        } else {
            float fDp = AndroidUtilities.dp(4.0f) + paddingLeft;
            f2 = 1.0f;
            int iDp2 = AndroidUtilities.dp(13.0f);
            f3 = 23.0f;
            fClamp = fDp - (Utilities.clamp(f4 - (((iMax - AndroidUtilities.dp(8.0f)) / 2) / iDp2), Math.max(0, (size - (r5 * 2)) - 1), 0.0f) * iDp2);
        }
        canvas.save();
        canvas.clipRect(paddingLeft, (getPaddingTop() + this.imageH) - AndroidUtilities.dp(f3), iMax + paddingLeft, getPaddingTop() + this.imageH);
        for (int i = 0; i < size; i++) {
            float fMax = Math.max(0.0f, f2 - Math.abs(i - f4));
            slideDotPaint.setAlpha((int) (((fMax * 95.0f) + 160.0f) * f));
            canvas.drawCircle(AndroidUtilities.dp(4.0f) + fClamp + (AndroidUtilities.dp(13.0f) * i), paddingTop, AndroidUtilities.dp(2.0f) + (AndroidUtilities.dp(f2) * fMax), slideDotPaint);
        }
        canvas.restore();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        VelocityTracker velocityTracker;
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        int actionMasked = motionEvent.getActionMasked();
        boolean z = y >= ((float) getPaddingTop()) && y < ((float) (getPaddingTop() + this.imageH));
        if (!isSlideshow() || this.modeProgress.isInProgress() || this.items.size() < 2) {
            if (actionMasked == 0) {
                if (!z) {
                    return super.onTouchEvent(motionEvent);
                }
                this.pressedItem = itemIndexAt(x, y);
                return true;
            }
            if (actionMasked == 1) {
                if (z) {
                    int iItemIndexAt = itemIndexAt(x, y);
                    int i = this.pressedItem;
                    if (iItemIndexAt == i) {
                        handleTap(i);
                    }
                }
                boolean z2 = this.pressedItem != -1 || z;
                this.pressedItem = -1;
                return z2 || super.onTouchEvent(motionEvent);
            }
            if (actionMasked == 3) {
                this.pressedItem = -1;
            }
            return super.onTouchEvent(motionEvent);
        }
        if (actionMasked == 0) {
            if (!z) {
                return super.onTouchEvent(motionEvent);
            }
            if (this.touchSlop == 0) {
                ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
                this.touchSlop = viewConfiguration.getScaledTouchSlop();
                this.minFlingVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
                this.maxFlingVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
            }
            this.downX = x;
            this.downY = y;
            this.dragging = false;
            VelocityTracker velocityTracker2 = this.velocityTracker;
            if (velocityTracker2 == null) {
                this.velocityTracker = VelocityTracker.obtain();
            } else {
                velocityTracker2.clear();
            }
            this.velocityTracker.addMovement(motionEvent);
            if (getParent() != null) {
                getParent().requestDisallowInterceptTouchEvent(true);
            }
            ValueAnimator valueAnimator = this.settleAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.settleAnimator = null;
            }
            this.pressedItem = this.currentPage;
            return true;
        }
        float f = 0.0f;
        if (actionMasked == 2) {
            VelocityTracker velocityTracker3 = this.velocityTracker;
            if (velocityTracker3 != null) {
                velocityTracker3.addMovement(motionEvent);
            }
            float f2 = x - this.downX;
            float f3 = y - this.downY;
            if (!this.dragging && Math.abs(f2) > this.touchSlop && Math.abs(f2) > Math.abs(f3)) {
                this.dragging = true;
                this.pressedItem = -1;
            }
            if (this.dragging) {
                float f4 = (-f2) / this.slideW;
                int i2 = this.currentPage;
                if (i2 == 0 && f4 < 0.0f) {
                    f4 *= 0.3f;
                }
                if (i2 == this.items.size() - 1 && f4 > 0.0f) {
                    f4 *= 0.3f;
                }
                this.pageOffset = f4;
                requestLayout();
                invalidate();
            }
            return true;
        }
        if (actionMasked != 1 && actionMasked != 3) {
            return true;
        }
        if (actionMasked == 1 && (velocityTracker = this.velocityTracker) != null) {
            velocityTracker.addMovement(motionEvent);
            this.velocityTracker.computeCurrentVelocity(1000, this.maxFlingVelocity);
            float xVelocity = this.velocityTracker.getXVelocity();
            float yVelocity = this.velocityTracker.getYVelocity();
            if (Math.abs(xVelocity) >= this.minFlingVelocity && Math.abs(xVelocity) > Math.abs(yVelocity)) {
                f = xVelocity;
            }
        }
        VelocityTracker velocityTracker4 = this.velocityTracker;
        if (velocityTracker4 != null) {
            velocityTracker4.recycle();
            this.velocityTracker = null;
        }
        if (getParent() != null) {
            getParent().requestDisallowInterceptTouchEvent(false);
        }
        if (this.dragging) {
            this.dragging = false;
            settle(f);
        } else if (actionMasked == 1) {
            int i3 = this.pressedItem;
            int i4 = this.currentPage;
            if (i3 == i4) {
                handleTap(i4);
            }
        }
        this.pressedItem = -1;
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void settle(float f) {
        int i;
        int size = this.items.size();
        if (f >= 0.0f || this.currentPage >= size - 1) {
            i = -1;
            if (f <= 0.0f || this.currentPage <= 0) {
                float f2 = this.pageOffset;
                if (f2 > 0.5f && this.currentPage < size - 1) {
                    i = 1;
                } else if (f2 >= -0.5f || this.currentPage <= 0) {
                    i = 0;
                }
            }
        }
        final int i2 = i + this.currentPage;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.pageOffset, i2 - r7);
        this.settleAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(220L);
        this.settleAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        this.settleAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.iv.RichMediaCell$$ExternalSyntheticLambda1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$settle$5(valueAnimator);
            }
        });
        this.settleAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.iv.RichMediaCell.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                RichMediaCell.this.currentPage = i2;
                RichMediaCell.this.pageOffset = 0.0f;
                RichMediaCell.this.requestLayout();
                RichMediaCell.this.invalidate();
            }
        });
        this.settleAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$settle$5(ValueAnimator valueAnimator) {
        this.pageOffset = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        requestLayout();
        invalidate();
    }

    private int itemIndexAt(float f, float f2) {
        for (int i = 0; i < this.itemRects.size(); i++) {
            if (this.itemRects.get(i).contains(f, f2)) {
                return i;
            }
        }
        return -1;
    }

    private void handleTap(int i) {
        if (this.delegate == null || this.currentRow == null) {
            return;
        }
        List<MediaUploadState> listMedias = medias();
        if (listMedias.isEmpty() || (listMedias.size() == 1 && listMedias.get(0).state == 0)) {
            this.delegate.onMediaPick(this.currentRow);
        } else {
            if (i < 0 || i >= listMedias.size() || !listMedias.get(i).isPending()) {
                return;
            }
            this.delegate.onCancelUpload(this.currentRow, listMedias.get(i));
        }
    }

    @Override // org.telegram.ui.Cells.TextSelectionHelper.ArticleSelectableView
    public void fillTextLayoutBlocks(ArrayList<TextSelectionHelper.TextLayoutBlock> arrayList) {
        this.caption.fillTextLayoutBlocks(arrayList);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        this.caption.drawSelection(canvas);
    }

    public static final class Factory extends UItem.UItemFactory<RichMediaCell> {
        @Override // org.telegram.ui.Components.UItem.UItemFactory
        /* JADX INFO: renamed from: isClickable */
        public boolean getIsClickableValue() {
            return false;
        }

        static {
            UItem.UItemFactory.setup(new Factory());
        }

        @Override // org.telegram.ui.Components.UItem.UItemFactory
        public RichMediaCell createView(Context context, RecyclerListView recyclerListView, int i, int i2, Theme.ResourcesProvider resourcesProvider) {
            RichMediaCell richMediaCell = new RichMediaCell(context, resourcesProvider);
            richMediaCell.setBackground(new RichEditor.DraggingDrawable(Theme.getColor(Theme.key_windowBackgroundWhite, resourcesProvider)));
            return richMediaCell;
        }

        @Override // org.telegram.ui.Components.UItem.UItemFactory
        public void bindView(View view, UItem uItem, boolean z, UniversalAdapter universalAdapter, UniversalRecyclerView universalRecyclerView) {
            ((RichMediaCell) view).bind((BlockRow) uItem.object, (Delegate) uItem.object2);
        }

        public static UItem of(BlockRow blockRow, Delegate delegate) {
            UItem uItemOfFactory = UItem.ofFactory(Factory.class);
            uItemOfFactory.id = (int) blockRow.id;
            uItemOfFactory.object = blockRow;
            uItemOfFactory.object2 = delegate;
            return uItemOfFactory;
        }

        @Override // org.telegram.ui.Components.UItem.UItemFactory
        public boolean equals(UItem uItem, UItem uItem2) {
            return uItem.id == uItem2.id;
        }

        @Override // org.telegram.ui.Components.UItem.UItemFactory
        public boolean contentsEquals(UItem uItem, UItem uItem2) {
            return uItem.id == uItem2.id;
        }
    }
}
