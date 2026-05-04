package org.telegram.p029ui.Components.chat.layouts;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import me.vkryl.android.AnimatorUtils;
import me.vkryl.android.animator.BoolAnimator;
import me.vkryl.android.animator.FactorAnimator;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.ScaleStateListAnimator;
import org.telegram.p029ui.Components.blur3.BlurredBackgroundDrawableViewFactory;
import org.telegram.p029ui.Components.blur3.drawable.color.BlurredBackgroundColorProvider;
import org.telegram.p029ui.Components.chat.buttons.ChatActivityBlurredRoundButton;

/* JADX INFO: loaded from: classes3.dex */
public class ChatActivityActionsButtonsLayout extends LinearLayout {
    private final ButtonHolder forwardButton;
    private final ButtonHolder replyButton;
    private final Theme.ResourcesProvider resourcesProvider;
    private final ButtonHolder selectButton;
    private float totalVisibilityFactor;

    /* JADX INFO: renamed from: $r8$lambda$93jBtX9Pu1-HgVxuSin9Qptiq48, reason: not valid java name */
    public static /* synthetic */ void m13210$r8$lambda$93jBtX9Pu1HgVxuSin9Qptiq48(View view) {
    }

    public static /* synthetic */ void $r8$lambda$OWO67Z7oaPucPZ7e7VDOmXkKf18(View view) {
    }

    /* JADX INFO: renamed from: $r8$lambda$hGVe-BG6LPQS6sq_s-AAeOPhOqg, reason: not valid java name */
    public static /* synthetic */ void m13211$r8$lambda$hGVeBG6LPQS6sq_sAAeOPhOqg(View view) {
    }

    public ChatActivityActionsButtonsLayout(Context context, Theme.ResourcesProvider resourcesProvider, BlurredBackgroundColorProvider blurredBackgroundColorProvider, BlurredBackgroundDrawableViewFactory blurredBackgroundDrawableViewFactory) {
        super(context);
        ButtonHolder buttonHolder = new ButtonHolder();
        this.replyButton = buttonHolder;
        ButtonHolder buttonHolder2 = new ButtonHolder();
        this.forwardButton = buttonHolder2;
        ButtonHolder buttonHolder3 = new ButtonHolder();
        this.selectButton = buttonHolder3;
        this.resourcesProvider = resourcesProvider;
        ChatActivityBlurredRoundButton chatActivityBlurredRoundButtonCreate = ChatActivityBlurredRoundButton.create(context, blurredBackgroundDrawableViewFactory, blurredBackgroundColorProvider, resourcesProvider);
        buttonHolder.button = chatActivityBlurredRoundButtonCreate;
        chatActivityBlurredRoundButtonCreate.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.chat.layouts.ChatActivityActionsButtonsLayout$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChatActivityActionsButtonsLayout.m13210$r8$lambda$93jBtX9Pu1HgVxuSin9Qptiq48(view);
            }
        });
        ScaleStateListAnimator.apply(buttonHolder.button, 0.065f, 2.0f);
        ChatActivityBlurredRoundButton chatActivityBlurredRoundButtonCreate2 = ChatActivityBlurredRoundButton.create(context, blurredBackgroundDrawableViewFactory, blurredBackgroundColorProvider, resourcesProvider);
        buttonHolder2.button = chatActivityBlurredRoundButtonCreate2;
        chatActivityBlurredRoundButtonCreate2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.chat.layouts.ChatActivityActionsButtonsLayout$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChatActivityActionsButtonsLayout.m13211$r8$lambda$hGVeBG6LPQS6sq_sAAeOPhOqg(view);
            }
        });
        ScaleStateListAnimator.apply(buttonHolder2.button, 0.065f, 2.0f);
        ChatActivityBlurredRoundButton chatActivityBlurredRoundButtonCreate3 = ChatActivityBlurredRoundButton.create(context, blurredBackgroundDrawableViewFactory, blurredBackgroundColorProvider, resourcesProvider);
        buttonHolder3.button = chatActivityBlurredRoundButtonCreate3;
        chatActivityBlurredRoundButtonCreate3.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.chat.layouts.ChatActivityActionsButtonsLayout$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChatActivityActionsButtonsLayout.$r8$lambda$OWO67Z7oaPucPZ7e7VDOmXkKf18(view);
            }
        });
        ScaleStateListAnimator.apply(buttonHolder3.button, 0.065f, 2.0f);
        buttonHolder3.button.setVisibility(4);
        buttonHolder3.button.setAlpha(0.0f);
        addTextView(buttonHolder, LocaleController.getString(C2888R.string.Reply), C2888R.drawable.input_reply, false);
        addTextView(buttonHolder2, LocaleController.getString(C2888R.string.Forward), C2888R.drawable.input_forward, true);
        addTextView(buttonHolder3, LocaleController.getString(C2888R.string.Select), C2888R.drawable.select_between, false);
        setOrientation(0);
        setClipChildren(false);
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setClipChildren(false);
        frameLayout.addView(buttonHolder.button, LayoutHelper.createFrame(-1, -1.0f));
        frameLayout.addView(buttonHolder3.button, LayoutHelper.createFrame(-1, -1.0f));
        addView(frameLayout, LayoutHelper.createLinear(0, 56, 1.0f, 1, 0, -1, 0));
        addView(buttonHolder2.button, LayoutHelper.createLinear(0, 56, 1.0f, -1, 0, 1, 0));
    }

    public void setReplyButtonOnClickListener(View.OnClickListener onClickListener) {
        this.replyButton.button.setOnClickListener(onClickListener);
    }

    public void setForwardButtonOnClickListener(View.OnClickListener onClickListener) {
        this.forwardButton.button.setOnClickListener(onClickListener);
    }

    public void setForwardButtonOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.forwardButton.button.setOnLongClickListener(onLongClickListener);
    }

    public void setSelectButtonOnClickListener(View.OnClickListener onClickListener) {
        this.selectButton.button.setOnClickListener(onClickListener);
    }

    public View getForwardButton() {
        return this.forwardButton.button;
    }

    private void addTextView(ButtonHolder buttonHolder, String str, int i, boolean z) {
        TextView textView = new TextView(getContext());
        textView.setText(str);
        textView.setGravity(16);
        textView.setTextSize(1, 15.0f);
        textView.setPadding(AndroidUtilities.m1124dp(21.0f), 0, AndroidUtilities.m1124dp(21.0f), 0);
        textView.setCompoundDrawablePadding(AndroidUtilities.m1124dp(6.0f));
        textView.setTextColor(Theme.getColor(Theme.key_glass_defaultText, this.resourcesProvider));
        textView.setTypeface(AndroidUtilities.bold());
        Drawable drawableMutate = getContext().getResources().getDrawable(i).mutate();
        drawableMutate.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_glass_defaultIcon, this.resourcesProvider), PorterDuff.Mode.MULTIPLY));
        Drawable drawable = z ? drawableMutate : null;
        if (z) {
            drawableMutate = null;
        }
        textView.setCompoundDrawablesWithIntrinsicBounds(drawable, (Drawable) null, drawableMutate, (Drawable) null);
        buttonHolder.textView = textView;
        buttonHolder.button.addView(textView, LayoutHelper.createFrame(-2, -2, 17));
    }

    public void showReplyButton(boolean z, boolean z2) {
        this.replyButton.visibilityAnimator.setValue(z, z2);
    }

    public void showSelectButton(boolean z, boolean z2) {
        this.selectButton.visibilityAnimator.setValue(z, z2);
    }

    public void setForwardButtonEnabled(boolean z, boolean z2) {
        this.forwardButton.enabledAnimator.setValue(z, z2);
        this.forwardButton.button.setEnabled(z);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        checkButtonsPositionsAndVisibility();
    }

    public void setTotalVisibilityFactor(float f) {
        if (this.totalVisibilityFactor != f) {
            this.totalVisibilityFactor = f;
            checkButtonsPositionsAndVisibility();
        }
    }

    private void checkButtonsPositionsAndVisibility() {
        checkHolderPositionsAndVisibility(this.forwardButton);
        checkHolderPositionsAndVisibility(this.replyButton);
        checkHolderPositionsAndVisibility(this.selectButton);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkHolderPositionsAndVisibility(ButtonHolder buttonHolder) {
        float floatValue = this.totalVisibilityFactor * buttonHolder.visibilityAnimator.getFloatValue();
        float fM1124dp = AndroidUtilities.m1124dp(54.0f) * (1.0f - floatValue);
        float measuredWidth = (getMeasuredWidth() / 2.0f) * (1.0f - AnimatorUtils.DECELERATE_INTERPOLATOR.getInterpolation(floatValue));
        if (buttonHolder == this.replyButton || buttonHolder == this.selectButton) {
            measuredWidth *= -1.0f;
        }
        buttonHolder.button.setTranslationX(measuredWidth);
        buttonHolder.button.setTranslationY(fM1124dp);
        buttonHolder.button.setAlpha(floatValue);
        if (floatValue <= 0.05f) {
            buttonHolder.button.setVisibility(4);
        } else {
            buttonHolder.button.setVisibility(0);
        }
    }

    private class ButtonHolder implements FactorAnimator.Target {
        public ChatActivityBlurredRoundButton button;
        public BoolAnimator enabledAnimator;
        public TextView textView;
        public BoolAnimator visibilityAnimator;

        @Override // me.vkryl.android.animator.FactorAnimator.Target
        public /* synthetic */ void onFactorChangeFinished(int i, float f, FactorAnimator factorAnimator) {
            FactorAnimator.Target.CC.$default$onFactorChangeFinished(this, i, f, factorAnimator);
        }

        private ButtonHolder() {
            CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
            this.visibilityAnimator = new BoolAnimator(0, this, cubicBezierInterpolator, 350L, true);
            this.enabledAnimator = new BoolAnimator(1, this, cubicBezierInterpolator, 350L, true);
        }

        @Override // me.vkryl.android.animator.FactorAnimator.Target
        public void onFactorChanged(int i, float f, float f2, FactorAnimator factorAnimator) {
            this.textView.setAlpha(AndroidUtilities.lerp(0.5f, 1.0f, this.enabledAnimator.getFloatValue()));
            ChatActivityActionsButtonsLayout.this.checkHolderPositionsAndVisibility(this);
        }
    }
}
