package com.exteragram.messenger.player.ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Camera;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.core.content.ContextCompat;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.FloatValueHolder;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import com.exteragram.messenger.icons.IconManager;
import com.exteragram.messenger.player.PlayerCovers;
import com.exteragram.messenger.utils.ui.Material3Tokens;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.Utilities;
import org.telegram.ui.Components.AnimatedFileDrawable;
import org.telegram.ui.Components.CubicBezierInterpolator;

/* JADX INFO: loaded from: classes4.dex */
public class PlayerCoverView extends View {
    private int awaitingDirection;
    private final Camera camera;
    private final float[] canvasAmounts;
    private long canvasMorphAt;
    private float canvasPageWidth;
    private final float[] canvasTargets;
    private float compact;
    private int containerColor;
    private final Paint containerPaint;
    private final RectF coverRect;
    private boolean crossfade;
    private int current;
    private Delegate delegate;
    private float downX;
    private float downY;
    private float dragStartOffset;
    private boolean dragging;
    private final RectF drawRect;
    private float hideProgress;
    private final MessageObject[] messages;
    private final String[] motionPaths;
    private final ImageReceiver[] motionReceivers;
    private boolean motionRunning;
    private final long[] motionShownAt;
    private int neighbor;
    private int neighborDirection;
    private float offset;
    private final SpringAnimation offsetSpring;
    private float offsetVelocity;
    private int outgoing;
    private int outgoingDirection;
    private float pager;
    private float pauseScale;
    private final SpringAnimation pauseSpring;
    private Drawable placeholderIcon;
    private int placeholderIconColor;
    private final boolean[] placeholders;
    private boolean playing;
    private final int[] radii;
    private float radius;
    private final ImageReceiver[] receivers;
    private final Runnable settleTilt;
    private final float[] slotScales;
    private float swap;
    private float swapShift;
    private final SpringAnimation swapSpring;
    private float swipeTilt;
    private float thumbAlpha;
    private float thumbRadius;
    private final RectF thumbRect;
    private final Matrix tiltMatrix;
    private final SpringAnimation tiltSpring;
    private final int touchSlop;
    private boolean tracking;
    private VelocityTracker velocityTracker;

    public interface Delegate {
        boolean canDrag();

        MessageObject getNeighbor(int i);

        boolean hasCanvas(MessageObject messageObject);

        void onCoverLoaded(MessageObject messageObject, ImageReceiver imageReceiver);

        void onPageMoved();

        void onSwipe(int i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        setSwipeTiltVelocity(0.0f);
    }

    public PlayerCoverView(Context context) {
        super(context);
        this.receivers = new ImageReceiver[3];
        this.messages = new MessageObject[3];
        this.placeholders = new boolean[3];
        this.radii = new int[3];
        this.slotScales = new float[3];
        this.motionReceivers = new ImageReceiver[3];
        this.motionPaths = new String[3];
        this.motionShownAt = new long[3];
        this.canvasAmounts = new float[3];
        this.canvasTargets = new float[3];
        this.thumbRect = new RectF();
        this.containerPaint = new Paint(1);
        this.coverRect = new RectF();
        this.drawRect = new RectF();
        this.camera = new Camera();
        this.tiltMatrix = new Matrix();
        this.settleTilt = new Runnable() { // from class: com.exteragram.messenger.player.ui.PlayerCoverView$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$0();
            }
        };
        this.neighbor = -1;
        this.outgoing = -1;
        this.swap = 1.0f;
        this.swapShift = 1.0f;
        this.pauseScale = 1.0f;
        this.playing = true;
        this.motionRunning = true;
        this.touchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        for (final int i = 0; i < 3; i++) {
            this.receivers[i] = new ImageReceiver(this);
            this.receivers[i].setDelegate(new ImageReceiver.ImageReceiverDelegate() { // from class: com.exteragram.messenger.player.ui.PlayerCoverView$$ExternalSyntheticLambda1
                @Override // org.telegram.messenger.ImageReceiver.ImageReceiverDelegate
                public final void didSetImage(ImageReceiver imageReceiver, boolean z, boolean z2, boolean z3) {
                    this.f$0.lambda$new$1(i, imageReceiver, z, z2, z3);
                }
            });
            this.motionReceivers[i] = new ImageReceiver(this);
            this.motionReceivers[i].setCrossfadeAlpha((byte) 2);
            this.slotScales[i] = 1.0f;
        }
        Drawable drawable = ContextCompat.getDrawable(context, C2807R.drawable.player_cover_placeholder);
        this.placeholderIcon = drawable != null ? drawable.mutate() : null;
        IconManager.INSTANCE.requestDrawableForSize(C2807R.drawable.player_cover_placeholder, AndroidUtilities.dp(108.00001f), new Utilities.Callback() { // from class: com.exteragram.messenger.player.ui.PlayerCoverView$$ExternalSyntheticLambda2
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$new$2((Drawable) obj);
            }
        });
        SpringAnimation springAnimation = new SpringAnimation(new FloatValueHolder(0.0f));
        this.offsetSpring = springAnimation;
        springAnimation.setMinimumVisibleChange(0.5f);
        springAnimation.setSpring(new SpringForce(0.0f).setDampingRatio(0.8f).setStiffness(380.0f));
        springAnimation.addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() { // from class: com.exteragram.messenger.player.ui.PlayerCoverView$$ExternalSyntheticLambda3
            @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationUpdateListener
            public final void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f, float f2) {
                this.f$0.lambda$new$3(dynamicAnimation, f, f2);
            }
        });
        springAnimation.addEndListener(new DynamicAnimation.OnAnimationEndListener() { // from class: com.exteragram.messenger.player.ui.PlayerCoverView$$ExternalSyntheticLambda4
            @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationEndListener
            public final void onAnimationEnd(DynamicAnimation dynamicAnimation, boolean z, float f, float f2) {
                this.f$0.lambda$new$4(dynamicAnimation, z, f, f2);
            }
        });
        SpringAnimation springAnimationCreateSpring = Material3Tokens.createSpring(0.8f, 380.0f, 0.002f, new Utilities.Callback() { // from class: com.exteragram.messenger.player.ui.PlayerCoverView$$ExternalSyntheticLambda5
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$new$5((Float) obj);
            }
        });
        this.swapSpring = springAnimationCreateSpring;
        springAnimationCreateSpring.addEndListener(new DynamicAnimation.OnAnimationEndListener() { // from class: com.exteragram.messenger.player.ui.PlayerCoverView$$ExternalSyntheticLambda6
            @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationEndListener
            public final void onAnimationEnd(DynamicAnimation dynamicAnimation, boolean z, float f, float f2) {
                this.f$0.lambda$new$6(dynamicAnimation, z, f, f2);
            }
        });
        this.pauseSpring = Material3Tokens.createSpring(0.8f, 380.0f, 5.0E-4f, new Utilities.Callback() { // from class: com.exteragram.messenger.player.ui.PlayerCoverView$$ExternalSyntheticLambda7
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$new$7((Float) obj);
            }
        });
        this.tiltSpring = Material3Tokens.createSpring(0.45f, 260.0f, 0.02f, new Utilities.Callback() { // from class: com.exteragram.messenger.player.ui.PlayerCoverView$$ExternalSyntheticLambda8
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$new$8((Float) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(int i, ImageReceiver imageReceiver, boolean z, boolean z2, boolean z3) {
        Delegate delegate;
        MessageObject messageObject;
        if (z) {
            if ((i != this.current && i != this.neighbor) || (delegate = this.delegate) == null || (messageObject = this.messages[i]) == null) {
                return;
            }
            delegate.onCoverLoaded(messageObject, imageReceiver);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(Drawable drawable) {
        Drawable drawableMutate = drawable.mutate();
        this.placeholderIcon = drawableMutate;
        drawableMutate.setColorFilter(new PorterDuffColorFilter(this.placeholderIconColor, PorterDuff.Mode.SRC_IN));
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3(DynamicAnimation dynamicAnimation, float f, float f2) {
        float finalPosition = this.offsetSpring.getSpring().getFinalPosition();
        if (this.offset != finalPosition && Math.signum(f - finalPosition) == (-Math.signum(this.offset - finalPosition)) && getPagerAmount() > 0.0f) {
            this.offsetSpring.skipToEnd();
            f = finalPosition;
            f2 = 0.0f;
        }
        this.offset = f;
        this.offsetVelocity = f2;
        setSwipeTiltVelocity(f2);
        invalidatePage();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$4(DynamicAnimation dynamicAnimation, boolean z, float f, float f2) {
        if (z) {
            return;
        }
        setSwipeTiltVelocity(0.0f);
        onOffsetSettled();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$5(Float f) {
        this.swap = f.floatValue();
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$6(DynamicAnimation dynamicAnimation, boolean z, float f, float f2) {
        if (z || !this.crossfade) {
            return;
        }
        releaseOutgoing();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$7(Float f) {
        this.pauseScale = f.floatValue();
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$8(Float f) {
        this.swipeTilt = f.floatValue();
        invalidate();
    }

    private void setSwipeTiltVelocity(float f) {
        if (getPagerAmount() > 0.0f) {
            this.tiltSpring.cancel();
            this.swipeTilt = 0.0f;
            return;
        }
        float fClamp = Utilities.clamp(f / AndroidUtilities.dpf2(2400.0f), 1.0f, -1.0f) * 10.0f;
        if (this.tiltSpring.getSpring().getFinalPosition() == fClamp && (this.tiltSpring.isRunning() || this.swipeTilt == fClamp)) {
            return;
        }
        this.tiltSpring.animateToFinalPosition(fClamp);
    }

    private void animateOffset(float f, float f2) {
        this.offsetSpring.cancel();
        this.offsetSpring.setStartValue(this.offset);
        this.offsetSpring.setStartVelocity(f2);
        this.offsetVelocity = f2;
        this.offsetSpring.getSpring().setFinalPosition(f);
        this.offsetSpring.start();
    }

    public void setDelegate(Delegate delegate) {
        this.delegate = delegate;
    }

    public void setColors(int i, int i2) {
        this.containerColor = i;
        this.placeholderIconColor = i2;
        Drawable drawable = this.placeholderIcon;
        if (drawable != null) {
            drawable.setColorFilter(new PorterDuffColorFilter(i2, PorterDuff.Mode.SRC_IN));
        }
        invalidate();
    }

    public void setCoverRect(float f, float f2, float f3, float f4, float f5) {
        RectF rectF = this.coverRect;
        if (rectF.left == f && rectF.top == f2 && rectF.width() == f3 && this.radius == f4 && this.compact == f5) {
            return;
        }
        this.coverRect.set(f, f2, f + f3, f3 + f2);
        this.radius = f4;
        this.compact = f5;
        updateMotionPlayback();
        invalidate();
    }

    public void setCanvasLayout(float f, float f2, float f3, float f4, float f5, float f6) {
        RectF rectF = this.thumbRect;
        if (rectF.left == f && rectF.top == f2 && rectF.width() == f3 && this.thumbRadius == f4 && this.thumbAlpha == f5 && this.canvasPageWidth == f6) {
            return;
        }
        this.thumbRect.set(f, f2, f + f3, f3 + f2);
        this.thumbRadius = f4;
        this.thumbAlpha = f5;
        this.canvasPageWidth = f6;
        invalidate();
    }

    public void setCurrentCanvas(float f) {
        float[] fArr = this.canvasTargets;
        int i = this.current;
        fArr[i] = f;
        float[] fArr2 = this.canvasAmounts;
        if (fArr2[i] != f) {
            fArr2[i] = f;
            updateMotionPlayback();
            invalidatePage();
        }
    }

    public float getCurrentCanvas() {
        return this.canvasAmounts[this.current];
    }

    public float getPageOffset() {
        return this.offset;
    }

    public float getPageWidth() {
        return getPage();
    }

    public float getSideCanvas(int i) {
        int i2 = this.neighbor;
        float fMax = (i2 < 0 || this.neighborDirection != i) ? 0.0f : this.canvasAmounts[i2];
        int i3 = this.outgoing;
        if (i3 >= 0 && !this.crossfade && this.outgoingDirection == (-i)) {
            fMax = Math.max(fMax, this.canvasAmounts[i3]);
        }
        return Utilities.clamp01(fMax);
    }

    public float getRhythmOffset() {
        if (getPagerAmount() <= 0.0f) {
            return 0.0f;
        }
        if (this.canvasAmounts[this.current] >= 1.0f) {
            float f = this.offset;
            if (f != 0.0f) {
                int i = f > 0.0f ? -1 : 1;
                return ((this.neighbor < 0 || this.neighborDirection != i) && (this.outgoing < 0 || this.crossfade || this.outgoingDirection != (-i))) ? f : f + (i * getPage());
            }
        }
        return this.offset;
    }

    public void refreshCanvas() {
        MessageObject messageObject;
        if (this.delegate == null) {
            return;
        }
        boolean z = false;
        for (int i = 0; i < 3; i++) {
            if (i != this.current && (messageObject = this.messages[i]) != null) {
                this.canvasTargets[i] = this.delegate.hasCanvas(messageObject) ? 1.0f : 0.0f;
                z |= this.canvasTargets[i] != this.canvasAmounts[i];
            }
        }
        if (z) {
            invalidatePage();
        }
    }

    private void stepCanvasMorph() {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        float f = this.canvasMorphAt == 0 ? 0.0f : (jElapsedRealtime - r2) / 250.0f;
        boolean z = false;
        for (int i = 0; i < 3; i++) {
            if (i != this.current) {
                float[] fArr = this.canvasAmounts;
                float f2 = fArr[i];
                float f3 = this.canvasTargets[i];
                if (f2 != f3) {
                    fArr[i] = f3 > f2 ? Math.min(f3, f2 + f) : Math.max(f3, f2 - f);
                    z = true;
                }
            }
        }
        if (!z) {
            jElapsedRealtime = 0;
        }
        this.canvasMorphAt = jElapsedRealtime;
        if (z) {
            invalidatePage();
        }
    }

    private void invalidatePage() {
        invalidate();
        Delegate delegate = this.delegate;
        if (delegate != null) {
            delegate.onPageMoved();
        }
    }

    public RectF getCoverRect() {
        return this.coverRect;
    }

    public float getCoverRadius() {
        return this.radius;
    }

    public float getHideProgress() {
        return this.hideProgress;
    }

    public float getCompactProgress() {
        return this.compact;
    }

    public void setHideProgress(float f) {
        if (this.hideProgress != f) {
            this.hideProgress = f;
            updateMotionPlayback();
            invalidate();
        }
    }

    public void setPlaying(boolean z, boolean z2) {
        this.playing = z;
        updateMotionPlayback();
        float f = z ? 1.0f : 0.94f;
        if (!z2 || !isAttachedToWindow()) {
            this.pauseSpring.cancel();
            this.pauseScale = f;
            invalidate();
        } else {
            if (this.pauseSpring.getSpring().getFinalPosition() == f && (this.pauseSpring.isRunning() || this.pauseScale == f)) {
                return;
            }
            Material3Tokens.animate(this.pauseSpring, this.pauseScale, f);
        }
    }

    public void setMotionCover(MessageObject messageObject, String str) {
        MessageObject messageObject2 = this.messages[this.current];
        if (messageObject2 == null || messageObject == null || messageObject2.getId() != messageObject.getId() || messageObject2.getDialogId() != messageObject.getDialogId() || TextUtils.equals(this.motionPaths[this.current], str)) {
            return;
        }
        clearMotion(this.current);
        if (str != null) {
            String[] strArr = this.motionPaths;
            int i = this.current;
            strArr[i] = str;
            this.motionReceivers[i].setAllowStartAnimation(this.motionRunning);
            this.motionReceivers[this.current].setImage(ImageLocation.getForPath(str), "360_360", null, null, 0L, null, messageObject2, 1);
        }
        invalidate();
    }

    private void clearMotion(int i) {
        String[] strArr = this.motionPaths;
        if (strArr[i] != null) {
            strArr[i] = null;
            this.motionShownAt[i] = 0;
            this.motionReceivers[i].clearImage();
        }
    }

    private float getMotionAlpha(int i) {
        if (this.motionPaths[i] == null) {
            return 0.0f;
        }
        if (this.motionShownAt[i] == 0) {
            AnimatedFileDrawable animation = this.motionReceivers[i].getAnimation();
            if (animation == null || !animation.isRunning() || !animation.hasBitmap()) {
                return 0.0f;
            }
            this.motionShownAt[i] = SystemClock.elapsedRealtime();
        }
        float fClamp01 = Utilities.clamp01((SystemClock.elapsedRealtime() - this.motionShownAt[i]) / 400.0f);
        if (fClamp01 < 1.0f) {
            invalidate();
        }
        return CubicBezierInterpolator.EASE_OUT.getInterpolation(fClamp01);
    }

    private void updateMotionPlayback() {
        boolean z = this.playing && this.compact < 1.0f && this.canvasAmounts[this.current] < 1.0f && this.hideProgress < 1.0f;
        if (z == this.motionRunning) {
            return;
        }
        this.motionRunning = z;
        for (int i = 0; i < 3; i++) {
            if (this.motionPaths[i] != null) {
                this.motionReceivers[i].setAllowStartAnimation(z);
                ImageReceiver[] imageReceiverArr = this.motionReceivers;
                if (z) {
                    imageReceiverArr[i].startAnimation();
                } else {
                    imageReceiverArr[i].stopAnimation();
                }
            }
        }
    }

    public boolean hasBitmap() {
        boolean[] zArr = this.placeholders;
        int i = this.current;
        return !zArr[i] && this.receivers[i].hasBitmapImage();
    }

    public ImageReceiver getImageReceiver() {
        return this.receivers[this.current];
    }

    public MessageObject getMessageObject() {
        return this.messages[this.current];
    }

    private float getPagerAmount() {
        float[] fArr = this.canvasAmounts;
        float fMax = fArr[this.current];
        int i = this.neighbor;
        if (i >= 0) {
            fMax = Math.max(fMax, fArr[i]);
        }
        int i2 = this.outgoing;
        if (i2 >= 0 && !this.crossfade) {
            fMax = Math.max(fMax, this.canvasAmounts[i2]);
        }
        return Utilities.clamp01(fMax);
    }

    private float getPage() {
        return AndroidUtilities.lerp(this.coverRect.width() + AndroidUtilities.dpf2(24.0f), this.canvasPageWidth, getPagerAmount());
    }

    private int freeSlot() {
        for (int i = 0; i < 3; i++) {
            if (i != this.current && i != this.neighbor && i != this.outgoing) {
                return i;
            }
        }
        int i2 = this.outgoing;
        this.outgoing = -1;
        return i2;
    }

    private void load(int i, MessageObject messageObject) {
        Delegate delegate;
        this.messages[i] = messageObject;
        this.slotScales[i] = 1.0f;
        this.canvasAmounts[i] = (messageObject == null || (delegate = this.delegate) == null || !delegate.hasCanvas(messageObject)) ? 0.0f : 1.0f;
        this.canvasTargets[i] = this.canvasAmounts[i];
        clearMotion(i);
        setSlotRadius(i, this.radius);
        if (messageObject == null) {
            this.receivers[i].clearImage();
            this.placeholders[i] = true;
        } else {
            this.placeholders[i] = !PlayerCovers.setCover(this.receivers[i], messageObject, 360, true);
        }
    }

    private void setSlotRadius(int i, float f) {
        int iMax = (int) Math.max(1.0f, f);
        int[] iArr = this.radii;
        if (iArr[i] != iMax) {
            iArr[i] = iMax;
            this.receivers[i].setRoundRadius(iMax);
            this.motionReceivers[i].setRoundRadius(iMax);
        }
    }

    private void releaseSlot(int i) {
        if (i < 0 || i == this.current) {
            return;
        }
        this.receivers[i].clearImage();
        clearMotion(i);
        this.messages[i] = null;
        this.placeholders[i] = false;
        this.slotScales[i] = 1.0f;
        this.canvasAmounts[i] = 0.0f;
        this.canvasTargets[i] = 0.0f;
    }

    private void handOverPauseScale(int i) {
        this.slotScales[i] = this.pauseScale;
        this.pauseSpring.cancel();
        float f = this.slotScales[this.current];
        this.pauseScale = f;
        float f2 = this.playing ? 1.0f : 0.94f;
        if (f != f2) {
            Material3Tokens.animate(this.pauseSpring, f, f2);
        }
    }

    private void releaseOutgoing() {
        releaseSlot(this.outgoing);
        this.outgoing = -1;
        this.crossfade = false;
        this.swap = 1.0f;
        invalidate();
    }

    private void releaseNeighbor() {
        releaseSlot(this.neighbor);
        this.neighbor = -1;
    }

    private void notifyCurrentLoaded() {
        if (this.delegate != null) {
            MessageObject[] messageObjectArr = this.messages;
            int i = this.current;
            if (messageObjectArr[i] == null || this.placeholders[i] || !this.receivers[i].hasBitmapImage()) {
                return;
            }
            Delegate delegate = this.delegate;
            MessageObject[] messageObjectArr2 = this.messages;
            int i2 = this.current;
            delegate.onCoverLoaded(messageObjectArr2[i2], this.receivers[i2]);
        }
    }

    public void setCover(MessageObject messageObject, boolean z, int i) {
        int i2 = this.awaitingDirection;
        if (i2 != 0 && this.neighbor >= 0 && this.neighborDirection == i2) {
            this.awaitingDirection = 0;
            this.swapSpring.cancel();
            releaseSlot(this.outgoing);
            this.outgoing = this.current;
            this.outgoingDirection = i2;
            this.crossfade = false;
            this.swap = 1.0f;
            int i3 = this.neighbor;
            this.current = i3;
            this.neighbor = -1;
            if (this.messages[i3] != messageObject) {
                load(i3, messageObject);
            }
            handOverPauseScale(this.outgoing);
            this.offset += i2 * getPage();
            animateOffset(0.0f, this.offsetVelocity);
            notifyCurrentLoaded();
            invalidatePage();
            return;
        }
        this.awaitingDirection = 0;
        abortDrag();
        releaseNeighbor();
        boolean z2 = z && isAttachedToWindow() && !this.coverRect.isEmpty();
        if (z2 && this.compact < 0.5f && this.hideProgress < 0.5f) {
            this.swapSpring.cancel();
            releaseSlot(this.outgoing);
            this.outgoing = this.current;
            this.outgoingDirection = i;
            this.crossfade = false;
            this.swap = 1.0f;
            int iFreeSlot = freeSlot();
            this.current = iFreeSlot;
            load(iFreeSlot, messageObject);
            handOverPauseScale(this.outgoing);
            this.offset += i * getPage();
            animateOffset(0.0f, 0.0f);
        } else {
            SpringAnimation springAnimation = this.offsetSpring;
            if (z2) {
                springAnimation.cancel();
                this.offset = 0.0f;
                releaseSlot(this.outgoing);
                this.outgoing = this.current;
                this.outgoingDirection = i;
                this.crossfade = true;
                this.swapShift = 1.0f - this.compact;
                int iFreeSlot2 = freeSlot();
                this.current = iFreeSlot2;
                load(iFreeSlot2, messageObject);
                handOverPauseScale(this.outgoing);
                this.swap = 0.0f;
                Material3Tokens.animate(this.swapSpring, 0.0f, 1.0f);
            } else {
                springAnimation.cancel();
                this.swapSpring.cancel();
                this.offset = 0.0f;
                this.swap = 1.0f;
                releaseSlot(this.outgoing);
                this.outgoing = -1;
                this.crossfade = false;
                load(this.current, messageObject);
            }
        }
        notifyCurrentLoaded();
        invalidatePage();
    }

    public void refreshCover() {
        MessageObject[] messageObjectArr = this.messages;
        int i = this.current;
        if (messageObjectArr[i] != null) {
            this.placeholders[i] = !PlayerCovers.setCover(this.receivers[i], r0, 360, true);
            invalidate();
        }
    }

    public void cancelPendingSwipe() {
        if (this.awaitingDirection != 0) {
            this.awaitingDirection = 0;
            animateOffset(0.0f, this.offsetVelocity);
        }
    }

    private void onOffsetSettled() {
        if (this.awaitingDirection != 0 || Math.abs(this.offset) >= 1.0f) {
            return;
        }
        this.offset = 0.0f;
        if (!this.crossfade) {
            releaseSlot(this.outgoing);
            this.outgoing = -1;
        }
        if (!this.tracking) {
            releaseNeighbor();
        }
        invalidatePage();
    }

    private void ensureNeighbor(int i) {
        int i2 = this.neighbor;
        if (i2 < 0 || this.neighborDirection != i) {
            if (this.outgoing >= 0 && !this.crossfade && this.outgoingDirection == (-i)) {
                releaseNeighbor();
                this.neighbor = this.outgoing;
                this.neighborDirection = i;
                this.outgoing = -1;
                return;
            }
            if (i2 < 0) {
                this.neighbor = freeSlot();
            }
            this.neighborDirection = i;
            int i3 = this.neighbor;
            Delegate delegate = this.delegate;
            load(i3, delegate != null ? delegate.getNeighbor(i) : null);
        }
    }

    private float rubber(float f) {
        float fDpf2 = AndroidUtilities.dpf2(56.0f);
        return Math.signum(f) * fDpf2 * (1.0f - (1.0f / (((Math.abs(f) / fDpf2) * 0.55f) + 1.0f)));
    }

    private void setDragOffset(float f) {
        if (f != 0.0f) {
            int i = f < 0.0f ? 1 : -1;
            Delegate delegate = this.delegate;
            if (delegate != null && delegate.canDrag()) {
                ensureNeighbor(i);
            } else {
                f = rubber(f);
            }
        }
        this.offset = f;
        invalidatePage();
    }

    private void abortDrag() {
        if (this.tracking || this.dragging) {
            this.tracking = false;
            this.dragging = false;
            if (getParent() != null) {
                getParent().requestDisallowInterceptTouchEvent(false);
            }
            recycleVelocityTracker();
        }
    }

    private void recycleVelocityTracker() {
        VelocityTracker velocityTracker = this.velocityTracker;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.velocityTracker = null;
        }
    }

    private void finishDrag(float f, boolean z) {
        Delegate delegate;
        float page = getPage();
        int i = this.offset < 0.0f ? 1 : -1;
        boolean z2 = Math.abs(f) > AndroidUtilities.dpf2(600.0f) && Math.signum(f) == ((float) (-i));
        if (!z && Math.abs(this.offset) > 0.5f && (delegate = this.delegate) != null && delegate.canDrag() && (Math.abs(this.offset) > 0.3f * page || z2)) {
            ensureNeighbor(i);
            this.awaitingDirection = i;
            animateOffset((-i) * page, f);
            performHapticFeedback(3);
            this.delegate.onSwipe(i);
            return;
        }
        if (z) {
            f = 0.0f;
        }
        animateOffset(0.0f, f);
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        for (int i = 0; i < 3; i++) {
            this.receivers[i].onAttachedToWindow();
            this.motionReceivers[i].onAttachedToWindow();
        }
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        abortDrag();
        this.offsetSpring.cancel();
        this.swapSpring.cancel();
        this.pauseSpring.cancel();
        this.tiltSpring.cancel();
        removeCallbacks(this.settleTilt);
        this.swipeTilt = 0.0f;
        this.awaitingDirection = 0;
        this.offset = 0.0f;
        this.swap = 1.0f;
        releaseNeighbor();
        releaseSlot(this.outgoing);
        this.outgoing = -1;
        this.crossfade = false;
        for (int i = 0; i < 3; i++) {
            this.receivers[i].onDetachedFromWindow();
            this.motionReceivers[i].onDetachedFromWindow();
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        float f;
        float f2;
        if (this.coverRect.isEmpty() || this.hideProgress >= 1.0f) {
            return;
        }
        stepCanvasMorph();
        float f3 = 1.0f - this.hideProgress;
        float page = getPage();
        this.pager = getPagerAmount();
        int i = this.outgoing;
        if (i >= 0) {
            float fLerp = AndroidUtilities.lerp(this.slotScales[i], 1.0f, this.compact);
            boolean z = this.crossfade;
            int i2 = this.outgoing;
            if (z) {
                float fDpf2 = (-this.outgoingDirection) * AndroidUtilities.dpf2(28.0f) * this.swapShift;
                float f4 = this.swap;
                drawLayer(canvas, i2, fDpf2 * f4, fLerp, f3 * (1.0f - Utilities.clamp01(f4)));
                f = f3;
                f2 = page;
            } else {
                f = f3;
                f2 = page;
                drawSide(canvas, i2, this.offset - (this.outgoingDirection * page), f2, f, fLerp);
            }
        } else {
            f = f3;
            f2 = page;
        }
        int i3 = this.neighbor;
        if (i3 >= 0) {
            drawSide(canvas, i3, (this.neighborDirection * f2) + this.offset, f2, f, AndroidUtilities.lerp(this.slotScales[i3], 1.0f, this.compact));
        }
        float fLerp2 = AndroidUtilities.lerp(this.pauseScale, 1.0f, this.compact);
        if (this.outgoing >= 0 && this.crossfade) {
            float fDpf22 = this.outgoingDirection * AndroidUtilities.dpf2(28.0f) * this.swapShift;
            float f5 = this.swap;
            drawLayer(canvas, this.current, (1.0f - f5) * fDpf22, fLerp2 * AndroidUtilities.lerp(0.94f, 1.0f, Utilities.clamp01(f5)), f * Utilities.clamp01(this.swap));
            return;
        }
        drawSide(canvas, this.current, this.offset, f2, f, fLerp2);
    }

    private void drawSide(Canvas canvas, int i, float f, float f2, float f3, float f4) {
        float fClamp01 = 0.0f;
        if (f2 > 0.0f) {
            fClamp01 = (1.0f - this.pager) * Utilities.clamp01(Math.abs(f) / f2);
        }
        drawLayer(canvas, i, f, AndroidUtilities.lerp(1.0f, 0.86f, fClamp01) * f4, f3 * AndroidUtilities.lerp(1.0f, 0.55f, fClamp01));
    }

    private void drawLayer(Canvas canvas, int i, float f, float f2, float f3) {
        if (f3 <= 0.0f || i < 0) {
            return;
        }
        this.drawRect.set(this.coverRect);
        this.drawRect.offset(f, 0.0f);
        if (f2 != 1.0f) {
            float fWidth = (this.drawRect.width() * (1.0f - f2)) / 2.0f;
            this.drawRect.inset(fWidth, fWidth);
        }
        float fMin = Math.min(this.radius * f2, this.drawRect.width() / 2.0f);
        float fClamp01 = Utilities.clamp01(this.canvasAmounts[i]);
        if (fClamp01 > 0.0f) {
            float page = getPage();
            f3 *= AndroidUtilities.lerp(1.0f, (page > 0.0f ? 1.0f - Utilities.clamp01(Math.abs(f) / page) : 1.0f) * this.thumbAlpha, fClamp01);
            RectF rectF = this.drawRect;
            AndroidUtilities.lerp(rectF, this.thumbRect, fClamp01, rectF);
            fMin = AndroidUtilities.lerp(fMin, this.thumbRadius, fClamp01);
            if (f3 <= 0.0f) {
                return;
            }
        }
        RectF rectF2 = this.drawRect;
        if (rectF2.right < 0.0f || rectF2.left > getWidth()) {
            return;
        }
        float f4 = this.swipeTilt * (1.0f - this.compact) * (1.0f - this.pager) * (1.0f - fClamp01);
        boolean z = false;
        boolean z2 = f4 != 0.0f;
        if (z2) {
            this.camera.save();
            this.camera.setLocation(0.0f, 0.0f, -Math.max(8.0f, (this.drawRect.width() * 4.0f) / 72.0f));
            this.camera.rotateY(f4);
            this.camera.getMatrix(this.tiltMatrix);
            this.camera.restore();
            this.tiltMatrix.preTranslate(-this.drawRect.centerX(), -this.drawRect.centerY());
            this.tiltMatrix.postTranslate(this.drawRect.centerX(), this.drawRect.centerY());
            canvas.save();
            canvas.concat(this.tiltMatrix);
        }
        ImageReceiver imageReceiver = this.receivers[i];
        if (!this.placeholders[i] && imageReceiver.hasBitmapImage()) {
            z = true;
        }
        if (!z || imageReceiver.getCurrentAlpha() < 1.0f) {
            this.containerPaint.setColor(this.containerColor);
            this.containerPaint.setAlpha((int) (Color.alpha(this.containerColor) * f3));
            canvas.drawRoundRect(this.drawRect, fMin, fMin, this.containerPaint);
            if (this.placeholderIcon != null && (this.placeholders[i] || !z)) {
                int iWidth = (int) (this.drawRect.width() * 0.3f);
                float f5 = iWidth / 2.0f;
                int iCenterX = (int) (this.drawRect.centerX() - f5);
                int iCenterY = (int) (this.drawRect.centerY() - f5);
                this.placeholderIcon.setBounds(iCenterX, iCenterY, iCenterX + iWidth, iWidth + iCenterY);
                this.placeholderIcon.setAlpha((int) (255.0f * f3));
                this.placeholderIcon.draw(canvas);
            }
        }
        if (!this.placeholders[i]) {
            setSlotRadius(i, fMin);
            RectF rectF3 = this.drawRect;
            imageReceiver.setImageCoords(rectF3.left, rectF3.top, rectF3.width(), this.drawRect.height());
            imageReceiver.setAlpha(f3);
            imageReceiver.draw(canvas);
        }
        float motionAlpha = getMotionAlpha(i);
        if (motionAlpha > 0.0f) {
            ImageReceiver imageReceiver2 = this.motionReceivers[i];
            setSlotRadius(i, fMin);
            RectF rectF4 = this.drawRect;
            imageReceiver2.setImageCoords(rectF4.left, rectF4.top, rectF4.width(), this.drawRect.height());
            imageReceiver2.setAlpha(f3 * motionAlpha);
            imageReceiver2.draw(canvas);
        }
        if (z2) {
            canvas.restore();
        }
    }

    @Override // android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() != 0 || this.coverRect.contains(motionEvent.getX(), motionEvent.getY())) {
            return super.dispatchTouchEvent(motionEvent);
        }
        return false;
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        Delegate delegate;
        float xVelocity;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            if (this.hideProgress > 0.5f || this.compact > 0.5f || this.awaitingDirection != 0 || (delegate = this.delegate) == null || !delegate.canDrag()) {
                return false;
            }
            this.tracking = true;
            this.dragging = false;
            this.downX = motionEvent.getX();
            this.downY = motionEvent.getY();
            recycleVelocityTracker();
            VelocityTracker velocityTrackerObtain = VelocityTracker.obtain();
            this.velocityTracker = velocityTrackerObtain;
            velocityTrackerObtain.addMovement(motionEvent);
            return true;
        }
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                if (!this.tracking) {
                    return false;
                }
                VelocityTracker velocityTracker = this.velocityTracker;
                if (velocityTracker != null) {
                    velocityTracker.addMovement(motionEvent);
                }
                float x = motionEvent.getX() - this.downX;
                float y = motionEvent.getY() - this.downY;
                if (!this.dragging && Math.abs(x) > this.touchSlop && Math.abs(x) > Math.abs(y)) {
                    this.dragging = true;
                    getParent().requestDisallowInterceptTouchEvent(true);
                    this.offsetSpring.cancel();
                    this.dragStartOffset = this.offset;
                    this.downX = motionEvent.getX();
                }
                if (this.dragging) {
                    setDragOffset((this.dragStartOffset + motionEvent.getX()) - this.downX);
                    VelocityTracker velocityTracker2 = this.velocityTracker;
                    if (velocityTracker2 != null) {
                        velocityTracker2.computeCurrentVelocity(1000);
                        setSwipeTiltVelocity(this.velocityTracker.getXVelocity());
                    }
                    removeCallbacks(this.settleTilt);
                    postDelayed(this.settleTilt, 60L);
                }
                return true;
            }
            if (actionMasked != 3) {
                return super.onTouchEvent(motionEvent);
            }
        }
        if (!this.tracking) {
            return false;
        }
        this.tracking = false;
        removeCallbacks(this.settleTilt);
        if (this.dragging) {
            this.dragging = false;
            getParent().requestDisallowInterceptTouchEvent(false);
            VelocityTracker velocityTracker3 = this.velocityTracker;
            if (velocityTracker3 != null) {
                velocityTracker3.addMovement(motionEvent);
                this.velocityTracker.computeCurrentVelocity(1000);
                xVelocity = this.velocityTracker.getXVelocity();
            } else {
                xVelocity = 0.0f;
            }
            finishDrag(xVelocity, motionEvent.getActionMasked() == 3);
        }
        recycleVelocityTracker();
        return true;
    }
}
