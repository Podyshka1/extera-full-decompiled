package org.telegram.messenger.utils;

import android.app.Activity;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.view.FrameMetrics;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;
import org.telegram.messenger.AndroidUtilities;

/* JADX INFO: loaded from: classes5.dex */
public final class FrameMetricsOverlayView extends View {
    private final AtomicBoolean attachedToWindowManager;
    private final Paint bgPaint;
    private Window hostWindow;
    private Window.OnFrameMetricsAvailableListener listener;

    /* JADX INFO: renamed from: lp */
    private WindowManager.LayoutParams f1636lp;
    private Handler metricsHandler;
    private HandlerThread metricsThread;
    private final Runnable redraw;
    private final AtomicBoolean running;
    private final Paint textPaint;
    private final Handler uiHandler;

    /* JADX INFO: renamed from: wm */
    private WindowManager f1637wm;

    /* JADX INFO: Access modifiers changed from: private */
    enum Metric {
        UNKNOWN_DELAY_DURATION(0, "unknown delay", true),
        INPUT_HANDLING_DURATION(1, "input", true),
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

        boolean isAvailable() {
            return Build.VERSION.SDK_INT >= this.minApi;
        }
    }

    public static FrameMetricsOverlayView attachToActivityCorner(Activity activity, int i, int i2) {
        FrameMetricsOverlayView frameMetricsOverlayView = new FrameMetricsOverlayView(activity);
        frameMetricsOverlayView.attachInternal(activity, i, i2);
        return frameMetricsOverlayView;
    }

    public void detach() {
        stop();
        if (this.f1637wm != null && this.attachedToWindowManager.getAndSet(false)) {
            try {
                this.f1637wm.removeViewImmediate(this);
            } catch (Throwable unused) {
            }
        }
        this.f1637wm = null;
        this.f1636lp = null;
        this.hostWindow = null;
    }

    public FrameMetricsOverlayView(Context context) {
        super(context.getApplicationContext());
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
        paint2.setTextSize(AndroidUtilities.m1124dp(10.0f));
        paint2.setFakeBoldText(true);
        paint2.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MONO));
        setWillNotDraw(false);
    }

    private void attachInternal(Activity activity, int i, int i2) {
        this.f1637wm = (WindowManager) activity.getSystemService("window");
        this.hostWindow = activity.getWindow();
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-2, -2, 2, 792, -3);
        this.f1636lp = layoutParams;
        layoutParams.gravity = i;
        int iM1124dp = AndroidUtilities.m1124dp(i2);
        WindowManager.LayoutParams layoutParams2 = this.f1636lp;
        layoutParams2.x = iM1124dp;
        layoutParams2.y = iM1124dp;
        layoutParams2.width = AndroidUtilities.m1124dp(260.0f);
        this.f1637wm.addView(this, this.f1636lp);
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
                FrameMetricsOverlayView.m5094$r8$lambda$m42WIPdz4HTot3OVFKZa0YbcXM(window, frameMetrics, i);
            }
        };
        this.listener = onFrameMetricsAvailableListener;
        this.hostWindow.addOnFrameMetricsAvailableListener(onFrameMetricsAvailableListener, this.metricsHandler);
        this.uiHandler.post(this.redraw);
    }

    /* JADX INFO: renamed from: $r8$lambda$m42WIPdz4HTot3OVFKZ-a0YbcXM, reason: not valid java name */
    public static /* synthetic */ void m5094$r8$lambda$m42WIPdz4HTot3OVFKZa0YbcXM(Window window, FrameMetrics frameMetrics, int i) {
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

    private void stop() {
        Window.OnFrameMetricsAvailableListener onFrameMetricsAvailableListener;
        this.running.set(false);
        this.uiHandler.removeCallbacks(this.redraw);
        Window window = this.hostWindow;
        if (window != null && (onFrameMetricsAvailableListener = this.listener) != null) {
            window.removeOnFrameMetricsAvailableListener(onFrameMetricsAvailableListener);
        }
        HandlerThread handlerThread = this.metricsThread;
        if (handlerThread != null) {
            handlerThread.quitSafely();
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        long j;
        float f;
        int i;
        String str;
        String str2;
        float fM1124dp = AndroidUtilities.m1124dp(8.0f);
        float fM1124dp2 = AndroidUtilities.m1124dp(14.0f);
        int i2 = 0;
        for (Metric metric : Metric.values()) {
            i2++;
        }
        canvas.drawRoundRect(0.0f, 0.0f, getWidth() > 0 ? getWidth() : AndroidUtilities.m1124dp(260.0f), (2.0f * fM1124dp) + ((i2 + 6) * fM1124dp2), AndroidUtilities.m1124dp(10.0f), AndroidUtilities.m1124dp(10.0f), this.bgPaint);
        float f2 = fM1124dp + fM1124dp2;
        Metric[] metricArrValues = Metric.values();
        int length = metricArrValues.length;
        double d = 0.0d;
        double d2 = 0.0d;
        double d3 = 0.0d;
        double d4 = 0.0d;
        long j2 = 0;
        int i3 = 0;
        long j3 = 0;
        long j4 = 0;
        long j5 = 0;
        while (i3 < length) {
            int i4 = length;
            Metric metric2 = metricArrValues[i3];
            if (metric2.isAvailable()) {
                j = j5;
                long j6 = metric2.last;
                if (j6 >= 0) {
                    i = i3;
                    if (metric2.isDuration) {
                        f = fM1124dp2;
                        String str3 = String.format(Locale.US, "%-16s : %5.2f / %5.2f ms", metric2.label, Double.valueOf(j6 / 1000000.0d), Double.valueOf(metric2.avgMs));
                        switch (metric2) {
                            case UNKNOWN_DELAY_DURATION:
                            case SWAP_BUFFERS_DURATION:
                                str2 = str3;
                                j5 = j + metric2.last;
                                d += metric2.avgMs;
                                break;
                            case INPUT_HANDLING_DURATION:
                            case ANIMATION_DURATION:
                            case LAYOUT_MEASURE_DURATION:
                            case DRAW_DURATION:
                                str2 = str3;
                                j4 += metric2.last;
                                d3 += metric2.avgMs;
                                j5 = j;
                                break;
                            case SYNC_DURATION:
                                long j7 = metric2.last;
                                j4 += j7;
                                str2 = str3;
                                double d5 = metric2.avgMs;
                                d3 += d5;
                                j3 += j7;
                                d2 += d5;
                                j5 = j;
                                break;
                            case COMMAND_ISSUE_DURATION:
                                j3 += metric2.last;
                                str2 = str3;
                                d2 += metric2.avgMs;
                                j5 = j;
                                break;
                            case GPU_DURATION:
                                j2 += metric2.last;
                                str2 = str3;
                                d4 += metric2.avgMs;
                                j5 = j;
                                break;
                            default:
                                str2 = str3;
                                j5 = j;
                                break;
                        }
                        str = str2;
                        canvas.drawText(str, fM1124dp, f2, this.textPaint);
                        f2 += f;
                        i3 = i + 1;
                        length = i4;
                        fM1124dp2 = f;
                    } else {
                        f = fM1124dp2;
                        str = String.format(Locale.US, "%-16s : %d", metric2.label, Long.valueOf(j6));
                    }
                }
                j5 = j;
                canvas.drawText(str, fM1124dp, f2, this.textPaint);
                f2 += f;
                i3 = i + 1;
                length = i4;
                fM1124dp2 = f;
            } else {
                j = j5;
            }
            i = i3;
            f = fM1124dp2;
            str = String.format(Locale.US, "%-16s : n/a", metric2.label);
            j5 = j;
            canvas.drawText(str, fM1124dp, f2, this.textPaint);
            f2 += f;
            i3 = i + 1;
            length = i4;
            fM1124dp2 = f;
        }
        float f3 = fM1124dp2;
        long j8 = j5;
        long jMax = Math.max(j4, Math.max(j3, j2));
        double d6 = d2;
        double d7 = d3;
        double dMax = Math.max(d7, Math.max(d6, d4));
        float f4 = f2 + f3;
        Locale locale = Locale.US;
        canvas.drawText(String.format(locale, "%-16s : %5.2f / %5.2f ms", "ui", Double.valueOf(j4 / 1000000.0d), Double.valueOf(d7)), fM1124dp, f4, this.textPaint);
        float f5 = f4 + f3;
        canvas.drawText(String.format(locale, "%-16s : %5.2f / %5.2f ms", "rt", Double.valueOf(j3 / 1000000.0d), Double.valueOf(d6)), fM1124dp, f5, this.textPaint);
        float f6 = f5 + f3;
        canvas.drawText(String.format(locale, "%-16s : %5.2f / %5.2f ms", "gpu", Double.valueOf(j2 / 1000000.0d), Double.valueOf(d4)), fM1124dp, f6, this.textPaint);
        float f7 = f6 + f3;
        canvas.drawText(String.format(locale, "%-16s : %5.2f / %5.2f ms", "other", Double.valueOf(j8 / 1000000.0d), Double.valueOf(d)), fM1124dp, f7, this.textPaint);
        canvas.drawText(String.format(locale, "%-16s : %5.2f / %5.2f ms", "frame", Double.valueOf(jMax / 1000000.0d), Double.valueOf(dMax)), fM1124dp, f7 + f3, this.textPaint);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(AndroidUtilities.m1124dp(260.0f), (AndroidUtilities.m1124dp(8.0f) * 2) + (AndroidUtilities.m1124dp(14.0f) * (Metric.values().length + 6)));
    }
}
