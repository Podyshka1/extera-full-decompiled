package com.google.android.material.slider;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableWrapper;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewOverlay;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.SeekBar;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.math.MathUtils;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.widget.ExploreByTouchHelper;
import com.android.dex.EncodedValueReader$$ExternalSyntheticBUOutline0;
import com.google.android.material.C1451R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.drawable.DrawableUtils;
import com.google.android.material.focus.FocusRingDrawable;
import com.google.android.material.internal.DescendantOffsetUtils;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.motion.MotionUtils;
import com.google.android.material.resources.MaterialAttributes;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.slider.BaseOnChangeListener;
import com.google.android.material.slider.BaseOnSliderTouchListener;
import com.google.android.material.slider.BaseSlider;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import com.google.android.material.tooltip.TooltipDrawable;
import com.google.protobuf.FieldSet$$ExternalSyntheticBUOutline0;
import com.sun.jna.IntegerType$$ExternalSyntheticBUOutline0;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.math.BigDecimal;
import java.math.MathContext;
import java.text.NumberFormat;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;
import org.telegram.tgnet.TLObject;
import org.telegram.ui.WearAuthSheet$$ExternalSyntheticBUOutline0;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
abstract class BaseSlider<S extends BaseSlider<S, L, T>, L extends BaseOnChangeListener<S>, T extends BaseOnSliderTouchListener<S>> extends View {
    private static final int DEFAULT_LABEL_ANIMATION_ENTER_DURATION = 83;
    private static final int DEFAULT_LABEL_ANIMATION_EXIT_DURATION = 117;
    private static final String EXCEPTION_ILLEGAL_CONTINUOUS_MODE_TICK_COUNT = "The continuousModeTickCount(%s) must be greater than or equal to 0";
    private static final String EXCEPTION_ILLEGAL_DISCRETE_VALUE = "Value(%s) must be equal to valueFrom(%s) plus a multiple of stepSize(%s) when using stepSize(%s)";
    private static final String EXCEPTION_ILLEGAL_MIN_SEPARATION = "minSeparation(%s) must be greater or equal to 0";
    private static final String EXCEPTION_ILLEGAL_MIN_SEPARATION_STEP_SIZE = "minSeparation(%s) must be greater or equal and a multiple of stepSize(%s) when using stepSize(%s)";
    private static final String EXCEPTION_ILLEGAL_MIN_SEPARATION_STEP_SIZE_UNIT = "minSeparation(%s) cannot be set as a dimension when using stepSize(%s)";
    private static final String EXCEPTION_ILLEGAL_STEP_SIZE = "The stepSize(%s) must be 0, or a factor of the valueFrom(%s)-valueTo(%s) range";
    private static final String EXCEPTION_ILLEGAL_VALUE = "Slider value(%s) must be greater or equal to valueFrom(%s), and lower or equal to valueTo(%s)";
    private static final String EXCEPTION_ILLEGAL_VALUE_FROM = "valueFrom(%s) must be smaller than valueTo(%s)";
    private static final int HALO_ALPHA = 63;
    private static final float LEFT_LABEL_PIVOT_X = 1.2f;
    private static final float LEFT_LABEL_PIVOT_Y = 0.5f;
    private static final int MAX_TIMEOUT_TOOLTIP_WITH_ACCESSIBILITY = 120000;
    private static final int MIN_TIMEOUT_TOOLTIP_WITH_ACCESSIBILITY = 10000;
    private static final float RIGHT_LABEL_PIVOT_X = -0.2f;
    private static final float RIGHT_LABEL_PIVOT_Y = 0.5f;
    private static final String TAG = "BaseSlider";
    private static final double THRESHOLD = 1.0E-4d;
    private static final float THUMB_WIDTH_PRESSED_RATIO = 0.5f;
    private static final int TIMEOUT_SEND_ACCESSIBILITY_EVENT = 200;
    private static final float TOP_LABEL_PIVOT_X = 0.5f;
    private static final float TOP_LABEL_PIVOT_Y = 1.2f;
    private static final float TOUCH_SLOP_RATIO = 0.8f;
    private static final int TRACK_CORNER_SIZE_UNSET = -1;
    static final int UNIT_PX = 0;
    static final int UNIT_VALUE = 1;
    private static final String WARNING_FLOATING_POINT_ERROR = "Floating point value used for %s(%s). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the value correctly.";
    private static final String WARNING_PARSE_ERROR = "Error parsing value(%s), valueFrom(%s), and valueTo(%s) into a float.";
    private BaseSlider<S, L, T>.AccessibilityEventSender accessibilityEventSender;
    private final AccessibilityHelper accessibilityHelper;
    private final AccessibilityManager accessibilityManager;
    private int accessibilityMinTouchTargetSize;
    private int activeThumbIdx;
    private final Paint activeTicksPaint;
    private final Paint activeTrackPaint;
    private final RectF activeTrackRect;
    private boolean centered;
    private final List<L> changeListeners;
    private int continuousModeTickCount;
    private final RectF cornerRect;
    private Drawable customThumbDrawable;
    private List<Drawable> customThumbDrawablesForValues;
    private final List<MaterialShapeDrawable> defaultThumbDrawables;
    private int defaultThumbHeight;
    private int defaultThumbRadius;
    private int defaultThumbTrackGapSize;
    private int defaultThumbWidth;
    private int defaultTickActiveRadius;
    private int defaultTickInactiveRadius;
    private int defaultTrackThickness;
    private boolean dirtyConfig;
    List<Rect> exclusionRects;
    private int focusedThumbIdx;
    private boolean forceDrawCompatHalo;
    private LabelFormatter formatter;
    private ColorStateList haloColor;
    private final Paint haloPaint;
    private int haloRadius;
    private final Rect iconRect;
    private final RectF iconRectF;
    private final Paint inactiveTicksPaint;
    private final RectF inactiveTrackLeftRect;
    private final Paint inactiveTrackPaint;
    private final RectF inactiveTrackRightRect;
    private boolean isLongPress;
    private int labelBehavior;
    private int labelPadding;
    private final Rect labelRect;
    private int labelStyle;
    private final List<TooltipDrawable> labels;
    private boolean labelsAreAnimatedIn;
    private ValueAnimator labelsInAnimator;
    private ValueAnimator labelsOutAnimator;
    private MotionEvent lastEvent;
    private int minTickSpacing;
    private int minTouchTargetSize;
    private int minTrackSidePadding;
    private int minWidgetThickness;
    private final ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener;
    private final ViewTreeObserver.OnScrollChangedListener onScrollChangedListener;
    private List<Float> previousDownTouchEventValues;
    private final Runnable resetActiveThumbIndex;
    private final Matrix rotationMatrix;
    private final int scaledTouchSlop;
    private int separationUnit;
    private float stepSize;
    private final Paint stopIndicatorPaint;
    private boolean thisAndAncestorsVisible;
    private float thumbElevation;
    private int thumbHeight;
    private final int thumbHeightDecreaseFocusRing;
    private boolean thumbIsPressed;
    private final Paint thumbPaint;
    private ColorStateList thumbStrokeColor;
    private float thumbStrokeWidth;
    private ColorStateList thumbTintList;
    private int thumbTrackGapSize;
    private int thumbWidth;
    private int tickActiveRadius;
    private ColorStateList tickColorActive;
    private ColorStateList tickColorInactive;
    private int tickInactiveRadius;
    private int tickVisibilityMode;
    private float[] ticksCoordinates;
    private final int tooltipTimeoutMillis;
    private float touchDownAxis1;
    private float touchDownAxis2;
    private final List<T> touchListeners;
    private float touchPosition;
    private ColorStateList trackColorActive;
    private ColorStateList trackColorInactive;
    private int trackCornerSize;
    private ColorStateList trackIconActiveColor;
    private Drawable trackIconActiveEnd;
    private boolean trackIconActiveEndMutated;
    private Drawable trackIconActiveStart;
    private boolean trackIconActiveStartMutated;
    private ColorStateList trackIconInactiveColor;
    private Drawable trackIconInactiveEnd;
    private boolean trackIconInactiveEndMutated;
    private Drawable trackIconInactiveStart;
    private boolean trackIconInactiveStartMutated;
    private int trackIconPadding;
    private int trackIconSize;
    private int trackInsideCornerSize;
    private final Path trackPath;
    private int trackSidePadding;
    private int trackStopIndicatorSize;
    private int trackThickness;
    private int trackWidth;
    private float valueFrom;
    private float valueTo;
    private ArrayList<Float> values;
    private final Rect viewRect;
    private int widgetOrientation;
    private int widgetThickness;
    static final int DEF_STYLE_RES = C1451R.style.Widget_MaterialComponents_Slider;
    private static final int LABEL_ANIMATION_ENTER_DURATION_ATTR = C1451R.attr.motionDurationMedium4;
    private static final int LABEL_ANIMATION_EXIT_DURATION_ATTR = C1451R.attr.motionDurationShort3;
    private static final int LABEL_ANIMATION_ENTER_EASING_ATTR = C1451R.attr.motionEasingEmphasizedInterpolator;
    private static final int LABEL_ANIMATION_EXIT_EASING_ATTR = C1451R.attr.motionEasingEmphasizedAccelerateInterpolator;

    public enum FullCornerDirection {
        BOTH,
        LEFT,
        RIGHT,
        NONE
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Orientation {
    }

    private int convertToTickVisibilityMode(boolean z) {
        return z ? 0 : 2;
    }

    public float getMinSeparation() {
        return 0.0f;
    }

    /* JADX INFO: renamed from: $r8$lambda$4h7OGYoK8jQLbX-Z2EYTAM52aVc, reason: not valid java name */
    public static /* synthetic */ void m2970$r8$lambda$4h7OGYoK8jQLbXZ2EYTAM52aVc(BaseSlider baseSlider) {
        baseSlider.setActiveThumbIndex(-1);
        baseSlider.invalidate();
    }

    public BaseSlider(Context context) {
        this(context, null);
    }

    public BaseSlider(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1451R.attr.sliderStyle);
    }

    public BaseSlider(Context context, AttributeSet attributeSet, int i) {
        super(MaterialThemeOverlay.wrap(context, attributeSet, i, DEF_STYLE_RES), attributeSet, i);
        this.labels = new ArrayList();
        this.changeListeners = new ArrayList();
        this.touchListeners = new ArrayList();
        this.labelsAreAnimatedIn = false;
        this.defaultThumbWidth = -1;
        this.defaultThumbTrackGapSize = -1;
        this.defaultThumbHeight = -1;
        this.centered = false;
        this.trackIconActiveStartMutated = false;
        this.trackIconActiveEndMutated = false;
        this.trackIconInactiveStartMutated = false;
        this.trackIconInactiveEndMutated = false;
        this.viewRect = new Rect();
        this.exclusionRects = new ArrayList();
        this.previousDownTouchEventValues = new ArrayList();
        this.thumbIsPressed = false;
        this.values = new ArrayList<>();
        this.activeThumbIdx = -1;
        this.focusedThumbIdx = -1;
        this.stepSize = 0.0f;
        this.continuousModeTickCount = 0;
        this.isLongPress = false;
        this.trackPath = new Path();
        this.activeTrackRect = new RectF();
        this.inactiveTrackLeftRect = new RectF();
        this.inactiveTrackRightRect = new RectF();
        this.cornerRect = new RectF();
        this.labelRect = new Rect();
        this.iconRectF = new RectF();
        this.iconRect = new Rect();
        this.rotationMatrix = new Matrix();
        this.defaultThumbDrawables = new ArrayList();
        this.customThumbDrawablesForValues = Collections.EMPTY_LIST;
        this.separationUnit = 0;
        this.onScrollChangedListener = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.google.android.material.slider.BaseSlider$$ExternalSyntheticLambda1
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public final void onScrollChanged() {
                this.f$0.updateLabels();
            }
        };
        this.onGlobalLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.google.android.material.slider.BaseSlider$$ExternalSyntheticLambda2
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                this.f$0.updateLabels();
            }
        };
        this.resetActiveThumbIndex = new Runnable() { // from class: com.google.android.material.slider.BaseSlider$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                BaseSlider.m2970$r8$lambda$4h7OGYoK8jQLbXZ2EYTAM52aVc(this.f$0);
            }
        };
        Context context2 = getContext();
        this.thisAndAncestorsVisible = isShown();
        this.inactiveTrackPaint = new Paint();
        this.activeTrackPaint = new Paint();
        Paint paint = new Paint(1);
        this.thumbPaint = paint;
        Paint.Style style = Paint.Style.FILL;
        paint.setStyle(style);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        Paint paint2 = new Paint(1);
        this.haloPaint = paint2;
        paint2.setStyle(style);
        Paint paint3 = new Paint();
        this.inactiveTicksPaint = paint3;
        Paint.Style style2 = Paint.Style.STROKE;
        paint3.setStyle(style2);
        Paint.Cap cap = Paint.Cap.ROUND;
        paint3.setStrokeCap(cap);
        Paint paint4 = new Paint();
        this.activeTicksPaint = paint4;
        paint4.setStyle(style2);
        paint4.setStrokeCap(cap);
        Paint paint5 = new Paint();
        this.stopIndicatorPaint = paint5;
        paint5.setStyle(style);
        paint5.setStrokeCap(cap);
        this.thumbHeightDecreaseFocusRing = context2.getResources().getDimensionPixelSize(C1451R.dimen.m3_slider_focus_ring_thumb_height_decrease);
        loadResources(context2.getResources());
        processAttributes(context2, attributeSet, i);
        setFocusable(true);
        setClickable(true);
        this.scaledTouchSlop = ViewConfiguration.get(context2).getScaledTouchSlop();
        AccessibilityHelper accessibilityHelper = new AccessibilityHelper(this);
        this.accessibilityHelper = accessibilityHelper;
        ViewCompat.setAccessibilityDelegate(this, accessibilityHelper);
        AccessibilityManager accessibilityManager = (AccessibilityManager) getContext().getSystemService("accessibility");
        this.accessibilityManager = accessibilityManager;
        if (Build.VERSION.SDK_INT >= 29) {
            this.tooltipTimeoutMillis = accessibilityManager.getRecommendedTimeoutMillis(10000, 6);
        } else {
            this.tooltipTimeoutMillis = MAX_TIMEOUT_TOOLTIP_WITH_ACCESSIBILITY;
        }
    }

    private void loadResources(Resources resources) {
        this.minWidgetThickness = resources.getDimensionPixelSize(C1451R.dimen.mtrl_slider_widget_height);
        int dimensionPixelOffset = resources.getDimensionPixelOffset(C1451R.dimen.mtrl_slider_track_side_padding);
        this.minTrackSidePadding = dimensionPixelOffset;
        this.trackSidePadding = dimensionPixelOffset;
        this.defaultThumbRadius = resources.getDimensionPixelSize(C1451R.dimen.mtrl_slider_thumb_radius);
        this.defaultTrackThickness = resources.getDimensionPixelSize(C1451R.dimen.mtrl_slider_track_height);
        this.defaultTickActiveRadius = resources.getDimensionPixelSize(C1451R.dimen.mtrl_slider_tick_radius);
        this.defaultTickInactiveRadius = resources.getDimensionPixelSize(C1451R.dimen.mtrl_slider_tick_radius);
        this.minTickSpacing = resources.getDimensionPixelSize(C1451R.dimen.mtrl_slider_tick_min_spacing);
        this.labelPadding = resources.getDimensionPixelSize(C1451R.dimen.mtrl_slider_label_padding);
        this.trackIconPadding = resources.getDimensionPixelOffset(C1451R.dimen.m3_slider_track_icon_padding);
        this.accessibilityMinTouchTargetSize = resources.getDimensionPixelSize(C1451R.dimen.mtrl_min_touch_target_size);
    }

    private void processAttributes(Context context, AttributeSet attributeSet, int i) {
        int iConvertToTickVisibilityMode;
        TypedArray typedArrayObtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context, attributeSet, C1451R.styleable.Slider, i, DEF_STYLE_RES, new int[0]);
        setOrientation(typedArrayObtainStyledAttributes.getInt(C1451R.styleable.Slider_android_orientation, 0));
        this.labelStyle = typedArrayObtainStyledAttributes.getResourceId(C1451R.styleable.Slider_labelStyle, C1451R.style.Widget_MaterialComponents_Tooltip);
        this.valueFrom = typedArrayObtainStyledAttributes.getFloat(C1451R.styleable.Slider_android_valueFrom, 0.0f);
        this.valueTo = typedArrayObtainStyledAttributes.getFloat(C1451R.styleable.Slider_android_valueTo, 1.0f);
        setCentered(typedArrayObtainStyledAttributes.getBoolean(C1451R.styleable.Slider_centered, false));
        this.stepSize = typedArrayObtainStyledAttributes.getFloat(C1451R.styleable.Slider_android_stepSize, 0.0f);
        this.continuousModeTickCount = typedArrayObtainStyledAttributes.getInt(C1451R.styleable.Slider_continuousModeTickCount, 0);
        this.minTouchTargetSize = (int) Math.ceil(typedArrayObtainStyledAttributes.getDimension(C1451R.styleable.Slider_minTouchTargetSize, MaterialAttributes.resolveMinimumAccessibleTouchTarget(context)));
        boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(C1451R.styleable.Slider_trackColor);
        int i2 = zHasValue ? C1451R.styleable.Slider_trackColor : C1451R.styleable.Slider_trackColorInactive;
        int i3 = zHasValue ? C1451R.styleable.Slider_trackColor : C1451R.styleable.Slider_trackColorActive;
        ColorStateList colorStateList = MaterialResources.getColorStateList(context, typedArrayObtainStyledAttributes, i2);
        if (colorStateList == null) {
            colorStateList = AppCompatResources.getColorStateList(context, C1451R.color.material_slider_inactive_track_color);
        }
        setTrackInactiveTintList(colorStateList);
        ColorStateList colorStateList2 = MaterialResources.getColorStateList(context, typedArrayObtainStyledAttributes, i3);
        if (colorStateList2 == null) {
            colorStateList2 = AppCompatResources.getColorStateList(context, C1451R.color.material_slider_active_track_color);
        }
        setTrackActiveTintList(colorStateList2);
        ColorStateList colorStateList3 = MaterialResources.getColorStateList(context, typedArrayObtainStyledAttributes, C1451R.styleable.Slider_thumbColor);
        if (colorStateList3 == null) {
            colorStateList3 = AppCompatResources.getColorStateList(context, C1451R.color.material_slider_thumb_color);
        }
        setThumbTintList(colorStateList3);
        if (typedArrayObtainStyledAttributes.hasValue(C1451R.styleable.Slider_thumbStrokeColor)) {
            setThumbStrokeColor(MaterialResources.getColorStateList(context, typedArrayObtainStyledAttributes, C1451R.styleable.Slider_thumbStrokeColor));
        }
        setThumbStrokeWidth(typedArrayObtainStyledAttributes.getDimension(C1451R.styleable.Slider_thumbStrokeWidth, 0.0f));
        ColorStateList colorStateList4 = MaterialResources.getColorStateList(context, typedArrayObtainStyledAttributes, C1451R.styleable.Slider_haloColor);
        if (colorStateList4 == null) {
            colorStateList4 = AppCompatResources.getColorStateList(context, C1451R.color.material_slider_halo_color);
        }
        setHaloTintList(colorStateList4);
        if (typedArrayObtainStyledAttributes.hasValue(C1451R.styleable.Slider_tickVisibilityMode)) {
            iConvertToTickVisibilityMode = typedArrayObtainStyledAttributes.getInt(C1451R.styleable.Slider_tickVisibilityMode, -1);
        } else {
            iConvertToTickVisibilityMode = convertToTickVisibilityMode(typedArrayObtainStyledAttributes.getBoolean(C1451R.styleable.Slider_tickVisible, true));
        }
        this.tickVisibilityMode = iConvertToTickVisibilityMode;
        boolean zHasValue2 = typedArrayObtainStyledAttributes.hasValue(C1451R.styleable.Slider_tickColor);
        int i4 = zHasValue2 ? C1451R.styleable.Slider_tickColor : C1451R.styleable.Slider_tickColorInactive;
        int i5 = zHasValue2 ? C1451R.styleable.Slider_tickColor : C1451R.styleable.Slider_tickColorActive;
        ColorStateList colorStateList5 = MaterialResources.getColorStateList(context, typedArrayObtainStyledAttributes, i4);
        if (colorStateList5 == null) {
            colorStateList5 = AppCompatResources.getColorStateList(context, C1451R.color.material_slider_inactive_tick_marks_color);
        }
        setTickInactiveTintList(colorStateList5);
        ColorStateList colorStateList6 = MaterialResources.getColorStateList(context, typedArrayObtainStyledAttributes, i5);
        if (colorStateList6 == null) {
            colorStateList6 = AppCompatResources.getColorStateList(context, C1451R.color.material_slider_active_tick_marks_color);
        }
        setTickActiveTintList(colorStateList6);
        setThumbTrackGapSize(typedArrayObtainStyledAttributes.getDimensionPixelSize(C1451R.styleable.Slider_thumbTrackGapSize, 0));
        setTrackStopIndicatorSize(typedArrayObtainStyledAttributes.getDimensionPixelSize(C1451R.styleable.Slider_trackStopIndicatorSize, 0));
        setTrackCornerSize(typedArrayObtainStyledAttributes.getDimensionPixelSize(C1451R.styleable.Slider_trackCornerSize, -1));
        setTrackInsideCornerSize(typedArrayObtainStyledAttributes.getDimensionPixelSize(C1451R.styleable.Slider_trackInsideCornerSize, 0));
        setTrackIconActiveStart(MaterialResources.getDrawable(context, typedArrayObtainStyledAttributes, C1451R.styleable.Slider_trackIconActiveStart));
        setTrackIconActiveEnd(MaterialResources.getDrawable(context, typedArrayObtainStyledAttributes, C1451R.styleable.Slider_trackIconActiveEnd));
        setTrackIconActiveColor(MaterialResources.getColorStateList(context, typedArrayObtainStyledAttributes, C1451R.styleable.Slider_trackIconActiveColor));
        setTrackIconInactiveStart(MaterialResources.getDrawable(context, typedArrayObtainStyledAttributes, C1451R.styleable.Slider_trackIconInactiveStart));
        setTrackIconInactiveEnd(MaterialResources.getDrawable(context, typedArrayObtainStyledAttributes, C1451R.styleable.Slider_trackIconInactiveEnd));
        setTrackIconInactiveColor(MaterialResources.getColorStateList(context, typedArrayObtainStyledAttributes, C1451R.styleable.Slider_trackIconInactiveColor));
        setTrackIconSize(typedArrayObtainStyledAttributes.getDimensionPixelSize(C1451R.styleable.Slider_trackIconSize, 0));
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(C1451R.styleable.Slider_thumbRadius, 0) * 2;
        int dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(C1451R.styleable.Slider_thumbWidth, dimensionPixelSize);
        int dimensionPixelSize3 = typedArrayObtainStyledAttributes.getDimensionPixelSize(C1451R.styleable.Slider_thumbHeight, dimensionPixelSize);
        setThumbWidth(dimensionPixelSize2);
        setThumbHeight(dimensionPixelSize3);
        setHaloRadius(typedArrayObtainStyledAttributes.getDimensionPixelSize(C1451R.styleable.Slider_haloRadius, 0));
        setThumbElevation(typedArrayObtainStyledAttributes.getDimension(C1451R.styleable.Slider_thumbElevation, 0.0f));
        setTrackHeight(typedArrayObtainStyledAttributes.getDimensionPixelSize(C1451R.styleable.Slider_trackHeight, 0));
        setTickActiveRadius(typedArrayObtainStyledAttributes.getDimensionPixelSize(C1451R.styleable.Slider_tickRadiusActive, this.trackStopIndicatorSize / 2));
        setTickInactiveRadius(typedArrayObtainStyledAttributes.getDimensionPixelSize(C1451R.styleable.Slider_tickRadiusInactive, this.trackStopIndicatorSize / 2));
        setLabelBehavior(typedArrayObtainStyledAttributes.getInt(C1451R.styleable.Slider_labelBehavior, 0));
        if (!typedArrayObtainStyledAttributes.getBoolean(C1451R.styleable.Slider_android_enabled, true)) {
            setEnabled(false);
        }
        setValues(Float.valueOf(this.valueFrom));
        typedArrayObtainStyledAttributes.recycle();
    }

    private boolean maybeIncreaseTrackSidePadding() {
        int iMax = this.minTrackSidePadding + Math.max(Math.max(Math.max((this.thumbWidth / 2) - this.defaultThumbRadius, 0), Math.max((this.trackThickness - this.defaultTrackThickness) / 2, 0)), Math.max(Math.max(this.tickActiveRadius - this.defaultTickActiveRadius, 0), Math.max(this.tickInactiveRadius - this.defaultTickInactiveRadius, 0)));
        if (this.trackSidePadding == iMax) {
            return false;
        }
        this.trackSidePadding = iMax;
        if (!isLaidOut()) {
            return true;
        }
        updateTrackWidth(isVertical() ? getHeight() : getWidth());
        return true;
    }

    private boolean valueLandsOnTick(float f) {
        return isMultipleOfStepSize(new BigDecimal(Float.toString(f)).subtract(new BigDecimal(Float.toString(this.valueFrom)), MathContext.DECIMAL64).doubleValue());
    }

    private boolean isMultipleOfStepSize(double d) {
        double dDoubleValue = new BigDecimal(Double.toString(d)).divide(new BigDecimal(Float.toString(this.stepSize)), MathContext.DECIMAL64).doubleValue();
        return Math.abs(((double) Math.round(dDoubleValue)) - dDoubleValue) < THRESHOLD;
    }

    private void validateStepSize() {
        if (this.stepSize <= 0.0f || valueLandsOnTick(this.valueTo)) {
            return;
        }
        EncodedValueReader$$ExternalSyntheticBUOutline0.m218m(EXCEPTION_ILLEGAL_STEP_SIZE, new Object[]{Float.valueOf(this.stepSize), Float.valueOf(this.valueFrom), Float.valueOf(this.valueTo)});
    }

    private void validateValues() {
        float f = this.valueFrom;
        if (f >= this.valueTo) {
            EncodedValueReader$$ExternalSyntheticBUOutline0.m218m(EXCEPTION_ILLEGAL_VALUE_FROM, new Object[]{Float.valueOf(f), Float.valueOf(this.valueTo)});
            return;
        }
        ArrayList<Float> arrayList = this.values;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Float f2 = arrayList.get(i);
            i++;
            Float f3 = f2;
            if (f3.floatValue() < this.valueFrom || f3.floatValue() > this.valueTo) {
                EncodedValueReader$$ExternalSyntheticBUOutline0.m218m(EXCEPTION_ILLEGAL_VALUE, new Object[]{f3, Float.valueOf(this.valueFrom), Float.valueOf(this.valueTo)});
                return;
            } else if (this.stepSize > 0.0f && !valueLandsOnTick(f3.floatValue())) {
                EncodedValueReader$$ExternalSyntheticBUOutline0.m218m(EXCEPTION_ILLEGAL_DISCRETE_VALUE, new Object[]{f3, Float.valueOf(this.valueFrom), Float.valueOf(this.stepSize), Float.valueOf(this.stepSize)});
                return;
            }
        }
    }

    private void validateMinSeparation() {
        float minSeparation = getMinSeparation();
        if (minSeparation < 0.0f) {
            EncodedValueReader$$ExternalSyntheticBUOutline0.m218m(EXCEPTION_ILLEGAL_MIN_SEPARATION, new Object[]{Float.valueOf(minSeparation)});
            return;
        }
        float f = this.stepSize;
        if (f <= 0.0f || minSeparation <= 0.0f) {
            return;
        }
        if (this.separationUnit != 1) {
            EncodedValueReader$$ExternalSyntheticBUOutline0.m218m(EXCEPTION_ILLEGAL_MIN_SEPARATION_STEP_SIZE_UNIT, new Object[]{Float.valueOf(minSeparation), Float.valueOf(this.stepSize)});
        } else if (minSeparation < f || !isMultipleOfStepSize(minSeparation)) {
            EncodedValueReader$$ExternalSyntheticBUOutline0.m218m(EXCEPTION_ILLEGAL_MIN_SEPARATION_STEP_SIZE, new Object[]{Float.valueOf(minSeparation), Float.valueOf(this.stepSize), Float.valueOf(this.stepSize)});
        }
    }

    private void warnAboutFloatingPointError() {
        float f = this.stepSize;
        if (f == 0.0f) {
            return;
        }
        if (((int) f) != f) {
            Log.w(TAG, String.format(WARNING_FLOATING_POINT_ERROR, "stepSize", Float.valueOf(f)));
        }
        float f2 = this.valueFrom;
        if (((int) f2) != f2) {
            Log.w(TAG, String.format(WARNING_FLOATING_POINT_ERROR, "valueFrom", Float.valueOf(f2)));
        }
        float f3 = this.valueTo;
        if (((int) f3) != f3) {
            Log.w(TAG, String.format(WARNING_FLOATING_POINT_ERROR, "valueTo", Float.valueOf(f3)));
        }
    }

    private void validateConfigurationIfDirty() {
        if (this.dirtyConfig) {
            validateValues();
            validateStepSize();
            validateMinSeparation();
            warnAboutFloatingPointError();
            this.dirtyConfig = false;
        }
    }

    public void scheduleTooltipTimeout() {
        removeCallbacks(this.resetActiveThumbIndex);
        postDelayed(this.resetActiveThumbIndex, this.tooltipTimeoutMillis);
    }

    public float getValueFrom() {
        return this.valueFrom;
    }

    public void setValueFrom(float f) {
        this.valueFrom = f;
        this.dirtyConfig = true;
        postInvalidate();
    }

    public float getValueTo() {
        return this.valueTo;
    }

    public void setValueTo(float f) {
        this.valueTo = f;
        this.dirtyConfig = true;
        postInvalidate();
    }

    public List<Float> getValues() {
        return new ArrayList(this.values);
    }

    public void setValues(Float... fArr) {
        ArrayList<Float> arrayList = new ArrayList<>();
        Collections.addAll(arrayList, fArr);
        setValuesInternal(arrayList);
    }

    public void setValues(List<Float> list) {
        setValuesInternal(new ArrayList<>(list));
    }

    private void setValuesInternal(ArrayList<Float> arrayList) {
        if (arrayList.isEmpty()) {
            f$$ExternalSyntheticBUOutline1.m212m("At least one value must be set");
            return;
        }
        Collections.sort(arrayList);
        if (this.values.size() == arrayList.size() && this.values.equals(arrayList)) {
            return;
        }
        this.values = arrayList;
        this.dirtyConfig = true;
        updateDefaultThumbDrawables();
        this.focusedThumbIdx = 0;
        updateHaloHotspot();
        createLabelPool();
        dispatchOnChangedProgrammatically();
        postInvalidate();
    }

    private void updateDefaultThumbDrawables() {
        if (this.defaultThumbDrawables.size() != this.values.size()) {
            this.defaultThumbDrawables.clear();
            for (int i = 0; i < this.values.size(); i++) {
                this.defaultThumbDrawables.add(createNewDefaultThumb());
            }
        }
    }

    private MaterialShapeDrawable createNewDefaultThumb() {
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
        materialShapeDrawable.setShadowCompatibilityMode(2);
        materialShapeDrawable.setFillColor(getThumbTintList());
        materialShapeDrawable.setShapeAppearanceModel(ShapeAppearanceModel.builder().setAllCorners(0, this.thumbWidth / 2.0f).build());
        materialShapeDrawable.setBounds(0, 0, this.thumbWidth, this.thumbHeight);
        materialShapeDrawable.setElevation(getThumbElevation());
        materialShapeDrawable.setStrokeWidth(getThumbStrokeWidth());
        materialShapeDrawable.setStrokeTint(getThumbStrokeColor());
        materialShapeDrawable.setState(getDrawableState());
        return materialShapeDrawable;
    }

    private void createLabelPool() {
        if (this.labels.size() > this.values.size()) {
            List<TooltipDrawable> listSubList = this.labels.subList(this.values.size(), this.labels.size());
            for (TooltipDrawable tooltipDrawable : listSubList) {
                if (isAttachedToWindow()) {
                    detachLabelFromContentView(tooltipDrawable);
                }
            }
            listSubList.clear();
        }
        while (true) {
            if (this.labels.size() >= this.values.size()) {
                break;
            }
            TooltipDrawable tooltipDrawableCreateFromAttributes = TooltipDrawable.createFromAttributes(getContext(), null, 0, this.labelStyle);
            this.labels.add(tooltipDrawableCreateFromAttributes);
            if (isAttachedToWindow()) {
                attachLabelToContentView(tooltipDrawableCreateFromAttributes);
            }
        }
        int i = this.labels.size() != 1 ? 1 : 0;
        Iterator<TooltipDrawable> it = this.labels.iterator();
        while (it.hasNext()) {
            it.next().setStrokeWidth(i);
        }
    }

    public float getStepSize() {
        return this.stepSize;
    }

    public void setStepSize(float f) {
        if (f < 0.0f) {
            FieldSet$$ExternalSyntheticBUOutline0.m481m(EXCEPTION_ILLEGAL_STEP_SIZE, new Object[]{Float.valueOf(f), Float.valueOf(this.valueFrom), Float.valueOf(this.valueTo)});
        } else if (this.stepSize != f) {
            this.stepSize = f;
            this.dirtyConfig = true;
            postInvalidate();
        }
    }

    public int getContinuousModeTickCount() {
        return this.continuousModeTickCount;
    }

    public void setContinuousModeTickCount(int i) {
        if (i < 0) {
            FieldSet$$ExternalSyntheticBUOutline0.m481m(EXCEPTION_ILLEGAL_CONTINUOUS_MODE_TICK_COUNT, new Object[]{Integer.valueOf(i)});
        } else if (this.continuousModeTickCount != i) {
            this.continuousModeTickCount = i;
            this.dirtyConfig = true;
            postInvalidate();
        }
    }

    public void setCustomThumbDrawable(int i) {
        setCustomThumbDrawable(getResources().getDrawable(i));
    }

    public void setCustomThumbDrawable(Drawable drawable) {
        this.customThumbDrawable = initializeCustomThumbDrawable(drawable);
        this.customThumbDrawablesForValues.clear();
        postInvalidate();
    }

    public void setCustomThumbDrawablesForValues(int... iArr) {
        Drawable[] drawableArr = new Drawable[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            drawableArr[i] = getResources().getDrawable(iArr[i]);
        }
        setCustomThumbDrawablesForValues(drawableArr);
    }

    public void setCustomThumbDrawablesForValues(Drawable... drawableArr) {
        this.customThumbDrawable = null;
        this.customThumbDrawablesForValues = new ArrayList();
        for (Drawable drawable : drawableArr) {
            this.customThumbDrawablesForValues.add(initializeCustomThumbDrawable(drawable));
        }
        postInvalidate();
    }

    private Drawable initializeCustomThumbDrawable(Drawable drawable) {
        Drawable drawableNewDrawable = drawable.mutate().getConstantState().newDrawable();
        adjustCustomThumbDrawableBounds(drawableNewDrawable);
        return drawableNewDrawable;
    }

    private void adjustCustomThumbDrawableBounds(Drawable drawable) {
        adjustCustomThumbDrawableBounds(this.thumbWidth, drawable);
    }

    private void adjustCustomThumbDrawableBounds(int i, Drawable drawable) {
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        if (intrinsicWidth == -1 && intrinsicHeight == -1) {
            drawable.setBounds(0, 0, i, this.thumbHeight);
        } else {
            float fMax = Math.max(i, this.thumbHeight) / Math.max(intrinsicWidth, intrinsicHeight);
            drawable.setBounds(0, 0, (int) (intrinsicWidth * fMax), (int) (intrinsicHeight * fMax));
        }
    }

    public int getFocusedThumbIndex() {
        return this.focusedThumbIdx;
    }

    public void setFocusedThumbIndex(int i) {
        if (i < 0 || i >= this.values.size()) {
            f$$ExternalSyntheticBUOutline1.m212m("index out of range");
            return;
        }
        this.focusedThumbIdx = i;
        this.accessibilityHelper.requestKeyboardFocusForVirtualView(i);
        postInvalidate();
    }

    public void setActiveThumbIndex(int i) {
        this.activeThumbIdx = i;
    }

    public int getActiveThumbIndex() {
        return this.activeThumbIdx;
    }

    public void addOnChangeListener(L l) {
        this.changeListeners.add(l);
    }

    public void removeOnChangeListener(L l) {
        this.changeListeners.remove(l);
    }

    public void clearOnChangeListeners() {
        this.changeListeners.clear();
    }

    public void addOnSliderTouchListener(T t) {
        this.touchListeners.add(t);
    }

    public void removeOnSliderTouchListener(T t) {
        this.touchListeners.remove(t);
    }

    public void clearOnSliderTouchListeners() {
        this.touchListeners.clear();
    }

    public boolean hasLabelFormatter() {
        return this.formatter != null;
    }

    public void setLabelFormatter(LabelFormatter labelFormatter) {
        this.formatter = labelFormatter;
    }

    public float getThumbElevation() {
        return this.thumbElevation;
    }

    public void setThumbElevation(float f) {
        if (f == this.thumbElevation) {
            return;
        }
        this.thumbElevation = f;
        for (int i = 0; i < this.defaultThumbDrawables.size(); i++) {
            this.defaultThumbDrawables.get(i).setElevation(this.thumbElevation);
        }
    }

    public void setThumbElevationResource(int i) {
        setThumbElevation(getResources().getDimension(i));
    }

    public int getThumbRadius() {
        return this.thumbWidth / 2;
    }

    public void setThumbRadius(int i) {
        int i2 = i * 2;
        setThumbWidth(i2);
        setThumbHeight(i2);
    }

    public void setThumbRadiusResource(int i) {
        setThumbRadius(getResources().getDimensionPixelSize(i));
    }

    public int getThumbWidth() {
        return this.thumbWidth;
    }

    public void setThumbWidth(int i) {
        if (i == this.thumbWidth) {
            return;
        }
        this.thumbWidth = i;
        Drawable drawable = this.customThumbDrawable;
        if (drawable != null) {
            adjustCustomThumbDrawableBounds(i, drawable);
        }
        for (int i2 = 0; i2 < this.customThumbDrawablesForValues.size(); i2++) {
            adjustCustomThumbDrawableBounds(i, this.customThumbDrawablesForValues.get(i2));
        }
        setThumbSize(i, -1, null);
    }

    private void setThumbSize(int i, int i2, Integer num) {
        for (int i3 = 0; i3 < this.defaultThumbDrawables.size(); i3++) {
            if (num == null || i3 == num.intValue()) {
                this.defaultThumbDrawables.get(i3).setShapeAppearanceModel(ShapeAppearanceModel.builder().setAllCorners(0, i / 2.0f).build());
                this.defaultThumbDrawables.get(i3).setBounds(0, 0, i, i2 >= 0 ? i2 : this.thumbHeight);
            }
        }
        updateWidgetLayout(false);
    }

    public void setThumbWidthResource(int i) {
        setThumbWidth(getResources().getDimensionPixelSize(i));
    }

    public int getThumbHeight() {
        return this.thumbHeight;
    }

    public void setThumbHeight(int i) {
        if (i == this.thumbHeight) {
            return;
        }
        this.thumbHeight = i;
        for (int i2 = 0; i2 < this.defaultThumbDrawables.size(); i2++) {
            this.defaultThumbDrawables.get(i2).setBounds(0, 0, this.thumbWidth, this.thumbHeight);
        }
        Drawable drawable = this.customThumbDrawable;
        if (drawable != null) {
            adjustCustomThumbDrawableBounds(drawable);
        }
        Iterator<Drawable> it = this.customThumbDrawablesForValues.iterator();
        while (it.hasNext()) {
            adjustCustomThumbDrawableBounds(it.next());
        }
        updateWidgetLayout(false);
    }

    public void setThumbHeightResource(int i) {
        setThumbHeight(getResources().getDimensionPixelSize(i));
    }

    public void setThumbStrokeColor(ColorStateList colorStateList) {
        if (colorStateList == this.thumbStrokeColor) {
            return;
        }
        this.thumbStrokeColor = colorStateList;
        for (int i = 0; i < this.defaultThumbDrawables.size(); i++) {
            this.defaultThumbDrawables.get(i).setStrokeColor(colorStateList);
        }
        postInvalidate();
    }

    public void setThumbStrokeColorResource(int i) {
        if (i != 0) {
            setThumbStrokeColor(AppCompatResources.getColorStateList(getContext(), i));
        }
    }

    public ColorStateList getThumbStrokeColor() {
        return this.thumbStrokeColor;
    }

    public void setThumbStrokeWidth(float f) {
        if (f == this.thumbStrokeWidth) {
            return;
        }
        this.thumbStrokeWidth = f;
        for (int i = 0; i < this.defaultThumbDrawables.size(); i++) {
            this.defaultThumbDrawables.get(i).setStrokeWidth(f);
        }
        postInvalidate();
    }

    public void setThumbStrokeWidthResource(int i) {
        if (i != 0) {
            setThumbStrokeWidth(getResources().getDimension(i));
        }
    }

    public float getThumbStrokeWidth() {
        return this.thumbStrokeWidth;
    }

    public int getHaloRadius() {
        return this.haloRadius;
    }

    public void setHaloRadius(int i) {
        if (i == this.haloRadius) {
            return;
        }
        this.haloRadius = i;
        RippleDrawable backgroundRipple = getBackgroundRipple();
        if (!shouldDrawCompatHalo() && backgroundRipple != null) {
            DrawableUtils.setRippleDrawableRadius(backgroundRipple, this.haloRadius);
        } else {
            postInvalidate();
        }
    }

    public void setHaloRadiusResource(int i) {
        setHaloRadius(getResources().getDimensionPixelSize(i));
    }

    public int getLabelBehavior() {
        return this.labelBehavior;
    }

    public void setLabelBehavior(int i) {
        if (this.labelBehavior != i) {
            this.labelBehavior = i;
            updateWidgetLayout(true);
        }
    }

    private boolean shouldAlwaysShowLabel() {
        return this.labelBehavior == 3;
    }

    public int getTrackSidePadding() {
        return this.trackSidePadding;
    }

    public int getTrackWidth() {
        return this.trackWidth;
    }

    public int getTrackHeight() {
        return this.trackThickness;
    }

    public void setTrackHeight(int i) {
        if (this.trackThickness != i) {
            this.trackThickness = i;
            invalidateTrack();
            updateWidgetLayout(false);
        }
    }

    public int getTickActiveRadius() {
        return this.tickActiveRadius;
    }

    public void setTickActiveRadius(int i) {
        if (this.tickActiveRadius != i) {
            this.tickActiveRadius = i;
            this.activeTicksPaint.setStrokeWidth(i * 2);
            updateWidgetLayout(false);
        }
    }

    public int getTickInactiveRadius() {
        return this.tickInactiveRadius;
    }

    public void setTickInactiveRadius(int i) {
        if (this.tickInactiveRadius != i) {
            this.tickInactiveRadius = i;
            this.inactiveTicksPaint.setStrokeWidth(i * 2);
            updateWidgetLayout(false);
        }
    }

    private void updateWidgetLayout(boolean z) {
        boolean zMaybeIncreaseWidgetThickness = maybeIncreaseWidgetThickness();
        boolean zMaybeIncreaseTrackSidePadding = maybeIncreaseTrackSidePadding();
        if (isVertical()) {
            updateRotationMatrix();
        }
        if (zMaybeIncreaseWidgetThickness || z) {
            requestLayout();
        } else if (zMaybeIncreaseTrackSidePadding) {
            postInvalidate();
        }
    }

    private boolean maybeIncreaseWidgetThickness() {
        int paddingTop;
        int paddingBottom;
        if (isVertical()) {
            paddingTop = getPaddingLeft();
            paddingBottom = getPaddingRight();
        } else {
            paddingTop = getPaddingTop();
            paddingBottom = getPaddingBottom();
        }
        int i = paddingTop + paddingBottom;
        int iMax = Math.max(this.minWidgetThickness, Math.max(this.trackThickness + i, this.thumbHeight + i));
        if (iMax == this.widgetThickness) {
            return false;
        }
        this.widgetThickness = iMax;
        return true;
    }

    private void updateRotationMatrix() {
        float fCalculateTrackCenter = calculateTrackCenter();
        this.rotationMatrix.reset();
        this.rotationMatrix.setRotate(90.0f, fCalculateTrackCenter, fCalculateTrackCenter);
    }

    public ColorStateList getHaloTintList() {
        return this.haloColor;
    }

    public void setHaloTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.haloColor)) {
            return;
        }
        this.haloColor = colorStateList;
        RippleDrawable backgroundRipple = getBackgroundRipple();
        if (!shouldDrawCompatHalo() && backgroundRipple != null) {
            backgroundRipple.setColor(colorStateList);
            return;
        }
        this.haloPaint.setColor(getColorForState(colorStateList));
        this.haloPaint.setAlpha(63);
        invalidate();
    }

    public ColorStateList getThumbTintList() {
        return this.thumbTintList;
    }

    public void setThumbTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.thumbTintList)) {
            return;
        }
        this.thumbTintList = colorStateList;
        for (int i = 0; i < this.defaultThumbDrawables.size(); i++) {
            this.defaultThumbDrawables.get(i).setFillColor(this.thumbTintList);
        }
        invalidate();
    }

    public ColorStateList getTickTintList() {
        if (!this.tickColorInactive.equals(this.tickColorActive)) {
            Segment$$ExternalSyntheticBUOutline1.m925m("The inactive and active ticks are different colors. Use the getTickColorInactive() and getTickColorActive() methods instead.");
            return null;
        }
        return this.tickColorActive;
    }

    public void setTickTintList(ColorStateList colorStateList) {
        setTickInactiveTintList(colorStateList);
        setTickActiveTintList(colorStateList);
    }

    public ColorStateList getTickActiveTintList() {
        return this.tickColorActive;
    }

    public void setTickActiveTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.tickColorActive)) {
            return;
        }
        this.tickColorActive = colorStateList;
        this.activeTicksPaint.setColor(getColorForState(colorStateList));
        invalidate();
    }

    public ColorStateList getTickInactiveTintList() {
        return this.tickColorInactive;
    }

    public void setTickInactiveTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.tickColorInactive)) {
            return;
        }
        this.tickColorInactive = colorStateList;
        this.inactiveTicksPaint.setColor(getColorForState(colorStateList));
        invalidate();
    }

    public boolean isTickVisible() {
        int i = this.tickVisibilityMode;
        if (i == 0) {
            return true;
        }
        if (i == 1) {
            return getDesiredTickCount() <= getMaxTickCount();
        }
        if (i == 2) {
            return false;
        }
        WearAuthSheet$$ExternalSyntheticBUOutline0.m1051m("Unexpected tickVisibilityMode: ", this.tickVisibilityMode);
        return false;
    }

    @Deprecated
    public void setTickVisible(boolean z) {
        setTickVisibilityMode(convertToTickVisibilityMode(z));
    }

    public int getTickVisibilityMode() {
        return this.tickVisibilityMode;
    }

    public void setTickVisibilityMode(int i) {
        if (this.tickVisibilityMode != i) {
            this.tickVisibilityMode = i;
            postInvalidate();
        }
    }

    public ColorStateList getTrackTintList() {
        if (!this.trackColorInactive.equals(this.trackColorActive)) {
            Segment$$ExternalSyntheticBUOutline1.m925m("The inactive and active parts of the track are different colors. Use the getInactiveTrackColor() and getActiveTrackColor() methods instead.");
            return null;
        }
        return this.trackColorActive;
    }

    public void setTrackTintList(ColorStateList colorStateList) {
        setTrackInactiveTintList(colorStateList);
        setTrackActiveTintList(colorStateList);
    }

    public ColorStateList getTrackActiveTintList() {
        return this.trackColorActive;
    }

    public void setTrackActiveTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.trackColorActive)) {
            return;
        }
        this.trackColorActive = colorStateList;
        this.activeTrackPaint.setColor(getColorForState(colorStateList));
        invalidate();
    }

    public ColorStateList getTrackInactiveTintList() {
        return this.trackColorInactive;
    }

    public void setTrackInactiveTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.trackColorInactive)) {
            return;
        }
        this.trackColorInactive = colorStateList;
        this.inactiveTrackPaint.setColor(getColorForState(colorStateList));
        invalidate();
    }

    public int getThumbTrackGapSize() {
        return this.thumbTrackGapSize;
    }

    public void setThumbTrackGapSize(int i) {
        if (this.thumbTrackGapSize == i) {
            return;
        }
        this.thumbTrackGapSize = i;
        invalidate();
    }

    public int getTrackStopIndicatorSize() {
        return this.trackStopIndicatorSize;
    }

    public void setTrackStopIndicatorSize(int i) {
        if (this.trackStopIndicatorSize == i) {
            return;
        }
        this.trackStopIndicatorSize = i;
        this.stopIndicatorPaint.setStrokeWidth(i);
        invalidate();
    }

    public int getTrackCornerSize() {
        int i = this.trackCornerSize;
        return i == -1 ? this.trackThickness / 2 : i;
    }

    public void setTrackCornerSize(int i) {
        if (this.trackCornerSize == i) {
            return;
        }
        this.trackCornerSize = i;
        invalidate();
    }

    public int getTrackInsideCornerSize() {
        return this.trackInsideCornerSize;
    }

    public void setTrackInsideCornerSize(int i) {
        if (this.trackInsideCornerSize == i) {
            return;
        }
        this.trackInsideCornerSize = i;
        invalidate();
    }

    public void setTrackIconActiveStart(Drawable drawable) {
        if (drawable == this.trackIconActiveStart) {
            return;
        }
        this.trackIconActiveStart = drawable;
        this.trackIconActiveStartMutated = false;
        updateTrackIconActiveStart();
        invalidate();
    }

    private void updateTrackIconActiveStart() {
        Drawable drawable = this.trackIconActiveStart;
        if (drawable != null) {
            if (!this.trackIconActiveStartMutated && this.trackIconActiveColor != null) {
                this.trackIconActiveStart = DrawableCompat.wrap(drawable).mutate();
                this.trackIconActiveStartMutated = true;
            }
            if (this.trackIconActiveStartMutated) {
                this.trackIconActiveStart.setTintList(this.trackIconActiveColor);
            }
        }
    }

    public void setTrackIconActiveStart(int i) {
        setTrackIconActiveStart(i != 0 ? AppCompatResources.getDrawable(getContext(), i) : null);
    }

    public Drawable getTrackIconActiveStart() {
        return this.trackIconActiveStart;
    }

    public void setTrackIconActiveEnd(Drawable drawable) {
        if (drawable == this.trackIconActiveEnd) {
            return;
        }
        this.trackIconActiveEnd = drawable;
        this.trackIconActiveEndMutated = false;
        updateTrackIconActiveEnd();
        invalidate();
    }

    private void updateTrackIconActiveEnd() {
        Drawable drawable = this.trackIconActiveEnd;
        if (drawable != null) {
            if (!this.trackIconActiveEndMutated && this.trackIconActiveColor != null) {
                this.trackIconActiveEnd = DrawableCompat.wrap(drawable).mutate();
                this.trackIconActiveEndMutated = true;
            }
            if (this.trackIconActiveEndMutated) {
                this.trackIconActiveEnd.setTintList(this.trackIconActiveColor);
            }
        }
    }

    public void setTrackIconActiveEnd(int i) {
        setTrackIconActiveEnd(i != 0 ? AppCompatResources.getDrawable(getContext(), i) : null);
    }

    public Drawable getTrackIconActiveEnd() {
        return this.trackIconActiveEnd;
    }

    public void setTrackIconSize(int i) {
        if (this.trackIconSize == i) {
            return;
        }
        this.trackIconSize = i;
        invalidate();
    }

    public int getTrackIconSize() {
        return this.trackIconSize;
    }

    public void setTrackIconActiveColor(ColorStateList colorStateList) {
        if (colorStateList == this.trackIconActiveColor) {
            return;
        }
        this.trackIconActiveColor = colorStateList;
        updateTrackIconActiveStart();
        updateTrackIconActiveEnd();
        invalidate();
    }

    public ColorStateList getTrackIconActiveColor() {
        return this.trackIconActiveColor;
    }

    public void setTrackIconInactiveStart(Drawable drawable) {
        if (drawable == this.trackIconInactiveStart) {
            return;
        }
        this.trackIconInactiveStart = drawable;
        this.trackIconInactiveStartMutated = false;
        updateTrackIconInactiveStart();
        invalidate();
    }

    private void updateTrackIconInactiveStart() {
        Drawable drawable = this.trackIconInactiveStart;
        if (drawable != null) {
            if (!this.trackIconInactiveStartMutated && this.trackIconInactiveColor != null) {
                this.trackIconInactiveStart = DrawableCompat.wrap(drawable).mutate();
                this.trackIconInactiveStartMutated = true;
            }
            if (this.trackIconInactiveStartMutated) {
                this.trackIconInactiveStart.setTintList(this.trackIconInactiveColor);
            }
        }
    }

    public void setTrackIconInactiveStart(int i) {
        setTrackIconInactiveStart(i != 0 ? AppCompatResources.getDrawable(getContext(), i) : null);
    }

    public Drawable getTrackIconInactiveStart() {
        return this.trackIconInactiveStart;
    }

    public void setTrackIconInactiveEnd(Drawable drawable) {
        if (drawable == this.trackIconInactiveEnd) {
            return;
        }
        this.trackIconInactiveEnd = drawable;
        this.trackIconInactiveEndMutated = false;
        updateTrackIconInactiveEnd();
        invalidate();
    }

    private void updateTrackIconInactiveEnd() {
        Drawable drawable = this.trackIconInactiveEnd;
        if (drawable != null) {
            if (!this.trackIconInactiveEndMutated && this.trackIconInactiveColor != null) {
                this.trackIconInactiveEnd = DrawableCompat.wrap(drawable).mutate();
                this.trackIconInactiveEndMutated = true;
            }
            if (this.trackIconInactiveEndMutated) {
                this.trackIconInactiveEnd.setTintList(this.trackIconInactiveColor);
            }
        }
    }

    public void setTrackIconInactiveEnd(int i) {
        setTrackIconInactiveEnd(i != 0 ? AppCompatResources.getDrawable(getContext(), i) : null);
    }

    public Drawable getTrackIconInactiveEnd() {
        return this.trackIconInactiveEnd;
    }

    public void setTrackIconInactiveColor(ColorStateList colorStateList) {
        if (colorStateList == this.trackIconInactiveColor) {
            return;
        }
        this.trackIconInactiveColor = colorStateList;
        updateTrackIconInactiveStart();
        updateTrackIconInactiveEnd();
        invalidate();
    }

    public ColorStateList getTrackIconInactiveColor() {
        return this.trackIconInactiveColor;
    }

    @Override // android.view.View
    public void onVisibilityChanged(View view, int i) {
        ViewOverlay contentViewOverlay;
        super.onVisibilityChanged(view, i);
        if (i == 0 || (contentViewOverlay = getContentViewOverlay()) == null) {
            return;
        }
        Iterator<TooltipDrawable> it = this.labels.iterator();
        while (it.hasNext()) {
            contentViewOverlay.remove(it.next());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ViewOverlay getContentViewOverlay() {
        ViewGroup contentView = ViewUtils.getContentView(this);
        if (contentView == null) {
            return null;
        }
        return contentView.getOverlay();
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        setLayerType(z ? 0 : 2, null);
    }

    public void setOrientation(int i) {
        if (this.widgetOrientation == i) {
            return;
        }
        this.widgetOrientation = i;
        updateWidgetLayout(true);
    }

    public void setCentered(boolean z) {
        if (this.centered == z) {
            return;
        }
        this.centered = z;
        float f = this.valueFrom;
        if (z) {
            setValues(Float.valueOf((f + this.valueTo) / 2.0f));
        } else {
            setValues(Float.valueOf(f));
        }
        updateWidgetLayout(true);
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.thisAndAncestorsVisible = isShown();
        getViewTreeObserver().addOnScrollChangedListener(this.onScrollChangedListener);
        getViewTreeObserver().addOnGlobalLayoutListener(this.onGlobalLayoutListener);
        Iterator<TooltipDrawable> it = this.labels.iterator();
        while (it.hasNext()) {
            attachLabelToContentView(it.next());
        }
    }

    private void attachLabelToContentView(TooltipDrawable tooltipDrawable) {
        tooltipDrawable.setRelativeToView(ViewUtils.getContentView(this));
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        BaseSlider<S, L, T>.AccessibilityEventSender accessibilityEventSender = this.accessibilityEventSender;
        if (accessibilityEventSender != null) {
            removeCallbacks(accessibilityEventSender);
        }
        this.labelsAreAnimatedIn = false;
        Iterator<TooltipDrawable> it = this.labels.iterator();
        while (it.hasNext()) {
            detachLabelFromContentView(it.next());
        }
        getViewTreeObserver().removeOnScrollChangedListener(this.onScrollChangedListener);
        getViewTreeObserver().removeOnGlobalLayoutListener(this.onGlobalLayoutListener);
        super.onDetachedFromWindow();
    }

    private void detachLabelFromContentView(TooltipDrawable tooltipDrawable) {
        ViewGroup contentView = ViewUtils.getContentView(this);
        if (contentView == null) {
            return;
        }
        contentView.getOverlay().remove(tooltipDrawable);
        tooltipDrawable.detachView(contentView);
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.widgetThickness + ((this.labelBehavior == 1 || shouldAlwaysShowLabel()) ? this.labels.get(0).getIntrinsicHeight() : 0), TLObject.FLAG_30);
        if (isVertical()) {
            super.onMeasure(iMakeMeasureSpec, i2);
        } else {
            super.onMeasure(i, iMakeMeasureSpec);
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        if (isVertical()) {
            i = i2;
        }
        updateTrackWidth(i);
        updateHaloHotspot();
    }

    private void updateTicksCoordinates() {
        int iMin;
        validateConfigurationIfDirty();
        if (this.stepSize <= 0.0f) {
            updateTicksCoordinates(this.continuousModeTickCount);
            return;
        }
        int i = this.tickVisibilityMode;
        if (i != 0) {
            iMin = 0;
            if (i == 1) {
                int desiredTickCount = getDesiredTickCount();
                if (desiredTickCount <= getMaxTickCount()) {
                    iMin = desiredTickCount;
                }
            } else if (i != 2) {
                WearAuthSheet$$ExternalSyntheticBUOutline0.m1051m("Unexpected tickVisibilityMode: ", this.tickVisibilityMode);
                return;
            }
        } else {
            iMin = Math.min(getDesiredTickCount(), getMaxTickCount());
        }
        updateTicksCoordinates(iMin);
    }

    private void updateTicksCoordinates(int i) {
        if (i == 0) {
            this.ticksCoordinates = null;
            return;
        }
        float[] fArr = this.ticksCoordinates;
        if (fArr == null || fArr.length != i * 2) {
            this.ticksCoordinates = new float[i * 2];
        }
        float f = this.trackWidth / (i - 1);
        float fCalculateTrackCenter = calculateTrackCenter();
        for (int i2 = 0; i2 < i * 2; i2 += 2) {
            float[] fArr2 = this.ticksCoordinates;
            fArr2[i2] = this.trackSidePadding + ((i2 / 2.0f) * f);
            fArr2[i2 + 1] = fCalculateTrackCenter;
        }
        if (isVertical()) {
            this.rotationMatrix.mapPoints(this.ticksCoordinates);
        }
    }

    private int getDesiredTickCount() {
        return (int) (((this.valueTo - this.valueFrom) / this.stepSize) + 1.0f);
    }

    private int getMaxTickCount() {
        return (this.trackWidth / this.minTickSpacing) + 1;
    }

    private void updateTrackWidth(int i) {
        this.trackWidth = Math.max(i - (this.trackSidePadding * 2), 0);
        updateTicksCoordinates();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateHaloHotspot() {
        RippleDrawable backgroundRipple;
        float fNormalizeValue = (normalizeValue(this.values.get(this.focusedThumbIdx).floatValue()) * this.trackWidth) + this.trackSidePadding;
        int iCalculateTrackCenter = calculateTrackCenter();
        if (!shouldDrawCompatHalo() && getMeasuredWidth() > 0 && (backgroundRipple = getBackgroundRipple()) != null) {
            int i = this.haloRadius;
            float[] fArr = {fNormalizeValue - i, iCalculateTrackCenter - i, i + fNormalizeValue, i + iCalculateTrackCenter};
            if (isVertical()) {
                this.rotationMatrix.mapPoints(fArr);
            }
            backgroundRipple.setHotspotBounds((int) fArr[0], (int) fArr[1], (int) fArr[2], (int) fArr[3]);
        }
        updateFocusRingBounds(fNormalizeValue, iCalculateTrackCenter);
    }

    private int calculateTrackCenter() {
        int i = this.widgetThickness / 2;
        int intrinsicHeight = 0;
        if ((this.labelBehavior == 1 || shouldAlwaysShowLabel()) && !this.labels.isEmpty()) {
            intrinsicHeight = this.labels.get(0).getIntrinsicHeight();
        }
        return i + intrinsicHeight;
    }

    private void updateFocusRingBounds(float f, float f2) {
        float f3;
        float f4;
        float f5;
        float f6;
        FocusRingDrawable focusRing = getFocusRing();
        if (focusRing != null) {
            float dimensionPixelOffset = getResources().getDimensionPixelOffset(C1451R.dimen.m3_slider_focus_ring_padding);
            float f7 = (this.thumbWidth / 2.0f) + (dimensionPixelOffset * 2.0f);
            float f8 = (this.thumbHeight / 2.0f) + dimensionPixelOffset;
            if (isVertical()) {
                f3 = f2 - f8;
                float f9 = f2 + f8;
                f4 = f - f7;
                f5 = f + f7;
                f6 = f9;
            } else {
                f3 = f - f7;
                f6 = f + f7;
                f4 = f2 - f8;
                f5 = f2 + f8;
            }
            focusRing.mutate();
            focusRing.setFocusRingBounds((int) f3, (int) f4, (int) f6, (int) f5);
        }
    }

    private FocusRingDrawable getFocusRing() {
        return FocusRingDrawable.find(getBackground());
    }

    private boolean isFocusRingEnabled() {
        FocusRingDrawable focusRing = getFocusRing();
        return focusRing != null && focusRing.isFocusRingEnabled();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (this.dirtyConfig) {
            validateConfigurationIfDirty();
            updateTicksCoordinates();
        }
        super.onDraw(canvas);
        int iCalculateTrackCenter = calculateTrackCenter();
        drawInactiveTracks(canvas, this.trackWidth, iCalculateTrackCenter);
        drawActiveTracks(canvas, this.trackWidth, iCalculateTrackCenter);
        if (isRtl() || isVertical()) {
            drawTrackIcons(canvas, this.activeTrackRect, this.inactiveTrackLeftRect);
        } else {
            drawTrackIcons(canvas, this.activeTrackRect, this.inactiveTrackRightRect);
        }
        maybeDrawTicks(canvas);
        maybeDrawStopIndicator(canvas, iCalculateTrackCenter);
        if ((this.thumbIsPressed || isFocused()) && isEnabled()) {
            maybeDrawCompatHalo(canvas, this.trackWidth, iCalculateTrackCenter);
        }
        updateLabels();
        drawThumbs(canvas, this.trackWidth, iCalculateTrackCenter);
    }

    private float[] getActiveRange() {
        float fFloatValue = this.values.get(0).floatValue();
        ArrayList<Float> arrayList = this.values;
        float fFloatValue2 = arrayList.get(arrayList.size() - 1).floatValue();
        if (this.values.size() == 1) {
            fFloatValue = this.valueFrom;
        }
        float fNormalizeValue = normalizeValue(fFloatValue);
        float fNormalizeValue2 = normalizeValue(fFloatValue2);
        if (isCentered()) {
            float fMin = Math.min(0.5f, fNormalizeValue2);
            fNormalizeValue2 = Math.max(0.5f, fNormalizeValue2);
            fNormalizeValue = fMin;
        }
        if (!isCentered() && (isRtl() || isVertical())) {
            return new float[]{fNormalizeValue2, fNormalizeValue};
        }
        return new float[]{fNormalizeValue, fNormalizeValue2};
    }

    private void drawInactiveTracks(Canvas canvas, int i, int i2) {
        int iCalculateThumbTrackGapSize;
        int iCalculateThumbTrackGapSize2;
        float[] activeRange = getActiveRange();
        float f = i2;
        int i3 = this.trackThickness;
        float f2 = f - (i3 / 2.0f);
        float f3 = f + (i3 / 2.0f);
        int size = 0;
        if (isCentered() && activeRange[0] == 0.5f) {
            iCalculateThumbTrackGapSize = this.thumbTrackGapSize;
        } else {
            iCalculateThumbTrackGapSize = calculateThumbTrackGapSize((isRtl() || isVertical()) ? this.values.size() - 1 : 0);
        }
        int i4 = iCalculateThumbTrackGapSize;
        float f4 = i;
        drawInactiveTrackSection(this.trackSidePadding - getTrackCornerSize(), (this.trackSidePadding + (activeRange[0] * f4)) - i4, f2, f3, canvas, this.inactiveTrackLeftRect, FullCornerDirection.LEFT, i4);
        if (isCentered() && activeRange[1] == 0.5f) {
            iCalculateThumbTrackGapSize2 = this.thumbTrackGapSize;
        } else {
            if (!isRtl() && !isVertical()) {
                size = this.values.size() - 1;
            }
            iCalculateThumbTrackGapSize2 = calculateThumbTrackGapSize(size);
        }
        int i5 = iCalculateThumbTrackGapSize2;
        drawInactiveTrackSection(this.trackSidePadding + (activeRange[1] * f4) + i5, r1 + i + getTrackCornerSize(), f2, f3, canvas, this.inactiveTrackRightRect, FullCornerDirection.RIGHT, i5);
    }

    private void drawInactiveTrackSection(float f, float f2, float f3, float f4, Canvas canvas, RectF rectF, FullCornerDirection fullCornerDirection, int i) {
        if (f2 - f > getTrackCornerSize() - i) {
            rectF.set(f, f3, f2, f4);
        } else {
            rectF.setEmpty();
        }
        updateTrack(canvas, this.inactiveTrackPaint, rectF, getTrackCornerSize(), fullCornerDirection);
    }

    private float normalizeValue(float f) {
        float f2 = this.valueFrom;
        float f3 = (f - f2) / (this.valueTo - f2);
        return (isRtl() || isVertical()) ? 1.0f - f3 : f3;
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00e2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void drawActiveTracks(Canvas canvas, int i, int i2) {
        int iCalculateThumbTrackGapSize;
        float f;
        float f2;
        BaseSlider<S, L, T> baseSlider = this;
        float[] activeRange = baseSlider.getActiveRange();
        int i3 = baseSlider.trackSidePadding;
        float f3 = i;
        float fValueToX = i3 + (activeRange[1] * f3);
        float fCalculateThumbTrackGapSize = i3 + (activeRange[0] * f3);
        if (fCalculateThumbTrackGapSize >= fValueToX) {
            baseSlider.activeTrackRect.setEmpty();
            return;
        }
        FullCornerDirection fullCornerDirection = FullCornerDirection.NONE;
        if (baseSlider.values.size() == 1 && !baseSlider.isCentered()) {
            fullCornerDirection = (baseSlider.isRtl() || baseSlider.isVertical()) ? FullCornerDirection.RIGHT : FullCornerDirection.LEFT;
        }
        FullCornerDirection fullCornerDirection2 = fullCornerDirection;
        int i4 = 0;
        while (i4 < baseSlider.values.size()) {
            if (baseSlider.values.size() > 1) {
                if (i4 > 0) {
                    fCalculateThumbTrackGapSize = baseSlider.valueToX(baseSlider.values.get(i4 - 1).floatValue());
                }
                fValueToX = baseSlider.valueToX(baseSlider.values.get(i4).floatValue());
                if (baseSlider.isRtl() || baseSlider.isVertical()) {
                    fValueToX = fCalculateThumbTrackGapSize;
                    fCalculateThumbTrackGapSize = fValueToX;
                }
            }
            int trackCornerSize = baseSlider.getTrackCornerSize();
            int iOrdinal = fullCornerDirection2.ordinal();
            if (iOrdinal == 1) {
                fCalculateThumbTrackGapSize -= trackCornerSize;
                iCalculateThumbTrackGapSize = baseSlider.calculateThumbTrackGapSize(i4);
            } else {
                if (iOrdinal == 2) {
                    fCalculateThumbTrackGapSize += baseSlider.calculateThumbTrackGapSize(i4);
                    fValueToX += trackCornerSize;
                } else if (iOrdinal == 3) {
                    if (i4 > 0) {
                        fCalculateThumbTrackGapSize += baseSlider.calculateThumbTrackGapSize(i4 - 1);
                        iCalculateThumbTrackGapSize = baseSlider.calculateThumbTrackGapSize(i4);
                    } else if (activeRange[1] == 0.5f) {
                        fCalculateThumbTrackGapSize += baseSlider.calculateThumbTrackGapSize(i4);
                    } else if (activeRange[0] == 0.5f) {
                        iCalculateThumbTrackGapSize = baseSlider.calculateThumbTrackGapSize(i4);
                    }
                }
                f = fCalculateThumbTrackGapSize;
                f2 = fValueToX;
                RectF rectF = baseSlider.activeTrackRect;
                if (f < f2) {
                    rectF.setEmpty();
                } else {
                    float f4 = i2;
                    int i5 = baseSlider.trackThickness;
                    rectF.set(f, f4 - (i5 / 2.0f), f2, f4 + (i5 / 2.0f));
                    baseSlider.updateTrack(canvas, baseSlider.activeTrackPaint, baseSlider.activeTrackRect, trackCornerSize, fullCornerDirection2);
                }
                i4++;
                baseSlider = this;
                fCalculateThumbTrackGapSize = f;
                fValueToX = f2;
            }
            fValueToX -= iCalculateThumbTrackGapSize;
            f = fCalculateThumbTrackGapSize;
            f2 = fValueToX;
            RectF rectF2 = baseSlider.activeTrackRect;
            if (f < f2) {
            }
            i4++;
            baseSlider = this;
            fCalculateThumbTrackGapSize = f;
            fValueToX = f2;
        }
    }

    private float calculateStartTrackCornerSize(float f) {
        if (!this.values.isEmpty() && hasGapBetweenThumbAndTrack()) {
            float fValueToX = valueToX(this.values.get((isRtl() || isVertical()) ? this.values.size() - 1 : 0).floatValue()) - this.trackSidePadding;
            if (fValueToX < f) {
                return Math.max(fValueToX, this.trackInsideCornerSize);
            }
        }
        return f;
    }

    private float calculateEndTrackCornerSize(float f) {
        if (!this.values.isEmpty() && hasGapBetweenThumbAndTrack()) {
            float fValueToX = valueToX(this.values.get((isRtl() || isVertical()) ? 0 : this.values.size() - 1).floatValue()) - this.trackSidePadding;
            int i = this.trackWidth;
            if (fValueToX > i - f) {
                return Math.max(i - fValueToX, this.trackInsideCornerSize);
            }
        }
        return f;
    }

    private void drawTrackIcons(Canvas canvas, RectF rectF, RectF rectF2) {
        if (hasTrackIcons()) {
            if (this.values.size() > 1) {
                Log.w(TAG, "Track icons can only be used when only 1 thumb is present.");
            }
            calculateBoundsAndDrawTrackIcon(canvas, rectF, this.trackIconActiveStart, true);
            calculateBoundsAndDrawTrackIcon(canvas, rectF2, this.trackIconInactiveStart, true);
            calculateBoundsAndDrawTrackIcon(canvas, rectF, this.trackIconActiveEnd, false);
            calculateBoundsAndDrawTrackIcon(canvas, rectF2, this.trackIconInactiveEnd, false);
        }
    }

    private boolean hasTrackIcons() {
        return (this.trackIconActiveStart == null && this.trackIconActiveEnd == null && this.trackIconInactiveStart == null && this.trackIconInactiveEnd == null) ? false : true;
    }

    private void calculateBoundsAndDrawTrackIcon(Canvas canvas, RectF rectF, Drawable drawable, boolean z) {
        if (drawable != null) {
            calculateTrackIconBounds(rectF, this.iconRectF, this.trackIconSize, this.trackIconPadding, z);
            if (this.iconRectF.isEmpty()) {
                return;
            }
            drawTrackIcon(canvas, this.iconRectF, drawable);
        }
    }

    private void drawTrackIcon(Canvas canvas, RectF rectF, Drawable drawable) {
        if (isVertical()) {
            this.rotationMatrix.mapRect(rectF);
        }
        rectF.round(this.iconRect);
        drawable.setBounds(this.iconRect);
        drawable.draw(canvas);
    }

    private void calculateTrackIconBounds(RectF rectF, RectF rectF2, int i, int i2, boolean z) {
        float f;
        if (rectF.right - rectF.left >= (i2 * 2) + i) {
            if (z ^ (isRtl() || isVertical())) {
                f = rectF.left + i2;
            } else {
                f = (rectF.right - i2) - i;
            }
            float f2 = i;
            float fCalculateTrackCenter = calculateTrackCenter() - (f2 / 2.0f);
            rectF2.set(f, fCalculateTrackCenter, f + f2, f2 + fCalculateTrackCenter);
            return;
        }
        rectF2.setEmpty();
    }

    private boolean hasGapBetweenThumbAndTrack() {
        return this.thumbTrackGapSize > 0;
    }

    private int calculateThumbTrackGapSize(int i) {
        if (this.thumbIsPressed && i == this.activeThumbIdx && this.customThumbDrawable == null && this.customThumbDrawablesForValues.isEmpty()) {
            return this.thumbTrackGapSize - ((this.thumbWidth - Math.round(this.thumbWidth * 0.5f)) / 2);
        }
        return this.thumbTrackGapSize;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x006c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void updateTrack(Canvas canvas, Paint paint, RectF rectF, float f, FullCornerDirection fullCornerDirection) {
        int i;
        if (rectF.isEmpty()) {
            return;
        }
        float fCalculateStartTrackCornerSize = calculateStartTrackCornerSize(f);
        float fCalculateEndTrackCornerSize = calculateEndTrackCornerSize(f);
        int iOrdinal = fullCornerDirection.ordinal();
        if (iOrdinal == 1) {
            i = this.trackInsideCornerSize;
        } else {
            if (iOrdinal == 2) {
                fCalculateStartTrackCornerSize = this.trackInsideCornerSize;
            } else if (iOrdinal == 3) {
                i = this.trackInsideCornerSize;
                fCalculateStartTrackCornerSize = i;
            }
            paint.setStyle(Paint.Style.FILL);
            paint.setStrokeCap(Paint.Cap.BUTT);
            if (hasGapBetweenThumbAndTrack()) {
                paint.setAntiAlias(true);
            }
            RectF rectF2 = new RectF(rectF);
            if (isVertical()) {
                this.rotationMatrix.mapRect(rectF2);
            }
            this.trackPath.reset();
            if (rectF.width() < fCalculateStartTrackCornerSize + fCalculateEndTrackCornerSize) {
                this.trackPath.addRoundRect(rectF2, getCornerRadii(fCalculateStartTrackCornerSize, fCalculateEndTrackCornerSize), Path.Direction.CW);
                canvas.drawPath(this.trackPath, paint);
                return;
            }
            float fMin = Math.min(fCalculateStartTrackCornerSize, fCalculateEndTrackCornerSize);
            float fMax = Math.max(fCalculateStartTrackCornerSize, fCalculateEndTrackCornerSize);
            canvas.save();
            this.trackPath.addRoundRect(rectF2, fMin, fMin, Path.Direction.CW);
            canvas.clipPath(this.trackPath);
            int iOrdinal2 = fullCornerDirection.ordinal();
            if (iOrdinal2 == 1) {
                RectF rectF3 = this.cornerRect;
                float f2 = rectF.left;
                rectF3.set(f2, rectF.top, (2.0f * fMax) + f2, rectF.bottom);
            } else {
                RectF rectF4 = this.cornerRect;
                if (iOrdinal2 == 2) {
                    float f3 = rectF.right;
                    rectF4.set(f3 - (2.0f * fMax), rectF.top, f3, rectF.bottom);
                } else {
                    rectF4.set(rectF.centerX() - fMax, rectF.top, rectF.centerX() + fMax, rectF.bottom);
                }
            }
            if (isVertical()) {
                this.rotationMatrix.mapRect(this.cornerRect);
            }
            canvas.drawRoundRect(this.cornerRect, fMax, fMax, paint);
            canvas.restore();
            return;
        }
        fCalculateEndTrackCornerSize = i;
        paint.setStyle(Paint.Style.FILL);
        paint.setStrokeCap(Paint.Cap.BUTT);
        if (hasGapBetweenThumbAndTrack()) {
        }
        RectF rectF22 = new RectF(rectF);
        if (isVertical()) {
        }
        this.trackPath.reset();
        if (rectF.width() < fCalculateStartTrackCornerSize + fCalculateEndTrackCornerSize) {
        }
    }

    private float[] getCornerRadii(float f, float f2) {
        if (isVertical()) {
            return new float[]{f, f, f, f, f2, f2, f2, f2};
        }
        return new float[]{f, f, f2, f2, f2, f2, f, f};
    }

    private void maybeDrawTicks(Canvas canvas) {
        float[] fArr = this.ticksCoordinates;
        if (fArr == null || fArr.length == 0) {
            return;
        }
        float[] activeRange = getActiveRange();
        int iCeil = (int) Math.ceil(activeRange[0] * ((this.ticksCoordinates.length / 2.0f) - 1.0f));
        int iFloor = (int) Math.floor(activeRange[1] * ((this.ticksCoordinates.length / 2.0f) - 1.0f));
        if (iCeil > 0) {
            drawTicks(0, iCeil * 2, canvas, this.inactiveTicksPaint);
        }
        if (iCeil <= iFloor) {
            drawTicks(iCeil * 2, (iFloor + 1) * 2, canvas, this.activeTicksPaint);
        }
        int i = (iFloor + 1) * 2;
        float[] fArr2 = this.ticksCoordinates;
        if (i < fArr2.length) {
            drawTicks(i, fArr2.length, canvas, this.inactiveTicksPaint);
        }
    }

    private void drawTicks(int i, int i2, Canvas canvas, Paint paint) {
        while (i < i2) {
            boolean zIsVertical = isVertical();
            float[] fArr = this.ticksCoordinates;
            float f = zIsVertical ? fArr[i + 1] : fArr[i];
            if (!isOverlappingThumb(f) && (!isCentered() || !isOverlappingCenterGap(f))) {
                float[] fArr2 = this.ticksCoordinates;
                canvas.drawPoint(fArr2[i], fArr2[i + 1], paint);
            }
            i += 2;
        }
    }

    private boolean isOverlappingThumb(float f) {
        for (int i = 0; i < this.values.size(); i++) {
            float fValueToX = valueToX(this.values.get(i).floatValue());
            float fCalculateThumbTrackGapSize = calculateThumbTrackGapSize(i) + (this.thumbWidth / 2.0f);
            if (f >= fValueToX - fCalculateThumbTrackGapSize && f <= fValueToX + fCalculateThumbTrackGapSize) {
                return true;
            }
        }
        return false;
    }

    private boolean isOverlappingCenterGap(float f) {
        float f2 = (this.trackWidth + (this.trackSidePadding * 2)) / 2.0f;
        int i = this.thumbTrackGapSize;
        return f >= f2 - ((float) i) && f <= f2 + ((float) i);
    }

    private void maybeDrawStopIndicator(Canvas canvas, int i) {
        if (this.trackStopIndicatorSize <= 0 || this.values.isEmpty()) {
            return;
        }
        ArrayList<Float> arrayList = this.values;
        float fFloatValue = arrayList.get(arrayList.size() - 1).floatValue();
        float f = this.valueTo;
        if (fFloatValue < f) {
            drawStopIndicator(canvas, valueToX(f), i);
        }
        if (isCentered() || (this.values.size() > 1 && this.values.get(0).floatValue() > this.valueFrom)) {
            drawStopIndicator(canvas, valueToX(this.valueFrom), i);
        }
    }

    private void drawStopIndicator(Canvas canvas, float f, float f2) {
        for (int i = 0; i < this.values.size(); i++) {
            float fValueToX = valueToX(this.values.get(i).floatValue());
            float fCalculateThumbTrackGapSize = calculateThumbTrackGapSize(i) + (this.thumbWidth / 2.0f);
            if (f >= fValueToX - fCalculateThumbTrackGapSize && f <= fValueToX + fCalculateThumbTrackGapSize) {
                return;
            }
        }
        boolean zIsVertical = isVertical();
        Paint paint = this.stopIndicatorPaint;
        if (zIsVertical) {
            canvas.drawPoint(f2, f, paint);
        } else {
            canvas.drawPoint(f, f2, paint);
        }
    }

    private void drawThumbs(Canvas canvas, int i, int i2) {
        BaseSlider<S, L, T> baseSlider;
        Canvas canvas2;
        int i3;
        int i4;
        int i5 = 0;
        while (i5 < this.values.size()) {
            float fFloatValue = this.values.get(i5).floatValue();
            Drawable drawable = this.customThumbDrawable;
            if (drawable != null) {
                baseSlider = this;
                canvas2 = canvas;
                i3 = i;
                i4 = i2;
                baseSlider.drawThumbDrawable(canvas2, i3, i4, fFloatValue, drawable);
            } else {
                baseSlider = this;
                canvas2 = canvas;
                i3 = i;
                i4 = i2;
                if (i5 < baseSlider.customThumbDrawablesForValues.size()) {
                    baseSlider.drawThumbDrawable(canvas2, i3, i4, fFloatValue, baseSlider.customThumbDrawablesForValues.get(i5));
                } else {
                    if (!baseSlider.isEnabled()) {
                        canvas2.drawCircle(baseSlider.trackSidePadding + (baseSlider.normalizeValue(fFloatValue) * i3), i4, baseSlider.getThumbRadius(), baseSlider.thumbPaint);
                    }
                    baseSlider.drawThumbDrawable(canvas2, i3, i4, fFloatValue, baseSlider.defaultThumbDrawables.get(i5));
                }
            }
            i5++;
            this = baseSlider;
            canvas = canvas2;
            i = i3;
            i2 = i4;
        }
    }

    private void drawThumbDrawable(Canvas canvas, int i, int i2, float f, Drawable drawable) {
        canvas.save();
        if (isVertical()) {
            canvas.concat(this.rotationMatrix);
        }
        canvas.translate((this.trackSidePadding + ((int) (normalizeValue(f) * i))) - (drawable.getBounds().width() / 2.0f), i2 - (drawable.getBounds().height() / 2.0f));
        drawable.draw(canvas);
        canvas.restore();
    }

    private void maybeDrawCompatHalo(Canvas canvas, int i, int i2) {
        Canvas canvas2;
        if (shouldDrawCompatHalo()) {
            float[] fArr = {this.trackSidePadding + (normalizeValue(this.values.get(this.focusedThumbIdx).floatValue()) * i), i2};
            if (isVertical()) {
                this.rotationMatrix.mapPoints(fArr);
            }
            if (Build.VERSION.SDK_INT < 28) {
                float f = fArr[0];
                int i3 = this.haloRadius;
                float f2 = fArr[1];
                canvas2 = canvas;
                canvas2.clipRect(f - i3, f2 - i3, f + i3, f2 + i3, Region.Op.UNION);
            } else {
                canvas2 = canvas;
            }
            canvas2.drawCircle(fArr[0], fArr[1], this.haloRadius, this.haloPaint);
        }
    }

    private boolean shouldDrawCompatHalo() {
        return this.forceDrawCompatHalo || getBackgroundRipple() == null;
    }

    private RippleDrawable getBackgroundRipple() {
        Drawable background = getBackground();
        if (background instanceof DrawableWrapper) {
            background = ((DrawableWrapper) background).getDrawable();
        }
        if (background instanceof RippleDrawable) {
            return (RippleDrawable) background;
        }
        return null;
    }

    @Override // android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        Rect rect = this.viewRect;
        rect.left = 0;
        rect.top = 0;
        rect.right = i3 - i;
        rect.bottom = i4 - i2;
        if (!this.exclusionRects.contains(rect)) {
            this.exclusionRects.add(this.viewRect);
        }
        ViewCompat.setSystemGestureExclusionRects(this, this.exclusionRects);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!isEnabled()) {
            return false;
        }
        float y = isVertical() ? motionEvent.getY() : motionEvent.getX();
        float x = isVertical() ? motionEvent.getX() : motionEvent.getY();
        float f = (y - this.trackSidePadding) / this.trackWidth;
        this.touchPosition = f;
        float fMax = Math.max(0.0f, f);
        this.touchPosition = fMax;
        this.touchPosition = Math.min(1.0f, fMax);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.touchDownAxis1 = y;
            this.touchDownAxis2 = x;
            this.previousDownTouchEventValues.clear();
            this.previousDownTouchEventValues = getValues();
            if ((isVertical() || !isPotentialVerticalScroll(motionEvent)) && (!isVertical() || !isPotentialHorizontalScroll(motionEvent))) {
                getParent().requestDisallowInterceptTouchEvent(true);
                if (pickActiveThumb()) {
                    requestFocus();
                    this.thumbIsPressed = true;
                    updateThumbWidthWhenPressed();
                    onStartTrackingTouch();
                    snapTouchPosition();
                    updateHaloHotspot();
                    invalidate();
                }
            }
        } else if (actionMasked == 1) {
            this.thumbIsPressed = false;
            MotionEvent motionEvent2 = this.lastEvent;
            if (motionEvent2 != null && motionEvent2.getActionMasked() == 0 && Math.abs(this.lastEvent.getX() - motionEvent.getX()) <= this.scaledTouchSlop && Math.abs(this.lastEvent.getY() - motionEvent.getY()) <= this.scaledTouchSlop && pickActiveThumb()) {
                onStartTrackingTouch();
            }
            if (this.activeThumbIdx != -1) {
                snapTouchPosition();
                updateHaloHotspot();
                resetThumbWidth();
                this.activeThumbIdx = -1;
                onStopTrackingTouch();
            }
            invalidate();
        } else if (actionMasked != 2) {
            if (actionMasked == 3) {
                this.thumbIsPressed = false;
                snapThumbToPreviousDownTouchEventValue();
                updateHaloHotspot();
                resetThumbWidth();
                this.activeThumbIdx = -1;
                onStopTrackingTouch();
                invalidate();
            }
        } else if (!this.thumbIsPressed) {
            if (!isVertical() && isPotentialVerticalScroll(motionEvent) && Math.abs(y - this.touchDownAxis1) < this.scaledTouchSlop) {
                return false;
            }
            if (isVertical() && isPotentialHorizontalScroll(motionEvent) && Math.abs(x - this.touchDownAxis2) < this.scaledTouchSlop * TOUCH_SLOP_RATIO) {
                return false;
            }
            getParent().requestDisallowInterceptTouchEvent(true);
            if (pickActiveThumb()) {
                this.thumbIsPressed = true;
                updateThumbWidthWhenPressed();
                onStartTrackingTouch();
                snapTouchPosition();
                updateHaloHotspot();
                invalidate();
            }
        } else {
            snapTouchPosition();
            updateHaloHotspot();
            invalidate();
        }
        setPressed(this.thumbIsPressed);
        this.lastEvent = MotionEvent.obtain(motionEvent);
        return true;
    }

    private void updateThumbWidthWhenPressed() {
        if (hasGapBetweenThumbAndTrack() && this.customThumbDrawable == null && this.customThumbDrawablesForValues.isEmpty()) {
            int i = this.thumbWidth;
            this.defaultThumbWidth = i;
            this.defaultThumbHeight = this.thumbHeight;
            this.defaultThumbTrackGapSize = this.thumbTrackGapSize;
            setThumbSize(Math.round(i * 0.5f), isFocusRingEnabled() ? this.thumbHeight - this.thumbHeightDecreaseFocusRing : -1, Integer.valueOf(this.activeThumbIdx));
        }
    }

    private void resetThumbWidth() {
        int i;
        if (!hasGapBetweenThumbAndTrack() || (i = this.defaultThumbWidth) == -1 || this.defaultThumbTrackGapSize == -1) {
            return;
        }
        setThumbSize(i, this.defaultThumbHeight, Integer.valueOf(this.activeThumbIdx));
    }

    private double snapPosition(float f) {
        float f2 = this.stepSize;
        if (f2 <= 0.0f) {
            return f;
        }
        int i = (int) ((this.valueTo - this.valueFrom) / f2);
        return ((double) Math.round(f * i)) / ((double) i);
    }

    public boolean pickActiveThumb() {
        if (this.activeThumbIdx != -1) {
            return true;
        }
        float valueOfTouchPositionAbsolute = getValueOfTouchPositionAbsolute();
        float fValueToX = valueToX(valueOfTouchPositionAbsolute);
        this.activeThumbIdx = 0;
        float fAbs = Math.abs(this.values.get(0).floatValue() - valueOfTouchPositionAbsolute);
        for (int i = 1; i < this.values.size(); i++) {
            float fAbs2 = Math.abs(this.values.get(i).floatValue() - valueOfTouchPositionAbsolute);
            float fValueToX2 = valueToX(this.values.get(i).floatValue());
            if (Float.compare(fAbs2, fAbs) > 0) {
                break;
            }
            boolean z = isRtl() || isVertical() ? fValueToX2 - fValueToX > 0.0f : fValueToX2 - fValueToX < 0.0f;
            if (Float.compare(fAbs2, fAbs) < 0) {
                this.activeThumbIdx = i;
            } else {
                if (Float.compare(fAbs2, fAbs) != 0) {
                    continue;
                } else {
                    if (Math.abs(fValueToX2 - fValueToX) < this.scaledTouchSlop) {
                        this.activeThumbIdx = -1;
                        return false;
                    }
                    if (z) {
                        this.activeThumbIdx = i;
                    }
                }
            }
            fAbs = fAbs2;
        }
        return this.activeThumbIdx != -1;
    }

    private float getValueOfTouchPositionAbsolute() {
        float f = this.touchPosition;
        if (isRtl() || isVertical()) {
            f = 1.0f - f;
        }
        float f2 = this.valueTo;
        float f3 = this.valueFrom;
        return (f * (f2 - f3)) + f3;
    }

    private boolean snapTouchPosition() {
        return snapActiveThumbToValue(getValueOfTouchPosition());
    }

    private boolean snapActiveThumbToValue(float f) {
        return snapThumbToValue(this.activeThumbIdx, f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean snapThumbToValue(int i, float f) {
        this.focusedThumbIdx = i;
        if (Math.abs(f - this.values.get(i).floatValue()) < THRESHOLD) {
            return false;
        }
        this.values.set(i, Float.valueOf(getClampedValue(i, f)));
        dispatchOnChangedFromUser(i);
        return true;
    }

    private void snapThumbToPreviousDownTouchEventValue() {
        if (this.activeThumbIdx == -1 || this.previousDownTouchEventValues.isEmpty()) {
            return;
        }
        for (int i = 0; i < this.values.size(); i++) {
            if (i == this.activeThumbIdx) {
                snapThumbToValue(i, this.previousDownTouchEventValues.get(i).floatValue());
                return;
            }
        }
    }

    private float getClampedValue(int i, float f) {
        float minSeparation = getMinSeparation();
        if (this.separationUnit == 0) {
            minSeparation = dimenToValue(minSeparation);
        }
        if (isRtl() || isVertical()) {
            minSeparation = -minSeparation;
        }
        int i2 = i + 1;
        int i3 = i - 1;
        return MathUtils.clamp(f, i3 < 0 ? this.valueFrom : this.values.get(i3).floatValue() + minSeparation, i2 >= this.values.size() ? this.valueTo : this.values.get(i2).floatValue() - minSeparation);
    }

    private float dimenToValue(float f) {
        if (f == 0.0f) {
            return 0.0f;
        }
        float f2 = (f - this.trackSidePadding) / this.trackWidth;
        float f3 = this.valueFrom;
        return (f2 * (f3 - this.valueTo)) + f3;
    }

    public void setSeparationUnit(int i) {
        this.separationUnit = i;
        this.dirtyConfig = true;
        postInvalidate();
    }

    private float getValueOfTouchPosition() {
        double dSnapPosition = snapPosition(this.touchPosition);
        if (isRtl() || isVertical()) {
            dSnapPosition = 1.0d - dSnapPosition;
        }
        float f = this.valueTo;
        float f2 = this.valueFrom;
        return (float) ((dSnapPosition * ((double) (f - f2))) + ((double) f2));
    }

    private float valueToX(float f) {
        return (normalizeValue(f) * this.trackWidth) + this.trackSidePadding;
    }

    private static float getAnimatorCurrentValueOrDefault(ValueAnimator valueAnimator, float f) {
        if (valueAnimator == null || !valueAnimator.isRunning()) {
            return f;
        }
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        valueAnimator.cancel();
        return fFloatValue;
    }

    private ValueAnimator createLabelAnimator(boolean z) {
        int iResolveThemeDuration;
        TimeInterpolator timeInterpolatorResolveThemeInterpolator;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(getAnimatorCurrentValueOrDefault(z ? this.labelsOutAnimator : this.labelsInAnimator, z ? 0.0f : 1.0f), z ? 1.0f : 0.0f);
        if (z) {
            iResolveThemeDuration = MotionUtils.resolveThemeDuration(getContext(), LABEL_ANIMATION_ENTER_DURATION_ATTR, 83);
            timeInterpolatorResolveThemeInterpolator = MotionUtils.resolveThemeInterpolator(getContext(), LABEL_ANIMATION_ENTER_EASING_ATTR, AnimationUtils.DECELERATE_INTERPOLATOR);
        } else {
            iResolveThemeDuration = MotionUtils.resolveThemeDuration(getContext(), LABEL_ANIMATION_EXIT_DURATION_ATTR, 117);
            timeInterpolatorResolveThemeInterpolator = MotionUtils.resolveThemeInterpolator(getContext(), LABEL_ANIMATION_EXIT_EASING_ATTR, AnimationUtils.FAST_OUT_LINEAR_IN_INTERPOLATOR);
        }
        valueAnimatorOfFloat.setDuration(iResolveThemeDuration);
        valueAnimatorOfFloat.setInterpolator(timeInterpolatorResolveThemeInterpolator);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.slider.BaseSlider$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                BaseSlider.m2971$r8$lambda$La4jj88vosfjEVZcojIkrE8EeQ(this.f$0, valueAnimator);
            }
        });
        return valueAnimatorOfFloat;
    }

    /* JADX INFO: renamed from: $r8$lambda$La4jj88vosfjEVZcojIkrE-8EeQ, reason: not valid java name */
    public static /* synthetic */ void m2971$r8$lambda$La4jj88vosfjEVZcojIkrE8EeQ(BaseSlider baseSlider, ValueAnimator valueAnimator) {
        baseSlider.getClass();
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        Iterator<TooltipDrawable> it = baseSlider.labels.iterator();
        while (it.hasNext()) {
            it.next().setRevealFraction(fFloatValue);
        }
        baseSlider.postInvalidateOnAnimation();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateLabels() {
        updateLabelPivots();
        int i = this.labelBehavior;
        if (i == 0 || i == 1) {
            if (this.activeThumbIdx != -1 && isEnabled()) {
                ensureLabelsAdded(false);
                return;
            } else {
                ensureLabelsRemoved();
                return;
            }
        }
        if (i == 2) {
            ensureLabelsRemoved();
            return;
        }
        if (i == 3) {
            if (isEnabled() && isSliderVisibleOnScreen()) {
                ensureLabelsAdded(true);
                return;
            } else {
                ensureLabelsRemoved();
                return;
            }
        }
        IntegerType$$ExternalSyntheticBUOutline0.m486m("Unexpected labelBehavior: ", this.labelBehavior);
    }

    private void updateLabelPivots() {
        float f;
        boolean zIsVertical = isVertical();
        boolean zIsRtl = isRtl();
        float f2 = 0.5f;
        if (zIsVertical && zIsRtl) {
            f = 0.5f;
            f2 = -0.2f;
        } else {
            f = 1.2f;
            if (zIsVertical) {
                f2 = 1.2f;
                f = 0.5f;
            }
        }
        Iterator<TooltipDrawable> it = this.labels.iterator();
        while (it.hasNext()) {
            it.next().setPivots(f2, f);
        }
    }

    private boolean isSliderVisibleOnScreen() {
        Rect rect = new Rect();
        ViewUtils.getContentView(this).getHitRect(rect);
        return getLocalVisibleRect(rect) && isThisAndAncestorsVisible();
    }

    private boolean isThisAndAncestorsVisible() {
        return this.thisAndAncestorsVisible;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setVisibleToUser(false);
    }

    @Override // android.view.View
    public void onVisibilityAggregated(boolean z) {
        super.onVisibilityAggregated(z);
        this.thisAndAncestorsVisible = z;
    }

    private void ensureLabelsRemoved() {
        if (this.labelsAreAnimatedIn) {
            this.labelsAreAnimatedIn = false;
            ValueAnimator valueAnimatorCreateLabelAnimator = createLabelAnimator(false);
            this.labelsOutAnimator = valueAnimatorCreateLabelAnimator;
            this.labelsInAnimator = null;
            valueAnimatorCreateLabelAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.slider.BaseSlider.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    ViewOverlay contentViewOverlay = BaseSlider.this.getContentViewOverlay();
                    if (contentViewOverlay == null) {
                        return;
                    }
                    Iterator it = BaseSlider.this.labels.iterator();
                    while (it.hasNext()) {
                        contentViewOverlay.remove((TooltipDrawable) it.next());
                    }
                }
            });
            this.labelsOutAnimator.start();
        }
    }

    private void ensureLabelsAdded(boolean z) {
        if (!this.labelsAreAnimatedIn) {
            this.labelsAreAnimatedIn = true;
            ValueAnimator valueAnimatorCreateLabelAnimator = createLabelAnimator(true);
            this.labelsInAnimator = valueAnimatorCreateLabelAnimator;
            this.labelsOutAnimator = null;
            valueAnimatorCreateLabelAnimator.start();
        }
        Iterator<TooltipDrawable> it = this.labels.iterator();
        if (z) {
            for (int i = 0; i < this.values.size() && it.hasNext(); i++) {
                if (i != this.focusedThumbIdx) {
                    setValueForLabel(it.next(), this.values.get(i).floatValue());
                }
            }
        }
        if (!it.hasNext()) {
            EncodedValueReader$$ExternalSyntheticBUOutline0.m218m("Not enough labels(%d) to display all the values(%d)", new Object[]{Integer.valueOf(this.labels.size()), Integer.valueOf(this.values.size())});
        } else {
            setValueForLabel(it.next(), this.values.get(this.focusedThumbIdx).floatValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String formatValue(float f) {
        if (hasLabelFormatter()) {
            return this.formatter.getFormattedValue(f);
        }
        return String.format(((float) ((int) f)) == f ? "%.0f" : "%.2f", Float.valueOf(f));
    }

    private void setValueForLabel(TooltipDrawable tooltipDrawable, float f) {
        tooltipDrawable.setText(formatValue(f));
        positionLabel(tooltipDrawable, f);
        ViewOverlay contentViewOverlay = getContentViewOverlay();
        if (contentViewOverlay == null) {
            return;
        }
        contentViewOverlay.add(tooltipDrawable);
    }

    private void positionLabel(TooltipDrawable tooltipDrawable, float f) {
        calculateLabelBounds(tooltipDrawable, f);
        if (isVertical()) {
            RectF rectF = new RectF(this.labelRect);
            this.rotationMatrix.mapRect(rectF);
            rectF.round(this.labelRect);
        }
        DescendantOffsetUtils.offsetDescendantRect(ViewUtils.getContentView(this), this, this.labelRect);
        tooltipDrawable.setBounds(this.labelRect);
    }

    private void calculateLabelBounds(TooltipDrawable tooltipDrawable, float f) {
        int iNormalizeValue;
        int intrinsicWidth;
        int iCalculateTrackCenter;
        int intrinsicHeight;
        int i;
        boolean zIsVertical = isVertical();
        int i2 = this.trackSidePadding;
        if (zIsVertical) {
            iNormalizeValue = (i2 + ((int) (normalizeValue(f) * this.trackWidth))) - (tooltipDrawable.getIntrinsicHeight() / 2);
            intrinsicWidth = tooltipDrawable.getIntrinsicHeight() + iNormalizeValue;
            if (isRtl()) {
                iCalculateTrackCenter = calculateTrackCenter() - (this.labelPadding + (this.thumbHeight / 2));
                intrinsicHeight = tooltipDrawable.getIntrinsicWidth();
            } else {
                int iCalculateTrackCenter2 = calculateTrackCenter() + this.labelPadding + (this.thumbHeight / 2);
                iCalculateTrackCenter = tooltipDrawable.getIntrinsicWidth() + iCalculateTrackCenter2;
                i = iCalculateTrackCenter2;
                this.labelRect.set(iNormalizeValue, i, intrinsicWidth, iCalculateTrackCenter);
            }
        } else {
            iNormalizeValue = (i2 + ((int) (normalizeValue(f) * this.trackWidth))) - (tooltipDrawable.getIntrinsicWidth() / 2);
            intrinsicWidth = tooltipDrawable.getIntrinsicWidth() + iNormalizeValue;
            iCalculateTrackCenter = calculateTrackCenter() - (this.labelPadding + (this.thumbHeight / 2));
            intrinsicHeight = tooltipDrawable.getIntrinsicHeight();
        }
        i = iCalculateTrackCenter - intrinsicHeight;
        this.labelRect.set(iNormalizeValue, i, intrinsicWidth, iCalculateTrackCenter);
    }

    private void invalidateTrack() {
        this.inactiveTrackPaint.setStrokeWidth(this.trackThickness);
        this.activeTrackPaint.setStrokeWidth(this.trackThickness);
    }

    private boolean isInVerticalScrollingContainer() {
        for (ViewParent parent = getParent(); parent instanceof ViewGroup; parent = parent.getParent()) {
            ViewGroup viewGroup = (ViewGroup) parent;
            if ((viewGroup.canScrollVertically(1) || viewGroup.canScrollVertically(-1)) && viewGroup.shouldDelayChildPressedState()) {
                return true;
            }
        }
        return false;
    }

    private boolean isInHorizontalScrollingContainer() {
        for (ViewParent parent = getParent(); parent instanceof ViewGroup; parent = parent.getParent()) {
            ViewGroup viewGroup = (ViewGroup) parent;
            if ((viewGroup.canScrollHorizontally(1) || viewGroup.canScrollHorizontally(-1)) && viewGroup.shouldDelayChildPressedState()) {
                return true;
            }
        }
        return false;
    }

    private static boolean isMouseEvent(MotionEvent motionEvent) {
        return motionEvent.getToolType(0) == 3;
    }

    private boolean isPotentialVerticalScroll(MotionEvent motionEvent) {
        return !isMouseEvent(motionEvent) && isInVerticalScrollingContainer();
    }

    private boolean isPotentialHorizontalScroll(MotionEvent motionEvent) {
        return !isMouseEvent(motionEvent) && isInHorizontalScrollingContainer();
    }

    private void dispatchOnChangedProgrammatically() {
        for (L l : this.changeListeners) {
            ArrayList<Float> arrayList = this.values;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Float f = arrayList.get(i);
                i++;
                l.onValueChange(this, f.floatValue(), false);
            }
        }
    }

    private void dispatchOnChangedFromUser(int i) {
        Iterator<L> it = this.changeListeners.iterator();
        while (it.hasNext()) {
            it.next().onValueChange(this, this.values.get(i).floatValue(), true);
        }
        AccessibilityManager accessibilityManager = this.accessibilityManager;
        if (accessibilityManager == null || !accessibilityManager.isEnabled()) {
            return;
        }
        scheduleAccessibilityEventSender(i);
        this.accessibilityHelper.invalidateVirtualView(i);
    }

    private void onStartTrackingTouch() {
        Iterator<T> it = this.touchListeners.iterator();
        while (it.hasNext()) {
            it.next().onStartTrackingTouch(this);
        }
    }

    private void onStopTrackingTouch() {
        Iterator<T> it = this.touchListeners.iterator();
        while (it.hasNext()) {
            it.next().onStopTrackingTouch(this);
        }
    }

    @Override // android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        this.inactiveTrackPaint.setColor(getColorForState(this.trackColorInactive));
        this.activeTrackPaint.setColor(getColorForState(this.trackColorActive));
        this.inactiveTicksPaint.setColor(getColorForState(this.tickColorInactive));
        this.activeTicksPaint.setColor(getColorForState(this.tickColorActive));
        this.stopIndicatorPaint.setColor(getColorForState(this.tickColorInactive));
        for (TooltipDrawable tooltipDrawable : this.labels) {
            if (tooltipDrawable.isStateful()) {
                tooltipDrawable.setState(getDrawableState());
            }
        }
        for (int i = 0; i < this.defaultThumbDrawables.size(); i++) {
            if (this.defaultThumbDrawables.get(i).isStateful()) {
                this.defaultThumbDrawables.get(i).setState(getDrawableState());
            }
        }
        this.haloPaint.setColor(getColorForState(this.haloColor));
        this.haloPaint.setAlpha(63);
    }

    private int getColorForState(ColorStateList colorStateList) {
        return colorStateList.getColorForState(getDrawableState(), colorStateList.getDefaultColor());
    }

    public void forceDrawCompatHalo(boolean z) {
        this.forceDrawCompatHalo = z;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (!isEnabled()) {
            return super.onKeyDown(i, keyEvent);
        }
        this.activeThumbIdx = this.focusedThumbIdx;
        this.isLongPress |= keyEvent.isLongPress();
        Float fCalculateIncrementForKey = calculateIncrementForKey(i);
        if (fCalculateIncrementForKey != null) {
            if (snapActiveThumbToValue(this.values.get(this.activeThumbIdx).floatValue() + fCalculateIncrementForKey.floatValue())) {
                updateHaloHotspot();
                postInvalidate();
            }
            return true;
        }
        if (i == 61) {
            resetThumbWidth();
            if (keyEvent.hasNoModifiers()) {
                return moveFocus(1);
            }
            if (keyEvent.isShiftPressed()) {
                return moveFocus(-1);
            }
            return false;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        this.isLongPress = false;
        return super.onKeyUp(i, keyEvent);
    }

    public final boolean isRtl() {
        return getLayoutDirection() == 1;
    }

    public boolean isVertical() {
        return this.widgetOrientation == 1;
    }

    public boolean isCentered() {
        return this.centered;
    }

    private boolean moveFocus(int i) {
        int i2 = this.focusedThumbIdx;
        int iClamp = (int) MathUtils.clamp(((long) i2) + ((long) i), 0L, this.values.size() - 1);
        this.focusedThumbIdx = iClamp;
        if (iClamp == i2) {
            return false;
        }
        this.activeThumbIdx = iClamp;
        updateThumbWidthWhenPressed();
        updateHaloHotspot();
        postInvalidate();
        return true;
    }

    private boolean moveFocusInAbsoluteDirection(int i) {
        if (isRtl() || isVertical()) {
            i = i == Integer.MIN_VALUE ? Integer.MAX_VALUE : -i;
        }
        return moveFocus(i);
    }

    private Float calculateIncrementForKey(int i) {
        float fCalculateStepIncrement = this.isLongPress ? calculateStepIncrement(20) : calculateStepIncrement();
        if (i == 21) {
            if (!isRtl()) {
                fCalculateStepIncrement = -fCalculateStepIncrement;
            }
            return Float.valueOf(fCalculateStepIncrement);
        }
        if (i == 22) {
            if (isRtl()) {
                fCalculateStepIncrement = -fCalculateStepIncrement;
            }
            return Float.valueOf(fCalculateStepIncrement);
        }
        if (i == 69) {
            return Float.valueOf(-fCalculateStepIncrement);
        }
        if (i == 70 || i == 81) {
            return Float.valueOf(fCalculateStepIncrement);
        }
        return null;
    }

    private float calculateStepIncrement() {
        float f = this.stepSize;
        if (f == 0.0f) {
            return 1.0f;
        }
        return f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float calculateStepIncrement(int i) {
        float fCalculateStepIncrement = calculateStepIncrement();
        return (this.valueTo - this.valueFrom) / fCalculateStepIncrement <= i ? fCalculateStepIncrement : Math.round(r1 / r2) * fCalculateStepIncrement;
    }

    @Override // android.view.View
    public void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        if (!z) {
            resetThumbWidth();
            this.activeThumbIdx = -1;
            this.accessibilityHelper.clearKeyboardFocusForVirtualView(this.focusedThumbIdx);
        } else {
            if (this.activeThumbIdx == -1) {
                focusThumbOnFocusGained(i);
                this.activeThumbIdx = this.focusedThumbIdx;
            }
            resetThumbWidth();
            updateThumbWidthWhenPressed();
            this.accessibilityHelper.requestKeyboardFocusForVirtualView(this.focusedThumbIdx);
        }
    }

    private void focusThumbOnFocusGained(int i) {
        if (i == 1) {
            moveFocus(Integer.MAX_VALUE);
            return;
        }
        if (i == 2) {
            moveFocus(Integer.MIN_VALUE);
        } else if (i == 17) {
            moveFocusInAbsoluteDirection(Integer.MAX_VALUE);
        } else {
            if (i != 66) {
                return;
            }
            moveFocusInAbsoluteDirection(Integer.MIN_VALUE);
        }
    }

    public final int getAccessibilityFocusedVirtualViewId() {
        return this.accessibilityHelper.getAccessibilityFocusedVirtualViewId();
    }

    @Override // android.view.View
    public CharSequence getAccessibilityClassName() {
        return SeekBar.class.getName();
    }

    @Override // android.view.View
    public boolean dispatchHoverEvent(MotionEvent motionEvent) {
        return this.accessibilityHelper.dispatchHoverEvent(motionEvent) || super.dispatchHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    private void scheduleAccessibilityEventSender(int i) {
        BaseSlider<S, L, T>.AccessibilityEventSender accessibilityEventSender = this.accessibilityEventSender;
        if (accessibilityEventSender == null) {
            this.accessibilityEventSender = new AccessibilityEventSender();
        } else {
            removeCallbacks(accessibilityEventSender);
        }
        this.accessibilityEventSender.setVirtualViewId(i);
        postDelayed(this.accessibilityEventSender, 200L);
    }

    public class AccessibilityEventSender implements Runnable {
        int virtualViewId;

        private AccessibilityEventSender() {
            this.virtualViewId = -1;
        }

        public void setVirtualViewId(int i) {
            this.virtualViewId = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            BaseSlider.this.accessibilityHelper.sendEventForVirtualView(this.virtualViewId, 4);
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SliderState sliderState = new SliderState(super.onSaveInstanceState());
        sliderState.valueFrom = this.valueFrom;
        sliderState.valueTo = this.valueTo;
        sliderState.values = new ArrayList<>(this.values);
        sliderState.stepSize = this.stepSize;
        sliderState.hasFocus = hasFocus();
        return sliderState;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        SliderState sliderState = (SliderState) parcelable;
        super.onRestoreInstanceState(sliderState.getSuperState());
        this.valueFrom = sliderState.valueFrom;
        this.valueTo = sliderState.valueTo;
        setValuesInternal(sliderState.values);
        this.stepSize = sliderState.stepSize;
        if (sliderState.hasFocus) {
            requestFocus();
        }
    }

    public static class SliderState extends View.BaseSavedState {
        public static final Parcelable.Creator<SliderState> CREATOR = new Parcelable.Creator<SliderState>() { // from class: com.google.android.material.slider.BaseSlider.SliderState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SliderState createFromParcel(Parcel parcel) {
                return new SliderState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SliderState[] newArray(int i) {
                return new SliderState[i];
            }
        };
        boolean hasFocus;
        float stepSize;
        float valueFrom;
        float valueTo;
        ArrayList<Float> values;

        public SliderState(Parcelable parcelable) {
            super(parcelable);
        }

        private SliderState(Parcel parcel) {
            super(parcel);
            this.valueFrom = parcel.readFloat();
            this.valueTo = parcel.readFloat();
            ArrayList<Float> arrayList = new ArrayList<>();
            this.values = arrayList;
            parcel.readList(arrayList, Float.class.getClassLoader());
            this.stepSize = parcel.readFloat();
            this.hasFocus = parcel.createBooleanArray()[0];
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeFloat(this.valueFrom);
            parcel.writeFloat(this.valueTo);
            parcel.writeList(this.values);
            parcel.writeFloat(this.stepSize);
            parcel.writeBooleanArray(new boolean[]{this.hasFocus});
        }
    }

    public void updateBoundsForVirtualViewId(int i, Rect rect) {
        int iNormalizeValue = this.trackSidePadding + ((int) (normalizeValue(getValues().get(i).floatValue()) * this.trackWidth));
        int iCalculateTrackCenter = calculateTrackCenter();
        int iMax = Math.max(this.minTouchTargetSize, this.accessibilityMinTouchTargetSize) / 2;
        int iMax2 = Math.max(this.thumbWidth / 2, iMax);
        int iMax3 = Math.max(this.thumbHeight / 2, iMax);
        RectF rectF = new RectF(iNormalizeValue - iMax2, iCalculateTrackCenter - iMax3, iNormalizeValue + iMax2, iCalculateTrackCenter + iMax3);
        if (isVertical()) {
            this.rotationMatrix.mapRect(rectF);
        }
        rect.set((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
    }

    public static class AccessibilityHelper extends ExploreByTouchHelper {
        private final BaseSlider<?, ?, ?> slider;
        final Rect virtualViewBounds;

        public AccessibilityHelper(BaseSlider<?, ?, ?> baseSlider) {
            super(baseSlider);
            this.virtualViewBounds = new Rect();
            this.slider = baseSlider;
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public int getVirtualViewAt(float f, float f2) {
            for (int i = 0; i < this.slider.getValues().size(); i++) {
                this.slider.updateBoundsForVirtualViewId(i, this.virtualViewBounds);
                if (this.virtualViewBounds.contains((int) f, (int) f2)) {
                    return i;
                }
            }
            return -1;
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public void getVisibleVirtualViews(List<Integer> list) {
            for (int i = 0; i < this.slider.getValues().size(); i++) {
                list.add(Integer.valueOf(i));
            }
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public void onPopulateNodeForVirtualView(int i, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SET_PROGRESS);
            List<Float> values = this.slider.getValues();
            Float f = values.get(i);
            float fFloatValue = f.floatValue();
            float valueFrom = this.slider.getValueFrom();
            float valueTo = this.slider.getValueTo();
            if (this.slider.isEnabled()) {
                if (fFloatValue > valueFrom) {
                    accessibilityNodeInfoCompat.addAction(8192);
                }
                if (fFloatValue < valueTo) {
                    accessibilityNodeInfoCompat.addAction(4096);
                }
            }
            NumberFormat numberInstance = NumberFormat.getNumberInstance();
            numberInstance.setMaximumFractionDigits(2);
            try {
                valueFrom = numberInstance.parse(numberInstance.format(valueFrom)).floatValue();
                valueTo = numberInstance.parse(numberInstance.format(valueTo)).floatValue();
                fFloatValue = numberInstance.parse(numberInstance.format(fFloatValue)).floatValue();
            } catch (ParseException unused) {
                Log.w(BaseSlider.TAG, String.format(BaseSlider.WARNING_PARSE_ERROR, f, Float.valueOf(valueFrom), Float.valueOf(valueTo)));
            }
            accessibilityNodeInfoCompat.setRangeInfo(AccessibilityNodeInfoCompat.RangeInfoCompat.obtain(1, valueFrom, valueTo, fFloatValue));
            accessibilityNodeInfoCompat.setClassName(SeekBar.class.getName());
            StringBuilder sb = new StringBuilder();
            if (this.slider.getContentDescription() != null) {
                sb.append(this.slider.getContentDescription());
                sb.append(",");
            }
            String value = this.slider.formatValue(fFloatValue);
            String string = this.slider.getContext().getString(C1451R.string.material_slider_value);
            if (values.size() > 1) {
                string = startOrEndDescription(i);
            }
            CharSequence stateDescription = ViewCompat.getStateDescription(this.slider);
            if (!TextUtils.isEmpty(stateDescription)) {
                accessibilityNodeInfoCompat.setStateDescription(stateDescription);
            } else {
                sb.append(String.format(Locale.getDefault(), "%s, %s", string, value));
            }
            accessibilityNodeInfoCompat.setContentDescription(sb.toString());
            this.slider.updateBoundsForVirtualViewId(i, this.virtualViewBounds);
            accessibilityNodeInfoCompat.setBoundsInParent(this.virtualViewBounds);
        }

        private String startOrEndDescription(int i) {
            if (i == this.slider.getValues().size() - 1) {
                return this.slider.getContext().getString(C1451R.string.material_slider_range_end);
            }
            if (i == 0) {
                return this.slider.getContext().getString(C1451R.string.material_slider_range_start);
            }
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public boolean onPerformActionForVirtualView(int i, int i2, Bundle bundle) {
            if (!this.slider.isEnabled()) {
                return false;
            }
            if (i2 == 4096 || i2 == 8192) {
                float fCalculateStepIncrement = this.slider.calculateStepIncrement(20);
                if (i2 == 8192) {
                    fCalculateStepIncrement = -fCalculateStepIncrement;
                }
                if (this.slider.isRtl()) {
                    fCalculateStepIncrement = -fCalculateStepIncrement;
                }
                if (!this.slider.snapThumbToValue(i, MathUtils.clamp(this.slider.getValues().get(i).floatValue() + fCalculateStepIncrement, this.slider.getValueFrom(), this.slider.getValueTo()))) {
                    return false;
                }
                this.slider.setActiveThumbIndex(i);
                this.slider.scheduleTooltipTimeout();
                this.slider.updateHaloHotspot();
                this.slider.postInvalidate();
                return true;
            }
            if (i2 == 16908349 && bundle != null && bundle.containsKey("android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE")) {
                if (this.slider.snapThumbToValue(i, bundle.getFloat("android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"))) {
                    this.slider.updateHaloHotspot();
                    this.slider.postInvalidate();
                    return true;
                }
            }
            return false;
        }
    }
}
