package com.exteragram.messenger.components.supporter;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.widget.FrameLayout;
import androidx.core.graphics.ColorUtils;
import com.exteragram.messenger.badges.BadgesController;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.SimpleTextView;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.PeerColorActivity;
import org.telegram.ui.Stories.recorder.HintView2;

/* JADX INFO: loaded from: classes4.dex */
public class SupporterBadgeHint {
    private int appliedTextColor;
    private int backgroundColor;
    private boolean customBadge;
    private boolean held;
    private final Runnable hideHint = new Runnable() { // from class: com.exteragram.messenger.components.supporter.SupporterBadgeHint$$ExternalSyntheticLambda2
        @Override // java.lang.Runnable
        public final void run() {
            this.f$0.hide();
        }
    };
    private HintView2 hint;
    private Boolean hintVisible;
    private Integer number;
    private int textColor;
    private long userId;

    public static boolean hasNumber(TLRPC.User user) {
        return BadgesController.INSTANCE.hasBadge(user) && BadgesController.getNumber(user) != null;
    }

    public void set(FrameLayout frameLayout, int i, TLRPC.User user, final Runnable runnable) {
        long j = user != null ? user.id : 0L;
        Integer number = (user == null || !hasNumber(user)) ? null : BadgesController.getNumber(user);
        boolean z = BadgesController.INSTANCE.getCustomBadgeId(user) != 0;
        int iResolveBackgroundColor = resolveBackgroundColor(i, user);
        if (j == this.userId && z == this.customBadge && iResolveBackgroundColor == this.backgroundColor) {
            Integer num = this.number;
            if (number == null) {
                if (num == null) {
                    return;
                }
            } else if (number.equals(num)) {
                return;
            }
        }
        this.userId = j;
        this.number = number;
        this.customBadge = z;
        this.backgroundColor = iResolveBackgroundColor;
        final HintView2 hintView2 = this.hint;
        if (hintView2 != null) {
            hintView2.setOnHiddenListener(new Runnable() { // from class: com.exteragram.messenger.components.supporter.SupporterBadgeHint$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    AndroidUtilities.removeFromParent(hintView2);
                }
            });
            hintView2.hide();
            this.hint = null;
        }
        if (frameLayout == null || number == null) {
            return;
        }
        this.textColor = resolveTextColor(this.backgroundColor);
        this.hintVisible = null;
        HintView2 hintView22 = new HintView2(frameLayout.getContext(), 3);
        this.hint = hintView22;
        hintView22.setPadding(AndroidUtilities.dp(4.0f), 0, AndroidUtilities.dp(4.0f), AndroidUtilities.dp(2.0f));
        this.hint.setFlicker(0.66f, Theme.multAlpha(this.textColor, 0.5f));
        frameLayout.addView(this.hint, LayoutHelper.createFrame(-1, 24.0f));
        this.hint.setTextSize(9.33f);
        this.hint.setTextTypeface(AndroidUtilities.bold());
        HintView2 hintView23 = this.hint;
        int i2 = this.textColor;
        this.appliedTextColor = i2;
        hintView23.setTextColor(i2);
        this.hint.setText(LocaleController.formatString(this.customBadge ? C2807R.string.SupporterBadgeNameCustom : C2807R.string.SupporterBadgeName, BadgesController.formatNumber(number.intValue())));
        this.hint.setDuration(-1L);
        this.hint.setInnerPadding(5.66f, 2.66f, 5.66f, 2.66f);
        this.hint.setArrowSize(4.0f, 2.66f);
        this.hint.setRoundingWithCornerEffect(false);
        this.hint.setRounding(16.0f);
        this.hint.setBgColor(this.backgroundColor);
        if (runnable != null) {
            this.hint.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.components.supporter.SupporterBadgeHint$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    runnable.run();
                }
            });
        }
        if (this.held) {
            return;
        }
        showHint(this.hint);
    }

    private void showHint(HintView2 hintView2) {
        hintView2.show();
        AndroidUtilities.cancelRunOnUIThread(this.hideHint);
        AndroidUtilities.runOnUIThread(this.hideHint, 6000L);
    }

    public void hold() {
        this.held = true;
        AndroidUtilities.cancelRunOnUIThread(this.hideHint);
        HintView2 hintView2 = this.hint;
        if (hintView2 != null) {
            hintView2.hide(false);
        }
    }

    public void release() {
        if (this.held) {
            this.held = false;
            HintView2 hintView2 = this.hint;
            if (hintView2 != null) {
                showHint(hintView2);
            }
        }
    }

    public void update(SimpleTextView simpleTextView, Drawable drawable, float f, boolean z) {
        int rightDrawableX;
        if (this.hint == null || simpleTextView == null || drawable == null) {
            return;
        }
        boolean z2 = false;
        if (simpleTextView.getRightDrawable() == drawable) {
            rightDrawableX = simpleTextView.getRightDrawableX();
        } else if (simpleTextView.getRightDrawable2() == drawable) {
            rightDrawableX = simpleTextView.rightDrawable2X;
        } else {
            rightDrawableX = 0;
            z = false;
        }
        if (rightDrawableX >= 0 && rightDrawableX <= simpleTextView.getWidth()) {
            z2 = true;
        }
        boolean z3 = z & z2;
        this.hint.setJointPx(0.0f, (-r0.getPaddingLeft()) + simpleTextView.getX() + (rightDrawableX * simpleTextView.getScaleX()));
        this.hint.setTranslationY((((-r0.getPaddingBottom()) + simpleTextView.getY()) - AndroidUtilities.dp(24.0f)) + AndroidUtilities.lerp(AndroidUtilities.dp(6.0f), -AndroidUtilities.dp(12.0f), f));
        this.hint.setBgColor(ColorUtils.blendARGB(this.backgroundColor, 1342177280, f));
        int iBlendARGB = ColorUtils.blendARGB(this.textColor, -1, f);
        if (this.appliedTextColor != iBlendARGB) {
            HintView2 hintView2 = this.hint;
            this.appliedTextColor = iBlendARGB;
            hintView2.setTextColor(iBlendARGB);
            this.hint.invalidate();
        }
        Boolean bool = this.hintVisible;
        if (bool == null || bool.booleanValue() != z3) {
            ViewPropertyAnimator viewPropertyAnimatorAnimate = this.hint.animate();
            this.hintVisible = Boolean.valueOf(z3);
            viewPropertyAnimatorAnimate.alpha(z3 ? 1.0f : 0.0f).setInterpolator(CubicBezierInterpolator.EASE_OUT).setDuration(200L).start();
        }
    }

    public void hide() {
        HintView2 hintView2 = this.hint;
        if (hintView2 != null) {
            hintView2.hide(true);
        }
    }

    public static int resolveTextColor(int i) {
        return AndroidUtilities.computePerceivedBrightness(i) > 0.721f ? -16777216 : -1;
    }

    public static int resolveBackgroundColor(int i, TLRPC.User user) {
        if (user != null) {
            TLRPC.EmojiStatus emojiStatus = user.emoji_status;
            if (emojiStatus instanceof TLRPC.TL_emojiStatusCollectible) {
                TLRPC.TL_emojiStatusCollectible tL_emojiStatusCollectible = (TLRPC.TL_emojiStatusCollectible) emojiStatus;
                return Theme.blendOver(tL_emojiStatusCollectible.center_color | (-16777216), Theme.multAlpha(tL_emojiStatusCollectible.pattern_color | (-16777216), 0.5f));
            }
        }
        MessagesController.PeerColors peerColors = MessagesController.getInstance(i).profilePeerColors;
        MessagesController.PeerColor color = peerColors == null ? null : peerColors.getColor(UserObject.getProfileColorId(user));
        if (color != null) {
            int bgColor1 = color.getBgColor1(Theme.isCurrentThemeDark());
            int iAdaptProfileEmojiColor = color.patternColor;
            if (iAdaptProfileEmojiColor == 0) {
                iAdaptProfileEmojiColor = PeerColorActivity.adaptProfileEmojiColor(bgColor1);
            }
            return Theme.blendOver(bgColor1, Theme.multAlpha(iAdaptProfileEmojiColor | (-16777216), 0.5f));
        }
        return Theme.blendOver(Theme.getColor(Theme.key_actionBarDefault), Theme.multAlpha(Theme.getColor(Theme.key_actionBarDefaultTitle), 0.15f));
    }
}
