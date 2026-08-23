package org.telegram.p029ui.bots;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.GradientDrawable;
import android.text.SpannableStringBuilder;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import androidx.core.graphics.ColorUtils;
import java.util.ArrayList;
import java.util.Iterator;
import me.vkryl.android.animator.ListAnimator;
import me.vkryl.android.animator.ReplaceAnimator;
import me.vkryl.core.lambda.Destroyable;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.NotificationCenter;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.AnimatedEmojiSpan;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.ScaleStateListAnimator;
import org.telegram.p029ui.Components.inset.InAppKeyboardInsetView;
import org.telegram.p029ui.Components.spoilers.SpoilersTextView;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes7.dex */
public abstract class BotKeyboardView extends LinearLayout implements InAppKeyboardInsetView, ReplaceAnimator.Callback {
    private final ReplaceAnimator animator;
    private TLRPC.TL_replyKeyboardMarkup botButtons;
    private int buttonHeight;
    private final ArrayList buttonViews;
    private BotKeyboardViewDelegate delegate;
    private final GradientDrawable fadeDrawable;
    private final FrameLayout frameLayout;
    private boolean isFullSize;
    private int lastFadeColor;
    private int navigationBarHeight;
    private int panelHeight;
    private final Theme.ResourcesProvider resourcesProvider;
    private final ScrollView scrollView;

    public interface BotKeyboardViewDelegate {
        void didPressedButton(TLRPC.KeyboardButton keyboardButton);
    }

    @Override // org.telegram.p029ui.Components.inset.InAppKeyboardInsetView
    public void applyInAppKeyboardAnimatedHeight(float f) {
    }

    @Override // me.vkryl.android.animator.ReplaceAnimator.Callback
    public /* synthetic */ boolean hasChanges(ReplaceAnimator replaceAnimator) {
        return ReplaceAnimator.Callback.CC.$default$hasChanges(this, replaceAnimator);
    }

    @Override // me.vkryl.android.animator.ReplaceAnimator.Callback
    public /* synthetic */ boolean onApplyMetadataAnimation(ReplaceAnimator replaceAnimator, float f) {
        return ReplaceAnimator.Callback.CC.$default$onApplyMetadataAnimation(this, replaceAnimator, f);
    }

    @Override // me.vkryl.android.animator.ReplaceAnimator.Callback
    public /* synthetic */ void onFinishMetadataAnimation(ReplaceAnimator replaceAnimator, boolean z) {
        ReplaceAnimator.Callback.CC.$default$onFinishMetadataAnimation(this, replaceAnimator, z);
    }

    @Override // me.vkryl.android.animator.ReplaceAnimator.Callback
    public /* synthetic */ void onForceApplyChanges(ReplaceAnimator replaceAnimator) {
        ReplaceAnimator.Callback.CC.$default$onForceApplyChanges(this, replaceAnimator);
    }

    @Override // me.vkryl.android.animator.ReplaceAnimator.Callback
    public /* synthetic */ void onPrepareMetadataAnimation(ReplaceAnimator replaceAnimator) {
        ReplaceAnimator.Callback.CC.$default$onPrepareMetadataAnimation(this, replaceAnimator);
    }

    public BotKeyboardView(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.buttonViews = new ArrayList();
        this.fadeDrawable = new GradientDrawable(GradientDrawable.Orientation.BOTTOM_TOP, null);
        this.animator = new ReplaceAnimator(this, CubicBezierInterpolator.EASE_OUT_QUINT, 320L);
        this.resourcesProvider = resourcesProvider;
        setOrientation(1);
        ScrollView scrollView = new ScrollView(context);
        this.scrollView = scrollView;
        scrollView.setClipToPadding(false);
        addView(scrollView);
        FrameLayout frameLayout = new FrameLayout(context);
        this.frameLayout = frameLayout;
        scrollView.addView(frameLayout);
        updateColors();
    }

    public void updateColors() {
        AndroidUtilities.setScrollViewEdgeEffectColor(this.scrollView, getThemedColor(Theme.key_chat_emojiPanelBackground));
        for (int i = 0; i < this.buttonViews.size(); i++) {
            ((Button) this.buttonViews.get(i)).updateColors();
        }
        invalidate();
    }

    public void setDelegate(BotKeyboardViewDelegate botKeyboardViewDelegate) {
        this.delegate = botKeyboardViewDelegate;
    }

    public void setPanelHeight(int i) {
        TLRPC.TL_replyKeyboardMarkup tL_replyKeyboardMarkup;
        this.panelHeight = i;
        if (!this.isFullSize || (tL_replyKeyboardMarkup = this.botButtons) == null || tL_replyKeyboardMarkup.rows.isEmpty()) {
            return;
        }
        int iMax = !this.isFullSize ? 44 : (int) Math.max(44.0f, (((this.panelHeight - AndroidUtilities.m1124dp(16.0f)) - ((this.botButtons.rows.size() - 1) * AndroidUtilities.m1124dp(4.0f))) / this.botButtons.rows.size()) / AndroidUtilities.density);
        this.buttonHeight = iMax;
        int iM1124dp = AndroidUtilities.m1124dp(iMax);
        for (ListAnimator.Entry entry : this.animator) {
            int childCount = ((ButtonsLayout) entry.item).getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = ((ButtonsLayout) entry.item).getChildAt(i2);
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) childAt.getLayoutParams();
                if (layoutParams.height != iM1124dp) {
                    layoutParams.height = iM1124dp;
                    childAt.setLayoutParams(layoutParams);
                }
            }
        }
    }

    public void invalidateViews() {
        for (int i = 0; i < this.buttonViews.size(); i++) {
            ((Button) this.buttonViews.get(i)).invalidate();
        }
    }

    public boolean isFullSize() {
        return this.isFullSize;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public void setButtons(TLRPC.TL_replyKeyboardMarkup tL_replyKeyboardMarkup) {
        this.botButtons = tL_replyKeyboardMarkup;
        this.buttonViews.clear();
        float scrollY = this.scrollView.getScrollY();
        Iterator it = this.animator.iterator();
        while (it.hasNext()) {
            Object obj = ((ListAnimator.Entry) it.next()).item;
            ((ButtonsLayout) obj).setTranslationY(((ButtonsLayout) obj).getTranslationY() - scrollY);
        }
        int i = 0;
        this.scrollView.scrollTo(0, 0);
        if (tL_replyKeyboardMarkup != null && !this.botButtons.rows.isEmpty()) {
            ButtonsLayout buttonsLayout = new ButtonsLayout(getContext());
            buttonsLayout.setOrientation(1);
            buttonsLayout.setAlpha(0.0f);
            this.frameLayout.addView(buttonsLayout);
            boolean z = tL_replyKeyboardMarkup.resize;
            this.isFullSize = !z;
            this.buttonHeight = z ? 44 : (int) Math.max(44.0f, (((this.panelHeight - AndroidUtilities.m1124dp(16.0f)) - ((this.botButtons.rows.size() - 1) * AndroidUtilities.m1124dp(4.0f))) / this.botButtons.rows.size()) / AndroidUtilities.density);
            int i2 = 0;
            while (i2 < tL_replyKeyboardMarkup.rows.size()) {
                TLRPC.TL_keyboardButtonRow tL_keyboardButtonRow = (TLRPC.TL_keyboardButtonRow) tL_replyKeyboardMarkup.rows.get(i2);
                LinearLayout linearLayout = new LinearLayout(getContext());
                linearLayout.setOrientation(i);
                buttonsLayout.addView(linearLayout, LayoutHelper.createLinear(-1, this.buttonHeight, 8.0f, i2 == 0 ? 8.0f : 4.0f, 8.0f, i2 == tL_replyKeyboardMarkup.rows.size() - 1 ? 8.0f : 0.0f));
                float size = 1.0f / tL_keyboardButtonRow.buttons.size();
                int i3 = i;
                while (i3 < tL_keyboardButtonRow.buttons.size()) {
                    Button button = new Button(getContext(), (TLRPC.KeyboardButton) tL_keyboardButtonRow.buttons.get(i3));
                    button.setPositionFlags(i3 == 0 ? 1 : i, i2 == 0 ? 1 : i, i3 == tL_keyboardButtonRow.buttons.size() - 1 ? 1 : i, i2 == tL_replyKeyboardMarkup.rows.size() - 1);
                    FrameLayout frameLayout = new FrameLayout(getContext());
                    frameLayout.addView(button, LayoutHelper.createFrame(-1, -1.0f));
                    linearLayout.addView(frameLayout, LayoutHelper.createLinear(0, -1, size, 0, 0, i3 != tL_keyboardButtonRow.buttons.size() - 1 ? 4 : 0, 0));
                    button.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.bots.BotKeyboardView$$ExternalSyntheticLambda0
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            this.f$0.lambda$setButtons$0(view);
                        }
                    });
                    ScaleStateListAnimator.apply(button, 0.02f, 1.5f);
                    this.buttonViews.add(button);
                    button.updateColors();
                    i3++;
                    i = 0;
                }
                i2++;
                i = 0;
            }
            this.animator.replace(buttonsLayout, true);
            return;
        }
        this.animator.clear(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setButtons$0(View view) {
        this.delegate.didPressedButton((TLRPC.KeyboardButton) view.getTag());
    }

    private class Button extends FrameLayout {
        private final TLRPC.KeyboardButton button;
        private final ImageView icon;
        private boolean isBottom;
        private boolean isLeft;
        private boolean isRight;
        private boolean isTop;
        private final SpoilersTextView textView;

        public Button(Context context, TLRPC.KeyboardButton keyboardButton) {
            super(context);
            this.button = keyboardButton;
            SpoilersTextView spoilersTextView = new SpoilersTextView(context);
            this.textView = spoilersTextView;
            spoilersTextView.allowClickSpoilers = false;
            spoilersTextView.setTextSize(1, 14.0f);
            spoilersTextView.setTypeface(AndroidUtilities.bold());
            NotificationCenter.listenEmojiLoading(spoilersTextView);
            addView(spoilersTextView, LayoutHelper.createFrame(-2, -2, 17));
            NotificationCenter.listenEmojiLoading(spoilersTextView);
            setTag(keyboardButton);
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            TLRPC.TL_keyboardButtonStyle tL_keyboardButtonStyle = keyboardButton.style;
            if (tL_keyboardButtonStyle != null && tL_keyboardButtonStyle.icon != 0) {
                spannableStringBuilder.append((CharSequence) "* ");
                spannableStringBuilder.setSpan(new AnimatedEmojiSpan(keyboardButton.style.icon, spoilersTextView.getPaint().getFontMetricsInt()), 0, 1, 33);
            }
            spannableStringBuilder.append(Emoji.replaceEmoji(keyboardButton.text, spoilersTextView.getPaint().getFontMetricsInt(), false));
            ImageView imageView = new ImageView(getContext());
            this.icon = imageView;
            imageView.setColorFilter(BotKeyboardView.this.getThemedColor(Theme.key_chat_botKeyboardButtonText));
            if ((keyboardButton instanceof TLRPC.TL_keyboardButtonWebView) || (keyboardButton instanceof TLRPC.TL_keyboardButtonSimpleWebView)) {
                imageView.setImageResource(C2888R.drawable.bot_webview);
                imageView.setVisibility(0);
            } else {
                imageView.setVisibility(8);
            }
            addView(imageView, LayoutHelper.createFrame(12, 12.0f, 53, 0.0f, 8.0f, 8.0f, 0.0f));
            spoilersTextView.setText(spannableStringBuilder);
        }

        public void setPositionFlags(boolean z, boolean z2, boolean z3, boolean z4) {
            this.isLeft = z;
            this.isTop = z2;
            this.isRight = z3;
            this.isBottom = z4;
            updateColors();
        }

        public void updateColors() {
            int i;
            int i2;
            int iMultAlpha;
            int iCompositeColors;
            int iM1124dp = AndroidUtilities.m1124dp(12.0f);
            int iM1124dp2 = AndroidUtilities.m1124dp(11.0f);
            int themedColor = BotKeyboardView.this.getThemedColor(Theme.key_chat_botKeyboardButtonBackground);
            int themedColor2 = BotKeyboardView.this.getThemedColor(Theme.key_chat_botKeyboardButtonBackgroundPressed);
            int themedColor3 = BotKeyboardView.this.getThemedColor(Theme.key_chat_botKeyboardButtonText);
            TLRPC.TL_keyboardButtonStyle tL_keyboardButtonStyle = this.button.style;
            if (tL_keyboardButtonStyle == null) {
                i = themedColor;
                i2 = themedColor2;
            } else {
                if (tL_keyboardButtonStyle.bg_primary) {
                    iMultAlpha = Theme.multAlpha(BotKeyboardView.this.getThemedColor(Theme.key_botKeyboard_button_primary), 0.8f);
                    iCompositeColors = ColorUtils.compositeColors(BotKeyboardView.this.getThemedColor(Theme.key_listSelector), iMultAlpha);
                } else if (tL_keyboardButtonStyle.bg_danger) {
                    iMultAlpha = Theme.multAlpha(BotKeyboardView.this.getThemedColor(Theme.key_botKeyboard_button_danger), 0.8f);
                    iCompositeColors = ColorUtils.compositeColors(BotKeyboardView.this.getThemedColor(Theme.key_listSelector), iMultAlpha);
                } else {
                    if (tL_keyboardButtonStyle.bg_success) {
                        iMultAlpha = Theme.multAlpha(BotKeyboardView.this.getThemedColor(Theme.key_botKeyboard_button_success), 0.8f);
                        iCompositeColors = ColorUtils.compositeColors(BotKeyboardView.this.getThemedColor(Theme.key_listSelector), iMultAlpha);
                    }
                    i = themedColor;
                    i2 = themedColor2;
                }
                i = iMultAlpha;
                i2 = iCompositeColors;
                themedColor3 = -1;
            }
            this.icon.setColorFilter(themedColor3);
            this.textView.setTextColor(themedColor3);
            boolean z = this.isLeft;
            int i3 = (z && this.isTop) ? iM1124dp : iM1124dp2;
            boolean z2 = this.isRight;
            setBackground(Theme.createSimpleSelectorRoundRectDrawable(i3, (z2 && this.isTop) ? iM1124dp : iM1124dp2, (z2 && this.isBottom) ? iM1124dp : iM1124dp2, (z && this.isBottom) ? iM1124dp : iM1124dp2, i, i2, i2));
        }
    }

    public int getKeyboardHeight() {
        TLRPC.TL_replyKeyboardMarkup tL_replyKeyboardMarkup = this.botButtons;
        if (tL_replyKeyboardMarkup == null) {
            return 0;
        }
        return this.isFullSize ? this.panelHeight : (tL_replyKeyboardMarkup.rows.size() * AndroidUtilities.m1124dp(this.buttonHeight)) + AndroidUtilities.m1124dp(16.0f) + ((this.botButtons.rows.size() - 1) * AndroidUtilities.m1124dp(4.0f));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }

    @Override // org.telegram.p029ui.Components.inset.InAppKeyboardInsetView
    public void applyNavigationBarHeight(int i) {
        if (this.navigationBarHeight == i) {
            return;
        }
        this.navigationBarHeight = i;
        if (this.scrollView.getPaddingBottom() != i) {
            this.scrollView.setPadding(0, 0, 0, i);
        }
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        float navigationBarThirdButtonsFactor = AndroidUtilities.getNavigationBarThirdButtonsFactor(this.navigationBarHeight);
        if (navigationBarThirdButtonsFactor > 0.0f) {
            int iMultAlpha = Theme.multAlpha(getThemedColor(Theme.key_chat_emojiPanelBackground), navigationBarThirdButtonsFactor);
            if (this.lastFadeColor != iMultAlpha) {
                this.fadeDrawable.setColors(new int[]{iMultAlpha, Theme.multAlpha(iMultAlpha, 0.66f), ColorUtils.setAlphaComponent(iMultAlpha, 0)});
                this.lastFadeColor = iMultAlpha;
            }
            this.fadeDrawable.setBounds(0, getMeasuredHeight() - this.navigationBarHeight, getMeasuredWidth(), getMeasuredHeight());
            this.fadeDrawable.draw(canvas);
        }
    }

    @Override // me.vkryl.android.animator.ReplaceAnimator.Callback
    public void onItemChanged(ReplaceAnimator replaceAnimator) {
        for (ListAnimator.Entry entry : this.animator) {
            float visibility = entry.getVisibility();
            float fLerp = AndroidUtilities.lerp(0.7f, 1.0f, visibility);
            ((ButtonsLayout) entry.item).setAlpha(visibility);
            ((ButtonsLayout) entry.item).setScaleX(fLerp);
            ((ButtonsLayout) entry.item).setScaleY(fLerp);
        }
    }

    private static class ButtonsLayout extends LinearLayout implements Destroyable {
        public ButtonsLayout(Context context) {
            super(context);
        }

        @Override // me.vkryl.core.lambda.Destroyable
        public void performDestroy() {
            ((ViewGroup) getParent()).removeView(this);
        }
    }
}
