package org.telegram.ui.Components.chat;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.os.SystemClock;
import android.text.TextPaint;
import android.util.LongSparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.core.math.MathUtils;
import com.google.android.exoplayer2.util.Log;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.ChatActionCell;
import org.telegram.ui.Cells.ChatMessageCell;

/* JADX INFO: loaded from: classes7.dex */
public class ChatActivityMessageMetricsView extends View implements ViewTreeObserver.OnPreDrawListener, ViewTreeObserver.OnScrollChangedListener, ViewTreeObserver.OnGlobalLayoutListener {
    private static final RectF tmpRect = new RectF();
    private final boolean DRAW_DEBUG;
    private int currentAccount;
    private long dialogId;
    private final LongSparseArray<RectF> groupedPositions;
    private long lastTime;
    private long lastUserActivityTime;
    private ViewGroup list;
    private ViewTreeObserver observer;
    private Runnable pendingFlush;
    private final ArrayList<TLRPC.TL_inputMessageReadMetric> pendingMetrics;
    private ViewGroup root;
    private final Runnable scheduledCheckRunnable;
    private TextPaint tmpTextPaint;
    private boolean updateInNextDraw;
    private final RectF viewPort;
    private final RectF viewPortInsets;
    private final LongSparseArray<MessageWatcher> watchers;

    public static /* synthetic */ void $r8$lambda$OTgxqPY4rg_4WF2e8sYw8x4osdg(TLRPC.Bool bool, TLRPC.TL_error tL_error) {
    }

    public ChatActivityMessageMetricsView(Context context) {
        super(context);
        this.viewPortInsets = new RectF();
        this.viewPort = new RectF();
        this.pendingMetrics = new ArrayList<>();
        this.watchers = new LongSparseArray<>();
        this.groupedPositions = new LongSparseArray<>();
        this.scheduledCheckRunnable = new Runnable() { // from class: org.telegram.ui.Components.chat.ChatActivityMessageMetricsView$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.scheduledCheck();
            }
        };
        this.DRAW_DEBUG = SharedConfig.debugViewMetrics;
    }

    public void init(int i, long j, ViewGroup viewGroup, ViewGroup viewGroup2) {
        this.dialogId = j;
        this.currentAccount = i;
        this.root = viewGroup;
        this.list = viewGroup2;
    }

    public void setViewportPadding(float f, float f2, float f3, float f4) {
        this.viewPortInsets.set(f, f2, f3, f4);
        invalidateViewPort();
    }

    public void setIsUserActive() {
        this.lastUserActivityTime = SystemClock.uptimeMillis();
    }

    private void invalidateViewPort() {
        RectF rectF = this.viewPort;
        RectF rectF2 = this.viewPortInsets;
        rectF.set(rectF2.left, rectF2.top, getMeasuredWidth() - this.viewPortInsets.right, getMeasuredHeight() - this.viewPortInsets.bottom);
    }

    public void finish() {
        int size = this.watchers.size();
        for (int i = 0; i < size; i++) {
            MessageWatcher messageWatcherValueAt = this.watchers.valueAt(i);
            if (messageWatcherValueAt.visible) {
                this.pendingMetrics.add(messageWatcherValueAt.buildMetrics());
            }
        }
        if (BuildVars.LOGS_ENABLED) {
            Log.m269d("ViewMetrics", "finish");
        }
        this.watchers.clear();
        flushImpl();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void flushImpl() {
        Runnable runnable = this.pendingFlush;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
            this.pendingFlush = null;
        }
        if (this.pendingMetrics.isEmpty()) {
            return;
        }
        TLRPC.TL_messages_reportReadMetrics tL_messages_reportReadMetrics = new TLRPC.TL_messages_reportReadMetrics();
        tL_messages_reportReadMetrics.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(this.dialogId);
        tL_messages_reportReadMetrics.metrics = new ArrayList<>(this.pendingMetrics);
        ConnectionsManager.getInstance(this.currentAccount).sendRequestTyped(tL_messages_reportReadMetrics, null, new Utilities.Callback2() { // from class: org.telegram.ui.Components.chat.ChatActivityMessageMetricsView$$ExternalSyntheticLambda2
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                ChatActivityMessageMetricsView.$r8$lambda$OTgxqPY4rg_4WF2e8sYw8x4osdg((TLRPC.Bool) obj, (TLRPC.TL_error) obj2);
            }
        });
        this.pendingMetrics.clear();
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x017f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void processCurrentFrame() {
        LongSparseArray<MessageWatcher> longSparseArray;
        boolean z;
        long j;
        long j2;
        boolean z2;
        RectF rectF;
        MessageObject messageObject;
        int i;
        if (this.root == null || this.list == null) {
            return;
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        long j3 = this.lastTime;
        long j4 = 0;
        long j5 = j3 == 0 ? 0L : jUptimeMillis - j3;
        this.lastTime = jUptimeMillis;
        int size = this.groupedPositions.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.groupedPositions.valueAt(i2).set(0.0f, 0.0f, 0.0f, 0.0f);
        }
        int childCount = this.list.getChildCount();
        int i3 = 0;
        while (i3 < childCount) {
            View childAt = this.list.getChildAt(i3);
            ViewGroup viewGroup = this.root;
            long j6 = j4;
            RectF rectF2 = tmpRect;
            if (ViewPositionWatcher.computeRectInParent(childAt, viewGroup, rectF2)) {
                if (childAt instanceof ChatMessageCell) {
                    messageObject = ((ChatMessageCell) childAt).getMessageObject();
                } else {
                    if (childAt instanceof ChatActionCell) {
                        messageObject = ((ChatActionCell) childAt).getMessageObject();
                    }
                    i = i3;
                }
                if (messageObject == null) {
                    i = i3;
                } else {
                    long dialogId = messageObject.getDialogId();
                    i = i3;
                    if (dialogId == this.dialogId) {
                        int id = messageObject.getId();
                        long groupId = messageObject.getGroupId();
                        if (dialogId != j6 && id > 0) {
                            long j7 = id;
                            MessageWatcher messageWatcher = this.watchers.get(j7);
                            if (messageWatcher == null) {
                                messageWatcher = new MessageWatcher(id, groupId);
                                this.watchers.put(j7, messageWatcher);
                                if (BuildVars.LOGS_ENABLED) {
                                    Log.m269d("ViewMetrics", id + " " + groupId + " in screen");
                                }
                            }
                            messageWatcher.position.set(rectF2);
                            if (groupId != j6) {
                                RectF rectF3 = this.groupedPositions.get(groupId);
                                if (rectF3 == null) {
                                    rectF3 = new RectF();
                                    this.groupedPositions.put(groupId, rectF3);
                                }
                                rectF3.union(messageWatcher.position);
                            }
                            messageWatcher.lastUpdateMillis = jUptimeMillis;
                        }
                    }
                }
            }
            i3 = i + 1;
            j4 = j6;
        }
        long j8 = j4;
        RectF rectF4 = null;
        for (int size2 = this.groupedPositions.size() - 1; size2 >= 0; size2--) {
            if (this.groupedPositions.valueAt(size2).isEmpty()) {
                this.groupedPositions.removeAt(size2);
            }
        }
        int size3 = this.watchers.size();
        int i4 = 0;
        while (true) {
            longSparseArray = this.watchers;
            if (i4 >= size3) {
                break;
            }
            MessageWatcher messageWatcherValueAt = longSparseArray.valueAt(i4);
            long j9 = messageWatcherValueAt.groupId;
            if (j9 != j8 && (rectF = this.groupedPositions.get(j9)) != null) {
                messageWatcherValueAt.position.set(rectF);
            }
            i4++;
        }
        int size4 = longSparseArray.size() - 1;
        while (size4 >= 0) {
            MessageWatcher messageWatcherValueAt2 = this.watchers.valueAt(size4);
            long j10 = messageWatcherValueAt2.messageId;
            long j11 = messageWatcherValueAt2.groupId;
            RectF rectF5 = j11 != j8 ? this.groupedPositions.get(j11) : rectF4;
            if (messageWatcherValueAt2.lastUpdateMillis == jUptimeMillis || rectF5 != null) {
                z = RectF.intersects(this.viewPort, rectF5 != null ? rectF5 : messageWatcherValueAt2.position);
            }
            if (z) {
                if (messageWatcherValueAt2.lastViewMillis != j8) {
                    j2 = j5;
                    messageWatcherValueAt2.visibleTime += j2;
                    if (jUptimeMillis - this.lastUserActivityTime < 15000) {
                        messageWatcherValueAt2.activeTime += j2;
                    }
                } else {
                    j2 = j5;
                }
                messageWatcherValueAt2.lastViewMillis = jUptimeMillis;
                float fHeight = messageWatcherValueAt2.position.height();
                float f = this.viewPort.top - messageWatcherValueAt2.position.top;
                j = jUptimeMillis;
                float f2 = fHeight - (messageWatcherValueAt2.position.bottom - this.viewPort.bottom);
                messageWatcherValueAt2.seenTopPx = Math.min(messageWatcherValueAt2.seenTopPx, MathUtils.clamp(f, 0.0f, fHeight));
                messageWatcherValueAt2.seenBottomPx = Math.max(messageWatcherValueAt2.seenBottomPx, MathUtils.clamp(f2, 0.0f, fHeight));
                messageWatcherValueAt2.maxViewPortHeight = Math.max(messageWatcherValueAt2.maxViewPortHeight, this.viewPort.height());
                messageWatcherValueAt2.maxPostTotalHeight = Math.max(messageWatcherValueAt2.maxPostTotalHeight, fHeight);
                if (messageWatcherValueAt2.visible || messageWatcherValueAt2.visibleTime <= 300) {
                    z2 = true;
                } else {
                    if (BuildVars.LOGS_ENABLED) {
                        Log.m269d("ViewMetrics", j10 + " " + j11 + " in viewport");
                    }
                    z2 = true;
                    messageWatcherValueAt2.visible = true;
                }
            } else {
                j = jUptimeMillis;
                j2 = j5;
                z2 = true;
            }
            if (!z && messageWatcherValueAt2.visibleTime > j8 && j - 300 > messageWatcherValueAt2.lastViewMillis) {
                if (messageWatcherValueAt2.visible) {
                    this.pendingMetrics.add(messageWatcherValueAt2.buildMetrics());
                }
                this.watchers.removeAt(size4);
                if (BuildVars.LOGS_ENABLED) {
                    Log.m269d("ViewMetrics", j10 + " " + j11 + " out of viewport: " + messageWatcherValueAt2.visibleTime);
                }
            } else if (messageWatcherValueAt2.visible && messageWatcherValueAt2.visibleTime > 300000) {
                this.pendingMetrics.add(messageWatcherValueAt2.buildMetrics());
                this.watchers.removeAt(size4);
                if (BuildVars.LOGS_ENABLED) {
                    Log.m269d("ViewMetrics", j10 + " " + j11 + " out of time");
                }
            } else if (!messageWatcherValueAt2.visible && messageWatcherValueAt2.lastUpdateMillis != j && (messageWatcherValueAt2.groupId == j8 || rectF5 == null)) {
                this.watchers.removeAt(size4);
                if (BuildVars.LOGS_ENABLED) {
                    Log.m269d("ViewMetrics", j10 + " " + j11 + " out of screen");
                }
            }
            size4--;
            jUptimeMillis = j;
            j5 = j2;
            rectF4 = null;
        }
        if (!this.pendingMetrics.isEmpty() && this.pendingFlush == null) {
            Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.chat.ChatActivityMessageMetricsView$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.flushImpl();
                }
            };
            this.pendingFlush = runnable;
            AndroidUtilities.runOnUIThread(runnable, 5000L);
        }
        if (this.DRAW_DEBUG) {
            invalidate();
        }
    }

    public static class MessageWatcher {
        private long activeTime;
        public final long groupId;
        private long lastUpdateMillis;
        private long lastViewMillis;
        private float maxPostTotalHeight;
        private float maxViewPortHeight;
        public final int messageId;
        private final RectF position;
        private float seenBottomPx;
        private float seenTopPx;
        private final long viewId;
        private boolean visible;
        private long visibleTime;

        private MessageWatcher(int i, long j) {
            this.position = new RectF();
            this.maxPostTotalHeight = 0.0f;
            this.maxViewPortHeight = 0.0f;
            this.seenTopPx = Float.MAX_VALUE;
            this.seenBottomPx = 0.0f;
            this.messageId = i;
            this.groupId = j;
            this.viewId = Utilities.random.nextLong();
        }

        public TLRPC.TL_inputMessageReadMetric buildMetrics() {
            TLRPC.TL_inputMessageReadMetric tL_inputMessageReadMetric = new TLRPC.TL_inputMessageReadMetric();
            tL_inputMessageReadMetric.msg_id = this.messageId;
            tL_inputMessageReadMetric.view_id = this.viewId;
            tL_inputMessageReadMetric.time_in_view_ms = (int) this.visibleTime;
            tL_inputMessageReadMetric.active_time_in_view_ms = (int) this.activeTime;
            tL_inputMessageReadMetric.height_to_viewport_ratio_permille = getHeightToViewportRatioPermille();
            tL_inputMessageReadMetric.seen_range_ratio_permille = getSeenRangeRatioPermille();
            return tL_inputMessageReadMetric;
        }

        public int getHeightToViewportRatioPermille() {
            float f = this.maxViewPortHeight;
            if (f == 0.0f) {
                return 1000;
            }
            return Math.round((this.maxPostTotalHeight / f) * 1000.0f);
        }

        public int getSeenRangeRatioPermille() {
            float f = this.maxPostTotalHeight;
            if (f == 0.0f) {
                return 0;
            }
            float f2 = this.seenTopPx;
            float f3 = this.seenBottomPx;
            if (f2 > f3) {
                return 0;
            }
            return Math.round(((f3 - f2) / f) * 1000.0f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scheduledCheck() {
        AndroidUtilities.runOnUIThread(this.scheduledCheckRunnable, 400L);
        processCurrentFrame();
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.lastTime = 0L;
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        this.observer = viewTreeObserver;
        viewTreeObserver.addOnPreDrawListener(this);
        this.observer.addOnGlobalLayoutListener(this);
        this.observer.addOnScrollChangedListener(this);
        AndroidUtilities.runOnUIThread(this.scheduledCheckRunnable, 400L);
        if (BuildVars.LOGS_ENABLED) {
            Log.m269d("ViewMetrics", "attach");
        }
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        ViewTreeObserver viewTreeObserver = this.observer;
        if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
            this.observer.removeOnPreDrawListener(this);
            this.observer.removeOnGlobalLayoutListener(this);
            this.observer.removeOnScrollChangedListener(this);
        }
        this.observer = null;
        this.lastTime = 0L;
        AndroidUtilities.cancelRunOnUIThread(this.scheduledCheckRunnable);
        if (BuildVars.LOGS_ENABLED) {
            Log.m269d("ViewMetrics", "detach");
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        invalidateViewPort();
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public void onScrollChanged() {
        this.updateInNextDraw = true;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        this.updateInNextDraw = true;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        if (!this.updateInNextDraw) {
            return true;
        }
        processCurrentFrame();
        this.updateInNextDraw = false;
        return true;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (this.DRAW_DEBUG) {
            if (this.tmpTextPaint == null) {
                TextPaint textPaint = new TextPaint(1);
                this.tmpTextPaint = textPaint;
                textPaint.setColor(-16776961);
                this.tmpTextPaint.setTextSize(AndroidUtilities.dp(10.0f));
            }
            super.onDraw(canvas);
            canvas.drawRect(this.viewPort, Theme.DEBUG_RED_STROKE);
            int size = this.watchers.size();
            int i = 0;
            while (i < size) {
                MessageWatcher messageWatcherValueAt = this.watchers.valueAt(i);
                canvas.drawRect(messageWatcherValueAt.position, Theme.DEBUG_GREEN_STROKE);
                canvas.save();
                canvas.translate(messageWatcherValueAt.position.left, MathUtils.clamp(MathUtils.clamp(messageWatcherValueAt.position.centerY() - AndroidUtilities.dp(20.0f), this.viewPort.top - AndroidUtilities.dp(40.0f), this.viewPort.bottom), messageWatcherValueAt.position.top, messageWatcherValueAt.position.bottom - AndroidUtilities.dp(40.0f)));
                Canvas canvas2 = canvas;
                canvas2.drawRect(0.0f, 0.0f, messageWatcherValueAt.position.width(), AndroidUtilities.dp(40.0f), Theme.DEBUG_GREEN_B0);
                canvas2.translate(AndroidUtilities.dp(10.0f), AndroidUtilities.dp(16.0f));
                canvas2.save();
                canvas2.drawText("time_in_view_ms: " + messageWatcherValueAt.visibleTime, 0.0f, 0.0f, this.tmpTextPaint);
                canvas2.translate(0.0f, (float) AndroidUtilities.dp(16.0f));
                canvas2.drawText("active_time_in_view_ms: " + messageWatcherValueAt.activeTime, 0.0f, 0.0f, this.tmpTextPaint);
                canvas2.restore();
                canvas2.save();
                canvas2.translate(getWidth() / 2.0f, 0.0f);
                canvas2.drawText("height_to_viewport_ratio_permille: " + messageWatcherValueAt.getHeightToViewportRatioPermille(), 0.0f, 0.0f, this.tmpTextPaint);
                canvas2.translate(0.0f, (float) AndroidUtilities.dp(16.0f));
                canvas2.drawText("seen_range_ratio_permille: " + messageWatcherValueAt.getSeenRangeRatioPermille(), 0.0f, 0.0f, this.tmpTextPaint);
                canvas2.restore();
                canvas2.restore();
                i++;
                canvas = canvas2;
            }
        }
    }
}
