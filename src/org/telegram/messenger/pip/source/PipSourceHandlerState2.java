package org.telegram.messenger.pip.source;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.Log;
import android.view.View;
import androidx.core.graphics.ColorUtils;
import androidx.media3.common.Player;
import java.util.Objects;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.pip.PipActivityController;
import org.telegram.messenger.pip.PipSource;
import org.telegram.messenger.pip.PipSourceContentView;
import org.telegram.messenger.pip.activity.IPipActivityAnimationListener;
import org.telegram.messenger.pip.activity.IPipActivityListener;
import org.telegram.messenger.pip.utils.Trigger;
import org.telegram.ui.ActionBar.Theme;

/* JADX INFO: loaded from: classes5.dex */
public class PipSourceHandlerState2 implements IPipActivityListener, IPipActivityAnimationListener {
    private PipSourceSnapshot contentBackground;
    private PipSourceSnapshot contentForeground;
    private float lastProgress;
    private float lastRadius;
    public View pictureInPicturePlaceholderView;
    public View pictureInPictureView;
    private PipSourceContentView pictureInPictureWrapperView;
    private PipSourcePlaceholder pipSourcePlaceholder;
    private boolean shouldBeAttached;
    private final PipSource source;
    private int state = 0;
    public final Rect positionSource = new Rect();
    public final Rect position = new Rect();
    private final RectF rect = new RectF();
    private final Path path = new Path();

    public PipSourceHandlerState2(PipSource pipSource) {
        this.source = pipSource;
    }

    private void performPreAttach() {
        if (this.state != 0) {
            FileLog.m990e("[PIP_DEBUG] wrong pip state STATE_DETACHED: " + this.state);
            return;
        }
        this.source.params.getPosition(this.positionSource);
        Log.i("PIP_DEBUG", "[HANDLER] pre attach start " + this.positionSource);
        int measuredWidth = this.source.controller.activity.getWindow().getDecorView().getMeasuredWidth();
        int measuredHeight = this.source.controller.activity.getWindow().getDecorView().getMeasuredHeight();
        Bitmap bitmapPipCreatePrimaryWindowViewBitmap = this.source.delegate.pipCreatePrimaryWindowViewBitmap();
        final IPipSourceDelegate iPipSourceDelegate = this.source.delegate;
        Objects.requireNonNull(iPipSourceDelegate);
        this.contentBackground = new PipSourceSnapshot(measuredWidth, measuredHeight, new Utilities.Callback() { // from class: org.telegram.messenger.pip.source.PipSourceHandlerState2$$ExternalSyntheticLambda1
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                iPipSourceDelegate.pipRenderBackground((Canvas) obj);
            }
        });
        final IPipSourceDelegate iPipSourceDelegate2 = this.source.delegate;
        Objects.requireNonNull(iPipSourceDelegate2);
        this.contentForeground = new PipSourceSnapshot(measuredWidth, measuredHeight, new Utilities.Callback() { // from class: org.telegram.messenger.pip.source.PipSourceHandlerState2$$ExternalSyntheticLambda2
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                iPipSourceDelegate2.pipRenderForeground((Canvas) obj);
            }
        });
        this.pictureInPictureView = this.source.delegate.pipCreatePictureInPictureView();
        this.pictureInPicturePlaceholderView = new View(this.source.controller.activity);
        PipSourceContentView pipSourceContentView = new PipSourceContentView(this.source.controller.activity, this);
        this.pictureInPictureWrapperView = pipSourceContentView;
        pipSourceContentView.addView(this.pictureInPicturePlaceholderView);
        this.pictureInPictureWrapperView.addView(this.pictureInPictureView);
        PipSourcePlaceholder pipSourcePlaceholder = new PipSourcePlaceholder(this.pictureInPicturePlaceholderView, this.source.placeholderView);
        this.pipSourcePlaceholder = pipSourcePlaceholder;
        pipSourcePlaceholder.setPlaceholder(bitmapPipCreatePrimaryWindowViewBitmap);
        this.source.controller.getPipContentView().addView(this.pictureInPictureWrapperView);
        this.state = 1;
        this.pictureInPictureWrapperView.invalidate();
        AndroidUtilities.doOnPreDraw(this.pictureInPictureView, Trigger.run(new Trigger.Callback() { // from class: org.telegram.messenger.pip.source.PipSourceHandlerState2$$ExternalSyntheticLambda3
            @Override // org.telegram.messenger.pip.utils.Trigger.Callback
            public final void run(boolean z) {
                this.f$0.lambda$performPreAttach$0(z);
            }
        }, 300L));
        Log.i("PIP_DEBUG", "[HANDLER] pre attach end");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performPreAttach$0(boolean z) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.pip.source.PipSourceHandlerState2$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.performAttach();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void performAttach() {
        if (this.state != 1) {
            FileLog.m990e("[PIP_DEBUG] wrong pip state STATE_PRE_ATTACHED: " + this.state);
            return;
        }
        Log.i("PIP_DEBUG", "[HANDLER] attach");
        this.pipSourcePlaceholder.stopPlaceholderForSource();
        try {
            this.source.delegate.pipHidePrimaryWindowView(Trigger.run(new Trigger.Callback() { // from class: org.telegram.messenger.pip.source.PipSourceHandlerState2$$ExternalSyntheticLambda6
                @Override // org.telegram.messenger.pip.utils.Trigger.Callback
                public final void run(boolean z) {
                    this.f$0.lambda$performAttach$1(z);
                }
            }, 400L));
        } catch (Throwable unused) {
        }
        this.state = 2;
        if (this.shouldBeAttached) {
            return;
        }
        performPreDetach1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performAttach$1(boolean z) {
        this.pipSourcePlaceholder.stopPlaceholderForActivity();
        Log.i("PIP_DEBUG", "[HANDLER] on new source render first frame " + z);
    }

    private void performPreDetach1() {
        if (this.state != 2) {
            FileLog.m990e("[PIP_DEBUG] wrong pip state STATE_ATTACHED: " + this.state);
            return;
        }
        this.pipSourcePlaceholder.setPlaceholder(this.source.delegate.pipCreatePictureInPictureViewBitmap());
        this.state = 3;
        this.pictureInPictureWrapperView.removeView(this.pictureInPictureView);
        this.pictureInPictureWrapperView.invalidate();
        this.pictureInPictureView = null;
        AndroidUtilities.doOnPreDraw(this.pictureInPictureWrapperView, Trigger.run(new Trigger.Callback() { // from class: org.telegram.messenger.pip.source.PipSourceHandlerState2$$ExternalSyntheticLambda0
            @Override // org.telegram.messenger.pip.utils.Trigger.Callback
            public final void run(boolean z) {
                this.f$0.lambda$performPreDetach1$2(z);
            }
        }, 300L));
        Log.i("PIP_DEBUG", "[HANDLER] pre detach 1");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performPreDetach1$2(boolean z) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.pip.source.PipSourceHandlerState2$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.performPreDetach2();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void performPreDetach2() {
        if (this.state != 3) {
            FileLog.m990e("[PIP_DEBUG] wrong pip state STATE_PRE_DETACHED_1: " + this.state);
        } else {
            this.source.delegate.pipShowPrimaryWindowView(Trigger.run(new Trigger.Callback() { // from class: org.telegram.messenger.pip.source.PipSourceHandlerState2$$ExternalSyntheticLambda7
                @Override // org.telegram.messenger.pip.utils.Trigger.Callback
                public final void run(boolean z) {
                    this.f$0.lambda$performPreDetach2$3(z);
                }
            }, 400L));
            this.pictureInPictureWrapperView.invalidate();
            this.state = 4;
            AndroidUtilities.doOnPreDraw(this.source.contentView, Trigger.run(new Trigger.Callback() { // from class: org.telegram.messenger.pip.source.PipSourceHandlerState2$$ExternalSyntheticLambda8
                @Override // org.telegram.messenger.pip.utils.Trigger.Callback
                public final void run(boolean z) {
                    this.f$0.lambda$performPreDetach2$4(z);
                }
            }, 300L));
            Log.i("PIP_DEBUG", "[HANDLER] pre detach 2");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performPreDetach2$3(boolean z) {
        Log.i("PIP_DEBUG", "[HANDLER] on old source render first frame " + z);
        final PipSourcePlaceholder pipSourcePlaceholder = this.pipSourcePlaceholder;
        Objects.requireNonNull(pipSourcePlaceholder);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.pip.source.PipSourceHandlerState2$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                pipSourcePlaceholder.stopPlaceholderForSource();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performPreDetach2$4(boolean z) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.pip.source.PipSourceHandlerState2$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.performDetach();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void performDetach() {
        if (this.state != 4) {
            FileLog.m990e("[PIP_DEBUG] wrong pip state STATE_PRE_DETACHED_2: " + this.state);
            return;
        }
        this.source.controller.getPipContentView().removeView(this.pictureInPictureWrapperView);
        this.pictureInPictureView = null;
        this.pictureInPictureWrapperView = null;
        this.pictureInPicturePlaceholderView = null;
        PipSourceSnapshot pipSourceSnapshot = this.contentForeground;
        if (pipSourceSnapshot != null) {
            pipSourceSnapshot.release();
            this.contentForeground = null;
        }
        PipSourceSnapshot pipSourceSnapshot2 = this.contentBackground;
        if (pipSourceSnapshot2 != null) {
            pipSourceSnapshot2.release();
            this.contentBackground = null;
        }
        this.pipSourcePlaceholder.stopPlaceholderForActivity();
        this.state = 0;
        Log.i("PIP_DEBUG", "[HANDLER] detach");
        if (this.shouldBeAttached) {
            performPreAttach();
        }
    }

    public void updatePositionViewRect(int i, int i2, boolean z) {
        Rect rect = this.position;
        if (z) {
            rect.set(0, 0, i, i2);
        } else {
            rect.set(this.positionSource);
        }
    }

    private void rebuildPath(float f) {
        if (this.lastRadius == f) {
            return;
        }
        this.lastRadius = f;
        this.rect.set(this.position);
        this.path.reset();
        this.path.addRoundRect(this.rect, f, f, Path.Direction.CW);
        this.path.close();
    }

    public void draw(Canvas canvas, Utilities.Callback<Canvas> callback) {
        float f = this.source.cornerRadius * (1.0f - this.lastProgress);
        boolean z = f > 1.0f;
        drawBackground(canvas);
        if (z) {
            rebuildPath(f);
            canvas.save();
            canvas.clipPath(this.path);
        }
        callback.run(canvas);
        drawForeground(canvas);
        if (z) {
            canvas.restore();
        }
    }

    private void drawBackground(Canvas canvas) {
        canvas.drawColor(ColorUtils.setAlphaComponent(Theme.getColor(Theme.key_windowBackgroundWhite), (int) Math.min(this.lastProgress * 420.0f, 255.0f)));
        this.contentBackground.draw(canvas, 1.0f);
    }

    private void drawForeground(Canvas canvas) {
        this.contentForeground.draw(canvas, 1.0f - this.lastProgress);
    }

    public boolean isAttachedToPip() {
        return this.state != 0;
    }

    @Override // org.telegram.messenger.pip.activity.IPipActivityListener
    public void onPipStashStart() {
        Player player;
        PipSource pipSource = this.source;
        if (pipSource == null || (player = pipSource.getPlayer()) == null) {
            return;
        }
        player.pause();
    }

    @Override // org.telegram.messenger.pip.activity.IPipActivityListener
    public void onPipStashEnd() {
        Player player;
        PipSource pipSource = this.source;
        if (pipSource == null || (player = pipSource.getPlayer()) == null) {
            return;
        }
        player.play();
    }

    @Override // org.telegram.messenger.pip.activity.IPipActivityListener
    public void onStartEnterToPip() {
        this.shouldBeAttached = true;
        performPreAttach();
    }

    @Override // org.telegram.messenger.pip.activity.IPipActivityListener
    public void onCompleteExitFromPip(boolean z) {
        this.shouldBeAttached = false;
        performPreDetach1();
    }

    @Override // org.telegram.messenger.pip.activity.IPipActivityAnimationListener
    public void onTransitionAnimationFrame() {
        PipSourceContentView pipSourceContentView = this.pictureInPictureWrapperView;
        if (pipSourceContentView != null) {
            pipSourceContentView.invalidate();
        }
    }

    @Override // org.telegram.messenger.pip.activity.IPipActivityAnimationListener
    public void onTransitionAnimationProgress(float f) {
        this.lastProgress = f;
        PipSourceContentView pipSourceContentView = this.pictureInPictureWrapperView;
        if (pipSourceContentView != null) {
            pipSourceContentView.invalidate();
        }
    }

    public void onReceiveMaxPriority() {
        this.source.controller.addPipListener(this);
        this.source.controller.addAnimationListener(this);
        PipSource pipSource = this.source;
        PipActivityController pipActivityController = pipSource.controller;
        String str = pipSource.tag;
        pipSource.getClass();
        pipActivityController.addActionListener(str, null);
    }

    public void onLoseMaxPriority() {
        this.shouldBeAttached = false;
        performPreDetach1();
        this.source.controller.removePipListener(this);
        this.source.controller.removeAnimationListener(this);
        PipSource pipSource = this.source;
        PipActivityController pipActivityController = pipSource.controller;
        String str = pipSource.tag;
        pipSource.getClass();
        pipActivityController.removeActionListener(str, null);
    }
}
