package org.telegram.p029ui.Components.Paint.Views;

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
import android.graphics.Insets;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.WindowInsetsCompat;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.AnimatedFloat;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.ItemOptions;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.MessagePreviewView;
import org.telegram.p029ui.Components.Paint.Views.LinkPreview;
import org.telegram.p029ui.Stories.DarkThemeResourceProvider;
import org.telegram.p029ui.Stories.recorder.PreviewView;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes7.dex */
public class StoryLinkPreviewDialog extends Dialog {
    private final FrameLayout actionBarContainer;
    private final ImageView backgroundView;
    private Bitmap blurBitmap;
    private Paint blurBitmapPaint;
    private BitmapShader blurBitmapShader;
    private Matrix blurMatrix;
    private final MessagePreviewView.ToggleButton captionButton;
    private final LinearLayout containerView;
    private final int currentAccount;
    private boolean dismissing;
    private final Rect insets;
    private LinkPreview.WebPagePreview link;
    private final LinkPreview linkView;
    private ValueAnimator openAnimator;
    private float openProgress;
    private final MessagePreviewView.ToggleButton photoButton;
    private final FrameLayout previewContainer;
    private final FrameLayout previewInnerContainer;
    private final Theme.ResourcesProvider resourcesProvider;
    private final TextView subtitleTextView;
    private final TextView titleTextView;
    private Utilities.Callback whenDone;
    private final FrameLayout windowView;

    public StoryLinkPreviewDialog(Context context, final int i) {
        super(context, C2888R.style.TransparentDialog);
        DarkThemeResourceProvider darkThemeResourceProvider = new DarkThemeResourceProvider();
        this.resourcesProvider = darkThemeResourceProvider;
        this.insets = new Rect();
        this.dismissing = false;
        this.currentAccount = i;
        FrameLayout frameLayout = new FrameLayout(context) { // from class: org.telegram.ui.Components.Paint.Views.StoryLinkPreviewDialog.1
            @Override // android.view.ViewGroup, android.view.View
            protected void dispatchDraw(Canvas canvas) {
                Canvas canvas2;
                if (StoryLinkPreviewDialog.this.openProgress <= 0.0f || StoryLinkPreviewDialog.this.blurBitmapPaint == null) {
                    canvas2 = canvas;
                } else {
                    StoryLinkPreviewDialog.this.blurMatrix.reset();
                    float width = getWidth() / StoryLinkPreviewDialog.this.blurBitmap.getWidth();
                    StoryLinkPreviewDialog.this.blurMatrix.postScale(width, width);
                    StoryLinkPreviewDialog.this.blurBitmapShader.setLocalMatrix(StoryLinkPreviewDialog.this.blurMatrix);
                    StoryLinkPreviewDialog.this.blurBitmapPaint.setAlpha((int) (StoryLinkPreviewDialog.this.openProgress * 255.0f));
                    canvas2 = canvas;
                    canvas2.drawRect(0.0f, 0.0f, getWidth(), getHeight(), StoryLinkPreviewDialog.this.blurBitmapPaint);
                }
                super.dispatchDraw(canvas2);
            }

            @Override // android.view.ViewGroup, android.view.View
            public boolean dispatchKeyEventPreIme(KeyEvent keyEvent) {
                if (keyEvent != null && keyEvent.getKeyCode() == 4 && keyEvent.getAction() == 1) {
                    StoryLinkPreviewDialog.this.onBackPressed();
                    return true;
                }
                return super.dispatchKeyEventPreIme(keyEvent);
            }
        };
        this.windowView = frameLayout;
        frameLayout.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Paint.Views.StoryLinkPreviewDialog$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$0(view);
            }
        });
        LinearLayout linearLayout = new LinearLayout(context) { // from class: org.telegram.ui.Components.Paint.Views.StoryLinkPreviewDialog.2
            @Override // android.widget.LinearLayout, android.view.View
            protected void onMeasure(int i2, int i3) {
                super.onMeasure(View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i2), AndroidUtilities.m1124dp(600.0f)), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i3), AndroidUtilities.m1124dp(800.0f)), TLObject.FLAG_30));
            }
        };
        this.containerView = linearLayout;
        linearLayout.setOrientation(1);
        frameLayout.addView(linearLayout, LayoutHelper.createFrame(-2, -2.0f, 17, 8.0f, 8.0f, 8.0f, 8.0f));
        FrameLayout frameLayout2 = new FrameLayout(context) { // from class: org.telegram.ui.Components.Paint.Views.StoryLinkPreviewDialog.3
            private final Path path = new Path();
            private final RectF rect = new RectF();

            @Override // android.widget.FrameLayout, android.view.View
            protected void onMeasure(int i2, int i3) {
                super.onMeasure(i2, i3);
                this.path.rewind();
                this.rect.set(0.0f, 0.0f, getMeasuredWidth(), getMeasuredHeight());
                this.path.addRoundRect(this.rect, AndroidUtilities.m1124dp(10.0f), AndroidUtilities.m1124dp(10.0f), Path.Direction.CW);
                if (StoryLinkPreviewDialog.this.linkView != null) {
                    StoryLinkPreviewDialog.this.linkView.setMaxWidth(getMeasuredWidth() - AndroidUtilities.m1124dp(32.0f));
                }
            }

            @Override // android.view.View
            public void draw(Canvas canvas) {
                canvas.save();
                canvas.clipPath(this.path);
                super.draw(canvas);
                canvas.restore();
            }
        };
        this.previewContainer = frameLayout2;
        frameLayout2.setWillNotDraw(false);
        linearLayout.addView(frameLayout2, LayoutHelper.createLinear(-1, -2, 1.0f, 49, 0, 0, 0, 0));
        FrameLayout frameLayout3 = new FrameLayout(context);
        this.actionBarContainer = frameLayout3;
        frameLayout3.setBackgroundColor(-14737633);
        frameLayout2.addView(frameLayout3, LayoutHelper.createFrame(-1, 56, 55));
        TextView textView = new TextView(context);
        this.titleTextView = textView;
        textView.setText(LocaleController.getString(C2888R.string.StoryLinkPreviewTitle));
        textView.setTextColor(-1);
        textView.setTextSize(1, 18.0f);
        textView.setTypeface(AndroidUtilities.bold());
        frameLayout3.addView(textView, LayoutHelper.createFrame(-1, -2.0f, 55, 18.0f, 8.33f, 18.0f, 0.0f));
        TextView textView2 = new TextView(context);
        this.subtitleTextView = textView2;
        textView2.setText(LocaleController.getString(C2888R.string.StoryLinkPreviewSubtitle));
        textView2.setTextColor(-8421505);
        textView2.setTextSize(1, 14.0f);
        frameLayout3.addView(textView2, LayoutHelper.createFrame(-1, -2.0f, 55, 18.0f, 31.0f, 18.0f, 0.0f));
        FrameLayout frameLayout4 = new FrameLayout(context) { // from class: org.telegram.ui.Components.Paint.Views.StoryLinkPreviewDialog.4

            /* JADX INFO: renamed from: x */
            private final AnimatedFloat f2002x;

            /* JADX INFO: renamed from: y */
            private final AnimatedFloat f2003y;

            {
                CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
                this.f2002x = new AnimatedFloat(this, 0L, 350L, cubicBezierInterpolator);
                this.f2003y = new AnimatedFloat(this, 0L, 350L, cubicBezierInterpolator);
            }

            @Override // android.view.ViewGroup
            protected boolean drawChild(Canvas canvas, View view, long j) {
                if (view == StoryLinkPreviewDialog.this.linkView) {
                    canvas.save();
                    canvas.translate(this.f2002x.set(view.getX()), this.f2003y.set(view.getY()));
                    StoryLinkPreviewDialog.this.linkView.drawInternal(canvas);
                    canvas.restore();
                    return true;
                }
                return super.drawChild(canvas, view, j);
            }
        };
        this.previewInnerContainer = frameLayout4;
        frameLayout2.addView(frameLayout4, LayoutHelper.createFrame(-1, -1.0f, 119, 0.0f, 56.0f, 0.0f, 0.0f));
        ImageView imageView = new ImageView(context);
        this.backgroundView = imageView;
        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        frameLayout4.addView(imageView, LayoutHelper.createFrame(-1, -1, 119));
        LinkPreview linkPreview = new LinkPreview(context, AndroidUtilities.density) { // from class: org.telegram.ui.Components.Paint.Views.StoryLinkPreviewDialog.5
            @Override // android.view.View
            public void invalidate() {
                StoryLinkPreviewDialog.this.previewInnerContainer.invalidate();
                super.invalidate();
            }
        };
        this.linkView = linkPreview;
        frameLayout4.addView(linkPreview, LayoutHelper.createFrame(-2, -2, 17));
        ItemOptions itemOptionsMakeOptions = ItemOptions.makeOptions(frameLayout, darkThemeResourceProvider, frameLayout);
        MessagePreviewView.ToggleButton toggleButton = new MessagePreviewView.ToggleButton(getContext(), C2888R.raw.position_below, LocaleController.getString(C2888R.string.StoryLinkCaptionAbove), C2888R.raw.position_above, LocaleController.getString(C2888R.string.StoryLinkCaptionBelow), darkThemeResourceProvider);
        this.captionButton = toggleButton;
        toggleButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Paint.Views.StoryLinkPreviewDialog$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$1(i, view);
            }
        });
        itemOptionsMakeOptions.addView(toggleButton);
        MessagePreviewView.ToggleButton toggleButton2 = new MessagePreviewView.ToggleButton(context, C2888R.raw.media_shrink, LocaleController.getString(C2888R.string.LinkMediaLarger), C2888R.raw.media_enlarge, LocaleController.getString(C2888R.string.LinkMediaSmaller), darkThemeResourceProvider);
        this.photoButton = toggleButton2;
        toggleButton2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Paint.Views.StoryLinkPreviewDialog$$ExternalSyntheticLambda6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$2(i, view);
            }
        });
        itemOptionsMakeOptions.addView(toggleButton2);
        itemOptionsMakeOptions.addGap();
        itemOptionsMakeOptions.add(C2888R.drawable.msg_select, LocaleController.getString(C2888R.string.ApplyChanges), new Runnable() { // from class: org.telegram.ui.Components.Paint.Views.StoryLinkPreviewDialog$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.dismiss();
            }
        });
        itemOptionsMakeOptions.add(C2888R.drawable.msg_delete, (CharSequence) LocaleController.getString(C2888R.string.DoNotLinkPreview), true, new Runnable() { // from class: org.telegram.ui.Components.Paint.Views.StoryLinkPreviewDialog$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$3();
            }
        });
        linearLayout.addView(itemOptionsMakeOptions.getLayout(), LayoutHelper.createLinear(-2, -2, 0.0f, 85));
        frameLayout.setFitsSystemWindows(true);
        frameLayout.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: org.telegram.ui.Components.Paint.Views.StoryLinkPreviewDialog.6
            @Override // android.view.View.OnApplyWindowInsetsListener
            public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                int i2 = Build.VERSION.SDK_INT;
                if (i2 >= 30) {
                    Insets insets = windowInsets.getInsets(WindowInsetsCompat.Type.displayCutout() | WindowInsetsCompat.Type.systemBars());
                    StoryLinkPreviewDialog.this.insets.set(insets.left, insets.top, insets.right, insets.bottom);
                } else {
                    StoryLinkPreviewDialog.this.insets.set(windowInsets.getStableInsetLeft(), windowInsets.getStableInsetTop(), windowInsets.getStableInsetRight(), windowInsets.getStableInsetBottom());
                }
                StoryLinkPreviewDialog.this.windowView.setPadding(StoryLinkPreviewDialog.this.insets.left, StoryLinkPreviewDialog.this.insets.top, StoryLinkPreviewDialog.this.insets.right, StoryLinkPreviewDialog.this.insets.bottom);
                StoryLinkPreviewDialog.this.windowView.requestLayout();
                if (i2 >= 30) {
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

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(int i, View view) {
        LinkPreview.WebPagePreview webPagePreview = this.link;
        boolean z = webPagePreview.captionAbove;
        webPagePreview.captionAbove = !z;
        this.captionButton.setState(z, true);
        this.linkView.set(i, this.link, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(int i, View view) {
        LinkPreview.WebPagePreview webPagePreview = this.link;
        boolean z = webPagePreview.largePhoto;
        webPagePreview.largePhoto = !z;
        this.photoButton.setState(z, true);
        this.linkView.set(i, this.link, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3() {
        Utilities.Callback callback = this.whenDone;
        if (callback != null) {
            callback.run(null);
            this.whenDone = null;
        }
        dismiss();
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Window window = getWindow();
        window.setWindowAnimations(C2888R.style.DialogNoAnimation);
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

    private void animateOpenTo(final boolean z, final Runnable runnable) {
        ValueAnimator valueAnimator = this.openAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.openProgress, z ? 1.0f : 0.0f);
        this.openAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.Paint.Views.StoryLinkPreviewDialog$$ExternalSyntheticLambda3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f$0.lambda$animateOpenTo$4(valueAnimator2);
            }
        });
        this.openAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.Paint.Views.StoryLinkPreviewDialog.7
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                StoryLinkPreviewDialog.this.openProgress = z ? 1.0f : 0.0f;
                StoryLinkPreviewDialog.this.containerView.setAlpha(StoryLinkPreviewDialog.this.openProgress);
                StoryLinkPreviewDialog.this.containerView.setScaleX(AndroidUtilities.lerp(0.9f, 1.0f, StoryLinkPreviewDialog.this.openProgress));
                StoryLinkPreviewDialog.this.containerView.setScaleY(AndroidUtilities.lerp(0.9f, 1.0f, StoryLinkPreviewDialog.this.openProgress));
                StoryLinkPreviewDialog.this.windowView.invalidate();
                Runnable runnable2 = runnable;
                if (runnable2 != null) {
                    AndroidUtilities.runOnUIThread(runnable2);
                }
            }
        });
        this.openAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        this.openAnimator.setDuration(z ? 420L : 320L);
        this.openAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateOpenTo$4(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.openProgress = fFloatValue;
        this.containerView.setAlpha(fFloatValue);
        this.containerView.setScaleX(AndroidUtilities.lerp(0.9f, 1.0f, this.openProgress));
        this.containerView.setScaleY(AndroidUtilities.lerp(0.9f, 1.0f, this.openProgress));
        this.windowView.invalidate();
    }

    private void prepareBlur(final View view) {
        if (view != null) {
            view.setVisibility(4);
        }
        AndroidUtilities.makeGlobalBlurBitmap(new Utilities.Callback() { // from class: org.telegram.ui.Components.Paint.Views.StoryLinkPreviewDialog$$ExternalSyntheticLambda2
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$prepareBlur$5(view, (Bitmap) obj);
            }
        }, 14.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$prepareBlur$5(View view, Bitmap bitmap) {
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

    @Override // android.app.Dialog
    public void show() {
        if (AndroidUtilities.isSafeToShow(getContext())) {
            super.show();
            prepareBlur(null);
            animateOpenTo(true, null);
        }
    }

    @Override // android.app.Dialog
    public boolean isShowing() {
        return !this.dismissing;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        if (this.dismissing) {
            return;
        }
        Utilities.Callback callback = this.whenDone;
        if (callback != null) {
            callback.run(this.link);
            this.whenDone = null;
        }
        this.dismissing = true;
        animateOpenTo(false, new Runnable() { // from class: org.telegram.ui.Components.Paint.Views.StoryLinkPreviewDialog$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$dismiss$7();
            }
        });
        this.windowView.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$dismiss$6() {
        super.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$dismiss$7() {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Paint.Views.StoryLinkPreviewDialog$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$dismiss$6();
            }
        });
    }

    public void set(LinkPreview.WebPagePreview webPagePreview, Utilities.Callback callback) {
        TLRPC.WebPage webPage;
        this.link = webPagePreview;
        this.photoButton.setVisibility(webPagePreview != null && (webPage = webPagePreview.webpage) != null && (webPage.photo != null || MessageObject.isVideoDocument(webPage.document)) ? 0 : 8);
        this.linkView.set(this.currentAccount, webPagePreview, false);
        this.captionButton.setState(!webPagePreview.captionAbove, false);
        this.photoButton.setState(!webPagePreview.largePhoto, false);
        this.whenDone = callback;
    }

    public void setStoryPreviewView(final PreviewView previewView) {
        this.backgroundView.setImageDrawable(new Drawable() { // from class: org.telegram.ui.Components.Paint.Views.StoryLinkPreviewDialog.8
            @Override // android.graphics.drawable.Drawable
            public int getOpacity() {
                return -2;
            }

            @Override // android.graphics.drawable.Drawable
            public void setAlpha(int i) {
            }

            @Override // android.graphics.drawable.Drawable
            public void setColorFilter(ColorFilter colorFilter) {
            }

            @Override // android.graphics.drawable.Drawable
            public void draw(Canvas canvas) {
                canvas.save();
                canvas.translate(getBounds().left, getBounds().top);
                previewView.draw(canvas);
                canvas.restore();
            }

            @Override // android.graphics.drawable.Drawable
            public int getIntrinsicWidth() {
                return previewView.getWidth();
            }

            @Override // android.graphics.drawable.Drawable
            public int getIntrinsicHeight() {
                return previewView.getHeight();
            }
        });
    }
}
