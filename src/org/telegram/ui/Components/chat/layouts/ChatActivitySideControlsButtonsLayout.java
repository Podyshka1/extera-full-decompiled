package org.telegram.ui.Components.chat.layouts;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import me.vkryl.android.AnimatorUtils;
import me.vkryl.android.animator.BoolAnimator;
import me.vkryl.android.animator.FactorAnimator;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.LocaleController;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.blur3.BlurredBackgroundDrawableViewFactory;
import org.telegram.ui.Components.blur3.drawable.color.BlurredBackgroundColorProvider;
import org.telegram.ui.Components.chat.buttons.ChatActivityBlurredRoundPageDownButton;

/* JADX INFO: loaded from: classes7.dex */
@SuppressLint({"ViewConstructor"})
public class ChatActivitySideControlsButtonsLayout extends FrameLayout implements FactorAnimator.Target {
    private static final int[] buttonIcons;
    private final BlurredBackgroundDrawableViewFactory blurredBackgroundDrawableViewFactory;
    private final String[] buttonDescriptions;
    private final ButtonHolder[] buttonHolders;
    private final BlurredBackgroundColorProvider colorProvider;
    private int gravity;
    private ButtonOnClickListener onClickListener;
    private ButtonOnLongClickListener onLongClickListener;
    private final ButtonPendingState[] pendingStates;
    private final Theme.ResourcesProvider resourcesProvider;

    @Override // android.view.View
    public boolean hasOverlappingRendering() {
        return false;
    }

    static {
        int i = C2665R.drawable.msg_input_attach2;
        int i2 = C2665R.drawable.pagedown;
        buttonIcons = new int[]{i, i2, C2665R.drawable.mentionbutton, C2665R.drawable.reactionbutton, C2665R.drawable.menu_poll_notify, i2, i2};
    }

    public ChatActivitySideControlsButtonsLayout(Context context, Theme.ResourcesProvider resourcesProvider, BlurredBackgroundColorProvider blurredBackgroundColorProvider, BlurredBackgroundDrawableViewFactory blurredBackgroundDrawableViewFactory) {
        super(context);
        this.buttonDescriptions = new String[]{LocaleController.getString(C2665R.string.AttachMenu), LocaleController.getString(C2665R.string.AccDescrPageDown), LocaleController.getString(C2665R.string.AccDescrMentionDown), LocaleController.getString(C2665R.string.AccDescrReactionMentionDown), LocaleController.getString(C2665R.string.AccDescrPollVotesMentionDown), LocaleController.getString(C2665R.string.AccDescrSearchPrev), LocaleController.getString(C2665R.string.AccDescrSearchNext)};
        this.buttonHolders = new ButtonHolder[7];
        this.pendingStates = new ButtonPendingState[7];
        this.gravity = 83;
        this.blurredBackgroundDrawableViewFactory = blurredBackgroundDrawableViewFactory;
        this.colorProvider = blurredBackgroundColorProvider;
        this.resourcesProvider = resourcesProvider;
    }

    public void setGravity(int i) {
        this.gravity = i;
    }

    public void setOnClickListener(ButtonOnClickListener buttonOnClickListener) {
        this.onClickListener = buttonOnClickListener;
    }

    public void setOnLongClickListener(ButtonOnLongClickListener buttonOnLongClickListener) {
        this.onLongClickListener = buttonOnLongClickListener;
    }

    public boolean getButtonLocationInWindow(int i, int[] iArr) {
        ButtonHolder buttonHolder = this.buttonHolders[i];
        if (buttonHolder == null) {
            return false;
        }
        buttonHolder.button.getLocationInWindow(iArr);
        return true;
    }

    public void updateColors() {
        for (ButtonHolder buttonHolder : this.buttonHolders) {
            if (buttonHolder != null) {
                buttonHolder.button.updateColors();
            }
        }
    }

    public void showButton(int i, boolean z, boolean z2) {
        if (this.buttonHolders[i] != null || z) {
            getOrCreateButtonHolder(i).visibilityAnimator.setValue(z, z2);
        }
    }

    public void setButtonCount(int i, int i2, boolean z) {
        getOrCreatePendingState(i).count = i2;
        ButtonHolder buttonHolder = this.buttonHolders[i];
        if (buttonHolder != null) {
            buttonHolder.button.setCount(i2, z);
            buttonHolder.counterVisibilityAnimator.setValue(i2 > 0, z);
        }
    }

    public void setButtonLoading(int i, boolean z, boolean z2) {
        getOrCreatePendingState(i).loading = z;
        ButtonHolder buttonHolder = this.buttonHolders[i];
        if (buttonHolder != null) {
            buttonHolder.button.showLoading(z, z2);
        }
    }

    public boolean isButtonVisible(int i) {
        ButtonHolder buttonHolder = getButtonHolder(i);
        return buttonHolder != null && buttonHolder.visibilityAnimator.getValue();
    }

    public void setButtonEnabled(int i, boolean z, boolean z2) {
        getOrCreatePendingState(i).enabled = z;
        ButtonHolder buttonHolder = this.buttonHolders[i];
        if (buttonHolder != null) {
            buttonHolder.button.setEnabled(z, z2);
        }
    }

    @Override // me.vkryl.android.animator.FactorAnimator.Target
    public void onFactorChanged(int i, float f, float f2, FactorAnimator factorAnimator) {
        int i2 = i >> 16;
        int i3 = i & 65535;
        if (i2 >= 0) {
            ButtonHolder[] buttonHolderArr = this.buttonHolders;
            if (i2 >= buttonHolderArr.length || buttonHolderArr[i2] == null) {
                return;
            }
            if (i3 == 1 || i3 == 2) {
                checkButtonsPositionsAndVisibility();
            }
        }
    }

    private void checkButtonsPositionsAndVisibility() {
        float fDp = 0.0f;
        int i = 0;
        while (true) {
            ButtonHolder[] buttonHolderArr = this.buttonHolders;
            if (i >= buttonHolderArr.length) {
                return;
            }
            ButtonHolder buttonHolder = buttonHolderArr[i];
            if (buttonHolder != null) {
                float floatValue = buttonHolder.visibilityAnimator.getFloatValue();
                float floatValue2 = buttonHolder.counterVisibilityAnimator.getFloatValue();
                buttonHolder.button.setVisibility(floatValue > 0.0f ? 0 : 8);
                buttonHolder.button.setAlpha(floatValue);
                buttonHolder.button.setScaleX(AndroidUtilities.lerp(0.7f, 1.0f, floatValue));
                buttonHolder.button.setScaleY(AndroidUtilities.lerp(0.7f, 1.0f, floatValue));
                if (i != 0) {
                    buttonHolder.button.setTranslationY((AndroidUtilities.dp(80.0f) * (1.0f - floatValue)) - fDp);
                }
                fDp += (AndroidUtilities.dp(48.0f) + AndroidUtilities.dp((floatValue2 * 10.0f) + 10.0f)) * floatValue;
            }
            i++;
        }
    }

    private ButtonPendingState getOrCreatePendingState(int i) {
        ButtonPendingState[] buttonPendingStateArr = this.pendingStates;
        if (buttonPendingStateArr[i] == null) {
            buttonPendingStateArr[i] = new ButtonPendingState();
        }
        return this.pendingStates[i];
    }

    private ButtonHolder getButtonHolder(int i) {
        if (i < 0) {
            return null;
        }
        ButtonHolder[] buttonHolderArr = this.buttonHolders;
        if (i >= buttonHolderArr.length) {
            return null;
        }
        return buttonHolderArr[i];
    }

    private ButtonHolder getOrCreateButtonHolder(final int i) {
        int i2;
        int i3;
        final ChatActivitySideControlsButtonsLayout chatActivitySideControlsButtonsLayout = this;
        if (chatActivitySideControlsButtonsLayout.buttonHolders[i] == null) {
            int i4 = i << 16;
            BoolAnimator boolAnimator = new BoolAnimator(i4 | 1, chatActivitySideControlsButtonsLayout, i == 0 ? CubicBezierInterpolator.EASE_OUT_QUINT : AnimatorUtils.DECELERATE_INTERPOLATOR, i == 0 ? 300L : 280L);
            chatActivitySideControlsButtonsLayout = this;
            BoolAnimator boolAnimator2 = new BoolAnimator(i4 | 2, chatActivitySideControlsButtonsLayout, i == 0 ? CubicBezierInterpolator.EASE_OUT_QUINT : AnimatorUtils.DECELERATE_INTERPOLATOR, i == 0 ? 300L : 280L);
            if (i == 0) {
                i2 = 50;
                i3 = 32;
            } else {
                i2 = 56;
                i3 = 48;
            }
            int i5 = i2;
            ChatActivityBlurredRoundPageDownButton chatActivityBlurredRoundPageDownButtonCreate = ChatActivityBlurredRoundPageDownButton.create(chatActivitySideControlsButtonsLayout.getContext(), i5, i3, chatActivitySideControlsButtonsLayout.resourcesProvider, chatActivitySideControlsButtonsLayout.blurredBackgroundDrawableViewFactory, chatActivitySideControlsButtonsLayout.colorProvider, buttonIcons[i]);
            float f = i5 / 2.0f;
            chatActivityBlurredRoundPageDownButtonCreate.setPivotX(AndroidUtilities.dp(f));
            chatActivityBlurredRoundPageDownButtonCreate.setPivotY(AndroidUtilities.dp(f + 8.0f));
            chatActivityBlurredRoundPageDownButtonCreate.setVisibility(8);
            chatActivityBlurredRoundPageDownButtonCreate.setContentDescription(chatActivitySideControlsButtonsLayout.buttonDescriptions[i]);
            chatActivityBlurredRoundPageDownButtonCreate.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.chat.layouts.ChatActivitySideControlsButtonsLayout$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$getOrCreateButtonHolder$0(i, view);
                }
            });
            chatActivityBlurredRoundPageDownButtonCreate.setOnLongClickListener(new View.OnLongClickListener() { // from class: org.telegram.ui.Components.chat.layouts.ChatActivitySideControlsButtonsLayout$$ExternalSyntheticLambda1
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    return this.f$0.lambda$getOrCreateButtonHolder$1(i, view);
                }
            });
            if (i == 6) {
                chatActivityBlurredRoundPageDownButtonCreate.reverseIconByY();
            }
            if (i == 1) {
                chatActivityBlurredRoundPageDownButtonCreate.reverseCounter();
            }
            chatActivitySideControlsButtonsLayout.addView(chatActivityBlurredRoundPageDownButtonCreate, LayoutHelper.createFrame(i5, i5 + 8, chatActivitySideControlsButtonsLayout.gravity));
            chatActivitySideControlsButtonsLayout.buttonHolders[i] = new ButtonHolder(chatActivityBlurredRoundPageDownButtonCreate, boolAnimator, boolAnimator2);
            ButtonPendingState buttonPendingState = chatActivitySideControlsButtonsLayout.pendingStates[i];
            if (buttonPendingState != null) {
                chatActivityBlurredRoundPageDownButtonCreate.setCount(buttonPendingState.count, false);
                boolAnimator.setValue(false, false);
                boolAnimator2.setValue(buttonPendingState.count > 0, false);
                chatActivityBlurredRoundPageDownButtonCreate.showLoading(buttonPendingState.loading, false);
                chatActivityBlurredRoundPageDownButtonCreate.setEnabled(buttonPendingState.enabled, false);
            }
            chatActivitySideControlsButtonsLayout.checkButtonsPositionsAndVisibility();
        }
        return chatActivitySideControlsButtonsLayout.buttonHolders[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getOrCreateButtonHolder$0(int i, View view) {
        ButtonOnClickListener buttonOnClickListener = this.onClickListener;
        if (buttonOnClickListener != null) {
            buttonOnClickListener.onClick(i, view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$getOrCreateButtonHolder$1(int i, View view) {
        ButtonOnLongClickListener buttonOnLongClickListener = this.onLongClickListener;
        if (buttonOnLongClickListener != null) {
            return buttonOnLongClickListener.onLongClick(i, view);
        }
        return false;
    }

    public static class ButtonHolder {
        public final ChatActivityBlurredRoundPageDownButton button;
        public final BoolAnimator counterVisibilityAnimator;
        public final BoolAnimator visibilityAnimator;

        private ButtonHolder(ChatActivityBlurredRoundPageDownButton chatActivityBlurredRoundPageDownButton, BoolAnimator boolAnimator, BoolAnimator boolAnimator2) {
            this.button = chatActivityBlurredRoundPageDownButton;
            this.visibilityAnimator = boolAnimator;
            this.counterVisibilityAnimator = boolAnimator2;
        }
    }

    public static class ButtonPendingState {
        public int count;
        public boolean enabled;
        public boolean loading;

        private ButtonPendingState() {
            this.count = 0;
            this.loading = false;
            this.enabled = true;
        }
    }
}
