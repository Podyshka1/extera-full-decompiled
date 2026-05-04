package org.telegram.p029ui.Components.Premium.boosts.cells.statistics;

import android.content.Context;
import android.graphics.Canvas;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LocaleController;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Cells.UserCell;
import org.telegram.p029ui.Components.Premium.boosts.BoostRepository;
import org.telegram.tgnet.p028tl.TL_stories;

/* JADX INFO: loaded from: classes7.dex */
public class GiveawayCell extends UserCell {
    private CounterDrawable counterDrawable;
    private TL_stories.PrepaidGiveaway prepaidGiveaway;

    public GiveawayCell(Context context, int i, int i2, boolean z) {
        super(context, i, i2, z);
        init(context);
    }

    @Override // org.telegram.p029ui.Cells.UserCell, android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.needDivider) {
            canvas.drawLine(LocaleController.isRTL ? 0.0f : AndroidUtilities.m1124dp(70.0f), getMeasuredHeight() - 1, getMeasuredWidth() - (LocaleController.isRTL ? AndroidUtilities.m1124dp(70.0f) : 0), getMeasuredHeight() - 1, Theme.dividerPaint);
        }
    }

    private void init(Context context) {
        this.counterDrawable = new CounterDrawable(context);
    }

    public TL_stories.PrepaidGiveaway getPrepaidGiveaway() {
        return this.prepaidGiveaway;
    }

    public void setImage(TL_stories.PrepaidGiveaway prepaidGiveaway) {
        this.prepaidGiveaway = prepaidGiveaway;
        if (prepaidGiveaway instanceof TL_stories.TL_prepaidStarsGiveaway) {
            this.avatarDrawable.setAvatarType(26);
            this.counterDrawable.setText(String.valueOf(((TL_stories.TL_prepaidStarsGiveaway) prepaidGiveaway).stars / 500));
        } else if (prepaidGiveaway instanceof TL_stories.TL_prepaidGiveaway) {
            this.avatarDrawable.setAvatarType(16);
            int i = ((TL_stories.TL_prepaidGiveaway) prepaidGiveaway).months;
            if (i == 12) {
                this.avatarDrawable.setColor(-31392, -2796986);
            } else if (i == 6) {
                this.avatarDrawable.setColor(-10703110, -12481584);
            } else {
                this.avatarDrawable.setColor(-6631068, -11945404);
            }
            this.counterDrawable.setText(String.valueOf(prepaidGiveaway.quantity * BoostRepository.giveawayBoostsPerPremium()));
        }
        this.nameTextView.setRightDrawable(this.counterDrawable);
    }
}
