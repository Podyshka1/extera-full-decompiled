package org.telegram.ui.Components.Paint.Views;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.SweepGradient;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.Looper;
import android.text.Layout;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextUtils;
import android.util.Pair;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import androidx.core.util.Consumer;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.FloatValueHolder;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import com.google.android.gms.vision.Detector;
import com.google.android.gms.vision.Frame;
import com.google.android.gms.vision.face.Face;
import com.google.android.gms.vision.face.FaceDetector;
import java.io.File;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.Bitmaps;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.DispatchQueue;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.VideoEditedInfo;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.ActionBarPopupWindow;
import org.telegram.ui.ActionBar.AdjustPanLayoutHelper;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.BubbleActivity;
import org.telegram.ui.ChatActivity;
import org.telegram.ui.Components.AnimatedEmojiDrawable;
import org.telegram.ui.Components.AnimatedEmojiSpan;
import org.telegram.ui.Components.AnimatedFloat;
import org.telegram.ui.Components.ChatActivityEnterViewAnimatedIconView;
import org.telegram.ui.Components.ChatAttachAlert;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.EmojiView;
import org.telegram.ui.Components.IPhotoPaintView;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.Paint.Brush;
import org.telegram.ui.Components.Paint.ColorPickerBottomSheet;
import org.telegram.ui.Components.Paint.PaintTypeface;
import org.telegram.ui.Components.Paint.Painting;
import org.telegram.ui.Components.Paint.PersistColorPalette;
import org.telegram.ui.Components.Paint.PhotoFace;
import org.telegram.ui.Components.Paint.RenderView;
import org.telegram.ui.Components.Paint.Swatch;
import org.telegram.ui.Components.Paint.UndoStore;
import org.telegram.ui.Components.Paint.Views.EntitiesContainerView;
import org.telegram.ui.Components.Paint.Views.EntityView;
import org.telegram.ui.Components.Paint.Views.PaintTextOptionsView;
import org.telegram.ui.Components.Paint.Views.PaintToolsView;
import org.telegram.ui.Components.Paint.Views.PaintWeightChooserView;
import org.telegram.ui.Components.RLottieDrawable;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.Size;
import org.telegram.ui.Components.SizeNotifierFrameLayout;
import org.telegram.ui.Components.SizeNotifierFrameLayoutPhoto;
import org.telegram.ui.Components.ThanosEffect;
import org.telegram.ui.Components.blur3.drawable.BlurredBackgroundDrawable;
import org.telegram.ui.PhotoViewer;
import org.telegram.ui.Stories.recorder.EmojiBottomSheet;

/* JADX INFO: loaded from: classes7.dex */
public abstract class LPhotoPaintView extends SizeNotifierFrameLayoutPhoto implements IPhotoPaintView, PaintToolsView.Delegate, EntityView.EntityViewDelegate, PaintTextOptionsView.Delegate, SizeNotifierFrameLayout.SizeNotifierFrameLayoutDelegate, NotificationCenter.NotificationCenterDelegate {
    private float baseScale;
    private Bitmap bitmapToEdit;
    private BlurredBackgroundDrawable blurredBackgroundDrawableForTools;
    public FrameLayout bottomLayout;
    private boolean bottomPanelIgnoreOnce;
    public PaintCancelView cancelButton;
    private TextView cancelTextButton;
    private final Paint clearPaint;
    private Paint colorPickerRainbowPaint;
    private Swatch colorSwatch;
    private Paint colorSwatchOutlinePaint;
    private Paint colorSwatchPaint;
    private PaintColorsListView colorsListView;
    private int currentAccount;
    private MediaController.CropState currentCropState;
    private EntityView currentEntityView;
    private boolean destroyed;
    public PaintDoneView doneButton;
    private TextView doneTextButton;
    private boolean drawShadow;
    private TextView drawTab;
    private boolean editingText;
    private int emojiPadding;
    private EmojiView emojiView;
    public boolean emojiViewVisible;
    public boolean emojiViewWasVisible;
    private int emojiWasPadding;
    public EntitiesContainerView entitiesView;
    private ArrayList<PhotoFace> faces;
    private Bitmap facesBitmap;
    private boolean fillShapes;
    private boolean ignoreLayout;
    private boolean ignoreToolChangeAnimationOnce;
    private float imageHeight;
    private float imageWidth;
    private boolean inBubbleMode;
    private float inputTransformX;
    private float inputTransformY;
    public boolean isAnimatePopupClosing;
    private boolean isColorListShown;
    private boolean isTypefaceMenuShown;
    private int keyboardHeight;
    private int keyboardHeightLand;
    public boolean keyboardVisible;
    private int lastSizeChangeValue1;
    private boolean lastSizeChangeValue2;
    private BigInteger lcm;
    private Matrix matrix;
    private float offsetTranslationY;
    private Runnable onDoneButtonClickedListener;
    private Runnable openKeyboardRunnable;
    private int originalBitmapRotation;
    public FrameLayout overlayLayout;
    private PaintToolsView paintToolsView;
    private Size paintingSize;
    private final PersistColorPalette palette;
    private float panTranslationProgress;
    private float panTranslationY;
    private float pany;
    private FrameLayout pipetteContainerLayout;
    private ActionBarPopupWindow.ActionBarPopupWindowLayout popupLayout;
    private Rect popupRect;
    private ActionBarPopupWindow popupWindow;
    private int[] pos2;
    private float[] position;
    private DispatchQueue queue;
    private View renderInputView;
    private RenderView renderView;
    private Theme.ResourcesProvider resourcesProvider;
    private float scale;
    private int selectedTextType;
    private FrameLayout selectionContainerView;
    private final AnimatedFloat shadowAlpha;
    private final Paint shadowPaint;
    private TextView stickerTab;
    public LinearLayout tabsLayout;
    private int tabsNewSelectedIndex;
    private int tabsSelectedIndex;
    private ValueAnimator tabsSelectionAnimator;
    private float tabsSelectionProgress;
    public PaintTextOptionsView textOptionsView;
    private TextView textTab;
    private ThanosEffect thanosEffect;
    private Paint toolsPaint;
    private SpringAnimation toolsTransformAnimation;
    private float toolsTransformProgress;
    private FrameLayout topLayout;
    private float transformX;
    private float transformY;
    private boolean translateBottomPanelAfterResize;
    private PaintTypefaceListView typefaceListView;
    private Paint typefaceMenuBackgroundPaint;
    private Paint typefaceMenuOutlinePaint;
    private SpringAnimation typefaceMenuTransformAnimation;
    private float typefaceMenuTransformProgress;
    private TextView undoAllButton;
    private ImageView undoButton;
    private UndoStore undoStore;
    private boolean waitingForKeyboardOpen;
    public PaintWeightChooserView weightChooserView;
    private PaintWeightChooserView.ValueOverride weightDefaultValueOverride;
    private LinearLayout zoomOutButton;
    private ImageView zoomOutImage;
    private TextView zoomOutText;
    private boolean zoomOutVisible;

    public static /* synthetic */ void $r8$lambda$4aiZhvQC2GURrN6CN5KcEZfpOL4() {
    }

    private void bottomPanelTranslationY(float f, float f2) {
    }

    public abstract void didSetAnimatedSticker(RLottieDrawable rLottieDrawable);

    @Override // org.telegram.ui.Components.SizeNotifierFrameLayoutPhoto, org.telegram.ui.Components.SizeNotifierFrameLayout, org.telegram.ui.ActionBar.Theme.Colorable
    public /* bridge */ /* synthetic */ int[] getColorKeys() {
        return super.getColorKeys();
    }

    public int getPKeyboardHeight() {
        return 0;
    }

    @Override // org.telegram.ui.Components.IPhotoPaintView
    public /* bridge */ /* synthetic */ View getView() {
        return super.getView();
    }

    public abstract void onEmojiViewCloseByClick();

    public abstract void onOpenCloseStickersAlert(boolean z);

    public abstract void onTextAdd();

    public abstract void updateKeyboard();

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r12v5, types: [int] */
    /* JADX WARN: Type inference failed for: r12v7 */
    /* JADX WARN: Type inference failed for: r25v0, types: [android.view.View, android.view.ViewGroup, android.widget.FrameLayout, org.telegram.ui.Components.Paint.Views.LPhotoPaintView, org.telegram.ui.Components.Paint.Views.PaintTextOptionsView$Delegate, org.telegram.ui.Components.Paint.Views.PaintToolsView$Delegate, org.telegram.ui.Components.SizeNotifierFrameLayout, org.telegram.ui.Components.SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate] */
    @SuppressLint({"NotifyDataSetChanged"})
    public LPhotoPaintView(final Context context, Activity activity, final int i, Bitmap bitmap, final Bitmap bitmap2, int i2, ArrayList<VideoEditedInfo.MediaEntity> arrayList, MediaController.CropState cropState, final Runnable runnable, final Theme.ResourcesProvider resourcesProvider) {
        float f;
        int i3;
        Emoji.EmojiSpan[] emojiSpanArr;
        EntityView entityView;
        super(context, activity, true);
        byte b2 = 1;
        boolean z = false;
        this.tabsSelectedIndex = 0;
        this.tabsNewSelectedIndex = -1;
        this.weightDefaultValueOverride = new PaintWeightChooserView.ValueOverride() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView.1
            @Override // org.telegram.ui.Components.Paint.Views.PaintWeightChooserView.ValueOverride
            public float get() {
                Brush currentBrush = LPhotoPaintView.this.renderView.getCurrentBrush();
                LPhotoPaintView lPhotoPaintView = LPhotoPaintView.this;
                if (currentBrush == null) {
                    return PersistColorPalette.getInstance(lPhotoPaintView.currentAccount).getCurrentWeight();
                }
                return PersistColorPalette.getInstance(lPhotoPaintView.currentAccount).getWeight(String.valueOf(Brush.BRUSHES_LIST.indexOf(currentBrush)), currentBrush.getDefaultWeight());
            }

            @Override // org.telegram.ui.Components.Paint.Views.PaintWeightChooserView.ValueOverride
            public void set(float f2) {
                PersistColorPalette.getInstance(LPhotoPaintView.this.currentAccount).setWeight(String.valueOf(Brush.BRUSHES_LIST.indexOf(LPhotoPaintView.this.renderView.getCurrentBrush())), f2);
                LPhotoPaintView.this.colorSwatch.brushWeight = f2;
                LPhotoPaintView lPhotoPaintView = LPhotoPaintView.this;
                lPhotoPaintView.setCurrentSwatch(lPhotoPaintView.colorSwatch, true);
            }
        };
        this.typefaceMenuOutlinePaint = new Paint(1);
        this.typefaceMenuBackgroundPaint = new Paint(1);
        this.colorPickerRainbowPaint = new Paint(1);
        this.colorSwatchPaint = new Paint(1);
        this.colorSwatchOutlinePaint = new Paint(1);
        float f2 = 1.0f;
        this.colorSwatch = new Swatch(-1, 1.0f, 0.016773745f);
        this.fillShapes = false;
        this.toolsPaint = new Paint(1);
        this.zoomOutVisible = false;
        this.shadowAlpha = new AnimatedFloat((View) this, 350L, CubicBezierInterpolator.EASE_OUT_QUINT);
        this.shadowPaint = new Paint(1);
        Paint paint = new Paint(1);
        this.clearPaint = paint;
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        this.matrix = new Matrix();
        byte b3 = 2;
        this.position = new float[2];
        this.pos2 = new int[2];
        this.openKeyboardRunnable = new Runnable() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView.18
            @Override // java.lang.Runnable
            public void run() {
                if (LPhotoPaintView.this.currentEntityView instanceof TextPaintView) {
                    EditTextOutline editText = ((TextPaintView) LPhotoPaintView.this.currentEntityView).getEditText();
                    if (LPhotoPaintView.this.destroyed || editText == null || !LPhotoPaintView.this.waitingForKeyboardOpen || LPhotoPaintView.this.keyboardVisible || AndroidUtilities.usingHardwareInput || AndroidUtilities.isInMultiwindow || !AndroidUtilities.isTablet()) {
                        return;
                    }
                    editText.requestFocus();
                    AndroidUtilities.showKeyboard(editText);
                    AndroidUtilities.cancelRunOnUIThread(LPhotoPaintView.this.openKeyboardRunnable);
                    AndroidUtilities.runOnUIThread(LPhotoPaintView.this.openKeyboardRunnable, 100L);
                }
            }
        };
        setDelegate(this);
        this.currentAccount = i;
        this.resourcesProvider = new Theme.ResourcesProvider() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda8
            @Override // org.telegram.ui.ActionBar.Theme.ResourcesProvider
            public final int getColor(int i4) {
                return LPhotoPaintView.$r8$lambda$6i0NVTYBdNPKqzxlYpb8bUqDG9g(resourcesProvider, i4);
            }
        };
        this.currentCropState = cropState;
        this.inBubbleMode = context instanceof BubbleActivity;
        PersistColorPalette persistColorPalette = PersistColorPalette.getInstance(i);
        this.palette = persistColorPalette;
        persistColorPalette.resetCurrentColor();
        this.colorSwatch.color = persistColorPalette.getCurrentColor();
        this.colorSwatch.brushWeight = persistColorPalette.getCurrentWeight();
        this.queue = new DispatchQueue("Paint");
        this.bitmapToEdit = bitmap;
        this.facesBitmap = bitmap2;
        this.originalBitmapRotation = i2;
        UndoStore undoStore = new UndoStore();
        this.undoStore = undoStore;
        undoStore.setDelegate(new UndoStore.UndoStoreDelegate() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda10
            @Override // org.telegram.ui.Components.Paint.UndoStore.UndoStoreDelegate
            public final void historyChanged() {
                this.f$0.lambda$new$1();
            }
        });
        RenderView renderView = new RenderView(context, new Painting(getPaintingSize(), bitmap2, i2, null), this.bitmapToEdit, null, null) { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView.2
            @Override // org.telegram.ui.Components.Paint.RenderView
            public void selectBrush(Brush brush) {
                int iIndexOf = Brush.BRUSHES_LIST.indexOf(brush);
                int i4 = iIndexOf + 1;
                if (i4 <= 1 || bitmap2 != null) {
                    iIndexOf = i4;
                }
                LPhotoPaintView.this.paintToolsView.select(iIndexOf);
                LPhotoPaintView.this.onBrushSelected(brush);
            }
        };
        this.renderView = renderView;
        renderView.setDelegate(new RenderView.RenderViewDelegate() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView.3
            @Override // org.telegram.ui.Components.Paint.RenderView.RenderViewDelegate
            public void onFirstDraw() {
                runnable.run();
            }

            @Override // org.telegram.ui.Components.Paint.RenderView.RenderViewDelegate
            public void onBeganDrawing() {
                if (LPhotoPaintView.this.currentEntityView != null) {
                    LPhotoPaintView.this.selectEntity(null);
                }
                LPhotoPaintView.this.weightChooserView.setViewHidden(true);
            }

            @Override // org.telegram.ui.Components.Paint.RenderView.RenderViewDelegate
            public void onFinishedDrawing(boolean z2) {
                LPhotoPaintView.this.undoStore.getDelegate().historyChanged();
                LPhotoPaintView.this.weightChooserView.setViewHidden(false);
            }

            @Override // org.telegram.ui.Components.Paint.RenderView.RenderViewDelegate
            public boolean shouldDraw() {
                boolean z2 = LPhotoPaintView.this.currentEntityView == null;
                if (!z2) {
                    LPhotoPaintView.this.selectEntity(null);
                }
                return z2;
            }

            @Override // org.telegram.ui.Components.Paint.RenderView.RenderViewDelegate
            public void invalidateInputView() {
                if (LPhotoPaintView.this.renderInputView != null) {
                    LPhotoPaintView.this.renderInputView.invalidate();
                }
            }

            @Override // org.telegram.ui.Components.Paint.RenderView.RenderViewDelegate
            public void resetBrush() {
                boolean z2 = LPhotoPaintView.this.ignoreToolChangeAnimationOnce;
                LPhotoPaintView lPhotoPaintView = LPhotoPaintView.this;
                if (z2) {
                    lPhotoPaintView.ignoreToolChangeAnimationOnce = false;
                } else {
                    lPhotoPaintView.paintToolsView.select(1);
                    LPhotoPaintView.this.onBrushSelected(Brush.BRUSHES_LIST.get(0));
                }
            }
        });
        this.renderView.setUndoStore(this.undoStore);
        this.renderView.setQueue(this.queue);
        this.renderView.setVisibility(4);
        addView(this.renderView, LayoutHelper.createFrame(-1, -1, 51));
        View view = new View(context) { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView.4
            @Override // android.view.View
            public void dispatchDraw(Canvas canvas) {
                super.dispatchDraw(canvas);
                if (LPhotoPaintView.this.renderView != null) {
                    LPhotoPaintView.this.renderView.onDrawForInput(canvas);
                }
            }
        };
        this.renderInputView = view;
        view.setVisibility(4);
        addView(this.renderInputView, LayoutHelper.createFrame(-1, -1, 51));
        EntitiesContainerView entitiesContainerView = new EntitiesContainerView(context, new EntitiesContainerView.EntitiesContainerViewDelegate() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView.5
            @Override // org.telegram.ui.Components.Paint.Views.EntitiesContainerView.EntitiesContainerViewDelegate
            public EntityView onSelectedEntityRequest() {
                return LPhotoPaintView.this.currentEntityView;
            }

            @Override // org.telegram.ui.Components.Paint.Views.EntitiesContainerView.EntitiesContainerViewDelegate
            public void onEntityDeselect() {
                LPhotoPaintView.this.selectEntity(null);
            }
        }) { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView.6
            long lastUpdate;
            Paint linePaint = new Paint();
            float stickyXAlpha;
            float stickyYAlpha;

            {
                setWillNotDraw(false);
                this.linePaint.setStrokeWidth(AndroidUtilities.dp(2.0f));
                this.linePaint.setStyle(Paint.Style.STROKE);
                this.linePaint.setColor(-1);
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x0069  */
            /* JADX WARN: Removed duplicated region for block: B:23:0x0092  */
            @Override // android.view.View
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public void onDraw(Canvas canvas) {
                int stickyX;
                int stickyY;
                super.onDraw(canvas);
                long jMin = Math.min(16L, System.currentTimeMillis() - this.lastUpdate);
                this.lastUpdate = System.currentTimeMillis();
                if (LPhotoPaintView.this.currentEntityView != null && LPhotoPaintView.this.currentEntityView.hasTouchDown() && LPhotoPaintView.this.currentEntityView.hasPanned()) {
                    stickyX = LPhotoPaintView.this.currentEntityView.getStickyX();
                    stickyY = LPhotoPaintView.this.currentEntityView.getStickyY();
                } else {
                    stickyX = 0;
                    stickyY = 0;
                }
                if (stickyX != 0) {
                    float f3 = this.stickyXAlpha;
                    if (f3 != 1.0f) {
                        this.stickyXAlpha = Math.min(1.0f, f3 + (jMin / 150.0f));
                        invalidate();
                    } else if (stickyX == 0) {
                        float f4 = this.stickyXAlpha;
                        if (f4 != 0.0f) {
                            this.stickyXAlpha = Math.max(0.0f, f4 - (jMin / 150.0f));
                            invalidate();
                        }
                    }
                }
                if (stickyY != 0) {
                    float f5 = this.stickyYAlpha;
                    if (f5 != 1.0f) {
                        this.stickyYAlpha = Math.min(1.0f, f5 + (jMin / 150.0f));
                        invalidate();
                    } else if (stickyY == 0) {
                        float f6 = this.stickyYAlpha;
                        if (f6 != 0.0f) {
                            this.stickyYAlpha = Math.max(0.0f, f6 - (jMin / 150.0f));
                            invalidate();
                        }
                    }
                }
                float f7 = this.stickyYAlpha;
                if (f7 != 0.0f) {
                    this.linePaint.setAlpha((int) (f7 * 255.0f));
                    float measuredHeight = getMeasuredHeight() / 2.0f;
                    canvas.drawLine(0.0f, measuredHeight, getMeasuredWidth(), measuredHeight, this.linePaint);
                }
                float f8 = this.stickyXAlpha;
                if (f8 != 0.0f) {
                    this.linePaint.setAlpha((int) (f8 * 255.0f));
                    float measuredWidth = getMeasuredWidth() / 2.0f;
                    canvas.drawLine(measuredWidth, 0.0f, measuredWidth, getMeasuredHeight(), this.linePaint);
                }
            }
        };
        this.entitiesView = entitiesContainerView;
        addView(entitiesContainerView);
        if (arrayList != null && !arrayList.isEmpty()) {
            int size = arrayList.size();
            int i4 = 0;
            while (i4 < size) {
                VideoEditedInfo.MediaEntity mediaEntity = arrayList.get(i4);
                byte b4 = mediaEntity.type;
                if (b4 == 0) {
                    f = f2;
                    StickerView stickerViewCreateSticker = createSticker(mediaEntity.parentObject, mediaEntity.document, z);
                    if ((mediaEntity.subType & b3) != 0) {
                        stickerViewCreateSticker.mirror();
                    }
                    ViewGroup.LayoutParams layoutParams = stickerViewCreateSticker.getLayoutParams();
                    layoutParams.width = mediaEntity.viewWidth;
                    layoutParams.height = mediaEntity.viewHeight;
                    i3 = size;
                    entityView = stickerViewCreateSticker;
                } else {
                    f = f2;
                    if (b4 == b2) {
                        TextPaintView textPaintViewCreateText = createText(z);
                        textPaintViewCreateText.setType(mediaEntity.subType);
                        textPaintViewCreateText.setTypeface(mediaEntity.textTypeface);
                        textPaintViewCreateText.setBaseFontSize(mediaEntity.fontSize);
                        SpannableString spannableString = new SpannableString(mediaEntity.text);
                        ArrayList<VideoEditedInfo.EmojiEntity> arrayList2 = mediaEntity.entities;
                        int size2 = arrayList2.size();
                        ?? r12 = z;
                        while (r12 < size2) {
                            VideoEditedInfo.EmojiEntity emojiEntity = arrayList2.get(r12);
                            int i5 = size;
                            AnimatedEmojiSpan animatedEmojiSpan = new AnimatedEmojiSpan(emojiEntity.document_id, textPaintViewCreateText.getFontMetricsInt());
                            int i6 = emojiEntity.offset;
                            spannableString.setSpan(animatedEmojiSpan, i6, emojiEntity.length + i6, 33);
                            r12++;
                            size = i5;
                        }
                        i3 = size;
                        CharSequence charSequenceReplaceEmoji = Emoji.replaceEmoji(spannableString, textPaintViewCreateText.getFontMetricsInt(), false);
                        if ((charSequenceReplaceEmoji instanceof Spanned) && (emojiSpanArr = (Emoji.EmojiSpan[]) ((Spanned) charSequenceReplaceEmoji).getSpans(0, charSequenceReplaceEmoji.length(), Emoji.EmojiSpan.class)) != null) {
                            for (Emoji.EmojiSpan emojiSpan : emojiSpanArr) {
                                emojiSpan.scale = 0.85f;
                            }
                        }
                        textPaintViewCreateText.setText(charSequenceReplaceEmoji);
                        setTextAlignment(textPaintViewCreateText, mediaEntity.textAlign);
                        Swatch swatch = textPaintViewCreateText.getSwatch();
                        swatch.color = mediaEntity.color;
                        textPaintViewCreateText.setSwatch(swatch);
                        entityView = textPaintViewCreateText;
                    } else {
                        i3 = size;
                        byte b5 = b3;
                        if (b4 == b5) {
                            PhotoView photoViewCreatePhoto = createPhoto(mediaEntity.text, false);
                            photoViewCreatePhoto.preloadSegmented(mediaEntity.segmentedPath);
                            if ((mediaEntity.subType & b5) != 0) {
                                photoViewCreatePhoto.mirror();
                            }
                            if ((mediaEntity.subType & 16) != 0) {
                                photoViewCreatePhoto.toggleSegmented(false);
                            }
                            ViewGroup.LayoutParams layoutParams2 = photoViewCreatePhoto.getLayoutParams();
                            layoutParams2.width = mediaEntity.viewWidth;
                            layoutParams2.height = mediaEntity.viewHeight;
                            entityView = photoViewCreatePhoto;
                        } else {
                            i4++;
                            size = i3;
                            f2 = f;
                            b2 = 1;
                            z = false;
                            b3 = 2;
                        }
                    }
                }
                entityView.setX((mediaEntity.f984x * this.paintingSize.width) - ((mediaEntity.viewWidth * (f - mediaEntity.scale)) / 2.0f));
                entityView.setY((mediaEntity.f985y * this.paintingSize.height) - ((mediaEntity.viewHeight * (f - mediaEntity.scale)) / 2.0f));
                entityView.setPosition(new PointF(entityView.getX() + (mediaEntity.viewWidth / 2.0f), entityView.getY() + (mediaEntity.viewHeight / 2.0f)));
                entityView.setScale(mediaEntity.scale);
                entityView.setRotation((float) ((((double) (-mediaEntity.rotation)) / 3.141592653589793d) * 180.0d));
                i4++;
                size = i3;
                f2 = f;
                b2 = 1;
                z = false;
                b3 = 2;
            }
        }
        float f3 = f2;
        this.entitiesView.setVisibility(4);
        FrameLayout frameLayout = new FrameLayout(context) { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView.7
            @Override // android.view.View
            @SuppressLint({"ClickableViewAccessibility"})
            public boolean onTouchEvent(MotionEvent motionEvent) {
                return false;
            }
        };
        this.selectionContainerView = frameLayout;
        addView(frameLayout);
        FrameLayout frameLayout2 = new FrameLayout(context);
        this.topLayout = frameLayout2;
        frameLayout2.setPadding(AndroidUtilities.dp(12.0f), AndroidUtilities.dp(12.0f), AndroidUtilities.dp(12.0f), AndroidUtilities.dp(12.0f));
        FrameLayout frameLayout3 = this.topLayout;
        GradientDrawable.Orientation orientation = GradientDrawable.Orientation.TOP_BOTTOM;
        frameLayout3.setBackground(new GradientDrawable(orientation, new int[]{-16777216, 0}));
        addView(this.topLayout, LayoutHelper.createFrame(-1, -2, 48));
        ImageView imageView = new ImageView(context);
        this.undoButton = imageView;
        imageView.setImageResource(C2665R.drawable.photo_undo2);
        this.undoButton.setPadding(AndroidUtilities.dp(3.0f), AndroidUtilities.dp(3.0f), AndroidUtilities.dp(3.0f), AndroidUtilities.dp(3.0f));
        this.undoButton.setBackground(Theme.createSelectorDrawable(1090519039));
        this.undoButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda11
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$new$2(view2);
            }
        });
        this.undoButton.setAlpha(0.6f);
        this.undoButton.setClickable(false);
        this.topLayout.addView(this.undoButton, LayoutHelper.createFrame(32, 32.0f, 51, 12.0f, 0.0f, 0.0f, 0.0f));
        LinearLayout linearLayout = new LinearLayout(context);
        this.zoomOutButton = linearLayout;
        linearLayout.setOrientation(0);
        this.zoomOutButton.setBackground(Theme.createSelectorDrawable(822083583, 7));
        this.zoomOutButton.setPadding(AndroidUtilities.dp(8.0f), 0, AndroidUtilities.dp(8.0f), 0);
        TextView textView = new TextView(context);
        this.zoomOutText = textView;
        textView.setTextColor(-1);
        this.zoomOutText.setTypeface(AndroidUtilities.bold());
        this.zoomOutText.setTextSize(1, 16.0f);
        this.zoomOutText.setText(LocaleController.getString(C2665R.string.PhotoEditorZoomOut));
        ImageView imageView2 = new ImageView(context);
        this.zoomOutImage = imageView2;
        imageView2.setImageResource(C2665R.drawable.photo_zoomout);
        this.zoomOutButton.addView(this.zoomOutImage, LayoutHelper.createLinear(24, 24, 16, 0, 0, 8, 0));
        this.zoomOutButton.addView(this.zoomOutText, LayoutHelper.createLinear(-2, -2, 16));
        this.zoomOutButton.setAlpha(0.0f);
        this.zoomOutButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda12
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                PhotoViewer.getInstance().zoomOut();
            }
        });
        this.topLayout.addView(this.zoomOutButton, LayoutHelper.createFrame(-2, 32, 17));
        TextView textView2 = new TextView(context);
        this.undoAllButton = textView2;
        textView2.setBackground(Theme.createSelectorDrawable(822083583, 7));
        this.undoAllButton.setPadding(AndroidUtilities.dp(8.0f), 0, AndroidUtilities.dp(8.0f), 0);
        this.undoAllButton.setText(LocaleController.getString(C2665R.string.PhotoEditorClearAll));
        this.undoAllButton.setGravity(16);
        this.undoAllButton.setTextColor(-1);
        this.undoAllButton.setTypeface(AndroidUtilities.bold());
        this.undoAllButton.setTextSize(1, 16.0f);
        this.undoAllButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda13
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$new$4(view2);
            }
        });
        this.undoAllButton.setAlpha(0.6f);
        this.topLayout.addView(this.undoAllButton, LayoutHelper.createFrame(-2, 32.0f, 5, 0.0f, 0.0f, 4.0f, 0.0f));
        TextView textView3 = new TextView(context);
        this.cancelTextButton = textView3;
        textView3.setBackground(Theme.createSelectorDrawable(822083583, 7));
        this.cancelTextButton.setText(LocaleController.getString(C2665R.string.Clear));
        this.cancelTextButton.setPadding(AndroidUtilities.dp(8.0f), 0, AndroidUtilities.dp(8.0f), 0);
        this.cancelTextButton.setGravity(16);
        this.cancelTextButton.setTextColor(-1);
        this.cancelTextButton.setTypeface(AndroidUtilities.bold());
        this.cancelTextButton.setTextSize(1, 16.0f);
        this.cancelTextButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda14
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$new$5(view2);
            }
        });
        this.cancelTextButton.setAlpha(0.0f);
        this.cancelTextButton.setVisibility(8);
        this.topLayout.addView(this.cancelTextButton, LayoutHelper.createFrame(-2, 32.0f, 51, 4.0f, 0.0f, 0.0f, 0.0f));
        TextView textView4 = new TextView(context);
        this.doneTextButton = textView4;
        textView4.setBackground(Theme.createSelectorDrawable(822083583, 7));
        this.doneTextButton.setText(LocaleController.getString(C2665R.string.Done));
        this.doneTextButton.setPadding(AndroidUtilities.dp(8.0f), 0, AndroidUtilities.dp(8.0f), 0);
        this.doneTextButton.setGravity(16);
        this.doneTextButton.setTextColor(-1);
        this.doneTextButton.setTypeface(AndroidUtilities.bold());
        this.doneTextButton.setTextSize(1, 16.0f);
        this.doneTextButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda15
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$new$6(view2);
            }
        });
        this.doneTextButton.setAlpha(0.0f);
        this.doneTextButton.setVisibility(8);
        this.topLayout.addView(this.doneTextButton, LayoutHelper.createFrame(-2, 32.0f, 5, 0.0f, 0.0f, 4.0f, 0.0f));
        BottomLayout bottomLayout = new BottomLayout(context);
        this.bottomLayout = bottomLayout;
        bottomLayout.setPadding(AndroidUtilities.dp(8.0f), AndroidUtilities.dp(8.0f), AndroidUtilities.dp(8.0f), 0);
        this.bottomLayout.setBackground(new GradientDrawable(orientation, new int[]{0, Integer.MIN_VALUE}));
        addView(this.bottomLayout, LayoutHelper.createFrame(-1, 104, 80));
        PaintToolsView paintToolsView = new PaintToolsView(context, bitmap2 != null);
        this.paintToolsView = paintToolsView;
        paintToolsView.setPadding(AndroidUtilities.dp(16.0f), 0, AndroidUtilities.dp(16.0f), 0);
        this.paintToolsView.setDelegate(this);
        this.paintToolsView.setSelectedIndex(1);
        this.bottomLayout.addView(this.paintToolsView, LayoutHelper.createFrame(-1, 48.0f));
        PaintTextOptionsView paintTextOptionsView = new PaintTextOptionsView(context);
        this.textOptionsView = paintTextOptionsView;
        paintTextOptionsView.setPadding(AndroidUtilities.dp(16.0f), 0, AndroidUtilities.dp(16.0f), 0);
        this.textOptionsView.setVisibility(8);
        this.textOptionsView.setDelegate(this);
        this.textOptionsView.setAlignment(PersistColorPalette.getInstance(i).getCurrentAlignment());
        this.bottomLayout.addView(this.textOptionsView, LayoutHelper.createFrame(-1, 48.0f));
        FrameLayout frameLayout4 = new FrameLayout(context) { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView.8
            {
                setWillNotDraw(false);
            }

            @Override // android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                if (motionEvent.getActionMasked() == 0 && LPhotoPaintView.this.isTypefaceMenuShown) {
                    LPhotoPaintView.this.showTypefaceMenu(false);
                    return true;
                }
                return super.onTouchEvent(motionEvent);
            }

            @Override // android.view.View
            public void onDraw(Canvas canvas) {
                super.onDraw(canvas);
                LPhotoPaintView.this.typefaceMenuOutlinePaint.setAlpha((int) (LPhotoPaintView.this.textOptionsView.getAlpha() * 102.0f * (1.0f - LPhotoPaintView.this.typefaceMenuTransformProgress)));
                PaintTextOptionsView paintTextOptionsView2 = LPhotoPaintView.this.textOptionsView;
                RectF rectF = AndroidUtilities.rectTmp;
                paintTextOptionsView2.getTypefaceCellBounds(rectF);
                float top = LPhotoPaintView.this.bottomLayout.getTop() + LPhotoPaintView.this.textOptionsView.getTop() + LPhotoPaintView.this.bottomLayout.getTranslationY() + LPhotoPaintView.this.textOptionsView.getTranslationY();
                rectF.set(AndroidUtilities.lerp(rectF.left, LPhotoPaintView.this.typefaceListView.getLeft(), LPhotoPaintView.this.typefaceMenuTransformProgress), AndroidUtilities.lerp(rectF.top + top, LPhotoPaintView.this.typefaceListView.getTop() - LPhotoPaintView.this.typefaceListView.getTranslationY(), LPhotoPaintView.this.typefaceMenuTransformProgress), AndroidUtilities.lerp(rectF.right, LPhotoPaintView.this.typefaceListView.getRight(), LPhotoPaintView.this.typefaceMenuTransformProgress), AndroidUtilities.lerp(top + rectF.bottom, LPhotoPaintView.this.typefaceListView.getBottom() - LPhotoPaintView.this.typefaceListView.getTranslationY(), LPhotoPaintView.this.typefaceMenuTransformProgress));
                float fDp = AndroidUtilities.dp(AndroidUtilities.lerp(32, 16, LPhotoPaintView.this.typefaceMenuTransformProgress));
                int alpha = LPhotoPaintView.this.typefaceMenuBackgroundPaint.getAlpha();
                LPhotoPaintView.this.typefaceMenuBackgroundPaint.setAlpha((int) (alpha * LPhotoPaintView.this.typefaceMenuTransformProgress));
                canvas.drawRoundRect(rectF, fDp, fDp, LPhotoPaintView.this.typefaceMenuBackgroundPaint);
                LPhotoPaintView.this.typefaceMenuBackgroundPaint.setAlpha(alpha);
                canvas.drawRoundRect(rectF, fDp, fDp, LPhotoPaintView.this.typefaceMenuOutlinePaint);
            }
        };
        this.overlayLayout = frameLayout4;
        addView(frameLayout4, LayoutHelper.createFrame(-1, -1.0f));
        PaintTypefaceListView paintTypefaceListView = new PaintTypefaceListView(context);
        this.typefaceListView = paintTypefaceListView;
        paintTypefaceListView.setVisibility(8);
        this.typefaceListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda16
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view2, int i7) {
                this.f$0.lambda$new$7(view2, i7);
            }
        });
        this.textOptionsView.setTypefaceListView(this.typefaceListView);
        this.overlayLayout.addView(this.typefaceListView, LayoutHelper.createFrame(-2, -2.0f, 85, 0.0f, 0.0f, 8.0f, 8.0f));
        Paint paint2 = this.typefaceMenuOutlinePaint;
        Paint.Style style = Paint.Style.STROKE;
        paint2.setStyle(style);
        this.typefaceMenuOutlinePaint.setColor(1728053247);
        this.typefaceMenuOutlinePaint.setStrokeWidth(Math.max(2, AndroidUtilities.dp(f3)));
        this.typefaceMenuBackgroundPaint.setColor(getThemedColor(Theme.key_actionBarDefaultSubmenuBackground));
        PaintColorsListView paintColorsListView = new PaintColorsListView(context) { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView.9
            private Path path = new Path();

            @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
            public void draw(Canvas canvas) {
                ViewGroup barView = LPhotoPaintView.this.getBarView();
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(AndroidUtilities.lerp(barView.getLeft() - getLeft(), 0, LPhotoPaintView.this.toolsTransformProgress), AndroidUtilities.lerp(barView.getTop() - getTop(), 0, LPhotoPaintView.this.toolsTransformProgress), AndroidUtilities.lerp(barView.getRight() - getLeft(), getWidth(), LPhotoPaintView.this.toolsTransformProgress), AndroidUtilities.lerp(barView.getBottom() - getTop(), getHeight(), LPhotoPaintView.this.toolsTransformProgress));
                this.path.rewind();
                this.path.addRoundRect(rectF, AndroidUtilities.dp(32.0f), AndroidUtilities.dp(32.0f), Path.Direction.CW);
                canvas.save();
                canvas.clipPath(this.path);
                super.draw(canvas);
                canvas.restore();
            }
        };
        this.colorsListView = paintColorsListView;
        paintColorsListView.setVisibility(8);
        this.colorsListView.setColorPalette(PersistColorPalette.getInstance(i));
        this.colorsListView.setColorListener(new Consumer() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda17
            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                this.f$0.lambda$new$8((Integer) obj);
            }
        });
        this.bottomLayout.addView(this.colorsListView, LayoutHelper.createFrame(-1, 84.0f, 48, 56.0f, 0.0f, 56.0f, 6.0f));
        setupTabsLayout(context);
        PaintCancelView paintCancelView = new PaintCancelView(context);
        this.cancelButton = paintCancelView;
        paintCancelView.setPadding(AndroidUtilities.dp(8.0f), AndroidUtilities.dp(8.0f), AndroidUtilities.dp(8.0f), AndroidUtilities.dp(8.0f));
        this.cancelButton.setBackground(Theme.createSelectorDrawable(1090519039));
        this.bottomLayout.addView(this.cancelButton, LayoutHelper.createFrame(32, 32.0f, 83, 12.0f, 0.0f, 0.0f, 4.0f));
        PaintDoneView paintDoneView = new PaintDoneView(context);
        this.doneButton = paintDoneView;
        paintDoneView.setPadding(AndroidUtilities.dp(8.0f), AndroidUtilities.dp(8.0f), AndroidUtilities.dp(8.0f), AndroidUtilities.dp(8.0f));
        this.doneButton.setBackground(Theme.createSelectorDrawable(1090519039));
        this.doneButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda18
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$new$10(context, bitmap2, view2);
            }
        });
        this.bottomLayout.addView(this.doneButton, LayoutHelper.createFrame(32, 32.0f, 85, 0.0f, 0.0f, 12.0f, 4.0f));
        PaintWeightChooserView paintWeightChooserView = new PaintWeightChooserView(context);
        this.weightChooserView = paintWeightChooserView;
        paintWeightChooserView.setColorSwatch(this.colorSwatch);
        this.weightChooserView.setRenderView(this.renderView);
        this.weightChooserView.setValueOverride(this.weightDefaultValueOverride);
        this.colorSwatch.brushWeight = this.weightDefaultValueOverride.get();
        this.weightChooserView.setOnUpdate(new Runnable() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$11(i);
            }
        });
        addView(this.weightChooserView, LayoutHelper.createFrame(-1, -1.0f));
        FrameLayout frameLayout5 = new FrameLayout(context);
        this.pipetteContainerLayout = frameLayout5;
        addView(frameLayout5, LayoutHelper.createFrame(-1, -1.0f));
        this.colorSwatchOutlinePaint.setStyle(style);
        this.colorSwatchOutlinePaint.setStrokeWidth(AndroidUtilities.dp(2.0f));
        setCurrentSwatch(this.colorSwatch, true);
        onBrushSelected(Brush.BRUSHES_LIST.get(0));
        updateColors();
        if (Build.VERSION.SDK_INT >= 29) {
            setSystemGestureExclusionRects(Arrays.asList(new Rect(0, (int) (AndroidUtilities.displaySize.y * 0.35f), AndroidUtilities.dp(100.0f), (int) (((double) AndroidUtilities.displaySize.y) * 0.65d))));
        }
    }

    public static /* synthetic */ int $r8$lambda$6i0NVTYBdNPKqzxlYpb8bUqDG9g(Theme.ResourcesProvider resourcesProvider, int i) {
        if (i == Theme.key_actionBarDefaultSubmenuBackground) {
            return -14145495;
        }
        if (i == Theme.key_actionBarDefaultSubmenuItem) {
            return -1;
        }
        if (i == Theme.key_dialogBackground) {
            return -14737633;
        }
        if (i == Theme.key_dialogTextBlack) {
            return -592138;
        }
        if (i == Theme.key_dialogTextGray3) {
            return -8553091;
        }
        if (i == Theme.key_chat_emojiPanelBackground) {
            return -16777216;
        }
        if (i == Theme.key_chat_emojiPanelShadowLine) {
            return -1610612736;
        }
        if (i == Theme.key_chat_emojiBottomPanelIcon || i == Theme.key_chat_emojiPanelBackspace || i == Theme.key_chat_emojiPanelIcon) {
            return -9539985;
        }
        if (i == Theme.key_windowBackgroundWhiteBlackText) {
            return -1;
        }
        int i2 = Theme.key_featuredStickers_addedIcon;
        if (i == i2) {
            return -11754001;
        }
        if (i == Theme.key_listSelector) {
            return 536870911;
        }
        if (i == Theme.key_profile_tabSelectedText || i == Theme.key_profile_tabText || i == Theme.key_profile_tabSelectedLine) {
            return -1;
        }
        if (i == Theme.key_profile_tabSelector) {
            return 352321535;
        }
        if (i == Theme.key_chat_emojiSearchIcon || i == i2) {
            return -7895161;
        }
        if (i == Theme.key_chat_emojiSearchBackground) {
            return 780633991;
        }
        if (i == Theme.key_windowBackgroundGray) {
            return -15921907;
        }
        if (i == Theme.key_fastScrollInactive) {
            return -12500671;
        }
        if (i == Theme.key_fastScrollActive) {
            return -13133079;
        }
        if (i == Theme.key_fastScrollText) {
            return -1;
        }
        if (i == Theme.key_windowBackgroundWhite) {
            return -15198183;
        }
        if (i == Theme.key_divider) {
            return -16777216;
        }
        if (resourcesProvider != null) {
            return resourcesProvider.getColor(i);
        }
        return Theme.getColor(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1() {
        boolean zCanUndo = this.undoStore.canUndo();
        this.undoButton.animate().cancel();
        this.undoButton.animate().alpha(zCanUndo ? 1.0f : 0.6f).translationY(0.0f).setDuration(150L).start();
        this.undoButton.setClickable(zCanUndo);
        this.undoAllButton.animate().cancel();
        this.undoAllButton.animate().alpha(zCanUndo ? 1.0f : 0.6f).translationY(0.0f).setDuration(150L).start();
        this.undoAllButton.setClickable(zCanUndo);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(View view) {
        RenderView renderView = this.renderView;
        if (renderView != null && (renderView.getCurrentBrush() instanceof Brush.Shape)) {
            this.renderView.clearShape();
            this.paintToolsView.setSelectedIndex(1);
            onBrushSelected(Brush.BRUSHES_LIST.get(0));
            return;
        }
        this.undoStore.undo();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$4(View view) {
        if (this.undoStore.canUndo()) {
            RenderView renderView = this.renderView;
            if (renderView != null && (renderView.getCurrentBrush() instanceof Brush.Shape)) {
                this.renderView.clearShape();
                this.paintToolsView.setSelectedIndex(1);
                onBrushSelected(Brush.BRUSHES_LIST.get(0));
            }
            this.renderView.clearAll();
            this.undoStore.reset();
            this.entitiesView.removeAllViews();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$5(View view) {
        EntityView entityView = this.currentEntityView;
        if (entityView instanceof TextPaintView) {
            AndroidUtilities.hideKeyboard(((TextPaintView) entityView).getFocusedView());
        }
        if (this.emojiViewVisible) {
            hideEmojiPopup(false);
        }
        lambda$registerRemovalUndo$45(this.currentEntityView);
        selectEntity(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$6(View view) {
        selectEntity(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$7(View view, int i) {
        PaintTypeface paintTypeface = PaintTypeface.get().get(i);
        this.textOptionsView.setTypeface(paintTypeface.getKey());
        onTypefaceSelected(paintTypeface);
        showTypefaceMenu(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$8(Integer num) {
        setNewColor(num.intValue());
        showColorList(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$10(Context context, final Bitmap bitmap, View view) {
        if (this.isColorListShown) {
            new ColorPickerBottomSheet(context, this.resourcesProvider).setColor(this.colorSwatch.color).setPipetteDelegate(new ColorPickerBottomSheet.PipetteDelegate() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView.10
                private boolean hasPipette;

                @Override // org.telegram.ui.Components.Paint.ColorPickerBottomSheet.PipetteDelegate
                public void onStartColorPipette() {
                    this.hasPipette = true;
                }

                @Override // org.telegram.ui.Components.Paint.ColorPickerBottomSheet.PipetteDelegate
                public void onStopColorPipette() {
                    this.hasPipette = false;
                }

                @Override // org.telegram.ui.Components.Paint.ColorPickerBottomSheet.PipetteDelegate
                public ViewGroup getContainerView() {
                    return LPhotoPaintView.this.pipetteContainerLayout;
                }

                @Override // org.telegram.ui.Components.Paint.ColorPickerBottomSheet.PipetteDelegate
                public View getSnapshotDrawingView() {
                    return LPhotoPaintView.this;
                }

                @Override // org.telegram.ui.Components.Paint.ColorPickerBottomSheet.PipetteDelegate
                public void onDrawImageOverCanvas(Bitmap bitmap2, Canvas canvas) {
                    Matrix matrix = LPhotoPaintView.this.renderView.getMatrix();
                    canvas.save();
                    canvas.translate(LPhotoPaintView.this.renderView.getX(), LPhotoPaintView.this.renderView.getY());
                    canvas.concat(matrix);
                    canvas.scale(LPhotoPaintView.this.renderView.getWidth() / bitmap.getWidth(), LPhotoPaintView.this.renderView.getHeight() / bitmap.getHeight(), 0.0f, 0.0f);
                    canvas.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
                    canvas.restore();
                }

                @Override // org.telegram.ui.Components.Paint.ColorPickerBottomSheet.PipetteDelegate
                public boolean isPipetteVisible() {
                    return this.hasPipette;
                }

                @Override // org.telegram.ui.Components.Paint.ColorPickerBottomSheet.PipetteDelegate
                public boolean isPipetteAvailable() {
                    return bitmap != null;
                }

                @Override // org.telegram.ui.Components.Paint.ColorPickerBottomSheet.PipetteDelegate
                public void onColorSelected(int i) {
                    LPhotoPaintView.this.showColorList(false);
                    LPhotoPaintView.this.palette.selectColor(i);
                    LPhotoPaintView.this.palette.saveColors();
                    LPhotoPaintView.this.setNewColor(i);
                    LPhotoPaintView.this.colorsListView.setSelectedColorIndex(LPhotoPaintView.this.palette.getCurrentColorPosition());
                    LPhotoPaintView.this.colorsListView.getAdapter().notifyDataSetChanged();
                }
            }).setColorListener(new Consumer() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda41
                @Override // androidx.core.util.Consumer
                public final void accept(Object obj) {
                    this.f$0.lambda$new$9((Integer) obj);
                }
            }).show();
            return;
        }
        Runnable runnable = this.onDoneButtonClickedListener;
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$9(Integer num) {
        this.palette.selectColor(num.intValue());
        this.palette.saveColors();
        setNewColor(num.intValue());
        this.colorsListView.setSelectedColorIndex(this.palette.getCurrentColorPosition());
        this.colorsListView.getAdapter().notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$11(int i) {
        setCurrentSwatch(this.colorSwatch, true);
        PersistColorPalette.getInstance(i).setCurrentWeight(this.colorSwatch.brushWeight);
    }

    public void setDrawShadow(boolean z) {
        this.drawShadow = z;
        invalidate();
        setClipChildren(!z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setNewColor(final int i) {
        Swatch swatch = this.colorSwatch;
        final int i2 = swatch.color;
        swatch.color = i;
        setCurrentSwatch(swatch, true);
        ValueAnimator duration = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(150L);
        duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda5
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$setNewColor$12(i2, i, valueAnimator);
            }
        });
        duration.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setNewColor$12(int i, int i2, ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.colorSwatch.color = ColorUtils.blendARGB(i, i2, fFloatValue);
        this.bottomLayout.invalidate();
    }

    public void translateY(float f) {
        if (Math.abs(f - this.pany) > 0.1f) {
            this.pany = f;
            setTransform(this.scale, this.inputTransformX, this.inputTransformY, this.imageWidth, this.imageHeight);
        }
    }

    public boolean isCurrentText() {
        return this.currentEntityView instanceof TextPaintView;
    }

    public float getSelectedEntityBottom() {
        EntityView entityView = this.currentEntityView;
        if (entityView == null) {
            return getY() + this.entitiesView.getMeasuredHeight();
        }
        entityView.getLocationInWindow(new int[2]);
        return r1[1] + (this.currentEntityView.getHeight() * this.entitiesView.getScaleY());
    }

    private TextPaintView createText(boolean z) {
        onTextAdd();
        Size paintingSize = getPaintingSize();
        PointF pointFStartPositionRelativeToEntity = startPositionRelativeToEntity(null);
        TextPaintView textPaintView = new TextPaintView(getContext(), pointFStartPositionRelativeToEntity, (int) (paintingSize.width / 9.0f), _UrlKt.FRAGMENT_ENCODE_SET, this.colorSwatch, this.selectedTextType);
        float f = paintingSize.width;
        textPaintView.setMinMaxFontSize((int) ((f / 9.0f) * 0.5f), (int) ((f / 9.0f) * 2.0f), new Runnable() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda40
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createText$13();
            }
        });
        if (pointFStartPositionRelativeToEntity.x == this.entitiesView.getMeasuredWidth() / 2.0f) {
            textPaintView.setStickyX(2);
        }
        if (pointFStartPositionRelativeToEntity.y == this.entitiesView.getMeasuredHeight() / 2.0f) {
            textPaintView.setStickyY(2);
        }
        textPaintView.setDelegate(this);
        textPaintView.setMaxWidth((int) (paintingSize.width - 20.0f));
        textPaintView.setTypeface(PersistColorPalette.getInstance(this.currentAccount).getCurrentTypeface());
        textPaintView.setType(PersistColorPalette.getInstance(this.currentAccount).getCurrentTextType());
        this.entitiesView.addView(textPaintView, LayoutHelper.createFrame(-2, -2.0f));
        MediaController.CropState cropState = this.currentCropState;
        if (cropState != null) {
            textPaintView.scale(1.0f / cropState.cropScale);
            textPaintView.rotate(-(r0.transformRotation + this.currentCropState.cropRotate));
        }
        if (z) {
            registerRemovalUndo(textPaintView);
            textPaintView.beginEditing();
            selectEntity(textPaintView, false);
            textPaintView.getFocusedView().requestFocus();
            AndroidUtilities.showKeyboard(textPaintView.getFocusedView());
            this.editingText = true;
            this.textOptionsView.setAlignment(PersistColorPalette.getInstance(this.currentAccount).getCurrentAlignment(), true);
            this.textOptionsView.setOutlineType(PersistColorPalette.getInstance(this.currentAccount).getCurrentTextType());
        }
        return textPaintView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createText$13() {
        PaintWeightChooserView paintWeightChooserView = this.weightChooserView;
        if (paintWeightChooserView != null) {
            paintWeightChooserView.invalidate();
        }
    }

    public void setOnDoneButtonClickedListener(Runnable runnable) {
        this.onDoneButtonClickedListener = runnable;
    }

    private void editSelectedTextEntity() {
        EntityView entityView = this.currentEntityView;
        if (!(entityView instanceof TextPaintView) || this.editingText) {
            return;
        }
        TextPaintView textPaintView = (TextPaintView) entityView;
        this.editingText = true;
        textPaintView.beginEditing();
        View focusedView = textPaintView.getFocusedView();
        focusedView.requestFocus();
        AndroidUtilities.showKeyboard(focusedView);
    }

    public void updateZoom(boolean z) {
        boolean z2 = !z;
        if (this.zoomOutVisible != z2) {
            this.zoomOutVisible = z2;
            this.zoomOutButton.animate().cancel();
            this.zoomOutButton.animate().alpha(z ? 0.0f : 1.0f).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).setDuration(240L).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean selectEntity(EntityView entityView) {
        return selectEntity(entityView, true);
    }

    private boolean selectEntity(EntityView entityView, boolean z) {
        boolean z2;
        int i;
        boolean z3 = entityView instanceof TextPaintView;
        int i2 = 2;
        if (z3 && (((i = this.tabsNewSelectedIndex) == -1 && this.tabsSelectedIndex != 2) || (i != -1 && i != 2))) {
            ValueAnimator valueAnimator = this.tabsSelectionAnimator;
            if (valueAnimator != null && i != 2) {
                valueAnimator.cancel();
            }
            if (this.isColorListShown) {
                showColorList(false);
            }
            switchTab(2);
        }
        if (z3 && z) {
            TextPaintView textPaintView = (TextPaintView) entityView;
            int gravity = textPaintView.getEditText().getGravity();
            if (gravity == 17) {
                i2 = 1;
            } else if (gravity != 21) {
                i2 = 0;
            }
            this.textOptionsView.setAlignment(i2);
            this.textOptionsView.setTypeface(textPaintView.getTypeface().getKey());
            this.textOptionsView.setOutlineType(textPaintView.getType(), true);
            this.overlayLayout.invalidate();
        }
        EntityView entityView2 = this.currentEntityView;
        if (entityView2 == null) {
            z2 = false;
        } else {
            if (entityView2 == entityView) {
                if (!this.editingText) {
                    showMenuForEntity(entityView2);
                } else if (entityView2 instanceof TextPaintView) {
                    AndroidUtilities.showKeyboard(((TextPaintView) entityView2).getFocusedView());
                    hideEmojiPopup(false);
                }
                return true;
            }
            entityView2.deselect();
            EntityView entityView3 = this.currentEntityView;
            if (entityView3 instanceof TextPaintView) {
                ((TextPaintView) entityView3).endEditing();
                if (!z3) {
                    this.editingText = false;
                    AndroidUtilities.hideKeyboard(((TextPaintView) this.currentEntityView).getFocusedView());
                    hideEmojiPopup(false);
                }
            }
            z2 = true;
        }
        EntityView entityView4 = this.currentEntityView;
        this.currentEntityView = entityView;
        if ((entityView4 instanceof TextPaintView) && TextUtils.isEmpty(((TextPaintView) entityView4).getText())) {
            lambda$registerRemovalUndo$45(entityView4);
        }
        EntityView entityView5 = this.currentEntityView;
        if (entityView5 != null) {
            entityView5.select(this.selectionContainerView);
            this.entitiesView.bringChildToFront(this.currentEntityView);
            EntityView entityView6 = this.currentEntityView;
            if (entityView6 instanceof TextPaintView) {
                final TextPaintView textPaintView2 = (TextPaintView) entityView6;
                textPaintView2.disableAutoresize(false);
                textPaintView2.getSwatch().brushWeight = this.colorSwatch.brushWeight;
                setCurrentSwatch(textPaintView2.getSwatch(), true);
                final float f = (int) (this.paintingSize.width / 9.0f);
                this.weightChooserView.setValueOverride(new PaintWeightChooserView.ValueOverride() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView.11
                    @Override // org.telegram.ui.Components.Paint.Views.PaintWeightChooserView.ValueOverride
                    public float get() {
                        return textPaintView2.getBaseFontSize() / f;
                    }

                    @Override // org.telegram.ui.Components.Paint.Views.PaintWeightChooserView.ValueOverride
                    public void set(float f2) {
                        textPaintView2.disableAutoresize(true);
                        textPaintView2.setBaseFontSize((int) (f * f2));
                    }
                });
                this.weightChooserView.setShowPreview(false);
            } else {
                this.weightChooserView.setValueOverride(this.weightDefaultValueOverride);
                this.weightChooserView.setShowPreview(true);
                this.colorSwatch.brushWeight = this.weightDefaultValueOverride.get();
                setCurrentSwatch(this.colorSwatch, true);
            }
            return true;
        }
        ValueAnimator valueAnimator2 = this.tabsSelectionAnimator;
        if (valueAnimator2 != null && this.tabsNewSelectedIndex != 0) {
            valueAnimator2.cancel();
        }
        if (this.isColorListShown) {
            showColorList(false);
        }
        switchTab(0);
        this.weightChooserView.setValueOverride(this.weightDefaultValueOverride);
        this.weightChooserView.setShowPreview(true);
        this.colorSwatch.brushWeight = this.weightDefaultValueOverride.get();
        setCurrentSwatch(this.colorSwatch, true);
        return z2;
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j) {
        EntitiesContainerView entitiesContainerView;
        FrameLayout frameLayout;
        if (view == this.entitiesView) {
            float f = this.shadowAlpha.set(this.drawShadow);
            if (f > 0.0f) {
                this.shadowPaint.setShadowLayer(AndroidUtilities.dp(24.0f * f), 0.0f, 0.0f, Theme.multAlpha(1090519039, f));
                this.shadowPaint.setColor(0);
                canvas.saveLayerAlpha(0.0f, 0.0f, getWidth(), getHeight(), 255, 31);
                canvas.translate(this.entitiesView.getX(), this.entitiesView.getY());
                canvas.scale(this.entitiesView.getScaleX(), this.entitiesView.getScaleY(), this.entitiesView.getWidth() / 2.0f, this.entitiesView.getHeight() / 2.0f);
                canvas.drawRect(0.0f, 0.0f, this.entitiesView.getWidth(), this.entitiesView.getHeight(), this.shadowPaint);
                canvas.drawRect(0.0f, 0.0f, this.entitiesView.getWidth(), this.entitiesView.getHeight(), this.clearPaint);
                canvas.restore();
            }
        }
        if ((view == this.renderView || view == this.renderInputView || ((view == (entitiesContainerView = this.entitiesView) && entitiesContainerView.getClipChildren()) || (view == (frameLayout = this.selectionContainerView) && frameLayout.getClipChildren()))) && this.currentCropState != null) {
            canvas.save();
            i = this.inBubbleMode ? 0 : AndroidUtilities.statusBarHeight;
            int currentActionBarHeight = ActionBar.getCurrentActionBarHeight() + i;
            int measuredWidth = view.getMeasuredWidth();
            int measuredHeight = view.getMeasuredHeight();
            MediaController.CropState cropState = this.currentCropState;
            int i = cropState.transformRotation;
            if (i == 90 || i == 270) {
                measuredHeight = measuredWidth;
                measuredWidth = measuredHeight;
            }
            float scaleX = measuredWidth * cropState.cropPw * view.getScaleX();
            MediaController.CropState cropState2 = this.currentCropState;
            int i2 = (int) (scaleX / cropState2.cropScale);
            int scaleY = (int) (((measuredHeight * cropState2.cropPh) * view.getScaleY()) / this.currentCropState.cropScale);
            float fCeil = ((float) Math.ceil((getMeasuredWidth() - i2) / 2.0f)) + this.transformX;
            float measuredHeight2 = ((((((getMeasuredHeight() - this.emojiPadding) - currentActionBarHeight) - AndroidUtilities.dp(48.0f)) + getAdditionalBottom()) - scaleY) / 2.0f) + AndroidUtilities.dp(8.0f) + i + this.transformY;
            canvas.clipRect(Math.max(0.0f, fCeil), Math.max(0.0f, measuredHeight2), Math.min(fCeil + i2, getMeasuredWidth()), Math.min(getMeasuredHeight(), measuredHeight2 + scaleY));
            i = 1;
        }
        boolean zDrawChild = super.drawChild(canvas, view, j);
        if (i != 0) {
            canvas.restore();
        }
        return zDrawChild;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ViewGroup getBarView() {
        return this.tabsSelectedIndex == 2 ? this.textOptionsView : this.paintToolsView;
    }

    private void setupTabsLayout(Context context) {
        LinearLayout linearLayout = new LinearLayout(context) { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView.12
            Paint linePaint;

            {
                Paint paint = new Paint(1);
                this.linePaint = paint;
                paint.setStrokeWidth(AndroidUtilities.dp(2.0f));
                this.linePaint.setStyle(Paint.Style.STROKE);
                this.linePaint.setStrokeCap(Paint.Cap.ROUND);
                setWillNotDraw(false);
            }

            @Override // android.widget.LinearLayout, android.view.View
            public void onDraw(Canvas canvas) {
                super.onDraw(canvas);
                TextView textView = (TextView) getChildAt(LPhotoPaintView.this.tabsSelectedIndex);
                TextView textView2 = LPhotoPaintView.this.tabsNewSelectedIndex != -1 ? (TextView) getChildAt(LPhotoPaintView.this.tabsNewSelectedIndex) : null;
                this.linePaint.setColor(textView.getCurrentTextColor());
                float y = ((textView.getY() + textView.getHeight()) - textView.getPaddingBottom()) + AndroidUtilities.dp(3.0f);
                Layout layout = textView.getLayout();
                Layout layout2 = textView2 != null ? textView2.getLayout() : null;
                float interpolation = layout2 == null ? 0.0f : CubicBezierInterpolator.DEFAULT.getInterpolation(LPhotoPaintView.this.tabsSelectionProgress);
                float fLerp = AndroidUtilities.lerp(textView.getX() + layout.getPrimaryHorizontal(layout.getLineStart(0)), textView2 != null ? textView2.getX() + layout2.getPrimaryHorizontal(layout.getLineStart(0)) : 0.0f, interpolation);
                canvas.drawLine(fLerp, y, fLerp + AndroidUtilities.lerp(layout.getPrimaryHorizontal(layout.getLineEnd(0)) - layout.getPrimaryHorizontal(layout.getLineStart(0)), layout2 != null ? layout2.getPrimaryHorizontal(layout2.getLineEnd(0)) - layout2.getPrimaryHorizontal(layout2.getLineStart(0)) : 0.0f, interpolation), y, this.linePaint);
            }
        };
        this.tabsLayout = linearLayout;
        linearLayout.setClipToPadding(false);
        this.tabsLayout.setOrientation(0);
        this.bottomLayout.addView(this.tabsLayout, LayoutHelper.createFrame(-1, 40.0f, 80, 52.0f, 0.0f, 52.0f, 0.0f));
        TextView textView = new TextView(context);
        this.drawTab = textView;
        textView.setText(LocaleController.getString(C2665R.string.PhotoEditorDraw).toUpperCase());
        TextView textView2 = this.drawTab;
        int i = Theme.key_listSelector;
        textView2.setBackground(Theme.createSelectorDrawable(getThemedColor(i), 7));
        this.drawTab.setPadding(0, AndroidUtilities.dp(8.0f), 0, AndroidUtilities.dp(8.0f));
        this.drawTab.setTextColor(-1);
        this.drawTab.setTextSize(1, 14.0f);
        this.drawTab.setGravity(1);
        this.drawTab.setTypeface(AndroidUtilities.bold());
        this.drawTab.setSingleLine();
        this.drawTab.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$setupTabsLayout$14(view);
            }
        });
        this.tabsLayout.addView(this.drawTab, LayoutHelper.createLinear(0, -2, 1.0f));
        TextView textView3 = new TextView(context);
        this.stickerTab = textView3;
        textView3.setText(LocaleController.getString(C2665R.string.PhotoEditorSticker).toUpperCase());
        this.stickerTab.setBackground(Theme.createSelectorDrawable(getThemedColor(i), 7));
        this.stickerTab.setPadding(0, AndroidUtilities.dp(8.0f), 0, AndroidUtilities.dp(8.0f));
        this.stickerTab.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$setupTabsLayout$15(view);
            }
        });
        this.stickerTab.setTextColor(-1);
        this.stickerTab.setTextSize(1, 14.0f);
        this.stickerTab.setGravity(1);
        this.stickerTab.setTypeface(AndroidUtilities.bold());
        this.stickerTab.setAlpha(0.6f);
        this.stickerTab.setSingleLine();
        this.tabsLayout.addView(this.stickerTab, LayoutHelper.createLinear(0, -2, 1.0f));
        TextView textView4 = new TextView(context);
        this.textTab = textView4;
        textView4.setText(LocaleController.getString(C2665R.string.PhotoEditorText).toUpperCase());
        this.textTab.setBackground(Theme.createSelectorDrawable(getThemedColor(i), 7));
        this.textTab.setPadding(0, AndroidUtilities.dp(8.0f), 0, AndroidUtilities.dp(8.0f));
        this.textTab.setTextColor(-1);
        this.textTab.setTextSize(1, 14.0f);
        this.textTab.setGravity(1);
        this.textTab.setTypeface(AndroidUtilities.bold());
        this.textTab.setAlpha(0.6f);
        this.textTab.setSingleLine();
        this.textTab.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$setupTabsLayout$16(view);
            }
        });
        this.tabsLayout.addView(this.textTab, LayoutHelper.createLinear(0, -2, 1.0f));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setupTabsLayout$14(View view) {
        if (this.editingText) {
            selectEntity(null);
        } else {
            switchTab(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setupTabsLayout$15(View view) {
        openStickersView();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setupTabsLayout$16(View view) {
        switchTab(2);
        if (this.currentEntityView instanceof TextPaintView) {
            return;
        }
        createText(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public View getBarView(int i) {
        if (i == 0) {
            return this.paintToolsView;
        }
        if (i == 2) {
            return this.textOptionsView;
        }
        return null;
    }

    private void switchTab(final int i) {
        if (this.tabsSelectedIndex == i || this.tabsNewSelectedIndex == i) {
            return;
        }
        ValueAnimator valueAnimator = this.tabsSelectionAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        final View barView = getBarView(this.tabsSelectedIndex);
        this.tabsNewSelectedIndex = i;
        final View barView2 = getBarView(i);
        PersistColorPalette.getInstance(this.currentAccount).setInTextMode(i == 2);
        this.colorSwatch.color = PersistColorPalette.getInstance(this.currentAccount).getCurrentColor();
        setCurrentSwatch(this.colorSwatch, true);
        ValueAnimator duration = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(300L);
        this.tabsSelectionAnimator = duration;
        duration.setInterpolator(CubicBezierInterpolator.DEFAULT);
        this.tabsSelectionAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda21
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f$0.lambda$switchTab$17(barView, barView2, valueAnimator2);
            }
        });
        this.tabsSelectionAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView.13
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                View view;
                if (barView != null && (view = barView2) != null) {
                    view.setVisibility(0);
                }
                int i2 = i;
                LPhotoPaintView lPhotoPaintView = LPhotoPaintView.this;
                if (i2 == 2) {
                    lPhotoPaintView.weightChooserView.setMinMax(0.5f, 2.0f);
                    return;
                }
                Brush currentBrush = lPhotoPaintView.renderView.getCurrentBrush();
                if ((currentBrush instanceof Brush.Blurer) || (currentBrush instanceof Brush.Eraser)) {
                    LPhotoPaintView.this.weightChooserView.setMinMax(0.4f, 1.75f);
                } else {
                    LPhotoPaintView.this.weightChooserView.setMinMax(0.05f, 1.0f);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                LPhotoPaintView lPhotoPaintView = LPhotoPaintView.this;
                lPhotoPaintView.tabsSelectedIndex = lPhotoPaintView.tabsNewSelectedIndex;
                LPhotoPaintView.this.tabsNewSelectedIndex = -1;
                LPhotoPaintView.this.tabsLayout.invalidate();
                View view = barView;
                if (view != null && barView2 != null) {
                    view.setVisibility(8);
                }
                if (animator == LPhotoPaintView.this.tabsSelectionAnimator) {
                    LPhotoPaintView.this.tabsSelectionAnimator = null;
                }
            }
        });
        this.tabsSelectionAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$switchTab$17(View view, View view2, ValueAnimator valueAnimator) {
        this.tabsSelectionProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.tabsLayout.invalidate();
        this.bottomLayout.invalidate();
        this.overlayLayout.invalidate();
        int i = 0;
        while (i < this.tabsLayout.getChildCount()) {
            this.tabsLayout.getChildAt(i).setAlpha(((i == this.tabsNewSelectedIndex ? this.tabsSelectionProgress : i == this.tabsSelectedIndex ? 1.0f - this.tabsSelectionProgress : 0.0f) * 0.4f) + 0.6f);
            i++;
        }
        float interpolation = CubicBezierInterpolator.DEFAULT.getInterpolation(this.tabsSelectionProgress);
        if (view == null || view2 == null) {
            return;
        }
        float f = 1.0f - interpolation;
        float f2 = (f * 0.4f) + 0.6f;
        view.setScaleX(f2);
        view.setScaleY(f2);
        view.setTranslationY((AndroidUtilities.dp(16.0f) * Math.min(interpolation, 0.25f)) / 0.25f);
        view.setAlpha(1.0f - (Math.min(interpolation, 0.25f) / 0.25f));
        float f3 = (interpolation * 0.4f) + 0.6f;
        view2.setScaleX(f3);
        view2.setScaleY(f3);
        view2.setTranslationY(((-AndroidUtilities.dp(16.0f)) * Math.min(f, 0.25f)) / 0.25f);
        view2.setAlpha(1.0f - (Math.min(f, 0.25f) / 0.25f));
    }

    private void openStickersView() {
        final int i = this.tabsSelectedIndex;
        switchTab(1);
        postDelayed(new Runnable() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda35
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$openStickersView$18();
            }
        }, 350L);
        EmojiBottomSheet emojiBottomSheet = new EmojiBottomSheet(getContext(), false, this.resourcesProvider, false) { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView.14
            @Override // org.telegram.ui.Stories.recorder.EmojiBottomSheet
            public boolean canShowWidget(Integer num) {
                return num.intValue() == 2;
            }
        };
        emojiBottomSheet.whenDocumentSelected(new Utilities.Callback3Return() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda36
            @Override // org.telegram.messenger.Utilities.Callback3Return
            public final Object run(Object obj, Object obj2, Object obj3) {
                return this.f$0.lambda$openStickersView$19(obj, (TLRPC.Document) obj2, (Boolean) obj3);
            }
        });
        emojiBottomSheet.whenWidgetSelected(new Utilities.CallbackReturn() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda37
            @Override // org.telegram.messenger.Utilities.CallbackReturn
            public final Object run(Object obj) {
                return this.f$0.lambda$openStickersView$20((Integer) obj);
            }
        });
        emojiBottomSheet.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda38
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                this.f$0.lambda$openStickersView$21(i, dialogInterface);
            }
        });
        emojiBottomSheet.show();
        onOpenCloseStickersAlert(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openStickersView$18() {
        if (this.facesBitmap != null) {
            detectFaces();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$openStickersView$19(Object obj, TLRPC.Document document, Boolean bool) {
        StickerView stickerViewCreateSticker = createSticker(obj, document, true);
        if (bool.booleanValue()) {
            stickerViewCreateSticker.setScale(1.5f);
        }
        return Boolean.TRUE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$openStickersView$20(Integer num) {
        if (num.intValue() == 2) {
            showPhotoAlert();
        }
        return Boolean.TRUE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openStickersView$21(int i, DialogInterface dialogInterface) {
        onOpenCloseStickersAlert(false);
        switchTab(i);
    }

    private void showPhotoAlert() {
        final ChatAttachAlert chatAttachAlert = new ChatAttachAlert(getContext(), new ChatActivity(null) { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView.15
            @Override // org.telegram.ui.ChatActivity, org.telegram.ui.Components.ChatActivityInterface, org.telegram.ui.Components.InstantCameraView.Delegate
            public long getDialogId() {
                return 0L;
            }

            @Override // org.telegram.ui.ChatActivity
            public boolean isKeyboardVisible() {
                return false;
            }

            @Override // org.telegram.ui.ChatActivity, org.telegram.ui.ActionBar.BaseFragment
            public boolean isLightStatusBar() {
                return false;
            }

            @Override // org.telegram.ui.ChatActivity, org.telegram.ui.ActionBar.BaseFragment
            public Theme.ResourcesProvider getResourceProvider() {
                return LPhotoPaintView.this.resourcesProvider;
            }

            @Override // org.telegram.ui.ActionBar.BaseFragment
            public Activity getParentActivity() {
                return AndroidUtilities.findActivity(LPhotoPaintView.this.getContext());
            }

            @Override // org.telegram.ui.ChatActivity, org.telegram.ui.Components.ChatActivityInterface
            public TLRPC.User getCurrentUser() {
                return UserConfig.getInstance(this.currentAccount).getCurrentUser();
            }
        }, false, false, false, this.resourcesProvider);
        chatAttachAlert.drawNavigationBar = true;
        chatAttachAlert.setupPhotoPicker(LocaleController.getString(C2665R.string.AddImage));
        chatAttachAlert.setDelegate(new ChatAttachAlert.ChatAttachViewDelegate() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView.16
            long start;

            @Override // org.telegram.ui.Components.ChatAttachAlert.ChatAttachViewDelegate
            public boolean selectItemOnClicking() {
                this.start = System.currentTimeMillis();
                return true;
            }

            @Override // org.telegram.ui.Components.ChatAttachAlert.ChatAttachViewDelegate
            public void didPressedButton(int i, boolean z, boolean z2, int i2, int i3, long j, boolean z3, boolean z4, long j2) {
                try {
                    HashMap<Object, Object> selectedPhotos = chatAttachAlert.getPhotoLayout().getSelectedPhotos();
                    if (selectedPhotos.isEmpty()) {
                        return;
                    }
                    MediaController.PhotoEntry photoEntry = (MediaController.PhotoEntry) selectedPhotos.values().iterator().next();
                    String str = photoEntry.imagePath;
                    if (str == null) {
                        str = photoEntry.path;
                    }
                    LPhotoPaintView lPhotoPaintView = LPhotoPaintView.this;
                    lPhotoPaintView.appearAnimation(lPhotoPaintView.createPhoto(str, true));
                    chatAttachAlert.lambda$new$0();
                } catch (Throwable th) {
                    FileLog.m992e(th);
                }
            }
        });
        chatAttachAlert.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda42
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                MediaController.forceBroadcastNewPhotos = false;
            }
        });
        chatAttachAlert.setMaxSelectedPhotos(1, false);
        chatAttachAlert.init();
        MediaController.forceBroadcastNewPhotos = true;
        chatAttachAlert.getPhotoLayout().loadGalleryPhotos();
        chatAttachAlert.show();
    }

    public void appearAnimation(final View view) {
        float scaleX = view.getScaleX();
        float scaleY = view.getScaleY();
        view.setScaleX(scaleX * 0.5f);
        view.setScaleY(0.5f * scaleY);
        view.setAlpha(0.0f);
        view.animate().scaleX(scaleX).scaleY(scaleY).alpha(1.0f).setInterpolator(new OvershootInterpolator(3.0f)).setDuration(240L).withEndAction(new Runnable() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda49
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$appearAnimation$23(view);
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$appearAnimation$23(View view) {
        if (view instanceof EntityView) {
            EntityView entityView = (EntityView) view;
            entityView.updateSelectionView();
            selectEntity(entityView);
        }
    }

    public PhotoView createPhoto(String str, boolean z) {
        Size sizeBasePhotoSize = basePhotoSize(str);
        Pair<Integer, Integer> imageOrientation = AndroidUtilities.getImageOrientation(str);
        if ((((Integer) imageOrientation.first).intValue() / 90) % 2 == 1) {
            float f = sizeBasePhotoSize.width;
            sizeBasePhotoSize.width = sizeBasePhotoSize.height;
            sizeBasePhotoSize.height = f;
        }
        PhotoView photoView = new PhotoView(getContext(), centerPositionForEntity(), 0.0f, 1.0f, sizeBasePhotoSize, str, ((Integer) imageOrientation.first).intValue(), ((Integer) imageOrientation.second).intValue());
        photoView.setDelegate(this);
        this.entitiesView.addView(photoView);
        if (z) {
            registerRemovalUndo(photoView);
            selectEntity(photoView);
        }
        return photoView;
    }

    private Size basePhotoSize(String str) {
        float f;
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(str, options);
            f = options.outWidth / options.outHeight;
        } catch (Exception e) {
            FileLog.m992e(e);
            f = 1.0f;
        }
        EntitiesContainerView entitiesContainerView = this.entitiesView;
        if (f > 1.0f) {
            float fFloor = (float) Math.floor(((double) entitiesContainerView.getMeasuredWidth()) * 0.5d);
            return new Size(fFloor, fFloor / f);
        }
        float fFloor2 = (float) Math.floor(((double) entitiesContainerView.getMeasuredHeight()) * 0.5d);
        return new Size(f * fFloor2, fFloor2);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.ignoreLayout) {
            return;
        }
        super.requestLayout();
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        float currentActionBarHeight;
        float width;
        this.ignoreLayout = true;
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        setMeasuredDimension(size, size2);
        int currentActionBarHeight2 = (((AndroidUtilities.displaySize.y - ActionBar.getCurrentActionBarHeight()) - getAdditionalTop()) - getAdditionalBottom()) - AndroidUtilities.dp(48.0f);
        Bitmap bitmap = this.bitmapToEdit;
        if (bitmap != null) {
            width = bitmap.getWidth();
            currentActionBarHeight = this.bitmapToEdit.getHeight();
        } else {
            currentActionBarHeight = (size2 - ActionBar.getCurrentActionBarHeight()) - AndroidUtilities.dp(48.0f);
            width = size;
        }
        float fFloor = size;
        float fFloor2 = (float) Math.floor((fFloor * currentActionBarHeight) / width);
        float f = currentActionBarHeight2;
        if (fFloor2 > f) {
            fFloor = (float) Math.floor((width * f) / currentActionBarHeight);
            fFloor2 = f;
        }
        int i3 = (int) fFloor;
        int i4 = (int) fFloor2;
        this.renderView.measure(View.MeasureSpec.makeMeasureSpec(i3, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(i4, TLObject.FLAG_30));
        this.renderInputView.measure(View.MeasureSpec.makeMeasureSpec(i3, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(i4, TLObject.FLAG_30));
        float f2 = fFloor / this.paintingSize.width;
        this.baseScale = f2;
        this.entitiesView.setScaleX(f2);
        this.entitiesView.setScaleY(this.baseScale);
        this.entitiesView.measure(View.MeasureSpec.makeMeasureSpec((int) this.paintingSize.width, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec((int) this.paintingSize.height, TLObject.FLAG_30));
        ThanosEffect thanosEffect = this.thanosEffect;
        if (thanosEffect != null) {
            thanosEffect.measure(View.MeasureSpec.makeMeasureSpec((int) this.paintingSize.width, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec((int) this.paintingSize.height, TLObject.FLAG_30));
            this.thanosEffect.setScaleX(this.baseScale);
            this.thanosEffect.setScaleY(this.baseScale);
        }
        updateEntitiesSelections();
        this.selectionContainerView.measure(View.MeasureSpec.makeMeasureSpec(i3, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(i4, TLObject.FLAG_30));
        measureChild(this.bottomLayout, i, i2);
        measureChild(this.weightChooserView, i, i2);
        measureChild(this.pipetteContainerLayout, i, i2);
        measureChild(this.overlayLayout, i, View.MeasureSpec.makeMeasureSpec(size2 - Math.max(getPKeyboardHeight(), this.emojiPadding), TLObject.FLAG_30));
        FrameLayout frameLayout = this.topLayout;
        frameLayout.setPadding(frameLayout.getPaddingLeft(), AndroidUtilities.dp(12.0f) + AndroidUtilities.statusBarHeight, this.topLayout.getPaddingRight(), this.topLayout.getPaddingBottom());
        measureChild(this.topLayout, i, i2);
        this.ignoreLayout = false;
        if (!this.waitingForKeyboardOpen && AndroidUtilities.dp(20.0f) >= 0 && !this.emojiViewVisible && !this.isAnimatePopupClosing) {
            this.ignoreLayout = true;
            hideEmojiView();
            this.ignoreLayout = false;
        }
        if (AndroidUtilities.dp(20.0f) < 0) {
            hideEmojiView();
        }
        EmojiView emojiView = this.emojiView;
        if (emojiView != null) {
            measureChild(emojiView, i, i2);
        }
    }

    @Override // org.telegram.ui.Components.SizeNotifierFrameLayoutPhoto, org.telegram.ui.Components.SizeNotifierFrameLayout, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int iMeasureKeyboardHeight;
        super.onLayout(z, i, i2, i3, i4);
        int i5 = i3 - i;
        int i6 = i4 - i2;
        if (this.emojiView != null) {
            if (AndroidUtilities.isTablet()) {
                iMeasureKeyboardHeight = i6 - this.emojiView.getMeasuredHeight();
            } else {
                iMeasureKeyboardHeight = (measureKeyboardHeight() + i6) - this.emojiView.getMeasuredHeight();
            }
            EmojiView emojiView = this.emojiView;
            emojiView.layout(0, iMeasureKeyboardHeight, emojiView.getMeasuredWidth(), this.emojiView.getMeasuredHeight() + iMeasureKeyboardHeight);
        }
        int i7 = this.inBubbleMode ? 0 : AndroidUtilities.statusBarHeight;
        int currentActionBarHeight = ActionBar.getCurrentActionBarHeight() + i7;
        int iCeil = (int) Math.ceil((i5 - this.renderView.getMeasuredWidth()) / 2.0f);
        int iDp = ((((i6 - currentActionBarHeight) - AndroidUtilities.dp(48.0f)) - this.renderView.getMeasuredHeight()) / 2) + AndroidUtilities.dp(8.0f) + i7 + ((getAdditionalTop() - getAdditionalBottom()) / 2);
        RenderView renderView = this.renderView;
        renderView.layout(iCeil, iDp, renderView.getMeasuredWidth() + iCeil, this.renderView.getMeasuredHeight() + iDp);
        View view = this.renderInputView;
        view.layout(iCeil, iDp, view.getMeasuredWidth() + iCeil, this.renderInputView.getMeasuredHeight() + iDp);
        int measuredWidth = ((this.renderView.getMeasuredWidth() - this.entitiesView.getMeasuredWidth()) / 2) + iCeil;
        int measuredHeight = ((this.renderView.getMeasuredHeight() - this.entitiesView.getMeasuredHeight()) / 2) + iDp;
        EntitiesContainerView entitiesContainerView = this.entitiesView;
        entitiesContainerView.layout(measuredWidth, measuredHeight, entitiesContainerView.getMeasuredWidth() + measuredWidth, this.entitiesView.getMeasuredHeight() + measuredHeight);
        ThanosEffect thanosEffect = this.thanosEffect;
        if (thanosEffect != null) {
            thanosEffect.layout(measuredWidth, measuredHeight, this.entitiesView.getMeasuredWidth() + measuredWidth, this.entitiesView.getMeasuredHeight() + measuredHeight);
        }
        FrameLayout frameLayout = this.selectionContainerView;
        frameLayout.layout(iCeil, iDp, frameLayout.getMeasuredWidth() + iCeil, this.selectionContainerView.getMeasuredHeight() + iDp);
    }

    private Size getPaintingSize() {
        Size size = this.paintingSize;
        if (size != null) {
            return size;
        }
        float width = this.bitmapToEdit.getWidth();
        float height = this.bitmapToEdit.getHeight();
        int devicePerformanceClass = SharedConfig.getDevicePerformanceClass();
        int i = devicePerformanceClass != 0 ? devicePerformanceClass != 2 ? 2560 : 3840 : 1280;
        Size size2 = new Size(width, height);
        float f = i;
        size2.width = f;
        float fFloor = (float) Math.floor((f * height) / width);
        size2.height = fFloor;
        if (fFloor > f) {
            size2.height = f;
            size2.width = (float) Math.floor((f * width) / height);
        }
        this.paintingSize = size2;
        return size2;
    }

    public void init() {
        this.textOptionsView.setTypeface(PersistColorPalette.getInstance(this.currentAccount).getCurrentTypeface());
        this.entitiesView.setVisibility(0);
        this.renderView.setVisibility(0);
        this.renderInputView.setVisibility(0);
    }

    private int getFrameRotation() {
        int i = this.originalBitmapRotation;
        if (i == 90) {
            return 1;
        }
        if (i != 180) {
            return i != 270 ? 0 : 3;
        }
        return 2;
    }

    private boolean isSidewardOrientation() {
        int i = this.originalBitmapRotation;
        return i % 360 == 90 || i % 360 == 270;
    }

    private void detectFaces() {
        this.queue.postRunnable(new Runnable() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda43
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$detectFaces$24();
            }
        }, 200L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$detectFaces$24() {
        Detector detector = null;
        try {
            try {
                FaceDetector faceDetectorBuild = new FaceDetector.Builder(ApplicationLoader.applicationContext).setMode(1).setLandmarkType(1).setTrackingEnabled(false).build();
                if (!faceDetectorBuild.isOperational()) {
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.m990e("face detection is not operational");
                    }
                    faceDetectorBuild.release();
                    return;
                }
                try {
                    SparseArray<Face> sparseArrayDetect = faceDetectorBuild.detect(new Frame.Builder().setBitmap(this.facesBitmap).setRotation(getFrameRotation()).build());
                    ArrayList<PhotoFace> arrayList = new ArrayList<>();
                    Size paintingSize = getPaintingSize();
                    for (int i = 0; i < sparseArrayDetect.size(); i++) {
                        PhotoFace photoFace = new PhotoFace(sparseArrayDetect.get(sparseArrayDetect.keyAt(i)), this.facesBitmap, paintingSize, isSidewardOrientation());
                        if (photoFace.isSufficient()) {
                            arrayList.add(photoFace);
                        }
                    }
                    this.faces = arrayList;
                    faceDetectorBuild.release();
                } catch (Throwable th) {
                    FileLog.m992e(th);
                    faceDetectorBuild.release();
                }
            } catch (Exception e) {
                FileLog.m992e(e);
                if (0 != 0) {
                    detector.release();
                }
            }
        } catch (Throwable th2) {
            if (0 != 0) {
                detector.release();
            }
            throw th2;
        }
    }

    public void shutdown() {
        this.renderView.shutdown();
        this.entitiesView.setVisibility(8);
        this.selectionContainerView.setVisibility(8);
        this.queue.postRunnable(new Runnable() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda24
            @Override // java.lang.Runnable
            public final void run() {
                LPhotoPaintView.$r8$lambda$KxdBDoO2Zm3tTV73jojKahyzkgE();
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$KxdBDoO2Zm3tTV73jojKahyzkgE() {
        Looper looperMyLooper = Looper.myLooper();
        if (looperMyLooper != null) {
            looperMyLooper.quit();
        }
    }

    @Override // org.telegram.ui.Components.SizeNotifierFrameLayout
    public void onResume() {
        this.renderView.redraw();
    }

    public void onAnimationStateChanged(boolean z) {
        if (this.tabsSelectedIndex == 0) {
            this.weightChooserView.setLayerType(z ? 2 : 0, null);
            this.bottomLayout.setLayerType(z ? 2 : 0, null);
            this.topLayout.setLayerType(z ? 2 : 0, null);
        }
    }

    @Override // org.telegram.ui.Components.IPhotoPaintView
    public void setOffsetTranslationX(float f) {
        if (this.tabsSelectedIndex == 0) {
            this.weightChooserView.setTranslationX(f);
        }
    }

    public void setOffsetTranslationY(float f, float f2, int i, boolean z) {
        this.offsetTranslationY = f;
        if (!z) {
            this.topLayout.setTranslationY(-f);
            this.bottomLayout.setTranslationY(f);
        } else {
            setTranslationY(0.0f);
        }
    }

    public float getOffsetTranslationY() {
        return this.offsetTranslationY;
    }

    @Override // org.telegram.ui.Components.SizeNotifierFrameLayout, org.telegram.ui.ActionBar.Theme.Colorable
    public void updateColors() {
        this.toolsPaint.setColor(-15132391);
    }

    public void setBlurredBackgroundDrawableForTools(BlurredBackgroundDrawable blurredBackgroundDrawable) {
        this.blurredBackgroundDrawableForTools = blurredBackgroundDrawable.setPadding(AndroidUtilities.dp(4.0f));
    }

    public boolean hasChanges() {
        return this.undoStore.canUndo();
    }

    public Bitmap getBitmap(ArrayList<VideoEditedInfo.MediaEntity> arrayList, Bitmap[] bitmapArr) {
        Canvas canvas;
        float f;
        boolean z;
        int i;
        boolean z2;
        File fileSaveSegmentedImage;
        TextPaintView textPaintView;
        CharSequence charSequence;
        AnimatedEmojiSpan[] animatedEmojiSpanArr;
        int i2;
        LPhotoPaintView lPhotoPaintView = this;
        ArrayList<VideoEditedInfo.MediaEntity> arrayList2 = arrayList;
        int i3 = 0;
        Bitmap resultBitmap = lPhotoPaintView.renderView.getResultBitmap(false, false);
        lPhotoPaintView.lcm = BigInteger.ONE;
        if (resultBitmap != null && lPhotoPaintView.entitiesView.entitiesCount() > 0) {
            int childCount = lPhotoPaintView.entitiesView.getChildCount();
            int i4 = 0;
            Canvas canvas2 = null;
            while (i4 < childCount) {
                View childAt = lPhotoPaintView.entitiesView.getChildAt(i4);
                if (childAt instanceof EntityView) {
                    EntityView entityView = (EntityView) childAt;
                    PointF position = entityView.getPosition();
                    if (arrayList2 != null) {
                        VideoEditedInfo.MediaEntity mediaEntity = new VideoEditedInfo.MediaEntity();
                        f = 2.0f;
                        if (entityView instanceof TextPaintView) {
                            mediaEntity.type = (byte) 1;
                            TextPaintView textPaintView2 = (TextPaintView) entityView;
                            CharSequence text = textPaintView2.getText();
                            if (text instanceof Spanned) {
                                Spanned spanned = (Spanned) text;
                                AnimatedEmojiSpan[] animatedEmojiSpanArr2 = (AnimatedEmojiSpan[]) spanned.getSpans(i3, text.length(), AnimatedEmojiSpan.class);
                                if (animatedEmojiSpanArr2 != null) {
                                    int i5 = i3;
                                    while (i5 < animatedEmojiSpanArr2.length) {
                                        AnimatedEmojiSpan animatedEmojiSpan = animatedEmojiSpanArr2[i5];
                                        Canvas canvas3 = canvas2;
                                        TLRPC.Document documentFindDocument = animatedEmojiSpan.document;
                                        if (documentFindDocument == null) {
                                            animatedEmojiSpanArr = animatedEmojiSpanArr2;
                                            i2 = i5;
                                            documentFindDocument = AnimatedEmojiDrawable.findDocument(lPhotoPaintView.currentAccount, animatedEmojiSpan.getDocumentId());
                                        } else {
                                            animatedEmojiSpanArr = animatedEmojiSpanArr2;
                                            i2 = i5;
                                        }
                                        if (documentFindDocument != null) {
                                            AnimatedEmojiDrawable.getDocumentFetcher(lPhotoPaintView.currentAccount).putDocument(documentFindDocument);
                                        }
                                        VideoEditedInfo.EmojiEntity emojiEntity = new VideoEditedInfo.EmojiEntity();
                                        TextPaintView textPaintView3 = textPaintView2;
                                        CharSequence charSequence2 = text;
                                        emojiEntity.document_id = animatedEmojiSpan.getDocumentId();
                                        emojiEntity.document = documentFindDocument;
                                        emojiEntity.offset = spanned.getSpanStart(animatedEmojiSpan);
                                        emojiEntity.length = spanned.getSpanEnd(animatedEmojiSpan) - emojiEntity.offset;
                                        emojiEntity.documentAbsolutePath = FileLoader.getInstance(lPhotoPaintView.currentAccount).getPathToAttach(documentFindDocument, true).getAbsolutePath();
                                        boolean zIsAnimatedStickerDocument = MessageObject.isAnimatedStickerDocument(emojiEntity.document, true);
                                        if (zIsAnimatedStickerDocument || MessageObject.isVideoStickerDocument(emojiEntity.document)) {
                                            emojiEntity.subType = (byte) ((zIsAnimatedStickerDocument ? (byte) 1 : (byte) 4) | emojiEntity.subType);
                                        }
                                        mediaEntity.entities.add(emojiEntity);
                                        if (documentFindDocument != null) {
                                            BigInteger bigIntegerValueOf = BigInteger.valueOf(5000L);
                                            lPhotoPaintView.lcm = lPhotoPaintView.lcm.multiply(bigIntegerValueOf).divide(lPhotoPaintView.lcm.gcd(bigIntegerValueOf));
                                        }
                                        textPaintView2 = textPaintView3;
                                        animatedEmojiSpanArr2 = animatedEmojiSpanArr;
                                        text = charSequence2;
                                        i5 = i2 + 1;
                                        canvas2 = canvas3;
                                    }
                                }
                                canvas = canvas2;
                                textPaintView = textPaintView2;
                                charSequence = text;
                                mediaEntity.entities.isEmpty();
                            } else {
                                canvas = canvas2;
                                textPaintView = textPaintView2;
                                charSequence = text;
                            }
                            mediaEntity.text = charSequence.toString();
                            mediaEntity.subType = (byte) textPaintView.getType();
                            mediaEntity.color = textPaintView.getSwatch().color;
                            mediaEntity.fontSize = textPaintView.getTextSize();
                            mediaEntity.textTypeface = textPaintView.getTypeface();
                            mediaEntity.textAlign = textPaintView.getAlign();
                            z2 = true;
                        } else {
                            canvas = canvas2;
                            if (entityView instanceof StickerView) {
                                mediaEntity.type = (byte) 0;
                                StickerView stickerView = (StickerView) entityView;
                                Size baseSize = stickerView.getBaseSize();
                                mediaEntity.width = baseSize.width;
                                mediaEntity.height = baseSize.height;
                                mediaEntity.document = stickerView.getSticker();
                                mediaEntity.parentObject = stickerView.getParentObject();
                                TLRPC.Document sticker = stickerView.getSticker();
                                mediaEntity.text = FileLoader.getInstance(UserConfig.selectedAccount).getPathToAttach(sticker, true).getAbsolutePath();
                                if (MessageObject.isAnimatedStickerDocument(sticker, true) || MessageObject.isVideoStickerDocument(sticker)) {
                                    boolean zIsAnimatedStickerDocument2 = MessageObject.isAnimatedStickerDocument(sticker, true);
                                    mediaEntity.subType = (byte) (mediaEntity.subType | (zIsAnimatedStickerDocument2 ? (byte) 1 : (byte) 4));
                                    long duration = zIsAnimatedStickerDocument2 ? stickerView.getDuration() : 5000L;
                                    if (duration != 0) {
                                        BigInteger bigIntegerValueOf2 = BigInteger.valueOf(duration);
                                        lPhotoPaintView.lcm = lPhotoPaintView.lcm.multiply(bigIntegerValueOf2).divide(lPhotoPaintView.lcm.gcd(bigIntegerValueOf2));
                                    }
                                }
                                if (stickerView.isMirrored()) {
                                    mediaEntity.subType = (byte) (mediaEntity.subType | 2);
                                }
                                z2 = true;
                            } else if (entityView instanceof PhotoView) {
                                PhotoView photoView = (PhotoView) entityView;
                                mediaEntity.type = (byte) 2;
                                Size baseSize2 = photoView.getBaseSize();
                                mediaEntity.width = baseSize2.width;
                                mediaEntity.height = baseSize2.height;
                                mediaEntity.text = photoView.getPath(lPhotoPaintView.currentAccount);
                                if (photoView.isMirrored()) {
                                    mediaEntity.subType = (byte) (mediaEntity.subType | 2);
                                }
                                if (photoView.hasSegmentedImage() && photoView.isSegmented() && (fileSaveSegmentedImage = photoView.saveSegmentedImage(lPhotoPaintView.currentAccount)) != null) {
                                    mediaEntity.subType = (byte) (mediaEntity.subType | 16);
                                    mediaEntity.segmentedPath = fileSaveSegmentedImage.getPath();
                                }
                                z2 = false;
                            }
                        }
                        arrayList2.add(mediaEntity);
                        float scaleX = childAt.getScaleX();
                        float scaleY = childAt.getScaleY();
                        float x = childAt.getX();
                        float y = childAt.getY();
                        mediaEntity.viewWidth = childAt.getWidth();
                        mediaEntity.viewHeight = childAt.getHeight();
                        mediaEntity.width = (childAt.getWidth() * scaleX) / lPhotoPaintView.entitiesView.getMeasuredWidth();
                        mediaEntity.height = (childAt.getHeight() * scaleY) / lPhotoPaintView.entitiesView.getMeasuredHeight();
                        mediaEntity.f984x = (((childAt.getWidth() * (1.0f - scaleX)) / 2.0f) + x) / lPhotoPaintView.entitiesView.getMeasuredWidth();
                        mediaEntity.f985y = (((childAt.getHeight() * (1.0f - scaleY)) / 2.0f) + y) / lPhotoPaintView.entitiesView.getMeasuredHeight();
                        mediaEntity.rotation = (float) (((double) (-childAt.getRotation())) * 0.017453292519943295d);
                        mediaEntity.textViewX = (x + (childAt.getWidth() / 2.0f)) / lPhotoPaintView.entitiesView.getMeasuredWidth();
                        mediaEntity.textViewY = (y + (childAt.getHeight() / 2.0f)) / lPhotoPaintView.entitiesView.getMeasuredHeight();
                        mediaEntity.textViewWidth = mediaEntity.viewWidth / lPhotoPaintView.entitiesView.getMeasuredWidth();
                        mediaEntity.textViewHeight = mediaEntity.viewHeight / lPhotoPaintView.entitiesView.getMeasuredHeight();
                        mediaEntity.scale = scaleX;
                        if (bitmapArr[0] == null) {
                            bitmapArr[0] = Bitmap.createBitmap(resultBitmap.getWidth(), resultBitmap.getHeight(), resultBitmap.getConfig());
                            Canvas canvas4 = new Canvas(bitmapArr[0]);
                            canvas4.drawBitmap(resultBitmap, 0.0f, 0.0f, (Paint) null);
                            canvas = canvas4;
                        }
                        z = z2;
                    } else {
                        canvas = canvas2;
                        f = 2.0f;
                        z = false;
                    }
                    Canvas canvas5 = new Canvas(resultBitmap);
                    int i6 = 0;
                    while (i6 < 2) {
                        Canvas canvas6 = i6 == 0 ? canvas5 : canvas;
                        if (canvas6 != null && (i6 != 0 || !z)) {
                            canvas6.save();
                            canvas6.translate(position.x, position.y);
                            canvas6.scale(childAt.getScaleX(), childAt.getScaleY());
                            canvas6.rotate(childAt.getRotation());
                            canvas6.translate((-entityView.getWidth()) / f, (-entityView.getHeight()) / f);
                            if ((childAt instanceof TextPaintView) && childAt.getHeight() > 0 && childAt.getWidth() > 0) {
                                Bitmap bitmapCreateBitmap = Bitmaps.createBitmap(childAt.getWidth(), childAt.getHeight(), Bitmap.Config.ARGB_8888);
                                Canvas canvas7 = new Canvas(bitmapCreateBitmap);
                                childAt.draw(canvas7);
                                canvas6.drawBitmap(bitmapCreateBitmap, (Rect) null, new Rect(0, 0, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight()), (Paint) null);
                                try {
                                    canvas7.setBitmap(null);
                                } catch (Exception e) {
                                    FileLog.m992e(e);
                                }
                                bitmapCreateBitmap.recycle();
                            } else {
                                childAt.draw(canvas6);
                            }
                            canvas6.restore();
                        }
                        i6++;
                    }
                    i = 0;
                    canvas2 = canvas;
                    i4++;
                    lPhotoPaintView = this;
                    i3 = i;
                    arrayList2 = arrayList;
                } else {
                    canvas = canvas2;
                }
                canvas2 = canvas;
                i = 0;
                i4++;
                lPhotoPaintView = this;
                i3 = i;
                arrayList2 = arrayList;
            }
        }
        return resultBitmap;
    }

    public void onCleanupEntities() {
        this.entitiesView.removeAllViews();
    }

    public long getLcm() {
        return this.lcm.longValue();
    }

    public View getDoneView() {
        return this.doneButton;
    }

    public View getCancelView() {
        return this.cancelButton;
    }

    public void maybeShowDismissalAlert(PhotoViewer photoViewer, Activity activity, final Runnable runnable) {
        if (this.isColorListShown) {
            showColorList(false);
            return;
        }
        if (this.emojiViewVisible) {
            hideEmojiPopup(true);
            return;
        }
        if (this.editingText && this.currentEntityView != null) {
            selectEntity(null);
            return;
        }
        if (!hasChanges()) {
            runnable.run();
            return;
        }
        if (activity == null) {
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(activity, this.resourcesProvider);
        builder.setMessage(LocaleController.getString(C2665R.string.PhotoEditorDiscardAlert));
        builder.setTitle(LocaleController.getString(C2665R.string.DiscardChanges));
        builder.setPositiveButton(LocaleController.getString(C2665R.string.PassportDiscard), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda19
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                runnable.run();
            }
        });
        builder.setNegativeButton(LocaleController.getString(C2665R.string.Cancel), null);
        photoViewer.showAlertDialog(builder);
    }

    public boolean onTouch(MotionEvent motionEvent) {
        if (this.currentEntityView != null) {
            selectEntity(null);
        }
        float x = ((motionEvent.getX() - this.renderView.getTranslationX()) - (getMeasuredWidth() / 2.0f)) / this.renderView.getScaleX();
        float y = ((((motionEvent.getY() - this.renderView.getTranslationY()) - (getMeasuredHeight() / 2.0f)) + AndroidUtilities.dp(32.0f)) - ((getAdditionalTop() - getAdditionalBottom()) / 2.0f)) / this.renderView.getScaleY();
        double d = x;
        double radians = (float) Math.toRadians(-this.renderView.getRotation());
        double d2 = y;
        float fCos = ((float) ((Math.cos(radians) * d) - (Math.sin(radians) * d2))) + (this.renderView.getMeasuredWidth() / 2.0f);
        float fSin = ((float) ((d * Math.sin(radians)) + (d2 * Math.cos(radians)))) + (this.renderView.getMeasuredHeight() / 2.0f);
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        motionEventObtain.setLocation(fCos, fSin);
        this.renderView.onTouch(motionEventObtain);
        motionEventObtain.recycle();
        return true;
    }

    public int getAdditionalTop() {
        return AndroidUtilities.dp(48.0f);
    }

    public int getAdditionalBottom() {
        return AndroidUtilities.dp(24.0f);
    }

    public RenderView getRenderView() {
        return this.renderView;
    }

    public void setTransform(float f, float f2, float f3, float f4, float f5) {
        View view;
        float f6;
        float f7;
        float f8;
        float f9;
        float f10;
        this.scale = f;
        this.imageWidth = f4;
        this.imageHeight = f5;
        this.inputTransformX = f2;
        this.inputTransformY = f3;
        this.transformX = f2;
        float f11 = f3 + this.panTranslationY;
        this.transformY = f11;
        int i = 0;
        while (i < 4) {
            if (i == 0) {
                view = this.entitiesView;
            } else if (i == 1) {
                view = this.selectionContainerView;
            } else if (i == 2) {
                view = this.renderView;
            } else {
                view = this.renderInputView;
            }
            MediaController.CropState cropState = this.currentCropState;
            if (cropState != null) {
                float f12 = cropState.cropScale * 1.0f;
                int measuredWidth = view.getMeasuredWidth();
                int measuredHeight = view.getMeasuredHeight();
                if (measuredWidth == 0 || measuredHeight == 0) {
                    return;
                }
                int i2 = this.currentCropState.transformRotation;
                if (i2 == 90 || i2 == 270) {
                    measuredHeight = measuredWidth;
                    measuredWidth = measuredHeight;
                }
                float fMax = Math.max(f4 / ((int) (r12.cropPw * r10)), f5 / ((int) (r12.cropPh * r11)));
                f7 = f12 * fMax;
                MediaController.CropState cropState2 = this.currentCropState;
                float f13 = cropState2.cropPx * measuredWidth * f * fMax;
                float f14 = cropState2.cropScale;
                f9 = (f13 * f14) + f2;
                f6 = 1.0f;
                f10 = (cropState2.cropPy * measuredHeight * f * fMax * f14) + f11;
                f8 = cropState2.cropRotate + i2;
            } else {
                f6 = 1.0f;
                f7 = i == 0 ? this.baseScale * 1.0f : 1.0f;
                f8 = 0.0f;
                f9 = f2;
                f10 = f11;
            }
            float f15 = f10 + ((-this.emojiPadding) / 2.0f);
            float f16 = f7 * f;
            if (Float.isNaN(f16)) {
                f16 = f6;
            }
            view.setScaleX(f16);
            view.setScaleY(f16);
            view.setTranslationX(f9);
            view.setTranslationY(f15);
            view.setRotation(f8);
            view.invalidate();
            i++;
        }
        updateEntitiesSelections();
        invalidate();
    }

    public void updateEntitiesSelections() {
        for (int i = 0; i < this.entitiesView.getChildCount(); i++) {
            View childAt = this.entitiesView.getChildAt(i);
            if (childAt == this.currentEntityView || ((childAt instanceof EntityView) && ((EntityView) childAt).isSelectedProgress())) {
                ((EntityView) childAt).updateSelectionView();
            }
        }
    }

    public List<TLRPC.InputDocument> getMasks() {
        AnimatedEmojiSpan[] animatedEmojiSpanArr;
        int childCount = this.entitiesView.getChildCount();
        ArrayList arrayList = null;
        for (int i = 0; i < childCount; i++) {
            View childAt = this.entitiesView.getChildAt(i);
            if (childAt instanceof StickerView) {
                TLRPC.Document sticker = ((StickerView) childAt).getSticker();
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                TLRPC.TL_inputDocument tL_inputDocument = new TLRPC.TL_inputDocument();
                tL_inputDocument.id = sticker.id;
                tL_inputDocument.access_hash = sticker.access_hash;
                byte[] bArr = sticker.file_reference;
                tL_inputDocument.file_reference = bArr;
                if (bArr == null) {
                    tL_inputDocument.file_reference = new byte[0];
                }
                arrayList.add(tL_inputDocument);
            } else if (childAt instanceof TextPaintView) {
                CharSequence text = ((TextPaintView) childAt).getText();
                if ((text instanceof Spanned) && (animatedEmojiSpanArr = (AnimatedEmojiSpan[]) ((Spanned) text).getSpans(0, text.length(), AnimatedEmojiSpan.class)) != null) {
                    for (AnimatedEmojiSpan animatedEmojiSpan : animatedEmojiSpanArr) {
                        if (animatedEmojiSpan != null) {
                            TLRPC.Document documentFindDocument = animatedEmojiSpan.document;
                            if (documentFindDocument == null) {
                                documentFindDocument = AnimatedEmojiDrawable.findDocument(this.currentAccount, animatedEmojiSpan.getDocumentId());
                            }
                            if (documentFindDocument != null) {
                                if (arrayList == null) {
                                    arrayList = new ArrayList();
                                }
                                TLRPC.TL_inputDocument tL_inputDocument2 = new TLRPC.TL_inputDocument();
                                tL_inputDocument2.id = documentFindDocument.id;
                                tL_inputDocument2.access_hash = documentFindDocument.access_hash;
                                byte[] bArr2 = documentFindDocument.file_reference;
                                tL_inputDocument2.file_reference = bArr2;
                                if (bArr2 == null) {
                                    tL_inputDocument2.file_reference = new byte[0];
                                }
                                arrayList.add(tL_inputDocument2);
                            }
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    @Override // org.telegram.ui.Components.Paint.Views.PaintToolsView.Delegate
    public void onBrushSelected(Brush brush) {
        if ((brush instanceof Brush.Blurer) || (brush instanceof Brush.Eraser)) {
            this.weightChooserView.setMinMax(0.4f, 1.75f);
        } else {
            this.weightChooserView.setMinMax(0.05f, 1.0f);
        }
        this.weightChooserView.setDrawCenter(!(brush instanceof Brush.Shape));
        if (this.renderView.getCurrentBrush() instanceof Brush.Shape) {
            this.ignoreToolChangeAnimationOnce = true;
        }
        this.renderView.setBrush(brush);
        Swatch swatch = this.colorSwatch;
        int i = swatch.color;
        swatch.color = PersistColorPalette.getInstance(this.currentAccount).getCurrentColor();
        this.colorSwatch.brushWeight = this.weightDefaultValueOverride.get();
        setCurrentSwatch(this.colorSwatch, true, Integer.valueOf(i));
        this.renderInputView.invalidate();
    }

    @Override // org.telegram.ui.Components.Paint.Views.PaintTextOptionsView.Delegate
    public void onTypefaceButtonClicked() {
        showTypefaceMenu(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showTypefaceMenu(final boolean z) {
        if (this.isTypefaceMenuShown != z) {
            this.isTypefaceMenuShown = z;
            SpringAnimation springAnimation = this.typefaceMenuTransformAnimation;
            if (springAnimation != null) {
                springAnimation.cancel();
            }
            SpringAnimation springAnimation2 = new SpringAnimation(new FloatValueHolder(z ? 0.0f : 1000.0f));
            this.typefaceMenuTransformAnimation = springAnimation2;
            springAnimation2.setSpring(new SpringForce().setFinalPosition(z ? 1000.0f : 0.0f).setStiffness(1250.0f).setDampingRatio(1.0f));
            if (z) {
                this.typefaceListView.setAlpha(0.0f);
                this.typefaceListView.setVisibility(0);
            }
            this.typefaceMenuTransformAnimation.addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda33
                @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationUpdateListener
                public final void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f, float f2) {
                    this.f$0.lambda$showTypefaceMenu$27(dynamicAnimation, f, f2);
                }
            });
            this.typefaceMenuTransformAnimation.addEndListener(new DynamicAnimation.OnAnimationEndListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda34
                @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationEndListener
                public final void onAnimationEnd(DynamicAnimation dynamicAnimation, boolean z2, float f, float f2) {
                    this.f$0.lambda$showTypefaceMenu$28(z, dynamicAnimation, z2, f, f2);
                }
            });
            this.typefaceMenuTransformAnimation.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showTypefaceMenu$27(DynamicAnimation dynamicAnimation, float f, float f2) {
        float f3 = f / 1000.0f;
        this.typefaceMenuTransformProgress = f3;
        this.typefaceListView.setAlpha(f3);
        this.typefaceListView.invalidate();
        this.overlayLayout.invalidate();
        this.textOptionsView.getTypefaceCell().setAlpha(1.0f - this.typefaceMenuTransformProgress);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showTypefaceMenu$28(boolean z, DynamicAnimation dynamicAnimation, boolean z2, float f, float f2) {
        if (dynamicAnimation == this.typefaceMenuTransformAnimation) {
            this.typefaceMenuTransformAnimation = null;
            if (!z) {
                this.typefaceListView.setVisibility(8);
            }
            this.typefaceListView.setMaskProvider(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"NotifyDataSetChanged"})
    public void showColorList(final boolean z) {
        if (this.isColorListShown != z) {
            this.isColorListShown = z;
            SpringAnimation springAnimation = this.toolsTransformAnimation;
            if (springAnimation != null) {
                springAnimation.cancel();
            }
            SpringAnimation springAnimation2 = new SpringAnimation(new FloatValueHolder(z ? 0.0f : 1000.0f));
            this.toolsTransformAnimation = springAnimation2;
            springAnimation2.setSpring(new SpringForce().setFinalPosition(z ? 1000.0f : 0.0f).setStiffness(1250.0f).setDampingRatio(1.0f));
            final boolean[] zArr = {this.keyboardVisible || this.emojiViewVisible};
            final float translationY = this.bottomLayout.getTranslationY();
            final ViewGroup barView = getBarView();
            this.toolsTransformAnimation.addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda3
                @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationUpdateListener
                public final void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f, float f2) {
                    this.f$0.lambda$showColorList$29(barView, z, zArr, translationY, dynamicAnimation, f, f2);
                }
            });
            this.toolsTransformAnimation.addEndListener(new DynamicAnimation.OnAnimationEndListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda4
                @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationEndListener
                public final void onAnimationEnd(DynamicAnimation dynamicAnimation, boolean z2, float f, float f2) {
                    this.f$0.lambda$showColorList$30(z, dynamicAnimation, z2, f, f2);
                }
            });
            this.toolsTransformAnimation.start();
            if (z) {
                this.colorsListView.setVisibility(0);
                this.colorsListView.setSelectedColorIndex(PersistColorPalette.getInstance(this.currentAccount).getCurrentColorPosition());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showColorList$29(View view, boolean z, boolean[] zArr, float f, DynamicAnimation dynamicAnimation, float f2, float f3) {
        float f4 = f2 / 1000.0f;
        this.toolsTransformProgress = f4;
        float f5 = ((1.0f - f4) * 0.4f) + 0.6f;
        view.setScaleX(f5);
        view.setScaleY(f5);
        view.setTranslationY((AndroidUtilities.dp(16.0f) * Math.min(this.toolsTransformProgress, 0.25f)) / 0.25f);
        view.setAlpha(1.0f - (Math.min(this.toolsTransformProgress, 0.25f) / 0.25f));
        this.colorsListView.setProgress(this.toolsTransformProgress, z);
        this.doneButton.setProgress(this.toolsTransformProgress);
        this.cancelButton.setProgress(this.toolsTransformProgress);
        this.tabsLayout.setTranslationY(AndroidUtilities.dp(32.0f) * this.toolsTransformProgress);
        if (zArr[0]) {
            float f6 = this.toolsTransformProgress;
            if (!z) {
                f6 = 1.0f - f6;
            }
            this.bottomLayout.setTranslationY(f - ((AndroidUtilities.dp(40.0f) * f6) * (z ? 1 : -1)));
        }
        this.bottomLayout.invalidate();
        if (view == this.textOptionsView) {
            this.overlayLayout.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showColorList$30(boolean z, DynamicAnimation dynamicAnimation, boolean z2, float f, float f2) {
        if (dynamicAnimation == this.toolsTransformAnimation) {
            this.toolsTransformAnimation = null;
            if (z) {
                return;
            }
            this.colorsListView.setVisibility(8);
            PersistColorPalette.getInstance(this.currentAccount).saveColors();
            this.colorsListView.getAdapter().notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCurrentSwatch(Swatch swatch, boolean z) {
        setCurrentSwatch(swatch, z, null);
    }

    private void setCurrentSwatch(Swatch swatch, boolean z, final Integer num) {
        Swatch swatch2 = this.colorSwatch;
        if (swatch2 != swatch) {
            swatch2.color = swatch.color;
            swatch2.colorLocation = swatch.colorLocation;
            swatch2.brushWeight = swatch.brushWeight;
            PersistColorPalette.getInstance(this.currentAccount).selectColor(swatch.color);
            PersistColorPalette.getInstance(this.currentAccount).setCurrentWeight(swatch.brushWeight);
        }
        this.renderView.setColor(swatch.color);
        this.renderView.setBrushSize(swatch.brushWeight);
        if (z) {
            final int i = this.colorSwatch.color;
            if (num != null && num.intValue() != i) {
                ValueAnimator duration = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(150L);
                duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda23
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        this.f$0.lambda$setCurrentSwatch$31(num, i, valueAnimator);
                    }
                });
                duration.start();
            } else {
                FrameLayout frameLayout = this.bottomLayout;
                if (frameLayout != null) {
                    frameLayout.invalidate();
                }
            }
        }
        EntityView entityView = this.currentEntityView;
        if (entityView instanceof TextPaintView) {
            ((TextPaintView) entityView).setSwatch(new Swatch(swatch.color, swatch.colorLocation, swatch.brushWeight));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setCurrentSwatch$31(Integer num, int i, ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.colorSwatch.color = ColorUtils.blendARGB(num.intValue(), i, fFloatValue);
        FrameLayout frameLayout = this.bottomLayout;
        if (frameLayout != null) {
            frameLayout.invalidate();
        }
    }

    public boolean onBackPressed() {
        if (this.isColorListShown) {
            showColorList(false);
            return true;
        }
        if (this.emojiViewVisible) {
            hideEmojiPopup(true);
            return true;
        }
        if (!this.editingText) {
            return false;
        }
        selectEntity(null);
        return true;
    }

    @Override // org.telegram.ui.Components.Paint.Views.PaintToolsView.Delegate, org.telegram.ui.Components.Paint.Views.PaintTextOptionsView.Delegate
    public void onColorPickerSelected() {
        showColorList(true);
    }

    @Override // org.telegram.ui.Components.Paint.Views.PaintTextOptionsView.Delegate
    public void onTextOutlineSelected(View view) {
        setTextType((this.selectedTextType + 1) % 5);
    }

    private PopupButton buttonForPopup(String str, int i, boolean z, final Runnable runnable) {
        PopupButton popupButton = new PopupButton(getContext());
        popupButton.setIcon(i);
        popupButton.setText(str);
        popupButton.setSelected(z);
        if (runnable != null) {
            popupButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda50
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    runnable.run();
                }
            });
        }
        return popupButton;
    }

    public class PopupButton extends LinearLayout {
        ImageView checkView;
        ImageView image2View;
        ValueAnimator imageSwitchAnimator;
        boolean imageSwitchFill;
        float imageSwitchT;
        ImageView imageView;
        FrameLayout imagesView;
        public TextView textView;

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            return true;
        }

        public PopupButton(Context context) {
            super(context);
            setOrientation(0);
            setBackground(Theme.getSelectorDrawable(Theme.getColor(Theme.key_listSelector, LPhotoPaintView.this.resourcesProvider), false));
            FrameLayout frameLayout = new FrameLayout(context) { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView.PopupButton.1
                Path path = new Path();

                @Override // android.view.ViewGroup
                public boolean drawChild(Canvas canvas, View view, long j) {
                    boolean z;
                    PopupButton popupButton = PopupButton.this;
                    if (popupButton.imageSwitchAnimator != null && (((z = popupButton.imageSwitchFill) && view == popupButton.image2View) || (!z && view == popupButton.imageView))) {
                        float measuredWidth = ((z ? popupButton.imageSwitchT : 1.0f - popupButton.imageSwitchT) * getMeasuredWidth()) / 2.0f;
                        canvas.save();
                        this.path.rewind();
                        this.path.addCircle(getMeasuredWidth() / 2.0f, getMeasuredHeight() / 2.0f, measuredWidth, Path.Direction.CW);
                        canvas.clipPath(this.path);
                        boolean zDrawChild = super.drawChild(canvas, view, j);
                        canvas.restore();
                        return zDrawChild;
                    }
                    return super.drawChild(canvas, view, j);
                }
            };
            this.imagesView = frameLayout;
            addView(frameLayout, LayoutHelper.createLinear(-2, -2, 19, 16, 0, 16, 0));
            ImageView imageView = new ImageView(context);
            this.imageView = imageView;
            ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER;
            imageView.setScaleType(scaleType);
            ImageView imageView2 = this.imageView;
            int i = Theme.key_actionBarDefaultSubmenuItem;
            imageView2.setColorFilter(LPhotoPaintView.this.getThemedColor(i));
            this.imagesView.addView(this.imageView, LayoutHelper.createFrame(-2, -2, 17));
            ImageView imageView3 = new ImageView(context);
            this.image2View = imageView3;
            imageView3.setScaleType(scaleType);
            this.image2View.setColorFilter(LPhotoPaintView.this.getThemedColor(i));
            this.image2View.setVisibility(8);
            this.imagesView.addView(this.image2View, LayoutHelper.createFrame(-2, -2, 17));
            TextView textView = new TextView(context);
            this.textView = textView;
            textView.setTextColor(LPhotoPaintView.this.getThemedColor(i));
            this.textView.setTextSize(1, 16.0f);
            addView(this.textView, LayoutHelper.createLinear(-2, -2, 19, 0, 0, 16, 0));
            ImageView imageView4 = new ImageView(context);
            this.checkView = imageView4;
            imageView4.setImageResource(C2665R.drawable.msg_text_check);
            this.checkView.setScaleType(scaleType);
            this.checkView.setColorFilter(new PorterDuffColorFilter(LPhotoPaintView.this.getThemedColor(Theme.key_radioBackgroundChecked), PorterDuff.Mode.MULTIPLY));
            this.checkView.setVisibility(8);
            addView(this.checkView, LayoutHelper.createLinear(50, -1));
        }

        @Override // android.view.View
        public void setSelected(boolean z) {
            this.checkView.setVisibility(z ? 0 : 8);
        }

        public void setText(CharSequence charSequence) {
            this.textView.setText(charSequence);
        }

        public void setIcon(int i) {
            setIcon(i, true, false);
        }

        public void setIcon(int i, final boolean z, boolean z2) {
            if (z2) {
                ValueAnimator valueAnimator = this.imageSwitchAnimator;
                if (valueAnimator != null) {
                    valueAnimator.cancel();
                    this.imageSwitchAnimator = null;
                    setIcon(i, false, false);
                    return;
                }
                this.imageSwitchFill = z;
                this.image2View.setImageResource(i);
                this.image2View.setVisibility(0);
                this.image2View.setAlpha(1.0f);
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
                this.imageSwitchAnimator = valueAnimatorOfFloat;
                valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$PopupButton$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        this.f$0.lambda$setIcon$0(z, valueAnimator2);
                    }
                });
                this.imageSwitchAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView.PopupButton.2
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        super.onAnimationEnd(animator);
                        PopupButton popupButton = PopupButton.this;
                        ImageView imageView = popupButton.imageView;
                        popupButton.imageView = popupButton.image2View;
                        popupButton.image2View = imageView;
                        imageView.bringToFront();
                        PopupButton.this.image2View.setVisibility(8);
                        PopupButton.this.imageSwitchAnimator = null;
                    }
                });
                this.imageSwitchAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
                this.imageSwitchAnimator.setDuration(420L);
                this.imageSwitchAnimator.start();
                return;
            }
            this.imageView.setImageResource(i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setIcon$0(boolean z, ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            this.imageSwitchT = fFloatValue;
            if (!z) {
                this.imageView.setAlpha(1.0f - fFloatValue);
            }
            this.imagesView.invalidate();
        }

        @Override // android.view.View
        public boolean performClick() {
            if (LPhotoPaintView.this.popupWindow != null && LPhotoPaintView.this.popupWindow.isShowing()) {
                LPhotoPaintView.this.popupWindow.dismiss(true);
            }
            return super.performClick();
        }
    }

    private void setTextType(int i) {
        this.selectedTextType = i;
        EntityView entityView = this.currentEntityView;
        if (entityView instanceof TextPaintView) {
            ((TextPaintView) entityView).setType(i);
        }
        PersistColorPalette.getInstance(this.currentAccount).setCurrentTextType(i);
        this.textOptionsView.setOutlineType(i);
    }

    @Override // org.telegram.ui.Components.Paint.Views.PaintTextOptionsView.Delegate
    public void onNewTextSelected() {
        if (this.keyboardVisible || this.emojiViewVisible) {
            onEmojiButtonClick();
        } else {
            createText(true);
        }
    }

    public void onTypefaceSelected(PaintTypeface paintTypeface) {
        PersistColorPalette.getInstance(this.currentAccount).setCurrentTypeface(paintTypeface.getKey());
        EntityView entityView = this.currentEntityView;
        if (entityView instanceof TextPaintView) {
            ((TextPaintView) entityView).setTypeface(paintTypeface);
        }
    }

    @Override // org.telegram.ui.Components.Paint.Views.PaintTextOptionsView.Delegate
    public void onTextAlignmentSelected(int i) {
        EntityView entityView = this.currentEntityView;
        if (entityView instanceof TextPaintView) {
            setTextAlignment((TextPaintView) entityView, i);
            PersistColorPalette.getInstance(this.currentAccount).setCurrentAlignment(i);
        }
    }

    private void setTextAlignment(TextPaintView textPaintView, int i) {
        textPaintView.setAlign(i);
        int i2 = 2;
        textPaintView.getEditText().setGravity(i != 1 ? i != 2 ? 19 : 21 : 17);
        if (i == 1) {
            i2 = 4;
        } else if (i == 2 ? !LocaleController.isRTL : LocaleController.isRTL) {
            i2 = 3;
        }
        textPaintView.getEditText().setTextAlignment(i2);
    }

    @Override // org.telegram.ui.Components.Paint.Views.PaintToolsView.Delegate
    public void onAddButtonPressed(View view) {
        showPopup(new Runnable() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda46
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onAddButtonPressed$35();
            }
        }, this, 53, 0, getHeight());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onAddButtonPressed$35() {
        boolean fillShapes = PersistColorPalette.getInstance(this.currentAccount).getFillShapes();
        for (int i = 0; i < Brush.Shape.SHAPES_LIST.size(); i++) {
            final Brush.Shape shape = Brush.Shape.SHAPES_LIST.get(i);
            final int filledIconRes = fillShapes ? shape.getFilledIconRes() : shape.getIconRes();
            PopupButton popupButtonButtonForPopup = buttonForPopup(shape.getShapeName(), filledIconRes, false, new Runnable() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda47
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onAddButtonPressed$33(shape, filledIconRes);
                }
            });
            popupButtonButtonForPopup.setOnLongClickListener(new View.OnLongClickListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda48
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    return this.f$0.lambda$onAddButtonPressed$34(view);
                }
            });
            this.popupLayout.addView((View) popupButtonButtonForPopup, LayoutHelper.createLinear(-1, 48));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onAddButtonPressed$33(Brush.Shape shape, int i) {
        if (this.renderView.getCurrentBrush() instanceof Brush.Shape) {
            this.ignoreToolChangeAnimationOnce = true;
        }
        onBrushSelected(shape);
        this.paintToolsView.animatePlusToIcon(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$onAddButtonPressed$34(View view) {
        if (this.popupLayout != null) {
            PersistColorPalette.getInstance(this.currentAccount).toggleFillShapes();
            boolean fillShapes = PersistColorPalette.getInstance(this.currentAccount).getFillShapes();
            for (int i = 0; i < this.popupLayout.getItemsCount(); i++) {
                View itemAt = this.popupLayout.getItemAt(i);
                if (itemAt instanceof PopupButton) {
                    Brush.Shape shape = Brush.Shape.SHAPES_LIST.get(i);
                    ((PopupButton) itemAt).setIcon(fillShapes ? shape.getFilledIconRes() : shape.getIconRes(), fillShapes, true);
                }
            }
        }
        return true;
    }

    private void showMenuForEntity(final EntityView entityView) {
        int[] centerLocationInWindow = getCenterLocationInWindow(entityView);
        showPopup(new Runnable() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$showMenuForEntity$41(entityView);
            }
        }, this, 51, centerLocationInWindow[0], centerLocationInWindow[1] - AndroidUtilities.dp(32.0f));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showMenuForEntity$36(EntityView entityView, View view) {
        lambda$registerRemovalUndo$45(entityView);
        ActionBarPopupWindow actionBarPopupWindow = this.popupWindow;
        if (actionBarPopupWindow == null || !actionBarPopupWindow.isShowing()) {
            return;
        }
        this.popupWindow.dismiss(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showMenuForEntity$37(View view) {
        editSelectedTextEntity();
        ActionBarPopupWindow actionBarPopupWindow = this.popupWindow;
        if (actionBarPopupWindow == null || !actionBarPopupWindow.isShowing()) {
            return;
        }
        this.popupWindow.dismiss(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
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
    public /* synthetic */ void lambda$showMenuForEntity$41(final EntityView entityView) {
        float f;
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(0);
        TextView textView = new TextView(getContext());
        int i = Theme.key_actionBarDefaultSubmenuItem;
        textView.setTextColor(getThemedColor(i));
        textView.setBackground(Theme.getSelectorDrawable(false));
        textView.setGravity(16);
        textView.setPadding(AndroidUtilities.dp(16.0f), 0, AndroidUtilities.dp(14.0f), 0);
        textView.setTextSize(1, 14.0f);
        textView.setTag(0);
        textView.setText(LocaleController.getString(C2665R.string.PaintDelete));
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        textView.setEllipsize(truncateAt);
        textView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda25
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$showMenuForEntity$36(entityView, view);
            }
        });
        linearLayout.addView(textView, LayoutHelper.createLinear(-2, 48));
        if (entityView instanceof TextPaintView) {
            TextView textView2 = new TextView(getContext());
            textView2.setTextColor(getThemedColor(i));
            textView2.setBackground(Theme.getSelectorDrawable(false));
            textView2.setGravity(16);
            textView2.setPadding(AndroidUtilities.dp(16.0f), 0, AndroidUtilities.dp(16.0f), 0);
            textView2.setTextSize(1, 14.0f);
            textView2.setEllipsize(truncateAt);
            textView2.setTag(1);
            textView2.setText(LocaleController.getString(C2665R.string.PaintEdit));
            textView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda26
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$showMenuForEntity$37(view);
                }
            });
            linearLayout.addView(textView2, LayoutHelper.createLinear(-2, 48));
        }
        if (entityView instanceof StickerView) {
            TextView textView3 = new TextView(getContext());
            textView3.setTextColor(getThemedColor(i));
            textView3.setBackgroundDrawable(Theme.getSelectorDrawable(false));
            textView3.setGravity(16);
            textView3.setEllipsize(truncateAt);
            textView3.setPadding(AndroidUtilities.dp(14.0f), 0, AndroidUtilities.dp(16.0f), 0);
            textView3.setTextSize(1, 14.0f);
            textView3.setTag(2);
            textView3.setText(LocaleController.getString(C2665R.string.Flip));
            textView3.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda27
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$showMenuForEntity$38(entityView, view);
                }
            });
            linearLayout.addView(textView3, LayoutHelper.createLinear(-2, 48));
        }
        boolean z = entityView instanceof PhotoView;
        if (z) {
            f = 16.0f;
        } else {
            TextView textView4 = new TextView(getContext());
            textView4.setTextColor(getThemedColor(i));
            textView4.setBackgroundDrawable(Theme.getSelectorDrawable(false));
            textView4.setGravity(16);
            textView4.setEllipsize(truncateAt);
            f = 16.0f;
            textView4.setPadding(AndroidUtilities.dp(14.0f), 0, AndroidUtilities.dp(16.0f), 0);
            textView4.setTextSize(1, 14.0f);
            textView4.setTag(2);
            textView4.setText(LocaleController.getString(C2665R.string.PaintDuplicate));
            textView4.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda28
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$showMenuForEntity$39(view);
                }
            });
            linearLayout.addView(textView4, LayoutHelper.createLinear(-2, 48));
        }
        if (z) {
            final PhotoView photoView = (PhotoView) entityView;
            if (photoView.hasSegmentedImage()) {
                TextView textView5 = new TextView(getContext());
                textView5.setTextColor(getThemedColor(i));
                textView5.setBackgroundDrawable(Theme.getSelectorDrawable(false));
                textView5.setGravity(16);
                textView5.setEllipsize(truncateAt);
                textView5.setPadding(AndroidUtilities.dp(14.0f), 0, AndroidUtilities.dp(f), 0);
                textView5.setTextSize(1, 14.0f);
                textView5.setTag(5);
                textView5.setText(LocaleController.getString(photoView.isSegmented() ? C2665R.string.SegmentationUndoCutOut : C2665R.string.SegmentationCutOut));
                textView5.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda29
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$showMenuForEntity$40(photoView, view);
                    }
                });
                linearLayout.addView(textView5, LayoutHelper.createLinear(-2, 44));
                photoView.highlightSegmented();
            }
        }
        this.popupLayout.addView(linearLayout);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) linearLayout.getLayoutParams();
        layoutParams.width = -2;
        layoutParams.height = -2;
        linearLayout.setLayoutParams(layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showMenuForEntity$38(EntityView entityView, View view) {
        ((StickerView) entityView).mirror(true);
        ActionBarPopupWindow actionBarPopupWindow = this.popupWindow;
        if (actionBarPopupWindow == null || !actionBarPopupWindow.isShowing()) {
            return;
        }
        this.popupWindow.dismiss(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showMenuForEntity$39(View view) {
        duplicateSelectedEntity();
        ActionBarPopupWindow actionBarPopupWindow = this.popupWindow;
        if (actionBarPopupWindow == null || !actionBarPopupWindow.isShowing()) {
            return;
        }
        this.popupWindow.dismiss(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showMenuForEntity$40(PhotoView photoView, View view) {
        photoView.toggleSegmented(true);
        if (photoView.isSegmented()) {
            onSwitchSegmentedAnimation(photoView);
        }
        ActionBarPopupWindow actionBarPopupWindow = this.popupWindow;
        if (actionBarPopupWindow == null || !actionBarPopupWindow.isShowing()) {
            return;
        }
        this.popupWindow.dismiss(true);
    }

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
    private void duplicateSelectedEntity() {
        EntityView entityView;
        EntityView entityView2 = this.currentEntityView;
        if (entityView2 == null) {
            return;
        }
        PointF pointFStartPositionRelativeToEntity = startPositionRelativeToEntity(entityView2);
        EntityView entityView3 = this.currentEntityView;
        if (entityView3 instanceof StickerView) {
            EntityView stickerView = new StickerView(getContext(), (StickerView) this.currentEntityView, pointFStartPositionRelativeToEntity);
            stickerView.setDelegate(this);
            this.entitiesView.addView(stickerView);
            entityView = stickerView;
        } else if (entityView3 instanceof TextPaintView) {
            TextPaintView textPaintView = new TextPaintView(getContext(), (TextPaintView) this.currentEntityView, pointFStartPositionRelativeToEntity);
            textPaintView.setDelegate(this);
            textPaintView.setMaxWidth((int) (getPaintingSize().width - 20.0f));
            this.entitiesView.addView(textPaintView, LayoutHelper.createFrame(-2, -2.0f));
            entityView = textPaintView;
        } else {
            entityView = null;
        }
        registerRemovalUndo(entityView);
        selectEntity(entityView);
    }

    private PointF startPositionRelativeToEntity(EntityView entityView) {
        MediaController.CropState cropState = this.currentCropState;
        float f = cropState != null ? 200.0f / cropState.cropScale : 200.0f;
        if (entityView != null) {
            PointF position = entityView.getPosition();
            return new PointF(position.x + f, position.y + f);
        }
        float f2 = cropState != null ? 100.0f / cropState.cropScale : 100.0f;
        PointF pointFCenterPositionForEntity = centerPositionForEntity();
        while (true) {
            boolean z = false;
            for (int i = 0; i < this.entitiesView.getChildCount(); i++) {
                View childAt = this.entitiesView.getChildAt(i);
                if (childAt instanceof EntityView) {
                    PointF position2 = ((EntityView) childAt).getPosition();
                    if (((float) Math.sqrt(Math.pow(position2.x - pointFCenterPositionForEntity.x, 2.0d) + Math.pow(position2.y - pointFCenterPositionForEntity.y, 2.0d))) < f2) {
                        z = true;
                    }
                }
            }
            if (!z) {
                return pointFCenterPositionForEntity;
            }
            pointFCenterPositionForEntity = new PointF(pointFCenterPositionForEntity.x + f, pointFCenterPositionForEntity.y + f);
        }
    }

    private void showPopup(Runnable runnable, View view, int i, int i2, int i3) {
        ActionBarPopupWindow actionBarPopupWindow = this.popupWindow;
        if (actionBarPopupWindow != null && actionBarPopupWindow.isShowing()) {
            this.popupWindow.dismiss();
            return;
        }
        if (this.popupLayout == null) {
            this.popupRect = new Rect();
            ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = new ActionBarPopupWindow.ActionBarPopupWindowLayout(getContext(), this.resourcesProvider);
            this.popupLayout = actionBarPopupWindowLayout;
            actionBarPopupWindowLayout.setAnimationEnabled(true);
            this.popupLayout.setBackgroundColor(-14145495);
            this.popupLayout.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda30
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view2, MotionEvent motionEvent) {
                    return this.f$0.lambda$showPopup$42(view2, motionEvent);
                }
            });
            this.popupLayout.setDispatchKeyEventListener(new ActionBarPopupWindow.OnDispatchKeyEventListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda31
                @Override // org.telegram.ui.ActionBar.ActionBarPopupWindow.OnDispatchKeyEventListener
                public final void onDispatchKeyEvent(KeyEvent keyEvent) {
                    this.f$0.lambda$showPopup$43(keyEvent);
                }
            });
            this.popupLayout.setShownFromBottom(true);
        }
        this.popupLayout.removeInnerViews();
        runnable.run();
        if (this.popupWindow == null) {
            ActionBarPopupWindow actionBarPopupWindow2 = new ActionBarPopupWindow(this.popupLayout, -2, -2);
            this.popupWindow = actionBarPopupWindow2;
            actionBarPopupWindow2.setAnimationEnabled(true);
            this.popupWindow.setAnimationStyle(C2665R.style.PopupAnimation);
            this.popupWindow.setOutsideTouchable(true);
            this.popupWindow.setClippingEnabled(true);
            this.popupWindow.setInputMethodMode(2);
            this.popupWindow.setSoftInputMode(0);
            this.popupWindow.getContentView().setFocusableInTouchMode(true);
            this.popupWindow.setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda32
                @Override // android.widget.PopupWindow.OnDismissListener
                public final void onDismiss() {
                    this.f$0.lambda$showPopup$44();
                }
            });
        }
        this.popupLayout.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(1000.0f), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(1000.0f), Integer.MIN_VALUE));
        this.popupWindow.setFocusable(true);
        if ((i & 48) != 0) {
            i2 -= this.popupLayout.getMeasuredWidth() / 2;
            i3 -= this.popupLayout.getMeasuredHeight();
        }
        this.popupWindow.showAtLocation(view, i, i2, i3);
        ActionBarPopupWindow.startAnimation(this.popupLayout);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$showPopup$42(View view, MotionEvent motionEvent) {
        ActionBarPopupWindow actionBarPopupWindow;
        if (motionEvent.getActionMasked() != 0 || (actionBarPopupWindow = this.popupWindow) == null || !actionBarPopupWindow.isShowing()) {
            return false;
        }
        view.getHitRect(this.popupRect);
        if (this.popupRect.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
            return false;
        }
        this.popupWindow.dismiss();
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showPopup$43(KeyEvent keyEvent) {
        ActionBarPopupWindow actionBarPopupWindow;
        if (keyEvent.getKeyCode() == 4 && keyEvent.getRepeatCount() == 0 && (actionBarPopupWindow = this.popupWindow) != null && actionBarPopupWindow.isShowing()) {
            this.popupWindow.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showPopup$44() {
        this.popupLayout.removeInnerViews();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }

    @Override // org.telegram.ui.Components.Paint.Views.PaintToolsView.Delegate
    public PersistColorPalette onGetPalette() {
        return PersistColorPalette.getInstance(this.currentAccount);
    }

    private Size baseStickerSize() {
        float fFloor = (float) Math.floor(((double) getPaintingSize().width) * 0.5d);
        return new Size(fFloor, fFloor);
    }

    private PointF centerPositionForEntity() {
        Size paintingSize = getPaintingSize();
        float f = paintingSize.width / 2.0f;
        float f2 = paintingSize.height / 2.0f;
        if (this.currentCropState != null) {
            double radians = (float) Math.toRadians(-(r2.transformRotation + r2.cropRotate));
            float fCos = (float) ((((double) this.currentCropState.cropPx) * Math.cos(radians)) - (((double) this.currentCropState.cropPy) * Math.sin(radians)));
            float fSin = (float) ((((double) this.currentCropState.cropPx) * Math.sin(radians)) + (((double) this.currentCropState.cropPy) * Math.cos(radians)));
            f -= fCos * paintingSize.width;
            f2 -= fSin * paintingSize.height;
        }
        return new PointF(f, f2);
    }

    private StickerPosition calculateStickerPosition(TLRPC.Document document) {
        TLRPC.TL_maskCoords tL_maskCoords;
        float f;
        ArrayList<PhotoFace> arrayList;
        int i;
        PhotoFace randomFaceWithVacantAnchor;
        int i2 = 0;
        while (true) {
            if (i2 >= document.attributes.size()) {
                tL_maskCoords = null;
                break;
            }
            TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i2);
            if (documentAttribute instanceof TLRPC.TL_documentAttributeSticker) {
                tL_maskCoords = documentAttribute.mask_coords;
                break;
            }
            i2++;
        }
        MediaController.CropState cropState = this.currentCropState;
        float f2 = 0.75f;
        if (cropState != null) {
            f = -(cropState.transformRotation + cropState.cropRotate);
            f2 = 0.75f / cropState.cropScale;
        } else {
            f = 0.0f;
        }
        StickerPosition stickerPosition = new StickerPosition(centerPositionForEntity(), f2, f);
        if (tL_maskCoords == null || (arrayList = this.faces) == null || arrayList.size() == 0 || (randomFaceWithVacantAnchor = getRandomFaceWithVacantAnchor((i = tL_maskCoords.f1024n), document.id, tL_maskCoords)) == null) {
            return stickerPosition;
        }
        PointF pointForAnchor = randomFaceWithVacantAnchor.getPointForAnchor(i);
        float widthForAnchor = randomFaceWithVacantAnchor.getWidthForAnchor(i);
        float angle = randomFaceWithVacantAnchor.getAngle();
        float f3 = (float) (((double) (widthForAnchor / baseStickerSize().width)) * tL_maskCoords.zoom);
        double radians = (float) Math.toRadians(angle);
        double d = 1.5707963267948966d - radians;
        double d2 = widthForAnchor;
        double d3 = radians + 1.5707963267948966d;
        return new StickerPosition(new PointF(pointForAnchor.x + ((float) (Math.sin(d) * d2 * tL_maskCoords.f1025x)) + ((float) (Math.cos(d3) * d2 * tL_maskCoords.f1026y)), pointForAnchor.y + ((float) (Math.cos(d) * d2 * tL_maskCoords.f1025x)) + ((float) (Math.sin(d3) * d2 * tL_maskCoords.f1026y))), f3, angle);
    }

    private PhotoFace getRandomFaceWithVacantAnchor(int i, long j, TLRPC.TL_maskCoords tL_maskCoords) {
        if (i >= 0 && i <= 3 && !this.faces.isEmpty()) {
            int size = this.faces.size();
            int iNextInt = Utilities.random.nextInt(size);
            int i2 = size;
            while (i2 > 0) {
                PhotoFace photoFace = this.faces.get(iNextInt);
                LPhotoPaintView lPhotoPaintView = this;
                int i3 = i;
                long j2 = j;
                TLRPC.TL_maskCoords tL_maskCoords2 = tL_maskCoords;
                if (!lPhotoPaintView.isFaceAnchorOccupied(photoFace, i3, j2, tL_maskCoords2)) {
                    return photoFace;
                }
                iNextInt = (iNextInt + 1) % size;
                i2--;
                this = lPhotoPaintView;
                i = i3;
                j = j2;
                tL_maskCoords = tL_maskCoords2;
            }
        }
        return null;
    }

    private boolean isFaceAnchorOccupied(PhotoFace photoFace, int i, long j, TLRPC.TL_maskCoords tL_maskCoords) {
        if (photoFace.getPointForAnchor(i) == null) {
            return true;
        }
        float widthForAnchor = photoFace.getWidthForAnchor(0) * 1.1f;
        for (int i2 = 0; i2 < this.entitiesView.getChildCount(); i2++) {
            View childAt = this.entitiesView.getChildAt(i2);
            if (childAt instanceof StickerView) {
                StickerView stickerView = (StickerView) childAt;
                if (stickerView.getAnchor() != i) {
                    continue;
                } else {
                    PointF position = stickerView.getPosition();
                    float fHypot = (float) Math.hypot(position.x - r14.x, position.y - r14.y);
                    if ((j == stickerView.getSticker().id || this.faces.size() > 1) && fHypot < widthForAnchor) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    private StickerView createSticker(Object obj, TLRPC.Document document, boolean z) {
        StickerPosition stickerPositionCalculateStickerPosition = calculateStickerPosition(document);
        StickerView stickerView = new StickerView(getContext(), stickerPositionCalculateStickerPosition.position, stickerPositionCalculateStickerPosition.angle, stickerPositionCalculateStickerPosition.scale, baseStickerSize(), document, obj) { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView.17
            @Override // org.telegram.ui.Components.Paint.Views.StickerView
            public void didSetAnimatedSticker(RLottieDrawable rLottieDrawable) {
                LPhotoPaintView.this.didSetAnimatedSticker(rLottieDrawable);
            }
        };
        if (MessageObject.isTextColorEmoji(document)) {
            stickerView.centerImage.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_IN));
        }
        stickerView.centerImage.setLayerNum(12);
        if (stickerPositionCalculateStickerPosition.position.x == this.entitiesView.getMeasuredWidth() / 2.0f) {
            stickerView.setStickyX(2);
        }
        if (stickerPositionCalculateStickerPosition.position.y == this.entitiesView.getMeasuredHeight() / 2.0f) {
            stickerView.setStickyY(2);
        }
        stickerView.setDelegate(this);
        this.entitiesView.addView(stickerView);
        if (z) {
            registerRemovalUndo(stickerView);
            selectEntity(stickerView);
        }
        return stickerView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: removeEntity, reason: merged with bridge method [inline-methods] */
    public void lambda$registerRemovalUndo$45(EntityView entityView) {
        EntityView entityView2 = this.currentEntityView;
        if (entityView == entityView2 && entityView2 != null) {
            entityView2.deselect();
            this.currentEntityView = null;
            if (entityView instanceof TextPaintView) {
                ValueAnimator valueAnimator = this.tabsSelectionAnimator;
                if (valueAnimator != null && this.tabsNewSelectedIndex != 0) {
                    valueAnimator.cancel();
                }
                switchTab(0);
            }
        }
        this.entitiesView.removeView(entityView);
        if (entityView != null) {
            this.undoStore.unregisterUndo(entityView.getUUID());
        }
        this.weightChooserView.setValueOverride(this.weightDefaultValueOverride);
        this.weightChooserView.setShowPreview(true);
        this.colorSwatch.brushWeight = this.weightDefaultValueOverride.get();
        setCurrentSwatch(this.colorSwatch, true);
    }

    private void registerRemovalUndo(final EntityView entityView) {
        if (entityView == null) {
            return;
        }
        this.undoStore.registerUndo(entityView.getUUID(), new Runnable() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda39
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$registerRemovalUndo$45(entityView);
            }
        });
    }

    @Override // org.telegram.ui.Components.Paint.Views.EntityView.EntityViewDelegate
    public boolean onEntitySelected(EntityView entityView) {
        return selectEntity(entityView);
    }

    @Override // org.telegram.ui.Components.Paint.Views.EntityView.EntityViewDelegate
    public boolean onEntityLongClicked(EntityView entityView) {
        showMenuForEntity(entityView);
        return true;
    }

    @Override // org.telegram.ui.Components.Paint.Views.EntityView.EntityViewDelegate
    public void getTransformedTouch(float f, float f2, float[] fArr) {
        Point point = AndroidUtilities.displaySize;
        float f3 = f2 - (point.y / 2.0f);
        double d = f - (point.x / 2.0f);
        double radians = (float) Math.toRadians(-this.entitiesView.getRotation());
        double d2 = f3;
        fArr[0] = ((float) ((Math.cos(radians) * d) - (Math.sin(radians) * d2))) + (AndroidUtilities.displaySize.x / 2.0f);
        fArr[1] = ((float) ((d * Math.sin(radians)) + (d2 * Math.cos(radians)))) + (AndroidUtilities.displaySize.y / 2.0f);
    }

    @Override // org.telegram.ui.Components.Paint.Views.EntityView.EntityViewDelegate
    public int[] getCenterLocation(EntityView entityView) {
        return getCenterLocationInWindow(entityView);
    }

    private int[] getCenterLocationInWindow(View view) {
        this.position[0] = view.getWidth() / 2.0f;
        this.position[1] = view.getHeight() / 2.0f;
        view.getMatrix().mapPoints(this.position);
        float[] fArr = this.position;
        fArr[0] = fArr[0] + view.getLeft();
        float[] fArr2 = this.position;
        fArr2[1] = fArr2[1] + view.getTop();
        Object parent = view.getParent();
        while (parent instanceof View) {
            View view2 = (View) parent;
            float[] fArr3 = this.position;
            fArr3[0] = fArr3[0] - view2.getScrollX();
            float[] fArr4 = this.position;
            fArr4[1] = fArr4[1] - view2.getScrollY();
            view2.getMatrix().mapPoints(this.position);
            float[] fArr5 = this.position;
            fArr5[0] = fArr5[0] + view2.getLeft();
            float[] fArr6 = this.position;
            fArr6[1] = fArr6[1] + view2.getTop();
            parent = view2.getParent();
        }
        this.pos2[0] = Math.round(this.position[0]);
        this.pos2[1] = Math.round(this.position[1]);
        float f = this.pos2[0];
        Point point = AndroidUtilities.displaySize;
        double d = f - (point.x / 2.0f);
        double radians = (float) Math.toRadians(-this.entitiesView.getRotation());
        double d2 = r14[1] - (point.y / 2.0f);
        this.pos2[0] = ((int) ((Math.cos(radians) * d) - (Math.sin(radians) * d2))) + (AndroidUtilities.displaySize.x / 2);
        this.pos2[1] = ((int) ((d * Math.sin(radians)) + (d2 * Math.cos(radians)))) + (AndroidUtilities.displaySize.y / 2);
        return this.pos2;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // org.telegram.ui.Components.Paint.Views.EntityView.EntityViewDelegate
    public boolean allowInteraction(EntityView entityView) {
        return !this.editingText;
    }

    public float getCropRotation() {
        MediaController.CropState cropState = this.currentCropState;
        if (cropState != null) {
            return cropState.cropRotate + cropState.transformRotation;
        }
        return 0.0f;
    }

    public static class StickerPosition {
        private float angle;
        private PointF position;
        private float scale;

        public StickerPosition(PointF pointF, float f, float f2) {
            this.position = pointF;
            this.scale = f;
            this.angle = f2;
        }
    }

    public void onEmojiButtonClick() {
        boolean z = this.emojiViewVisible;
        if (z && (this.currentEntityView instanceof TextPaintView)) {
            this.bottomPanelIgnoreOnce = true;
        }
        if (z) {
            onEmojiViewCloseByClick();
        }
        showEmojiPopup(1 ^ (this.emojiViewVisible ? 1 : 0));
        if (z) {
            EntityView entityView = this.currentEntityView;
            if (entityView instanceof TextPaintView) {
                AndroidUtilities.showKeyboard(((TextPaintView) entityView).getEditText());
            }
        }
    }

    private void showEmojiPopup(int i) {
        this.bottomPanelIgnoreOnce = false;
        if (i == 1) {
            EmojiView emojiView = this.emojiView;
            boolean z = emojiView != null && emojiView.getVisibility() == 0;
            createEmojiView();
            this.emojiView.setVisibility(0);
            this.emojiViewWasVisible = this.emojiViewVisible;
            this.emojiViewVisible = true;
            EmojiView emojiView2 = this.emojiView;
            if (this.keyboardHeight <= 0) {
                if (AndroidUtilities.isTablet()) {
                    this.keyboardHeight = AndroidUtilities.dp(150.0f);
                } else {
                    this.keyboardHeight = MessagesController.getGlobalEmojiSettings().getInt("kbd_height", AndroidUtilities.dp(200.0f));
                }
            }
            if (this.keyboardHeightLand <= 0) {
                if (AndroidUtilities.isTablet()) {
                    this.keyboardHeightLand = AndroidUtilities.dp(150.0f);
                } else {
                    this.keyboardHeightLand = MessagesController.getGlobalEmojiSettings().getInt("kbd_height_land3", AndroidUtilities.dp(200.0f));
                }
            }
            Point point = AndroidUtilities.displaySize;
            int i2 = point.x > point.y ? this.keyboardHeightLand : this.keyboardHeight;
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) emojiView2.getLayoutParams();
            layoutParams.height = i2;
            emojiView2.setLayoutParams(layoutParams);
            if (!AndroidUtilities.isInMultiwindow && !AndroidUtilities.isTablet()) {
                EntityView entityView = this.currentEntityView;
                if (entityView instanceof TextPaintView) {
                    AndroidUtilities.hideKeyboard(((TextPaintView) entityView).getEditText());
                }
            }
            this.emojiWasPadding = i2;
            this.emojiPadding = i2;
            requestLayout();
            updateKeyboard();
            ChatActivityEnterViewAnimatedIconView emojiButton = this.textOptionsView.getEmojiButton();
            if (emojiButton != null) {
                emojiButton.setState(ChatActivityEnterViewAnimatedIconView.State.KEYBOARD, true);
            }
            onWindowSizeChanged();
            if (z || this.keyboardVisible) {
                return;
            }
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.emojiPadding, 0.0f);
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda7
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f$0.lambda$showEmojiPopup$46(valueAnimator);
                }
            });
            valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView.19
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    LPhotoPaintView.this.emojiView.setTranslationY(0.0f);
                }
            });
            valueAnimatorOfFloat.start();
            return;
        }
        ChatActivityEnterViewAnimatedIconView emojiButton2 = this.textOptionsView.getEmojiButton();
        if (emojiButton2 != null) {
            emojiButton2.setState(ChatActivityEnterViewAnimatedIconView.State.SMILE, true);
        }
        EmojiView emojiView3 = this.emojiView;
        if (emojiView3 != null) {
            this.emojiViewWasVisible = this.emojiViewVisible;
            this.emojiViewVisible = false;
            if (AndroidUtilities.usingHardwareInput || AndroidUtilities.isInMultiwindow) {
                emojiView3.setVisibility(8);
            }
        }
        if (i == 0) {
            this.emojiPadding = 0;
        }
        updateKeyboard();
        requestLayout();
        onWindowSizeChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showEmojiPopup$46(ValueAnimator valueAnimator) {
        this.emojiView.setTranslationY(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    private void hideEmojiPopup(boolean z) {
        if (this.emojiViewVisible) {
            showEmojiPopup(0);
        }
        if (z) {
            EmojiView emojiView = this.emojiView;
            if (emojiView != null && emojiView.getVisibility() == 0 && !this.waitingForKeyboardOpen) {
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, this.emojiView.getMeasuredHeight());
                this.bottomPanelIgnoreOnce = false;
                valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda22
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        this.f$0.lambda$hideEmojiPopup$47(valueAnimator);
                    }
                });
                this.isAnimatePopupClosing = true;
                valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView.20
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        LPhotoPaintView lPhotoPaintView = LPhotoPaintView.this;
                        lPhotoPaintView.isAnimatePopupClosing = false;
                        lPhotoPaintView.emojiView.setTranslationY(0.0f);
                        LPhotoPaintView.this.hideEmojiView();
                    }
                });
                valueAnimatorOfFloat.setDuration(250L);
                valueAnimatorOfFloat.setInterpolator(AdjustPanLayoutHelper.keyboardInterpolator);
                valueAnimatorOfFloat.start();
                return;
            }
            hideEmojiView();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$hideEmojiPopup$47(ValueAnimator valueAnimator) {
        this.emojiView.setTranslationY(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    public int getEmojiPadding(boolean z) {
        if (this.translateBottomPanelAfterResize && z) {
            bottomPanelTranslationY(0.0f, 1.0f);
        }
        if (this.keyboardVisible && this.translateBottomPanelAfterResize && !z) {
            return 0;
        }
        return this.emojiPadding;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideEmojiView() {
        EmojiView emojiView;
        if (this.emojiPadding > 0) {
            updateKeyboard();
        }
        if (!this.emojiViewVisible && (emojiView = this.emojiView) != null && emojiView.getVisibility() != 8) {
            this.emojiView.setVisibility(8);
        }
        this.emojiPadding = 0;
    }

    private void onWindowSizeChanged() {
        getHeight();
    }

    @Override // org.telegram.ui.Components.SizeNotifierFrameLayout.SizeNotifierFrameLayoutDelegate
    public void onSizeChanged(int i, boolean z) {
        boolean z2;
        if (i > AndroidUtilities.dp(50.0f) && this.keyboardVisible && !AndroidUtilities.isInMultiwindow && !AndroidUtilities.isTablet()) {
            if (z) {
                this.keyboardHeightLand = i;
                MessagesController.getGlobalEmojiSettings().edit().putInt("kbd_height_land3", this.keyboardHeightLand).apply();
            } else {
                this.keyboardHeight = i;
                MessagesController.getGlobalEmojiSettings().edit().putInt("kbd_height", this.keyboardHeight).apply();
            }
        }
        if (this.emojiViewVisible) {
            int i2 = z ? this.keyboardHeightLand : this.keyboardHeight;
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.emojiView.getLayoutParams();
            int i3 = layoutParams.width;
            int i4 = AndroidUtilities.displaySize.x;
            if (i3 != i4 || layoutParams.height != i2) {
                layoutParams.width = i4;
                layoutParams.height = i2;
                this.emojiView.setLayoutParams(layoutParams);
                int i5 = layoutParams.height;
                this.emojiWasPadding = i5;
                this.emojiPadding = i5;
                requestLayout();
                updateKeyboard();
                onWindowSizeChanged();
            }
        }
        if (this.lastSizeChangeValue1 == i && this.lastSizeChangeValue2 == z) {
            onWindowSizeChanged();
            return;
        }
        this.lastSizeChangeValue1 = i;
        this.lastSizeChangeValue2 = z;
        boolean z3 = this.keyboardVisible;
        EntityView entityView = this.currentEntityView;
        if (entityView instanceof TextPaintView) {
            this.keyboardVisible = ((TextPaintView) entityView).getEditText().isFocused() && i > 0;
        } else {
            this.keyboardVisible = false;
        }
        if (this.keyboardVisible && this.emojiViewVisible) {
            showEmojiPopup(0);
        }
        if (this.emojiPadding != 0 && !(z2 = this.keyboardVisible) && z2 != z3 && !this.emojiViewVisible) {
            this.emojiPadding = 0;
            requestLayout();
            updateKeyboard();
        }
        if (z3 && !this.keyboardVisible && this.emojiPadding > 0 && this.translateBottomPanelAfterResize) {
            this.translateBottomPanelAfterResize = false;
            bottomPanelTranslationY(0.0f, 1.0f);
            this.weightChooserView.stopPanTransition();
        }
        if (this.keyboardVisible && this.waitingForKeyboardOpen) {
            this.waitingForKeyboardOpen = false;
            AndroidUtilities.cancelRunOnUIThread(this.openKeyboardRunnable);
        }
        onWindowSizeChanged();
    }

    public void updatePlusEmojiKeyboardButton() {
        PaintTextOptionsView paintTextOptionsView = this.textOptionsView;
        if (paintTextOptionsView != null) {
            if (this.keyboardVisible) {
                paintTextOptionsView.animatePlusToIcon(C2665R.drawable.input_smile);
            } else if (this.emojiViewVisible) {
                paintTextOptionsView.animatePlusToIcon(C2665R.drawable.input_keyboard);
            } else {
                paintTextOptionsView.animatePlusToIcon(C2665R.drawable.msg_add);
            }
        }
        AndroidUtilities.updateViewShow(this.undoAllButton, (this.keyboardVisible || this.emojiViewVisible) ? false : true, false, 1.0f, true, null);
        AndroidUtilities.updateViewShow(this.undoButton, (this.keyboardVisible || this.emojiViewVisible) ? false : true, false, 1.0f, true, null);
        AndroidUtilities.updateViewShow(this.doneTextButton, this.keyboardVisible || this.emojiViewVisible, false, 1.0f, true, null);
        AndroidUtilities.updateViewShow(this.cancelTextButton, this.keyboardVisible || this.emojiViewVisible, false, 1.0f, true, null);
    }

    public void createEmojiView() {
        EmojiView emojiView = this.emojiView;
        if (emojiView != null && emojiView.currentAccount != UserConfig.selectedAccount) {
            removeView(emojiView);
            this.emojiView = null;
        }
        if (this.emojiView != null) {
            return;
        }
        EmojiView emojiView2 = new EmojiView(null, true, false, false, getContext(), false, null, null, true, this.resourcesProvider, false, false, true);
        this.emojiView = emojiView2;
        emojiView2.allowEmojisForNonPremium(true, false);
        this.emojiView.setVisibility(8);
        if (AndroidUtilities.isTablet()) {
            this.emojiView.setForseMultiwindowLayout(true);
        }
        this.emojiView.setDelegate(new AnonymousClass21());
        addView(this.emojiView);
    }

    /* JADX INFO: renamed from: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$21, reason: invalid class name */
    public class AnonymousClass21 implements EmojiView.EmojiViewDelegate {
        int innerTextChange;

        @Override // org.telegram.ui.Components.EmojiView.EmojiViewDelegate
        public void onAnimatedEmojiUnlockClick() {
        }

        public AnonymousClass21() {
        }

        @Override // org.telegram.ui.Components.EmojiView.EmojiViewDelegate
        public boolean onBackspace() {
            EditTextOutline editText = ((TextPaintView) LPhotoPaintView.this.currentEntityView).getEditText();
            if (editText == null || editText.length() == 0) {
                return false;
            }
            editText.dispatchKeyEvent(new KeyEvent(0, 67));
            return true;
        }

        @Override // org.telegram.ui.Components.EmojiView.EmojiViewDelegate
        public void onEmojiSelected(String str) {
            TextPaintView textPaintView;
            EditTextOutline editText;
            Emoji.EmojiSpan[] emojiSpanArr;
            if ((LPhotoPaintView.this.currentEntityView instanceof TextPaintView) && (editText = (textPaintView = (TextPaintView) LPhotoPaintView.this.currentEntityView).getEditText()) != null) {
                int selectionEnd = editText.getSelectionEnd();
                if (selectionEnd < 0) {
                    selectionEnd = 0;
                }
                try {
                    try {
                        this.innerTextChange = 2;
                        CharSequence charSequenceReplaceEmoji = Emoji.replaceEmoji(str, textPaintView.getFontMetricsInt(), false);
                        if ((charSequenceReplaceEmoji instanceof Spanned) && (emojiSpanArr = (Emoji.EmojiSpan[]) ((Spanned) charSequenceReplaceEmoji).getSpans(0, charSequenceReplaceEmoji.length(), Emoji.EmojiSpan.class)) != null) {
                            for (Emoji.EmojiSpan emojiSpan : emojiSpanArr) {
                                emojiSpan.scale = 0.85f;
                            }
                        }
                        editText.setText(editText.getText().insert(selectionEnd, charSequenceReplaceEmoji));
                        int length = selectionEnd + charSequenceReplaceEmoji.length();
                        editText.setSelection(length, length);
                        this.innerTextChange = 0;
                    } catch (Exception e) {
                        FileLog.m992e(e);
                        this.innerTextChange = 0;
                    }
                } catch (Throwable th) {
                    this.innerTextChange = 0;
                    throw th;
                }
            }
        }

        @Override // org.telegram.ui.Components.EmojiView.EmojiViewDelegate
        public void onCustomEmojiSelected(long j, TLRPC.Document document, String str, boolean z) {
            AnimatedEmojiSpan animatedEmojiSpan;
            EditTextOutline editText = ((TextPaintView) LPhotoPaintView.this.currentEntityView).getEditText();
            if (editText == null) {
                return;
            }
            int selectionEnd = editText.getSelectionEnd();
            if (selectionEnd < 0) {
                selectionEnd = 0;
            }
            try {
                try {
                    this.innerTextChange = 2;
                    SpannableString spannableString = new SpannableString(str);
                    if (document != null) {
                        animatedEmojiSpan = new AnimatedEmojiSpan(document, editText.getPaint().getFontMetricsInt());
                    } else {
                        animatedEmojiSpan = new AnimatedEmojiSpan(j, editText.getPaint().getFontMetricsInt());
                    }
                    spannableString.setSpan(animatedEmojiSpan, 0, spannableString.length(), 33);
                    editText.setText(editText.getText().insert(selectionEnd, spannableString));
                    int length = selectionEnd + spannableString.length();
                    editText.setSelection(length, length);
                    this.innerTextChange = 0;
                } catch (Exception e) {
                    FileLog.m992e(e);
                    this.innerTextChange = 0;
                }
            } catch (Throwable th) {
                this.innerTextChange = 0;
                throw th;
            }
        }

        @Override // org.telegram.ui.Components.EmojiView.EmojiViewDelegate
        public void onClearEmojiRecent() {
            AlertDialog.Builder builder = new AlertDialog.Builder(LPhotoPaintView.this.getContext(), LPhotoPaintView.this.resourcesProvider);
            builder.setTitle(LocaleController.getString(C2665R.string.ClearRecentEmojiTitle));
            builder.setMessage(LocaleController.getString(C2665R.string.ClearRecentEmojiText));
            builder.setPositiveButton(LocaleController.getString(C2665R.string.ClearButton), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$21$$ExternalSyntheticLambda0
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i) {
                    this.f$0.lambda$onClearEmojiRecent$0(alertDialog, i);
                }
            });
            builder.setNegativeButton(LocaleController.getString(C2665R.string.Cancel), null);
            builder.show();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onClearEmojiRecent$0(AlertDialog alertDialog, int i) {
            LPhotoPaintView.this.emojiView.clearRecentEmoji();
        }
    }

    public float adjustPanLayoutHelperProgress() {
        return this.panTranslationProgress;
    }

    @Override // org.telegram.ui.Components.SizeNotifierFrameLayout, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        this.destroyed = false;
        super.onAttachedToWindow();
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.customTypefacesLoaded);
    }

    @Override // org.telegram.ui.Components.SizeNotifierFrameLayout, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        this.destroyed = true;
        super.onDetachedFromWindow();
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.customTypefacesLoaded);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i != NotificationCenter.customTypefacesLoaded || this.entitiesView == null) {
            return;
        }
        for (int i3 = 0; i3 < this.entitiesView.getChildCount(); i3++) {
            View childAt = this.entitiesView.getChildAt(i3);
            if (childAt instanceof TextPaintView) {
                ((TextPaintView) childAt).updateTypeface();
            }
        }
    }

    public ThanosEffect getThanosEffect() {
        if (!ThanosEffect.supports()) {
            return null;
        }
        if (this.thanosEffect == null) {
            ThanosEffect thanosEffect = new ThanosEffect(getContext(), new Runnable() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda20
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$getThanosEffect$48();
                }
            });
            this.thanosEffect = thanosEffect;
            addView(thanosEffect);
        }
        return this.thanosEffect;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getThanosEffect$48() {
        ThanosEffect thanosEffect = this.thanosEffect;
        if (thanosEffect != null) {
            this.thanosEffect = null;
            removeView(thanosEffect);
        }
    }

    public void onSwitchSegmentedAnimation(final PhotoView photoView) {
        float f;
        if (photoView == null) {
            return;
        }
        ThanosEffect thanosEffect = getThanosEffect();
        if (thanosEffect == null) {
            photoView.onSwitchSegmentedAnimationStarted(false);
            return;
        }
        Bitmap segmentedOutBitmap = photoView.getSegmentedOutBitmap();
        if (segmentedOutBitmap == null) {
            photoView.onSwitchSegmentedAnimationStarted(false);
            return;
        }
        Matrix matrix = new Matrix();
        float width = photoView.getWidth();
        float height = photoView.getHeight();
        float f2 = 0.0f;
        if (photoView.getRotation() != 0.0f) {
            float width2 = segmentedOutBitmap.getWidth();
            float height2 = segmentedOutBitmap.getHeight();
            float f3 = width2 / 2.0f;
            float f4 = height2 / 2.0f;
            float fSqrt = (float) Math.sqrt((f3 * f3) + (f4 * f4));
            float f5 = fSqrt * 2.0f;
            int i = (int) f5;
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i, i, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            canvas.save();
            canvas.rotate(photoView.getRotation(), fSqrt, fSqrt);
            canvas.drawBitmap(segmentedOutBitmap, (f5 - width2) / 2.0f, (f5 - height2) / 2.0f, (Paint) null);
            segmentedOutBitmap.recycle();
            float f6 = width / 2.0f;
            float f7 = height / 2.0f;
            float fSqrt2 = ((float) Math.sqrt((f6 * f6) + (f7 * f7))) * 2.0f;
            f2 = (-(fSqrt2 - width)) / 2.0f;
            float f8 = (-(fSqrt2 - height)) / 2.0f;
            height = fSqrt2;
            f = f8;
            width = height;
            segmentedOutBitmap = bitmapCreateBitmap;
        } else {
            f = 0.0f;
        }
        matrix.postScale(width, height);
        matrix.postScale(photoView.getScaleX(), photoView.getScaleY(), width / 2.0f, height / 2.0f);
        matrix.postTranslate(photoView.getX() + f2, photoView.getY() + f);
        thanosEffect.animate(matrix, segmentedOutBitmap, new Runnable() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda44
            @Override // java.lang.Runnable
            public final void run() {
                photoView.onSwitchSegmentedAnimationStarted(true);
            }
        }, new Runnable() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda45
            @Override // java.lang.Runnable
            public final void run() {
                LPhotoPaintView.$r8$lambda$4aiZhvQC2GURrN6CN5KcEZfpOL4();
            }
        });
    }

    public class BottomLayout extends FrameLayout {
        private float lastRainbowX;
        private float lastRainbowY;
        private Path path;

        public BottomLayout(Context context) {
            super(context);
            this.path = new Path();
            setWillNotDraw(false);
            LPhotoPaintView.this.colorPickerRainbowPaint.setStyle(Paint.Style.STROKE);
            LPhotoPaintView.this.colorPickerRainbowPaint.setStrokeWidth(AndroidUtilities.dp(2.0f));
        }

        private void checkRainbow(float f, float f2) {
            if (f == this.lastRainbowX && f2 == this.lastRainbowY) {
                return;
            }
            this.lastRainbowX = f;
            this.lastRainbowY = f2;
            LPhotoPaintView.this.colorPickerRainbowPaint.setShader(new SweepGradient(f, f2, new int[]{-1356981, -1146130, -10452764, -16711681, -7352832, -256, -23296, -1356981}, (float[]) null));
        }

        @Override // android.view.View
        public void setTranslationY(float f) {
            super.setTranslationY(f);
            FrameLayout frameLayout = LPhotoPaintView.this.overlayLayout;
            if (frameLayout != null) {
                frameLayout.invalidate();
            }
        }

        @Override // android.view.View
        public void onDraw(Canvas canvas) {
            float f;
            super.onDraw(canvas);
            ViewGroup barView = LPhotoPaintView.this.getBarView();
            Rect rect = AndroidUtilities.rectTmp2;
            rect.set(AndroidUtilities.lerp(barView.getLeft(), LPhotoPaintView.this.colorsListView.getLeft(), LPhotoPaintView.this.toolsTransformProgress), AndroidUtilities.lerp(barView.getTop(), LPhotoPaintView.this.colorsListView.getTop(), LPhotoPaintView.this.toolsTransformProgress), AndroidUtilities.lerp(barView.getRight(), LPhotoPaintView.this.colorsListView.getRight(), LPhotoPaintView.this.toolsTransformProgress), AndroidUtilities.lerp(barView.getBottom(), LPhotoPaintView.this.colorsListView.getBottom(), LPhotoPaintView.this.toolsTransformProgress));
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set(rect);
            float fLerp = AndroidUtilities.lerp(AndroidUtilities.dp(32.0f), AndroidUtilities.dp(24.0f), LPhotoPaintView.this.toolsTransformProgress);
            if (LPhotoPaintView.this.blurredBackgroundDrawableForTools != null) {
                rect.inset(-AndroidUtilities.dp(4.0f), -AndroidUtilities.dp(4.0f));
                LPhotoPaintView.this.blurredBackgroundDrawableForTools.setRadius(fLerp);
                LPhotoPaintView.this.blurredBackgroundDrawableForTools.setBounds(rect);
                LPhotoPaintView.this.blurredBackgroundDrawableForTools.draw(canvas);
            } else {
                canvas.drawRoundRect(rectF, fLerp, fLerp, LPhotoPaintView.this.toolsPaint);
            }
            if (barView.getChildCount() < 1 || LPhotoPaintView.this.toolsTransformProgress == 1.0f) {
                return;
            }
            canvas.save();
            canvas.translate(barView.getLeft(), barView.getTop());
            View childAt = barView.getChildAt(0);
            if (barView instanceof PaintTextOptionsView) {
                childAt = ((PaintTextOptionsView) barView).getColorClickableView();
            }
            View view = childAt;
            if (view.getAlpha() != 0.0f) {
                canvas.scale(view.getScaleX(), view.getScaleY(), view.getPivotX(), view.getPivotY());
                LPhotoPaintView.this.colorPickerRainbowPaint.setAlpha((int) ((1.0f - LPhotoPaintView.this.toolsTransformProgress) * view.getAlpha() * 255.0f));
                int width = (view.getWidth() - view.getPaddingLeft()) - view.getPaddingRight();
                int height = (view.getHeight() - view.getPaddingTop()) - view.getPaddingBottom();
                float x = view.getX() + view.getPaddingLeft() + (width / 2.0f);
                float y = view.getY() + view.getPaddingTop() + (height / 2.0f);
                int iBlendARGB = LPhotoPaintView.this.colorSwatch.color;
                if (LPhotoPaintView.this.tabsNewSelectedIndex != -1) {
                    LPhotoPaintView lPhotoPaintView = LPhotoPaintView.this;
                    ViewGroup viewGroup = (ViewGroup) lPhotoPaintView.getBarView(lPhotoPaintView.tabsNewSelectedIndex);
                    View childAt2 = (viewGroup == null ? barView : viewGroup).getChildAt(0);
                    f = 1.0f;
                    if (viewGroup instanceof PaintTextOptionsView) {
                        childAt2 = ((PaintTextOptionsView) viewGroup).getColorClickableView();
                    }
                    x = AndroidUtilities.lerp(x, childAt2.getX() + childAt2.getPaddingLeft() + (((childAt2.getWidth() - childAt2.getPaddingLeft()) - childAt2.getPaddingRight()) / 2.0f), LPhotoPaintView.this.tabsSelectionProgress);
                    y = AndroidUtilities.lerp(y, childAt2.getY() + childAt2.getPaddingTop() + (((childAt2.getHeight() - childAt2.getPaddingTop()) - childAt2.getPaddingBottom()) / 2.0f), LPhotoPaintView.this.tabsSelectionProgress);
                } else {
                    f = 1.0f;
                }
                if (LPhotoPaintView.this.colorsListView != null && LPhotoPaintView.this.colorsListView.getChildCount() > 0) {
                    View childAt3 = LPhotoPaintView.this.colorsListView.getChildAt(0);
                    x = AndroidUtilities.lerp(x, (LPhotoPaintView.this.colorsListView.getX() - barView.getLeft()) + childAt3.getX() + (childAt3.getWidth() / 2.0f), LPhotoPaintView.this.toolsTransformProgress);
                    y = AndroidUtilities.lerp(y, (LPhotoPaintView.this.colorsListView.getY() - barView.getTop()) + childAt3.getY() + (childAt3.getHeight() / 2.0f), LPhotoPaintView.this.toolsTransformProgress);
                    iBlendARGB = ColorUtils.blendARGB(LPhotoPaintView.this.colorSwatch.color, LPhotoPaintView.this.palette.getColor(0), LPhotoPaintView.this.toolsTransformProgress);
                }
                checkRainbow(x, y);
                float fMin = (Math.min(width, height) / 2.0f) - AndroidUtilities.dp(0.5f);
                if (LPhotoPaintView.this.colorsListView != null && LPhotoPaintView.this.colorsListView.getChildCount() > 0) {
                    View childAt4 = LPhotoPaintView.this.colorsListView.getChildAt(0);
                    fMin = AndroidUtilities.lerp(fMin, (Math.min((childAt4.getWidth() - childAt4.getPaddingLeft()) - childAt4.getPaddingRight(), (childAt4.getHeight() - childAt4.getPaddingTop()) - childAt4.getPaddingBottom()) / 2.0f) - AndroidUtilities.dp(2.0f), LPhotoPaintView.this.toolsTransformProgress);
                }
                float f2 = fMin;
                rectF.set(x - f2, y - f2, x + f2, y + f2);
                canvas.drawArc(rectF, 0.0f, 360.0f, false, LPhotoPaintView.this.colorPickerRainbowPaint);
                LPhotoPaintView.this.colorSwatchPaint.setColor(iBlendARGB);
                LPhotoPaintView.this.colorSwatchPaint.setAlpha((int) (LPhotoPaintView.this.colorSwatchPaint.getAlpha() * view.getAlpha()));
                LPhotoPaintView.this.colorSwatchOutlinePaint.setColor(iBlendARGB);
                LPhotoPaintView.this.colorSwatchOutlinePaint.setAlpha((int) (view.getAlpha() * 255.0f));
                float fDp = f2 - AndroidUtilities.dp(3.0f);
                if (LPhotoPaintView.this.colorsListView != null && LPhotoPaintView.this.colorsListView.getSelectedColorIndex() != 0) {
                    fDp = AndroidUtilities.lerp(f2 - AndroidUtilities.dp(3.0f), AndroidUtilities.dp(2.0f) + f2, LPhotoPaintView.this.toolsTransformProgress);
                }
                PaintColorsListView.drawColorCircle(canvas, x, y, fDp, LPhotoPaintView.this.colorSwatchPaint.getColor());
                if (LPhotoPaintView.this.colorsListView != null && LPhotoPaintView.this.colorsListView.getSelectedColorIndex() == 0) {
                    LPhotoPaintView.this.colorSwatchOutlinePaint.setAlpha((int) (LPhotoPaintView.this.colorSwatchOutlinePaint.getAlpha() * LPhotoPaintView.this.toolsTransformProgress * view.getAlpha()));
                    canvas.drawCircle(x, y, f2 - ((AndroidUtilities.dp(3.0f) + LPhotoPaintView.this.colorSwatchOutlinePaint.getStrokeWidth()) * (f - LPhotoPaintView.this.toolsTransformProgress)), LPhotoPaintView.this.colorSwatchOutlinePaint);
                }
            }
            canvas.restore();
        }
    }
}
