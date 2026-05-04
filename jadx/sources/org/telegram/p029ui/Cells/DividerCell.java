package org.telegram.p029ui.Cells;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.View;
import androidx.core.graphics.ColorUtils;
import com.exteragram.messenger.ExteraConfig;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p029ui.ActionBar.Theme;

/* JADX INFO: loaded from: classes6.dex */
public class DividerCell extends View {
    private boolean forceDarkTheme;
    private Paint paint;
    private Theme.ResourcesProvider resourcesProvider;

    public DividerCell(Context context) {
        this(context, null);
    }

    public DividerCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.paint = new Paint();
        this.resourcesProvider = resourcesProvider;
        setPadding(0, AndroidUtilities.m1124dp(8.0f), 0, AndroidUtilities.m1124dp(8.0f));
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(View.MeasureSpec.getSize(i), getPaddingTop() + getPaddingBottom() + 1);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.forceDarkTheme) {
            this.paint.setColor(ColorUtils.blendARGB(-16777216, Theme.getColor(Theme.key_voipgroup_dialogBackground, this.resourcesProvider), 0.2f));
        } else {
            this.paint.setColor(Theme.getColor(Theme.key_divider, this.resourcesProvider));
        }
        if (ExteraConfig.disableDividers) {
            return;
        }
        canvas.drawLine(getPaddingLeft(), getPaddingTop(), getWidth() - getPaddingRight(), getPaddingTop(), this.paint);
    }

    public void setForceDarkTheme(boolean z) {
        this.forceDarkTheme = z;
    }
}
