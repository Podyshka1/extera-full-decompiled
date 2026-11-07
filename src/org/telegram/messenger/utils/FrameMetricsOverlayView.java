package org.telegram.messenger.utils;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.view.Choreographer;
import android.view.FrameMetrics;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowManager;
import com.exteragram.messenger.plugins.PluginsConstants;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.telegram.messenger.AndroidUtilities;

/* JADX INFO: loaded from: classes6.dex */
public final class FrameMetricsOverlayView extends View {
    private final AtomicBoolean attachedToWindowManager;
    private final Paint bgPaint;
    private Choreographer.FrameCallback choreographerCallback;
    private Window hostWindow;
    private Window.OnFrameMetricsAvailableListener listener;
    private WindowManager.LayoutParams lp;
    private Handler metricsHandler;
    private HandlerThread metricsThread;
    private View observedView;
    private final AtomicInteger onDrawCountAccum;
    private ViewTreeObserver.OnDrawListener onDrawListener;
    private int onDrawPerSecond;
    private final Runnable redraw;
    private final AtomicBoolean running;
    private final Paint textPaint;
    private final Handler uiHandler;
    private int vsyncCountAccum;
    private int vsyncPerSecond;
    private long vsyncWindowStartNs;
    private WindowManager wm;

    public enum Metric {
        UNKNOWN_DELAY_DURATION(0, "unknown delay", true),
        INPUT_HANDLING_DURATION(1, PluginsConstants.Settings.TYPE_INPUT, true),
        ANIMATION_DURATION(2, "animation", true),
        LAYOUT_MEASURE_DURATION(3, "layout", true),
        DRAW_DURATION(4, "draw", true),
        SYNC_DURATION(5, "sync", true),
        COMMAND_ISSUE_DURATION(6, "cmd issue", true),
        SWAP_BUFFERS_DURATION(7, "swap buffers", true),
        GPU_DURATION(12, "gpu", true, 31),
        TOTAL_DURATION(8, "total", true);

        double avgMs;
        final boolean isDuration;
        final int key;
        final String label;
        long last;
        final int minApi;

        Metric(int i, String str, boolean z) {
            this(i, str, z, 24);
        }

        Metric(int i, String str, boolean z, int i2) {
            this.last = Long.MIN_VALUE;
            this.avgMs = 0.0d;
            this.key = i;
            this.label = str;
            this.isDuration = z;
            this.minApi = i2;
        }

        public boolean isAvailable() {
            return Build.VERSION.SDK_INT >= this.minApi;
        }
    }

    public static FrameMetricsOverlayView attachToActivityCorner(Activity activity, int i, int i2, View view) {
        FrameMetricsOverlayView frameMetricsOverlayView = new FrameMetricsOverlayView(activity);
        frameMetricsOverlayView.setObservedView(view);
        frameMetricsOverlayView.attachInternal(activity, i, i2);
        return frameMetricsOverlayView;
    }

    public void setObservedView(View view) {
        detachOnDrawListener();
        this.observedView = view;
        if (this.running.get()) {
            attachOnDrawListener();
        }
    }

    public void detach() {
        stop();
        if (this.wm != null && this.attachedToWindowManager.getAndSet(false)) {
            try {
                this.wm.removeViewImmediate(this);
            } catch (Throwable unused) {
            }
        }
        this.wm = null;
        this.lp = null;
        this.hostWindow = null;
    }

    public FrameMetricsOverlayView(Context context) {
        super(context.getApplicationContext());
        this.vsyncCountAccum = 0;
        this.vsyncWindowStartNs = 0L;
        this.vsyncPerSecond = 0;
        this.onDrawCountAccum = new AtomicInteger(0);
        this.onDrawPerSecond = 0;
        Paint paint = new Paint(1);
        this.bgPaint = paint;
        Paint paint2 = new Paint(1);
        this.textPaint = paint2;
        this.running = new AtomicBoolean(false);
        this.attachedToWindowManager = new AtomicBoolean(false);
        this.uiHandler = new Handler(Looper.getMainLooper());
        this.redraw = new Runnable() { // from class: org.telegram.messenger.utils.FrameMetricsOverlayView.1
            @Override // java.lang.Runnable
            public void run() {
                if (FrameMetricsOverlayView.this.running.get()) {
                    FrameMetricsOverlayView.this.invalidate();
                    FrameMetricsOverlayView.this.uiHandler.postDelayed(this, 300L);
                }
            }
        };
        paint.setColor(-1342177280);
        paint2.setColor(-1);
        paint2.setTextSize(AndroidUtilities.dp(9.0f));
        paint2.setFakeBoldText(true);
        paint2.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MONO));
        setWillNotDraw(false);
    }

    @SuppressLint({"RtlHardcoded"})
    private void attachInternal(Activity activity, int i, int i2) {
        this.wm = (WindowManager) activity.getSystemService("window");
        this.hostWindow = activity.getWindow();
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-2, -2, 2, 792, -3);
        this.lp = layoutParams;
        layoutParams.gravity = i;
        int iDp = AndroidUtilities.dp(i2);
        WindowManager.LayoutParams layoutParams2 = this.lp;
        layoutParams2.x = iDp;
        layoutParams2.y = iDp;
        layoutParams2.width = AndroidUtilities.dp(260.0f);
        this.wm.addView(this, this.lp);
        this.attachedToWindowManager.set(true);
        start();
    }

    private void start() {
        if (this.running.getAndSet(true)) {
            return;
        }
        HandlerThread handlerThread = new HandlerThread("FrameMetrics");
        this.metricsThread = handlerThread;
        handlerThread.start();
        this.metricsHandler = new Handler(this.metricsThread.getLooper());
        Window.OnFrameMetricsAvailableListener onFrameMetricsAvailableListener = new Window.OnFrameMetricsAvailableListener() { // from class: org.telegram.messenger.utils.FrameMetricsOverlayView$$ExternalSyntheticLambda0
            @Override // android.view.Window.OnFrameMetricsAvailableListener
            public final void onFrameMetricsAvailable(Window window, FrameMetrics frameMetrics, int i) {
                FrameMetricsOverlayView.m6773$r8$lambda$m42WIPdz4HTot3OVFKZa0YbcXM(window, frameMetrics, i);
            }
        };
        this.listener = onFrameMetricsAvailableListener;
        this.hostWindow.addOnFrameMetricsAvailableListener(onFrameMetricsAvailableListener, this.metricsHandler);
        this.choreographerCallback = new Choreographer.FrameCallback() { // from class: org.telegram.messenger.utils.FrameMetricsOverlayView$$ExternalSyntheticLambda1
            @Override // android.view.Choreographer.FrameCallback
            public final void doFrame(long j) {
                this.f$0.lambda$start$1(j);
            }
        };
        Choreographer.getInstance().postFrameCallback(this.choreographerCallback);
        attachOnDrawListener();
        this.uiHandler.post(this.redraw);
    }

    /* JADX INFO: renamed from: $r8$lambda$m42WIPdz4HTot3OVFKZ-a0YbcXM, reason: not valid java name */
    public static /* synthetic */ void m6773$r8$lambda$m42WIPdz4HTot3OVFKZa0YbcXM(Window window, FrameMetrics frameMetrics, int i) {
        for (Metric metric : Metric.values()) {
            if (!metric.isAvailable()) {
                metric.last = Long.MIN_VALUE;
            } else {
                long metric2 = frameMetrics.getMetric(metric.key);
                metric.last = metric2;
                if (metric.isDuration && metric2 >= 0) {
                    double d = metric2 / 1000000.0d;
                    double d2 = metric.avgMs;
                    if (d2 != 0.0d) {
                        d = ((d - d2) * 0.05d) + d2;
                    }
                    metric.avgMs = d;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$start$1(long j) {
        if (this.running.get()) {
            long j2 = this.vsyncWindowStartNs;
            if (j2 == 0) {
                this.vsyncWindowStartNs = j;
            } else {
                long j3 = j - j2;
                int i = this.vsyncCountAccum;
                if (j3 >= 1000000000) {
                    this.vsyncPerSecond = i;
                    this.onDrawPerSecond = this.onDrawCountAccum.getAndSet(0);
                    this.vsyncCountAccum = 0;
                    this.vsyncWindowStartNs = j;
                } else {
                    this.vsyncCountAccum = i + 1;
                }
            }
            Choreographer.getInstance().postFrameCallback(this.choreographerCallback);
        }
    }

    private void stop() {
        Window.OnFrameMetricsAvailableListener onFrameMetricsAvailableListener;
        this.running.set(false);
        this.uiHandler.removeCallbacks(this.redraw);
        Window window = this.hostWindow;
        if (window != null && (onFrameMetricsAvailableListener = this.listener) != null) {
            window.removeOnFrameMetricsAvailableListener(onFrameMetricsAvailableListener);
        }
        if (this.choreographerCallback != null) {
            Choreographer.getInstance().removeFrameCallback(this.choreographerCallback);
            this.choreographerCallback = null;
        }
        detachOnDrawListener();
        HandlerThread handlerThread = this.metricsThread;
        if (handlerThread != null) {
            handlerThread.quitSafely();
        }
    }

    private void attachOnDrawListener() {
        if (this.observedView == null) {
            return;
        }
        this.onDrawListener = new ViewTreeObserver.OnDrawListener() { // from class: org.telegram.messenger.utils.FrameMetricsOverlayView$$ExternalSyntheticLambda2
            @Override // android.view.ViewTreeObserver.OnDrawListener
            public final void onDraw() {
                this.f$0.lambda$attachOnDrawListener$2();
            }
        };
        ViewTreeObserver viewTreeObserver = this.observedView.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.addOnDrawListener(this.onDrawListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$attachOnDrawListener$2() {
        this.onDrawCountAccum.incrementAndGet();
    }

    private void detachOnDrawListener() {
        View view = this.observedView;
        if (view == null || this.onDrawListener == null) {
            return;
        }
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnDrawListener(this.onDrawListener);
        }
        this.onDrawListener = null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:18:0x00b3. Please report as an issue. */
    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        int i;
        float f;
        String str;
        long j;
        long j2;
        float fDp = AndroidUtilities.dp(8.0f);
        float fDp2 = AndroidUtilities.dp(11.0f);
        canvas.drawRoundRect(0.0f, 0.0f, getWidth() > 0 ? getWidth() : AndroidUtilities.dp(260.0f), (2.0f * fDp) + ((Metric.values().length + 9) * fDp2), AndroidUtilities.dp(10.0f), AndroidUtilities.dp(10.0f), this.bgPaint);
        float f2 = fDp + fDp2;
        Metric[] metricArrValues = Metric.values();
        int length = metricArrValues.length;
        double d = 0.0d;
        double d2 = 0.0d;
        double d3 = 0.0d;
        double d4 = 0.0d;
        float f3 = fDp2;
        int i2 = 0;
        long j3 = 0;
        long j4 = 0;
        long j5 = 0;
        long j6 = 0;
        while (true) {
            Metric[] metricArr = metricArrValues;
            if (i2 < length) {
                int i3 = length;
                Metric metric = metricArr[i2];
                if (metric.isAvailable()) {
                    i = i2;
                    f = f3;
                    long j7 = metric.last;
                    if (j7 >= 0) {
                        j2 = j6;
                        if (metric.isDuration) {
                            j = j3;
                            str = String.format(Locale.US, "%-16s : %5.2f / %5.2f ms", metric.label, Double.valueOf(j7 / 1000000.0d), Double.valueOf(metric.avgMs));
                            switch (C28712.f1003x728aca3c[metric.ordinal()]) {
                                case 1:
                                case 2:
                                case 3:
                                case 4:
                                    j3 = j + metric.last;
                                    d += metric.avgMs;
                                    j6 = j2;
                                    break;
                                case 5:
                                    long j8 = metric.last;
                                    double d5 = metric.avgMs;
                                    d += d5;
                                    j4 += j8;
                                    d2 += d5;
                                    j3 = j + j8;
                                    j6 = j2;
                                    break;
                                case 6:
                                    j4 += metric.last;
                                    d2 += metric.avgMs;
                                    break;
                                case 7:
                                    j5 += metric.last;
                                    d3 += metric.avgMs;
                                    break;
                                case 8:
                                case 9:
                                    j6 = j2 + metric.last;
                                    d4 += metric.avgMs;
                                    j3 = j;
                                    break;
                            }
                            canvas.drawText(str, fDp, f2, this.textPaint);
                            f2 += f;
                            i2 = i + 1;
                            metricArrValues = metricArr;
                            length = i3;
                            f3 = f;
                        } else {
                            j = j3;
                            str = String.format(Locale.US, "%-16s : %d", metric.label, Long.valueOf(j7));
                        }
                    }
                    j6 = j2;
                    j3 = j;
                    canvas.drawText(str, fDp, f2, this.textPaint);
                    f2 += f;
                    i2 = i + 1;
                    metricArrValues = metricArr;
                    length = i3;
                    f3 = f;
                } else {
                    i = i2;
                    f = f3;
                }
                j = j3;
                j2 = j6;
                str = String.format(Locale.US, "%-16s : n/a", metric.label);
                j6 = j2;
                j3 = j;
                canvas.drawText(str, fDp, f2, this.textPaint);
                f2 += f;
                i2 = i + 1;
                metricArrValues = metricArr;
                length = i3;
                f3 = f;
            } else {
                long j9 = j3;
                float f4 = f3;
                long j10 = j6;
                long jMax = Math.max(j9, Math.max(j4, j5));
                double d6 = d2;
                long j11 = j5;
                double d7 = d;
                double dMax = Math.max(d7, Math.max(d6, d3));
                float f5 = f2 + f4;
                Locale locale = Locale.US;
                canvas.drawText(String.format(locale, "%-16s : %5.2f / %5.2f ms", "ui", Double.valueOf(j9 / 1000000.0d), Double.valueOf(d7)), fDp, f5, this.textPaint);
                float f6 = f5 + f4;
                canvas.drawText(String.format(locale, "%-16s : %5.2f / %5.2f ms", "rt", Double.valueOf(j4 / 1000000.0d), Double.valueOf(d6)), fDp, f6, this.textPaint);
                float f7 = f6 + f4;
                canvas.drawText(String.format(locale, "%-16s : %5.2f / %5.2f ms", "gpu", Double.valueOf(j11 / 1000000.0d), Double.valueOf(d3)), fDp, f7, this.textPaint);
                float f8 = f7 + f4;
                canvas.drawText(String.format(locale, "%-16s : %5.2f / %5.2f ms", "other", Double.valueOf(j10 / 1000000.0d), Double.valueOf(d4)), fDp, f8, this.textPaint);
                float f9 = f8 + f4;
                canvas.drawText(String.format(locale, "%-16s : %5.2f / %5.2f ms", "frame", Double.valueOf(jMax / 1000000.0d), Double.valueOf(dMax)), fDp, f9, this.textPaint);
                float f10 = f9 + f4 + f4;
                canvas.drawText(String.format(locale, "%-16s : %d /s", "vsync", Integer.valueOf(this.vsyncPerSecond)), fDp, f10, this.textPaint);
                canvas.drawText(String.format(locale, "%-16s : %d /s", this.observedView != null ? "onDraw" : "onDraw (none)", Integer.valueOf(this.onDrawPerSecond)), fDp, f10 + f4, this.textPaint);
                return;
            }
        }
    }

    /* JADX INFO: renamed from: org.telegram.messenger.utils.FrameMetricsOverlayView$2 */
    public static /* synthetic */ class C28712 {

        /* JADX INFO: renamed from: $SwitchMap$org$telegram$messenger$utils$FrameMetricsOverlayView$Metric */
        static final /* synthetic */ int[] f1003x728aca3c;

        static {
            int[] iArr = new int[Metric.values().length];
            f1003x728aca3c = iArr;
            try {
                iArr[Metric.INPUT_HANDLING_DURATION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1003x728aca3c[Metric.ANIMATION_DURATION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1003x728aca3c[Metric.LAYOUT_MEASURE_DURATION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f1003x728aca3c[Metric.DRAW_DURATION.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f1003x728aca3c[Metric.SYNC_DURATION.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f1003x728aca3c[Metric.COMMAND_ISSUE_DURATION.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f1003x728aca3c[Metric.GPU_DURATION.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f1003x728aca3c[Metric.UNKNOWN_DELAY_DURATION.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f1003x728aca3c[Metric.SWAP_BUFFERS_DURATION.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        setMeasuredDimension(AndroidUtilities.dp(210.0f), (AndroidUtilities.dp(8.0f) * 2) + (AndroidUtilities.dp(11.0f) * (Metric.values().length + 9)));
    }
}
