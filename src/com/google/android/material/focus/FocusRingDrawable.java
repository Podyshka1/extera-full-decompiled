package com.google.android.material.focus;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableWrapper;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.util.AttributeSet;
import android.util.FloatProperty;
import android.util.StateSet;
import android.util.TypedValue;
import android.view.animation.OvershootInterpolator;
import com.google.android.material.C1339R;
import com.google.android.material.resources.MaterialAttributes;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearance;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.ShapeAppearancePathProvider;
import com.google.android.material.shape.StateListShapeAppearanceModel;
import java.io.IOException;
import java.lang.ref.WeakReference;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes5.dex */
public class FocusRingDrawable extends DrawableWrapper {
    private static final int ANIMATION_DURATION = 300;
    private static final boolean DEBUG_COLORS = false;
    private static final Drawable EMPTY_DRAWABLE = new ColorDrawable(0);
    private static final int[] FOCUSED_STATE_SET = {R.attr.state_focused};
    private static final TimeInterpolator INTERPOLATOR = new OvershootInterpolator(4.0f);
    private static final FloatProperty<FocusRingDrawable> PROPERTY_INTERPOLATION = new FloatProperty<FocusRingDrawable>("interpolation") { // from class: com.google.android.material.focus.FocusRingDrawable.1
        @Override // android.util.FloatProperty
        public void setValue(FocusRingDrawable focusRingDrawable, float f) {
            focusRingDrawable.interpolation = f;
            focusRingDrawable.invalidateSelf();
        }

        @Override // android.util.Property
        public Float get(FocusRingDrawable focusRingDrawable) {
            return Float.valueOf(focusRingDrawable.interpolation);
        }
    };
    private ObjectAnimator animator;
    private boolean focused;
    private float interpolation;
    private WeakReference<MaterialShapeDrawable> materialShapeDrawable;
    private final Matrix matrix;
    private boolean mutated;
    private final Paint paint;
    private final ShapeAppearancePathProvider pathProvider;
    private boolean previousStateSetEmpty;
    private float shapeAppearanceCornerSize;
    private final Path shapeAppearancePath;
    private FocusRingState state;
    private final Path tmpPath;
    private final Rect tmpRect;
    private final RectF tmpRectF;

    @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        return true;
    }

    public static Drawable wrap(Context context, Drawable drawable) {
        return !shouldUseFocusRing(context) ? drawable : new FocusRingDrawable(context, drawable);
    }

    public static FocusRingDrawable layer(Context context, LayerDrawable layerDrawable) {
        return layer(context, layerDrawable, null);
    }

    public static FocusRingDrawable layer(Context context, LayerDrawable layerDrawable, MaterialShapeDrawable materialShapeDrawable) {
        if (!shouldUseFocusRing(context)) {
            return null;
        }
        FocusRingDrawable focusRingDrawable = new FocusRingDrawable(context, EMPTY_DRAWABLE);
        if (materialShapeDrawable != null) {
            focusRingDrawable.setFocusRingMaterialShapeDrawable(materialShapeDrawable);
        }
        layerDrawable.addLayer(focusRingDrawable);
        focusRingDrawable.setCallback(layerDrawable);
        return focusRingDrawable;
    }

    private static boolean shouldUseFocusRing(Context context) {
        return MaterialAttributes.resolveBoolean(context.getTheme(), C1339R.attr.focusRingsEnabled, false);
    }

    public static FocusRingDrawable find(Drawable drawable) {
        if (drawable instanceof FocusRingDrawable) {
            return (FocusRingDrawable) drawable;
        }
        if (drawable instanceof DrawableWrapper) {
            Drawable drawable2 = ((DrawableWrapper) drawable).getDrawable();
            if (drawable2 instanceof FocusRingDrawable) {
                return (FocusRingDrawable) drawable2;
            }
        }
        if (!(drawable instanceof LayerDrawable)) {
            return null;
        }
        LayerDrawable layerDrawable = (LayerDrawable) drawable;
        for (int i = 0; i < layerDrawable.getNumberOfLayers(); i++) {
            Drawable drawable3 = layerDrawable.getDrawable(i);
            if (drawable3 instanceof FocusRingDrawable) {
                return (FocusRingDrawable) drawable3;
            }
        }
        return null;
    }

    public FocusRingDrawable() {
        super(null);
        this.paint = new Paint(1);
        this.tmpRectF = new RectF();
        this.tmpRect = new Rect();
        this.tmpPath = new Path();
        this.shapeAppearancePath = new Path();
        this.matrix = new Matrix();
        this.pathProvider = ShapeAppearancePathProvider.getInstanceOrCreate();
        this.shapeAppearanceCornerSize = -1.0f;
        this.interpolation = 1.0f;
        this.focused = false;
        this.mutated = false;
        this.state = new FocusRingState(null);
    }

    public FocusRingDrawable(Context context, Drawable drawable) {
        super(drawable);
        this.paint = new Paint(1);
        this.tmpRectF = new RectF();
        this.tmpRect = new Rect();
        this.tmpPath = new Path();
        this.shapeAppearancePath = new Path();
        this.matrix = new Matrix();
        this.pathProvider = ShapeAppearancePathProvider.getInstanceOrCreate();
        this.shapeAppearanceCornerSize = -1.0f;
        this.interpolation = 1.0f;
        this.focused = false;
        this.mutated = false;
        FocusRingState focusRingState = new FocusRingState(null);
        this.state = focusRingState;
        if (drawable != null) {
            focusRingState.wrappedState = drawable.getConstantState();
        }
        init(context.getTheme());
    }

    private FocusRingDrawable(FocusRingState focusRingState, Resources resources) {
        Drawable drawableNewDrawable;
        super(null);
        this.paint = new Paint(1);
        this.tmpRectF = new RectF();
        this.tmpRect = new Rect();
        this.tmpPath = new Path();
        this.shapeAppearancePath = new Path();
        this.matrix = new Matrix();
        this.pathProvider = ShapeAppearancePathProvider.getInstanceOrCreate();
        this.shapeAppearanceCornerSize = -1.0f;
        this.interpolation = 1.0f;
        this.focused = false;
        this.mutated = false;
        FocusRingState focusRingState2 = new FocusRingState(focusRingState);
        this.state = focusRingState2;
        Drawable.ConstantState constantState = focusRingState2.wrappedState;
        if (constantState != null) {
            if (resources != null) {
                drawableNewDrawable = constantState.newDrawable(resources);
            } else {
                drawableNewDrawable = constantState.newDrawable();
            }
            setDrawable(drawableNewDrawable);
        }
        updateLocalState();
    }

    @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        super.applyTheme(theme);
        init(theme);
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        inflate(resources, xmlPullParser, attributeSet, null);
    }

    @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        TypedArray typedArrayObtainAttributes;
        super.inflate(resources, xmlPullParser, attributeSet, theme);
        if (theme != null) {
            typedArrayObtainAttributes = theme.obtainStyledAttributes(attributeSet, C1339R.styleable.FocusRingDrawable, 0, 0);
        } else {
            typedArrayObtainAttributes = resources.obtainAttributes(attributeSet, C1339R.styleable.FocusRingDrawable);
        }
        updateStateFromTypedArrayWithoutThemeAttrsOrDefaults(typedArrayObtainAttributes);
        typedArrayObtainAttributes.recycle();
        inflateChildDrawable(resources, xmlPullParser, attributeSet, theme);
    }

    private void updateStateFromTypedArrayWithoutThemeAttrsOrDefaults(TypedArray typedArray) {
        this.state.ringEnabledAttr = getValueDataIfAttr(typedArray, C1339R.styleable.FocusRingDrawable_focusRingsEnabled);
        if (this.state.ringEnabledAttr == Integer.MIN_VALUE && typedArray.hasValue(C1339R.styleable.FocusRingDrawable_focusRingsEnabled)) {
            FocusRingState focusRingState = this.state;
            focusRingState.ringEnabled = typedArray.getBoolean(C1339R.styleable.FocusRingDrawable_focusRingsEnabled, focusRingState.ringEnabled);
            this.state.ringEnabledInflated = true;
        }
        this.state.ringOuterColorAttr = getValueDataIfAttr(typedArray, C1339R.styleable.FocusRingDrawable_focusRingsOuterStrokeColor);
        if (this.state.ringOuterColorAttr == Integer.MIN_VALUE) {
            this.state.ringOuterColor = typedArray.getColor(C1339R.styleable.FocusRingDrawable_focusRingsOuterStrokeColor, Integer.MIN_VALUE);
        }
        this.state.ringInnerColorAttr = getValueDataIfAttr(typedArray, C1339R.styleable.FocusRingDrawable_focusRingsInnerStrokeColor);
        if (this.state.ringInnerColorAttr == Integer.MIN_VALUE) {
            this.state.ringInnerColor = typedArray.getColor(C1339R.styleable.FocusRingDrawable_focusRingsInnerStrokeColor, Integer.MIN_VALUE);
        }
        this.state.ringOuterStrokeWidthAttr = getValueDataIfAttr(typedArray, C1339R.styleable.FocusRingDrawable_focusRingsOuterStrokeWidth);
        if (this.state.ringOuterStrokeWidthAttr == Integer.MIN_VALUE) {
            this.state.ringOuterStrokeWidth = typedArray.getDimension(C1339R.styleable.FocusRingDrawable_focusRingsOuterStrokeWidth, Float.NaN);
        }
        this.state.ringInnerStrokeWidthAttr = getValueDataIfAttr(typedArray, C1339R.styleable.FocusRingDrawable_focusRingsInnerStrokeWidth);
        if (this.state.ringInnerStrokeWidthAttr == Integer.MIN_VALUE) {
            this.state.ringInnerStrokeWidth = typedArray.getDimension(C1339R.styleable.FocusRingDrawable_focusRingsInnerStrokeWidth, Float.NaN);
        }
        this.state.ringInnerStrokeWidthAttr = getValueDataIfAttr(typedArray, C1339R.styleable.FocusRingDrawable_focusRingsInnerStrokeWidth);
        if (this.state.ringInnerStrokeWidthAttr == Integer.MIN_VALUE) {
            this.state.ringInnerStrokeWidth = typedArray.getDimension(C1339R.styleable.FocusRingDrawable_focusRingsInnerStrokeWidth, Float.NaN);
        }
        this.state.ringRadiusAttr = getValueDataIfAttr(typedArray, C1339R.styleable.FocusRingDrawable_focusRingsRadius);
        if (this.state.ringRadiusAttr == Integer.MIN_VALUE) {
            this.state.ringRadius = typedArray.getDimension(C1339R.styleable.FocusRingDrawable_focusRingsRadius, Float.NaN);
        }
        this.state.ringInsetAttr = getValueDataIfAttr(typedArray, C1339R.styleable.FocusRingDrawable_focusRingsInset);
        if (this.state.ringInsetAttr == Integer.MIN_VALUE) {
            this.state.ringInset = typedArray.getDimension(C1339R.styleable.FocusRingDrawable_focusRingsInset, Float.NaN);
        }
        this.state.ringInnerInsetAttr = getValueDataIfAttr(typedArray, C1339R.styleable.FocusRingDrawable_focusRingsInnerStrokeInset);
        if (this.state.ringInnerInsetAttr == Integer.MIN_VALUE) {
            this.state.ringInnerInset = typedArray.getDimension(C1339R.styleable.FocusRingDrawable_focusRingsInnerStrokeInset, Float.NaN);
        }
        this.state.ringShapeAppearanceAttr = getValueDataIfAttr(typedArray, C1339R.styleable.FocusRingDrawable_focusRingsShapeAppearance);
        this.state.ringShapeAppearanceResId = getResIdIfReference(typedArray, C1339R.styleable.FocusRingDrawable_focusRingsShapeAppearance);
    }

    private void updateStateFromTypedArrayWithThemeAttrsAndDefaults(TypedArray typedArray, Resources.Theme theme) {
        int i;
        TypedValue typedValueResolve;
        Resources resources = theme.getResources();
        if (this.state.ringEnabledAttr != Integer.MIN_VALUE && (typedValueResolve = MaterialAttributes.resolve(theme, this.state.ringEnabledAttr)) != null) {
            this.state.ringEnabled = typedValueResolve.data != 0;
            this.state.ringEnabledInflated = true;
        }
        if (!this.state.ringEnabledInflated) {
            FocusRingState focusRingState = this.state;
            focusRingState.ringEnabled = MaterialAttributes.resolveBoolean(theme, C1339R.attr.focusRingsEnabled, focusRingState.ringEnabled);
        }
        if (this.state.ringEnabled) {
            FocusRingState focusRingState2 = this.state;
            focusRingState2.ringOuterColor = maybeResolveColor(focusRingState2.ringOuterColor, theme, this.state.ringOuterColorAttr, typedArray, C1339R.styleable.FocusRingDrawable_focusRingsOuterStrokeColor, -16777216);
            FocusRingState focusRingState3 = this.state;
            focusRingState3.ringInnerColor = maybeResolveColor(focusRingState3.ringInnerColor, theme, this.state.ringInnerColorAttr, typedArray, C1339R.styleable.FocusRingDrawable_focusRingsInnerStrokeColor, -1);
            float dimensionPixelSize = resources.getDimensionPixelSize(C1339R.dimen.mtrl_focus_ring_outer_stroke_width);
            FocusRingState focusRingState4 = this.state;
            focusRingState4.ringOuterStrokeWidth = maybeResolveDimension(focusRingState4.ringOuterStrokeWidth, theme, this.state.ringOuterStrokeWidthAttr, typedArray, C1339R.styleable.FocusRingDrawable_focusRingsOuterStrokeWidth, dimensionPixelSize);
            FocusRingState focusRingState5 = this.state;
            focusRingState5.ringInnerStrokeWidth = maybeResolveDimension(focusRingState5.ringInnerStrokeWidth, theme, this.state.ringInnerStrokeWidthAttr, typedArray, C1339R.styleable.FocusRingDrawable_focusRingsInnerStrokeWidth, dimensionPixelSize);
            FocusRingState focusRingState6 = this.state;
            focusRingState6.ringRadius = maybeResolveDimension(focusRingState6.ringRadius, theme, this.state.ringRadiusAttr, typedArray, C1339R.styleable.FocusRingDrawable_focusRingsRadius, Float.NaN);
            FocusRingState focusRingState7 = this.state;
            focusRingState7.ringInset = maybeResolveDimension(focusRingState7.ringInset, theme, this.state.ringInsetAttr, typedArray, C1339R.styleable.FocusRingDrawable_focusRingsInset, 0.0f);
            FocusRingState focusRingState8 = this.state;
            focusRingState8.ringInnerInset = maybeResolveDimension(focusRingState8.ringInnerInset, theme, this.state.ringInnerInsetAttr, typedArray, C1339R.styleable.FocusRingDrawable_focusRingsInnerStrokeInset, 0.0f);
            int i2 = this.state.ringShapeAppearanceResId;
            FocusRingState focusRingState9 = this.state;
            if (i2 != Integer.MIN_VALUE) {
                focusRingState9.ringShapeAppearance = ShapeAppearanceModel.builder(theme, focusRingState9.ringShapeAppearanceResId).build();
                return;
            }
            if (focusRingState9.ringShapeAppearanceAttr == Integer.MIN_VALUE) {
                i = C1339R.attr.focusRingsShapeAppearance;
            } else {
                i = this.state.ringShapeAppearanceAttr;
            }
            TypedValue typedValueResolve2 = MaterialAttributes.resolve(theme, i);
            if (typedValueResolve2 != null) {
                this.state.ringShapeAppearance = ShapeAppearanceModel.builder(theme, typedValueResolve2.resourceId).build();
            }
        }
    }

    private int getValueDataIfAttr(TypedArray typedArray, int i) {
        if (typedArray.getType(i) != 2) {
            return Integer.MIN_VALUE;
        }
        TypedValue typedValue = new TypedValue();
        if (typedArray.getValue(i, typedValue)) {
            return typedValue.data;
        }
        return Integer.MIN_VALUE;
    }

    private int getResIdIfReference(TypedArray typedArray, int i) {
        if (typedArray.getType(i) == 1) {
            return typedArray.getResourceId(i, Integer.MIN_VALUE);
        }
        return Integer.MIN_VALUE;
    }

    private int maybeResolveColor(int i, Resources.Theme theme, int i2, TypedArray typedArray, int i3, int i4) {
        if (i != Integer.MIN_VALUE) {
            return i;
        }
        if (i2 != Integer.MIN_VALUE) {
            TypedValue typedValue = new TypedValue();
            if (theme.resolveAttribute(i2, typedValue, true)) {
                return typedValue.data;
            }
        }
        return typedArray.getColor(i3, i4);
    }

    private float maybeResolveDimension(float f, Resources.Theme theme, int i, TypedArray typedArray, int i2, float f2) {
        if (!Float.isNaN(f)) {
            return f;
        }
        if (i != Float.MIN_VALUE) {
            TypedValue typedValue = new TypedValue();
            if (theme.resolveAttribute(i, typedValue, true)) {
                return typedValue.getDimension(theme.getResources().getDisplayMetrics());
            }
        }
        return typedArray.getDimension(i2, f2);
    }

    private void inflateChildDrawable(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        int depth = xmlPullParser.getDepth();
        Drawable drawableCreateFromXmlInner = null;
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1 || (next == 3 && xmlPullParser.getDepth() <= depth)) {
                break;
            } else if (next == 2) {
                drawableCreateFromXmlInner = Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet, theme);
            }
        }
        if (drawableCreateFromXmlInner != null) {
            setDrawable(drawableCreateFromXmlInner);
            this.state.wrappedState = drawableCreateFromXmlInner.getConstantState();
        } else {
            Drawable drawable = EMPTY_DRAWABLE;
            setDrawable(drawable);
            this.state.wrappedState = drawable.getConstantState();
        }
    }

    private void init(Resources.Theme theme) {
        TypedArray typedArrayObtainStyledAttributes = theme.obtainStyledAttributes(C1339R.styleable.FocusRingDrawable);
        updateStateFromTypedArrayWithThemeAttrsAndDefaults(typedArrayObtainStyledAttributes, theme);
        typedArrayObtainStyledAttributes.recycle();
        updateLocalState();
    }

    private void updateLocalState() {
        this.paint.setStyle(Paint.Style.STROKE);
        if (Float.isNaN(this.state.ringOuterStrokeWidth)) {
            return;
        }
        this.paint.setStrokeWidth(this.state.ringOuterStrokeWidth);
    }

    @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        if (this.state.ringEnabled) {
            calculateShapeAppearanceRoundRectOrPath();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isProjected() {
        Drawable drawable = getDrawable();
        return drawable != null && drawable.isProjected();
    }

    @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        if (!this.state.ringEnabled) {
            this.focused = false;
            return super.onStateChange(iArr);
        }
        boolean zStateSetMatches = StateSet.stateSetMatches(FOCUSED_STATE_SET, iArr);
        boolean z = this.focused != zStateSetMatches;
        this.focused = zStateSetMatches;
        if (z && iArr.length > 0 && !this.previousStateSetEmpty) {
            maybeAnimate(zStateSetMatches);
        }
        this.previousStateSetEmpty = iArr.length == 0;
        return super.onStateChange(iArr) || z;
    }

    private void maybeAnimate(boolean z) {
        ObjectAnimator objectAnimator = this.animator;
        if (objectAnimator != null) {
            objectAnimator.cancel();
            this.animator = null;
        }
        if (z) {
            ObjectAnimator objectAnimatorCreateAnimator = createAnimator();
            this.animator = objectAnimatorCreateAnimator;
            objectAnimatorCreateAnimator.start();
            return;
        }
        this.interpolation = 1.0f;
    }

    @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        super.jumpToCurrentState();
        ObjectAnimator objectAnimator = this.animator;
        if (objectAnimator != null) {
            objectAnimator.end();
            this.animator = null;
        }
    }

    @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public boolean isStateful() {
        return super.isStateful() || this.state.ringEnabled;
    }

    @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public boolean hasFocusStateSpecified() {
        try {
            if (super.hasFocusStateSpecified()) {
                return true;
            }
            return this.state.ringEnabled;
        } catch (NoSuchMethodError unused) {
            return this.state.ringEnabled;
        }
    }

    @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.state.ringEnabled && this.focused) {
            float fCalculateOuterInset = calculateOuterInset();
            float fCalculateInnerInset = calculateInnerInset();
            Path nonEmptyPath = getNonEmptyPath();
            if (nonEmptyPath == null) {
                float fCalculateOuterRadius = calculateOuterRadius();
                drawRoundRect(canvas, calculateInnerRadius(fCalculateOuterRadius), fCalculateInnerInset, this.state.ringInnerStrokeWidth, this.state.ringInnerColor);
                drawRoundRect(canvas, fCalculateOuterRadius, fCalculateOuterInset, this.state.ringOuterStrokeWidth, this.state.ringOuterColor);
            } else {
                drawPath(canvas, nonEmptyPath, fCalculateInnerInset, this.state.ringInnerStrokeWidth, this.state.ringInnerColor);
                drawPath(canvas, nonEmptyPath, fCalculateOuterInset, this.state.ringOuterStrokeWidth, this.state.ringOuterColor);
            }
        }
    }

    private Path getNonEmptyPath() {
        if (!this.shapeAppearancePath.isEmpty()) {
            return this.shapeAppearancePath;
        }
        WeakReference<MaterialShapeDrawable> weakReference = this.materialShapeDrawable;
        if (weakReference == null || weakReference.get() == null) {
            return null;
        }
        Path path = this.materialShapeDrawable.get().getPath();
        if (path.isEmpty()) {
            return null;
        }
        return path;
    }

    private void drawPath(Canvas canvas, Path path, float f, float f2, int i) {
        calculateBounds(this.tmpRectF);
        float f3 = f * 2.0f;
        float fWidth = 1.0f - (f3 / this.tmpRectF.width());
        float fHeight = 1.0f - (f3 / this.tmpRectF.height());
        this.matrix.reset();
        this.matrix.postScale(fWidth, fHeight, this.tmpRectF.centerX(), this.tmpRectF.centerY());
        path.transform(this.matrix, this.tmpPath);
        this.paint.setStrokeWidth(f2 * this.interpolation);
        this.paint.setColor(i);
        canvas.drawPath(this.tmpPath, this.paint);
    }

    private void drawRoundRect(Canvas canvas, float f, float f2, float f3, int i) {
        calculateBounds(this.tmpRectF);
        this.tmpRectF.inset(f2, f2);
        this.paint.setStrokeWidth(f3 * this.interpolation);
        this.paint.setColor(i);
        canvas.drawRoundRect(this.tmpRectF, f, f, this.paint);
    }

    public boolean isFocusRingEnabled() {
        return this.state.ringEnabled;
    }

    public void setFocusRingEnabled(boolean z) {
        this.state.ringEnabled = z;
    }

    public MaterialShapeDrawable getFocusRingMaterialShapeDrawable() {
        WeakReference<MaterialShapeDrawable> weakReference = this.materialShapeDrawable;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public void setFocusRingMaterialShapeDrawable(MaterialShapeDrawable materialShapeDrawable) {
        this.materialShapeDrawable = new WeakReference<>(materialShapeDrawable);
    }

    public ShapeAppearance getFocusRingShapeAppearance() {
        return this.state.ringShapeAppearance;
    }

    public void setFocusRingShapeAppearance(ShapeAppearance shapeAppearance) {
        this.state.ringShapeAppearance = shapeAppearance;
    }

    public Rect getFocusRingBounds() {
        return this.state.ringCustomBounds;
    }

    public void setFocusRingBounds(Rect rect) {
        this.state.ringCustomBounds = rect;
    }

    public void setFocusRingBounds(int i, int i2, int i3, int i4) {
        if (this.state.ringCustomBounds == null) {
            this.state.ringCustomBounds = new Rect();
        }
        this.state.ringCustomBounds.set(i, i2, i3, i4);
    }

    private void calculateBounds(RectF rectF) {
        if (this.state.ringCustomBounds == null) {
            WeakReference<MaterialShapeDrawable> weakReference = this.materialShapeDrawable;
            if (weakReference != null && weakReference.get() != null) {
                rectF.set(this.materialShapeDrawable.get().getBounds());
                return;
            }
            if (getDrawable() instanceof RippleDrawable) {
                RippleDrawable rippleDrawable = (RippleDrawable) getDrawable();
                rippleDrawable.getHotspotBounds(this.tmpRect);
                int radius = rippleDrawable.getRadius();
                if (radius > 0) {
                    this.tmpRect.inset(Math.max(0, (this.tmpRect.width() / 2) - radius), Math.max(0, (this.tmpRect.height() / 2) - radius));
                }
                rectF.set(this.tmpRect);
                return;
            }
            rectF.set(getBounds());
            return;
        }
        rectF.set(this.state.ringCustomBounds);
    }

    private float calculateOuterInset() {
        return this.state.ringInset + ((this.state.ringOuterStrokeWidth / 2.0f) * this.interpolation);
    }

    private float calculateInnerInset() {
        return this.state.ringInset + this.state.ringInnerInset + ((this.state.ringInnerStrokeWidth / 2.0f) * this.interpolation);
    }

    private float calculateOuterRadius() {
        int radius;
        if (Float.isNaN(this.state.ringRadius)) {
            float f = this.shapeAppearanceCornerSize;
            if (f >= 0.0f) {
                return f;
            }
            WeakReference<MaterialShapeDrawable> weakReference = this.materialShapeDrawable;
            if (weakReference != null && weakReference.get() != null) {
                float fCalculateRoundRectCornerSize = this.materialShapeDrawable.get().calculateRoundRectCornerSize();
                if (fCalculateRoundRectCornerSize >= 0.0f) {
                    return Math.max(0.0f, fCalculateRoundRectCornerSize - (this.state.ringOuterStrokeWidth / 2.0f));
                }
            }
            Drawable drawable = getDrawable();
            if (!(drawable instanceof RippleDrawable) || (radius = ((RippleDrawable) drawable).getRadius()) < 0) {
                return 0.0f;
            }
            return radius;
        }
        return this.state.ringRadius;
    }

    private float calculateInnerRadius(float f) {
        return Math.max(0.0f, f - (this.state.ringOuterStrokeWidth / 2.0f));
    }

    private void calculateShapeAppearanceRoundRectOrPath() {
        if (this.state.ringShapeAppearance != null) {
            calculateBounds(this.tmpRectF);
            ShapeAppearanceModel shapeForState = this.state.ringShapeAppearance.getShapeForState(FOCUSED_STATE_SET);
            if (shapeForState.isRoundRect(this.tmpRectF)) {
                float fCalculateOuterInset = calculateOuterInset();
                this.tmpRectF.inset(fCalculateOuterInset, fCalculateOuterInset);
                this.shapeAppearanceCornerSize = shapeForState.getTopLeftCornerSize().getCornerSize(this.tmpRectF);
                this.shapeAppearancePath.reset();
                return;
            }
            this.pathProvider.calculatePath(shapeForState, null, 1.0f, this.tmpRectF, null, this.shapeAppearancePath);
            this.shapeAppearanceCornerSize = -1.0f;
            return;
        }
        this.shapeAppearanceCornerSize = -1.0f;
        this.shapeAppearancePath.reset();
    }

    private ObjectAnimator createAnimator() {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, PROPERTY_INTERPOLATION, 0.0f, 1.0f);
        objectAnimatorOfFloat.setDuration(300L);
        objectAnimatorOfFloat.setInterpolator(INTERPOLATOR);
        objectAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.focus.FocusRingDrawable.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                super.onAnimationCancel(animator);
                FocusRingDrawable.this.interpolation = 1.0f;
                FocusRingDrawable.this.invalidateSelf();
            }
        });
        return objectAnimatorOfFloat;
    }

    @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.mutated && super.mutate() == this) {
            this.state = new FocusRingState(this.state);
            Drawable drawable = getDrawable();
            if (drawable != null) {
                this.state.wrappedState = drawable.getConstantState();
            }
            this.mutated = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        if (!this.state.canConstantState()) {
            return null;
        }
        this.state.mChangingConfigurations = getChangingConfigurations();
        return this.state;
    }

    public static final class FocusRingState extends Drawable.ConstantState {
        int mChangingConfigurations;
        private Rect ringCustomBounds;
        private boolean ringEnabled;
        private int ringEnabledAttr;
        private boolean ringEnabledInflated;
        private int ringInnerColor;
        private int ringInnerColorAttr;
        private float ringInnerInset;
        private int ringInnerInsetAttr;
        private float ringInnerStrokeWidth;
        private int ringInnerStrokeWidthAttr;
        private float ringInset;
        private int ringInsetAttr;
        private int ringOuterColor;
        private int ringOuterColorAttr;
        private float ringOuterStrokeWidth;
        private int ringOuterStrokeWidthAttr;
        private float ringRadius;
        private int ringRadiusAttr;
        private ShapeAppearance ringShapeAppearance;
        private int ringShapeAppearanceAttr;
        private int ringShapeAppearanceResId;
        Drawable.ConstantState wrappedState;

        public FocusRingState(FocusRingState focusRingState) {
            this.mChangingConfigurations = 0;
            this.ringEnabled = false;
            this.ringEnabledAttr = Integer.MIN_VALUE;
            this.ringEnabledInflated = false;
            this.ringOuterColor = Integer.MIN_VALUE;
            this.ringOuterColorAttr = Integer.MIN_VALUE;
            this.ringInnerColor = Integer.MIN_VALUE;
            this.ringInnerColorAttr = Integer.MIN_VALUE;
            this.ringOuterStrokeWidth = Float.NaN;
            this.ringOuterStrokeWidthAttr = Integer.MIN_VALUE;
            this.ringInnerStrokeWidth = Float.NaN;
            this.ringInnerStrokeWidthAttr = Integer.MIN_VALUE;
            this.ringRadius = Float.NaN;
            this.ringRadiusAttr = Integer.MIN_VALUE;
            this.ringInset = Float.NaN;
            this.ringInsetAttr = Integer.MIN_VALUE;
            this.ringInnerInset = Float.NaN;
            this.ringInnerInsetAttr = Integer.MIN_VALUE;
            this.ringShapeAppearance = null;
            this.ringShapeAppearanceResId = Integer.MIN_VALUE;
            this.ringShapeAppearanceAttr = Integer.MIN_VALUE;
            this.ringCustomBounds = null;
            if (focusRingState != null) {
                this.wrappedState = focusRingState.wrappedState;
                this.mChangingConfigurations = focusRingState.mChangingConfigurations;
                this.ringEnabled = focusRingState.ringEnabled;
                this.ringEnabledAttr = focusRingState.ringEnabledAttr;
                this.ringEnabledInflated = focusRingState.ringEnabledInflated;
                this.ringOuterColor = focusRingState.ringOuterColor;
                this.ringOuterColorAttr = focusRingState.ringOuterColorAttr;
                this.ringInnerColor = focusRingState.ringInnerColor;
                this.ringInnerColorAttr = focusRingState.ringInnerColorAttr;
                this.ringOuterStrokeWidth = focusRingState.ringOuterStrokeWidth;
                this.ringOuterStrokeWidthAttr = focusRingState.ringOuterStrokeWidthAttr;
                this.ringInnerStrokeWidth = focusRingState.ringInnerStrokeWidth;
                this.ringInnerStrokeWidthAttr = focusRingState.ringInnerStrokeWidthAttr;
                this.ringRadius = focusRingState.ringRadius;
                this.ringRadiusAttr = focusRingState.ringRadiusAttr;
                this.ringInset = focusRingState.ringInset;
                this.ringInsetAttr = focusRingState.ringInsetAttr;
                this.ringInnerInset = focusRingState.ringInnerInset;
                this.ringInnerInsetAttr = focusRingState.ringInnerInsetAttr;
                this.ringShapeAppearanceResId = focusRingState.ringShapeAppearanceResId;
                this.ringShapeAppearanceAttr = focusRingState.ringShapeAppearanceAttr;
                ShapeAppearance shapeAppearance = focusRingState.ringShapeAppearance;
                if (shapeAppearance instanceof ShapeAppearanceModel) {
                    this.ringShapeAppearance = ((ShapeAppearanceModel) shapeAppearance).toBuilder().build();
                } else if (shapeAppearance instanceof StateListShapeAppearanceModel) {
                    this.ringShapeAppearance = ((StateListShapeAppearanceModel) shapeAppearance).toBuilder().build();
                } else {
                    this.ringShapeAppearance = shapeAppearance;
                }
                if (focusRingState.ringCustomBounds != null) {
                    this.ringCustomBounds = new Rect(focusRingState.ringCustomBounds);
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new FocusRingDrawable(this, null);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new FocusRingDrawable(this, resources);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            Drawable.ConstantState constantState = this.wrappedState;
            return this.mChangingConfigurations | (constantState != null ? constantState.getChangingConfigurations() : 0);
        }

        public boolean canConstantState() {
            return this.wrappedState != null;
        }
    }
}
