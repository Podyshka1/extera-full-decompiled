package org.telegram.ui.Components.Premium.boosts.cells.statistics;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.widget.FrameLayout;
import android.widget.TextView;
import java.util.Date;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2573R;
import org.telegram.messenger.LocaleController;
import org.telegram.tgnet.tl.TL_stories;
import org.telegram.ui.ActionBar.SimpleTextView;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.UserCell;
import org.telegram.ui.Components.AvatarDrawable;
import org.telegram.ui.Components.LayoutHelper;

/* JADX INFO: loaded from: classes7.dex */
@SuppressLint({"ViewConstructor"})
public class GiftedUserCell extends UserCell {
    private FrameLayout badgeLayout;
    private TextView badgeTextView;
    private TL_stories.Boost boost;
    private CounterDrawable counterDrawable;
    private Drawable giftDrawable;
    private Drawable giveawayDrawable;

    @Override // org.telegram.ui.Cells.UserCell, org.telegram.ui.ActionBar.Theme.Colorable
    public /* bridge */ /* synthetic */ int[] getColorKeys() {
        return super.getColorKeys();
    }

    public GiftedUserCell(Context context, int i, int i2, boolean z) {
        super(context, i, i2, z);
        init();
    }

    @Override // org.telegram.ui.Cells.UserCell, android.view.View
    public void onDraw(Canvas canvas) {
        if (this.needDivider) {
            canvas.drawLine(LocaleController.isRTL ? 0.0f : AndroidUtilities.dp(70.0f), getMeasuredHeight() - 1, getMeasuredWidth() - (LocaleController.isRTL ? AndroidUtilities.dp(70.0f) : 0), getMeasuredHeight() - 1, Theme.dividerPaint);
        }
    }

    public TL_stories.Boost getBoost() {
        return this.boost;
    }

    private void init() {
        this.counterDrawable = new CounterDrawable(getContext());
        this.badgeLayout = new FrameLayout(getContext());
        TextView textView = new TextView(getContext());
        this.badgeTextView = textView;
        textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, this.resourcesProvider));
        this.badgeTextView.setTypeface(AndroidUtilities.bold());
        this.badgeTextView.setTextSize(12.0f);
        this.badgeTextView.setGravity(17);
        this.badgeLayout.addView(this.badgeTextView, LayoutHelper.createFrame(-2, 22.0f));
        this.badgeLayout.setPadding(AndroidUtilities.dp(8.0f), 0, AndroidUtilities.dp(8.0f), 0);
        FrameLayout frameLayout = this.badgeLayout;
        boolean z = LocaleController.isRTL;
        addView(frameLayout, LayoutHelper.createFrame(-2, -2.0f, (z ? 3 : 5) | 48, z ? 9 : 0, 9.0f, z ? 0 : 9, 0.0f));
    }

    private void setAvatarColorByMonths(int i) {
        if (i == 12) {
            this.avatarDrawable.setColor(-31392, -2796986);
            return;
        }
        AvatarDrawable avatarDrawable = this.avatarDrawable;
        if (i == 6) {
            avatarDrawable.setColor(-10703110, -12481584);
        } else {
            avatarDrawable.setColor(-6631068, -11945404);
        }
    }

    public void setStatus(TL_stories.Boost boost) {
        this.boost = boost;
        if (boost.gift || boost.giveaway) {
            this.badgeLayout.setVisibility(0);
            int i = ((boost.expires - boost.date) / 30) / 86400;
            long j = boost.stars;
            if (j > 0) {
                this.nameTextView.setText(LocaleController.formatPluralString("BoostingBoostStars", (int) j, new Object[0]));
                this.avatarDrawable.setAvatarType(26);
                this.avatarImageView.setForUserOrChat(null, this.avatarDrawable);
                this.nameTextView.setRightDrawable((Drawable) null);
            } else if (boost.unclaimed) {
                this.nameTextView.setText(LocaleController.getString(C2573R.string.BoostingUnclaimed));
                this.avatarDrawable.setAvatarType(18);
                setAvatarColorByMonths(i);
                this.avatarImageView.setForUserOrChat(null, this.avatarDrawable);
                this.nameTextView.setRightDrawable((Drawable) null);
            } else if (boost.user_id == -1) {
                this.nameTextView.setText(LocaleController.getString(C2573R.string.BoostingToBeDistributed));
                this.avatarDrawable.setAvatarType(19);
                setAvatarColorByMonths(i);
                this.avatarImageView.setForUserOrChat(null, this.avatarDrawable);
                this.nameTextView.setRightDrawable((Drawable) null);
            }
            String str = LocaleController.getInstance().getFormatterBoostExpired().format(new Date(((long) boost.expires) * 1000));
            long j2 = boost.stars;
            SimpleTextView simpleTextView = this.statusTextView;
            if (j2 > 0) {
                simpleTextView.setText(LocaleController.formatString(C2573R.string.BoostingStarsExpires, str));
            } else {
                simpleTextView.setText(LocaleController.formatString(C2573R.string.BoostingExpires, str));
            }
            if (boost.gift) {
                if (this.giftDrawable == null) {
                    Drawable drawable = getResources().getDrawable(C2573R.drawable.mini_gift);
                    this.giftDrawable = drawable;
                    drawable.setColorFilter(new PorterDuffColorFilter(-3240417, PorterDuff.Mode.MULTIPLY));
                }
                this.badgeTextView.setTextColor(-3240417);
                this.badgeTextView.setCompoundDrawablesWithIntrinsicBounds(this.giftDrawable, (Drawable) null, (Drawable) null, (Drawable) null);
                this.badgeTextView.setCompoundDrawablePadding(AndroidUtilities.dp(4.0f));
                this.badgeTextView.setText(LocaleController.getString(C2573R.string.BoostingGift));
                this.badgeLayout.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.dp(12.0f), AndroidUtilities.dp(12.0f), Theme.multAlpha(-3240417, 0.2f)));
            }
            if (boost.giveaway) {
                if (this.giveawayDrawable == null) {
                    Drawable drawable2 = getResources().getDrawable(C2573R.drawable.mini_giveaway);
                    this.giveawayDrawable = drawable2;
                    drawable2.setColorFilter(new PorterDuffColorFilter(-13397548, PorterDuff.Mode.MULTIPLY));
                }
                this.badgeTextView.setTextColor(-13397548);
                this.badgeTextView.setCompoundDrawablesWithIntrinsicBounds(this.giveawayDrawable, (Drawable) null, (Drawable) null, (Drawable) null);
                this.badgeTextView.setCompoundDrawablePadding(AndroidUtilities.dp(4.0f));
                this.badgeTextView.setText(LocaleController.getString(C2573R.string.BoostingGiveaway));
                this.badgeLayout.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.dp(12.0f), AndroidUtilities.dp(12.0f), Theme.multAlpha(-13397548, 0.2f)));
            }
        } else {
            this.badgeLayout.setVisibility(8);
        }
        int i2 = boost.multiplier;
        if (i2 > 0) {
            this.counterDrawable.setText(String.valueOf(i2));
            this.nameTextView.setRightDrawable(this.counterDrawable);
        } else {
            this.nameTextView.setRightDrawable((Drawable) null);
        }
        if (this.badgeLayout.getVisibility() == 0) {
            int iMeasureText = ((int) this.badgeTextView.getPaint().measureText(this.badgeTextView.getText().toString())) + AndroidUtilities.dp(22.0f);
            SimpleTextView simpleTextView2 = this.nameTextView;
            simpleTextView2.setPadding(LocaleController.isRTL ? iMeasureText : 0, simpleTextView2.getPaddingTop(), LocaleController.isRTL ? 0 : iMeasureText, this.nameTextView.getPaddingBottom());
        } else {
            SimpleTextView simpleTextView3 = this.nameTextView;
            simpleTextView3.setPadding(0, simpleTextView3.getPaddingTop(), 0, this.nameTextView.getPaddingBottom());
        }
    }
}
