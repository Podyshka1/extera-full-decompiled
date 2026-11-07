package org.telegram.ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import androidx.viewpager.widget.ViewPager;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.ui.ActionBar.Theme;

/* JADX INFO: loaded from: classes7.dex */
public class BottomPagesView extends View {
    private int colorKey;
    private int currentPage;
    private DecelerateInterpolator decelerateInterpolator;
    private int pagesCount;
    private Paint paint;
    private float progress;
    private RectF rect;
    private int scrollPosition;
    private int selectedColorKey;
    private ViewPager viewPager;

    public BottomPagesView(Context context, ViewPager viewPager, int i) {
        super(context);
        this.paint = new Paint(1);
        this.decelerateInterpolator = new DecelerateInterpolator();
        this.rect = new RectF();
        this.colorKey = -1;
        this.selectedColorKey = -1;
        this.viewPager = viewPager;
        this.pagesCount = i;
    }

    public void setPageOffset(int i, float f) {
        this.progress = f;
        this.scrollPosition = i;
        invalidate();
    }

    public void setCurrentPage(int i) {
        this.currentPage = i;
        invalidate();
    }

    public void setColor(int i, int i2) {
        this.colorKey = i;
        this.selectedColorKey = i2;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        AndroidUtilities.dp(5.0f);
        int i = this.colorKey;
        Paint paint = this.paint;
        if (i >= 0) {
            paint.setColor((Theme.getColor(i) & 16777215) | (-1275068416));
        } else {
            paint.setColor(Theme.getCurrentTheme().isDark() ? -11184811 : -4473925);
        }
        this.currentPage = this.viewPager.getCurrentItem();
        for (int i2 = 0; i2 < this.pagesCount; i2++) {
            if (i2 != this.currentPage) {
                this.rect.set(AndroidUtilities.dp(11.0f) * i2, 0.0f, r2 + AndroidUtilities.dp(5.0f), AndroidUtilities.dp(5.0f));
                canvas.drawRoundRect(this.rect, AndroidUtilities.dp(2.5f), AndroidUtilities.dp(2.5f), this.paint);
            }
        }
        int i3 = this.selectedColorKey;
        Paint paint2 = this.paint;
        if (i3 >= 0) {
            paint2.setColor(Theme.getColor(i3));
        } else {
            paint2.setColor(-14509328);
        }
        int iDp = this.currentPage * AndroidUtilities.dp(11.0f);
        if (this.progress != 0.0f) {
            int i4 = this.scrollPosition;
            int i5 = this.currentPage;
            RectF rectF = this.rect;
            if (i4 >= i5) {
                rectF.set(iDp, 0.0f, iDp + AndroidUtilities.dp(5.0f) + (AndroidUtilities.dp(11.0f) * this.progress), AndroidUtilities.dp(5.0f));
            } else {
                rectF.set(iDp - (AndroidUtilities.dp(11.0f) * (1.0f - this.progress)), 0.0f, iDp + AndroidUtilities.dp(5.0f), AndroidUtilities.dp(5.0f));
            }
        } else {
            this.rect.set(iDp, 0.0f, iDp + AndroidUtilities.dp(5.0f), AndroidUtilities.dp(5.0f));
        }
        canvas.drawRoundRect(this.rect, AndroidUtilities.dp(2.5f), AndroidUtilities.dp(2.5f), this.paint);
    }
}
