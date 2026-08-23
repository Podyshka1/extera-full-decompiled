package org.telegram.p029ui.Cells;

import android.content.Context;
import android.graphics.Canvas;
import android.view.View;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.TopicSeparator;

/* JADX INFO: loaded from: classes6.dex */
public abstract class BotAskCell extends View {
    private final TopicSeparator askBotForumSeparator;
    private final BotAskCellDrawable drawable;
    private final Theme.ResourcesProvider resourcesProvider;

    public int getSideMenuWidth() {
        return 0;
    }

    public BotAskCell(Context context, int i, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.resourcesProvider = resourcesProvider;
        this.drawable = new BotAskCellDrawable(context, i, resourcesProvider);
        TopicSeparator topicSeparator = new TopicSeparator(i, this, resourcesProvider, true);
        this.askBotForumSeparator = topicSeparator;
        topicSeparator.setText(_UrlKt.FRAGMENT_ENCODE_SET);
    }

    public void setDialogId(long j) {
        this.drawable.set(j);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(LayoutHelper.measureSpecExactly(View.MeasureSpec.getSize(i)), LayoutHelper.measureSpecExactly(this.drawable.getBubbleHeight() + AndroidUtilities.m1124dp(40.0f)));
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int sideMenuWidth = getSideMenuWidth();
        int measuredWidth = ((getMeasuredWidth() - this.drawable.getBubbleWidth()) + sideMenuWidth) / 2;
        int iM1124dp = AndroidUtilities.m1124dp(34.0f);
        float f = sideMenuWidth;
        applyServiceShaderMatrix(getMeasuredWidth(), getHeight(), f / 2.0f, getTop());
        this.askBotForumSeparator.draw(canvas, getWidth(), f, 0.0f, 1.0f, 1.0f, false);
        BotAskCellDrawable botAskCellDrawable = this.drawable;
        botAskCellDrawable.setBounds(measuredWidth, iM1124dp, botAskCellDrawable.getBubbleWidth() + measuredWidth, this.drawable.getBubbleHeight() + iM1124dp);
        this.drawable.draw(canvas);
    }

    private void applyServiceShaderMatrix(int i, int i2, float f, float f2) {
        Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
        if (resourcesProvider != null) {
            resourcesProvider.applyServiceShaderMatrix(i, i2, f, f2);
        } else {
            Theme.applyServiceShaderMatrix(i, i2, f, f2);
        }
    }
}
