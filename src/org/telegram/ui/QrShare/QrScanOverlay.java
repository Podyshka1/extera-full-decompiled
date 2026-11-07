package org.telegram.ui.QrShare;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.TextureView;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import com.google.android.gms.vision.Frame;
import com.google.android.gms.vision.barcode.Barcode;
import com.google.android.gms.vision.barcode.BarcodeDetector;
import com.google.zxing.BinaryBitmap;
import com.google.zxing.RGBLuminanceSource;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.HybridBinarizer;
import com.google.zxing.qrcode.QRCodeReader;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.DispatchQueue;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageLoader;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.browser.Browser;
import org.telegram.messenger.camera.CameraController;
import org.telegram.messenger.camera.CameraSessionWrapper;
import org.telegram.messenger.camera.CameraView;
import org.telegram.tgnet.TLObject;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.BackDrawable;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.INavigationLayout;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.PhotoAlbumPickerActivity;
import org.telegram.ui.QrShare.QrScanOverlay;

/* JADX INFO: loaded from: classes7.dex */
@SuppressLint({"ViewConstructor"})
public final class QrScanOverlay extends FrameLayout {
    private Utilities.CallbackReturn<String, Boolean> accept;
    private ValueAnimator animator;
    private Object blurNode;
    private final RectF button;
    private String buttonLabel;
    private final TextPaint buttonLabelPaint;
    private CameraView cameraView;
    private final Path clip;
    private final BackDrawable closeIcon;
    private float closePress;
    private final RectF closeRect;
    private boolean closing;
    private Bitmap cornerBitmap;
    private final Paint cornerBitmapPaint;
    private final Paint cornerPaint;
    private final float cornerRadius;
    private boolean destroyed;
    private final Paint fill;
    private final Drawable flashIcon;
    private float flashPress;
    private final RectF flashRect;
    private boolean found;
    private float foundK;
    private final Paint foundPaint;
    private PointF[] foundPoints;
    private Bitmap frameBitmap;
    private final RectF frameRect;
    private final Drawable galleryIcon;
    private float galleryPress;
    private final RectF galleryRect;
    private final Listener listener;
    private Runnable onGallery;
    private final Path path;
    private boolean plainButton;
    private int pressed;
    private float progress;
    private final RimPainter rim;
    private final Runnable scanFrame;
    private final Handler scanHandler;
    private final Drawable scanIcon;
    private final HandlerThread scanThread;
    private volatile boolean scanning;
    private final RectF screenRect;
    private final RectF shape;
    private Bitmap snapshot;
    private Bitmap snapshotBlur;
    private BitmapShader snapshotBlurShader;
    private final Paint snapshotGlassPaint;
    private final Matrix snapshotMatrix;
    private final Paint snapshotPaint;
    private final RectF snapshotRect;
    private final RectF textureRect;
    private StaticLayout titleLayout;
    private final TextPaint titlePaint;
    private boolean torch;
    private float torchK;
    private BarcodeDetector visionReader;
    private QRCodeReader zxingReader;
    private static final CubicBezierInterpolator STRETCH = new CubicBezierInterpolator(0.05d, 0.7d, 0.1d, 1.0d);
    private static final CubicBezierInterpolator SHRINK = new CubicBezierInterpolator(0.3d, 0.0d, 0.1d, 1.0d);

    public interface Listener {
        void onClosed(QrScanOverlay qrScanOverlay);

        void onScanned(String str);
    }

    public void setButtonLabel(String str) {
        this.buttonLabel = str;
        this.buttonLabelPaint.setTypeface(AndroidUtilities.bold());
        this.buttonLabelPaint.setColor(-1);
        invalidate();
    }

    public void setPlainButton(boolean z) {
        this.plainButton = z;
        invalidate();
    }

    public void setAccept(Utilities.CallbackReturn<String, Boolean> callbackReturn) {
        this.accept = callbackReturn;
    }

    public void setOnGallery(Runnable runnable) {
        this.onGallery = runnable;
        requestLayout();
        invalidate();
    }

    public static QrScanOverlay open(final BaseFragment baseFragment, View view, final Utilities.CallbackReturn<String, Boolean> callbackReturn, final Utilities.Callback<String> callback, final Runnable runnable) {
        INavigationLayout parentLayout = baseFragment.getParentLayout();
        FrameLayout overlayContainerView = parentLayout != null ? parentLayout.getOverlayContainerView() : null;
        if (overlayContainerView == null || baseFragment.getParentActivity() == null) {
            return null;
        }
        overlayContainerView.getLocationInWindow(new int[2]);
        view.getLocationInWindow(new int[2]);
        float width = (r1[0] - r2[0]) + (view.getWidth() / 2.0f);
        float height = (r1[1] - r2[1]) + (view.getHeight() / 2.0f);
        float fMin = Math.min(view.getWidth(), view.getHeight()) / 2.0f;
        final QrScanOverlay qrScanOverlay = new QrScanOverlay(baseFragment.getParentActivity(), new RectF(width - fMin, height - fMin, width + fMin, height + fMin), new RectF(), new Listener() { // from class: org.telegram.ui.QrShare.QrScanOverlay.1
            @Override // org.telegram.ui.QrShare.QrScanOverlay.Listener
            public void onScanned(String str) {
                callback.run(str);
            }

            @Override // org.telegram.ui.QrShare.QrScanOverlay.Listener
            public void onClosed(QrScanOverlay qrScanOverlay2) {
                AndroidUtilities.removeFromParent(qrScanOverlay2);
                Runnable runnable2 = runnable;
                if (runnable2 != null) {
                    runnable2.run();
                }
            }
        });
        qrScanOverlay.setPlainButton(true);
        qrScanOverlay.setAccept(callbackReturn);
        qrScanOverlay.setOnGallery(new Runnable() { // from class: org.telegram.ui.QrShare.QrScanOverlay$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                QrScanOverlay.m20141$r8$lambda$BnrLrJMqAK670U2EnKG2pWGbVk(baseFragment, qrScanOverlay, callbackReturn, callback);
            }
        });
        overlayContainerView.addView(qrScanOverlay, LayoutHelper.createFrame(-1, -1.0f));
        return qrScanOverlay;
    }

    /* JADX INFO: renamed from: $r8$lambda$BnrLrJMqAK670U-2EnKG2pWGbVk, reason: not valid java name */
    public static /* synthetic */ void m20141$r8$lambda$BnrLrJMqAK670U2EnKG2pWGbVk(BaseFragment baseFragment, QrScanOverlay qrScanOverlay, Utilities.CallbackReturn callbackReturn, Utilities.Callback callback) {
        if (checkGalleryPermission(baseFragment.getParentActivity())) {
            qrScanOverlay.close();
            pickFromGallery(baseFragment, callbackReturn, callback);
        }
    }

    public static boolean checkGalleryPermission(Activity activity) {
        if (activity == null) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 33) {
            if (activity.checkSelfPermission("android.permission.READ_MEDIA_IMAGES") == 0) {
                return true;
            }
            activity.requestPermissions(new String[]{"android.permission.READ_MEDIA_IMAGES", "android.permission.READ_MEDIA_VIDEO"}, 4);
            return false;
        }
        if (activity.checkSelfPermission("android.permission.READ_EXTERNAL_STORAGE") == 0) {
            return true;
        }
        activity.requestPermissions(new String[]{"android.permission.READ_EXTERNAL_STORAGE"}, 4);
        return false;
    }

    public static void pickFromGallery(BaseFragment baseFragment, Utilities.CallbackReturn<String, Boolean> callbackReturn, Utilities.Callback<String> callback) {
        PhotoAlbumPickerActivity photoAlbumPickerActivity = new PhotoAlbumPickerActivity(PhotoAlbumPickerActivity.SELECT_TYPE_QR, false, false, null);
        photoAlbumPickerActivity.setMaxSelectedPhotos(1, false);
        photoAlbumPickerActivity.setAllowSearchImages(false);
        photoAlbumPickerActivity.setDelegate(new C57712(callbackReturn, baseFragment, callback));
        baseFragment.presentFragment(photoAlbumPickerActivity);
    }

    /* JADX INFO: renamed from: org.telegram.ui.QrShare.QrScanOverlay$2 */
    public class C57712 implements PhotoAlbumPickerActivity.PhotoAlbumPickerActivityDelegate {
        final /* synthetic */ Utilities.CallbackReturn val$accept;
        final /* synthetic */ BaseFragment val$fragment;
        final /* synthetic */ Utilities.Callback val$onScanned;

        @Override // org.telegram.ui.PhotoAlbumPickerActivity.PhotoAlbumPickerActivityDelegate
        public void startPhotoSelectActivity() {
        }

        public C57712(Utilities.CallbackReturn callbackReturn, BaseFragment baseFragment, Utilities.Callback callback) {
            this.val$accept = callbackReturn;
            this.val$fragment = baseFragment;
            this.val$onScanned = callback;
        }

        @Override // org.telegram.ui.PhotoAlbumPickerActivity.PhotoAlbumPickerActivityDelegate
        public void didSelectPhotos(ArrayList<SendMessagesHelper.SendingMediaInfo> arrayList, boolean z, int i) {
            final String str = !arrayList.isEmpty() ? arrayList.get(0).path : null;
            if (str == null) {
                return;
            }
            DispatchQueue dispatchQueue = Utilities.globalQueue;
            final Utilities.CallbackReturn callbackReturn = this.val$accept;
            final BaseFragment baseFragment = this.val$fragment;
            final Utilities.Callback callback = this.val$onScanned;
            dispatchQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.QrShare.QrScanOverlay$2$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    QrScanOverlay.C57712.$r8$lambda$kAUaigsDgij15TZ3hVu2MB950ac(str, callbackReturn, baseFragment, callback);
                }
            });
        }

        public static /* synthetic */ void $r8$lambda$kAUaigsDgij15TZ3hVu2MB950ac(String str, Utilities.CallbackReturn callbackReturn, final BaseFragment baseFragment, final Utilities.Callback callback) {
            final String qr = null;
            try {
                Point realScreenSize = AndroidUtilities.getRealScreenSize();
                Bitmap bitmapLoadBitmap = ImageLoader.loadBitmap(str, null, realScreenSize.x, realScreenSize.y, true);
                if (bitmapLoadBitmap != null) {
                    qr = QrScanOverlay.readQr(bitmapLoadBitmap, callbackReturn);
                    bitmapLoadBitmap.recycle();
                }
            } catch (Throwable th) {
                FileLog.m1040e(th);
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.QrShare.QrScanOverlay$2$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    BaseFragment baseFragment2 = baseFragment;
                    QrScanOverlay.whenOnTop(baseFragment2, 0, new Runnable() { // from class: org.telegram.ui.QrShare.QrScanOverlay$2$$ExternalSyntheticLambda2
                        @Override // java.lang.Runnable
                        public final void run() {
                            QrScanOverlay.C57712.$r8$lambda$rbGTwT_zVAzwQRibDhmvGTq2LCY(str, callback, baseFragment2);
                        }
                    });
                }
            });
        }

        public static /* synthetic */ void $r8$lambda$rbGTwT_zVAzwQRibDhmvGTq2LCY(String str, Utilities.Callback callback, BaseFragment baseFragment) {
            if (str != null) {
                callback.run(str);
            } else {
                BulletinFactory.of(baseFragment).createSimpleBulletin(LocaleController.getString(C2807R.string.ScanQrCode), LocaleController.getString(C2807R.string.ErrorOccurred)).show();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void whenOnTop(final BaseFragment baseFragment, final int i, final Runnable runnable) {
        if (baseFragment.isFinished) {
            return;
        }
        INavigationLayout parentLayout = baseFragment.getParentLayout();
        if (parentLayout == null || ((parentLayout.getLastFragment() == baseFragment && !parentLayout.isTransitionAnimationInProgress()) || i >= 40)) {
            runnable.run();
        } else {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.QrShare.QrScanOverlay$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    QrScanOverlay.whenOnTop(baseFragment, i + 1, runnable);
                }
            }, 50L);
        }
    }

    public static String readQr(Bitmap bitmap, Utilities.CallbackReturn<String, Boolean> callbackReturn) {
        BarcodeDetector barcodeDetectorBuild;
        try {
            barcodeDetectorBuild = new BarcodeDetector.Builder(ApplicationLoader.applicationContext).setBarcodeFormats(256).build();
        } catch (Throwable th) {
            FileLog.m1040e(th);
            barcodeDetectorBuild = null;
        }
        try {
            Scanned scannedDecode = decode(bitmap, barcodeDetectorBuild, new QRCodeReader(), callbackReturn);
            return scannedDecode != null ? scannedDecode.link : null;
        } finally {
            if (barcodeDetectorBuild != null) {
                barcodeDetectorBuild.release();
            }
        }
    }

    public QrScanOverlay(Context context, RectF rectF, RectF rectF2, Listener listener) {
        super(context);
        RectF rectF3 = new RectF();
        this.button = rectF3;
        this.shape = new RectF();
        RectF rectF4 = new RectF();
        this.closeRect = rectF4;
        this.flashRect = new RectF();
        this.galleryRect = new RectF();
        this.frameRect = new RectF();
        this.textureRect = new RectF();
        this.clip = new Path();
        this.path = new Path();
        this.fill = new Paint(1);
        Paint paint = new Paint(1);
        this.cornerPaint = paint;
        Paint paint2 = new Paint(1);
        this.foundPaint = paint2;
        this.rim = new RimPainter();
        BackDrawable backDrawable = new BackDrawable(true);
        this.closeIcon = backDrawable;
        TextPaint textPaint = new TextPaint(1);
        this.titlePaint = textPaint;
        this.buttonLabelPaint = new TextPaint(1);
        this.accept = new QrScanOverlay$$ExternalSyntheticLambda2();
        this.pressed = -1;
        this.closePress = 1.0f;
        this.flashPress = 1.0f;
        this.galleryPress = 1.0f;
        HandlerThread handlerThread = new HandlerThread("QrScan");
        this.scanThread = handlerThread;
        this.snapshotRect = new RectF();
        this.snapshotPaint = new Paint(2);
        this.snapshotGlassPaint = new Paint(3);
        this.snapshotMatrix = new Matrix();
        this.cornerBitmapPaint = new Paint(2);
        this.screenRect = new RectF();
        this.scanFrame = new RunnableC57734();
        this.listener = listener;
        rectF3.set(rectF);
        rectF4.set(rectF2);
        setWillNotDraw(false);
        this.scanIcon = tinted(context, C2807R.drawable.msg_qr_scan);
        this.flashIcon = tinted(context, C2807R.drawable.qr_flashlight);
        this.galleryIcon = tinted(context, C2807R.drawable.qr_gallery);
        backDrawable.setColor(-1);
        backDrawable.setRotatedColor(-1);
        textPaint.setColor(-1);
        textPaint.setTextSize(AndroidUtilities.dp(22.0f));
        textPaint.setTypeface(AndroidUtilities.bold());
        Paint.Style style = Paint.Style.STROKE;
        paint.setStyle(style);
        Paint.Cap cap = Paint.Cap.ROUND;
        paint.setStrokeCap(cap);
        Paint.Join join = Paint.Join.ROUND;
        paint.setStrokeJoin(join);
        paint.setColor(-1);
        paint.setStrokeWidth(AndroidUtilities.dp(4.0f));
        paint2.setStyle(style);
        paint2.setStrokeCap(cap);
        paint2.setStrokeJoin(join);
        paint2.setColor(-8697);
        paint2.setStrokeWidth(AndroidUtilities.dp(6.0f));
        this.cornerRadius = screenCornerRadius();
        handlerThread.start();
        Handler handler = new Handler(handlerThread.getLooper());
        this.scanHandler = handler;
        handler.post(new Runnable() { // from class: org.telegram.ui.QrShare.QrScanOverlay$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$2();
            }
        });
        applyProgress();
        animate(1.0f, 390L, new Runnable() { // from class: org.telegram.ui.QrShare.QrScanOverlay$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.startCamera();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2() {
        try {
            this.visionReader = new BarcodeDetector.Builder(ApplicationLoader.applicationContext).setBarcodeFormats(256).build();
        } catch (Throwable th) {
            FileLog.m1040e(th);
        }
        this.zxingReader = new QRCodeReader();
    }

    private static Drawable tinted(Context context, int i) {
        Drawable drawableMutate = ContextCompat.getDrawable(context, i).mutate();
        drawableMutate.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_IN));
        return drawableMutate;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6 */
    private float screenCornerRadius() {
        Activity activityFindActivity = AndroidUtilities.findActivity(getContext());
        ?? decorView = this;
        if (activityFindActivity != null) {
            decorView = activityFindActivity.getWindow().getDecorView();
        }
        return QrRender.screenCornerRadius(decorView);
    }

    public void close() {
        if (this.closing || this.destroyed) {
            return;
        }
        this.closing = true;
        this.scanning = false;
        takeSnapshot();
        releaseCamera();
        animate(0.0f, 330L, new Runnable() { // from class: org.telegram.ui.QrShare.QrScanOverlay$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$close$3();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$close$3() {
        destroy();
        this.listener.onClosed(this);
    }

    public void destroy() {
        if (this.destroyed) {
            return;
        }
        this.destroyed = true;
        this.scanning = false;
        ValueAnimator valueAnimator = this.animator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.animator = null;
        }
        releaseCamera();
        this.scanHandler.removeCallbacksAndMessages(null);
        this.scanHandler.post(new Runnable() { // from class: org.telegram.ui.QrShare.QrScanOverlay$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$destroy$4();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$destroy$4() {
        BarcodeDetector barcodeDetector = this.visionReader;
        if (barcodeDetector != null) {
            barcodeDetector.release();
            this.visionReader = null;
        }
        Bitmap bitmap = this.frameBitmap;
        if (bitmap != null) {
            bitmap.recycle();
            this.frameBitmap = null;
        }
        this.scanThread.quitSafely();
    }

    private void animate(float f, long j, final Runnable runnable) {
        ValueAnimator valueAnimator = this.animator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.progress, f);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.QrShare.QrScanOverlay$$ExternalSyntheticLambda7
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f$0.lambda$animate$5(valueAnimator2);
            }
        });
        valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.QrShare.QrScanOverlay.3
            private boolean cancelled;

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                this.cancelled = true;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                Runnable runnable2;
                if (QrScanOverlay.this.animator == animator) {
                    QrScanOverlay.this.animator = null;
                }
                if (this.cancelled || (runnable2 = runnable) == null) {
                    return;
                }
                runnable2.run();
            }
        });
        valueAnimatorOfFloat.setDuration((long) (j * Math.abs(f - this.progress)));
        valueAnimatorOfFloat.setInterpolator(new LinearInterpolator());
        this.animator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animate$5(ValueAnimator valueAnimator) {
        this.progress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        applyProgress();
    }

    private float stretch() {
        boolean z = this.closing;
        float f = this.progress;
        if (z) {
            return 1.0f - SHRINK.getInterpolation(1.0f - f);
        }
        return STRETCH.getInterpolation(Utilities.clamp01(f));
    }

    private float contentAlpha() {
        return Utilities.clamp01((stretch() - 0.15f) / 0.45f);
    }

    private void applyProgress() {
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startCamera() {
        if (this.destroyed || this.closing || this.cameraView != null || !CameraView.isCameraAllowed()) {
            return;
        }
        CameraController.getInstance().initCamera(null);
        final CameraView cameraView = new CameraView(getContext(), false);
        cameraView.setUseMaxPreview(true);
        cameraView.setOptimizeForBarcode(true);
        cameraView.setAlpha(0.0f);
        cameraView.setDelegate(new CameraView.CameraViewDelegate() { // from class: org.telegram.ui.QrShare.QrScanOverlay$$ExternalSyntheticLambda6
            @Override // org.telegram.messenger.camera.CameraView.CameraViewDelegate
            public final void onCameraInit() {
                this.f$0.lambda$startCamera$6(cameraView);
            }
        });
        this.cameraView = cameraView;
        addView(cameraView, 0, LayoutHelper.createFrame(-1, -1.0f));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startCamera$6(CameraView cameraView) {
        cameraView.animate().alpha(1.0f).setDuration(180L).start();
        startScanning();
    }

    private void releaseCamera() {
        CameraView cameraView = this.cameraView;
        if (cameraView == null) {
            return;
        }
        this.cameraView = null;
        this.blurNode = null;
        CameraSessionWrapper cameraSession = cameraView.getCameraSession();
        if (this.torch && cameraSession != null) {
            cameraSession.setCurrentFlashMode("off");
        }
        cameraView.animate().cancel();
        cameraView.destroy(true, null);
        removeView(cameraView);
    }

    private void takeSnapshot() {
        TextureView textureView;
        CameraView cameraView = this.cameraView;
        if (cameraView == null || cameraView.getAlpha() < 0.5f || (textureView = cameraView.getTextureView()) == null || !textureView.isAvailable() || textureView.getWidth() <= 0 || textureView.getHeight() <= 0) {
            return;
        }
        try {
            this.snapshot = textureView.getBitmap(Math.max(1, textureView.getWidth() / 2), Math.max(1, textureView.getHeight() / 2));
        } catch (Throwable th) {
            FileLog.m1040e(th);
            this.snapshot = null;
        }
        if (this.snapshot == null) {
            return;
        }
        this.snapshotRect.set(cameraView.getLeft() + textureView.getLeft(), cameraView.getTop() + textureView.getTop(), cameraView.getLeft() + textureView.getRight(), cameraView.getTop() + textureView.getBottom());
        if (blurAllowed()) {
            Bitmap bitmap = this.snapshot;
            Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, Math.max(1, bitmap.getWidth() / 8), Math.max(1, this.snapshot.getHeight() / 8), true);
            this.snapshotBlur = bitmapCreateScaledBitmap;
            Utilities.stackBlurBitmap(bitmapCreateScaledBitmap, 6);
            Bitmap bitmap2 = this.snapshotBlur;
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            this.snapshotBlurShader = new BitmapShader(bitmap2, tileMode, tileMode);
            this.snapshotMatrix.setScale(this.snapshotRect.width() / this.snapshotBlur.getWidth(), this.snapshotRect.height() / this.snapshotBlur.getHeight());
            Matrix matrix = this.snapshotMatrix;
            RectF rectF = this.snapshotRect;
            matrix.postTranslate(rectF.left, rectF.top);
            this.snapshotBlurShader.setLocalMatrix(this.snapshotMatrix);
            this.snapshotGlassPaint.setShader(this.snapshotBlurShader);
        }
    }

    private static boolean blurAllowed() {
        return QrRender.hasEffects() && LiteMode.isEnabled(256);
    }

    private void updateShape() {
        float fStretch = stretch();
        float fWidth = this.button.width() / 2.0f;
        float fHeight = this.button.height() / 2.0f;
        float fCenterX = this.button.centerX();
        float fCenterY = this.button.centerY();
        this.shape.set(AndroidUtilities.lerp(fCenterX - fWidth, 0.0f, fStretch), AndroidUtilities.lerp(fCenterY - fHeight, 0.0f, fStretch), AndroidUtilities.lerp(fCenterX + fWidth, getWidth(), fStretch), AndroidUtilities.lerp(fCenterY + fHeight, getHeight(), fStretch));
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        int i5 = i3 - i;
        float fMin = Math.min(i5, r2) * 0.66f;
        float fDp = ((i4 - i2) / 2.0f) - AndroidUtilities.dp(20.0f);
        float f = i5 / 2.0f;
        float f2 = fMin / 2.0f;
        this.frameRect.set(f - f2, fDp - f2, f + f2, fDp + f2);
        float fDp2 = AndroidUtilities.dp(56.0f);
        float fDp3 = this.frameRect.bottom + AndroidUtilities.dp(64.0f);
        float fDp4 = this.onGallery != null ? AndroidUtilities.dp(35.0f) + f + (fDp2 / 2.0f) : f;
        float f3 = fDp2 / 2.0f;
        float f4 = fDp2 + fDp3;
        this.flashRect.set(fDp4 - f3, fDp3, fDp4 + f3, f4);
        float fDp5 = (f - AndroidUtilities.dp(35.0f)) - f3;
        this.galleryRect.set(fDp5 - f3, fDp3, fDp5 + f3, f4);
        this.titleLayout = new StaticLayout(LocaleController.getString(C2807R.string.ScanQrCode), this.titlePaint, Math.max(1, i5 - AndroidUtilities.dp(72.0f)), Layout.Alignment.ALIGN_CENTER, 1.0f, 0.0f, false);
        if (this.closeRect.isEmpty()) {
            float fInsetTop = QrShareView.insetTop(this) + (ActionBar.getCurrentActionBarHeight() / 2.0f);
            this.closeRect.set(AndroidUtilities.dp(9.0f), fInsetTop - AndroidUtilities.dp(20.0f), AndroidUtilities.dp(49.0f), fInsetTop + AndroidUtilities.dp(20.0f));
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        updateShape();
        float fLerp = AndroidUtilities.lerp(this.button.height() / 2.0f, this.cornerRadius, stretch());
        int iSave = canvas.save();
        if (this.progress < 1.0f) {
            this.clip.rewind();
            this.clip.addRoundRect(this.shape, fLerp, fLerp, Path.Direction.CW);
            canvas.clipPath(this.clip);
        }
        float fClamp01 = 1.0f - Utilities.clamp01(stretch() / 0.35f);
        float fClamp012 = Utilities.clamp01(stretch() / 0.3f);
        if (fClamp012 > 0.0f) {
            this.fill.setColor(-16777216);
            this.fill.setAlpha((int) (fClamp012 * 255.0f));
            canvas.drawRect(this.shape, this.fill);
        }
        int width = getWidth();
        int height = getHeight();
        if (this.progress < 1.0f && width > 0 && height > 0) {
            float fMax = Math.max(this.shape.width() / width, this.shape.height() / height);
            canvas.translate(this.shape.centerX(), this.shape.centerY());
            canvas.scale(fMax, fMax);
            canvas.translate((-width) / 2.0f, (-height) / 2.0f);
        }
        super.dispatchDraw(canvas);
        if (this.snapshot != null) {
            this.snapshotPaint.setAlpha((int) (contentAlpha() * 255.0f));
            canvas.drawBitmap(this.snapshot, (Rect) null, this.snapshotRect, this.snapshotPaint);
        }
        float fContentAlpha = contentAlpha();
        if (fContentAlpha > 0.0f) {
            drawScanner(canvas, fContentAlpha);
        }
        canvas.restoreToCount(iSave);
        if (fClamp01 <= 0.0f || this.plainButton) {
            return;
        }
        drawGlassBody(canvas, this.shape, fLerp, fClamp01, false);
        if (this.buttonLabel != null) {
            float fDp = this.shape.left + ((AndroidUtilities.dp(12.0f) + AndroidUtilities.dp(10.0f)) * 1.0f);
            float fDp2 = ((int) (AndroidUtilities.dp(20.0f) * 1.0f)) / 2.0f;
            this.scanIcon.setBounds((int) (fDp - fDp2), (int) (this.shape.centerY() - fDp2), (int) (fDp + fDp2), (int) (this.shape.centerY() + fDp2));
            int i = (int) (fClamp01 * 255.0f);
            this.scanIcon.setAlpha(i);
            this.scanIcon.draw(canvas);
            this.buttonLabelPaint.setTextSize(AndroidUtilities.dp(14.0f) * 1.0f);
            this.buttonLabelPaint.setAlpha(i);
            Paint.FontMetrics fontMetrics = this.buttonLabelPaint.getFontMetrics();
            canvas.drawText(this.buttonLabel, this.shape.left + ((AndroidUtilities.dp(12.0f) + AndroidUtilities.dp(20.0f) + AndroidUtilities.dp(6.0f)) * 1.0f), this.shape.centerY() - ((fontMetrics.ascent + fontMetrics.descent) / 2.0f), this.buttonLabelPaint);
            return;
        }
        Drawable drawable = this.scanIcon;
        float fCenterX = this.shape.centerX();
        float fDp3 = ((int) (AndroidUtilities.dp(22.0f) * 1.0f)) / 2.0f;
        drawable.setBounds((int) (fCenterX - fDp3), (int) (this.shape.centerY() - fDp3), (int) (this.shape.centerX() + fDp3), (int) (this.shape.centerY() + fDp3));
        this.scanIcon.setAlpha((int) (fClamp01 * 255.0f));
        this.scanIcon.draw(canvas);
    }

    private void drawScanner(Canvas canvas, float f) {
        Canvas canvas2;
        float fDp = AndroidUtilities.dp(14.0f);
        this.fill.setColor(TLObject.FLAG_30);
        this.fill.setAlpha((int) (64.0f * f));
        if (Build.VERSION.SDK_INT >= 29) {
            this.screenRect.set(0.0f, 0.0f, getWidth(), getHeight());
            canvas2 = canvas;
            canvas2.drawDoubleRoundRect(this.screenRect, 0.0f, 0.0f, this.frameRect, fDp, fDp, this.fill);
        } else {
            canvas2 = canvas;
            this.path.rewind();
            this.path.setFillType(Path.FillType.EVEN_ODD);
            Path path = this.path;
            float width = getWidth();
            float height = getHeight();
            Path.Direction direction = Path.Direction.CW;
            path.addRect(0.0f, 0.0f, width, height, direction);
            this.path.addRoundRect(this.frameRect, fDp, fDp, direction);
            canvas2.drawPath(this.path, this.fill);
            this.path.setFillType(Path.FillType.WINDING);
        }
        drawCorners(canvas2, fDp, (1.0f - this.foundK) * f);
        if (this.titleLayout != null) {
            canvas2.save();
            canvas2.translate((getWidth() / 2.0f) - (this.titleLayout.getWidth() / 2.0f), (this.frameRect.top - AndroidUtilities.dp(36.0f)) - this.titleLayout.getHeight());
            this.titlePaint.setAlpha((int) (255.0f * f));
            this.titleLayout.draw(canvas2);
            canvas2.restore();
        }
        drawFound(canvas, f);
        this.closePress = approach(this.closePress, this.pressed == 0 ? 0.88f : 1.0f);
        this.flashPress = approach(this.flashPress, this.pressed == 1 ? 0.88f : 1.0f);
        this.galleryPress = approach(this.galleryPress, this.pressed != 2 ? 1.0f : 0.88f);
        this.torchK = approach(this.torchK, this.torch ? 1.0f : 0.0f);
        drawButton(canvas2, this.closeRect, this.closePress, f, null);
        drawButton(canvas, this.flashRect, this.flashPress, f, this.flashIcon);
        if (this.onGallery != null) {
            drawButton(canvas, this.galleryRect, this.galleryPress, f, this.galleryIcon);
        }
    }

    private void drawCorners(Canvas canvas, float f, float f2) {
        if (f2 <= 0.004f) {
            return;
        }
        float fDp = AndroidUtilities.dp(28.0f);
        int iCeil = ((int) Math.ceil(this.cornerPaint.getStrokeWidth() / 2.0f)) + 1;
        if (this.cornerBitmap == null) {
            int iCeil2 = ((int) Math.ceil(fDp)) + (iCeil * 2);
            this.cornerBitmap = Bitmap.createBitmap(iCeil2, iCeil2, Bitmap.Config.ARGB_8888);
            Path path = new Path();
            float f3 = iCeil;
            float f4 = fDp + f3;
            path.moveTo(f3, f4);
            float f5 = f + f3;
            path.lineTo(f3, f5);
            path.quadTo(f3, f3, f5, f3);
            path.lineTo(f4, f3);
            Paint paint = new Paint(this.cornerPaint);
            paint.setAlpha(255);
            new Canvas(this.cornerBitmap).drawPath(path, paint);
            this.cornerBitmap.prepareToDraw();
        }
        this.cornerBitmapPaint.setAlpha((int) (f2 * 255.0f));
        RectF rectF = this.frameRect;
        int i = 0;
        while (i < 4) {
            boolean z = i == 1 || i == 2;
            boolean z2 = i >= 2;
            canvas.save();
            canvas.translate(z ? rectF.right : rectF.left, z2 ? rectF.bottom : rectF.top);
            float f6 = 1.0f;
            float f7 = z ? -1.0f : 1.0f;
            if (z2) {
                f6 = -1.0f;
            }
            canvas.scale(f7, f6);
            float f8 = -iCeil;
            canvas.drawBitmap(this.cornerBitmap, f8, f8, this.cornerBitmapPaint);
            canvas.restore();
            i++;
        }
    }

    private void drawFound(Canvas canvas, float f) {
        CameraView cameraView;
        float f2 = 0.0f;
        float fApproach = approach(this.foundK, this.foundPoints != null ? 1.0f : 0.0f);
        this.foundK = fApproach;
        PointF[] pointFArr = this.foundPoints;
        if (pointFArr == null || pointFArr.length < 3 || (cameraView = this.cameraView) == null || fApproach <= 0.0f) {
            return;
        }
        TextureView textureView = cameraView.getTextureView();
        this.textureRect.set(this.cameraView.getLeft() + textureView.getLeft(), this.cameraView.getTop() + textureView.getTop(), this.cameraView.getLeft() + textureView.getRight(), this.cameraView.getTop() + textureView.getBottom());
        int iMin = Math.min(4, this.foundPoints.length);
        int i = 0;
        float f3 = 0.0f;
        for (int i2 = 0; i2 < iMin; i2++) {
            PointF pointF = this.foundPoints[i2];
            f2 += pointF.x;
            f3 += pointF.y;
        }
        RectF rectF = this.textureRect;
        float f4 = iMin;
        float fWidth = rectF.left + ((f2 / f4) * rectF.width());
        RectF rectF2 = this.textureRect;
        float fHeight = rectF2.top + ((f3 / f4) * rectF2.height());
        this.path.rewind();
        while (i < iMin) {
            PointF[] pointFArr2 = this.foundPoints;
            PointF pointF2 = pointFArr2[((i + iMin) - 1) % iMin];
            PointF pointF3 = pointFArr2[i];
            i++;
            PointF pointF4 = pointFArr2[i % iMin];
            RectF rectF3 = this.textureRect;
            float fWidth2 = rectF3.left + (pointF3.x * rectF3.width());
            RectF rectF4 = this.textureRect;
            float fHeight2 = rectF4.top + (pointF3.y * rectF4.height());
            RectF rectF5 = this.textureRect;
            float fWidth3 = rectF5.left + (pointF2.x * rectF5.width());
            RectF rectF6 = this.textureRect;
            float fHeight3 = rectF6.top + (pointF2.y * rectF6.height());
            RectF rectF7 = this.textureRect;
            float fWidth4 = rectF7.left + (pointF4.x * rectF7.width());
            RectF rectF8 = this.textureRect;
            float fHeight4 = rectF8.top + (pointF4.y * rectF8.height());
            this.path.moveTo(((fWidth3 - fWidth2) * 0.18f) + fWidth2, ((fHeight3 - fHeight2) * 0.18f) + fHeight2);
            this.path.lineTo(fWidth2, fHeight2);
            this.path.lineTo(fWidth2 + ((fWidth4 - fWidth2) * 0.18f), fHeight2 + ((fHeight4 - fHeight2) * 0.18f));
        }
        canvas.save();
        float fLerp = AndroidUtilities.lerp(0.5f, 1.1f, this.foundK);
        canvas.scale(fLerp, fLerp, fWidth, fHeight);
        this.foundPaint.setAlpha((int) (this.foundK * 255.0f * f));
        canvas.drawPath(this.path, this.foundPaint);
        canvas.restore();
    }

    private float approach(float f, float f2) {
        if (Math.abs(f - f2) < 0.005f) {
            return f2;
        }
        invalidate();
        return f + ((f2 - f) * 0.3f);
    }

    private void drawButton(Canvas canvas, RectF rectF, float f, float f2, Drawable drawable) {
        canvas.save();
        canvas.scale(f, f, rectF.centerX(), rectF.centerY());
        float fHeight = rectF.height() / 2.0f;
        drawGlassBody(canvas, rectF, fHeight, f2, true);
        if (drawable == this.flashIcon && this.torchK > 0.0f) {
            this.fill.setColor(-1);
            this.fill.setAlpha((int) (this.torchK * 102.0f * f2));
            canvas.drawRoundRect(rectF, fHeight, fHeight, this.fill);
        }
        if (drawable != null) {
            float fDp = AndroidUtilities.dp(28.0f) / 2.0f;
            drawable.setBounds((int) (rectF.centerX() - fDp), (int) (rectF.centerY() - fDp), (int) (rectF.centerX() + fDp), (int) (rectF.centerY() + fDp));
            drawable.setAlpha((int) (f2 * 255.0f));
            drawable.draw(canvas);
        } else {
            this.closeIcon.setAlpha((int) (f2 * 255.0f));
            canvas.save();
            canvas.translate(rectF.centerX() - (this.closeIcon.getIntrinsicWidth() / 2.0f), rectF.centerY() - (this.closeIcon.getIntrinsicHeight() / 2.0f));
            this.closeIcon.draw(canvas);
            canvas.restore();
        }
        canvas.restore();
    }

    private void drawGlassBody(Canvas canvas, RectF rectF, float f, float f2, boolean z) {
        if (f2 <= 0.0f) {
            return;
        }
        int iClamp01 = (int) (Utilities.clamp01(RimTune.f1215v[3] / 100.0f) * 255.0f);
        if (z && blurReady(canvas)) {
            this.path.rewind();
            this.path.addRoundRect(rectF, f, f, Path.Direction.CW);
            canvas.save();
            canvas.clipPath(this.path);
            canvas.save();
            canvas.translate(this.cameraView.getLeft(), this.cameraView.getTop());
            QrRender.setAlpha(this.blurNode, f2);
            QrRender.draw(canvas, this.blurNode);
            canvas.restore();
            this.fill.setColor((iClamp01 << 24) | 16777215);
            this.fill.setAlpha((int) (iClamp01 * f2));
            canvas.drawRect(rectF, this.fill);
            QrGlass.drawSheen(canvas, rectF, false, f2);
            canvas.restore();
        } else if (z && this.snapshotBlur != null) {
            this.snapshotGlassPaint.setAlpha((int) (255.0f * f2));
            canvas.drawRoundRect(rectF, f, f, this.snapshotGlassPaint);
            this.fill.setColor((iClamp01 << 24) | 16777215);
            this.fill.setAlpha((int) (iClamp01 * f2));
            canvas.drawRoundRect(rectF, f, f, this.fill);
            QrGlass.drawSheenRound(canvas, rectF, f, false, f2);
        } else {
            this.fill.setColor(ColorUtils.compositeColors((iClamp01 << 24) | 16777215, blurAllowed() ? 687865856 : Integer.MIN_VALUE));
            this.fill.setAlpha((int) (Color.alpha(r14.getColor()) * f2));
            canvas.drawRoundRect(rectF, f, f, this.fill);
            QrGlass.drawSheenRound(canvas, rectF, f, false, f2);
        }
        this.rim.draw(canvas, rectF, f, 0, f2);
    }

    private boolean blurReady(Canvas canvas) {
        if (this.cameraView == null || !canvas.isHardwareAccelerated() || !blurAllowed()) {
            return false;
        }
        if (this.blurNode == null) {
            this.blurNode = this.cameraView.getBlurRenderNode();
            invalidate();
        }
        return QrRender.hasDisplayList(this.blurNode);
    }

    @Override // android.view.ViewGroup, android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.progress >= 1.0f && !this.closing) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            int actionMasked = motionEvent.getActionMasked();
            int i = -1;
            if (actionMasked == 0) {
                if (hit(this.closeRect, x, y)) {
                    i = 0;
                } else if (hit(this.flashRect, x, y)) {
                    i = 1;
                } else if (this.onGallery != null && hit(this.galleryRect, x, y)) {
                    i = 2;
                }
                this.pressed = i;
                invalidate();
            } else if (actionMasked == 1) {
                int i2 = this.pressed;
                if (i2 == 0) {
                    performHapticFeedback(3);
                    close();
                } else if (i2 == 1) {
                    performHapticFeedback(3);
                    toggleTorch();
                } else if (i2 == 2 && this.onGallery != null) {
                    performHapticFeedback(3);
                    this.onGallery.run();
                } else {
                    CameraView cameraView = this.cameraView;
                    if (cameraView != null) {
                        cameraView.focusToPoint((int) x, (int) y);
                    }
                }
                this.pressed = -1;
                invalidate();
            } else if (actionMasked != 2) {
                if (actionMasked == 3) {
                    this.pressed = -1;
                    invalidate();
                }
            } else if ((this.pressed == 0 && !hit(this.closeRect, x, y)) || ((this.pressed == 1 && !hit(this.flashRect, x, y)) || (this.pressed == 2 && !hit(this.galleryRect, x, y)))) {
                this.pressed = -1;
                invalidate();
            }
        }
        return true;
    }

    private static boolean hit(RectF rectF, float f, float f2) {
        return f >= rectF.left - ((float) AndroidUtilities.dp(8.0f)) && f <= rectF.right + ((float) AndroidUtilities.dp(8.0f)) && f2 >= rectF.top - ((float) AndroidUtilities.dp(8.0f)) && f2 <= rectF.bottom + ((float) AndroidUtilities.dp(8.0f));
    }

    private void toggleTorch() {
        CameraView cameraView = this.cameraView;
        CameraSessionWrapper cameraSession = cameraView != null ? cameraView.getCameraSession() : null;
        if (cameraSession == null) {
            return;
        }
        boolean z = this.torch;
        this.torch = !z;
        cameraSession.setCurrentFlashMode(!z ? "torch" : "off");
        invalidate();
    }

    private void startScanning() {
        if (this.destroyed || this.scanning || this.found) {
            return;
        }
        this.scanning = true;
        this.scanHandler.postDelayed(this.scanFrame, 150L);
    }

    /* JADX INFO: renamed from: org.telegram.ui.QrShare.QrScanOverlay$4 */
    public class RunnableC57734 implements Runnable {
        public RunnableC57734() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CameraView cameraView = QrScanOverlay.this.cameraView;
            if (!QrScanOverlay.this.scanning || cameraView == null) {
                return;
            }
            TextureView textureView = cameraView.getTextureView();
            int width = textureView.getWidth();
            int height = textureView.getHeight();
            if (width > 0 && height > 0) {
                if (width > 720 || height > 720) {
                    float f = width;
                    float f2 = height;
                    float fMin = Math.min(720.0f / f, 720.0f / f2);
                    width = Math.max(1, (int) (f * fMin));
                    height = Math.max(1, (int) (f2 * fMin));
                }
                if (QrScanOverlay.this.frameBitmap == null || QrScanOverlay.this.frameBitmap.getWidth() != width || QrScanOverlay.this.frameBitmap.getHeight() != height) {
                    QrScanOverlay.this.frameBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
                }
                try {
                    textureView.getBitmap(QrScanOverlay.this.frameBitmap);
                    final Scanned scannedDecode = QrScanOverlay.decode(QrScanOverlay.this.frameBitmap, QrScanOverlay.this.visionReader, QrScanOverlay.this.zxingReader, QrScanOverlay.this.accept);
                    if (scannedDecode != null) {
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.QrShare.QrScanOverlay$4$$ExternalSyntheticLambda0
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$run$0(scannedDecode);
                            }
                        });
                        return;
                    }
                } catch (Throwable th) {
                    FileLog.m1040e(th);
                }
            }
            if (QrScanOverlay.this.scanning) {
                QrScanOverlay.this.scanHandler.postDelayed(this, 150L);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$0(Scanned scanned) {
            QrScanOverlay.this.onFound(scanned);
        }
    }

    public static final class Scanned {
        final String link;
        final PointF[] points;

        public Scanned(String str, PointF[] pointFArr) {
            this.link = str;
            this.points = pointFArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00bb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Scanned decode(Bitmap bitmap, BarcodeDetector barcodeDetector, QRCodeReader qRCodeReader, Utilities.CallbackReturn<String, Boolean> callbackReturn) {
        int i;
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int i2 = 0;
        if (barcodeDetector != null && barcodeDetector.isOperational()) {
            SparseArray<Barcode> sparseArrayDetect = barcodeDetector.detect(new Frame.Builder().setBitmap(bitmap).build());
            for (int i3 = 0; sparseArrayDetect != null && i3 < sparseArrayDetect.size(); i3++) {
                Barcode barcodeValueAt = sparseArrayDetect.valueAt(i3);
                String str = barcodeValueAt.rawValue;
                String strTrim = str != null ? str.trim() : null;
                if (accepts(callbackReturn, strTrim)) {
                    Point[] pointArr = barcodeValueAt.cornerPoints;
                    int length = pointArr != null ? pointArr.length : 0;
                    PointF[] pointFArr = new PointF[length];
                    while (i2 < length) {
                        Point point = barcodeValueAt.cornerPoints[i2];
                        pointFArr[i2] = new PointF(point.x / width, point.y / height);
                        i2++;
                    }
                    return new Scanned(strTrim, pointFArr);
                }
            }
            return null;
        }
        if (qRCodeReader == null) {
            return null;
        }
        int[] iArr = new int[width * height];
        bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
        try {
            Result resultDecode = qRCodeReader.decode(new BinaryBitmap(new HybridBinarizer(new RGBLuminanceSource(width, height, iArr))));
            String strTrim2 = (resultDecode == null || resultDecode.getText() == null) ? null : resultDecode.getText().trim();
            if (accepts(callbackReturn, strTrim2)) {
                ResultPoint[] resultPoints = resultDecode.getResultPoints();
                if (resultPoints != null) {
                    i = 4;
                    if (resultPoints.length != 4) {
                        i = 0;
                    }
                }
                PointF[] pointFArr2 = new PointF[i];
                while (i2 < i) {
                    pointFArr2[i2] = new PointF(resultPoints[i2].getX() / width, resultPoints[i2].getY() / height);
                    i2++;
                }
                Scanned scanned = new Scanned(strTrim2, pointFArr2);
                qRCodeReader.reset();
                return scanned;
            }
            qRCodeReader.reset();
            return null;
        } catch (Exception unused) {
            qRCodeReader.reset();
            return null;
        } catch (Throwable th) {
            qRCodeReader.reset();
            throw th;
        }
    }

    private static boolean accepts(Utilities.CallbackReturn<String, Boolean> callbackReturn, String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            return Boolean.TRUE.equals(callbackReturn.run(str));
        } catch (Throwable th) {
            FileLog.m1040e(th);
            return false;
        }
    }

    public static boolean isTelegramLink(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith("tg:") || Browser.isInternalUrl(str, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onFound(final Scanned scanned) {
        if (this.found || this.destroyed || this.closing) {
            return;
        }
        this.found = true;
        this.scanning = false;
        performHapticFeedback(3, 2);
        PointF[] pointFArr = scanned.points;
        boolean z = pointFArr.length >= 3;
        if (z) {
            this.foundPoints = pointFArr;
            invalidate();
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.QrShare.QrScanOverlay$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onFound$7(scanned);
            }
        }, z ? 450L : 0L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onFound$7(Scanned scanned) {
        if (this.destroyed) {
            return;
        }
        close();
        this.listener.onScanned(scanned.link);
    }
}
