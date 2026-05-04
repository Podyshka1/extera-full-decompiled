package org.telegram.p029ui.Cells;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.view.View;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.UserConfig;
import org.telegram.p029ui.Components.AnimatedEmojiDrawable;
import org.telegram.p029ui.Components.Reactions.AnimatedEmojiEffect;
import org.telegram.p029ui.Components.Reactions.ReactionsLayoutInBubble;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes3.dex */
public class AnimatedStatusView extends View {
    private int animationUniq;
    private ArrayList animations;
    private Integer color;
    private int effectsSize;
    private int renderedEffectsSize;
    private int stateSize;

    /* JADX INFO: renamed from: y1 */
    private float f1889y1;

    /* JADX INFO: renamed from: y2 */
    private float f1890y2;

    public AnimatedStatusView(Context context, int i, int i2) {
        super(context);
        this.animations = new ArrayList();
        this.stateSize = i;
        this.effectsSize = i2;
        this.renderedEffectsSize = i2;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(Math.max(this.renderedEffectsSize, Math.max(this.stateSize, this.effectsSize))), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(Math.max(this.renderedEffectsSize, Math.max(this.stateSize, this.effectsSize))), TLObject.FLAG_30));
    }

    public void translate(float f, float f2) {
        setTranslationX(f - (getMeasuredWidth() / 2.0f));
        float measuredHeight = f2 - (getMeasuredHeight() / 2.0f);
        this.f1889y1 = measuredHeight;
        setTranslationY(measuredHeight + this.f1890y2);
    }

    public void translateY2(float f) {
        float f2 = this.f1889y1;
        this.f1890y2 = f;
        setTranslationY(f2 + f);
    }

    @Override // android.view.View
    public void dispatchDraw(Canvas canvas) {
        int iM1124dp = AndroidUtilities.m1124dp(this.renderedEffectsSize);
        int iM1124dp2 = AndroidUtilities.m1124dp(this.effectsSize);
        for (int i = 0; i < this.animations.size(); i++) {
            Object obj = this.animations.get(i);
            if (obj instanceof ImageReceiver) {
                ImageReceiver imageReceiver = (ImageReceiver) obj;
                float f = iM1124dp2;
                imageReceiver.setImageCoords((getMeasuredWidth() - iM1124dp2) / 2.0f, (getMeasuredHeight() - iM1124dp2) / 2.0f, f, f);
                imageReceiver.draw(canvas);
            } else if (obj instanceof AnimatedEmojiEffect) {
                AnimatedEmojiEffect animatedEmojiEffect = (AnimatedEmojiEffect) obj;
                animatedEmojiEffect.setBounds((int) ((getMeasuredWidth() - iM1124dp) / 2.0f), (int) ((getMeasuredHeight() - iM1124dp) / 2.0f), (int) ((getMeasuredWidth() + iM1124dp) / 2.0f), (int) ((getMeasuredHeight() + iM1124dp) / 2.0f));
                animatedEmojiEffect.draw(canvas);
                if (animatedEmojiEffect.isDone()) {
                    animatedEmojiEffect.removeView(this);
                    this.animations.remove(animatedEmojiEffect);
                }
            }
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        detach();
    }

    private void detach() {
        if (!this.animations.isEmpty()) {
            ArrayList arrayList = this.animations;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                if (obj instanceof ImageReceiver) {
                    ((ImageReceiver) obj).onDetachedFromWindow();
                } else if (obj instanceof AnimatedEmojiEffect) {
                    ((AnimatedEmojiEffect) obj).removeView(this);
                }
            }
        }
        this.animations.clear();
    }

    public void animateChange(ReactionsLayoutInBubble.VisibleReaction visibleReaction) {
        TLRPC.TL_availableReaction tL_availableReaction;
        AnimatedEmojiDrawable animatedEmojiDrawableMake;
        String strFindAnimatedEmojiEmoticon;
        if (visibleReaction == null) {
            detach();
            return;
        }
        TLRPC.Document document = null;
        TLRPC.TL_availableReaction tL_availableReaction2 = visibleReaction.emojicon != null ? MediaDataController.getInstance(UserConfig.selectedAccount).getReactionsMap().get(visibleReaction.emojicon) : null;
        if (tL_availableReaction2 == null) {
            TLRPC.Document documentFindDocument = AnimatedEmojiDrawable.findDocument(UserConfig.selectedAccount, visibleReaction.documentId);
            if (documentFindDocument != null && (strFindAnimatedEmojiEmoticon = MessageObject.findAnimatedEmojiEmoticon(documentFindDocument, null)) != null) {
                tL_availableReaction2 = MediaDataController.getInstance(UserConfig.selectedAccount).getReactionsMap().get(strFindAnimatedEmojiEmoticon);
            }
            tL_availableReaction = tL_availableReaction2;
            document = documentFindDocument;
        } else {
            tL_availableReaction = tL_availableReaction2;
        }
        if (document == null && tL_availableReaction != null) {
            ImageReceiver imageReceiver = new ImageReceiver();
            imageReceiver.setParentView(this);
            int i = this.animationUniq;
            this.animationUniq = i + 1;
            imageReceiver.setUniqKeyPrefix(Integer.toString(i));
            imageReceiver.setImage(ImageLocation.getForDocument(tL_availableReaction.around_animation), this.effectsSize + "_" + this.effectsSize + "_nolimit", null, "tgs", tL_availableReaction, 1);
            imageReceiver.setAutoRepeat(0);
            imageReceiver.onAttachedToWindow();
            this.animations.add(imageReceiver);
            invalidate();
            return;
        }
        if (document == null) {
            animatedEmojiDrawableMake = AnimatedEmojiDrawable.make(2, UserConfig.selectedAccount, visibleReaction.documentId);
        } else {
            animatedEmojiDrawableMake = AnimatedEmojiDrawable.make(2, UserConfig.selectedAccount, document);
        }
        if (this.color != null) {
            animatedEmojiDrawableMake.setColorFilter(new PorterDuffColorFilter(this.color.intValue(), PorterDuff.Mode.MULTIPLY));
        }
        AnimatedEmojiEffect animatedEmojiEffectCreateFrom = AnimatedEmojiEffect.createFrom(animatedEmojiDrawableMake, false, !animatedEmojiDrawableMake.canOverrideColor());
        animatedEmojiEffectCreateFrom.setView(this);
        this.animations.add(animatedEmojiEffectCreateFrom);
        invalidate();
    }

    public void setColor(int i) {
        this.color = Integer.valueOf(i);
        PorterDuffColorFilter porterDuffColorFilter = new PorterDuffColorFilter(i, PorterDuff.Mode.MULTIPLY);
        PorterDuffColorFilter porterDuffColorFilter2 = new PorterDuffColorFilter(i, PorterDuff.Mode.SRC_IN);
        for (int i2 = 0; i2 < this.animations.size(); i2++) {
            Object obj = this.animations.get(i2);
            if (obj instanceof ImageReceiver) {
                ((ImageReceiver) obj).setColorFilter(porterDuffColorFilter);
            } else if (obj instanceof AnimatedEmojiEffect) {
                ((AnimatedEmojiEffect) obj).animatedEmojiDrawable.setColorFilter(porterDuffColorFilter2);
            }
        }
    }
}
