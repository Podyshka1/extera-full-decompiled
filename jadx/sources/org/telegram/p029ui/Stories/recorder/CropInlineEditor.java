package org.telegram.p029ui.Stories.recorder;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaController;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.BubbleActivity;
import org.telegram.p029ui.Components.AnimatedFloat;
import org.telegram.p029ui.Components.Crop.CropRotationWheel;
import org.telegram.p029ui.Components.Crop.CropTransform;
import org.telegram.p029ui.Components.Crop.CropView;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.Paint.Views.EntityView;
import org.telegram.p029ui.Components.Paint.Views.PhotoView;

/* JADX INFO: loaded from: classes7.dex */
public abstract class CropInlineEditor extends FrameLayout {
    private final AnimatedFloat animatedMirror;
    private final AnimatedFloat animatedOrientation;
    private float appearProgress;
    public boolean applied;
    public final FrameLayout buttonsLayout;
    public final TextView cancelButton;
    public boolean closing;
    public final ContentView contentView;
    public final FrameLayout controlsLayout;
    public final TextView cropButton;
    private final CropTransform cropTransform;
    public final CropView cropView;
    private int lastOrientation;
    private PhotoView photoView;
    private final int[] photoViewLocation;
    private final PreviewView previewContainer;
    private final int[] previewLocation;
    public final TextView resetButton;
    private final Theme.ResourcesProvider resourcesProvider;
    public final LinearLayout shapesLayout;
    private final int[] thisLocation;
    public final CropRotationWheel wheel;

    protected abstract void close();

    /* JADX INFO: Access modifiers changed from: private */
    public int getCurrentWidth() {
        PhotoView photoView = this.photoView;
        if (photoView == null) {
            return 1;
        }
        return (photoView.getOrientation() == 90 || this.photoView.getOrientation() == 270) ? this.photoView.getContentHeight() : this.photoView.getContentWidth();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getCurrentHeight() {
        PhotoView photoView = this.photoView;
        if (photoView == null) {
            return 1;
        }
        return (photoView.getOrientation() == 90 || this.photoView.getOrientation() == 270) ? this.photoView.getContentWidth() : this.photoView.getContentHeight();
    }

    public CropInlineEditor(Context context, PreviewView previewView, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.lastOrientation = 0;
        this.appearProgress = 0.0f;
        this.thisLocation = new int[2];
        this.previewLocation = new int[2];
        this.photoViewLocation = new int[2];
        this.cropTransform = new CropTransform();
        this.previewContainer = previewView;
        this.resourcesProvider = resourcesProvider;
        ContentView contentView = new ContentView(context);
        this.contentView = contentView;
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        this.animatedMirror = new AnimatedFloat(contentView, 0L, 320L, cubicBezierInterpolator);
        this.animatedOrientation = new AnimatedFloat(contentView, 0L, 320L, cubicBezierInterpolator);
        CropView cropView = new CropView(context) { // from class: org.telegram.ui.Stories.recorder.CropInlineEditor.1
            @Override // org.telegram.p029ui.Components.Crop.CropView
            public int getCurrentWidth() {
                return CropInlineEditor.this.getCurrentWidth();
            }

            @Override // org.telegram.p029ui.Components.Crop.CropView
            public int getCurrentHeight() {
                return CropInlineEditor.this.getCurrentHeight();
            }
        };
        this.cropView = cropView;
        cropView.setListener(new CropView.CropViewListener() { // from class: org.telegram.ui.Stories.recorder.CropInlineEditor.2
            @Override // org.telegram.ui.Components.Crop.CropView.CropViewListener
            public void onAspectLock(boolean z) {
            }

            @Override // org.telegram.ui.Components.Crop.CropView.CropViewListener
            public void onChange(boolean z) {
            }

            @Override // org.telegram.ui.Components.Crop.CropView.CropViewListener
            public void onTapUp() {
            }

            @Override // org.telegram.ui.Components.Crop.CropView.CropViewListener
            public void onUpdate() {
                CropInlineEditor.this.contentView.invalidate();
            }
        });
        addView(cropView);
        FrameLayout frameLayout = new FrameLayout(context);
        this.controlsLayout = frameLayout;
        addView(frameLayout, LayoutHelper.createFrame(-1, -1, 119));
        CropRotationWheel cropRotationWheel = new CropRotationWheel(context);
        this.wheel = cropRotationWheel;
        cropRotationWheel.setListener(new CropRotationWheel.RotationWheelListener() { // from class: org.telegram.ui.Stories.recorder.CropInlineEditor.3
            @Override // org.telegram.ui.Components.Crop.CropRotationWheel.RotationWheelListener
            public void onStart() {
                CropInlineEditor.this.cropView.onRotationBegan();
            }

            @Override // org.telegram.ui.Components.Crop.CropRotationWheel.RotationWheelListener
            public void onChange(float f) {
                CropInlineEditor.this.cropView.setRotation(f);
            }

            @Override // org.telegram.ui.Components.Crop.CropRotationWheel.RotationWheelListener
            public void onEnd(float f) {
                CropInlineEditor.this.cropView.onRotationEnded();
            }

            @Override // org.telegram.ui.Components.Crop.CropRotationWheel.RotationWheelListener
            public void aspectRatioPressed() {
                CropInlineEditor.this.cropView.showAspectRatioDialog();
            }

            @Override // org.telegram.ui.Components.Crop.CropRotationWheel.RotationWheelListener
            public boolean rotate90Pressed() {
                boolean zRotate = CropInlineEditor.this.cropView.rotate(-90.0f);
                CropInlineEditor.this.cropView.maximize(true);
                CropInlineEditor.this.contentView.invalidate();
                return zRotate;
            }

            @Override // org.telegram.ui.Components.Crop.CropRotationWheel.RotationWheelListener
            public boolean mirror() {
                CropInlineEditor.this.contentView.invalidate();
                return CropInlineEditor.this.cropView.mirror();
            }
        });
        frameLayout.addView(cropRotationWheel, LayoutHelper.createFrame(-1, -2.0f, 81, 0.0f, 0.0f, 0.0f, 52.0f));
        FrameLayout frameLayout2 = new FrameLayout(context);
        this.buttonsLayout = frameLayout2;
        frameLayout.addView(frameLayout2, LayoutHelper.createFrame(-1, 52.0f, 80, 0.0f, 0.0f, 0.0f, 0.0f));
        TextView textView = new TextView(context);
        this.cancelButton = textView;
        textView.setTextSize(1, 14.0f);
        textView.setTypeface(AndroidUtilities.bold());
        textView.setBackground(Theme.createSelectorDrawable(-12763843, 0));
        textView.setTextColor(-1);
        textView.setText(LocaleController.getString(C2888R.string.Cancel));
        textView.setPadding(AndroidUtilities.m1124dp(12.0f), 0, AndroidUtilities.m1124dp(12.0f), 0);
        frameLayout2.addView(textView, LayoutHelper.createFrame(-2, -1, 115));
        textView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.recorder.CropInlineEditor$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$0(view);
            }
        });
        TextView textView2 = new TextView(context);
        this.resetButton = textView2;
        textView2.setTextSize(1, 14.0f);
        textView2.setTypeface(AndroidUtilities.bold());
        textView2.setBackground(Theme.createSelectorDrawable(-12763843, 0));
        textView2.setTextColor(-1);
        textView2.setText(LocaleController.getString(C2888R.string.CropReset));
        textView2.setPadding(AndroidUtilities.m1124dp(12.0f), 0, AndroidUtilities.m1124dp(12.0f), 0);
        frameLayout2.addView(textView2, LayoutHelper.createFrame(-2, -1, 113));
        textView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.recorder.CropInlineEditor$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$1(view);
            }
        });
        TextView textView3 = new TextView(context);
        this.cropButton = textView3;
        textView3.setTextSize(1, 14.0f);
        textView3.setTypeface(AndroidUtilities.bold());
        textView3.setBackground(Theme.createSelectorDrawable(-12763843, 0));
        textView3.setTextColor(-15098625);
        textView3.setText(LocaleController.getString(C2888R.string.StoryCrop));
        textView3.setPadding(AndroidUtilities.m1124dp(12.0f), 0, AndroidUtilities.m1124dp(12.0f), 0);
        frameLayout2.addView(textView3, LayoutHelper.createFrame(-2, -1, 117));
        textView3.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.recorder.CropInlineEditor$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$2(view);
            }
        });
        this.shapesLayout = new LinearLayout(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        close();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(View view) {
        this.cropView.reset(true);
        this.wheel.setRotated(false);
        this.wheel.setMirrored(false);
        this.wheel.setRotation(0.0f, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(View view) {
        apply();
        close();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.cropView.setTopPadding(AndroidUtilities.m1124dp(52.0f));
        this.cropView.setBottomPadding(this.controlsLayout.getPaddingBottom() + AndroidUtilities.m1124dp(116.0f));
        super.onLayout(z, i, i2, i3, i4);
    }

    public void set(PhotoView photoView) {
        if (photoView == null) {
            return;
        }
        this.photoView = photoView;
        setVisibility(0);
        this.applied = false;
        this.closing = false;
        this.cropView.onShow();
        getLocationOnScreen(this.thisLocation);
        this.previewContainer.getLocationOnScreen(this.previewLocation);
        photoView.getLocationOnScreen(this.photoViewLocation);
        MediaController.CropState cropState = photoView.crop;
        if (cropState == null) {
            cropState = null;
        }
        MediaController.CropState cropState2 = cropState;
        this.cropView.start(photoView.getOrientation(), true, false, this.cropTransform, cropState2);
        this.wheel.setRotation(this.cropView.getRotation());
        if (cropState2 != null) {
            this.wheel.setRotation(cropState2.cropRotate, false);
            this.wheel.setRotated(cropState2.transformRotation != 0);
            this.wheel.setMirrored(cropState2.mirrored);
            this.animatedMirror.set(cropState2.mirrored, false);
        } else {
            this.wheel.setRotation(0.0f, false);
            this.wheel.setRotated(false);
            this.wheel.setMirrored(false);
            this.animatedMirror.set(false, false);
        }
        this.cropView.updateMatrix();
        this.contentView.setVisibility(0);
        this.contentView.invalidate();
    }

    public void disappearStarts() {
        this.closing = true;
    }

    public void stop() {
        this.photoView = null;
        this.cropView.stop();
        this.cropView.onHide();
        this.contentView.setVisibility(8);
        setVisibility(8);
    }

    public void apply() {
        PhotoView photoView = this.photoView;
        if (photoView == null) {
            return;
        }
        this.applied = true;
        photoView.crop = new MediaController.CropState();
        this.cropView.applyToCropState(this.photoView.crop);
        PhotoView photoView2 = this.photoView;
        photoView2.crop.orientation = photoView2.getOrientation();
        this.photoView.updatePosition();
        this.photoView.requestLayout();
        this.photoView.containerView.requestLayout();
        this.photoView.containerView.invalidate();
        this.photoView.containerView.post(new Runnable() { // from class: org.telegram.ui.Stories.recorder.CropInlineEditor$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$apply$3();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$apply$3() {
        EntityView.SelectionView selectionView = this.photoView.selectionView;
        if (selectionView != null) {
            selectionView.updatePosition();
        }
        this.photoView.updatePosition();
    }

    public float getAppearProgress() {
        return this.appearProgress;
    }

    public void setAppearProgress(float f) {
        if (Math.abs(this.appearProgress - f) < 0.001f) {
            return;
        }
        this.appearProgress = f;
        this.contentView.invalidate();
        this.cropView.areaView.setDimAlpha(0.5f * f);
        this.cropView.areaView.setFrameAlpha(f);
        this.cropView.areaView.invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
    }

    public class ContentView extends View {
        private final Paint dimPaint;
        private final Matrix identityMatrix;
        private final Matrix matrix;
        private final Path previewClipPath;
        private final RectF previewClipRect;
        private final Matrix previewMatrix;

        public ContentView(Context context) {
            super(context);
            this.dimPaint = new Paint(1);
            this.previewClipPath = new Path();
            this.previewClipRect = new RectF();
            this.previewMatrix = new Matrix();
            this.identityMatrix = new Matrix();
            this.matrix = new Matrix();
        }

        @Override // android.view.View
        protected void dispatchDraw(Canvas canvas) {
            float f;
            float f2;
            if (CropInlineEditor.this.photoView == null) {
                return;
            }
            canvas.save();
            this.dimPaint.setColor(-16777216);
            this.dimPaint.setAlpha((int) (CropInlineEditor.this.appearProgress * 255.0f));
            canvas.drawRect(0.0f, 0.0f, getWidth(), getHeight(), this.dimPaint);
            boolean zIsMirrored = true;
            if (CropInlineEditor.this.appearProgress < 1.0f) {
                this.previewClipPath.rewind();
                this.previewClipRect.set(0.0f, 0.0f, CropInlineEditor.this.previewContainer.getWidth(), CropInlineEditor.this.previewContainer.getHeight());
                this.previewClipRect.offset(CropInlineEditor.this.previewLocation[0], CropInlineEditor.this.previewLocation[1]);
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(0.0f, 0.0f, getWidth(), getHeight());
                AndroidUtilities.lerp(this.previewClipRect, rectF, CropInlineEditor.this.appearProgress, this.previewClipRect);
                float fLerp = AndroidUtilities.lerp(AndroidUtilities.m1124dp(12.0f), 0, CropInlineEditor.this.appearProgress);
                this.previewClipPath.addRoundRect(this.previewClipRect, fLerp, fLerp, Path.Direction.CW);
                canvas.clipPath(this.previewClipPath);
            }
            float f3 = 1.0f - CropInlineEditor.this.appearProgress;
            float f4 = CropInlineEditor.this.appearProgress;
            canvas.translate((-CropInlineEditor.this.thisLocation[0]) * f3, (-CropInlineEditor.this.thisLocation[1]) * f3);
            if (f3 > 0.0f) {
                CropInlineEditor cropInlineEditor = CropInlineEditor.this;
                if (cropInlineEditor.closing) {
                    cropInlineEditor.photoView.getLocationOnScreen(CropInlineEditor.this.photoViewLocation);
                }
                canvas.translate(CropInlineEditor.this.photoViewLocation[0] * f3, CropInlineEditor.this.photoViewLocation[1] * f3);
                if (CropInlineEditor.this.photoView.crop != null) {
                    f = CropInlineEditor.this.photoView.crop.cropPw;
                    f2 = CropInlineEditor.this.photoView.crop.cropPh;
                } else {
                    f = 1.0f;
                    f2 = 1.0f;
                }
                float fLerp2 = AndroidUtilities.lerp(1.0f, ((CropInlineEditor.this.photoView.getWidth() / f) * CropInlineEditor.this.photoView.getScaleX()) / CropInlineEditor.this.previewContainer.getWidth(), f3);
                canvas.scale(fLerp2, fLerp2);
                canvas.rotate(CropInlineEditor.this.photoView.getRotation() * f3);
                canvas.translate(((CropInlineEditor.this.photoView.getContentWidth() * f) / 2.0f) * f3, ((CropInlineEditor.this.photoView.getContentHeight() * f2) / 2.0f) * f3);
            }
            canvas.translate((AndroidUtilities.m1124dp(16.0f) + (getContainerWidth() / 2.0f)) * f4, (CropInlineEditor.this.cropView.topPadding + (!(getContext() instanceof BubbleActivity) ? AndroidUtilities.statusBarHeight : 0) + ((getContainerHeight() + AndroidUtilities.m1124dp(32.0f)) / 2.0f)) * f4);
            if (f3 > 0.0f) {
                float contentWidth = CropInlineEditor.this.photoView.getContentWidth();
                float contentHeight = CropInlineEditor.this.photoView.getContentHeight();
                float f5 = CropInlineEditor.this.photoView.crop != null ? CropInlineEditor.this.photoView.crop.cropPw : 1.0f;
                float f6 = CropInlineEditor.this.photoView.crop != null ? CropInlineEditor.this.photoView.crop.cropPh : 1.0f;
                float fLerp3 = (contentWidth * AndroidUtilities.lerp(1.0f, f5, f3)) / 2.0f;
                float fLerp4 = (contentHeight * AndroidUtilities.lerp(1.0f, f6, f3)) / 2.0f;
                float fLerp5 = AndroidUtilities.lerp(1.0f, 4.0f, f4);
                canvas.clipRect((-fLerp3) * fLerp5, (-fLerp4) * fLerp5, fLerp3 * fLerp5, fLerp4 * fLerp5);
            }
            applyCrop(canvas, f4, f3, 1.0f);
            canvas.rotate(CropInlineEditor.this.photoView.getOrientation());
            AnimatedFloat animatedFloat = CropInlineEditor.this.animatedMirror;
            CropInlineEditor cropInlineEditor2 = CropInlineEditor.this;
            if (!cropInlineEditor2.closing) {
                zIsMirrored = cropInlineEditor2.cropView.isMirrored();
            } else if (cropInlineEditor2.photoView.crop == null || !CropInlineEditor.this.photoView.crop.mirrored) {
                zIsMirrored = false;
            }
            canvas.scale(AndroidUtilities.lerp(1.0f, -1.0f, animatedFloat.set(zIsMirrored)), 1.0f);
            canvas.translate((-CropInlineEditor.this.photoView.getContentWidth()) / 2.0f, (-CropInlineEditor.this.photoView.getContentHeight()) / 2.0f);
            CropInlineEditor.this.photoView.drawContent(canvas);
            canvas.restore();
        }

        private float getContainerWidth() {
            return getWidth() - AndroidUtilities.m1124dp(32.0f);
        }

        private float getContainerHeight() {
            boolean z = getContext() instanceof BubbleActivity;
            CropView cropView = CropInlineEditor.this.cropView;
            return ((getHeight() - (cropView.topPadding + (!z ? AndroidUtilities.statusBarHeight : 0))) - cropView.bottomPadding) - AndroidUtilities.m1124dp(32.0f);
        }

        private void applyCrop(Canvas canvas, float f, float f2, float f3) {
            float fLerp;
            float fLerp2;
            int currentWidth = CropInlineEditor.this.getCurrentWidth();
            int currentHeight = CropInlineEditor.this.getCurrentHeight();
            int orientation = CropInlineEditor.this.cropTransform.getOrientation();
            if (orientation == 90 || orientation == 270) {
                currentHeight = currentWidth;
                currentWidth = currentHeight;
            }
            float trueCropScale = ((CropInlineEditor.this.cropTransform.getTrueCropScale() - 1.0f) * (1.0f - f)) + 1.0f;
            float f4 = currentWidth;
            float containerWidth = getContainerWidth() / f4;
            float f5 = currentHeight;
            if (containerWidth * f5 > getContainerHeight()) {
                containerWidth = getContainerHeight() / f5;
            }
            canvas.translate(CropInlineEditor.this.cropTransform.getCropAreaX() * f3, CropInlineEditor.this.cropTransform.getCropAreaY() * f3);
            float scale = (CropInlineEditor.this.cropTransform.getScale() / trueCropScale) * containerWidth;
            if (CropInlineEditor.this.photoView != null && CropInlineEditor.this.photoView.crop != null) {
                fLerp = AndroidUtilities.lerp(CropInlineEditor.this.photoView.crop.cropScale, scale, f);
            } else {
                fLerp = AndroidUtilities.lerp(1.0f, scale, f);
            }
            canvas.scale(fLerp, fLerp);
            canvas.translate(CropInlineEditor.this.cropTransform.getCropPx() * f4 * f3, CropInlineEditor.this.cropTransform.getCropPy() * f5 * f3);
            float orientation2 = CropInlineEditor.this.photoView.getOrientation() + CropInlineEditor.this.cropTransform.getRotation() + CropInlineEditor.this.animatedOrientation.set(((CropInlineEditor.this.lastOrientation / 360) * 360) + orientation);
            if (CropInlineEditor.this.photoView.crop == null) {
                fLerp2 = AndroidUtilities.lerp(0.0f, orientation2, CropInlineEditor.this.appearProgress);
            } else {
                fLerp2 = AndroidUtilities.lerp(CropInlineEditor.this.photoView.crop.cropRotate + CropInlineEditor.this.photoView.crop.transformRotation, orientation2, CropInlineEditor.this.appearProgress);
            }
            canvas.rotate(fLerp2);
        }
    }
}
