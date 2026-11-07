package org.telegram.ui.Components.Premium;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.widget.ImageView;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import com.exteragram.messenger.preferences.utils.IconShapeHelper;
import java.util.HashMap;
import java.util.Map;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.ui.ActionBar.Theme;

/* JADX INFO: loaded from: classes7.dex */
public abstract class AdaptiveIconImageView extends ImageView {
    private int backgroundOuterPadding;
    private Drawable foreground;
    Path iconPath;
    private boolean loading;
    private int outerPadding;
    Path outlinePath;
    private final Paint placeholderPaint;
    private static final Map<String, Path> shapeCache = new HashMap();
    private static final Map<Integer, Drawable.ConstantState> drawableStateCache = new HashMap();

    public AdaptiveIconImageView(Context context) {
        super(context);
        Paint paint = new Paint(1);
        this.placeholderPaint = paint;
        this.iconPath = new Path();
        this.outlinePath = new Path();
        this.outerPadding = AndroidUtilities.dp(5.0f);
        this.backgroundOuterPadding = AndroidUtilities.dp(42.0f);
        paint.setColor(ColorUtils.setAlphaComponent(Theme.getColor(Theme.key_switchTrack), 85));
    }

    private Drawable loadDrawable(int i) {
        Drawable.ConstantState constantState;
        Map<Integer, Drawable.ConstantState> map = drawableStateCache;
        synchronized (map) {
            constantState = map.get(Integer.valueOf(i));
        }
        if (constantState != null) {
            return constantState.newDrawable(ApplicationLoader.applicationContext.getResources()).mutate();
        }
        Drawable drawable = ContextCompat.getDrawable(ApplicationLoader.applicationContext, i);
        if (drawable == null) {
            return null;
        }
        Drawable.ConstantState constantState2 = drawable.getConstantState();
        if (constantState2 == null) {
            return drawable;
        }
        synchronized (map) {
            map.put(Integer.valueOf(i), constantState2);
        }
        return constantState2.newDrawable(ApplicationLoader.applicationContext.getResources()).mutate();
    }

    public void setForeground(int i) {
        this.foreground = loadDrawable(i);
        invalidate();
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        updatePath();
    }

    public void setPadding(int i) {
        setPadding(i, i, i, i);
    }

    public void setOuterPadding(int i) {
        this.outerPadding = i;
    }

    public void setBackgroundOuterPadding(int i) {
        this.backgroundOuterPadding = i;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        if (!this.iconPath.isEmpty()) {
            canvas.clipPath(this.iconPath);
        }
        canvas.save();
        canvas.scale((this.backgroundOuterPadding / getWidth()) + 1.0f, (this.backgroundOuterPadding / getHeight()) + 1.0f, getWidth() / 2.0f, getHeight() / 2.0f);
        super.draw(canvas);
        canvas.restore();
        if (this.loading && !this.iconPath.isEmpty()) {
            int i = Theme.key_switchTrack;
            this.placeholderPaint.setColor(ColorUtils.blendARGB(ColorUtils.setAlphaComponent(Theme.getColor(i), 56), ColorUtils.setAlphaComponent(Theme.getColor(i), 114), (((float) Math.sin(((double) ((SystemClock.uptimeMillis() % 900) / 900.0f)) * 3.141592653589793d * 2.0d)) * 0.5f) + 0.5f));
            canvas.drawPath(this.iconPath, this.placeholderPaint);
            postInvalidateOnAnimation();
        }
        Drawable drawable = this.foreground;
        if (drawable != null) {
            int i2 = this.outerPadding;
            drawable.setBounds(-i2, -i2, getWidth() + this.outerPadding, getHeight() + this.outerPadding);
            this.foreground.draw(canvas);
        }
    }

    private void updatePath() {
        this.iconPath.rewind();
        this.outlinePath.rewind();
        float width = getWidth() / AndroidUtilities.density;
        if (width <= 0.0f) {
            return;
        }
        float paddingLeft = width - ((getPaddingLeft() / AndroidUtilities.density) * 2.0f);
        float f = width - 4.0f;
        float f2 = (paddingLeft / width) * 16.0f;
        float f3 = (f / width) * 16.0f;
        String str = "i_" + paddingLeft + "_" + f2;
        Map<String, Path> map = shapeCache;
        Path finalIconShapePath = map.get(str);
        if (finalIconShapePath == null) {
            finalIconShapePath = IconShapeHelper.INSTANCE.getFinalIconShapePath(paddingLeft, paddingLeft, f2);
            map.put(str, finalIconShapePath);
        }
        String str2 = "o_" + f + "_" + f3;
        Path finalIconShapePath2 = map.get(str2);
        if (finalIconShapePath2 == null) {
            finalIconShapePath2 = IconShapeHelper.INSTANCE.getFinalIconShapePath(f, f, f3);
            map.put(str2, finalIconShapePath2);
        }
        Matrix matrix = new Matrix();
        matrix.setTranslate(getPaddingLeft(), getPaddingTop());
        finalIconShapePath.transform(matrix, this.iconPath);
        matrix.setTranslate(AndroidUtilities.dp(2.0f), AndroidUtilities.dp(2.0f));
        finalIconShapePath2.transform(matrix, this.outlinePath);
    }
}
