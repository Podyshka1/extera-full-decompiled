package org.telegram.ui.ActionBar;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.NinePatchDrawable;
import androidx.core.graphics.ColorUtils;
import com.exteragram.messenger.ExteraConfig;
import java.lang.reflect.Array;
import java.nio.ByteBuffer;
import java.util.Arrays;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.SharedConfig;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.MotionBackgroundDrawable;
import org.telegram.ui.Components.blur3.utils.NinePatchBuilder;

/* JADX INFO: loaded from: classes6.dex */
public class MessageDrawable extends Drawable {
    public static MotionBackgroundDrawable[] motionBackground = new MotionBackgroundDrawable[3];
    private int alpha;
    private Drawable[][] backgroundDrawable;
    private int[][] backgroundDrawableColor;
    private Rect backupRect;
    private boolean botButtonsBottom;
    private int colorAlpha;
    private Bitmap crosfadeFromBitmap;
    private Shader crosfadeFromBitmapShader;
    public MessageDrawable crossfadeFromDrawable;
    public float crossfadeProgress;
    private boolean currentAnimateGradient;
    private int[][] currentBackgroundDrawableRadius;
    private int currentBackgroundHeight;
    private int currentColor;
    private int currentGradientColor1;
    private int currentGradientColor2;
    private int currentGradientColor3;
    private int[] currentShadowDrawableRadius;
    private int currentType;
    private boolean drawFullBubble;
    private boolean forceRemoveMessageTail;
    private Shader gradientShader;
    private boolean isBottomNear;
    public boolean isCrossfadeBackground;
    private final boolean isOut;
    public boolean isSelected;
    private boolean isTopNear;
    public boolean lastDrawWithShadow;
    private Matrix matrix;
    private int overrideRoundRadius;
    private float overrideRounding;
    private Paint paint;
    private Path path;
    PathDrawParams pathDrawCacheParams;
    private RectF rect;
    private Theme.ResourcesProvider resourcesProvider;
    private Paint selectedPaint;
    private Drawable[] shadowDrawable;
    private Bitmap[] shadowDrawableBitmap;
    private int[] shadowDrawableColor;
    public boolean themePreview;
    private int topY;
    Drawable transitionDrawable;
    int transitionDrawableColor;

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    public Drawable getShadowDrawable() {
        return null;
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(int i, PorterDuff.Mode mode) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    public MessageDrawable(int i, boolean z, boolean z2) {
        this(i, z, z2, null);
    }

    public MessageDrawable(int i, boolean z, boolean z2, Theme.ResourcesProvider resourcesProvider) {
        this.paint = new Paint(1);
        this.colorAlpha = 255;
        this.rect = new RectF();
        this.matrix = new Matrix();
        this.backupRect = new Rect();
        this.currentShadowDrawableRadius = new int[]{-1, -1, -1, -1};
        this.shadowDrawableBitmap = new Bitmap[4];
        this.shadowDrawable = new Drawable[4];
        this.shadowDrawableColor = new int[]{-1, -1, -1, -1};
        this.currentBackgroundDrawableRadius = new int[][]{new int[]{-1, -1, -1, -1}, new int[]{-1, -1, -1, -1}, new int[]{-1, -1, -1, -1}, new int[]{-1, -1, -1, -1}};
        this.backgroundDrawable = (Drawable[][]) Array.newInstance((Class<?>) Drawable.class, 4, 4);
        this.backgroundDrawableColor = new int[][]{new int[]{-1, -1, -1, -1}, new int[]{-1, -1, -1, -1}, new int[]{-1, -1, -1, -1}, new int[]{-1, -1, -1, -1}};
        this.resourcesProvider = resourcesProvider;
        this.isOut = z;
        this.currentType = i;
        this.isSelected = z2;
        this.path = new Path();
        this.selectedPaint = new Paint(1);
        this.alpha = 255;
    }

    public boolean hasGradient() {
        return this.gradientShader != null && Theme.shouldDrawGradientIcons;
    }

    public void applyMatrixScale() {
        Bitmap bitmap;
        if (this.gradientShader instanceof BitmapShader) {
            char c2 = 2;
            if (this.isCrossfadeBackground && (bitmap = this.crosfadeFromBitmap) != null) {
                char c3 = this.currentType == 2 ? (char) 1 : (char) 0;
                float fMin = 1.0f / Math.min(bitmap.getWidth() / motionBackground[c3].getBounds().width(), this.crosfadeFromBitmap.getHeight() / motionBackground[c3].getBounds().height());
                this.matrix.postScale(fMin, fMin);
            } else {
                if (!this.themePreview) {
                    c2 = this.currentType == 2 ? (char) 1 : (char) 0;
                }
                Bitmap bitmap2 = motionBackground[c2].getBitmap();
                float fMin2 = 1.0f / Math.min(bitmap2.getWidth() / motionBackground[c2].getBounds().width(), bitmap2.getHeight() / motionBackground[c2].getBounds().height());
                this.matrix.postScale(fMin2, fMin2);
            }
        }
    }

    public Shader getGradientShader() {
        return this.gradientShader;
    }

    public Matrix getMatrix() {
        return this.matrix;
    }

    public int getColor(int i) {
        if (this.currentType == 2) {
            return Theme.getColor(i);
        }
        Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
        if (resourcesProvider != null) {
            return resourcesProvider.getColor(i);
        }
        return Theme.getColor(i);
    }

    public int getCurrentColor(int i) {
        if (this.currentType == 2) {
            return Theme.getColor(i);
        }
        Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
        return resourcesProvider != null ? resourcesProvider.getCurrentColor(i) : Theme.getCurrentColor(i);
    }

    public void setBotButtonsBottom(boolean z) {
        this.botButtonsBottom = z;
    }

    public void setTop(int i, int i2, int i3, boolean z, boolean z2) {
        setTop(i, i2, i3, i3, 0, 0, z, z2);
    }

    public void setTop(int i, int i2, int i3, int i4, int i5, int i6, boolean z, boolean z2) {
        int i7;
        int i8;
        int color;
        boolean z3;
        int i9;
        int i10;
        int i11;
        char c2;
        MotionBackgroundDrawable motionBackgroundDrawable;
        MessageDrawable messageDrawable = this.crossfadeFromDrawable;
        if (messageDrawable != null) {
            i7 = i3;
            i8 = i5;
            messageDrawable.setTop(i, i2, i7, i4, i8, i6, z, z2);
        } else {
            i7 = i3;
            i8 = i5;
        }
        boolean z4 = this.isOut;
        boolean z5 = this.isSelected;
        if (z4) {
            color = getColor(z5 ? Theme.key_chat_outBubbleSelected : Theme.key_chat_outBubble);
            int currentColor = getCurrentColor(Theme.key_chat_outBubbleGradient1);
            int currentColor2 = getCurrentColor(Theme.key_chat_outBubbleGradient2);
            int currentColor3 = getCurrentColor(Theme.key_chat_outBubbleGradient3);
            i9 = currentColor;
            z3 = getCurrentColor(Theme.key_chat_outBubbleGradientAnimated) != 0;
            i10 = currentColor2;
            i11 = currentColor3;
        } else {
            color = getColor(z5 ? Theme.key_chat_inBubbleSelected : Theme.key_chat_inBubble);
            z3 = false;
            i9 = 0;
            i10 = 0;
            i11 = 0;
        }
        if (i9 != 0) {
            color = getColor(Theme.key_chat_outBubble);
        }
        int i12 = color;
        if (this.themePreview) {
            c2 = 2;
        } else {
            c2 = this.currentType == 2 ? (char) 1 : (char) 0;
        }
        if (!this.isCrossfadeBackground && i10 != 0 && z3 && (motionBackgroundDrawable = motionBackground[c2]) != null) {
            int[] colors = motionBackgroundDrawable.getColors();
            this.currentColor = colors[0];
            this.currentGradientColor1 = colors[1];
            this.currentGradientColor2 = colors[2];
            this.currentGradientColor3 = colors[3];
        }
        if (this.isCrossfadeBackground && i10 != 0 && z3) {
            if (i7 != this.currentBackgroundHeight || this.crosfadeFromBitmapShader == null || this.currentColor != i12 || this.currentGradientColor1 != i9 || this.currentGradientColor2 != i10 || this.currentGradientColor3 != i11 || this.currentAnimateGradient != z3) {
                if (this.crosfadeFromBitmap == null) {
                    Bitmap bitmapCreateBitmap = Bitmap.createBitmap(60, 80, Bitmap.Config.ARGB_8888);
                    this.crosfadeFromBitmap = bitmapCreateBitmap;
                    bitmapCreateBitmap.setHasAlpha(false);
                    Bitmap bitmap = this.crosfadeFromBitmap;
                    Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                    this.crosfadeFromBitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
                }
                MotionBackgroundDrawable[] motionBackgroundDrawableArr = motionBackground;
                if (motionBackgroundDrawableArr[c2] == null) {
                    motionBackgroundDrawableArr[c2] = new MotionBackgroundDrawable();
                    if (this.currentType != 2) {
                        motionBackground[c2].setPostInvalidateParent(true);
                    }
                    motionBackground[c2].setRoundRadius(dp(1.0f));
                }
                motionBackground[c2].setColors(i12, i9, i10, i11, this.crosfadeFromBitmap);
                this.crosfadeFromBitmapShader.setLocalMatrix(this.matrix);
            }
            Shader shader = this.crosfadeFromBitmapShader;
            this.gradientShader = shader;
            this.paint.setShader(shader);
            this.paint.setColor(-1);
            this.currentColor = i12;
            this.currentAnimateGradient = z3;
            this.currentGradientColor1 = i9;
            this.currentGradientColor2 = i10;
            this.currentGradientColor3 = i11;
        } else if (i9 != 0 && (this.gradientShader == null || i7 != this.currentBackgroundHeight || this.currentColor != i12 || this.currentGradientColor1 != i9 || this.currentGradientColor2 != i10 || this.currentGradientColor3 != i11 || this.currentAnimateGradient != z3)) {
            if (i10 != 0 && z3) {
                MotionBackgroundDrawable[] motionBackgroundDrawableArr2 = motionBackground;
                if (motionBackgroundDrawableArr2[c2] == null) {
                    motionBackgroundDrawableArr2[c2] = new MotionBackgroundDrawable();
                    if (this.currentType != 2) {
                        motionBackground[c2].setPostInvalidateParent(true);
                    }
                    motionBackground[c2].setRoundRadius(dp(1.0f));
                }
                motionBackground[c2].setColors(i12, i9, i10, i11);
                this.gradientShader = motionBackground[c2].getBitmapShader();
            } else if (i10 == 0) {
                this.gradientShader = new LinearGradient(0.0f, i8, 0.0f, i7, new int[]{i9, i12}, (float[]) null, Shader.TileMode.CLAMP);
            } else if (i11 != 0) {
                this.gradientShader = new LinearGradient(0.0f, i8, 0.0f, i7, new int[]{i11, i10, i9, i12}, (float[]) null, Shader.TileMode.CLAMP);
            } else {
                this.gradientShader = new LinearGradient(0.0f, i8, 0.0f, i7, new int[]{i10, i9, i12}, (float[]) null, Shader.TileMode.CLAMP);
            }
            this.paint.setShader(this.gradientShader);
            this.currentColor = i12;
            this.currentAnimateGradient = z3;
            this.currentGradientColor1 = i9;
            this.currentGradientColor2 = i10;
            this.currentGradientColor3 = i11;
            this.paint.setColor(-1);
        } else if (i9 == 0) {
            if (this.gradientShader != null) {
                this.gradientShader = null;
                this.paint.setShader(null);
            }
            this.colorAlpha = Color.alpha(i12);
            this.paint.setColor(i12);
        }
        if (this.gradientShader instanceof BitmapShader) {
            motionBackground[c2].setBounds(0, i8, i2, i7 - i4);
        }
        this.currentBackgroundHeight = i7;
        this.topY = i - (this.gradientShader instanceof BitmapShader ? i4 : 0);
        this.isTopNear = z;
        this.isBottomNear = z2;
    }

    public int getTopY() {
        return this.topY;
    }

    private int dp(float f) {
        if (this.currentType == 2) {
            return (int) Math.ceil(f * 3.0f);
        }
        return AndroidUtilities.dp(f);
    }

    public Paint getPaint() {
        return this.paint;
    }

    public Drawable[] getShadowDrawables() {
        return this.shadowDrawable;
    }

    public Drawable getBackgroundDrawable() {
        char c2;
        int color;
        int iDp = this.overrideRoundRadius;
        if (iDp == 0) {
            iDp = this.overrideRounding > 0.0f ? 0 : dp(SharedConfig.bubbleRadius);
        }
        boolean z = this.isTopNear;
        char c3 = 3;
        if (z && this.isBottomNear) {
            c2 = 3;
        } else if (z) {
            c2 = 2;
        } else {
            c2 = this.isBottomNear ? (char) 1 : (char) 0;
        }
        boolean z2 = this.isSelected;
        if (!z2 || !this.botButtonsBottom) {
            if (z2) {
                c3 = 1;
            } else {
                c3 = this.botButtonsBottom ? (char) 2 : (char) 0;
            }
        }
        boolean z3 = this.isOut;
        if (z2) {
            color = getColor(z3 ? Theme.key_chat_outBubbleSelected : Theme.key_chat_inBubbleSelected);
        } else {
            color = getColor(z3 ? Theme.key_chat_outBubble : Theme.key_chat_inBubble);
        }
        getColor(this.isOut ? Theme.key_chat_outBubbleShadow : Theme.key_chat_inBubbleShadow);
        if (this.lastDrawWithShadow || this.currentBackgroundDrawableRadius[c3][c2] != iDp || this.backgroundDrawableColor[c3][c2] != color) {
            this.currentBackgroundDrawableRadius[c3][c2] = iDp;
            try {
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(dp(50.0f), dp(40.0f), Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(bitmapCreateBitmap);
                this.backupRect.set(getBounds());
                Paint paint = new Paint(1);
                paint.setColor(color);
                setBounds(0, 0, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight());
                draw(canvas, paint);
                this.backgroundDrawable[c3][c2] = new NinePatchDrawable(bitmapCreateBitmap, getByteBuffer((bitmapCreateBitmap.getWidth() / 2) - 1, (bitmapCreateBitmap.getWidth() / 2) + 1, (bitmapCreateBitmap.getHeight() / 2) - 1, (bitmapCreateBitmap.getHeight() / 2) + 1, color).array(), new Rect(), null);
                setBounds(this.backupRect);
            } catch (Throwable unused) {
            }
        }
        this.lastDrawWithShadow = false;
        this.backgroundDrawableColor[c3][c2] = color;
        return this.backgroundDrawable[c3][c2];
    }

    public Drawable getTransitionDrawable(int i) {
        if (this.transitionDrawable == null) {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(dp(50.0f), dp(40.0f), Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            this.backupRect.set(getBounds());
            Paint paint = new Paint(1);
            paint.setColor(-1);
            setBounds(0, 0, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight());
            draw(canvas, paint);
            this.transitionDrawable = new NinePatchDrawable(bitmapCreateBitmap, getByteBuffer((bitmapCreateBitmap.getWidth() / 2) - 1, (bitmapCreateBitmap.getWidth() / 2) + 1, (bitmapCreateBitmap.getHeight() / 2) - 1, (bitmapCreateBitmap.getHeight() / 2) + 1, -1).array(), new Rect(), null);
            setBounds(this.backupRect);
        }
        if (this.transitionDrawableColor != i) {
            this.transitionDrawableColor = i;
            this.transitionDrawable.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.MULTIPLY));
        }
        return this.transitionDrawable;
    }

    public MotionBackgroundDrawable getMotionBackgroundDrawable() {
        if (this.themePreview) {
            return motionBackground[2];
        }
        return motionBackground[this.currentType == 2 ? (char) 1 : (char) 0];
    }

    public void finalize() throws Throwable {
        super.finalize();
        for (Bitmap bitmap : this.shadowDrawableBitmap) {
            if (bitmap != null) {
                bitmap.recycle();
            }
        }
        Arrays.fill(this.shadowDrawableBitmap, (Object) null);
        Arrays.fill(this.shadowDrawable, (Object) null);
        Arrays.fill(this.currentShadowDrawableRadius, -1);
    }

    private static ByteBuffer getByteBuffer(int i, int i2, int i3, int i4, int i5) {
        return NinePatchBuilder.createNinePatchChunk(i, i2, i3, i4, 0, 0, 0, 0, i5);
    }

    public void drawCached(Canvas canvas, PathDrawParams pathDrawParams, Paint paint) {
        this.pathDrawCacheParams = pathDrawParams;
        MessageDrawable messageDrawable = this.crossfadeFromDrawable;
        if (messageDrawable != null) {
            messageDrawable.pathDrawCacheParams = pathDrawParams;
        }
        draw(canvas, paint);
        this.pathDrawCacheParams = null;
        MessageDrawable messageDrawable2 = this.crossfadeFromDrawable;
        if (messageDrawable2 != null) {
            messageDrawable2.pathDrawCacheParams = null;
        }
    }

    public void drawCached(Canvas canvas, PathDrawParams pathDrawParams, Paint paint, boolean z) {
        this.forceRemoveMessageTail = z;
        try {
            drawCached(canvas, pathDrawParams, paint);
        } finally {
            this.forceRemoveMessageTail = false;
        }
    }

    public void drawCached(Canvas canvas, PathDrawParams pathDrawParams) {
        drawCached(canvas, pathDrawParams, (Paint) null);
    }

    public void drawCached(Canvas canvas, PathDrawParams pathDrawParams, boolean z) {
        drawCached(canvas, pathDrawParams, null, z);
    }

    public void draw(Canvas canvas, boolean z) {
        this.forceRemoveMessageTail = z;
        try {
            draw(canvas);
        } finally {
            this.forceRemoveMessageTail = false;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        MessageDrawable messageDrawable = this.crossfadeFromDrawable;
        if (messageDrawable != null) {
            messageDrawable.draw(canvas, this.forceRemoveMessageTail);
            setAlpha((int) (this.crossfadeProgress * 255.0f));
            draw(canvas, (Paint) null);
            setAlpha(255);
            return;
        }
        draw(canvas, (Paint) null);
    }

    public void draw(Canvas canvas, Paint paint) {
        int iDp;
        int iDp2;
        int i;
        int i2;
        boolean z;
        int i3;
        boolean z2;
        int i4;
        int i5;
        Path path;
        boolean zInvalidatePath;
        Path path2;
        Drawable backgroundDrawable;
        Rect bounds = getBounds();
        if (!shouldRemoveMessageTail() && paint == null && this.gradientShader == null && this.overrideRoundRadius == 0 && this.overrideRounding <= 0.0f && (backgroundDrawable = getBackgroundDrawable()) != null) {
            backgroundDrawable.setBounds(bounds);
            backgroundDrawable.draw(canvas);
            return;
        }
        int iDp3 = dp(2.0f);
        int i6 = this.overrideRoundRadius;
        if (i6 != 0) {
            i2 = i6;
            i = i2;
        } else {
            if (this.overrideRounding > 0.0f) {
                iDp = AndroidUtilities.lerp(dp(SharedConfig.bubbleRadius), Math.min(bounds.width(), bounds.height()) / 2, this.overrideRounding);
                iDp2 = AndroidUtilities.lerp(dp(Math.min(6, SharedConfig.bubbleRadius)), Math.min(bounds.width(), bounds.height()) / 2, this.overrideRounding);
            } else if (this.currentType == 2) {
                iDp = dp(6.0f);
                iDp2 = dp(6.0f);
            } else {
                iDp = dp(SharedConfig.bubbleRadius);
                iDp2 = dp(Math.min(6, SharedConfig.bubbleRadius));
            }
            i = iDp2;
            i2 = iDp;
        }
        int iDp4 = dp(6.0f);
        Paint paint2 = paint == null ? this.paint : paint;
        if (paint == null && this.gradientShader != null) {
            this.matrix.reset();
            applyMatrixScale();
            this.matrix.postTranslate(0.0f, -this.topY);
            this.gradientShader.setLocalMatrix(this.matrix);
        }
        int iMax = Math.max(bounds.top, 0);
        if (this.pathDrawCacheParams != null) {
            bounds.height();
            int i7 = this.currentBackgroundHeight;
        }
        PathDrawParams pathDrawParams = this.pathDrawCacheParams;
        if (pathDrawParams != null) {
            path = pathDrawParams.path;
            zInvalidatePath = pathDrawParams.invalidatePath(bounds, true, true, i2, i, iDp4, shouldRemoveMessageTail());
            z = true;
            i3 = iDp3;
            z2 = true;
            i4 = i2;
            i5 = iDp4;
        } else {
            z = true;
            i3 = iDp3;
            z2 = true;
            i4 = i2;
            i5 = iDp4;
            path = this.path;
            zInvalidatePath = true;
        }
        if (zInvalidatePath || this.overrideRoundRadius != 0) {
            path2 = path;
            generatePath(path2, bounds, i3, i4, i5, i, iMax, z, z2, paint != null);
        } else {
            path2 = path;
        }
        if (paint == null && this.gradientShader == null) {
            int alpha = this.paint.getAlpha();
            this.paint.setAlpha((this.colorAlpha * this.alpha) / 255);
            canvas.drawPath(path2, this.paint);
            this.paint.setAlpha(alpha);
        } else {
            canvas.drawPath(path2, paint2);
        }
        if (this.gradientShader != null && this.isSelected && paint == null) {
            this.selectedPaint.setColor(ColorUtils.setAlphaComponent(getColor(Theme.key_chat_outBubbleGradientSelectedOverlay), (int) ((Color.alpha(r2) * this.alpha) / 255.0f)));
            canvas.drawPath(path2, this.selectedPaint);
        }
    }

    public Path makePath() {
        return makePath(this.pathDrawCacheParams);
    }

    public Path makePath(PathDrawParams pathDrawParams) {
        int iDp;
        int iDp2;
        int i;
        int i2;
        boolean z;
        boolean z2;
        Path path;
        Rect bounds = getBounds();
        int iDp3 = dp(2.0f);
        int i3 = this.overrideRoundRadius;
        if (i3 != 0) {
            i = i3;
            i2 = i;
        } else {
            if (this.overrideRounding > 0.0f) {
                iDp = AndroidUtilities.lerp(dp(SharedConfig.bubbleRadius), Math.min(bounds.width(), bounds.height()) / 2, this.overrideRounding);
                iDp2 = AndroidUtilities.lerp(dp(Math.min(6, SharedConfig.bubbleRadius)), Math.min(bounds.width(), bounds.height()) / 2, this.overrideRounding);
            } else if (this.currentType == 2) {
                iDp = dp(6.0f);
                iDp2 = dp(6.0f);
            } else {
                iDp = dp(SharedConfig.bubbleRadius);
                iDp2 = dp(Math.min(6, SharedConfig.bubbleRadius));
            }
            i = iDp;
            i2 = iDp2;
        }
        int iDp4 = dp(6.0f);
        int iMax = Math.max(bounds.top, 0);
        boolean zInvalidatePath = true;
        if (pathDrawParams == null || bounds.height() >= this.currentBackgroundHeight) {
            int i4 = this.currentType;
            int i5 = this.topY;
            boolean z3 = i4 != 1 ? (i5 + bounds.bottom) - i < this.currentBackgroundHeight : (i5 + bounds.bottom) - (iDp4 * 2) < this.currentBackgroundHeight;
            z = this.topY + (i * 2) >= 0;
            z2 = z3;
        } else {
            z2 = true;
            z = true;
        }
        if (pathDrawParams != null) {
            path = pathDrawParams.path;
            zInvalidatePath = pathDrawParams.invalidatePath(bounds, z2, z, i, i2, iDp4, shouldRemoveMessageTail());
        } else {
            path = this.path;
        }
        if (!zInvalidatePath && this.overrideRoundRadius == 0) {
            return path;
        }
        Path path2 = path;
        generatePath(path2, bounds, iDp3, i, iDp4, i2, iMax, z2, z, true);
        return path2;
    }

    private void generatePath(Path path, Rect rect, int i, int i2, int i3, int i4, int i5, boolean z, boolean z2, boolean z3) {
        path.rewind();
        int iHeight = (rect.height() - i) >> 1;
        int i6 = i2;
        if (i6 > iHeight) {
            i6 = iHeight;
        }
        boolean z4 = this.isOut;
        boolean z5 = this.drawFullBubble;
        if (z4) {
            if (z5 || this.currentType == 2 || z3 || z) {
                int i7 = this.botButtonsBottom ? i4 : i6;
                if (this.currentType == 1 || shouldRemoveMessageTail()) {
                    path.moveTo((rect.right - dp(8.0f)) - i7, rect.bottom - i);
                } else {
                    path.moveTo(rect.right - dp(2.6f), rect.bottom - i);
                }
                path.lineTo(rect.left + i + i7, rect.bottom - i);
                RectF rectF = this.rect;
                int i8 = rect.left;
                int i9 = rect.bottom;
                int i10 = i7 * 2;
                rectF.set(i8 + i, (i9 - i) - i10, i8 + i + i10, i9 - i);
                path.arcTo(this.rect, 90.0f, 90.0f, false);
            } else {
                path.moveTo(rect.right - dp(8.0f), (i5 - this.topY) + this.currentBackgroundHeight);
                path.lineTo(rect.left + i, (i5 - this.topY) + this.currentBackgroundHeight);
            }
            if (this.drawFullBubble || this.currentType == 2 || z3 || z2) {
                path.lineTo(rect.left + i, rect.top + i + i6);
                RectF rectF2 = this.rect;
                int i11 = rect.left;
                int i12 = rect.top;
                int i13 = i6 * 2;
                rectF2.set(i11 + i, i12 + i, i11 + i + i13, i12 + i + i13);
                path.arcTo(this.rect, 180.0f, 90.0f, false);
                int i14 = this.isTopNear ? i4 : i6;
                int i15 = this.currentType;
                int i16 = rect.right;
                if (i15 == 1) {
                    path.lineTo((i16 - i) - i14, rect.top + i);
                    RectF rectF3 = this.rect;
                    int i17 = rect.right;
                    int i18 = i14 * 2;
                    int i19 = rect.top;
                    rectF3.set((i17 - i) - i18, i19 + i, i17 - i, i19 + i + i18);
                } else {
                    path.lineTo((i16 - dp(8.0f)) - i14, rect.top + i);
                    int i20 = i14 * 2;
                    this.rect.set((rect.right - dp(8.0f)) - i20, rect.top + i, rect.right - dp(8.0f), rect.top + i + i20);
                }
                path.arcTo(this.rect, 270.0f, 90.0f, false);
            } else {
                path.lineTo(rect.left + i, (i5 - this.topY) - dp(2.0f));
                int i21 = this.currentType;
                int i22 = rect.right;
                if (i21 == 1) {
                    path.lineTo(i22 - i, (i5 - this.topY) - dp(2.0f));
                } else {
                    path.lineTo(i22 - dp(8.0f), (i5 - this.topY) - dp(2.0f));
                }
            }
            int i23 = this.currentType;
            if (i23 == 1) {
                if (z3 || z) {
                    if (this.isBottomNear) {
                        i6 = i4;
                    }
                    path.lineTo(rect.right - i, (rect.bottom - i) - i6);
                    RectF rectF4 = this.rect;
                    int i24 = rect.right;
                    int i25 = i6 * 2;
                    int i26 = rect.bottom;
                    rectF4.set((i24 - i) - i25, (i26 - i) - i25, i24 - i, i26 - i);
                    path.arcTo(this.rect, 0.0f, 90.0f, false);
                } else {
                    path.lineTo(rect.right - i, (i5 - this.topY) + this.currentBackgroundHeight);
                }
            } else if (this.drawFullBubble || i23 == 2 || z3 || z) {
                if (shouldRemoveMessageTail()) {
                    if (this.isBottomNear) {
                        i6 = i4;
                    }
                    path.lineTo(rect.right - dp(8.0f), (rect.bottom - i) - i6);
                    int i27 = i6 * 2;
                    this.rect.set((rect.right - dp(8.0f)) - i27, (rect.bottom - i) - i27, rect.right - dp(8.0f), rect.bottom - i);
                    path.arcTo(this.rect, 0.0f, 90.0f, false);
                } else {
                    path.lineTo(rect.right - dp(8.0f), ((rect.bottom - i) - i3) - dp(3.0f));
                    int i28 = i3 * 2;
                    this.rect.set(rect.right - dp(8.0f), ((rect.bottom - i) - i28) - dp(9.0f), (rect.right - dp(7.0f)) + i28, (rect.bottom - i) - dp(1.0f));
                    path.arcTo(this.rect, 180.0f, -83.0f, false);
                }
            } else {
                path.lineTo(rect.right - dp(8.0f), (i5 - this.topY) + this.currentBackgroundHeight);
            }
        } else {
            if (z5 || this.currentType == 2 || z3 || z) {
                int i29 = this.botButtonsBottom ? i4 : i6;
                if (this.currentType == 1 || shouldRemoveMessageTail()) {
                    path.moveTo(rect.left + dp(8.0f) + i29, rect.bottom - i);
                } else {
                    path.moveTo(rect.left + dp(2.6f), rect.bottom - i);
                }
                path.lineTo((rect.right - i) - i29, rect.bottom - i);
                RectF rectF5 = this.rect;
                int i30 = rect.right;
                int i31 = i29 * 2;
                int i32 = rect.bottom;
                rectF5.set((i30 - i) - i31, (i32 - i) - i31, i30 - i, i32 - i);
                path.arcTo(this.rect, 90.0f, -90.0f, false);
            } else {
                path.moveTo(rect.left + dp(8.0f), (i5 - this.topY) + this.currentBackgroundHeight);
                path.lineTo(rect.right - i, (i5 - this.topY) + this.currentBackgroundHeight);
            }
            if (this.drawFullBubble || this.currentType == 2 || z3 || z2) {
                path.lineTo(rect.right - i, rect.top + i + i6);
                RectF rectF6 = this.rect;
                int i33 = rect.right;
                int i34 = i6 * 2;
                int i35 = rect.top;
                rectF6.set((i33 - i) - i34, i35 + i, i33 - i, i35 + i + i34);
                path.arcTo(this.rect, 0.0f, -90.0f, false);
                int i36 = this.isTopNear ? i4 : i6;
                int i37 = this.currentType;
                int i38 = rect.left;
                if (i37 == 1) {
                    path.lineTo(i38 + i + i36, rect.top + i);
                    RectF rectF7 = this.rect;
                    int i39 = rect.left;
                    int i40 = rect.top;
                    int i41 = i36 * 2;
                    rectF7.set(i39 + i, i40 + i, i39 + i + i41, i40 + i + i41);
                } else {
                    path.lineTo(i38 + dp(8.0f) + i36, rect.top + i);
                    int i42 = i36 * 2;
                    this.rect.set(rect.left + dp(8.0f), rect.top + i, rect.left + dp(8.0f) + i42, rect.top + i + i42);
                }
                path.arcTo(this.rect, 270.0f, -90.0f, false);
            } else {
                path.lineTo(rect.right - i, (i5 - this.topY) - dp(2.0f));
                int i43 = this.currentType;
                int i44 = rect.left;
                if (i43 == 1) {
                    path.lineTo(i44 + i, (i5 - this.topY) - dp(2.0f));
                } else {
                    path.lineTo(i44 + dp(8.0f), (i5 - this.topY) - dp(2.0f));
                }
            }
            int i45 = this.currentType;
            if (i45 == 1) {
                if (z3 || z) {
                    if (this.isBottomNear || this.botButtonsBottom) {
                        i6 = i4;
                    }
                    path.lineTo(rect.left + i, (rect.bottom - i) - i6);
                    RectF rectF8 = this.rect;
                    int i46 = rect.left;
                    int i47 = rect.bottom;
                    int i48 = i6 * 2;
                    rectF8.set(i46 + i, (i47 - i) - i48, i46 + i + i48, i47 - i);
                    path.arcTo(this.rect, 180.0f, -90.0f, false);
                } else {
                    path.lineTo(rect.left + i, (i5 - this.topY) + this.currentBackgroundHeight);
                }
            } else if (this.drawFullBubble || i45 == 2 || z3 || z) {
                if (shouldRemoveMessageTail()) {
                    if (this.isBottomNear || this.botButtonsBottom) {
                        i6 = i4;
                    }
                    path.lineTo(rect.left + dp(8.0f), (rect.bottom - i) - i6);
                    int i49 = i6 * 2;
                    this.rect.set(rect.left + dp(8.0f), (rect.bottom - i) - i49, rect.left + dp(8.0f) + i49, rect.bottom - i);
                    path.arcTo(this.rect, 180.0f, -90.0f, false);
                } else {
                    path.lineTo(rect.left + dp(8.0f), ((rect.bottom - i) - i3) - dp(3.0f));
                    int i50 = i3 * 2;
                    this.rect.set((rect.left + dp(7.0f)) - i50, ((rect.bottom - i) - i50) - dp(9.0f), rect.left + dp(8.0f), (rect.bottom - i) - dp(1.0f));
                    path.arcTo(this.rect, 0.0f, 83.0f, false);
                }
            } else {
                path.lineTo(rect.left + dp(8.0f), (i5 - this.topY) + this.currentBackgroundHeight);
            }
        }
        path.close();
    }

    private boolean shouldRemoveMessageTail() {
        return this.forceRemoveMessageTail || ExteraConfig.getRemoveMessageTail();
    }

    public void setDrawFullBubble(boolean z) {
        this.drawFullBubble = z;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (this.alpha != i || this.paint.getAlpha() != i) {
            this.alpha = i;
            this.paint.setAlpha(i);
            if (this.isOut) {
                this.selectedPaint.setAlpha((int) (Color.alpha(getColor(Theme.key_chat_outBubbleGradientSelectedOverlay)) * (i / 255.0f)));
            }
        }
        if (this.gradientShader == null) {
            Drawable backgroundDrawable = getBackgroundDrawable();
            if (backgroundDrawable.getAlpha() != i) {
                backgroundDrawable.setAlpha(i);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setBounds(int i, int i2, int i3, int i4) {
        super.setBounds(i, i2, i3, i4);
        MessageDrawable messageDrawable = this.crossfadeFromDrawable;
        if (messageDrawable != null) {
            messageDrawable.setBounds(i, i2, i3, i4);
        }
    }

    public void setRoundRadius(int i) {
        this.overrideRoundRadius = i;
    }

    public void setRoundingRadius(float f) {
        this.overrideRounding = f;
    }

    public void setResourceProvider(Theme.ResourcesProvider resourcesProvider) {
        this.resourcesProvider = resourcesProvider;
    }

    public static class PathDrawParams {
        boolean lastDrawFullBottom;
        boolean lastDrawFullTop;
        int lastNearRad;
        int lastRad;
        boolean lastRemoveMessageTail;
        int lastSmallRad;
        Path path = new Path();
        Rect lastRect = new Rect();

        /* JADX WARN: Removed duplicated region for block: B:28:0x0041  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public boolean invalidatePath(Rect rect, boolean z, boolean z2, int i, int i2, int i3, boolean z3) {
            boolean z4;
            if (!this.lastRect.isEmpty()) {
                Rect rect2 = this.lastRect;
                z4 = (rect2.top == rect.top && rect2.bottom == rect.bottom && rect2.right == rect.right && rect2.left == rect.left && this.lastDrawFullTop == z2 && this.lastDrawFullBottom == z && this.lastRad == i && this.lastNearRad == i2 && this.lastSmallRad == i3 && this.lastRemoveMessageTail == z3 && z2 && z) ? false : true;
            }
            this.lastDrawFullTop = z2;
            this.lastDrawFullBottom = z;
            this.lastRad = i;
            this.lastNearRad = i2;
            this.lastSmallRad = i3;
            this.lastRemoveMessageTail = z3;
            this.lastRect.set(rect);
            return z4;
        }

        public Path getPath() {
            return this.path;
        }
    }
}
