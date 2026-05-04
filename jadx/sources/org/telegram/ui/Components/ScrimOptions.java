package org.telegram.ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.app.Dialog;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.CornerPathEffect;
import android.graphics.Insets;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.style.CharacterStyle;
import android.text.style.ForegroundColorSpan;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.widget.FrameLayout;
import androidx.core.view.WindowInsetsCompat;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2484R;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.ChatMessageCell;

/* JADX INFO: loaded from: classes7.dex */
public class ScrimOptions extends Dialog {
    private Bitmap blurBitmap;
    private Paint blurBitmapPaint;
    private BitmapShader blurBitmapShader;
    private Matrix blurMatrix;
    private final FrameLayout containerView;
    public final Context context;
    public final int currentAccount;
    private boolean dismissing;
    private final android.graphics.Rect insets;
    private boolean isGroup;
    private ValueAnimator openAnimator;
    private float openProgress;
    private ItemOptions options;
    private FrameLayout optionsContainer;
    private View optionsView;
    public final Theme.ResourcesProvider resourcesProvider;
    private ChatMessageCell scrimCell;
    private Drawable scrimDrawable;
    private float scrimDrawableSh;
    private float scrimDrawableSw;
    private float scrimDrawableTx1;
    private float scrimDrawableTx2;
    private float scrimDrawableTy1;
    private float scrimDrawableTy2;
    private final FrameLayout windowView;

    public ScrimOptions(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context, C2484R.style.TransparentDialog);
        this.currentAccount = UserConfig.selectedAccount;
        this.insets = new android.graphics.Rect();
        this.scrimDrawableSw = 1.0f;
        this.scrimDrawableSh = 1.0f;
        this.dismissing = false;
        this.context = context;
        this.resourcesProvider = resourcesProvider;
        FrameLayout frameLayout = new FrameLayout(context) { // from class: org.telegram.ui.Components.ScrimOptions.1
            @Override // android.view.ViewGroup, android.view.View
            protected void dispatchDraw(Canvas canvas) {
                Canvas canvas2;
                if (ScrimOptions.this.openProgress <= 0.0f || ScrimOptions.this.blurBitmapPaint == null) {
                    canvas2 = canvas;
                } else {
                    ScrimOptions.this.blurMatrix.reset();
                    float width = getWidth() / ScrimOptions.this.blurBitmap.getWidth();
                    ScrimOptions.this.blurMatrix.postScale(width, width);
                    ScrimOptions.this.blurBitmapShader.setLocalMatrix(ScrimOptions.this.blurMatrix);
                    ScrimOptions.this.blurBitmapPaint.setAlpha((int) (ScrimOptions.this.openProgress * 255.0f));
                    canvas2 = canvas;
                    canvas2.drawRect(0.0f, 0.0f, getWidth(), getHeight(), ScrimOptions.this.blurBitmapPaint);
                }
                super.dispatchDraw(canvas2);
                if (ScrimOptions.this.scrimDrawable != null) {
                    ScrimOptions.this.scrimDrawable.setAlpha((int) (ScrimOptions.this.openProgress * 255.0f));
                    canvas2.save();
                    canvas2.translate(ScrimOptions.this.scrimDrawableTx2 + (ScrimOptions.this.scrimDrawableTx1 * ScrimOptions.this.openProgress), ScrimOptions.this.scrimDrawableTy2 + (ScrimOptions.this.scrimDrawableTy1 * ScrimOptions.this.openProgress));
                    float fLerp = AndroidUtilities.lerp(AndroidUtilities.lerp(Math.min(ScrimOptions.this.scrimDrawableSw, ScrimOptions.this.scrimDrawableSh), Math.max(ScrimOptions.this.scrimDrawableSw, ScrimOptions.this.scrimDrawableSh), 0.75f), 1.0f, ScrimOptions.this.openProgress);
                    canvas2.scale(fLerp, fLerp, (-ScrimOptions.this.scrimDrawableTx2) + ScrimOptions.this.scrimDrawable.getBounds().left + ((ScrimOptions.this.scrimDrawable.getBounds().width() / 2.0f) * ScrimOptions.this.scrimDrawableSw), (-ScrimOptions.this.scrimDrawableTy2) + ScrimOptions.this.scrimDrawable.getBounds().top + ((ScrimOptions.this.scrimDrawable.getBounds().height() / 2.0f) * ScrimOptions.this.scrimDrawableSh));
                    ScrimOptions.this.scrimDrawable.draw(canvas2);
                    canvas2.restore();
                }
            }

            @Override // android.view.ViewGroup, android.view.View
            public boolean dispatchKeyEventPreIme(KeyEvent keyEvent) {
                if (keyEvent != null && keyEvent.getKeyCode() == 4 && keyEvent.getAction() == 1) {
                    ScrimOptions.this.onBackPressed();
                    return true;
                }
                return super.dispatchKeyEventPreIme(keyEvent);
            }

            @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
            protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
                super.onLayout(z, i, i2, i3, i4);
                ScrimOptions.this.layout();
            }
        };
        this.windowView = frameLayout;
        frameLayout.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ScrimOptions$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$0(view);
            }
        });
        SizeNotifierFrameLayout sizeNotifierFrameLayout = new SizeNotifierFrameLayout(context);
        this.containerView = sizeNotifierFrameLayout;
        sizeNotifierFrameLayout.setClipToPadding(false);
        frameLayout.addView(sizeNotifierFrameLayout, LayoutHelper.createFrame(-1, -1, 119));
        frameLayout.setFitsSystemWindows(true);
        frameLayout.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: org.telegram.ui.Components.ScrimOptions.2
            @Override // android.view.View.OnApplyWindowInsetsListener
            public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                int i = Build.VERSION.SDK_INT;
                if (i >= 30) {
                    Insets insets = windowInsets.getInsets(WindowInsetsCompat.Type.displayCutout() | WindowInsetsCompat.Type.systemBars());
                    ScrimOptions.this.insets.set(insets.left, insets.top, insets.right, insets.bottom);
                } else {
                    ScrimOptions.this.insets.set(windowInsets.getSystemWindowInsetLeft(), windowInsets.getSystemWindowInsetTop(), windowInsets.getSystemWindowInsetRight(), windowInsets.getSystemWindowInsetBottom());
                }
                ScrimOptions.this.containerView.setPadding(ScrimOptions.this.insets.left, ScrimOptions.this.insets.top, ScrimOptions.this.insets.right, ScrimOptions.this.insets.bottom);
                ScrimOptions.this.windowView.requestLayout();
                if (i >= 30) {
                    return WindowInsets.CONSUMED;
                }
                return windowInsets.consumeSystemWindowInsets();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        onBackPressed();
    }

    public void setItemOptions(ItemOptions itemOptions) {
        this.options = itemOptions;
        this.optionsView = itemOptions.getLayout();
        FrameLayout frameLayout = new FrameLayout(this.context);
        this.optionsContainer = frameLayout;
        frameLayout.addView(this.optionsView, LayoutHelper.createFrame(-2, -2.0f));
        this.containerView.addView(this.optionsContainer, LayoutHelper.createFrame(-2, -2.0f));
    }

    @Override // android.app.Dialog
    public boolean isShowing() {
        return !this.dismissing;
    }

    @Override // android.app.Dialog
    public void show() {
        if (AndroidUtilities.isSafeToShow(getContext())) {
            super.show();
            prepareBlur(null);
            animateOpenTo(true, null);
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        if (this.dismissing) {
            return;
        }
        this.dismissing = true;
        animateOpenTo(false, new Runnable() { // from class: org.telegram.ui.Components.ScrimOptions$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$dismiss$2();
            }
        });
        this.windowView.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$dismiss$1() {
        super.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$dismiss$2() {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ScrimOptions$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$dismiss$1();
            }
        });
    }

    public void dismissFast() {
        if (this.dismissing) {
            return;
        }
        this.dismissing = true;
        animateOpenTo(false, 2.0f, new Runnable() { // from class: org.telegram.ui.Components.ScrimOptions$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$dismissFast$4();
            }
        });
        this.windowView.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$dismissFast$3() {
        super.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$dismissFast$4() {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ScrimOptions$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$dismissFast$3();
            }
        });
    }

    private void animateOpenTo(boolean z, Runnable runnable) {
        animateOpenTo(z, 1.0f, runnable);
    }

    private void animateOpenTo(final boolean z, float f, final Runnable runnable) {
        ValueAnimator valueAnimator = this.openAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.openProgress, z ? 1.0f : 0.0f);
        this.openAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ScrimOptions$$ExternalSyntheticLambda3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f$0.lambda$animateOpenTo$5(valueAnimator2);
            }
        });
        this.openAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ScrimOptions.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ScrimOptions.this.openProgress = z ? 1.0f : 0.0f;
                ScrimOptions.this.optionsView.setScaleX(AndroidUtilities.lerp(0.8f, 1.0f, ScrimOptions.this.openProgress));
                ScrimOptions.this.optionsView.setScaleY(AndroidUtilities.lerp(0.8f, 1.0f, ScrimOptions.this.openProgress));
                ScrimOptions.this.optionsView.setAlpha(ScrimOptions.this.openProgress);
                ScrimOptions.this.windowView.invalidate();
                ScrimOptions.this.containerView.invalidate();
                Runnable runnable2 = runnable;
                if (runnable2 != null) {
                    AndroidUtilities.runOnUIThread(runnable2);
                }
            }
        });
        this.openAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        this.openAnimator.setDuration(350L);
        this.openAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateOpenTo$5(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.openProgress = fFloatValue;
        this.optionsView.setScaleX(AndroidUtilities.lerp(0.8f, 1.0f, fFloatValue));
        this.optionsView.setScaleY(AndroidUtilities.lerp(0.8f, 1.0f, this.openProgress));
        this.optionsView.setAlpha(this.openProgress);
        this.windowView.invalidate();
        this.containerView.invalidate();
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Window window = getWindow();
        window.setWindowAnimations(C2484R.style.DialogNoAnimation);
        setContentView(this.windowView, new ViewGroup.LayoutParams(-1, -1));
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.width = -1;
        attributes.height = -1;
        attributes.gravity = 119;
        attributes.dimAmount = 0.0f;
        int i = attributes.flags & (-3);
        attributes.softInputMode = 16;
        attributes.flags = 131072 | i;
        int i2 = Build.VERSION.SDK_INT;
        attributes.flags = i | (-1945959040);
        if (i2 >= 28) {
            attributes.layoutInDisplayCutoutMode = 1;
        }
        window.setAttributes(attributes);
        this.windowView.setSystemUiVisibility(256);
        AndroidUtilities.setLightNavigationBar(this.windowView, !Theme.isCurrentThemeDark());
    }

    private void prepareBlur(final View view) {
        if (view != null) {
            view.setVisibility(4);
        }
        AndroidUtilities.makeGlobalBlurBitmap(new Utilities.Callback() { // from class: org.telegram.ui.Components.ScrimOptions$$ExternalSyntheticLambda1
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$prepareBlur$6(view, (Bitmap) obj);
            }
        }, 14.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$prepareBlur$6(View view, Bitmap bitmap) {
        if (view != null) {
            view.setVisibility(0);
        }
        this.blurBitmap = bitmap;
        Paint paint = new Paint(1);
        this.blurBitmapPaint = paint;
        Bitmap bitmap2 = this.blurBitmap;
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(bitmap2, tileMode, tileMode);
        this.blurBitmapShader = bitmapShader;
        paint.setShader(bitmapShader);
        ColorMatrix colorMatrix = new ColorMatrix();
        AndroidUtilities.adjustSaturationColorMatrix(colorMatrix, Theme.isCurrentThemeDark() ? 0.08f : 0.25f);
        AndroidUtilities.adjustBrightnessColorMatrix(colorMatrix, Theme.isCurrentThemeDark() ? -0.02f : -0.07f);
        this.blurBitmapPaint.setColorFilter(new ColorMatrixColorFilter(colorMatrix));
        this.blurMatrix = new Matrix();
    }

    public void layout() {
        boolean z;
        Drawable drawable = this.scrimDrawable;
        if (drawable != null) {
            android.graphics.Rect bounds = drawable.getBounds();
            if (this.optionsContainer != null) {
                float f = bounds.left;
                float f2 = this.scrimDrawableTx2;
                float f3 = f + f2;
                float f4 = bounds.right + f2;
                float f5 = bounds.top;
                float f6 = this.scrimDrawableTy2;
                float f7 = f5 + f6;
                float f8 = bounds.bottom + f6;
                boolean z2 = true;
                if (f4 - r1.getMeasuredWidth() < AndroidUtilities.dp(8.0f)) {
                    this.optionsView.setPivotX(AndroidUtilities.dp(6.0f));
                    this.optionsContainer.setX(Math.min(this.containerView.getWidth() - this.optionsContainer.getWidth(), f3 - AndroidUtilities.dp(10.0f)) - this.containerView.getX());
                    z = false;
                } else {
                    this.optionsView.setPivotX(r1.getMeasuredWidth() - AndroidUtilities.dp(6.0f));
                    this.optionsContainer.setX(Math.max(AndroidUtilities.dp(8.0f), (AndroidUtilities.dp(4.0f) + f4) - this.optionsContainer.getMeasuredWidth()) - this.containerView.getX());
                    z = true;
                }
                this.scrimDrawableTx1 = z ? ((this.optionsContainer.getX() + this.optionsContainer.getWidth()) - AndroidUtilities.dp(6.0f)) - f4 : (this.optionsContainer.getX() + AndroidUtilities.dp(10.0f)) - f3;
                this.scrimDrawableTy1 = 0.0f;
                if (this.optionsContainer.getMeasuredHeight() + f8 > this.windowView.getMeasuredHeight() - AndroidUtilities.dp(16.0f)) {
                    this.optionsView.setPivotY(r0.getMeasuredHeight() - AndroidUtilities.dp(6.0f));
                    this.optionsContainer.setY(((f7 - AndroidUtilities.dp(4.0f)) - this.optionsContainer.getMeasuredHeight()) - this.containerView.getY());
                } else {
                    this.optionsView.setPivotY(AndroidUtilities.dp(6.0f));
                    this.optionsContainer.setY(Math.min((this.windowView.getHeight() - this.optionsContainer.getMeasuredHeight()) - AndroidUtilities.dp(16.0f), f8) - this.containerView.getY());
                    z2 = false;
                }
                this.options.setSwipebackGravity(z, z2);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:118:0x033b  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0345  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x034c  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x035d  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0362  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x03c0  */
    /* JADX WARN: Removed duplicated region for block: B:157:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setScrim(final ChatMessageCell chatMessageCell, CharacterStyle characterStyle, CharSequence charSequence) {
        float fMax;
        float lineTop;
        ArrayList<MessageObject.TextLayoutBlock> arrayList;
        float f;
        int spanStart;
        int spanEnd;
        int width;
        StaticLayout staticLayout;
        int i;
        StaticLayout staticLayout2;
        RectF rectF;
        StaticLayout staticLayout3;
        float f2;
        Bitmap bitmap;
        SpannableStringBuilder spannableStringBuilder;
        int i2;
        ArrayList<ChatMessageCell.PollButton> pollButtons;
        float f3;
        int i3;
        CharacterStyle[] characterStyleArr;
        CharacterStyle[] characterStyleArr2;
        if (chatMessageCell == null) {
            return;
        }
        this.scrimCell = chatMessageCell;
        int i4 = 0;
        this.isGroup = chatMessageCell.getCurrentMessagesGroup() != null;
        MessageObject messageObject = chatMessageCell.getMessageObject();
        if (chatMessageCell.getCaptionLayout() != null) {
            fMax = chatMessageCell.getCaptionX();
            lineTop = chatMessageCell.getCaptionY();
            arrayList = chatMessageCell.getCaptionLayout().textLayoutBlocks;
            f = chatMessageCell.getCaptionLayout().textXOffset;
        } else {
            fMax = 0.0f;
            lineTop = 0.0f;
            arrayList = null;
            f = 0.0f;
        }
        if (arrayList == null) {
            fMax = chatMessageCell.getTextX();
            lineTop = chatMessageCell.getTextY() + chatMessageCell.transitionYOffsetForDrawables;
            arrayList = messageObject.textLayoutBlocks;
            f = messageObject.textXOffset;
        }
        if (arrayList != null) {
            int i5 = 0;
            while (i5 < arrayList.size()) {
                MessageObject.TextLayoutBlock textLayoutBlock = arrayList.get(i5);
                StaticLayout staticLayout4 = textLayoutBlock.textLayout;
                if (staticLayout4 != null && (staticLayout4.getText() instanceof Spanned) && (characterStyleArr2 = (CharacterStyle[]) ((Spanned) staticLayout4.getText()).getSpans(i4, staticLayout4.getText().length(), CharacterStyle.class)) != null) {
                    for (int i6 = i4; i6 < characterStyleArr2.length; i6++) {
                        if (characterStyleArr2[i6] == characterStyle) {
                            spanStart = ((Spanned) staticLayout4.getText()).getSpanStart(characterStyle);
                            spanEnd = ((Spanned) staticLayout4.getText()).getSpanEnd(characterStyle);
                            fMax += textLayoutBlock.isRtl() ? (int) Math.ceil(f) : 0;
                            lineTop += textLayoutBlock.padTop + textLayoutBlock.textYOffset(arrayList, chatMessageCell.transitionParams);
                            width = textLayoutBlock.originalWidth;
                            staticLayout = staticLayout4;
                        }
                    }
                }
                i5++;
                i4 = 0;
            }
            spanStart = 0;
            spanEnd = 0;
            width = 0;
            staticLayout = null;
        } else {
            spanStart = 0;
            spanEnd = 0;
            width = 0;
            staticLayout = null;
        }
        if (staticLayout == null && chatMessageCell.getDescriptionlayout() != null) {
            StaticLayout descriptionlayout = chatMessageCell.getDescriptionlayout();
            int i7 = 0;
            staticLayout = staticLayout;
            while (i7 == 0) {
                if (descriptionlayout != null && (descriptionlayout.getText() instanceof Spanned) && (characterStyleArr = (CharacterStyle[]) ((Spanned) descriptionlayout.getText()).getSpans(0, descriptionlayout.getText().length(), CharacterStyle.class)) != null) {
                    int i8 = 0;
                    while (true) {
                        if (i8 >= characterStyleArr.length) {
                            break;
                        }
                        if (characterStyleArr[i8] == characterStyle) {
                            int spanStart2 = ((Spanned) descriptionlayout.getText()).getSpanStart(characterStyle);
                            int spanEnd2 = ((Spanned) descriptionlayout.getText()).getSpanEnd(characterStyle);
                            float descriptionLayoutX = chatMessageCell.getDescriptionLayoutX();
                            lineTop = chatMessageCell.getDescriptionLayoutY();
                            width = descriptionlayout.getWidth();
                            spanStart = spanStart2;
                            fMax = descriptionLayoutX;
                            spanEnd = spanEnd2;
                            staticLayout = descriptionlayout;
                            break;
                        }
                        i8++;
                    }
                }
                i7++;
                staticLayout = staticLayout;
            }
        }
        if (staticLayout != null || (!(messageObject.isTodo() || messageObject.isPoll()) || (pollButtons = chatMessageCell.getPollButtons()) == null)) {
            i = spanStart;
            staticLayout2 = staticLayout;
        } else {
            int i9 = 0;
            StaticLayout staticLayout5 = staticLayout;
            while (i9 < pollButtons.size()) {
                ChatMessageCell.PollButton pollButton = pollButtons.get(i9);
                StaticLayout staticLayout6 = pollButton.title;
                if (staticLayout6 != null && (staticLayout6.getText() instanceof Spanned)) {
                    f3 = fMax;
                    i3 = spanStart;
                    CharacterStyle[] characterStyleArr3 = (CharacterStyle[]) ((Spanned) staticLayout6.getText()).getSpans(0, staticLayout6.getText().length(), CharacterStyle.class);
                    if (characterStyleArr3 != null) {
                        for (CharacterStyle characterStyle2 : characterStyleArr3) {
                            if (characterStyle2 == characterStyle) {
                                int spanStart3 = ((Spanned) staticLayout6.getText()).getSpanStart(characterStyle);
                                int spanEnd3 = ((Spanned) staticLayout6.getText()).getSpanEnd(characterStyle);
                                float f4 = pollButton.titleX;
                                lineTop = pollButton.titleY;
                                width = staticLayout6.getWidth();
                                spanStart = spanStart3;
                                fMax = f4;
                                spanEnd = spanEnd3;
                                staticLayout5 = staticLayout6;
                                break;
                            }
                        }
                    }
                    i9++;
                    staticLayout5 = staticLayout5;
                } else {
                    f3 = fMax;
                    i3 = spanStart;
                }
                spanStart = i3;
                fMax = f3;
                i9++;
                staticLayout5 = staticLayout5;
            }
            i = spanStart;
            staticLayout2 = staticLayout5;
        }
        int i10 = width;
        if (staticLayout2 == null) {
            return;
        }
        if (charSequence != null) {
            int lineForOffset = staticLayout2.getLineForOffset(i);
            lineTop += staticLayout2.getLineTop(lineForOffset);
            float primaryHorizontal = staticLayout2.getPrimaryHorizontal(i);
            float lineWidth = staticLayout2.getLineWidth(lineForOffset);
            LinkPath linkPath = new LinkPath(true);
            linkPath.setCurrentLayout(staticLayout2, i, 0.0f);
            staticLayout2.getSelectionPath(i, spanEnd, linkPath);
            RectF rectF2 = new RectF();
            linkPath.computeBounds(rectF2, true);
            StaticLayout staticLayoutMakeStaticLayout = MessageObject.makeStaticLayout(charSequence, staticLayout2.getPaint(), staticLayout2.getWidth(), 1.0f, 0.0f, false);
            int length = charSequence.length();
            float width2 = staticLayoutMakeStaticLayout.getWidth();
            float fMax2 = 0.0f;
            for (int i11 = 0; i11 < staticLayoutMakeStaticLayout.getLineCount(); i11++) {
                width2 = Math.min(width2, staticLayoutMakeStaticLayout.getLineLeft(i11));
                fMax2 = Math.max(fMax2, staticLayoutMakeStaticLayout.getLineRight(i11));
            }
            fMax += Math.max(0.0f, Math.min(primaryHorizontal, lineWidth - Math.max(0.0f, fMax2 - width2)));
            rectF = rectF2;
            spanEnd = length;
            i = 0;
            staticLayout3 = staticLayoutMakeStaticLayout;
        } else {
            rectF = null;
            staticLayout3 = staticLayout2;
        }
        float f5 = fMax;
        float f6 = lineTop;
        final Paint paint = new Paint(1);
        paint.setColor(Theme.getColor(messageObject.isOutOwner() ? Theme.key_chat_outBubble : Theme.key_chat_inBubble, this.resourcesProvider));
        paint.setPathEffect(new CornerPathEffect(AndroidUtilities.dp(5.0f)));
        final LinkPath linkPath2 = new LinkPath(true);
        linkPath2.setUseCornerPathImplementation(true);
        linkPath2.setCurrentLayout(staticLayout3, i, 0.0f);
        staticLayout3.getSelectionPath(i, spanEnd, linkPath2);
        linkPath2.closeRects();
        final RectF rectF3 = new RectF();
        linkPath2.computeBounds(rectF3, true);
        int iWidth = (int) (rectF3.width() + LinkPath.getRadius());
        if (chatMessageCell.drawBackgroundInParent() && iWidth > 0) {
            f2 = 0.0f;
            if (rectF3.height() > 0.0f) {
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iWidth, (int) rectF3.height(), Bitmap.Config.ALPHA_8);
                Canvas canvas = new Canvas(bitmapCreateBitmap);
                Paint paint2 = new Paint(1);
                paint2.setColor(-1);
                canvas.drawRect(0.0f, 0.0f, iWidth, rectF3.height(), paint2);
                Paint paint3 = new Paint(1);
                paint3.setColor(-1);
                paint3.setPathEffect(new CornerPathEffect(AndroidUtilities.dp(5.0f)));
                paint3.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
                canvas.translate(-rectF3.left, -rectF3.top);
                canvas.drawPath(linkPath2, paint3);
                bitmap = bitmapCreateBitmap;
            }
            final Paint paint4 = new Paint(3);
            paint4.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
            chatMessageCell.setupTextColors();
            TextPaint textPaint = new TextPaint(staticLayout3.getPaint());
            textPaint.set(staticLayout3.getPaint());
            spannableStringBuilder = new SpannableStringBuilder(AnimatedEmojiSpan.cloneSpans(staticLayout3.getText(), -1, textPaint.getFontMetricsInt()));
            if (i <= 0) {
                i2 = 0;
                spannableStringBuilder.setSpan(new ForegroundColorSpan(0), 0, i, 33);
            } else {
                i2 = 0;
            }
            if (spanEnd < spannableStringBuilder.length()) {
                spannableStringBuilder.setSpan(new ForegroundColorSpan(i2), spanEnd, spannableStringBuilder.length(), 33);
            }
            final StaticLayout staticLayoutMakeStaticLayout2 = MessageObject.makeStaticLayout(spannableStringBuilder, textPaint, i10, 1.0f, messageObject.totalAnimatedEmojiCount < 4 ? -1.0f : f2, false);
            final int[] iArr = new int[2];
            chatMessageCell.getLocationOnScreen(iArr);
            final int[] iArr2 = {iArr[0] + ((int) f5), iArr[1] + ((int) f6)};
            final Bitmap bitmap2 = bitmap;
            this.scrimDrawable = new Drawable() { // from class: org.telegram.ui.Components.ScrimOptions.4
                private int alpha = 255;

                @Override // android.graphics.drawable.Drawable
                public int getOpacity() {
                    return -2;
                }

                @Override // android.graphics.drawable.Drawable
                public void setColorFilter(ColorFilter colorFilter) {
                }

                @Override // android.graphics.drawable.Drawable
                public void draw(Canvas canvas2) {
                    if (this.alpha <= 0) {
                        return;
                    }
                    RectF rectF4 = AndroidUtilities.rectTmp;
                    rectF4.set(getBounds());
                    rectF4.left -= LinkPath.getRadius() / 2.0f;
                    canvas2.save();
                    canvas2.saveLayerAlpha(rectF4, this.alpha, 31);
                    int[] iArr3 = iArr2;
                    canvas2.translate(iArr3[0], iArr3[1]);
                    ChatMessageCell chatMessageCell2 = chatMessageCell;
                    if (chatMessageCell2 != null && chatMessageCell2.drawBackgroundInParent()) {
                        Theme.MessageDrawable messageDrawable = chatMessageCell.currentBackgroundDrawable;
                        if (messageDrawable != null && messageDrawable.getPaint() != null) {
                            canvas2.save();
                            canvas2.translate(0.0f, -chatMessageCell.currentBackgroundDrawable.getTopY());
                            canvas2.drawPaint(chatMessageCell.currentBackgroundDrawable.getPaint());
                            canvas2.restore();
                        } else {
                            int[] iArr4 = iArr2;
                            canvas2.translate(-iArr4[0], -iArr4[1]);
                            int[] iArr5 = iArr;
                            canvas2.translate(iArr5[0], iArr5[1] + chatMessageCell.getPaddingTop());
                            chatMessageCell.drawBackgroundInternal(canvas2, true);
                            int[] iArr6 = iArr;
                            canvas2.translate(-iArr6[0], (-iArr6[1]) - chatMessageCell.getPaddingTop());
                            int[] iArr7 = iArr2;
                            canvas2.translate(iArr7[0], iArr7[1]);
                        }
                        if (bitmap2 != null) {
                            canvas2.save();
                            Bitmap bitmap3 = bitmap2;
                            RectF rectF5 = rectF3;
                            canvas2.drawBitmap(bitmap3, rectF5.left, rectF5.top, paint4);
                            canvas2.restore();
                        }
                    } else {
                        canvas2.drawPath(linkPath2, paint);
                    }
                    canvas2.clipPath(linkPath2);
                    staticLayoutMakeStaticLayout2.draw(canvas2);
                    canvas2.restore();
                }

                @Override // android.graphics.drawable.Drawable
                public void setAlpha(int i12) {
                    this.alpha = i12;
                }
            };
            int radius = (int) (iArr[0] + f5 + rectF3.left + (LinkPath.getRadius() / 2.0f));
            int i12 = (int) (iArr[1] + f6 + rectF3.top);
            this.scrimDrawable.setBounds(radius, i12, ((int) rectF3.width()) + radius, ((int) rectF3.height()) + i12);
            if (charSequence == null) {
                float f7 = radius;
                if (rectF3.width() + f7 > AndroidUtilities.displaySize.x - AndroidUtilities.dp(8.0f)) {
                    this.scrimDrawableTx2 -= (f7 + rectF3.width()) - (AndroidUtilities.displaySize.x - AndroidUtilities.dp(8.0f));
                }
                float f8 = i12;
                if (rectF3.height() + f8 > ((AndroidUtilities.displaySize.y - AndroidUtilities.statusBarHeight) - AndroidUtilities.navigationBarHeight) - AndroidUtilities.dp(8.0f)) {
                    this.scrimDrawableTy2 -= (f8 + rectF3.height()) - (((AndroidUtilities.displaySize.y - AndroidUtilities.statusBarHeight) - AndroidUtilities.navigationBarHeight) - AndroidUtilities.dp(8.0f));
                }
                if (rectF != null) {
                    this.scrimDrawableSw = rectF.width() / rectF3.width();
                    this.scrimDrawableSh = rectF.height() / rectF3.height();
                    return;
                }
                return;
            }
            return;
        }
        f2 = 0.0f;
        bitmap = null;
        final Paint paint42 = new Paint(3);
        paint42.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        chatMessageCell.setupTextColors();
        TextPaint textPaint2 = new TextPaint(staticLayout3.getPaint());
        textPaint2.set(staticLayout3.getPaint());
        spannableStringBuilder = new SpannableStringBuilder(AnimatedEmojiSpan.cloneSpans(staticLayout3.getText(), -1, textPaint2.getFontMetricsInt()));
        if (i <= 0) {
        }
        if (spanEnd < spannableStringBuilder.length()) {
        }
        final StaticLayout staticLayoutMakeStaticLayout22 = MessageObject.makeStaticLayout(spannableStringBuilder, textPaint2, i10, 1.0f, messageObject.totalAnimatedEmojiCount < 4 ? -1.0f : f2, false);
        final int[] iArr3 = new int[2];
        chatMessageCell.getLocationOnScreen(iArr3);
        final int[] iArr22 = {iArr3[0] + ((int) f5), iArr3[1] + ((int) f6)};
        final Bitmap bitmap22 = bitmap;
        this.scrimDrawable = new Drawable() { // from class: org.telegram.ui.Components.ScrimOptions.4
            private int alpha = 255;

            @Override // android.graphics.drawable.Drawable
            public int getOpacity() {
                return -2;
            }

            @Override // android.graphics.drawable.Drawable
            public void setColorFilter(ColorFilter colorFilter) {
            }

            @Override // android.graphics.drawable.Drawable
            public void draw(Canvas canvas2) {
                if (this.alpha <= 0) {
                    return;
                }
                RectF rectF4 = AndroidUtilities.rectTmp;
                rectF4.set(getBounds());
                rectF4.left -= LinkPath.getRadius() / 2.0f;
                canvas2.save();
                canvas2.saveLayerAlpha(rectF4, this.alpha, 31);
                int[] iArr32 = iArr22;
                canvas2.translate(iArr32[0], iArr32[1]);
                ChatMessageCell chatMessageCell2 = chatMessageCell;
                if (chatMessageCell2 != null && chatMessageCell2.drawBackgroundInParent()) {
                    Theme.MessageDrawable messageDrawable = chatMessageCell.currentBackgroundDrawable;
                    if (messageDrawable != null && messageDrawable.getPaint() != null) {
                        canvas2.save();
                        canvas2.translate(0.0f, -chatMessageCell.currentBackgroundDrawable.getTopY());
                        canvas2.drawPaint(chatMessageCell.currentBackgroundDrawable.getPaint());
                        canvas2.restore();
                    } else {
                        int[] iArr4 = iArr22;
                        canvas2.translate(-iArr4[0], -iArr4[1]);
                        int[] iArr5 = iArr3;
                        canvas2.translate(iArr5[0], iArr5[1] + chatMessageCell.getPaddingTop());
                        chatMessageCell.drawBackgroundInternal(canvas2, true);
                        int[] iArr6 = iArr3;
                        canvas2.translate(-iArr6[0], (-iArr6[1]) - chatMessageCell.getPaddingTop());
                        int[] iArr7 = iArr22;
                        canvas2.translate(iArr7[0], iArr7[1]);
                    }
                    if (bitmap22 != null) {
                        canvas2.save();
                        Bitmap bitmap3 = bitmap22;
                        RectF rectF5 = rectF3;
                        canvas2.drawBitmap(bitmap3, rectF5.left, rectF5.top, paint42);
                        canvas2.restore();
                    }
                } else {
                    canvas2.drawPath(linkPath2, paint);
                }
                canvas2.clipPath(linkPath2);
                staticLayoutMakeStaticLayout22.draw(canvas2);
                canvas2.restore();
            }

            @Override // android.graphics.drawable.Drawable
            public void setAlpha(int i122) {
                this.alpha = i122;
            }
        };
        int radius2 = (int) (iArr3[0] + f5 + rectF3.left + (LinkPath.getRadius() / 2.0f));
        int i122 = (int) (iArr3[1] + f6 + rectF3.top);
        this.scrimDrawable.setBounds(radius2, i122, ((int) rectF3.width()) + radius2, ((int) rectF3.height()) + i122);
        if (charSequence == null) {
        }
    }
}
