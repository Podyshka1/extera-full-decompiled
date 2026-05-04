package org.telegram.p029ui.Stars;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import java.util.ArrayList;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Cells.BaseCell;
import org.telegram.p029ui.Cells.ChatActionCell;
import org.telegram.p029ui.Cells.ChatMessageCell;
import org.telegram.p029ui.ChatActivity;
import org.telegram.p029ui.Components.AnimatedFloat;
import org.telegram.p029ui.Components.AnimatedTextView;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.RLottieDrawable;
import org.telegram.p029ui.Components.Reactions.ReactionsLayoutInBubble;
import org.telegram.p029ui.GradientClip;
import org.telegram.p029ui.LaunchActivity;
import org.telegram.p029ui.Stars.StarsIntroActivity;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes7.dex */
public class StarReactionsOverlay extends View {
    private float accumulatedRippleIntensity;
    private BaseCell cell;
    private final ChatActivity chatActivity;
    private final RectF clickBounds;
    private final GradientClip clip;
    private final AnimatedTextView.AnimatedTextDrawable counter;
    private final AnimatedFloat counterAlpha;
    private boolean counterShown;
    private final int[] effectAssets;
    private final ArrayList effects;
    private float focus;
    private ValueAnimator focusAnimator;
    public boolean hidden;
    private Runnable hideCounterRunnable;
    private long lastRippleTime;
    private final Runnable longPressRunnable;
    private int messageId;
    private final int[] pos;
    private final int[] pos2;
    private boolean pressed;
    private final RectF reactionBounds;
    private final Paint redPaint;
    private final Paint shadowPaint;

    public StarReactionsOverlay(final ChatActivity chatActivity) {
        super(chatActivity.getContext());
        this.pos = new int[2];
        this.pos2 = new int[2];
        this.reactionBounds = new RectF();
        this.clickBounds = new RectF();
        this.shadowPaint = new Paint();
        this.redPaint = new Paint();
        this.counterAlpha = new AnimatedFloat(this, 0L, 420L, CubicBezierInterpolator.EASE_OUT_QUINT);
        AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = new AnimatedTextView.AnimatedTextDrawable();
        this.counter = animatedTextDrawable;
        this.clip = new GradientClip();
        this.effects = new ArrayList();
        this.effectAssets = new int[]{C2888R.raw.star_reaction_effect1, C2888R.raw.star_reaction_effect2, C2888R.raw.star_reaction_effect3, C2888R.raw.star_reaction_effect4, C2888R.raw.star_reaction_effect5};
        this.chatActivity = chatActivity;
        animatedTextDrawable.setCallback(this);
        animatedTextDrawable.setHacks(false, true, true);
        animatedTextDrawable.setTextSize(AndroidUtilities.m1124dp(40.0f));
        animatedTextDrawable.setTypeface(AndroidUtilities.getTypeface("fonts/num.otf"));
        animatedTextDrawable.setShadowLayer(AndroidUtilities.m1124dp(12.0f), 0.0f, AndroidUtilities.m1124dp(3.5f), 0);
        animatedTextDrawable.setOverrideFullWidth(AndroidUtilities.displaySize.x);
        animatedTextDrawable.setTextColor(-1);
        animatedTextDrawable.setGravity(17);
        this.hideCounterRunnable = new Runnable() { // from class: org.telegram.ui.Stars.StarReactionsOverlay$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$0();
            }
        };
        this.longPressRunnable = new Runnable() { // from class: org.telegram.ui.Stars.StarReactionsOverlay$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$1(chatActivity);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        this.counterShown = false;
        invalidate();
        checkBalance();
        hide();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(ChatActivity chatActivity) {
        MessageObject messageObject;
        TLRPC.TL_messageReactions tL_messageReactions;
        TLRPC.TL_messageReactions tL_messageReactions2;
        BaseCell baseCell = this.cell;
        if (baseCell == null) {
            return;
        }
        try {
            baseCell.performHapticFeedback(0);
        } catch (Exception unused) {
        }
        onTouchEvent(MotionEvent.obtain(0L, 0L, 3, 0.0f, 0.0f, 0));
        BaseCell baseCell2 = this.cell;
        ArrayList arrayList = null;
        if (baseCell2 instanceof ChatMessageCell) {
            messageObject = ((ChatMessageCell) baseCell2).getPrimaryMessageObject();
            if (messageObject == null) {
                return;
            }
            TLRPC.Message message = messageObject.messageOwner;
            if (message != null && (tL_messageReactions2 = message.reactions) != null) {
                arrayList = tL_messageReactions2.top_reactors;
            }
        } else {
            if (!(baseCell2 instanceof ChatActionCell) || (messageObject = ((ChatActionCell) baseCell2).getMessageObject()) == null) {
                return;
            }
            TLRPC.Message message2 = messageObject.messageOwner;
            if (message2 != null && (tL_messageReactions = message2.reactions) != null) {
                arrayList = tL_messageReactions.top_reactors;
            }
        }
        MessageObject messageObject2 = messageObject;
        ArrayList arrayList2 = arrayList;
        StarsController.getInstance(messageObject2.currentAccount).commitPaidReaction();
        TLRPC.ChatFull currentChatInfo = chatActivity.getCurrentChatInfo();
        StarsReactionsSheet starsReactionsSheet = new StarsReactionsSheet(getContext(), chatActivity.getCurrentAccount(), chatActivity.getDialogId(), chatActivity, messageObject2, arrayList2, currentChatInfo == null || currentChatInfo.paid_reactions_available, false, 0L, chatActivity.getResourceProvider());
        starsReactionsSheet.setMessageCell(chatActivity, messageObject2.getId(), this.cell);
        starsReactionsSheet.show();
    }

    private MessageObject getMessageObject() {
        BaseCell baseCell = this.cell;
        if (baseCell instanceof ChatMessageCell) {
            return ((ChatMessageCell) baseCell).getPrimaryMessageObject();
        }
        if (baseCell instanceof ChatActionCell) {
            return ((ChatActionCell) baseCell).getMessageObject();
        }
        return null;
    }

    private void checkBalance() {
        String forcedFirstName;
        if (getMessageObject() != null) {
            final MessageObject messageObject = getMessageObject();
            final StarsController starsController = StarsController.getInstance(this.chatActivity.getCurrentAccount());
            final long pendingPaidReactions = starsController.getPendingPaidReactions(messageObject);
            if (!starsController.balanceAvailable() || starsController.getBalance(false) >= pendingPaidReactions) {
                return;
            }
            StarsController.getInstance(this.chatActivity.getCurrentAccount()).undoPaidReaction();
            long dialogId = this.chatActivity.getDialogId();
            if (dialogId >= 0) {
                forcedFirstName = UserObject.getForcedFirstName(this.chatActivity.getMessagesController().getUser(Long.valueOf(dialogId)));
            } else {
                TLRPC.Chat chat = this.chatActivity.getMessagesController().getChat(Long.valueOf(-dialogId));
                forcedFirstName = chat == null ? _UrlKt.FRAGMENT_ENCODE_SET : chat.title;
            }
            new StarsIntroActivity.StarsNeededSheet(this.chatActivity.getContext(), this.chatActivity.getResourceProvider(), pendingPaidReactions, 5, forcedFirstName, new Runnable() { // from class: org.telegram.ui.Stars.StarReactionsOverlay$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$checkBalance$2(starsController, messageObject, pendingPaidReactions);
                }
            }, 0L).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkBalance$2(StarsController starsController, MessageObject messageObject, long j) {
        starsController.sendPaidReaction(messageObject, this.chatActivity, j, true, true, null);
    }

    public void setMessageCell(BaseCell baseCell) {
        BaseCell baseCell2 = this.cell;
        if (baseCell2 == baseCell) {
            return;
        }
        if (baseCell2 instanceof ChatMessageCell) {
            ((ChatMessageCell) baseCell2).setScrimReaction(null);
            ((ChatMessageCell) this.cell).setInvalidateListener(null);
            this.cell.invalidate();
        } else if (baseCell2 instanceof ChatActionCell) {
            ((ChatActionCell) baseCell2).setScrimReaction(null);
            ((ChatActionCell) this.cell).setInvalidateListener(null);
            this.cell.invalidate();
        }
        this.cell = baseCell;
        this.messageId = getMessageObject() == null ? 0 : getMessageObject().getId();
        BaseCell baseCell3 = this.cell;
        if (baseCell3 instanceof ChatMessageCell) {
            baseCell3.invalidate();
            ((ChatMessageCell) this.cell).setInvalidateListener(new Runnable() { // from class: org.telegram.ui.Stars.StarReactionsOverlay$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.invalidate();
                }
            });
        } else if (baseCell3 instanceof ChatActionCell) {
            baseCell3.invalidate();
            ((ChatActionCell) this.cell).setInvalidateListener(new Runnable() { // from class: org.telegram.ui.Stars.StarReactionsOverlay$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.invalidate();
                }
            });
        }
        invalidate();
    }

    @Override // android.view.View
    protected void dispatchDraw(Canvas canvas) {
        int i;
        float f;
        Integer numValueOf;
        BaseCell baseCell = this.cell;
        if (baseCell instanceof ChatMessageCell) {
            if (!((ChatMessageCell) baseCell).isCellAttachedToWindow()) {
                return;
            }
        } else if ((baseCell instanceof ChatActionCell) && !((ChatActionCell) baseCell).isCellAttachedToWindow()) {
            return;
        }
        MessageObject messageObject = getMessageObject();
        if ((messageObject != null ? messageObject.getId() : 0) != this.messageId) {
            setMessageCell(null);
            return;
        }
        ReactionsLayoutInBubble reactionsLayoutInBubble = getReactionsLayoutInBubble();
        if (reactionsLayoutInBubble == null) {
            setMessageCell(null);
            return;
        }
        float fLerp = AndroidUtilities.lerp(1.0f, 1.8f, this.focus);
        float clipTop = this.chatActivity.getClipTop();
        float clipBottom = this.chatActivity.getClipBottom();
        canvas.save();
        canvas.clipRect(0.0f, clipTop * (1.0f - this.focus), getWidth(), getHeight() - (clipBottom * (1.0f - this.focus)));
        getLocationInWindow(this.pos2);
        this.cell.getLocationInWindow(this.pos);
        int[] iArr = this.pos;
        iArr[1] = iArr[1] + ((int) this.chatActivity.drawingChatListViewYoffset);
        canvas.save();
        ReactionsLayoutInBubble.ReactionButton reactionButton = reactionsLayoutInBubble.getReactionButton("stars");
        if (reactionButton != null) {
            int[] iArr2 = this.pos;
            int i2 = iArr2[0];
            int[] iArr3 = this.pos2;
            int i3 = (i2 - iArr3[0]) + reactionsLayoutInBubble.f2053x + reactionButton.f2055x;
            int i4 = (iArr2[1] - iArr3[1]) + reactionsLayoutInBubble.f2054y + reactionButton.f2056y;
            float f2 = i3;
            float f3 = i4;
            f = 12.0f;
            this.reactionBounds.set(f2, f3, i3 + reactionButton.width, i4 + reactionButton.height);
            AndroidUtilities.scaleRect(this.reactionBounds, fLerp, (reactionButton.width * 0.1f) + f2, (reactionButton.height / 2.0f) + f3);
            this.shadowPaint.setColor(0);
            i = 0;
            this.shadowPaint.setShadowLayer(AndroidUtilities.m1124dp(12.0f), 0.0f, AndroidUtilities.m1124dp(3.0f), Theme.multAlpha(1426063360, this.focus));
            RectF rectF = this.reactionBounds;
            canvas.drawRoundRect(rectF, rectF.height() / 2.0f, this.reactionBounds.height() / 2.0f, this.shadowPaint);
            canvas.scale(fLerp, fLerp, f2 + (reactionButton.width * 0.1f), f3 + (reactionButton.height / 2.0f));
            numValueOf = Integer.valueOf(reactionButton.reaction.hashCode());
        } else {
            i = 0;
            f = 12.0f;
            numValueOf = null;
        }
        int i5 = this.pos[i];
        int[] iArr4 = this.pos2;
        canvas.translate(i5 - iArr4[i], (r3[1] - iArr4[1]) + this.cell.getPaddingTop());
        BaseCell baseCell2 = this.cell;
        if (baseCell2 instanceof ChatMessageCell) {
            ChatMessageCell chatMessageCell = (ChatMessageCell) baseCell2;
            chatMessageCell.setScrimReaction(null);
            chatMessageCell.drawReactionsLayout(canvas, 1.0f, numValueOf);
            chatMessageCell.drawReactionsLayoutOverlay(canvas, 1.0f);
            chatMessageCell.setScrimReaction(numValueOf);
        } else if (baseCell2 instanceof ChatActionCell) {
            ChatActionCell chatActionCell = (ChatActionCell) baseCell2;
            chatActionCell.setScrimReaction(null);
            chatActionCell.drawReactionsLayout(canvas, true, numValueOf);
            chatActionCell.drawReactionsLayoutOverlay(canvas, true);
            chatActionCell.setScrimReaction(numValueOf);
        }
        canvas.restore();
        canvas.restore();
        if (reactionButton != null) {
            this.clickBounds.set(this.reactionBounds);
            this.clickBounds.inset(-AndroidUtilities.m1124dp(42.0f), -AndroidUtilities.m1124dp(42.0f));
            int iM1124dp = (int) (AndroidUtilities.m1124dp(90.0f) * fLerp);
            int i6 = i;
            while (i6 < this.effects.size()) {
                RLottieDrawable rLottieDrawable = (RLottieDrawable) this.effects.get(i6);
                if (rLottieDrawable.getCurrentFrame() >= rLottieDrawable.getFramesCount()) {
                    this.effects.remove(i6);
                    i6--;
                } else {
                    float f4 = iM1124dp / 2.0f;
                    rLottieDrawable.setBounds((int) ((this.reactionBounds.left + (AndroidUtilities.m1124dp(15.0f) * fLerp)) - f4), (int) (this.reactionBounds.centerY() - f4), (int) (this.reactionBounds.left + (AndroidUtilities.m1124dp(15.0f) * fLerp) + f4), (int) (this.reactionBounds.centerY() + f4));
                    rLottieDrawable.setAlpha((int) (this.focus * 255.0f));
                    rLottieDrawable.draw(canvas);
                }
                i6++;
            }
            float fCenterX = this.reactionBounds.centerX();
            float fM1124dp = this.reactionBounds.top - AndroidUtilities.m1124dp(36.0f);
            canvas.save();
            float f5 = this.counterAlpha.set(this.counterShown);
            canvas.translate(0.0f, (this.counterShown ? AndroidUtilities.m1124dp(60.0f) : -AndroidUtilities.m1124dp(30.0f)) * (1.0f - f5));
            float fLerp2 = AndroidUtilities.lerp(this.counterShown ? 1.8f : 1.3f, 1.0f, f5);
            canvas.scale(fLerp2, fLerp2, fCenterX, fM1124dp);
            this.counter.setAlpha((int) (255.0f * f5));
            this.counter.setShadowLayer(AndroidUtilities.m1124dp(f), 0.0f, AndroidUtilities.m1124dp(3.5f), Theme.multAlpha(-1442840576, f5));
            this.counter.setBounds(fCenterX - AndroidUtilities.m1124dp(100.0f), this.reactionBounds.top - AndroidUtilities.m1124dp(48.0f), fCenterX + AndroidUtilities.m1124dp(100.0f), this.reactionBounds.top - AndroidUtilities.m1124dp(24.0f));
            this.counter.draw(canvas);
            canvas.restore();
        }
        if (!this.counterShown) {
            checkBalance();
        }
        invalidate();
    }

    public ReactionsLayoutInBubble getReactionsLayoutInBubble() {
        BaseCell baseCell = this.cell;
        if (baseCell instanceof ChatMessageCell) {
            return ((ChatMessageCell) baseCell).reactionsLayoutInBubble;
        }
        if (baseCell instanceof ChatActionCell) {
            return ((ChatActionCell) baseCell).reactionsLayoutInBubble;
        }
        return null;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        ReactionsLayoutInBubble reactionsLayoutInBubble;
        if (this.cell == null || this.hidden || (reactionsLayoutInBubble = getReactionsLayoutInBubble()) == null) {
            return false;
        }
        if (motionEvent.getAction() == 0) {
            if (this.clickBounds.contains(motionEvent.getX(), motionEvent.getY())) {
                this.pressed = true;
                ReactionsLayoutInBubble.ReactionButton reactionButton = reactionsLayoutInBubble.getReactionButton("stars");
                if (reactionButton != null) {
                    reactionButton.bounce.setPressed(true);
                }
                AndroidUtilities.cancelRunOnUIThread(this.longPressRunnable);
                AndroidUtilities.runOnUIThread(this.longPressRunnable, ViewConfiguration.getLongPressTimeout());
            }
        } else if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
            ReactionsLayoutInBubble.ReactionButton reactionButton2 = reactionsLayoutInBubble.getReactionButton("stars");
            if (motionEvent.getAction() == 1) {
                tap(motionEvent.getX(), motionEvent.getY(), true, true);
            }
            if (reactionButton2 != null) {
                reactionButton2.bounce.setPressed(false);
            }
            this.pressed = false;
            AndroidUtilities.cancelRunOnUIThread(this.longPressRunnable);
        }
        return this.pressed;
    }

    public void focusTo(final float f, final Runnable runnable) {
        ValueAnimator valueAnimator = this.focusAnimator;
        if (valueAnimator != null) {
            this.focusAnimator = null;
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.focus, f);
        this.focusAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stars.StarReactionsOverlay$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f$0.lambda$focusTo$3(valueAnimator2);
            }
        });
        this.focusAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stars.StarReactionsOverlay.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                Runnable runnable2;
                StarReactionsOverlay.this.focus = f;
                StarReactionsOverlay.this.invalidate();
                if (animator != StarReactionsOverlay.this.focusAnimator || (runnable2 = runnable) == null) {
                    return;
                }
                runnable2.run();
            }
        });
        this.focusAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        this.focusAnimator.setDuration(320L);
        this.focusAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$focusTo$3(ValueAnimator valueAnimator) {
        this.focus = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    public void tap(float f, float f2, boolean z, boolean z2) {
        if (this.cell == null || this.hidden) {
            return;
        }
        MessageObject messageObject = getMessageObject();
        ReactionsLayoutInBubble reactionsLayoutInBubble = getReactionsLayoutInBubble();
        if (messageObject == null || reactionsLayoutInBubble == null) {
            return;
        }
        StarsController starsController = StarsController.getInstance(this.chatActivity.getCurrentAccount());
        playEffect();
        ReactionsLayoutInBubble.ReactionButton reactionButton = reactionsLayoutInBubble.getReactionButton("stars");
        if (reactionButton != null) {
            reactionButton.startAnimation();
        }
        if (z) {
            try {
                performHapticFeedback(3, 1);
            } catch (Exception unused) {
            }
            StarsController.getInstance(this.chatActivity.getCurrentAccount()).sendPaidReaction(messageObject, this.chatActivity, 1L, true, false, null);
        }
        this.counter.cancelAnimation();
        this.counter.setText("+" + starsController.getPendingPaidReactions(messageObject));
        this.counterShown = true;
        AndroidUtilities.cancelRunOnUIThread(this.hideCounterRunnable);
        AndroidUtilities.runOnUIThread(this.hideCounterRunnable, 1500L);
        if (z2) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - this.lastRippleTime < 100) {
                this.accumulatedRippleIntensity += 0.5f;
                return;
            }
            this.accumulatedRippleIntensity *= Utilities.clamp(1.0f - (((jCurrentTimeMillis - r1) - 100) / 200.0f), 1.0f, 0.0f);
            if (getMeasuredWidth() == 0 && this.chatActivity.getLayoutContainer() != null) {
                this.chatActivity.getLayoutContainer().getLocationInWindow(this.pos2);
            } else {
                getLocationInWindow(this.pos2);
            }
            int[] iArr = this.pos2;
            LaunchActivity.makeRipple(iArr[0] + f, iArr[1] + f2, Utilities.clamp(this.accumulatedRippleIntensity, 0.9f, 0.3f));
            this.accumulatedRippleIntensity = 0.0f;
            this.lastRippleTime = jCurrentTimeMillis;
        }
    }

    public void hide() {
        this.hidden = true;
        AndroidUtilities.cancelRunOnUIThread(this.hideCounterRunnable);
        this.counter.setText(_UrlKt.FRAGMENT_ENCODE_SET);
        this.counterShown = false;
        invalidate();
        focusTo(0.0f, new Runnable() { // from class: org.telegram.ui.Stars.StarReactionsOverlay$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$hide$4();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$hide$4() {
        setMessageCell(null);
        clearEffects();
    }

    public boolean isShowing(MessageObject messageObject) {
        return messageObject != null && messageObject.getId() == this.messageId;
    }

    public void show() {
        this.hidden = false;
        focusTo(1.0f, null);
    }

    public void playEffect() {
        while (this.effects.size() > 4) {
            ((RLottieDrawable) this.effects.remove(0)).recycle(true);
        }
        int[] iArr = this.effectAssets;
        int i = iArr[Utilities.fastRandom.nextInt(iArr.length)];
        RLottieDrawable rLottieDrawable = new RLottieDrawable(i, _UrlKt.FRAGMENT_ENCODE_SET + i, AndroidUtilities.m1124dp(70.0f), AndroidUtilities.m1124dp(70.0f));
        rLottieDrawable.setMasterParent(this);
        rLottieDrawable.setAllowDecodeSingleFrame(true);
        rLottieDrawable.setAutoRepeat(0);
        rLottieDrawable.start();
        this.effects.add(rLottieDrawable);
        invalidate();
    }

    public void clearEffects() {
        ArrayList arrayList = this.effects;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            ((RLottieDrawable) obj).recycle(true);
        }
        this.effects.clear();
    }
}
