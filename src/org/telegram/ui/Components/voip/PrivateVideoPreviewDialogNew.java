package org.telegram.ui.Components.voip;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Camera;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.RectF;
import android.media.projection.MediaProjectionManager;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import java.io.File;
import java.io.FileOutputStream;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.voip.VideoCapturerDevice;
import org.telegram.messenger.voip.VoIPService;
import org.telegram.tgnet.TLObject;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.BackDrawable;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.BitmapShaderTools;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.MotionBackgroundDrawable;
import org.webrtc.RendererCommon;

/* JADX INFO: loaded from: classes7.dex */
@TargetApi(21)
public abstract class PrivateVideoPreviewDialogNew extends FrameLayout implements VoIPService.StateListener {
    private ActionBar actionBar;
    private final MotionBackgroundDrawable bgBlueViolet;
    private final BitmapShaderTools bgBlueVioletShaderTools;
    private final MotionBackgroundDrawable bgGreen;
    private final BitmapShaderTools bgGreenShaderTools;
    private final Camera camera;
    private boolean cameraReady;
    private final Path clipPath;
    private float closeProgress;
    private boolean isDismissed;
    private final Matrix matrixLeft;
    private final Matrix matrixRight;
    private float openProgress1;
    private float openProgress2;
    private float openTranslationX;
    private float openTranslationY;
    private float pageOffset;
    private TextView positiveButton;
    private boolean positiveButtonDrawText;
    private int previousPage;
    private int realCurrentPage;
    private ValueAnimator scrollAnimator;
    private final GestureDetector scrollGestureDetector;
    private final float startLocationX;
    private final float startLocationY;
    private int strangeCurrentPage;
    private VoIPTextureView textureView;
    private VoIpBitmapTextView[] titles;
    private LinearLayout titlesLayout;
    private FrameLayout viewPager;
    private int visibleCameraPage;

    public abstract void afterOpened();

    public abstract void beforeClosed();

    public int[] getFloatingViewLocation() {
        return null;
    }

    public abstract boolean isHasVideoOnMainScreen();

    public abstract void onDismiss(boolean z, boolean z2);

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return true;
    }

    public PrivateVideoPreviewDialogNew(Context context, final float f, final float f2) {
        String string;
        super(context);
        this.visibleCameraPage = 1;
        this.previousPage = -1;
        this.openProgress1 = 0.0f;
        this.openProgress2 = 0.0f;
        this.closeProgress = 0.0f;
        this.clipPath = new Path();
        this.camera = new Camera();
        this.matrixRight = new Matrix();
        this.matrixLeft = new Matrix();
        this.bgGreenShaderTools = new BitmapShaderTools(80, 80);
        this.bgBlueVioletShaderTools = new BitmapShaderTools(80, 80);
        this.bgGreen = new MotionBackgroundDrawable(-10497967, -16730994, -5649306, -10833593, 0, false, true);
        this.bgBlueViolet = new MotionBackgroundDrawable(-16735258, -14061833, -15151390, -12602625, 0, false, true);
        this.startLocationX = f;
        this.startLocationY = f2;
        this.titles = new VoIpBitmapTextView[3];
        this.scrollGestureDetector = new GestureDetector(context, new C48921());
        FrameLayout frameLayout = new FrameLayout(context) { // from class: org.telegram.ui.Components.voip.PrivateVideoPreviewDialogNew.2
            @Override // android.view.View
            @SuppressLint({"ClickableViewAccessibility"})
            public boolean onTouchEvent(MotionEvent motionEvent) {
                PrivateVideoPreviewDialogNew.this.scrollGestureDetector.onTouchEvent(motionEvent);
                return super.onTouchEvent(motionEvent);
            }
        };
        this.viewPager = frameLayout;
        frameLayout.setClickable(true);
        addView(this.viewPager, LayoutHelper.createFrame(-1, -1.0f));
        VoIPTextureView voIPTextureView = new VoIPTextureView(context, false, false);
        this.textureView = voIPTextureView;
        voIPTextureView.renderer.setScalingType(RendererCommon.ScalingType.SCALE_ASPECT_FILL);
        VoIPTextureView voIPTextureView2 = this.textureView;
        voIPTextureView2.scaleType = VoIPTextureView.SCALE_TYPE_FIT;
        voIPTextureView2.clipToTexture = true;
        voIPTextureView2.renderer.setAlpha(0.0f);
        this.textureView.renderer.setRotateTextureWithScreen(true);
        this.textureView.renderer.setUseCameraRotation(true);
        addView(this.textureView, LayoutHelper.createFrame(-1, -1.0f));
        ActionBar actionBar = new ActionBar(context);
        this.actionBar = actionBar;
        actionBar.setBackButtonDrawable(new BackDrawable(false));
        this.actionBar.setBackgroundColor(0);
        this.actionBar.setItemsColor(Theme.getColor(Theme.key_voipgroup_actionBarItems), false);
        this.actionBar.setOccupyStatusBar(true);
        this.actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.Components.voip.PrivateVideoPreviewDialogNew.3
            @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    PrivateVideoPreviewDialogNew.this.dismiss(false, false);
                }
            }
        });
        addView(this.actionBar);
        TextView textView = new TextView(getContext()) { // from class: org.telegram.ui.Components.voip.PrivateVideoPreviewDialogNew.4
            private final Paint[] gradientPaint;
            private final Paint whitePaint;

            {
                Paint paint = new Paint();
                this.whitePaint = paint;
                this.gradientPaint = new Paint[PrivateVideoPreviewDialogNew.this.titles.length];
                PrivateVideoPreviewDialogNew.this.bgGreen.setBounds(0, 0, 80, 80);
                PrivateVideoPreviewDialogNew.this.bgBlueViolet.setBounds(0, 0, 80, 80);
                PrivateVideoPreviewDialogNew.this.bgGreenShaderTools.setBounds(0.0f, 0.0f, 80.0f, 80.0f);
                PrivateVideoPreviewDialogNew.this.bgBlueVioletShaderTools.setBounds(0.0f, 0.0f, 80.0f, 80.0f);
                PrivateVideoPreviewDialogNew.this.bgGreen.setAlpha(255);
                PrivateVideoPreviewDialogNew.this.bgBlueViolet.setAlpha(255);
                Canvas canvas = PrivateVideoPreviewDialogNew.this.bgGreenShaderTools.getCanvas();
                PorterDuff.Mode mode = PorterDuff.Mode.CLEAR;
                canvas.drawColor(0, mode);
                PrivateVideoPreviewDialogNew.this.bgBlueVioletShaderTools.getCanvas().drawColor(0, mode);
                PrivateVideoPreviewDialogNew.this.bgGreen.draw(PrivateVideoPreviewDialogNew.this.bgGreenShaderTools.getCanvas());
                PrivateVideoPreviewDialogNew.this.bgBlueViolet.draw(PrivateVideoPreviewDialogNew.this.bgBlueVioletShaderTools.getCanvas());
                paint.setColor(-1);
            }

            @Override // android.view.View
            public void onSizeChanged(int i, int i2, int i3, int i4) {
                super.onSizeChanged(i, i2, i3, i4);
                int i5 = 0;
                while (true) {
                    Paint[] paintArr = this.gradientPaint;
                    if (i5 >= paintArr.length) {
                        return;
                    }
                    if (i5 == 0) {
                        paintArr[i5] = PrivateVideoPreviewDialogNew.this.bgGreenShaderTools.paint;
                    } else {
                        PrivateVideoPreviewDialogNew privateVideoPreviewDialogNew = PrivateVideoPreviewDialogNew.this;
                        if (i5 == 1) {
                            paintArr[i5] = privateVideoPreviewDialogNew.bgBlueVioletShaderTools.paint;
                        } else {
                            paintArr[i5] = privateVideoPreviewDialogNew.bgGreenShaderTools.paint;
                        }
                    }
                    i5++;
                }
            }

            @Override // android.widget.TextView, android.view.View
            public void onDraw(Canvas canvas) {
                PrivateVideoPreviewDialogNew.this.bgGreenShaderTools.setBounds(-getX(), -getY(), PrivateVideoPreviewDialogNew.this.getWidth() - getX(), PrivateVideoPreviewDialogNew.this.getHeight() - getY());
                PrivateVideoPreviewDialogNew.this.bgBlueVioletShaderTools.setBounds(-getX(), -getY(), PrivateVideoPreviewDialogNew.this.getWidth() - getX(), PrivateVideoPreviewDialogNew.this.getHeight() - getY());
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(0.0f, 0.0f, getMeasuredWidth(), getMeasuredHeight());
                this.gradientPaint[PrivateVideoPreviewDialogNew.this.strangeCurrentPage].setAlpha(255);
                float fDp = AndroidUtilities.dp(8.0f) + ((int) ((AndroidUtilities.dp(26.0f) - AndroidUtilities.dp(8.0f)) * (1.0f - PrivateVideoPreviewDialogNew.this.openProgress1)));
                canvas.drawRoundRect(rectF, fDp, fDp, this.gradientPaint[PrivateVideoPreviewDialogNew.this.strangeCurrentPage]);
                if (PrivateVideoPreviewDialogNew.this.pageOffset > 0.0f) {
                    int i = PrivateVideoPreviewDialogNew.this.strangeCurrentPage + 1;
                    Paint[] paintArr = this.gradientPaint;
                    if (i < paintArr.length) {
                        paintArr[PrivateVideoPreviewDialogNew.this.strangeCurrentPage + 1].setAlpha((int) (PrivateVideoPreviewDialogNew.this.pageOffset * 255.0f));
                        canvas.drawRoundRect(rectF, fDp, fDp, this.gradientPaint[PrivateVideoPreviewDialogNew.this.strangeCurrentPage + 1]);
                    }
                }
                if (PrivateVideoPreviewDialogNew.this.openProgress1 < 1.0f) {
                    this.whitePaint.setAlpha((int) ((1.0f - PrivateVideoPreviewDialogNew.this.openProgress1) * 255.0f));
                    canvas.drawRoundRect(rectF, fDp, fDp, this.whitePaint);
                }
                super.onDraw(canvas);
                if (PrivateVideoPreviewDialogNew.this.positiveButtonDrawText) {
                    canvas.drawText(LocaleController.getString(C2807R.string.VoipShareVideo), getWidth() / 2, (int) ((getHeight() / 2) - ((PrivateVideoPreviewDialogNew.this.positiveButton.getPaint().descent() + PrivateVideoPreviewDialogNew.this.positiveButton.getPaint().ascent()) / 2.0f)), PrivateVideoPreviewDialogNew.this.positiveButton.getPaint());
                }
            }
        };
        this.positiveButton = textView;
        textView.setMaxLines(1);
        this.positiveButton.setEllipsize(null);
        this.positiveButton.setMinWidth(AndroidUtilities.dp(64.0f));
        this.positiveButton.setTag(-1);
        this.positiveButton.setTextSize(1, 14.0f);
        TextView textView2 = this.positiveButton;
        int i = Theme.key_voipgroup_nameText;
        textView2.setTextColor(Theme.getColor(i));
        this.positiveButton.setGravity(17);
        this.positiveButton.setTypeface(AndroidUtilities.bold());
        this.positiveButton.getPaint().setTextAlign(Paint.Align.CENTER);
        this.positiveButton.setContentDescription(LocaleController.getString(C2807R.string.VoipShareVideo));
        this.positiveButton.setForeground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.dp(8.0f), 0, ColorUtils.setAlphaComponent(Theme.getColor(i), 76)));
        this.positiveButton.setPadding(0, AndroidUtilities.dp(12.0f), 0, AndroidUtilities.dp(12.0f));
        this.positiveButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.voip.PrivateVideoPreviewDialogNew$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$0(view);
            }
        });
        addView(this.positiveButton, LayoutHelper.createFrame(52, 52.0f, 81, 0.0f, 0.0f, 0.0f, 80.0f));
        LinearLayout linearLayout = new LinearLayout(context) { // from class: org.telegram.ui.Components.voip.PrivateVideoPreviewDialogNew.5
            @Override // android.view.ViewGroup, android.view.View
            public void dispatchDraw(Canvas canvas) {
                int width = getWidth() / 2;
                int height = getHeight() / 2;
                PrivateVideoPreviewDialogNew.this.camera.save();
                PrivateVideoPreviewDialogNew.this.camera.rotateY(7.0f);
                PrivateVideoPreviewDialogNew.this.camera.getMatrix(PrivateVideoPreviewDialogNew.this.matrixRight);
                PrivateVideoPreviewDialogNew.this.camera.restore();
                float f3 = -width;
                float f4 = -height;
                PrivateVideoPreviewDialogNew.this.matrixRight.preTranslate(f3, f4);
                float f5 = width;
                float f6 = height;
                PrivateVideoPreviewDialogNew.this.matrixRight.postTranslate(f5, f6);
                canvas.save();
                canvas.clipRect(width, 0, getWidth(), getHeight());
                canvas.concat(PrivateVideoPreviewDialogNew.this.matrixRight);
                super.dispatchDraw(canvas);
                canvas.restore();
                PrivateVideoPreviewDialogNew.this.camera.save();
                PrivateVideoPreviewDialogNew.this.camera.rotateY(-7.0f);
                PrivateVideoPreviewDialogNew.this.camera.getMatrix(PrivateVideoPreviewDialogNew.this.matrixLeft);
                PrivateVideoPreviewDialogNew.this.camera.restore();
                PrivateVideoPreviewDialogNew.this.matrixLeft.preTranslate(f3, f4);
                PrivateVideoPreviewDialogNew.this.matrixLeft.postTranslate(f5, f6);
                canvas.save();
                canvas.clipRect(0, 0, width, getHeight());
                canvas.concat(PrivateVideoPreviewDialogNew.this.matrixLeft);
                super.dispatchDraw(canvas);
                canvas.restore();
            }
        };
        this.titlesLayout = linearLayout;
        linearLayout.setClipChildren(false);
        addView(this.titlesLayout, LayoutHelper.createFrame(-1, 64, 80));
        for (final int i2 = 0; i2 < this.titles.length; i2++) {
            if (i2 == 0) {
                string = LocaleController.getString(C2807R.string.VoipPhoneScreen);
            } else if (i2 == 1) {
                string = LocaleController.getString(C2807R.string.VoipFrontCamera);
            } else {
                string = LocaleController.getString(C2807R.string.VoipBackCamera);
            }
            this.titles[i2] = new VoIpBitmapTextView(context, string);
            this.titles[i2].setContentDescription(string);
            this.titles[i2].setPadding(AndroidUtilities.dp(16.0f), 0, AndroidUtilities.dp(10.0f), 0);
            this.titlesLayout.addView(this.titles[i2], LayoutHelper.createLinear(-2, -1));
            this.titles[i2].setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.voip.PrivateVideoPreviewDialogNew$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$1(i2, view);
                }
            });
        }
        setWillNotDraw(false);
        VoIPService sharedInstance = VoIPService.getSharedInstance();
        if (sharedInstance != null) {
            this.textureView.renderer.setMirror(sharedInstance.isFrontFaceCamera());
            this.textureView.renderer.init(VideoCapturerDevice.getEglBase().getEglBaseContext(), new RendererCommon.RendererEvents() { // from class: org.telegram.ui.Components.voip.PrivateVideoPreviewDialogNew.6
                @Override // org.webrtc.RendererCommon.RendererEvents
                public void onFirstFrameRendered() {
                }

                @Override // org.webrtc.RendererCommon.RendererEvents
                public void onFrameResolutionChanged(int i3, int i4, int i5) {
                }
            });
            sharedInstance.setLocalSink(this.textureView.renderer, false);
        }
        createPages(this.viewPager);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.voip.PrivateVideoPreviewDialogNew$$ExternalSyntheticLambda2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$new$2(f, f2, valueAnimator);
            }
        });
        valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.voip.PrivateVideoPreviewDialogNew.7
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (PrivateVideoPreviewDialogNew.this.isDismissed) {
                    return;
                }
                PrivateVideoPreviewDialogNew.this.afterOpened();
            }
        });
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.voip.PrivateVideoPreviewDialogNew$$ExternalSyntheticLambda3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$new$3(valueAnimator);
            }
        });
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.DEFAULT;
        valueAnimatorOfFloat.setInterpolator(cubicBezierInterpolator);
        valueAnimatorOfFloat.setDuration(320L);
        valueAnimatorOfFloat.start();
        valueAnimatorOfFloat2.setInterpolator(cubicBezierInterpolator);
        valueAnimatorOfFloat2.setDuration(320L);
        valueAnimatorOfFloat2.setStartDelay(32L);
        valueAnimatorOfFloat2.start();
        this.titlesLayout.setAlpha(0.0f);
        this.titlesLayout.setScaleY(0.8f);
        this.titlesLayout.setScaleX(0.8f);
        this.titlesLayout.animate().alpha(1.0f).scaleX(1.0f).scaleY(1.0f).setStartDelay(120L).setDuration(250L).start();
        this.positiveButton.setTranslationY(AndroidUtilities.dp(53.0f));
        this.positiveButton.setTranslationX((f - (AndroidUtilities.displaySize.x / 2.0f)) + AndroidUtilities.dp(8.0f) + AndroidUtilities.dp(26.0f));
        this.positiveButton.animate().translationY(0.0f).translationX(0.0f).setDuration(320L).start();
        this.positiveButtonDrawText = true;
        setCurrentPage(1, false);
    }

    /* JADX INFO: renamed from: org.telegram.ui.Components.voip.PrivateVideoPreviewDialogNew$1 */
    public class C48921 extends GestureDetector.SimpleOnGestureListener {
        private boolean lockDragging;
        private boolean startDragging;

        public C48921() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent motionEvent) {
            this.startDragging = true;
            return super.onDown(motionEvent);
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            final float x = motionEvent.getX() - motionEvent2.getX();
            float y = motionEvent.getY() - motionEvent2.getY();
            if (Math.abs(x) > AndroidUtilities.getPixelsInCM(0.4f, true) && Math.abs(x) / 3.0f > y && this.startDragging && !this.lockDragging) {
                this.startDragging = false;
                Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.voip.PrivateVideoPreviewDialogNew$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onScroll$0(x);
                    }
                };
                if (PrivateVideoPreviewDialogNew.this.scrollAnimator != null) {
                    this.lockDragging = true;
                    AndroidUtilities.runOnUIThread(runnable, (PrivateVideoPreviewDialogNew.this.scrollAnimator.getDuration() - PrivateVideoPreviewDialogNew.this.scrollAnimator.getCurrentPlayTime()) + 50);
                } else {
                    runnable.run();
                }
            }
            return super.onScroll(motionEvent, motionEvent2, f, f2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onScroll$0(float f) {
            PrivateVideoPreviewDialogNew privateVideoPreviewDialogNew = PrivateVideoPreviewDialogNew.this;
            if (f > 0.0f) {
                if (privateVideoPreviewDialogNew.realCurrentPage < 2) {
                    PrivateVideoPreviewDialogNew privateVideoPreviewDialogNew2 = PrivateVideoPreviewDialogNew.this;
                    privateVideoPreviewDialogNew2.setCurrentPage(privateVideoPreviewDialogNew2.realCurrentPage + 1, true);
                }
            } else if (privateVideoPreviewDialogNew.realCurrentPage > 0) {
                PrivateVideoPreviewDialogNew privateVideoPreviewDialogNew3 = PrivateVideoPreviewDialogNew.this;
                privateVideoPreviewDialogNew3.setCurrentPage(privateVideoPreviewDialogNew3.realCurrentPage - 1, true);
            }
            this.lockDragging = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        if (this.isDismissed) {
            return;
        }
        if (this.realCurrentPage == 0) {
            ((Activity) getContext()).startActivityForResult(((MediaProjectionManager) getContext().getSystemService("media_projection")).createScreenCaptureIntent(), 520);
        } else {
            dismiss(false, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(int i, View view) {
        if (this.scrollAnimator != null || view.getAlpha() == 0.0f) {
            return;
        }
        setCurrentPage(i, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(float f, float f2, ValueAnimator valueAnimator) {
        this.openProgress1 = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        float fDp = f + AndroidUtilities.dp(28.0f);
        float fDp2 = f2 + AndroidUtilities.dp(52.0f);
        float f3 = this.openProgress1;
        this.openTranslationX = fDp - (fDp * f3);
        this.openTranslationY = fDp2 - (f3 * fDp2);
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3(ValueAnimator valueAnimator) {
        this.openProgress2 = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.positiveButton.getLayoutParams().width = AndroidUtilities.dp(52.0f) + ((int) (((AndroidUtilities.displaySize.x - AndroidUtilities.dp(36.0f)) - AndroidUtilities.dp(52.0f)) * this.openProgress2));
        this.positiveButton.requestLayout();
    }

    private void showStub(boolean z, boolean z2) {
        Bitmap bitmapDecodeFile;
        ImageView imageView = (ImageView) this.viewPager.findViewWithTag("image_stab");
        if (z) {
            try {
                bitmapDecodeFile = BitmapFactory.decodeFile(new File(ApplicationLoader.getFilesDirFixed(), "cthumb" + this.visibleCameraPage + ".jpg").getAbsolutePath());
            } catch (Throwable unused) {
                bitmapDecodeFile = null;
            }
            if (bitmapDecodeFile != null && bitmapDecodeFile.getPixel(0, 0) != 0) {
                imageView.setImageBitmap(bitmapDecodeFile);
            } else {
                imageView.setImageResource(C2807R.drawable.icplaceholder);
            }
            if (z2) {
                imageView.setVisibility(0);
                imageView.setAlpha(0.0f);
                imageView.animate().alpha(1.0f).setDuration(250L).start();
                return;
            } else {
                imageView.setAlpha(1.0f);
                imageView.setVisibility(0);
                return;
            }
        }
        imageView.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCurrentPage(final int i, boolean z) {
        int i2;
        if (this.strangeCurrentPage == i || (i2 = this.realCurrentPage) == i) {
            return;
        }
        if (z) {
            if (i2 == 0) {
                if (this.visibleCameraPage != i) {
                    this.visibleCameraPage = i;
                    this.cameraReady = false;
                    showStub(true, true);
                    if (VoIPService.getSharedInstance() != null) {
                        VoIPService.getSharedInstance().switchCamera();
                    }
                } else {
                    showStub(false, false);
                    this.textureView.animate().alpha(1.0f).setDuration(250L).start();
                }
            } else if (i == 0) {
                this.viewPager.findViewWithTag("screencast_stub").setVisibility(0);
                saveLastCameraBitmap();
                showStub(false, false);
                this.textureView.animate().alpha(0.0f).setDuration(250L).start();
            } else {
                saveLastCameraBitmap();
                this.visibleCameraPage = i;
                this.cameraReady = false;
                showStub(true, false);
                this.textureView.animate().alpha(0.0f).setDuration(250L).start();
                if (VoIPService.getSharedInstance() != null) {
                    VoIPService.getSharedInstance().switchCamera();
                }
            }
            int i3 = this.realCurrentPage;
            if (i > i3) {
                this.previousPage = i3;
                this.realCurrentPage = i3 + 1;
                this.scrollAnimator = ValueAnimator.ofFloat(0.1f, 1.0f);
            } else {
                this.previousPage = i3;
                this.realCurrentPage = i3 - 1;
                this.strangeCurrentPage = i;
                this.scrollAnimator = ValueAnimator.ofFloat(1.0f, 0.0f);
            }
            this.scrollAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.voip.PrivateVideoPreviewDialogNew$$ExternalSyntheticLambda7
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f$0.lambda$setCurrentPage$4(valueAnimator);
                }
            });
            this.scrollAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.voip.PrivateVideoPreviewDialogNew.8
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    PrivateVideoPreviewDialogNew.this.previousPage = -1;
                    PrivateVideoPreviewDialogNew.this.strangeCurrentPage = i;
                    PrivateVideoPreviewDialogNew.this.pageOffset = 0.0f;
                    PrivateVideoPreviewDialogNew.this.scrollAnimator = null;
                    PrivateVideoPreviewDialogNew.this.updateTitlesLayout();
                }
            });
            this.scrollAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
            this.scrollAnimator.setDuration(350L);
            this.scrollAnimator.start();
            return;
        }
        this.realCurrentPage = i;
        this.strangeCurrentPage = i;
        this.pageOffset = 0.0f;
        updateTitlesLayout();
        this.textureView.setVisibility(0);
        this.cameraReady = false;
        this.visibleCameraPage = 1;
        showStub(true, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setCurrentPage$4(ValueAnimator valueAnimator) {
        this.pageOffset = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        updateTitlesLayout();
    }

    private void createPages(FrameLayout frameLayout) {
        FrameLayout frameLayout2 = new FrameLayout(getContext());
        frameLayout2.setBackground(new MotionBackgroundDrawable(-14602694, -13935795, -14395293, -14203560, true));
        ImageView imageView = new ImageView(getContext());
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        imageView.setImageResource(C2807R.drawable.screencast_big);
        frameLayout2.addView(imageView, LayoutHelper.createFrame(82, 82.0f, 17, 0.0f, 0.0f, 0.0f, 60.0f));
        TextView textView = new TextView(getContext());
        textView.setText(LocaleController.getString(C2807R.string.VoipVideoPrivateScreenSharing));
        textView.setGravity(17);
        textView.setLineSpacing(AndroidUtilities.dp(2.0f), 1.0f);
        textView.setTextColor(-1);
        textView.setTextSize(1, 15.0f);
        textView.setTypeface(AndroidUtilities.bold());
        frameLayout2.addView(textView, LayoutHelper.createFrame(-1, -2.0f, 17, 21.0f, 28.0f, 21.0f, 0.0f));
        frameLayout2.setTag("screencast_stub");
        frameLayout2.setVisibility(8);
        frameLayout.addView(frameLayout2);
        ImageView imageView2 = new ImageView(getContext());
        imageView2.setTag("image_stab");
        imageView2.setImageResource(C2807R.drawable.icplaceholder);
        imageView2.setScaleType(ImageView.ScaleType.FIT_XY);
        frameLayout.addView(imageView2);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        if (this.openProgress1 < 1.0f) {
            Point point = AndroidUtilities.displaySize;
            int i = point.x;
            int i2 = point.y + AndroidUtilities.statusBarHeight + AndroidUtilities.navigationBarHeight;
            float fDp = AndroidUtilities.dp(28.0f) - (AndroidUtilities.dp(28.0f) * this.openProgress1);
            this.clipPath.reset();
            Path path = this.clipPath;
            float fDp2 = this.startLocationX + AndroidUtilities.dp(33.5f);
            float fDp3 = this.startLocationY + AndroidUtilities.dp(26.6f);
            float fDp4 = AndroidUtilities.dp(26.0f);
            Path.Direction direction = Path.Direction.CW;
            path.addCircle(fDp2, fDp3, fDp4, direction);
            int iDp = AndroidUtilities.dp(52.0f);
            int iDp2 = AndroidUtilities.dp(52.0f);
            int iLerp = AndroidUtilities.lerp(iDp, i, this.openProgress1);
            int iLerp2 = AndroidUtilities.lerp(iDp2, i2, this.openProgress1);
            float fDp5 = this.openTranslationX - ((1.0f - this.openProgress1) * AndroidUtilities.dp(20.0f));
            float fDp6 = this.openTranslationY - ((1.0f - this.openProgress1) * AndroidUtilities.dp(51.0f));
            this.clipPath.addRoundRect(fDp5, fDp6, fDp5 + iLerp, fDp6 + iLerp2, fDp, fDp, direction);
            canvas.clipPath(this.clipPath);
        }
        if (this.closeProgress > 0.0f) {
            int[] floatingViewLocation = getFloatingViewLocation();
            float f = this.closeProgress;
            int i3 = (int) (floatingViewLocation[0] * f);
            int i4 = (int) (floatingViewLocation[1] * f);
            int i5 = floatingViewLocation[2];
            float f2 = (i5 + ((r7 - i5) * (1.0f - f))) / AndroidUtilities.displaySize.x;
            this.clipPath.reset();
            this.clipPath.addRoundRect(0.0f, 0.0f, getWidth() * f2, getHeight() * f2, AndroidUtilities.dp(6.0f), AndroidUtilities.dp(6.0f), Path.Direction.CW);
            canvas.translate(i3, i4);
            canvas.clipPath(this.clipPath);
            canvas.scale(f2, f2);
        }
        super.dispatchDraw(canvas);
    }

    public void dismiss(boolean z, boolean z2) {
        if (this.isDismissed || this.openProgress1 != 1.0f) {
            return;
        }
        beforeClosed();
        this.isDismissed = true;
        saveLastCameraBitmap();
        onDismiss(z, z2);
        if (isHasVideoOnMainScreen() && z2) {
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.voip.PrivateVideoPreviewDialogNew$$ExternalSyntheticLambda4
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f$0.lambda$dismiss$5(valueAnimator);
                }
            });
            valueAnimatorOfFloat.setInterpolator(CubicBezierInterpolator.DEFAULT);
            valueAnimatorOfFloat.setStartDelay(60L);
            valueAnimatorOfFloat.setDuration(350L);
            valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.voip.PrivateVideoPreviewDialogNew.9
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    if (PrivateVideoPreviewDialogNew.this.getParent() != null) {
                        ((ViewGroup) PrivateVideoPreviewDialogNew.this.getParent()).removeView(PrivateVideoPreviewDialogNew.this);
                    }
                }
            });
            valueAnimatorOfFloat.start();
            this.positiveButton.animate().setStartDelay(60L).alpha(0.0f).setDuration(100L).start();
            this.actionBar.animate().setStartDelay(60L).alpha(0.0f).setDuration(100L).start();
            this.titlesLayout.animate().setStartDelay(60L).alpha(0.0f).setDuration(100L).start();
        } else if (z2) {
            animate().setStartDelay(60L).alpha(0.0f).setDuration(350L).setInterpolator(CubicBezierInterpolator.DEFAULT).setListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.voip.PrivateVideoPreviewDialogNew.10
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    if (PrivateVideoPreviewDialogNew.this.getParent() != null) {
                        ((ViewGroup) PrivateVideoPreviewDialogNew.this.getParent()).removeView(PrivateVideoPreviewDialogNew.this);
                    }
                }
            });
        } else {
            ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(1.0f, 0.0f);
            valueAnimatorOfFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.voip.PrivateVideoPreviewDialogNew$$ExternalSyntheticLambda5
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f$0.lambda$dismiss$6(valueAnimator);
                }
            });
            valueAnimatorOfFloat2.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.voip.PrivateVideoPreviewDialogNew.11
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (PrivateVideoPreviewDialogNew.this.getParent() != null) {
                        ((ViewGroup) PrivateVideoPreviewDialogNew.this.getParent()).removeView(PrivateVideoPreviewDialogNew.this);
                    }
                }
            });
            ValueAnimator valueAnimatorOfFloat3 = ValueAnimator.ofFloat(1.0f, 0.0f);
            valueAnimatorOfFloat3.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.voip.PrivateVideoPreviewDialogNew$$ExternalSyntheticLambda6
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f$0.lambda$dismiss$7(valueAnimator);
                }
            });
            CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.DEFAULT;
            valueAnimatorOfFloat2.setInterpolator(cubicBezierInterpolator);
            valueAnimatorOfFloat2.setDuration(320L);
            valueAnimatorOfFloat2.start();
            valueAnimatorOfFloat3.setInterpolator(cubicBezierInterpolator);
            valueAnimatorOfFloat3.setDuration(320L);
            valueAnimatorOfFloat3.start();
            this.titlesLayout.setAlpha(1.0f);
            this.titlesLayout.setScaleY(1.0f);
            this.titlesLayout.setScaleX(1.0f);
            this.titlesLayout.animate().alpha(0.0f).scaleX(0.8f).scaleY(0.8f).setDuration(250L).start();
            this.positiveButton.animate().translationY(AndroidUtilities.dp(53.0f)).translationX((this.startLocationX - (AndroidUtilities.displaySize.x / 2.0f)) + AndroidUtilities.dp(8.0f) + AndroidUtilities.dp(26.0f)).setDuration(192L).start();
            animate().alpha(0.0f).setDuration(80L).setStartDelay(240L).start();
        }
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$dismiss$5(ValueAnimator valueAnimator) {
        this.closeProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$dismiss$6(ValueAnimator valueAnimator) {
        this.openProgress1 = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        float fDp = this.startLocationX + AndroidUtilities.dp(28.0f);
        float fDp2 = this.startLocationY + AndroidUtilities.dp(52.0f);
        float f = this.openProgress1;
        this.openTranslationX = fDp - (fDp * f);
        this.openTranslationY = fDp2 - (f * fDp2);
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$dismiss$7(ValueAnimator valueAnimator) {
        this.openProgress2 = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.positiveButton.getLayoutParams().width = AndroidUtilities.dp(52.0f) + ((int) (((AndroidUtilities.displaySize.x - AndroidUtilities.dp(36.0f)) - AndroidUtilities.dp(52.0f)) * this.openProgress2));
        this.positiveButton.requestLayout();
    }

    public void setBottomPadding(int i) {
        ((FrameLayout.LayoutParams) this.positiveButton.getLayoutParams()).bottomMargin = AndroidUtilities.dp(80.0f) + i;
        ((FrameLayout.LayoutParams) this.titlesLayout.getLayoutParams()).bottomMargin = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateTitlesLayout() {
        VoIpBitmapTextView[] voIpBitmapTextViewArr = this.titles;
        int i = this.strangeCurrentPage;
        VoIpBitmapTextView voIpBitmapTextView = voIpBitmapTextViewArr[i];
        VoIpBitmapTextView voIpBitmapTextView2 = i < voIpBitmapTextViewArr.length - 1 ? voIpBitmapTextViewArr[i + 1] : null;
        float left = voIpBitmapTextView.getLeft() + (voIpBitmapTextView.getMeasuredWidth() / 2);
        float measuredWidth = (getMeasuredWidth() / 2) - left;
        if (voIpBitmapTextView2 != null) {
            measuredWidth -= ((voIpBitmapTextView2.getLeft() + (voIpBitmapTextView2.getMeasuredWidth() / 2)) - left) * this.pageOffset;
        }
        int i2 = 0;
        while (true) {
            VoIpBitmapTextView[] voIpBitmapTextViewArr2 = this.titles;
            float f = 0.7f;
            if (i2 >= voIpBitmapTextViewArr2.length) {
                break;
            }
            int i3 = this.strangeCurrentPage;
            float f2 = 0.9f;
            if (i2 >= i3 && i2 <= i3 + 1) {
                float f3 = this.pageOffset;
                if (i2 == i3) {
                    f = 1.0f - (0.3f * f3);
                    f2 = 1.0f - (f3 * 0.1f);
                } else {
                    f = 0.7f + (0.3f * f3);
                    f2 = 0.9f + (f3 * 0.1f);
                }
            }
            voIpBitmapTextViewArr2[i2].setAlpha(f);
            this.titles[i2].setScaleX(f2);
            this.titles[i2].setScaleY(f2);
            this.titles[i2].setTranslationX(measuredWidth);
            i2++;
        }
        this.positiveButton.invalidate();
        if (this.realCurrentPage == 0) {
            this.titles[2].setAlpha(this.pageOffset * 0.7f);
        }
        if (this.realCurrentPage == 2) {
            float f4 = this.pageOffset;
            VoIpBitmapTextView[] voIpBitmapTextViewArr3 = this.titles;
            if (f4 > 0.0f) {
                voIpBitmapTextViewArr3[0].setAlpha((1.0f - f4) * 0.7f);
            } else {
                voIpBitmapTextViewArr3[0].setAlpha(0.0f);
            }
        }
        if (this.realCurrentPage == 1) {
            if (this.previousPage == 0) {
                this.titles[2].setAlpha(this.pageOffset * 0.7f);
            }
            if (this.previousPage == 2) {
                this.titles[0].setAlpha((1.0f - this.pageOffset) * 0.7f);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        VoIPService sharedInstance = VoIPService.getSharedInstance();
        if (sharedInstance != null) {
            sharedInstance.registerStateListener(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        VoIPService sharedInstance = VoIPService.getSharedInstance();
        if (sharedInstance != null) {
            sharedInstance.unregisterStateListener(this);
        }
    }

    private void saveLastCameraBitmap() {
        if (this.cameraReady) {
            try {
                Bitmap bitmap = this.textureView.renderer.getBitmap();
                if (bitmap != null) {
                    Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), this.textureView.renderer.getMatrix(), true);
                    bitmap.recycle();
                    Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapCreateBitmap, 80, (int) (bitmapCreateBitmap.getHeight() / (bitmapCreateBitmap.getWidth() / 80.0f)), true);
                    if (bitmapCreateScaledBitmap != null) {
                        if (bitmapCreateScaledBitmap != bitmapCreateBitmap) {
                            bitmapCreateBitmap.recycle();
                        }
                        Utilities.blurBitmap(bitmapCreateScaledBitmap, 7);
                        FileOutputStream fileOutputStream = new FileOutputStream(new File(ApplicationLoader.getFilesDirFixed(), "cthumb" + this.visibleCameraPage + ".jpg"));
                        bitmapCreateScaledBitmap.compress(Bitmap.CompressFormat.JPEG, 87, fileOutputStream);
                        fileOutputStream.close();
                        View viewFindViewWithTag = this.viewPager.findViewWithTag("image_stab");
                        if (viewFindViewWithTag instanceof ImageView) {
                            ((ImageView) viewFindViewWithTag).setImageBitmap(bitmapCreateScaledBitmap);
                        }
                    }
                }
            } catch (Throwable unused) {
            }
        }
    }

    @Override // org.telegram.messenger.voip.VoIPService.StateListener
    public void onCameraFirstFrameAvailable() {
        if (this.cameraReady) {
            return;
        }
        this.cameraReady = true;
        if (this.realCurrentPage != 0) {
            this.textureView.animate().alpha(1.0f).setDuration(250L).start();
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        updateTitlesLayout();
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        measureChildWithMargins(this.titlesLayout, View.MeasureSpec.makeMeasureSpec(0, 0), 0, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(64.0f), TLObject.FLAG_30), 0);
    }

    @Override // org.telegram.messenger.voip.VoIPService.StateListener
    public void onCameraSwitch(boolean z) {
        update();
    }

    public void update() {
        if (VoIPService.getSharedInstance() != null) {
            this.textureView.renderer.setMirror(VoIPService.getSharedInstance().isFrontFaceCamera());
        }
    }
}
