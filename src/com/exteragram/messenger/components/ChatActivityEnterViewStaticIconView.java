package com.exteragram.messenger.components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.util.Property;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.ChatActivityEnterView;
import org.telegram.p029ui.Components.LayoutHelper;

/* JADX INFO: loaded from: classes.dex */
public class ChatActivityEnterViewStaticIconView extends FrameLayout {
    private final ImageView[] buttonViews;
    private AnimatorSet buttonsAnimation;
    private State currentState;
    private final int sizeDp;

    public ChatActivityEnterViewStaticIconView(Context context, ChatActivityEnterView chatActivityEnterView) {
        this(context, chatActivityEnterView, 32);
    }

    public ChatActivityEnterViewStaticIconView(Context context, ChatActivityEnterView chatActivityEnterView, int i) {
        super(context);
        this.buttonViews = new ImageView[2];
        setWillNotDraw(false);
        this.sizeDp = i;
        for (int i2 = 0; i2 < 2; i2++) {
            this.buttonViews[i2] = new ImageView(context);
            this.buttonViews[i2].setColorFilter(new PorterDuffColorFilter(chatActivityEnterView.getThemedColor(Theme.key_chat_messagePanelIcons), PorterDuff.Mode.MULTIPLY));
            this.buttonViews[i2].setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            addView(this.buttonViews[i2], LayoutHelper.createFrame(i, i, 17));
        }
        this.buttonViews[0].setVisibility(0);
        this.buttonViews[1].setVisibility(8);
        this.buttonViews[1].setScaleX(0.1f);
        this.buttonViews[1].setScaleY(0.1f);
    }

    public void setColorFilter(ColorFilter colorFilter) {
        this.buttonViews[0].setColorFilter(colorFilter);
        this.buttonViews[1].setColorFilter(colorFilter);
    }

    public State getCurrentState() {
        return this.currentState;
    }

    public void setState(State state, boolean z) {
        if (z && state == this.currentState) {
            return;
        }
        State state2 = this.currentState;
        this.currentState = state;
        if (!z || state2 == null) {
            AnimatorSet animatorSet = this.buttonsAnimation;
            if (animatorSet != null) {
                animatorSet.cancel();
                this.buttonsAnimation = null;
            }
            this.buttonViews[0].setImageResource(this.currentState.resource);
            this.buttonViews[0].setAlpha(1.0f);
            this.buttonViews[0].setScaleX(1.0f);
            this.buttonViews[0].setScaleY(1.0f);
            this.buttonViews[0].setVisibility(0);
            this.buttonViews[1].setVisibility(8);
        } else {
            AnimatorSet animatorSet2 = this.buttonsAnimation;
            if (animatorSet2 != null) {
                animatorSet2.cancel();
            }
            this.buttonViews[1].setVisibility(0);
            this.buttonViews[1].setImageResource(this.currentState.resource);
            this.buttonViews[0].setAlpha(1.0f);
            this.buttonViews[0].setScaleX(1.0f);
            this.buttonViews[0].setScaleY(1.0f);
            this.buttonViews[1].setAlpha(0.0f);
            this.buttonViews[1].setScaleX(0.1f);
            this.buttonViews[1].setScaleY(0.1f);
            AnimatorSet animatorSet3 = new AnimatorSet();
            this.buttonsAnimation = animatorSet3;
            Property property = View.SCALE_X;
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.buttonViews[0], (Property<ImageView, Float>) property, 0.1f);
            Property property2 = View.SCALE_Y;
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.buttonViews[0], (Property<ImageView, Float>) property2, 0.1f);
            Property property3 = View.ALPHA;
            animatorSet3.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2, ObjectAnimator.ofFloat(this.buttonViews[0], (Property<ImageView, Float>) property3, 0.0f), ObjectAnimator.ofFloat(this.buttonViews[1], (Property<ImageView, Float>) property, 1.0f), ObjectAnimator.ofFloat(this.buttonViews[1], (Property<ImageView, Float>) property2, 1.0f), ObjectAnimator.ofFloat(this.buttonViews[1], (Property<ImageView, Float>) property3, 1.0f));
            this.buttonsAnimation.addListener(new AnimatorListenerAdapter() { // from class: com.exteragram.messenger.components.ChatActivityEnterViewStaticIconView.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (animator.equals(ChatActivityEnterViewStaticIconView.this.buttonsAnimation)) {
                        ChatActivityEnterViewStaticIconView.this.buttonsAnimation = null;
                        ImageView imageView = ChatActivityEnterViewStaticIconView.this.buttonViews[1];
                        ChatActivityEnterViewStaticIconView.this.buttonViews[1] = ChatActivityEnterViewStaticIconView.this.buttonViews[0];
                        ChatActivityEnterViewStaticIconView.this.buttonViews[0] = imageView;
                        ChatActivityEnterViewStaticIconView.this.buttonViews[1].setVisibility(4);
                        ChatActivityEnterViewStaticIconView.this.buttonViews[1].setAlpha(0.0f);
                        ChatActivityEnterViewStaticIconView.this.buttonViews[1].setScaleX(0.1f);
                        ChatActivityEnterViewStaticIconView.this.buttonViews[1].setScaleY(0.1f);
                    }
                }
            });
            this.buttonsAnimation.setDuration(200L);
            this.buttonsAnimation.start();
        }
        int iOrdinal = state.ordinal();
        if (iOrdinal == 0) {
            setContentDescription(LocaleController.getString(C2888R.string.AccDescrVoiceMessage));
        } else {
            if (iOrdinal != 1) {
                return;
            }
            setContentDescription(LocaleController.getString(C2888R.string.AccDescrVideoMessage));
        }
    }

    public enum State {
        VOICE(C2888R.drawable.input_mic_pressed),
        VIDEO(C2888R.drawable.input_video_pressed),
        STICKER(C2888R.drawable.msg_sticker),
        KEYBOARD(C2888R.drawable.input_keyboard),
        SMILE(C2888R.drawable.input_smile),
        GIF(C2888R.drawable.msg_gif);

        final int resource;

        State(int i) {
            this.resource = i;
        }
    }
}
