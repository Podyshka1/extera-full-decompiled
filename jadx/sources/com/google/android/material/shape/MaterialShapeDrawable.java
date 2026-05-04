package com.google.android.material.shape;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Looper;
import android.util.AttributeSet;
import android.util.Log;
import androidx.core.util.ObjectsCompat;
import androidx.dynamicanimation.animation.FloatPropertyCompat;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import com.google.android.material.C1349R;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.drawable.DrawableUtils;
import com.google.android.material.elevation.ElevationOverlayProvider;
import com.google.android.material.math.MathUtils;
import com.google.android.material.shadow.ShadowRenderer;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.ShapeAppearancePathProvider;
import com.google.android.material.shape.ShapePath;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.BitSet;

/* JADX INFO: loaded from: classes.dex */
public class MaterialShapeDrawable extends Drawable implements Shapeable {
    private static final SpringAnimatedCornerSizeProperty[] CORNER_SIZES_IN_PX;
    static final ShapeAppearanceModel DEFAULT_INTERPOLATION_START_SHAPE_APPEARANCE_MODEL = ShapeAppearanceModel.builder().setAllCorners(0, 0.0f).build();
    public static final int SHADOW_COMPAT_MODE_ALWAYS = 2;
    public static final int SHADOW_COMPAT_MODE_DEFAULT = 0;
    public static final int SHADOW_COMPAT_MODE_NEVER = 1;
    private static final float SHADOW_OFFSET_MULTIPLIER = 0.25f;
    private static final float SHADOW_RADIUS_MULTIPLIER = 0.75f;
    private static final String TAG = "MaterialShapeDrawable";
    private static final Paint clearPaint;
    private final BitSet containsIncompatibleShadowOp;
    private final ShapePath.ShadowCompatOperation[] cornerShadowOperation;
    SpringAnimation[] cornerSpringAnimations;
    private SpringForce cornerSpringForce;
    private MaterialShapeDrawableState drawableState;
    private final ShapePath.ShadowCompatOperation[] edgeShadowOperation;
    private final Paint fillPaint;
    private final RectF insetRectF;
    private boolean isRoundRectCornerMorph;
    private final Matrix matrix;
    private OnCornerSizeChangeListener onCornerSizeChangeListener;
    private final Path path;
    private final RectF pathBounds;
    private boolean pathDirty;
    private final Path pathInsetByStroke;
    private final ShapeAppearancePathProvider pathProvider;
    private final ShapeAppearancePathProvider.PathListener pathShadowListener;
    private final RectF rectF;
    private int resolvedTintColor;
    private final Region scratchRegion;
    private boolean shadowBitmapDrawingEnable;
    private final ShadowRenderer shadowRenderer;
    private float[] springAnimatedCornerSizes;
    private float[] springAnimatedStrokeCornerSizes;
    private final ShapeAppearanceModel.CornerSizeUnaryOperator strokeInsetCornerSizeUnaryOperator;
    private final Paint strokePaint;
    private boolean strokePathDirty;
    private ShapeAppearanceModel strokeShapeAppearanceModel;
    private PorterDuffColorFilter strokeTintFilter;
    private PorterDuffColorFilter tintFilter;
    private final Region transparentRegion;

    /* JADX INFO: loaded from: classes5.dex */
    @Retention(RetentionPolicy.SOURCE)
    public @interface CompatibilityShadowMode {
    }

    /* JADX INFO: loaded from: classes5.dex */
    public interface OnCornerSizeChangeListener {
        void onCornerSizeChange(float f);
    }

    private static int modulateAlpha(int i, int i2) {
        return (i * (i2 + (i2 >>> 7))) >>> 8;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    static {
        int i = 0;
        Paint paint = new Paint(1);
        clearPaint = paint;
        paint.setColor(-1);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        CORNER_SIZES_IN_PX = new SpringAnimatedCornerSizeProperty[4];
        while (true) {
            SpringAnimatedCornerSizeProperty[] springAnimatedCornerSizePropertyArr = CORNER_SIZES_IN_PX;
            if (i >= springAnimatedCornerSizePropertyArr.length) {
                return;
            }
            springAnimatedCornerSizePropertyArr[i] = new SpringAnimatedCornerSizeProperty(i);
            i++;
        }
    }

    public static MaterialShapeDrawable createWithElevationOverlay(Context context) {
        return createWithElevationOverlay(context, 0.0f);
    }

    public static MaterialShapeDrawable createWithElevationOverlay(Context context, float f) {
        return createWithElevationOverlay(context, f, null);
    }

    public static MaterialShapeDrawable createWithElevationOverlay(Context context, float f, ColorStateList colorStateList) {
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(MaterialColors.getColor(context, C1349R.attr.colorSurface, MaterialShapeDrawable.class.getSimpleName()));
        }
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
        materialShapeDrawable.initializeElevationOverlay(context);
        materialShapeDrawable.setFillColor(colorStateList);
        materialShapeDrawable.setElevation(f);
        return materialShapeDrawable;
    }

    public MaterialShapeDrawable() {
        this(new ShapeAppearanceModel());
    }

    public MaterialShapeDrawable(Context context, AttributeSet attributeSet, int i, int i2) {
        this(ShapeAppearanceModel.builder(context, attributeSet, i, i2).build());
    }

    @Deprecated
    public MaterialShapeDrawable(ShapePathModel shapePathModel) {
        this((ShapeAppearanceModel) shapePathModel);
    }

    public MaterialShapeDrawable(ShapeAppearanceModel shapeAppearanceModel) {
        this(new MaterialShapeDrawableState(shapeAppearanceModel, null));
    }

    public MaterialShapeDrawable(ShapeAppearance shapeAppearance) {
        this(new MaterialShapeDrawableState(shapeAppearance, null));
    }

    protected MaterialShapeDrawable(MaterialShapeDrawableState materialShapeDrawableState) {
        ShapeAppearancePathProvider shapeAppearancePathProvider;
        this.strokeInsetCornerSizeUnaryOperator = new ShapeAppearanceModel.CornerSizeUnaryOperator() { // from class: com.google.android.material.shape.MaterialShapeDrawable.1
            @Override // com.google.android.material.shape.ShapeAppearanceModel.CornerSizeUnaryOperator
            public CornerSize apply(CornerSize cornerSize) {
                return cornerSize instanceof RelativeCornerSize ? cornerSize : new AdjustedCornerSize(-MaterialShapeDrawable.this.getStrokeInsetLength(), cornerSize);
            }
        };
        this.cornerShadowOperation = new ShapePath.ShadowCompatOperation[4];
        this.edgeShadowOperation = new ShapePath.ShadowCompatOperation[4];
        this.containsIncompatibleShadowOp = new BitSet(8);
        this.matrix = new Matrix();
        this.path = new Path();
        this.pathInsetByStroke = new Path();
        this.rectF = new RectF();
        this.insetRectF = new RectF();
        this.transparentRegion = new Region();
        this.scratchRegion = new Region();
        Paint paint = new Paint(1);
        this.fillPaint = paint;
        Paint paint2 = new Paint(1);
        this.strokePaint = paint2;
        this.shadowRenderer = new ShadowRenderer();
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            shapeAppearancePathProvider = ShapeAppearancePathProvider.getInstance();
        } else {
            shapeAppearancePathProvider = new ShapeAppearancePathProvider();
        }
        this.pathProvider = shapeAppearancePathProvider;
        this.pathBounds = new RectF();
        this.shadowBitmapDrawingEnable = true;
        this.isRoundRectCornerMorph = true;
        this.cornerSpringAnimations = new SpringAnimation[4];
        this.drawableState = materialShapeDrawableState;
        paint2.setStyle(Paint.Style.STROKE);
        paint.setStyle(Paint.Style.FILL);
        updateTintFilter();
        updateColorsForState(getState());
        this.pathShadowListener = new ShapeAppearancePathProvider.PathListener() { // from class: com.google.android.material.shape.MaterialShapeDrawable.2
            @Override // com.google.android.material.shape.ShapeAppearancePathProvider.PathListener
            public void onCornerPathCreated(ShapePath shapePath, Matrix matrix, int i) {
                MaterialShapeDrawable.this.containsIncompatibleShadowOp.set(i, shapePath.containsIncompatibleShadowOp());
                MaterialShapeDrawable.this.cornerShadowOperation[i] = shapePath.createShadowCompatOperation(matrix);
            }

            @Override // com.google.android.material.shape.ShapeAppearancePathProvider.PathListener
            public void onEdgePathCreated(ShapePath shapePath, Matrix matrix, int i) {
                MaterialShapeDrawable.this.containsIncompatibleShadowOp.set(i + 4, shapePath.containsIncompatibleShadowOp());
                MaterialShapeDrawable.this.edgeShadowOperation[i] = shapePath.createShadowCompatOperation(matrix);
            }
        };
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.drawableState;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        this.drawableState = new MaterialShapeDrawableState(this.drawableState);
        return this;
    }

    public void setShapeAppearance(ShapeAppearance shapeAppearance) {
        if (shapeAppearance instanceof ShapeAppearanceModel) {
            setShapeAppearanceModel((ShapeAppearanceModel) shapeAppearance);
        } else {
            setStateListShapeAppearanceModel((StateListShapeAppearanceModel) shapeAppearance);
        }
    }

    @Override // com.google.android.material.shape.Shapeable
    public void setShapeAppearanceModel(ShapeAppearanceModel shapeAppearanceModel) {
        this.drawableState.shapeAppearance = shapeAppearanceModel;
        this.springAnimatedCornerSizes = null;
        this.springAnimatedStrokeCornerSizes = null;
        invalidateSelf();
    }

    @Override // com.google.android.material.shape.Shapeable
    public ShapeAppearanceModel getShapeAppearanceModel() {
        return this.drawableState.shapeAppearance.getDefaultShape();
    }

    private void setStateListShapeAppearanceModel(StateListShapeAppearanceModel stateListShapeAppearanceModel) {
        MaterialShapeDrawableState materialShapeDrawableState = this.drawableState;
        if (materialShapeDrawableState.shapeAppearance != stateListShapeAppearanceModel) {
            materialShapeDrawableState.shapeAppearance = stateListShapeAppearanceModel;
            updateShape(getState(), true);
            invalidateSelf();
        }
    }

    public StateListShapeAppearanceModel getStateListShapeAppearanceModel() {
        ShapeAppearance shapeAppearance = this.drawableState.shapeAppearance;
        if (shapeAppearance instanceof StateListShapeAppearanceModel) {
            return (StateListShapeAppearanceModel) shapeAppearance;
        }
        return null;
    }

    public void setCornerSpringForce(SpringForce springForce) {
        if (this.cornerSpringForce == springForce) {
            return;
        }
        this.cornerSpringForce = springForce;
        int i = 0;
        while (true) {
            SpringAnimation[] springAnimationArr = this.cornerSpringAnimations;
            if (i < springAnimationArr.length) {
                if (springAnimationArr[i] == null) {
                    springAnimationArr[i] = new SpringAnimation(this, CORNER_SIZES_IN_PX[i]);
                }
                this.cornerSpringAnimations[i].setSpring(new SpringForce().setDampingRatio(springForce.getDampingRatio()).setStiffness(springForce.getStiffness()));
                i++;
            } else {
                updateShape(getState(), true);
                invalidateSelf();
                return;
            }
        }
    }

    public SpringForce getCornerSpringForce() {
        return this.cornerSpringForce;
    }

    @Deprecated
    public void setShapedViewModel(ShapePathModel shapePathModel) {
        setShapeAppearanceModel(shapePathModel);
    }

    @Deprecated
    public ShapePathModel getShapedViewModel() {
        ShapeAppearanceModel shapeAppearanceModel = getShapeAppearanceModel();
        if (shapeAppearanceModel instanceof ShapePathModel) {
            return (ShapePathModel) shapeAppearanceModel;
        }
        return null;
    }

    public void setFillColor(ColorStateList colorStateList) {
        MaterialShapeDrawableState materialShapeDrawableState = this.drawableState;
        if (materialShapeDrawableState.fillColor != colorStateList) {
            materialShapeDrawableState.fillColor = colorStateList;
            onStateChange(getState());
        }
    }

    public ColorStateList getFillColor() {
        return this.drawableState.fillColor;
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        MaterialShapeDrawableState materialShapeDrawableState = this.drawableState;
        if (materialShapeDrawableState.strokeColor != colorStateList) {
            materialShapeDrawableState.strokeColor = colorStateList;
            onStateChange(getState());
        }
    }

    public ColorStateList getStrokeColor() {
        return this.drawableState.strokeColor;
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        MaterialShapeDrawableState materialShapeDrawableState = this.drawableState;
        if (materialShapeDrawableState.tintMode != mode) {
            materialShapeDrawableState.tintMode = mode;
            updateTintFilter();
            invalidateSelfIgnoreShape();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        this.drawableState.tintList = colorStateList;
        updateTintFilter();
        invalidateSelfIgnoreShape();
    }

    public ColorStateList getTintList() {
        return this.drawableState.tintList;
    }

    public ColorStateList getStrokeTintList() {
        return this.drawableState.strokeTintList;
    }

    @Override // android.graphics.drawable.Drawable
    public void setTint(int i) {
        setTintList(ColorStateList.valueOf(i));
    }

    public void setStrokeTint(ColorStateList colorStateList) {
        this.drawableState.strokeTintList = colorStateList;
        updateTintFilter();
        invalidateSelfIgnoreShape();
    }

    public void setStrokeTint(int i) {
        setStrokeTint(ColorStateList.valueOf(i));
    }

    public void setStroke(float f, int i) {
        setStrokeWidth(f);
        setStrokeColor(ColorStateList.valueOf(i));
    }

    public void setStroke(float f, ColorStateList colorStateList) {
        setStrokeWidth(f);
        setStrokeColor(colorStateList);
    }

    public float getStrokeWidth() {
        return this.drawableState.strokeWidth;
    }

    public void setStrokeWidth(float f) {
        this.drawableState.strokeWidth = f;
        invalidateSelf();
    }

    public int getResolvedTintColor() {
        return this.resolvedTintColor;
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.drawableState.alpha;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        MaterialShapeDrawableState materialShapeDrawableState = this.drawableState;
        if (materialShapeDrawableState.alpha != i) {
            materialShapeDrawableState.alpha = i;
            invalidateSelfIgnoreShape();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.drawableState.colorFilter = colorFilter;
        invalidateSelfIgnoreShape();
    }

    @Override // android.graphics.drawable.Drawable
    public Region getTransparentRegion() {
        this.transparentRegion.set(getBounds());
        calculatePath(getBoundsAsRectF(), this.path);
        this.scratchRegion.setPath(this.path, this.transparentRegion);
        this.transparentRegion.op(this.scratchRegion, Region.Op.DIFFERENCE);
        return this.transparentRegion;
    }

    protected RectF getBoundsAsRectF() {
        this.rectF.set(getBounds());
        return this.rectF;
    }

    public void setCornerSize(float f) {
        setShapeAppearanceModel(this.drawableState.shapeAppearance.withCornerSize(f));
    }

    public void setCornerSize(CornerSize cornerSize) {
        setShapeAppearanceModel(this.drawableState.shapeAppearance.withCornerSize(cornerSize));
    }

    public boolean isPointInTransparentRegion(int i, int i2) {
        return getTransparentRegion().contains(i, i2);
    }

    public int getShadowCompatibilityMode() {
        return this.drawableState.shadowCompatMode;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        Rect rect2 = this.drawableState.padding;
        if (rect2 != null) {
            rect.set(rect2);
            return true;
        }
        return super.getPadding(rect);
    }

    public void setPadding(int i, int i2, int i3, int i4) {
        MaterialShapeDrawableState materialShapeDrawableState = this.drawableState;
        if (materialShapeDrawableState.padding == null) {
            materialShapeDrawableState.padding = new Rect();
        }
        this.drawableState.padding.set(i, i2, i3, i4);
        invalidateSelf();
    }

    public void setShadowCompatibilityMode(int i) {
        MaterialShapeDrawableState materialShapeDrawableState = this.drawableState;
        if (materialShapeDrawableState.shadowCompatMode != i) {
            materialShapeDrawableState.shadowCompatMode = i;
            invalidateSelfIgnoreShape();
        }
    }

    @Deprecated
    public boolean isShadowEnabled() {
        int i = this.drawableState.shadowCompatMode;
        return i == 0 || i == 2;
    }

    @Deprecated
    public void setShadowEnabled(boolean z) {
        setShadowCompatibilityMode(!z ? 1 : 0);
    }

    public boolean isElevationOverlayEnabled() {
        ElevationOverlayProvider elevationOverlayProvider = this.drawableState.elevationOverlayProvider;
        return elevationOverlayProvider != null && elevationOverlayProvider.isThemeElevationOverlayEnabled();
    }

    public boolean isElevationOverlayInitialized() {
        return this.drawableState.elevationOverlayProvider != null;
    }

    public void initializeElevationOverlay(Context context) {
        this.drawableState.elevationOverlayProvider = new ElevationOverlayProvider(context);
        updateZ();
    }

    protected int compositeElevationOverlayIfNeeded(int i) {
        float z = getZ() + getParentAbsoluteElevation();
        ElevationOverlayProvider elevationOverlayProvider = this.drawableState.elevationOverlayProvider;
        return elevationOverlayProvider != null ? elevationOverlayProvider.compositeOverlayIfNeeded(i, z) : i;
    }

    public float getInterpolation() {
        return this.drawableState.interpolation;
    }

    public void setInterpolation(float f) {
        MaterialShapeDrawableState materialShapeDrawableState = this.drawableState;
        if (materialShapeDrawableState.interpolation != f) {
            materialShapeDrawableState.interpolation = f;
            this.pathDirty = true;
            this.strokePathDirty = true;
            invalidateSelf();
        }
    }

    public float getParentAbsoluteElevation() {
        return this.drawableState.parentAbsoluteElevation;
    }

    public void setParentAbsoluteElevation(float f) {
        MaterialShapeDrawableState materialShapeDrawableState = this.drawableState;
        if (materialShapeDrawableState.parentAbsoluteElevation != f) {
            materialShapeDrawableState.parentAbsoluteElevation = f;
            updateZ();
        }
    }

    public float getElevation() {
        return this.drawableState.elevation;
    }

    public void setElevation(float f) {
        MaterialShapeDrawableState materialShapeDrawableState = this.drawableState;
        if (materialShapeDrawableState.elevation != f) {
            materialShapeDrawableState.elevation = f;
            updateZ();
        }
    }

    public float getTranslationZ() {
        return this.drawableState.translationZ;
    }

    public void setTranslationZ(float f) {
        MaterialShapeDrawableState materialShapeDrawableState = this.drawableState;
        if (materialShapeDrawableState.translationZ != f) {
            materialShapeDrawableState.translationZ = f;
            updateZ();
        }
    }

    public float getZ() {
        return getElevation() + getTranslationZ();
    }

    public void setZ(float f) {
        setTranslationZ(f - getElevation());
    }

    private void updateZ() {
        float z = getZ();
        this.drawableState.shadowCompatRadius = (int) Math.ceil(SHADOW_RADIUS_MULTIPLIER * z);
        this.drawableState.shadowCompatOffset = (int) Math.ceil(z * SHADOW_OFFSET_MULTIPLIER);
        updateTintFilter();
        if (shouldCalculatePath()) {
            invalidateSelf();
        } else {
            invalidateSelfIgnoreShape();
        }
    }

    @Deprecated
    public int getShadowElevation() {
        return (int) getElevation();
    }

    @Deprecated
    public void setShadowElevation(int i) {
        setElevation(i);
    }

    public int getShadowVerticalOffset() {
        return this.drawableState.shadowCompatOffset;
    }

    public void setShadowBitmapDrawingEnable(boolean z) {
        this.shadowBitmapDrawingEnable = z;
    }

    public void setEdgeIntersectionCheckEnable(boolean z) {
        this.pathProvider.setEdgeIntersectionCheckEnable(z);
    }

    public void setShadowVerticalOffset(int i) {
        MaterialShapeDrawableState materialShapeDrawableState = this.drawableState;
        if (materialShapeDrawableState.shadowCompatOffset != i) {
            materialShapeDrawableState.shadowCompatOffset = i;
            invalidateSelfIgnoreShape();
        }
    }

    public int getShadowCompatRotation() {
        return this.drawableState.shadowCompatRotation;
    }

    public void setShadowCompatRotation(int i) {
        MaterialShapeDrawableState materialShapeDrawableState = this.drawableState;
        if (materialShapeDrawableState.shadowCompatRotation != i) {
            materialShapeDrawableState.shadowCompatRotation = i;
            invalidateSelfIgnoreShape();
        }
    }

    public int getShadowRadius() {
        return this.drawableState.shadowCompatRadius;
    }

    @Deprecated
    public void setShadowRadius(int i) {
        this.drawableState.shadowCompatRadius = i;
    }

    public boolean requiresCompatShadow() {
        return (isRoundRect() || this.path.isConvex() || Build.VERSION.SDK_INT >= 29) ? false : true;
    }

    public float getScale() {
        return this.drawableState.scale;
    }

    public void setScale(float f) {
        MaterialShapeDrawableState materialShapeDrawableState = this.drawableState;
        if (materialShapeDrawableState.scale != f) {
            materialShapeDrawableState.scale = f;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        this.pathDirty = true;
        this.strokePathDirty = true;
        super.invalidateSelf();
    }

    private void invalidateSelfIgnoreShape() {
        super.invalidateSelf();
    }

    public void setUseTintColorForShadow(boolean z) {
        MaterialShapeDrawableState materialShapeDrawableState = this.drawableState;
        if (materialShapeDrawableState.useTintColorForShadow != z) {
            materialShapeDrawableState.useTintColorForShadow = z;
            invalidateSelf();
        }
    }

    public void setShadowColor(int i) {
        this.shadowRenderer.setShadowColor(i);
        this.drawableState.useTintColorForShadow = false;
        invalidateSelfIgnoreShape();
    }

    public Paint.Style getPaintStyle() {
        return this.drawableState.paintStyle;
    }

    public void setPaintStyle(Paint.Style style) {
        this.drawableState.paintStyle = style;
        invalidateSelfIgnoreShape();
    }

    private boolean hasCompatShadow() {
        MaterialShapeDrawableState materialShapeDrawableState = this.drawableState;
        int i = materialShapeDrawableState.shadowCompatMode;
        if (i == 1 || materialShapeDrawableState.shadowCompatRadius <= 0) {
            return false;
        }
        return i == 2 || requiresCompatShadow();
    }

    private boolean hasFill() {
        Paint.Style style = this.drawableState.paintStyle;
        return style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.FILL;
    }

    private boolean hasStroke() {
        Paint.Style style = this.drawableState.paintStyle;
        return (style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.STROKE) && this.strokePaint.getStrokeWidth() > 0.0f;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        this.pathDirty = true;
        this.strokePathDirty = true;
        super.onBoundsChange(rect);
        if (!this.drawableState.shapeAppearance.isStateful() || rect.isEmpty()) {
            return;
        }
        updateShape(getState(), true ^ isCornerSpringAnimationRunning());
    }

    private boolean isCornerSpringAnimationRunning() {
        for (SpringAnimation springAnimation : this.cornerSpringAnimations) {
            if (springAnimation != null && springAnimation.isRunning()) {
                return true;
            }
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.fillPaint.setColorFilter(this.tintFilter);
        int alpha = this.fillPaint.getAlpha();
        this.fillPaint.setAlpha(modulateAlpha(alpha, this.drawableState.alpha));
        this.strokePaint.setColorFilter(this.strokeTintFilter);
        this.strokePaint.setStrokeWidth(this.drawableState.strokeWidth);
        int alpha2 = this.strokePaint.getAlpha();
        this.strokePaint.setAlpha(modulateAlpha(alpha2, this.drawableState.alpha));
        boolean zShouldCalculatePath = shouldCalculatePath();
        if (hasFill()) {
            if (this.pathDirty) {
                if (zShouldCalculatePath) {
                    calculatePath(getBoundsAsRectF(), this.path);
                }
                this.pathDirty = false;
            }
            maybeDrawCompatShadow(canvas);
            drawFillShape(canvas);
        }
        if (hasStroke()) {
            if (this.strokePathDirty) {
                updateStrokeShapeAppearanceModels();
                if (zShouldCalculatePath) {
                    calculateStrokePath();
                }
                this.strokePathDirty = false;
            }
            drawStrokeShape(canvas);
        }
        this.fillPaint.setAlpha(alpha);
        this.strokePaint.setAlpha(alpha2);
    }

    private boolean shouldCalculatePath() {
        return hasCompatShadow() || !isRoundRect();
    }

    private void maybeDrawCompatShadow(Canvas canvas) {
        if (hasCompatShadow()) {
            canvas.save();
            prepareCanvasForShadow(canvas);
            if (!this.shadowBitmapDrawingEnable) {
                drawCompatShadow(canvas);
                canvas.restore();
                return;
            }
            Rect bounds = getBounds();
            int iWidth = (int) (this.pathBounds.width() - bounds.width());
            int iHeight = (int) (this.pathBounds.height() - bounds.height());
            if (iWidth < 0 || iHeight < 0) {
                throw new IllegalStateException("Invalid shadow bounds. Check that the treatments result in a valid path. extra width: " + iWidth + " extra height: " + iHeight + " path bounds: " + this.pathBounds);
            }
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(((int) this.pathBounds.width()) + (this.drawableState.shadowCompatRadius * 2) + iWidth, ((int) this.pathBounds.height()) + (this.drawableState.shadowCompatRadius * 2) + iHeight, Bitmap.Config.ARGB_8888);
            Canvas canvas2 = new Canvas(bitmapCreateBitmap);
            int i = bounds.left;
            int i2 = this.drawableState.shadowCompatRadius;
            float f = (i - i2) - iWidth;
            float f2 = (bounds.top - i2) - iHeight;
            canvas2.translate(-f, -f2);
            drawCompatShadow(canvas2);
            canvas.drawBitmap(bitmapCreateBitmap, f, f2, (Paint) null);
            bitmapCreateBitmap.recycle();
            canvas.restore();
        }
    }

    protected void drawShape(Canvas canvas, Paint paint, Path path, RectF rectF) {
        drawShape(canvas, paint, path, this.drawableState.shapeAppearance.getDefaultShape(), this.springAnimatedCornerSizes, rectF);
    }

    private void drawShape(Canvas canvas, Paint paint, Path path, ShapeAppearanceModel shapeAppearanceModel, float[] fArr, RectF rectF) {
        float fCalculateRoundRectCornerSize = calculateRoundRectCornerSize(rectF, shapeAppearanceModel, fArr);
        if (fCalculateRoundRectCornerSize >= 0.0f) {
            float f = fCalculateRoundRectCornerSize * this.drawableState.interpolation;
            canvas.drawRoundRect(rectF, f, f, paint);
        } else {
            canvas.drawPath(path, paint);
        }
    }

    private void drawFillShape(Canvas canvas) {
        drawShape(canvas, this.fillPaint, this.path, this.drawableState.shapeAppearance.getDefaultShape(), this.springAnimatedCornerSizes, getBoundsAsRectF());
    }

    protected void drawStrokeShape(Canvas canvas) {
        drawShape(canvas, this.strokePaint, this.pathInsetByStroke, this.strokeShapeAppearanceModel, this.springAnimatedStrokeCornerSizes, getBoundsInsetByStroke());
    }

    private void prepareCanvasForShadow(Canvas canvas) {
        canvas.translate(getShadowOffsetX(), getShadowOffsetY());
    }

    private void drawCompatShadow(Canvas canvas) {
        if (this.containsIncompatibleShadowOp.cardinality() > 0) {
            Log.w(TAG, "Compatibility shadow requested but can't be drawn for all operations in this shape.");
        }
        if (this.drawableState.shadowCompatOffset != 0) {
            canvas.drawPath(this.path, this.shadowRenderer.getShadowPaint());
        }
        for (int i = 0; i < 4; i++) {
            this.cornerShadowOperation[i].draw(this.shadowRenderer, this.drawableState.shadowCompatRadius, canvas);
            this.edgeShadowOperation[i].draw(this.shadowRenderer, this.drawableState.shadowCompatRadius, canvas);
        }
        if (this.shadowBitmapDrawingEnable) {
            int shadowOffsetX = getShadowOffsetX();
            int shadowOffsetY = getShadowOffsetY();
            canvas.translate(-shadowOffsetX, -shadowOffsetY);
            canvas.drawPath(this.path, clearPaint);
            canvas.translate(shadowOffsetX, shadowOffsetY);
        }
    }

    private float calculateRoundRectCornerSize(RectF rectF, ShapeAppearanceModel shapeAppearanceModel, float[] fArr) {
        if (fArr == null) {
            if (shapeAppearanceModel.isRoundRect(rectF)) {
                return shapeAppearanceModel.getTopLeftCornerSize().getCornerSize(rectF);
            }
            return -1.0f;
        }
        if (this.isRoundRectCornerMorph) {
            return fArr[0];
        }
        return -1.0f;
    }

    public int getShadowOffsetX() {
        return (int) (((double) this.drawableState.shadowCompatOffset) * Math.sin(Math.toRadians(r0.shadowCompatRotation)));
    }

    public int getShadowOffsetY() {
        return (int) (((double) this.drawableState.shadowCompatOffset) * Math.cos(Math.toRadians(r0.shadowCompatRotation)));
    }

    @Deprecated
    public void getPathForSize(int i, int i2, Path path) {
        calculatePathForSize(new RectF(0.0f, 0.0f, i, i2), path);
    }

    protected final void calculatePathForSize(RectF rectF, Path path) {
        this.pathProvider.calculatePath(this.drawableState.shapeAppearance.getDefaultShape(), this.springAnimatedCornerSizes, this.drawableState.interpolation, rectF, this.pathShadowListener, path);
    }

    private void calculateStrokePath() {
        this.pathProvider.calculatePath(this.strokeShapeAppearanceModel, this.springAnimatedStrokeCornerSizes, this.drawableState.interpolation, getBoundsInsetByStroke(), null, this.pathInsetByStroke);
    }

    private void updateStrokeShapeAppearanceModels() {
        this.strokeShapeAppearanceModel = getShapeAppearanceModel().withTransformedCornerSizes(this.strokeInsetCornerSizeUnaryOperator);
        float[] fArr = this.springAnimatedCornerSizes;
        if (fArr == null) {
            this.springAnimatedStrokeCornerSizes = null;
            return;
        }
        if (this.springAnimatedStrokeCornerSizes == null) {
            this.springAnimatedStrokeCornerSizes = new float[fArr.length];
        }
        float strokeInsetLength = getStrokeInsetLength();
        int i = 0;
        while (true) {
            float[] fArr2 = this.springAnimatedCornerSizes;
            if (i >= fArr2.length) {
                return;
            }
            this.springAnimatedStrokeCornerSizes[i] = Math.max(0.0f, fArr2[i] - strokeInsetLength);
            i++;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        if (this.drawableState.shadowCompatMode == 2) {
            return;
        }
        RectF boundsAsRectF = getBoundsAsRectF();
        if (boundsAsRectF.isEmpty()) {
            return;
        }
        float fCalculateRoundRectCornerSize = calculateRoundRectCornerSize(boundsAsRectF, this.drawableState.shapeAppearance.getDefaultShape(), this.springAnimatedCornerSizes);
        if (fCalculateRoundRectCornerSize >= 0.0f) {
            outline.setRoundRect(getBounds(), fCalculateRoundRectCornerSize * this.drawableState.interpolation);
            return;
        }
        if (this.pathDirty) {
            calculatePath(boundsAsRectF, this.path);
            this.pathDirty = false;
        }
        DrawableUtils.setOutlineToPath(outline, this.path);
    }

    private void calculatePath(RectF rectF, Path path) {
        calculatePathForSize(rectF, path);
        if (this.drawableState.scale != 1.0f) {
            this.matrix.reset();
            Matrix matrix = this.matrix;
            float f = this.drawableState.scale;
            matrix.setScale(f, f, rectF.width() / 2.0f, rectF.height() / 2.0f);
            path.transform(this.matrix);
        }
        path.computeBounds(this.pathBounds, true);
    }

    private boolean updateTintFilter() {
        PorterDuffColorFilter porterDuffColorFilter = this.tintFilter;
        PorterDuffColorFilter porterDuffColorFilter2 = this.strokeTintFilter;
        MaterialShapeDrawableState materialShapeDrawableState = this.drawableState;
        this.tintFilter = calculateTintFilter(materialShapeDrawableState.tintList, materialShapeDrawableState.tintMode, this.fillPaint, true);
        MaterialShapeDrawableState materialShapeDrawableState2 = this.drawableState;
        this.strokeTintFilter = calculateTintFilter(materialShapeDrawableState2.strokeTintList, materialShapeDrawableState2.tintMode, this.strokePaint, false);
        MaterialShapeDrawableState materialShapeDrawableState3 = this.drawableState;
        if (materialShapeDrawableState3.useTintColorForShadow) {
            this.shadowRenderer.setShadowColor(materialShapeDrawableState3.tintList.getColorForState(getState(), 0));
        }
        return (ObjectsCompat.equals(porterDuffColorFilter, this.tintFilter) && ObjectsCompat.equals(porterDuffColorFilter2, this.strokeTintFilter)) ? false : true;
    }

    private PorterDuffColorFilter calculateTintFilter(ColorStateList colorStateList, PorterDuff.Mode mode, Paint paint, boolean z) {
        if (colorStateList == null || mode == null) {
            return calculatePaintColorTintFilter(paint, z);
        }
        return calculateTintColorTintFilter(colorStateList, mode, z);
    }

    private PorterDuffColorFilter calculatePaintColorTintFilter(Paint paint, boolean z) {
        if (!z) {
            return null;
        }
        int color = paint.getColor();
        int iCompositeElevationOverlayIfNeeded = compositeElevationOverlayIfNeeded(color);
        this.resolvedTintColor = iCompositeElevationOverlayIfNeeded;
        if (iCompositeElevationOverlayIfNeeded != color) {
            return new PorterDuffColorFilter(iCompositeElevationOverlayIfNeeded, PorterDuff.Mode.SRC_IN);
        }
        return null;
    }

    private PorterDuffColorFilter calculateTintColorTintFilter(ColorStateList colorStateList, PorterDuff.Mode mode, boolean z) {
        int colorForState = colorStateList.getColorForState(getState(), 0);
        if (z) {
            colorForState = compositeElevationOverlayIfNeeded(colorForState);
        }
        this.resolvedTintColor = colorForState;
        return new PorterDuffColorFilter(colorForState, mode);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        if (super.isStateful()) {
            return true;
        }
        ColorStateList colorStateList = this.drawableState.tintList;
        if (colorStateList != null && colorStateList.isStateful()) {
            return true;
        }
        ColorStateList colorStateList2 = this.drawableState.strokeTintList;
        if (colorStateList2 != null && colorStateList2.isStateful()) {
            return true;
        }
        ColorStateList colorStateList3 = this.drawableState.strokeColor;
        if (colorStateList3 != null && colorStateList3.isStateful()) {
            return true;
        }
        ColorStateList colorStateList4 = this.drawableState.fillColor;
        return (colorStateList4 != null && colorStateList4.isStateful()) || this.drawableState.shapeAppearance.isStateful();
    }

    @Override // android.graphics.drawable.Drawable, com.google.android.material.internal.TextDrawableHelper.TextDrawableDelegate
    protected boolean onStateChange(int[] iArr) {
        if (this.drawableState.shapeAppearance.isStateful()) {
            updateShape(iArr);
        }
        boolean z = updateColorsForState(iArr) || updateTintFilter();
        if (z) {
            invalidateSelf();
        }
        return z;
    }

    private void updateShape(int[] iArr) {
        updateShape(iArr, false);
    }

    private void updateShape(int[] iArr, boolean z) {
        RectF boundsAsRectF = getBoundsAsRectF();
        if (!this.drawableState.shapeAppearance.isStateful() || boundsAsRectF.isEmpty()) {
            return;
        }
        boolean z2 = z | (this.cornerSpringForce == null);
        if (this.springAnimatedCornerSizes == null) {
            this.springAnimatedCornerSizes = new float[4];
        }
        ShapeAppearanceModel shapeForState = this.drawableState.shapeAppearance.getShapeForState(iArr);
        boolean z3 = MathUtils.areAllElementsEqual(this.springAnimatedCornerSizes) && shapeForState.isRoundRect(getBoundsAsRectF());
        this.isRoundRectCornerMorph = z3;
        if (!z3) {
            this.pathDirty = true;
            this.strokePathDirty = true;
        }
        for (int i = 0; i < 4; i++) {
            float cornerSize = this.pathProvider.getCornerSizeForIndex(i, shapeForState).getCornerSize(boundsAsRectF);
            if (z2) {
                this.springAnimatedCornerSizes[i] = cornerSize;
            }
            SpringAnimation springAnimation = this.cornerSpringAnimations[i];
            if (springAnimation != null) {
                springAnimation.animateToFinalPosition(cornerSize);
                if (z2) {
                    this.cornerSpringAnimations[i].skipToEnd();
                }
            }
        }
        if (z2) {
            invalidateSelf();
        }
    }

    private boolean updateColorsForState(int[] iArr) {
        boolean z;
        int color;
        int colorForState;
        int color2;
        int colorForState2;
        if (this.drawableState.fillColor == null || color2 == (colorForState2 = this.drawableState.fillColor.getColorForState(iArr, (color2 = this.fillPaint.getColor())))) {
            z = false;
        } else {
            this.fillPaint.setColor(colorForState2);
            z = true;
        }
        if (this.drawableState.strokeColor == null || color == (colorForState = this.drawableState.strokeColor.getColorForState(iArr, (color = this.strokePaint.getColor())))) {
            return z;
        }
        this.strokePaint.setColor(colorForState);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getStrokeInsetLength() {
        if (hasStroke()) {
            return this.strokePaint.getStrokeWidth() / 2.0f;
        }
        return 0.0f;
    }

    private RectF getBoundsInsetByStroke() {
        this.insetRectF.set(getBoundsAsRectF());
        float strokeInsetLength = getStrokeInsetLength();
        this.insetRectF.inset(strokeInsetLength, strokeInsetLength);
        return this.insetRectF;
    }

    public float getTopLeftCornerResolvedSize() {
        float[] fArr = this.springAnimatedCornerSizes;
        if (fArr != null) {
            return fArr[3];
        }
        return this.drawableState.shapeAppearance.getDefaultShape().getTopLeftCornerSize().getCornerSize(getBoundsAsRectF());
    }

    public float getTopRightCornerResolvedSize() {
        float[] fArr = this.springAnimatedCornerSizes;
        if (fArr != null) {
            return fArr[0];
        }
        return this.drawableState.shapeAppearance.getDefaultShape().getTopRightCornerSize().getCornerSize(getBoundsAsRectF());
    }

    public float getBottomLeftCornerResolvedSize() {
        float[] fArr = this.springAnimatedCornerSizes;
        if (fArr != null) {
            return fArr[2];
        }
        return this.drawableState.shapeAppearance.getDefaultShape().getBottomLeftCornerSize().getCornerSize(getBoundsAsRectF());
    }

    public float getBottomRightCornerResolvedSize() {
        float[] fArr = this.springAnimatedCornerSizes;
        if (fArr != null) {
            return fArr[1];
        }
        return this.drawableState.shapeAppearance.getDefaultShape().getBottomRightCornerSize().getCornerSize(getBoundsAsRectF());
    }

    public boolean isRoundRect() {
        if (this.drawableState.shapeAppearance.getShapeForState(getState()).isRoundRect(getBoundsAsRectF())) {
            return this.springAnimatedCornerSizes == null || this.isRoundRectCornerMorph;
        }
        return false;
    }

    public void setOnCornerSizeChangeListener(OnCornerSizeChangeListener onCornerSizeChangeListener) {
        this.onCornerSizeChangeListener = onCornerSizeChangeListener;
    }

    public float getCornerSizeDiffX() {
        float cornerSize;
        float cornerSize2;
        float[] fArr = this.springAnimatedCornerSizes;
        if (fArr != null) {
            cornerSize = (fArr[3] + fArr[2]) - fArr[1];
            cornerSize2 = fArr[0];
        } else {
            RectF boundsAsRectF = getBoundsAsRectF();
            cornerSize = (this.pathProvider.getCornerSizeForIndex(3, getShapeAppearanceModel()).getCornerSize(boundsAsRectF) + this.pathProvider.getCornerSizeForIndex(2, getShapeAppearanceModel()).getCornerSize(boundsAsRectF)) - this.pathProvider.getCornerSizeForIndex(1, getShapeAppearanceModel()).getCornerSize(boundsAsRectF);
            cornerSize2 = this.pathProvider.getCornerSizeForIndex(0, getShapeAppearanceModel()).getCornerSize(boundsAsRectF);
        }
        return (cornerSize - cornerSize2) / 2.0f;
    }

    private static class SpringAnimatedCornerSizeProperty extends FloatPropertyCompat {
        private final int index;

        SpringAnimatedCornerSizeProperty(int i) {
            super("cornerSizeAtIndex" + i);
            this.index = i;
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public float getValue(MaterialShapeDrawable materialShapeDrawable) {
            if (materialShapeDrawable.springAnimatedCornerSizes != null) {
                return materialShapeDrawable.springAnimatedCornerSizes[this.index];
            }
            return 0.0f;
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public void setValue(MaterialShapeDrawable materialShapeDrawable, float f) {
            if (materialShapeDrawable.springAnimatedCornerSizes == null || materialShapeDrawable.springAnimatedCornerSizes[this.index] == f) {
                return;
            }
            materialShapeDrawable.springAnimatedCornerSizes[this.index] = f;
            if (materialShapeDrawable.onCornerSizeChangeListener != null) {
                materialShapeDrawable.onCornerSizeChangeListener.onCornerSizeChange(materialShapeDrawable.getCornerSizeDiffX());
            }
            materialShapeDrawable.invalidateSelf();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static class MaterialShapeDrawableState extends Drawable.ConstantState {
        int alpha;
        ColorFilter colorFilter;
        float elevation;
        ElevationOverlayProvider elevationOverlayProvider;
        ColorStateList fillColor;
        float interpolation;
        Rect padding;
        Paint.Style paintStyle;
        float parentAbsoluteElevation;
        float scale;
        int shadowCompatMode;
        int shadowCompatOffset;
        int shadowCompatRadius;
        int shadowCompatRotation;
        ShapeAppearance shapeAppearance;
        ColorStateList strokeColor;
        ColorStateList strokeTintList;
        float strokeWidth;
        ColorStateList tintList;
        PorterDuff.Mode tintMode;
        float translationZ;
        boolean useTintColorForShadow;

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        public MaterialShapeDrawableState(ShapeAppearance shapeAppearance, ElevationOverlayProvider elevationOverlayProvider) {
            this.fillColor = null;
            this.strokeColor = null;
            this.strokeTintList = null;
            this.tintList = null;
            this.tintMode = PorterDuff.Mode.SRC_IN;
            this.padding = null;
            this.scale = 1.0f;
            this.interpolation = 1.0f;
            this.alpha = 255;
            this.parentAbsoluteElevation = 0.0f;
            this.elevation = 0.0f;
            this.translationZ = 0.0f;
            this.shadowCompatMode = 0;
            this.shadowCompatRadius = 0;
            this.shadowCompatOffset = 0;
            this.shadowCompatRotation = 0;
            this.useTintColorForShadow = false;
            this.paintStyle = Paint.Style.FILL_AND_STROKE;
            this.shapeAppearance = shapeAppearance;
            this.elevationOverlayProvider = elevationOverlayProvider;
        }

        public MaterialShapeDrawableState(MaterialShapeDrawableState materialShapeDrawableState) {
            this.fillColor = null;
            this.strokeColor = null;
            this.strokeTintList = null;
            this.tintList = null;
            this.tintMode = PorterDuff.Mode.SRC_IN;
            this.padding = null;
            this.scale = 1.0f;
            this.interpolation = 1.0f;
            this.alpha = 255;
            this.parentAbsoluteElevation = 0.0f;
            this.elevation = 0.0f;
            this.translationZ = 0.0f;
            this.shadowCompatMode = 0;
            this.shadowCompatRadius = 0;
            this.shadowCompatOffset = 0;
            this.shadowCompatRotation = 0;
            this.useTintColorForShadow = false;
            this.paintStyle = Paint.Style.FILL_AND_STROKE;
            this.shapeAppearance = materialShapeDrawableState.shapeAppearance;
            this.elevationOverlayProvider = materialShapeDrawableState.elevationOverlayProvider;
            this.strokeWidth = materialShapeDrawableState.strokeWidth;
            this.colorFilter = materialShapeDrawableState.colorFilter;
            this.fillColor = materialShapeDrawableState.fillColor;
            this.strokeColor = materialShapeDrawableState.strokeColor;
            this.tintMode = materialShapeDrawableState.tintMode;
            this.tintList = materialShapeDrawableState.tintList;
            this.alpha = materialShapeDrawableState.alpha;
            this.scale = materialShapeDrawableState.scale;
            this.shadowCompatOffset = materialShapeDrawableState.shadowCompatOffset;
            this.shadowCompatMode = materialShapeDrawableState.shadowCompatMode;
            this.useTintColorForShadow = materialShapeDrawableState.useTintColorForShadow;
            this.interpolation = materialShapeDrawableState.interpolation;
            this.parentAbsoluteElevation = materialShapeDrawableState.parentAbsoluteElevation;
            this.elevation = materialShapeDrawableState.elevation;
            this.translationZ = materialShapeDrawableState.translationZ;
            this.shadowCompatRadius = materialShapeDrawableState.shadowCompatRadius;
            this.shadowCompatRotation = materialShapeDrawableState.shadowCompatRotation;
            this.strokeTintList = materialShapeDrawableState.strokeTintList;
            this.paintStyle = materialShapeDrawableState.paintStyle;
            if (materialShapeDrawableState.padding != null) {
                this.padding = new Rect(materialShapeDrawableState.padding);
            }
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(this);
            materialShapeDrawable.pathDirty = true;
            materialShapeDrawable.strokePathDirty = true;
            return materialShapeDrawable;
        }
    }
}
