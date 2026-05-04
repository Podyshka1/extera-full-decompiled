package org.telegram.p029ui.Stories;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.SpannableStringBuilder;
import android.widget.FrameLayout;
import androidx.core.graphics.ColorUtils;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.Cells.DialogCell;
import org.telegram.p029ui.Components.AnimatedTextView;
import org.telegram.p029ui.Stories.PeerStoriesView;

/* JADX INFO: loaded from: classes7.dex */
public class StoryPositionView {
    int lastHash;
    private final SpannableStringBuilder leftSpace;
    private final SpannableStringBuilder rightSpace;
    AnimatedTextView.AnimatedTextDrawable textDrawable = new AnimatedTextView.AnimatedTextDrawable(true, true, true);
    Paint backgroundPaint = new Paint(1);

    public StoryPositionView() {
        this.textDrawable.setTextSize(AndroidUtilities.m1124dp(13.0f));
        this.textDrawable.setTextColor(-1);
        this.textDrawable.setTypeface(AndroidUtilities.bold());
        this.backgroundPaint.setColor(ColorUtils.setAlphaComponent(-16777216, 58));
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        this.leftSpace = spannableStringBuilder;
        spannableStringBuilder.append((CharSequence) " ").setSpan(new DialogCell.FixedWidthSpan(AndroidUtilities.m1124dp(1.0f)), 0, 1, 0);
        SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder();
        this.rightSpace = spannableStringBuilder2;
        spannableStringBuilder2.append((CharSequence) " ").setSpan(new DialogCell.FixedWidthSpan(AndroidUtilities.m1124dp(1.0f)), 0, 1, 0);
    }

    public void draw(Canvas canvas, float f, int i, int i2, FrameLayout frameLayout, PeerStoriesView.PeerHeaderView peerHeaderView) {
        int i3 = (i2 << 12) + i;
        if (this.lastHash != i3) {
            this.lastHash = i3;
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            spannableStringBuilder.append((CharSequence) String.valueOf(i + 1)).append((CharSequence) this.leftSpace).append((CharSequence) "/").append((CharSequence) this.rightSpace).append((CharSequence) String.valueOf(i2));
            this.textDrawable.setText(spannableStringBuilder, false);
        }
        canvas.save();
        float y = ((peerHeaderView.getY() + peerHeaderView.titleView.getTop()) + (this.textDrawable.getHeight() / 2.0f)) - 1.0f;
        peerHeaderView.titleView.setRightPadding((int) this.textDrawable.getCurrentWidth());
        canvas.translate(((((AndroidUtilities.m1124dp(4.0f) + peerHeaderView.getLeft()) + peerHeaderView.titleView.getLeft()) + peerHeaderView.titleView.getTextWidth()) + peerHeaderView.titleView.getRightDrawableWidth()) - Utilities.clamp(((peerHeaderView.titleView.getTextWidth() + peerHeaderView.titleView.getRightDrawableWidth()) + r8) - peerHeaderView.titleView.getWidth(), r8, 0), y);
        float fM1124dp = AndroidUtilities.m1124dp(8.0f);
        float fM1124dp2 = AndroidUtilities.m1124dp(2.0f);
        AndroidUtilities.rectTmp.set(-fM1124dp, -fM1124dp2, this.textDrawable.getCurrentWidth() + fM1124dp, this.textDrawable.getHeight() + fM1124dp2);
        this.textDrawable.setAlpha((int) (f * 160.0f));
        this.textDrawable.draw(canvas);
        canvas.restore();
    }
}
