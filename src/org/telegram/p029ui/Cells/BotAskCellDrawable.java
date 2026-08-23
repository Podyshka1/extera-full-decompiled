package org.telegram.p029ui.Cells;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.text.Layout;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserObject;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.Text;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes6.dex */
public class BotAskCellDrawable extends Drawable {
    private final Drawable botLogo;
    private final int currentAccount;
    private final Drawable groupsArrow;
    private int height;
    private final Theme.ResourcesProvider resourcesProvider;
    private final Text text;
    private final Text title;
    private int width;
    private final RectF tmpRect = new RectF();
    private Paint dPaint = new Paint(1);

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    public BotAskCellDrawable(Context context, int i, Theme.ResourcesProvider resourcesProvider) {
        this.currentAccount = i;
        this.resourcesProvider = resourcesProvider;
        Text text = new Text(LocaleController.getString(C2888R.string.BotForumAskForStartNewChatTitle), 14.0f, AndroidUtilities.bold());
        this.title = text;
        Layout.Alignment alignment = Layout.Alignment.ALIGN_CENTER;
        text.align(alignment);
        Text text2 = new Text(_UrlKt.FRAGMENT_ENCODE_SET, 13.0f);
        this.text = text2;
        text2.multiline(4);
        text2.align(alignment);
        Drawable drawableMutate = context.getResources().getDrawable(C2888R.drawable.filled_topic_new_24).mutate();
        this.botLogo = drawableMutate;
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        drawableMutate.setColorFilter(new PorterDuffColorFilter(-1, mode));
        Drawable drawableMutate2 = context.getResources().getDrawable(C2888R.drawable.arrow_more).mutate();
        this.groupsArrow = drawableMutate2;
        drawableMutate2.setColorFilter(new PorterDuffColorFilter(-1, mode));
        drawableMutate2.setAlpha(153);
        this.dPaint.setColor(-16777216);
        this.dPaint.setAlpha(30);
    }

    public void set(long j) {
        TLRPC.User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(j));
        this.text.multiline(1);
        this.text.setMaxWidth(9999.0f);
        this.text.setText(LocaleController.formatString(C2888R.string.BotForumAskForStartNewChat, UserObject.getUserName(user)));
        float fCalculateRealWidth = (this.text.calculateRealWidth() / 2.0f) * 1.2f;
        this.text.multiline(4);
        float f = (int) (AndroidUtilities.displaySize.x * 0.95f);
        this.text.setMaxWidth(Math.min(f, fCalculateRealWidth));
        if (this.text.getLineCount() > 2) {
            this.text.setMaxWidth(Math.min(f, fCalculateRealWidth * 1.2f));
        }
        float fMin = Math.min(Math.max(Math.max(0.0f, this.text.calculateRealWidth()), this.title.calculateRealWidth()) + AndroidUtilities.m1124dp(32.0f), f);
        float fM1124dp = AndroidUtilities.m1124dp(17.0f) + 0.0f + AndroidUtilities.m1124dp(70.0f) + AndroidUtilities.m1124dp(14.0f) + this.title.getHeight() + AndroidUtilities.m1124dp(4.0f) + this.text.getHeight() + AndroidUtilities.m1124dp(2.0f) + AndroidUtilities.m1124dp(20.0f) + AndroidUtilities.m1124dp(5.0f);
        this.width = (int) fMin;
        this.height = (int) fM1124dp;
    }

    public int getBubbleWidth() {
        return this.width;
    }

    public int getBubbleHeight() {
        return this.height;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        canvas.drawRoundRect(this.tmpRect, AndroidUtilities.m1124dp(16.0f), AndroidUtilities.m1124dp(16.0f), Theme.getThemePaint("paintChatActionBackground", this.resourcesProvider));
        if (hasGradientService()) {
            canvas.drawRoundRect(this.tmpRect, AndroidUtilities.m1124dp(16.0f), AndroidUtilities.m1124dp(16.0f), Theme.getThemePaint("paintChatActionBackgroundDarken", this.resourcesProvider));
        }
        canvas.save();
        canvas.translate(0.0f, this.tmpRect.top + AndroidUtilities.m1124dp(17.0f));
        canvas.drawCircle(this.tmpRect.centerX(), AndroidUtilities.m1124dp(35.0f), AndroidUtilities.m1124dp(35.0f), this.dPaint);
        int iCenterX = (int) (this.tmpRect.centerX() - AndroidUtilities.m1124dp(20.0f));
        int iM1124dp = AndroidUtilities.m1124dp(15.0f);
        this.botLogo.setBounds(iCenterX, iM1124dp, AndroidUtilities.m1124dp(40.0f) + iCenterX, AndroidUtilities.m1124dp(40.0f) + iM1124dp);
        this.botLogo.draw(canvas);
        canvas.translate(0.0f, AndroidUtilities.m1124dp(70.0f));
        canvas.translate(0.0f, AndroidUtilities.m1124dp(14.0f));
        this.title.draw(canvas, this.tmpRect.centerX() - (this.title.getWidth() / 2.0f), this.title.getHeight() / 2.0f, -1, 1.0f);
        canvas.translate(0.0f, this.title.getHeight());
        canvas.translate(0.0f, AndroidUtilities.m1124dp(4.0f));
        this.text.draw(canvas, this.tmpRect.centerX() - (this.text.getWidth() / 2.0f), 0.0f, -1, 1.0f);
        canvas.translate(0.0f, this.text.getHeight());
        canvas.translate(0.0f, AndroidUtilities.m1124dp(2.0f));
        this.groupsArrow.setBounds((int) (this.tmpRect.centerX() - AndroidUtilities.m1124dp(10.0f)), 0, (int) (this.tmpRect.centerX() + AndroidUtilities.m1124dp(10.0f)), AndroidUtilities.m1124dp(20.0f));
        this.groupsArrow.draw(canvas);
        canvas.restore();
    }

    private boolean hasGradientService() {
        Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
        return resourcesProvider != null ? resourcesProvider.hasGradientService() : Theme.hasGradientService();
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.tmpRect.set(rect);
    }
}
