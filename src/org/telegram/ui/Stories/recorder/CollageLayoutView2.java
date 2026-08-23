package org.telegram.ui.Stories.recorder;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.graphics.RenderEffect;
import android.graphics.RenderNode;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.view.MotionEvent;
import android.view.TextureView;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.dx.io.Opcodes;
import com.google.zxing.common.detector.MathUtils;
import java.util.ArrayList;
import java.util.Collections;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BotFullscreenButtons$$ExternalSyntheticApiModelOutline0;
import org.telegram.messenger.BotFullscreenButtons$$ExternalSyntheticApiModelOutline1;
import org.telegram.messenger.C2484R;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.camera.CameraView;
import org.telegram.messenger.video.VideoPlayerHolderBase;
import org.telegram.tgnet.TLObject;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.AnimatedFloat;
import org.telegram.ui.Components.BlurringShader;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.ItemOptions;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Stories.recorder.CollageLayout;
import org.telegram.ui.Stories.recorder.QRScanner;

/* JADX INFO: loaded from: classes7.dex */
public abstract class CollageLayoutView2 extends FrameLayout implements ItemOptions.ScrimView {
    private final AnimatedFloat[] animatedColumns;
    private final AnimatedFloat animatedReordering;
    private final AnimatedFloat animatedRows;
    private boolean attached;
    private final BlurringShader.BlurManager blurManager;
    private Object blurRenderNode;
    private Drawable cameraThumbDrawable;
    private boolean cameraThumbVisible;
    public CameraView cameraView;
    private Object cameraViewBlurRenderNode;
    private Runnable cancelGestures;
    private final Path clipPath;
    private final FrameLayout containerView;
    private CollageLayout currentLayout;
    public Part currentPart;
    public float dx;
    public float dy;
    private boolean fastSeek;
    private final LinearGradient gradient;
    private final Matrix gradientMatrix;
    private final int gradientWidth;
    private final Paint highlightPaint;
    private final Path highlightPath;
    public boolean isMuted;
    private long lastPausedPosition;
    public float ldx;
    public float ldy;
    private final float[] lefts;
    public Part longPressedPart;
    private boolean needsBlur;
    public Part nextPart;
    private Runnable onCameraThumbClick;
    public Runnable onLongPressPart;
    private Runnable onResetState;
    public final ArrayList parts;
    private boolean playing;
    public Part pressedPart;
    private boolean preview;
    private long previewStartTime;
    private PreviewView previewView;
    public final QRScanner.QrRegionDrawer qrDrawer;
    private final float[] radii;
    private final RectF rect;
    public final ArrayList removingParts;
    private Object renderNode;
    public boolean reordering;
    public Part reorderingPart;
    public boolean reorderingTouch;
    private final Runnable resetReordering;
    private final Theme.ResourcesProvider resourcesProvider;
    private boolean restorePositionOnPlaying;
    private final float[] rights;
    private final Runnable syncRunnable;
    private TimelineView timelineView;
    public float tx;
    public float ty;

    public static /* synthetic */ void $r8$lambda$BlCGMwGoirt0UuyA9LBLKQe06xM() {
    }

    public void forceNotRestorePosition() {
    }

    protected abstract void onLayoutUpdate(CollageLayout collageLayout);

    public CollageLayoutView2(Context context, BlurringShader.BlurManager blurManager, FrameLayout frameLayout, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.qrDrawer = new QRScanner.QrRegionDrawer(new CollageLayoutView2$$ExternalSyntheticLambda1(this));
        this.currentLayout = new CollageLayout(".");
        ArrayList arrayList = new ArrayList();
        this.parts = arrayList;
        this.removingParts = new ArrayList();
        Paint paint = new Paint(1);
        this.highlightPaint = paint;
        this.highlightPath = new Path();
        this.radii = new float[8];
        this.resetReordering = new Runnable() { // from class: org.telegram.ui.Stories.recorder.CollageLayoutView2$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$0();
            }
        };
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        this.animatedRows = new AnimatedFloat(this, 0L, 320L, cubicBezierInterpolator);
        this.animatedColumns = new AnimatedFloat[]{new AnimatedFloat(this, 0L, 320L, cubicBezierInterpolator), new AnimatedFloat(this, 0L, 320L, cubicBezierInterpolator), new AnimatedFloat(this, 0L, 320L, cubicBezierInterpolator), new AnimatedFloat(this, 0L, 320L, cubicBezierInterpolator), new AnimatedFloat(this, 0L, 320L, cubicBezierInterpolator)};
        this.animatedReordering = new AnimatedFloat(this, 0L, 320L, cubicBezierInterpolator);
        this.lefts = new float[5];
        this.rights = new float[5];
        this.rect = new RectF();
        this.clipPath = new Path();
        this.cameraThumbVisible = true;
        this.playing = true;
        this.restorePositionOnPlaying = true;
        this.syncRunnable = new Runnable() { // from class: org.telegram.ui.Stories.recorder.CollageLayoutView2$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$7();
            }
        };
        this.blurManager = blurManager;
        this.containerView = frameLayout;
        this.resourcesProvider = resourcesProvider;
        setBackgroundColor(-14737633);
        Part part = new Part();
        part.setPart((CollageLayout.Part) this.currentLayout.parts.get(0), false);
        part.setCurrent(true);
        if (this.attached) {
            part.imageReceiver.onAttachedToWindow();
        }
        arrayList.add(part);
        this.currentPart = part;
        this.nextPart = null;
        paint.setStyle(Paint.Style.STROKE);
        paint.setColor(-1);
        paint.setStrokeWidth(AndroidUtilities.dp(8.0f));
        int iDp = AndroidUtilities.dp(300.0f);
        this.gradientWidth = iDp;
        LinearGradient linearGradient = new LinearGradient(0.0f, 0.0f, iDp, 0.0f, new int[]{0, -1, -1, 0}, new float[]{0.0f, 0.2f, 0.8f, 1.0f}, Shader.TileMode.CLAMP);
        this.gradient = linearGradient;
        this.gradientMatrix = new Matrix();
        paint.setShader(linearGradient);
        setWillNotDraw(false);
    }

    public Part getCurrent() {
        return this.currentPart;
    }

    public Part getNext() {
        return this.nextPart;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        if (this.reordering) {
            this.reordering = false;
            invalidate();
        }
    }

    public void setLayout(CollageLayout collageLayout, boolean z) {
        if (collageLayout == null) {
            collageLayout = new CollageLayout(".");
        }
        this.currentLayout = collageLayout;
        AndroidUtilities.cancelRunOnUIThread(this.resetReordering);
        int i = 0;
        while (i < Math.max(collageLayout.parts.size(), this.parts.size())) {
            CollageLayout.Part part = i < collageLayout.parts.size() ? (CollageLayout.Part) collageLayout.parts.get(i) : null;
            Part part2 = i < this.parts.size() ? (Part) this.parts.get(i) : null;
            if (part2 == null && part != null) {
                Part part3 = new Part();
                if (this.attached) {
                    part3.imageReceiver.onAttachedToWindow();
                }
                part3.setPart(part, z);
                this.parts.add(part3);
            } else if (part != null) {
                part2.setPart(part, z);
            } else if (part2 != null) {
                this.removingParts.add(part2);
                this.parts.remove(part2);
                part2.setPart(null, z);
                i--;
            }
            i++;
        }
        updatePartsState();
        invalidate();
        if (z) {
            AndroidUtilities.runOnUIThread(this.resetReordering, 360L);
        }
    }

    public void highlight(int i) {
        ArrayList arrayList = this.parts;
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            Part part = (Part) obj;
            if (part.index == i) {
                part.highlightAnimated.set(1.0f, true);
                invalidate();
                return;
            }
        }
    }

    public ArrayList<Integer> getOrder() {
        ArrayList<Integer> arrayList = new ArrayList<>();
        for (int i = 0; i < this.parts.size(); i++) {
            arrayList.add(Integer.valueOf(((Part) this.parts.get(i)).index));
        }
        return arrayList;
    }

    public void swap(int i, int i2) {
        Collections.swap(this.parts, i, i2);
        setLayout(this.currentLayout, true);
        this.reordering = true;
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void layoutOut(RectF rectF, CollageLayout.Part part) {
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        if (measuredWidth <= 0 || measuredHeight <= 0) {
            Point point = AndroidUtilities.displaySize;
            int i = point.x;
            measuredHeight = point.y;
            measuredWidth = i;
        }
        layout(rectF, part);
        float f = rectF.left;
        boolean z = f <= 0.0f;
        float f2 = rectF.top;
        boolean z2 = f2 <= 0.0f;
        float f3 = measuredWidth;
        boolean z3 = rectF.right >= f3;
        float f4 = measuredHeight;
        boolean z4 = rectF.bottom >= f4;
        if (z && z3 && !z2 && !z4) {
            rectF.offset(0.0f, f4 - f2);
            return;
        }
        if (z2 && z4 && !z && !z3) {
            rectF.offset(0.0f, f3 - f);
            return;
        }
        if (z3 && !z) {
            rectF.offset(rectF.width(), 0.0f);
        }
        if (!z4 || z2) {
            return;
        }
        rectF.offset(0.0f, rectF.height());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void layout(RectF rectF, CollageLayout.Part part) {
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        if (measuredWidth <= 0 || measuredHeight <= 0) {
            Point point = AndroidUtilities.displaySize;
            int i = point.x;
            measuredHeight = point.y;
            measuredWidth = i;
        }
        float f = measuredWidth;
        CollageLayout collageLayout = part.layout;
        int[] iArr = collageLayout.columns;
        int i2 = part.f1545y;
        int i3 = iArr[i2];
        int i4 = part.f1544x;
        float f2 = measuredHeight;
        int i5 = collageLayout.f1542h;
        rectF.set((f / i3) * i4, (f2 / i5) * i2, (f / i3) * (i4 + 1), (f2 / i5) * (i2 + 1));
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        if (view == this.cameraView && AndroidUtilities.makingGlobalBlurBitmap) {
            return false;
        }
        return super.drawChild(canvas, view, j);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        Part part;
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        setMeasuredDimension(size, size2);
        for (int i3 = 0; i3 < getChildCount(); i3++) {
            View childAt = getChildAt(i3);
            if (childAt == this.cameraView) {
                childAt.measure(View.MeasureSpec.makeMeasureSpec(size, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(size2, TLObject.FLAG_30));
            } else {
                int i4 = 0;
                while (true) {
                    if (i4 >= this.parts.size()) {
                        part = null;
                        break;
                    } else {
                        if (childAt == ((Part) this.parts.get(i4)).textureView) {
                            part = (Part) this.parts.get(i4);
                            break;
                        }
                        i4++;
                    }
                }
                if (part != null && part.content != null && part.content.width > 0 && part.content.height > 0) {
                    int i5 = part.content.width;
                    int i6 = part.content.height;
                    if (part.content.orientation % 90 == 1) {
                        i6 = i5;
                        i5 = i6;
                    }
                    float f = i5;
                    float f2 = i6;
                    float fMin = Math.min(1.0f, Math.max(f / size, f2 / size2));
                    childAt.measure(View.MeasureSpec.makeMeasureSpec((int) (f * fMin), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec((int) (f2 * fMin), TLObject.FLAG_30));
                } else {
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(size, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(size2, TLObject.FLAG_30));
                }
            }
        }
    }

    public void set(StoryEntry storyEntry, boolean z) {
        if (storyEntry == null || storyEntry.collageContent == null) {
            clear(true);
            return;
        }
        setLayout(storyEntry.collage, z);
        for (int i = 0; i < this.parts.size(); i++) {
            ((Part) this.parts.get(i)).setContent((StoryEntry) storyEntry.collageContent.get(i));
        }
    }

    @Override // org.telegram.ui.Components.ItemOptions.ScrimView
    public void drawScrim(Canvas canvas, float f) {
        Part part = this.longPressedPart;
        if (part != null) {
            CollageLayout.Part part2 = part.part;
            float f2 = part2.layout.f1542h;
            float f3 = this.animatedColumns[part2.f1545y].set(r0.columns[r3]);
            this.rect.set((getMeasuredWidth() / f3) * part2.f1544x, (getMeasuredHeight() / f2) * part2.f1545y, (getMeasuredWidth() / f3) * (part2.f1544x + 1), (getMeasuredHeight() / f2) * (part2.f1545y + 1));
            drawPart(canvas, this.rect, this.longPressedPart);
        }
    }

    @Override // org.telegram.ui.Components.ItemOptions.ScrimView
    public void getBounds(RectF rectF) {
        Part part = this.longPressedPart;
        if (part != null) {
            CollageLayout.Part part2 = part.part;
            float f = part2.layout.f1542h;
            float f2 = this.animatedColumns[part2.f1545y].set(r1.columns[r4]);
            rectF.set((getMeasuredWidth() / f2) * part2.f1544x, (getMeasuredHeight() / f) * part2.f1545y, (getMeasuredWidth() / f2) * (part2.f1544x + 1), (getMeasuredHeight() / f) * (part2.f1545y + 1));
            return;
        }
        rectF.set(0.0f, 0.0f, getWidth(), getHeight());
    }

    public Object getBlurRenderNode() {
        if (this.renderNode == null && Build.VERSION.SDK_INT >= 31) {
            this.renderNode = BotFullscreenButtons$$ExternalSyntheticApiModelOutline0.m949m("CameraViewRenderNode");
            RenderNode renderNodeM949m = BotFullscreenButtons$$ExternalSyntheticApiModelOutline0.m949m("CameraViewRenderNodeBlur");
            this.blurRenderNode = renderNodeM949m;
            BotFullscreenButtons$$ExternalSyntheticApiModelOutline1.m950m(renderNodeM949m);
            renderNodeM949m.setRenderEffect(RenderEffect.createBlurEffect(AndroidUtilities.dp(32.0f), AndroidUtilities.dp(32.0f), Shader.TileMode.DECAL));
        }
        return this.blurRenderNode;
    }

    private void finishNode(Canvas canvas) {
        if (this.renderNode == null || Build.VERSION.SDK_INT < 29 || !canvas.isHardwareAccelerated()) {
            return;
        }
        RenderNode renderNodeM950m = BotFullscreenButtons$$ExternalSyntheticApiModelOutline1.m950m(this.renderNode);
        renderNodeM950m.endRecording();
        canvas.drawRenderNode(renderNodeM950m);
        Object obj = this.blurRenderNode;
        if (obj != null) {
            RenderNode renderNodeM950m2 = BotFullscreenButtons$$ExternalSyntheticApiModelOutline1.m950m(obj);
            renderNodeM950m2.setPosition(0, 0, getWidth(), getHeight());
            renderNodeM950m2.beginRecording().drawRenderNode(renderNodeM950m);
            renderNodeM950m2.endRecording();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        Canvas canvasBeginRecording;
        double d;
        float f;
        float f2;
        float f3;
        BlurringShader.BlurManager blurManager;
        Part part;
        float f4;
        boolean z;
        int i = 0;
        if (this.renderNode == null || Build.VERSION.SDK_INT < 29 || !canvas.isHardwareAccelerated()) {
            canvasBeginRecording = canvas;
        } else {
            RenderNode renderNodeM950m = BotFullscreenButtons$$ExternalSyntheticApiModelOutline1.m950m(this.renderNode);
            renderNodeM950m.setPosition(0, 0, getWidth(), getHeight());
            canvasBeginRecording = renderNodeM950m.beginRecording();
        }
        super.dispatchDraw(canvasBeginRecording);
        if (!hasLayout() && !this.reordering && !this.reorderingTouch && this.animatedRows.get() == this.currentLayout.f1542h && this.animatedColumns[0].get() == this.currentLayout.columns[0] && this.qrDrawer.hasNoDraw()) {
            setCameraNeedsBlur(false);
            finishNode(canvas);
            return;
        }
        if (this.preview) {
            setCameraNeedsBlur(false);
        }
        canvasBeginRecording.drawColor(-14737633);
        float f5 = this.animatedReordering.set(this.reorderingTouch);
        float f6 = this.animatedRows.set(this.currentLayout.f1542h);
        int i2 = 0;
        while (true) {
            d = f6;
            f = 0.0f;
            if (i2 >= Math.ceil(d)) {
                break;
            }
            this.lefts[i2] = getMeasuredWidth();
            this.rights[i2] = 0.0f;
            i2++;
        }
        int i3 = this.currentLayout.f1542h;
        while (true) {
            AnimatedFloat[] animatedFloatArr = this.animatedColumns;
            f2 = 1.0f;
            if (i3 >= animatedFloatArr.length) {
                break;
            }
            animatedFloatArr[i3].set(1.0f);
            i3++;
        }
        int i4 = 0;
        boolean z2 = false;
        float fMax = 0.0f;
        while (i4 < this.parts.size()) {
            Part part2 = (Part) this.parts.get(i4);
            CollageLayout.Part part3 = part2.part;
            int i5 = i;
            float f7 = f2;
            float f8 = this.animatedColumns[part3.f1545y].set(part3.layout.columns[r2]);
            if (this.reordering || this.reorderingTouch) {
                f4 = f;
                z = true;
                AndroidUtilities.lerp(part2.fromBounds, part2.bounds, part2.boundsTransition, this.rect);
            } else {
                z = true;
                f4 = f;
                this.rect.set((getMeasuredWidth() / f8) * part3.f1544x, (getMeasuredHeight() / f6) * part3.f1545y, (getMeasuredWidth() / f8) * (part3.f1544x + 1), (part3.f1545y + 1) * (getMeasuredHeight() / f6));
            }
            float[] fArr = this.lefts;
            int i6 = part3.f1545y;
            fArr[i6] = Math.min(fArr[i6], this.rect.left);
            float[] fArr2 = this.rights;
            int i7 = part3.f1545y;
            fArr2[i7] = Math.max(fArr2[i7], this.rect.right);
            fMax = Math.max(fMax, this.rect.bottom);
            if (f5 <= f4 || part2 != this.reorderingPart) {
                if (this.preview && part2.videoPlayer != null) {
                    z2 = z;
                }
                drawPart(canvasBeginRecording, this.rect, part2);
            }
            i4++;
            i = i5;
            f2 = f7;
            f = f4;
        }
        int i8 = i;
        float f9 = f;
        float f10 = f2;
        while (i < this.removingParts.size()) {
            Part part4 = (Part) this.removingParts.get(i);
            CollageLayout.Part part5 = part4.part;
            AnimatedFloat[] animatedFloatArr2 = this.animatedColumns;
            int i9 = part5.f1545y;
            float f11 = animatedFloatArr2[i9].set(i9 >= this.currentLayout.columns.length ? f10 : r13[i9]);
            int i10 = i;
            this.rect.set((getMeasuredWidth() / f11) * part5.f1544x, (getMeasuredHeight() / f6) * part5.f1545y, (getMeasuredWidth() / f11) * (part5.f1544x + 1), (getMeasuredHeight() / f6) * (part5.f1545y + 1));
            float[] fArr3 = this.lefts;
            int i11 = part5.f1545y;
            fArr3[i11] = Math.min(fArr3[i11], this.rect.left);
            float[] fArr4 = this.rights;
            int i12 = part5.f1545y;
            fArr4[i12] = Math.max(fArr4[i12], this.rect.right);
            fMax = Math.max(fMax, this.rect.bottom);
            if (this.preview && part4.videoPlayer != null) {
                z2 = true;
            }
            drawPart(canvasBeginRecording, this.rect, part4);
            i = i10 + 1;
        }
        if (this.reorderingTouch) {
            f3 = f9;
        } else {
            int i13 = i8;
            while (i13 < Math.ceil(d)) {
                if (this.lefts[i13] >= f9) {
                    this.rect.set(f9, (getMeasuredHeight() / f6) * i13, this.lefts[i13], (getMeasuredHeight() / f6) * (i13 + 1));
                    drawPart(canvasBeginRecording, this.rect, null);
                }
                if (this.rights[i13] < getMeasuredWidth()) {
                    this.rect.set(this.rights[i13], (getMeasuredHeight() / f6) * i13, getMeasuredWidth(), (getMeasuredHeight() / f6) * (i13 + 1));
                    drawPart(canvasBeginRecording, this.rect, null);
                }
                i13++;
                f9 = 0.0f;
            }
            if (fMax < getMeasuredHeight()) {
                f3 = 0.0f;
                this.rect.set(0.0f, fMax, getMeasuredWidth(), getMeasuredHeight());
                drawPart(canvasBeginRecording, this.rect, null);
            } else {
                f3 = 0.0f;
            }
        }
        if (f5 > f3 && (part = this.reorderingPart) != null) {
            CollageLayout.Part part6 = part.part;
            float f12 = this.animatedColumns[part6.f1545y].set(this.currentLayout.columns[r7]);
            if (this.reorderingTouch) {
                AndroidUtilities.lerp(part.fromBounds, part.bounds, part.boundsTransition, this.rect);
            } else {
                this.rect.set((getMeasuredWidth() / f12) * part6.f1544x, (getMeasuredHeight() / f6) * part6.f1545y, (getMeasuredWidth() / f12) * (part6.f1544x + 1), (getMeasuredHeight() / f6) * (part6.f1545y + 1));
            }
            canvasBeginRecording.save();
            canvasBeginRecording.translate(AndroidUtilities.lerp(this.ldx, this.dx, part.boundsTransition) * f5, AndroidUtilities.lerp(this.ldy, this.dy, part.boundsTransition) * f5);
            drawPart(canvasBeginRecording, this.rect, part);
            canvasBeginRecording.restore();
        }
        for (int i14 = i8; i14 < this.parts.size(); i14++) {
            Part part7 = (Part) this.parts.get(i14);
            CollageLayout.Part part8 = part7.part;
            float f13 = part7.highlightAnimated.set(0.0f);
            if (f13 > 0.0f) {
                float f14 = this.animatedColumns[part8.f1545y].set(part8.layout.columns[r8]);
                if (this.reordering || this.reorderingTouch) {
                    AndroidUtilities.lerp(part7.fromBounds, part7.bounds, part7.boundsTransition, this.rect);
                } else {
                    this.rect.set((getMeasuredWidth() / f14) * part8.f1544x, (getMeasuredHeight() / f6) * part8.f1545y, (getMeasuredWidth() / f14) * (part8.f1544x + 1), (getMeasuredHeight() / f6) * (part8.f1545y + 1));
                }
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(this.rect);
                rectF.inset(AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f));
                this.gradientMatrix.reset();
                Matrix matrix = this.gradientMatrix;
                float f15 = this.rect.left;
                int i15 = this.gradientWidth;
                matrix.postTranslate(f15 + AndroidUtilities.lerp(((float) Math.sqrt((i15 * i15) + (i15 * i15))) * (-1.4f), (float) Math.sqrt((this.rect.width() * this.rect.width()) + (this.rect.height() * this.rect.height())), f10 - f13), 0.0f);
                this.gradientMatrix.postRotate(-25.0f);
                this.gradient.setLocalMatrix(this.gradientMatrix);
                this.highlightPaint.setAlpha(255);
                this.highlightPath.rewind();
                float[] fArr5 = this.radii;
                CollageLayout.Part part9 = part7.part;
                float fDp = (part9.f1544x == 0 && part9.f1545y == 0) ? AndroidUtilities.dp(8.0f) : 0.0f;
                fArr5[1] = fDp;
                fArr5[i8] = fDp;
                float[] fArr6 = this.radii;
                CollageLayout.Part part10 = part7.part;
                float fDp2 = (part10.f1544x == part10.layout.f1543w + (-1) && part10.f1545y == 0) ? AndroidUtilities.dp(8.0f) : 0.0f;
                fArr6[2] = fDp2;
                fArr6[1] = fDp2;
                float[] fArr7 = this.radii;
                CollageLayout.Part part11 = part7.part;
                int i16 = part11.f1544x;
                CollageLayout collageLayout = part11.layout;
                float fDp3 = (i16 == collageLayout.f1543w + (-1) && part11.f1545y == collageLayout.f1542h + (-1)) ? AndroidUtilities.dp(8.0f) : 0.0f;
                fArr7[4] = fDp3;
                fArr7[3] = fDp3;
                float[] fArr8 = this.radii;
                CollageLayout.Part part12 = part7.part;
                float fDp4 = (part12.f1544x == 0 && part12.f1545y == part12.layout.f1542h + (-1)) ? AndroidUtilities.dp(8.0f) : 0.0f;
                fArr8[6] = fDp4;
                fArr8[5] = fDp4;
                this.highlightPath.addRoundRect(rectF, this.radii, Path.Direction.CW);
                canvasBeginRecording.drawPath(this.highlightPath, this.highlightPaint);
            }
        }
        if (z2 && (blurManager = this.blurManager) != null) {
            blurManager.invalidate();
        }
        finishNode(canvas);
    }

    public int getTotalCount() {
        return this.parts.size();
    }

    public int getFilledCount() {
        int i = 0;
        for (int i2 = 0; i2 < this.parts.size(); i2++) {
            if (((Part) this.parts.get(i2)).hasContent()) {
                i++;
            }
        }
        return i;
    }

    public float getFilledProgress() {
        return getFilledCount() / getTotalCount();
    }

    private void drawPart(Canvas canvas, RectF rectF, Part part) {
        boolean z;
        ImageView imageView;
        if (AndroidUtilities.makingGlobalBlurBitmap && part == this.longPressedPart) {
            return;
        }
        if (part != this.reorderingPart || this.animatedReordering.get() <= 0.0f) {
            z = false;
        } else {
            canvas.save();
            this.clipPath.rewind();
            RectF rectF2 = AndroidUtilities.rectTmp;
            rectF2.set(rectF);
            rectF2.inset(AndroidUtilities.dp(10.0f) * this.animatedReordering.get(), AndroidUtilities.dp(10.0f) * this.animatedReordering.get());
            float fDp = AndroidUtilities.dp(12.0f) * this.animatedReordering.get();
            this.clipPath.addRoundRect(rectF2, fDp, fDp, Path.Direction.CW);
            canvas.clipPath(this.clipPath);
            z = true;
        }
        if (part != null && part.content != null) {
            TextureView textureView = part.textureView;
            if (textureView != null && part.textureViewReady) {
                drawView(canvas, textureView, rectF, 0.0f);
            } else {
                part.imageReceiver.setImageCoords(rectF.left, rectF.top, rectF.width(), rectF.height());
                if (!part.imageReceiver.draw(canvas)) {
                    CameraView cameraView = this.cameraView;
                    if (cameraView == null && this.cameraThumbVisible) {
                        drawDrawable(canvas, this.cameraThumbDrawable, rectF, 0.0f);
                    } else {
                        drawView(canvas, cameraView, rectF, 0.0f);
                    }
                }
            }
        } else if ((part != null && part.current) || AndroidUtilities.makingGlobalBlurBitmap) {
            CameraView cameraView2 = this.cameraView;
            if (cameraView2 == null && this.cameraThumbVisible) {
                drawDrawable(canvas, this.cameraThumbDrawable, rectF, (part == null || !part.current) ? 0.4f : 0.0f);
            } else {
                drawView(canvas, cameraView2, rectF, (part == null || !part.current) ? 0.4f : 0.0f);
            }
        } else {
            setCameraNeedsBlur(!this.preview);
            if (this.cameraViewBlurRenderNode != null && Build.VERSION.SDK_INT >= 29 && canvas.isHardwareAccelerated()) {
                RenderNode renderNodeM950m = BotFullscreenButtons$$ExternalSyntheticApiModelOutline1.m950m(this.cameraViewBlurRenderNode);
                float fMax = Math.max(rectF.width() / renderNodeM950m.getWidth(), rectF.height() / renderNodeM950m.getHeight());
                canvas.save();
                canvas.translate(rectF.left, rectF.top);
                canvas.clipRect(0.0f, 0.0f, rectF.width(), rectF.height());
                canvas.scale(fMax, fMax);
                canvas.drawRenderNode(renderNodeM950m);
                canvas.drawColor(1677721600);
                canvas.restore();
            } else {
                drawView(canvas, this.cameraView, rectF, 0.75f);
            }
            CameraView cameraView3 = this.cameraView;
            if (cameraView3 != null && (imageView = cameraView3.blurredStubView) != null && imageView.getVisibility() == 0 && this.cameraView.blurredStubView.getAlpha() > 0.0f) {
                drawView(canvas, this.cameraView.blurredStubView, rectF, 0.4f);
            }
        }
        if (z) {
            canvas.restore();
        }
    }

    private void drawView(Canvas canvas, View view, RectF rectF, float f) {
        QRScanner.QrRegionDrawer qrRegionDrawer;
        TextureView textureView;
        Bitmap bitmap;
        if (view == null) {
            return;
        }
        float fMax = Math.max(rectF.width() / view.getWidth(), rectF.height() / view.getHeight());
        canvas.save();
        canvas.translate(rectF.centerX(), rectF.centerY());
        canvas.clipRect((-rectF.width()) / 2.0f, (-rectF.height()) / 2.0f, rectF.width() / 2.0f, rectF.height() / 2.0f);
        canvas.scale(fMax, fMax);
        canvas.translate((-view.getWidth()) / 2.0f, (-view.getHeight()) / 2.0f);
        if (AndroidUtilities.makingGlobalBlurBitmap) {
            if (view instanceof TextureView) {
                textureView = (TextureView) view;
            } else {
                textureView = view instanceof CameraView ? ((CameraView) view).getTextureView() : null;
            }
            if (textureView != null && (bitmap = textureView.getBitmap()) != null) {
                canvas.scale(view.getWidth() / bitmap.getWidth(), view.getHeight() / bitmap.getHeight());
                canvas.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
            }
        } else {
            view.draw(canvas);
        }
        if (f > 0.0f) {
            canvas.drawColor(Theme.multAlpha(-16777216, view.getAlpha() * f));
        }
        canvas.restore();
        if (view != this.cameraView || (qrRegionDrawer = this.qrDrawer) == null) {
            return;
        }
        qrRegionDrawer.draw(canvas, rectF);
    }

    private void drawDrawable(Canvas canvas, Drawable drawable, RectF rectF, float f) {
        if (drawable == null) {
            return;
        }
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        float fMax = Math.max(rectF.width() / intrinsicWidth, rectF.height() / intrinsicHeight);
        canvas.save();
        canvas.translate(rectF.centerX(), rectF.centerY());
        canvas.clipRect((-rectF.width()) / 2.0f, (-rectF.height()) / 2.0f, rectF.width() / 2.0f, rectF.height() / 2.0f);
        canvas.scale(fMax, fMax);
        canvas.translate((-intrinsicWidth) / 2.0f, (-intrinsicHeight) / 2.0f);
        drawable.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
        drawable.draw(canvas);
        if (f > 0.0f) {
            canvas.drawColor(Theme.multAlpha(-16777216, drawable.getAlpha() * f));
        }
        canvas.restore();
    }

    public void updatePartsState() {
        this.currentPart = null;
        this.nextPart = null;
        int i = 0;
        while (true) {
            if (i >= this.parts.size()) {
                break;
            }
            Part part = (Part) this.parts.get(i);
            if (!part.hasContent()) {
                if (this.currentPart == null) {
                    this.currentPart = part;
                } else {
                    this.nextPart = part;
                    break;
                }
            }
            i++;
        }
        for (int i2 = 0; i2 < this.parts.size(); i2++) {
            Part part2 = (Part) this.parts.get(i2);
            part2.setCurrent(part2 == this.currentPart);
        }
    }

    public boolean push(StoryEntry storyEntry) {
        if (storyEntry != null && storyEntry.isVideo) {
            ArrayList arrayList = this.parts;
            int size = arrayList.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    break;
                }
                Object obj = arrayList.get(i);
                i++;
                Part part = (Part) obj;
                if (part.content != null && part.content.isVideo && part.content.videoVolume > 0.0f) {
                    storyEntry.videoVolume = 0.0f;
                    break;
                }
            }
        }
        Part part2 = this.currentPart;
        if (part2 != null) {
            part2.setContent(storyEntry);
        }
        updatePartsState();
        requestLayout();
        return this.currentPart == null;
    }

    public ArrayList<StoryEntry> getContent() {
        ArrayList<StoryEntry> arrayList = new ArrayList<>();
        ArrayList arrayList2 = this.parts;
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList2.get(i);
            i++;
            Part part = (Part) obj;
            if (part.hasContent()) {
                arrayList.add(part.content);
            }
        }
        return arrayList;
    }

    public void clear(boolean z) {
        ArrayList arrayList = this.parts;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            ((Part) obj).setContent(null);
        }
        updatePartsState();
    }

    public CollageLayout getLayout() {
        return this.currentLayout;
    }

    public boolean hasLayout() {
        return this.currentLayout.parts.size() > 1;
    }

    public boolean hasContent() {
        ArrayList arrayList = this.parts;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            if (((Part) obj).hasContent()) {
                return true;
            }
        }
        return false;
    }

    public void setCameraView(CameraView cameraView) {
        CameraView cameraView2 = this.cameraView;
        if (cameraView2 != cameraView && cameraView2 != null) {
            cameraView2.unlistenDraw(new CollageLayoutView2$$ExternalSyntheticLambda1(this));
            AndroidUtilities.removeFromParent(this.cameraView);
            this.cameraView = null;
            updateCameraNeedsBlur();
        }
        this.cameraView = cameraView;
        if (cameraView != null) {
            addView(cameraView, LayoutHelper.createFrame(-1, -1, 119));
        }
        CameraView cameraView3 = this.cameraView;
        if (cameraView3 != null) {
            cameraView3.unlistenDraw(new CollageLayoutView2$$ExternalSyntheticLambda1(this));
        }
        this.cameraView = cameraView;
        if (cameraView != null) {
            cameraView.listenDraw(new CollageLayoutView2$$ExternalSyntheticLambda1(this));
        }
        updateCameraNeedsBlur();
        invalidate();
    }

    public void setCameraThumb(Drawable drawable) {
        this.cameraThumbDrawable = drawable;
        invalidate();
    }

    public void setCameraThumbVisible(boolean z) {
        this.cameraThumbVisible = z;
        invalidate();
    }

    public void setOnCameraThumbClick(Runnable runnable) {
        this.onCameraThumbClick = runnable;
    }

    public void setCameraNeedsBlur(boolean z) {
        if (this.needsBlur == z) {
            return;
        }
        this.needsBlur = z;
        updateCameraNeedsBlur();
    }

    public void updateCameraNeedsBlur() {
        CameraView cameraView = this.cameraView;
        boolean z = cameraView != null && this.needsBlur;
        if (z == (this.cameraViewBlurRenderNode != null)) {
            return;
        }
        if (z) {
            this.cameraViewBlurRenderNode = cameraView.getBlurRenderNode();
        } else {
            this.cameraViewBlurRenderNode = null;
        }
    }

    public Part getPartAt(float f, float f2) {
        float f3 = this.animatedRows.get();
        for (int i = 0; i < this.parts.size(); i++) {
            Part part = (Part) this.parts.get(i);
            float f4 = this.animatedColumns[part.part.f1545y].get();
            this.rect.set((getMeasuredWidth() / f4) * r3.f1544x, (getMeasuredHeight() / f3) * r3.f1545y, (getMeasuredWidth() / f4) * (r3.f1544x + 1), (getMeasuredHeight() / f3) * (r3.f1545y + 1));
            if (this.rect.contains(f, f2)) {
                return part;
            }
        }
        return null;
    }

    public int getPartIndexAt(float f, float f2) {
        float f3 = this.animatedRows.get();
        for (int i = 0; i < this.parts.size(); i++) {
            float f4 = this.animatedColumns[((Part) this.parts.get(i)).part.f1545y].get();
            this.rect.set((getMeasuredWidth() / f4) * r2.f1544x, (getMeasuredHeight() / f3) * r2.f1545y, (getMeasuredWidth() / f4) * (r2.f1544x + 1), (getMeasuredHeight() / f3) * (r2.f1545y + 1));
            if (this.rect.contains(f, f2)) {
                return i;
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onLongPress() {
        VideoPlayerHolderBase videoPlayerHolderBase;
        if (this.reorderingTouch || this.preview) {
            return;
        }
        Part part = this.longPressedPart;
        if (part != null && (videoPlayerHolderBase = part.videoPlayer) != null) {
            videoPlayerHolderBase.setVolume(0.0f);
        }
        Part part2 = this.pressedPart;
        this.longPressedPart = part2;
        if (part2 == null || part2.content == null) {
            return;
        }
        Runnable runnable = this.cancelGestures;
        if (runnable != null) {
            runnable.run();
        }
        Part part3 = this.longPressedPart;
        VideoPlayerHolderBase videoPlayerHolderBase2 = part3.videoPlayer;
        if (videoPlayerHolderBase2 != null) {
            videoPlayerHolderBase2.setVolume(part3.content.videoVolume);
        }
        FrameLayout frameLayout = new FrameLayout(getContext());
        ImageView imageView = new ImageView(getContext());
        imageView.setImageResource(C2484R.drawable.menu_lightbulb);
        imageView.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_IN));
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        frameLayout.addView(imageView, LayoutHelper.createFrame(24, 24.0f, 19, 12.0f, 12.0f, 12.0f, 12.0f));
        TextView textView = new TextView(getContext());
        textView.setText(LocaleController.getString(C2484R.string.StoryCollageMenuHint));
        textView.setTextSize(1, 13.0f);
        textView.setTextColor(-1);
        frameLayout.addView(textView, LayoutHelper.createFrame(-1, -2.0f, 23, 47.0f, 8.0f, 24.0f, 8.0f));
        ItemOptions itemOptionsMakeOptions = ItemOptions.makeOptions(this.containerView, this.resourcesProvider, this);
        if (this.longPressedPart.content.isVideo) {
            SliderView onValueChange = new SliderView(getContext(), 0).setMinMax(0.0f, 1.5f).setValue(this.longPressedPart.content.videoVolume).setOnValueChange(new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.CollageLayoutView2$$ExternalSyntheticLambda5
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$onLongPress$1((Float) obj);
                }
            });
            onValueChange.fixWidth = AndroidUtilities.dp(220.0f);
            itemOptionsMakeOptions.addView(onValueChange).addSpaceGap();
        }
        itemOptionsMakeOptions.setFixedWidth(Opcodes.REM_INT_LIT8).add(C2484R.drawable.menu_camera_retake, LocaleController.getString(C2484R.string.StoreCollageRetake), new Runnable() { // from class: org.telegram.ui.Stories.recorder.CollageLayoutView2$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onLongPress$2();
            }
        }).add(C2484R.drawable.msg_delete, (CharSequence) LocaleController.getString(C2484R.string.Delete), true, new Runnable() { // from class: org.telegram.ui.Stories.recorder.CollageLayoutView2$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onLongPress$3();
            }
        }).addSpaceGap().addView(frameLayout, LayoutHelper.createLinear(Opcodes.REM_INT_LIT8, -2)).setOnDismiss(new Runnable() { // from class: org.telegram.ui.Stories.recorder.CollageLayoutView2$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                CollageLayoutView2.$r8$lambda$BlCGMwGoirt0UuyA9LBLKQe06xM();
            }
        }).setGravity(1).allowCenter(true).setBlur(true).setRoundRadius(AndroidUtilities.dp(12.0f), AndroidUtilities.dp(10.0f)).setOnDismiss(new Runnable() { // from class: org.telegram.ui.Stories.recorder.CollageLayoutView2$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onLongPress$5();
            }
        }).show();
        try {
            performHapticFeedback(0, 1);
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onLongPress$1(Float f) {
        this.longPressedPart.content.videoVolume = f.floatValue();
        Part part = this.longPressedPart;
        VideoPlayerHolderBase videoPlayerHolderBase = part.videoPlayer;
        if (videoPlayerHolderBase != null) {
            videoPlayerHolderBase.setVolume(part.content.videoVolume);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onLongPress$2() {
        retake(this.longPressedPart);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onLongPress$3() {
        delete(this.longPressedPart);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onLongPress$5() {
        VideoPlayerHolderBase videoPlayerHolderBase;
        Part part = this.longPressedPart;
        if (part == null || (videoPlayerHolderBase = part.videoPlayer) == null) {
            return;
        }
        videoPlayerHolderBase.setVolume(0.0f);
    }

    public void retake(Part part) {
        if (part == null) {
            return;
        }
        part.setContent(null);
        updatePartsState();
        invalidate();
        Runnable runnable = this.onResetState;
        if (runnable != null) {
            runnable.run();
        }
    }

    public void delete(Part part) {
        if (part != null && this.parts.indexOf(part) >= 0) {
            CollageLayout collageLayout = this.currentLayout;
            CollageLayout collageLayoutDelete = collageLayout.delete(collageLayout.parts.indexOf(part.part));
            if (collageLayoutDelete.parts.size() <= 1) {
                clear(true);
                invalidate();
            }
            setLayout(collageLayoutDelete, true);
            this.reordering = true;
            updatePartsState();
            invalidate();
            Runnable runnable = this.onResetState;
            if (runnable != null) {
                runnable.run();
            }
            onLayoutUpdate(collageLayoutDelete);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        Runnable runnable;
        if (!hasLayout() || this.preview) {
            cancelTouch();
            return false;
        }
        if (motionEvent.getPointerCount() > 1) {
            cancelTouch();
            return false;
        }
        Part partAt = getPartAt(motionEvent.getX(), motionEvent.getY());
        if (motionEvent.getAction() == 0) {
            this.tx = motionEvent.getX();
            this.ty = motionEvent.getY();
            this.reorderingTouch = false;
            this.dx = 0.0f;
            this.ldx = 0.0f;
            this.dy = 0.0f;
            this.ldy = 0.0f;
            this.pressedPart = partAt;
            if (partAt != null) {
                Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Stories.recorder.CollageLayoutView2$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.onLongPress();
                    }
                };
                this.onLongPressPart = runnable2;
                AndroidUtilities.runOnUIThread(runnable2, ViewConfiguration.getLongPressTimeout());
            }
        } else if (motionEvent.getAction() == 2) {
            if (MathUtils.distance(motionEvent.getX(), motionEvent.getY(), this.tx, this.ty) > AndroidUtilities.touchSlop * 1.2f && (runnable = this.onLongPressPart) != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable);
                this.onLongPressPart = null;
            }
            if (!this.reorderingTouch && getFilledProgress() >= 1.0f && this.pressedPart != null && partAt != null && MathUtils.distance(motionEvent.getX(), motionEvent.getY(), this.tx, this.ty) > AndroidUtilities.touchSlop * 1.2f) {
                this.reorderingTouch = true;
                this.reorderingPart = this.pressedPart;
                this.dx = 0.0f;
                this.ldx = 0.0f;
                this.dy = 0.0f;
                this.ldy = 0.0f;
                invalidate();
                Runnable runnable3 = this.onLongPressPart;
                if (runnable3 != null) {
                    AndroidUtilities.cancelRunOnUIThread(runnable3);
                    this.onLongPressPart = null;
                }
            } else if (this.reorderingTouch && this.reorderingPart != null) {
                int partIndexAt = getPartIndexAt(motionEvent.getX(), motionEvent.getY());
                int iIndexOf = this.parts.indexOf(this.reorderingPart);
                if (partIndexAt >= 0 && iIndexOf >= 0 && partIndexAt != iIndexOf) {
                    swap(iIndexOf, partIndexAt);
                    float f = this.currentLayout.f1542h;
                    float f2 = this.animatedColumns[this.reorderingPart.part.f1545y].get();
                    this.rect.set((getMeasuredWidth() / f2) * r3.f1544x, (getMeasuredHeight() / f) * r3.f1545y, (getMeasuredWidth() / f2) * (r3.f1544x + 1), (getMeasuredHeight() / f) * (r3.f1545y + 1));
                    this.ldx = this.dx;
                    this.ldy = this.dy;
                    this.tx = this.rect.centerX();
                    this.ty = this.rect.centerY();
                }
                this.dx = motionEvent.getX() - this.tx;
                this.dy = motionEvent.getY() - this.ty;
                invalidate();
            } else if (this.pressedPart != partAt) {
                this.pressedPart = null;
                Runnable runnable4 = this.onLongPressPart;
                if (runnable4 != null) {
                    AndroidUtilities.cancelRunOnUIThread(runnable4);
                    this.onLongPressPart = null;
                }
                return true;
            }
        } else if (motionEvent.getAction() == 1) {
            if (this.pressedPart != null) {
                this.pressedPart = null;
                this.reorderingTouch = false;
                invalidate();
                Runnable runnable5 = this.onLongPressPart;
                if (runnable5 != null) {
                    AndroidUtilities.cancelRunOnUIThread(runnable5);
                    this.onLongPressPart = null;
                }
                return true;
            }
        } else if (motionEvent.getAction() == 3 && cancelTouch()) {
            return true;
        }
        return this.pressedPart != null || super.dispatchTouchEvent(motionEvent);
    }

    public boolean cancelTouch() {
        if (this.pressedPart == null) {
            return false;
        }
        this.pressedPart = null;
        this.reorderingTouch = false;
        invalidate();
        Runnable runnable = this.onLongPressPart;
        if (runnable == null) {
            return true;
        }
        AndroidUtilities.cancelRunOnUIThread(runnable);
        this.onLongPressPart = null;
        return true;
    }

    public class Part {
        private ValueAnimator animator;
        private StoryEntry content;
        private boolean current;
        private final AnimatedFloat highlightAnimated;
        public final ImageReceiver imageReceiver;
        private int index;
        public CollageLayout.Part part;
        public TextureView textureView;
        public boolean textureViewReady;
        public VideoPlayerHolderBase videoPlayer;
        private volatile long pendingSeek = -1;
        public boolean hasBounds = false;
        public RectF fromBounds = new RectF();
        public RectF bounds = new RectF();
        public float boundsTransition = 1.0f;

        public Part() {
            this.highlightAnimated = new AnimatedFloat(CollageLayoutView2.this, 0L, 1200L, CubicBezierInterpolator.EASE_OUT);
            this.imageReceiver = new ImageReceiver(CollageLayoutView2.this);
        }

        public void setPart(CollageLayout.Part part, boolean z) {
            CollageLayout.Part part2 = this.part;
            if (part != null) {
                this.part = part;
            }
            ValueAnimator valueAnimator = this.animator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.animator = null;
            }
            if (z) {
                if (!this.hasBounds) {
                    CollageLayoutView2.this.layoutOut(this.fromBounds, part);
                } else {
                    RectF rectF = this.fromBounds;
                    AndroidUtilities.lerp(rectF, this.bounds, this.boundsTransition, rectF);
                }
                if (part == null) {
                    CollageLayoutView2.this.layoutOut(this.bounds, part2);
                } else {
                    CollageLayoutView2.this.layout(this.bounds, part);
                }
                this.boundsTransition = 0.0f;
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
                this.animator = valueAnimatorOfFloat;
                valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.recorder.CollageLayoutView2.Part.1
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        Part.this.boundsTransition = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                        CollageLayoutView2.this.invalidate();
                    }
                });
                this.animator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.recorder.CollageLayoutView2.Part.2
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        Part part3 = Part.this;
                        part3.boundsTransition = 1.0f;
                        if (CollageLayoutView2.this.removingParts.contains(part3)) {
                            Part.this.imageReceiver.onDetachedFromWindow();
                            Part.this.destroyContent();
                            Part part4 = Part.this;
                            CollageLayoutView2.this.removingParts.remove(part4);
                        }
                        CollageLayoutView2.this.invalidate();
                    }
                });
                this.animator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
                this.animator.setDuration(360L);
                this.animator.start();
            } else {
                CollageLayoutView2.this.layout(this.bounds, part);
                this.boundsTransition = 1.0f;
                if (part == null) {
                    this.imageReceiver.onDetachedFromWindow();
                    destroyContent();
                    CollageLayoutView2.this.removingParts.remove(this);
                }
            }
            CollageLayoutView2.this.invalidate();
            this.hasBounds = true;
        }

        public void setCurrent(boolean z) {
            this.current = z;
        }

        public void setContent(StoryEntry storyEntry) {
            destroyContent();
            this.content = storyEntry;
            StringBuilder sb = new StringBuilder();
            sb.append((int) Math.ceil(AndroidUtilities.displaySize.x / AndroidUtilities.density));
            sb.append("_");
            sb.append((int) Math.ceil(AndroidUtilities.displaySize.y / AndroidUtilities.density));
            sb.append((storyEntry == null || !storyEntry.isVideo) ? _UrlKt.FRAGMENT_ENCODE_SET : "_g");
            sb.append("_exif");
            String string = sb.toString();
            StoryEntry storyEntry2 = this.content;
            if (storyEntry2 == null) {
                this.imageReceiver.clearImage();
            } else if (storyEntry2.isVideo) {
                Bitmap bitmap = storyEntry2.blurredVideoThumb;
                if (bitmap != null) {
                    this.imageReceiver.setImageBitmap(bitmap);
                } else {
                    Bitmap bitmap2 = storyEntry2.thumbBitmap;
                    if (bitmap2 != null) {
                        this.imageReceiver.setImageBitmap(bitmap2);
                    } else {
                        String str = storyEntry2.thumbPath;
                        if (str != null) {
                            this.imageReceiver.setImage(str, string, null, null, 0L);
                        } else {
                            this.imageReceiver.clearImage();
                        }
                    }
                }
                TextureView textureView = new TextureView(CollageLayoutView2.this.getContext());
                this.textureView = textureView;
                CollageLayoutView2.this.addView(textureView);
                C57533 c57533 = new C57533();
                this.videoPlayer = c57533;
                c57533.allowMultipleInstances(true);
                this.videoPlayer.with(this.textureView);
                this.videoPlayer.preparePlayer(Uri.fromFile(this.content.file), false, 1.0f);
                VideoPlayerHolderBase videoPlayerHolderBase = this.videoPlayer;
                CollageLayoutView2 collageLayoutView2 = CollageLayoutView2.this;
                videoPlayerHolderBase.setVolume((collageLayoutView2.isMuted || this.content.muted || !collageLayoutView2.preview) ? 0.0f : this.content.videoVolume);
                if (!CollageLayoutView2.this.preview || CollageLayoutView2.this.playing) {
                    this.videoPlayer.play();
                } else {
                    this.videoPlayer.pause();
                }
            } else {
                this.imageReceiver.setImage(storyEntry2.file.getAbsolutePath(), string, null, null, 0L);
            }
            CollageLayoutView2.this.invalidate();
        }

        /* JADX INFO: renamed from: org.telegram.ui.Stories.recorder.CollageLayoutView2$Part$3 */
        class C57533 extends VideoPlayerHolderBase {
            C57533() {
            }

            @Override // org.telegram.messenger.video.VideoPlayerHolderBase
            public void onRenderedFirstFrame() {
                Part part = Part.this;
                part.textureViewReady = true;
                CollageLayoutView2.this.invalidate();
            }

            @Override // org.telegram.messenger.video.VideoPlayerHolderBase
            protected void onVideoSizeChanged(final int i, final int i2, final int i3, float f) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.recorder.CollageLayoutView2$Part$3$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onVideoSizeChanged$0(i, i2, i3);
                    }
                });
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$onVideoSizeChanged$0(int i, int i2, int i3) {
                StoryEntry storyEntry = Part.this.content;
                if (storyEntry == null) {
                    return;
                }
                if (storyEntry.width == i && storyEntry.height == i2 && storyEntry.orientation == i3) {
                    return;
                }
                storyEntry.width = i;
                storyEntry.height = i2;
                storyEntry.orientation = i3;
                TextureView textureView = Part.this.textureView;
                if (textureView != null) {
                    textureView.requestLayout();
                }
            }

            @Override // org.telegram.messenger.video.VideoPlayerHolderBase
            public boolean needRepeat() {
                return !CollageLayoutView2.this.preview;
            }
        }

        public boolean hasContent() {
            return this.content != null;
        }

        public void destroyContent() {
            VideoPlayerHolderBase videoPlayerHolderBase = this.videoPlayer;
            if (videoPlayerHolderBase != null) {
                videoPlayerHolderBase.pause();
                this.videoPlayer.release(null);
                this.videoPlayer = null;
            }
            TextureView textureView = this.textureView;
            if (textureView != null) {
                AndroidUtilities.removeFromParent(textureView);
                this.textureView = null;
            }
            this.textureViewReady = false;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        for (int i = 0; i < this.parts.size(); i++) {
            ((Part) this.parts.get(i)).imageReceiver.onAttachedToWindow();
        }
        this.attached = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        for (int i = 0; i < this.parts.size(); i++) {
            ((Part) this.parts.get(i)).imageReceiver.onDetachedFromWindow();
        }
        this.attached = false;
        AndroidUtilities.cancelRunOnUIThread(this.syncRunnable);
    }

    public void setCancelGestures(Runnable runnable) {
        this.cancelGestures = runnable;
    }

    public void setResetState(Runnable runnable) {
        this.onResetState = runnable;
    }

    public void setPreview(boolean z) {
        if (this.preview == z) {
            return;
        }
        this.preview = z;
        int i = 0;
        if (z) {
            BlurringShader.BlurManager blurManager = this.blurManager;
            if (blurManager != null) {
                blurManager.invalidate();
            }
            for (int i2 = 0; i2 < this.parts.size(); i2++) {
                ((Part) this.parts.get(i2)).index = i2;
            }
        }
        this.fastSeek = false;
        this.lastPausedPosition = 0L;
        ArrayList arrayList = this.parts;
        int size = arrayList.size();
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            Part part = (Part) obj;
            VideoPlayerHolderBase videoPlayerHolderBase = part.videoPlayer;
            if (videoPlayerHolderBase != null) {
                videoPlayerHolderBase.setAudioEnabled(z, true);
                if (!z || this.playing) {
                    part.videoPlayer.play();
                } else {
                    part.videoPlayer.pause();
                }
            }
        }
        AndroidUtilities.cancelRunOnUIThread(this.syncRunnable);
        if (z) {
            this.previewStartTime = System.currentTimeMillis();
            AndroidUtilities.runOnUIThread(this.syncRunnable, (long) (1000.0f / AndroidUtilities.screenRefreshRate));
        }
    }

    public Part getMainPart() {
        Part part = null;
        if (!this.preview) {
            return null;
        }
        ArrayList arrayList = this.parts;
        int size = arrayList.size();
        int i = 0;
        long j = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            Part part2 = (Part) obj;
            if (part2.content != null && part2.content.isVideo) {
                long duration = part2.content.duration;
                VideoPlayerHolderBase videoPlayerHolderBase = part2.videoPlayer;
                if (videoPlayerHolderBase != null && videoPlayerHolderBase.getDuration() > 0) {
                    duration = part2.videoPlayer.getDuration();
                }
                if (duration > j) {
                    part = part2;
                    j = duration;
                }
            }
        }
        return part;
    }

    public void setTimelineView(TimelineView timelineView) {
        this.timelineView = timelineView;
    }

    public void setPreviewView(PreviewView previewView) {
        this.previewView = previewView;
    }

    public long getPosition() {
        if (!this.preview) {
            return 0L;
        }
        if (!this.playing) {
            return this.lastPausedPosition;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j = jCurrentTimeMillis - this.previewStartTime;
        if (j > getDuration()) {
            this.previewStartTime = jCurrentTimeMillis - (j % getDuration());
        }
        return j;
    }

    public long getPositionWithOffset() {
        if (!this.preview) {
            return 0L;
        }
        getPosition();
        Part mainPart = getMainPart();
        return getPosition() + (mainPart != null ? mainPart.content.videoOffset + ((long) (mainPart.content.videoLeft * mainPart.content.duration)) : 0L);
    }

    public void setPlaying(boolean z) {
        boolean z2 = this.restorePositionOnPlaying;
        this.restorePositionOnPlaying = true;
        if (this.playing == z) {
            return;
        }
        this.playing = z;
        if (!z) {
            this.lastPausedPosition = getPosition();
        } else if (z2) {
            seekTo(this.lastPausedPosition, false);
        } else {
            this.fastSeek = false;
        }
        if (this.preview) {
            AndroidUtilities.cancelRunOnUIThread(this.syncRunnable);
            this.syncRunnable.run();
        }
    }

    public boolean isPlaying() {
        return this.playing;
    }

    public void setMuted(boolean z) {
        if (this.isMuted == z) {
            return;
        }
        this.isMuted = z;
    }

    public boolean hasVideo() {
        ArrayList arrayList = this.parts;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            Part part = (Part) obj;
            if (part.content != null && part.content.isVideo) {
                return true;
            }
        }
        return false;
    }

    public long getDuration() {
        Part mainPart;
        if (!this.preview || (mainPart = getMainPart()) == null || mainPart.content == null) {
            return 1L;
        }
        return Math.max(Math.min((long) (mainPart.content.duration * (mainPart.content.videoRight - mainPart.content.videoLeft)), 59500L), 1L);
    }

    public void seekTo(long j, boolean z) {
        if (this.preview) {
            long jClamp = Utilities.clamp(j, getDuration(), 0L);
            if (!this.playing) {
                this.lastPausedPosition = jClamp;
            }
            this.previewStartTime = System.currentTimeMillis() - jClamp;
            this.fastSeek = z;
            if (this.preview) {
                AndroidUtilities.cancelRunOnUIThread(this.syncRunnable);
                this.syncRunnable.run();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0078  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$new$7() {
        VideoPlayerHolderBase videoPlayerHolderBase;
        long position = getPosition();
        Part mainPart = getMainPart();
        long j = mainPart == null ? 0L : mainPart.content.videoOffset + ((long) (mainPart.content.videoLeft * mainPart.content.duration));
        int i = 0;
        while (true) {
            if (i >= this.parts.size()) {
                break;
            }
            final Part part = (Part) this.parts.get(i);
            if (part.content != null && (videoPlayerHolderBase = part.videoPlayer) != null) {
                long duration = videoPlayerHolderBase.getDuration();
                long jClamp = Utilities.clamp((position + j) - part.content.videoOffset, duration, 0L);
                if (!this.preview || this.playing) {
                    float f = jClamp;
                    float f2 = duration;
                    boolean z = f > part.content.videoLeft * f2 && f < part.content.videoRight * f2;
                    float f3 = duration;
                    long jClamp2 = Utilities.clamp(jClamp, (long) (part.content.videoRight * f3), (long) (part.content.videoLeft * f3));
                    if (part.videoPlayer.isPlaying() != z) {
                        if (z) {
                            part.videoPlayer.play();
                        } else {
                            part.videoPlayer.pause();
                        }
                    }
                    part.videoPlayer.setVolume((this.isMuted || part.content.muted || !this.preview) ? 0.0f : part.content.videoVolume);
                    if (Math.abs((part.pendingSeek >= 0 ? part.pendingSeek : part.videoPlayer.getCurrentPosition()) - jClamp2) > 450 && part.pendingSeek < 0) {
                        VideoPlayerHolderBase videoPlayerHolderBase2 = part.videoPlayer;
                        part.pendingSeek = jClamp2;
                        videoPlayerHolderBase2.seekTo(jClamp2, this.fastSeek, new Runnable() { // from class: org.telegram.ui.Stories.recorder.CollageLayoutView2$$ExternalSyntheticLambda4
                            @Override // java.lang.Runnable
                            public final void run() {
                                part.pendingSeek = -1L;
                            }
                        });
                    }
                }
            }
            i++;
        }
        TimelineView timelineView = this.timelineView;
        if (timelineView != null) {
            timelineView.setProgress(position);
        }
        PreviewView previewView = this.previewView;
        if (previewView != null) {
            previewView.updateAudioPlayer(true);
            this.previewView.updateRoundPlayer(true);
        }
        if (this.preview && this.playing) {
            AndroidUtilities.runOnUIThread(this.syncRunnable, (long) (1000.0f / AndroidUtilities.screenRefreshRate));
        }
    }
}
