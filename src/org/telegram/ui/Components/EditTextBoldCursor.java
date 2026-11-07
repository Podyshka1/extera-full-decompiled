package org.telegram.ui.Components;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.os.Build;
import android.os.Looper;
import android.os.SystemClock;
import android.text.Editable;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.OverScroller;
import android.widget.TextView;
import androidx.annotation.Keep;
import androidx.core.graphics.ColorUtils;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.math.inline.InlineMathController;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import okhttp3.HttpUrl$$ExternalSyntheticBUOutline0;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.XiaomiUtilities;
import org.telegram.messenger.utils.Choreographer60FpsContent;
import org.telegram.ui.ActionBar.FloatingActionMode;
import org.telegram.ui.ActionBar.FloatingToolbar;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.AnimatedTextView;
import org.telegram.ui.Components.QuoteSpan;
import org.telegram.ui.Components.blur3.BlurredBackgroundDrawableViewFactory;

/* JADX INFO: loaded from: classes3.dex */
public class EditTextBoldCursor extends EditTextEffects {
    private static final String BLINK_CLASS = "android.widget.Editor$Blink";
    private static Class editorClass;
    private static Method getVerticalOffsetMethod;
    private static Field mCursorDrawableResField;
    private static Field mEditor;
    private static Method mEditorInvalidateDisplayList;
    private static Field mScrollYField;
    private static boolean mScrollYGet;
    private static Field mShowCursorField;
    private int activeLineColor;
    private Paint activeLinePaint;
    private float activeLineWidth;
    private boolean allowDrawCursor;
    private View attachedToWindow;
    BlurredBackgroundDrawableViewFactory blurredBackgroundDrawableViewFactory;
    private boolean currentDrawHintAsHeader;
    ShapeDrawable cursorDrawable;
    private boolean cursorDrawn;
    private int cursorSize;
    private float cursorWidth;
    public Utilities.Callback2<Canvas, Runnable> drawHint;
    boolean drawInMaim;
    private Object editor;
    public boolean ellipsizeByGradient;
    private LinearGradient ellipsizeGradient;
    private Matrix ellipsizeMatrix;
    private Paint ellipsizePaint;
    private int ellipsizeWidth;
    private StaticLayout errorLayout;
    private int errorLineColor;
    private TextPaint errorPaint;
    private CharSequence errorText;
    private boolean fixed;
    private boolean flingBlocked;
    private int flingDownScrollY;
    private int flingDownSelectionEnd;
    private int flingDownSelectionStart;
    private OverScroller flingScroller;
    private VelocityTracker flingVelocityTracker;
    private boolean flinging;
    public FloatingActionMode floatingActionMode;
    private FloatingToolbar floatingToolbar;
    private ViewTreeObserver.OnPreDrawListener floatingToolbarPreDrawListener;
    private boolean forceCursorEnd;
    private GradientDrawable gradientDrawable;
    private float headerAnimationProgress;
    private int headerHintColor;
    private AnimatorSet headerTransformAnimation;
    private CharSequence hint;
    private float hintAlpha;
    private AnimatedTextView.AnimatedTextDrawable hintAnimatedDrawable;
    private AnimatedTextView.AnimatedTextDrawable hintAnimatedDrawable2;
    private SubstringLayoutAnimator hintAnimator;
    private int hintColor;
    private long hintLastUpdateTime;
    private StaticLayout hintLayout;
    public int hintLayoutOffset;
    public float hintLayoutX;
    public float hintLayoutY;
    public boolean hintLayoutYFix;
    private boolean hintVisible;
    private int ignoreBottomCount;
    public boolean ignoreClipTop;
    private int ignoreTopCount;
    private final Choreographer60FpsContent.FrameCallback invalidateCallback;
    private boolean isTextWatchersSuppressed;
    private float lastLineActiveness;
    int lastOffset;
    private int lastSize;
    CharSequence lastText;
    private int lastTouchX;
    private boolean lineActive;
    private float lineActiveness;
    private int lineColor;
    private long lineLastUpdateTime;
    private Paint linePaint;
    private float lineSpacingExtra;
    private boolean lineVisible;
    private float lineY;
    public boolean lineYFix;
    private ViewTreeObserver.OnPreDrawListener listenerFixer;
    private Drawable mCursorDrawable;
    private int mHandlesColor;
    private ColorFilter mHandlesColorFilter;
    private Rect mTempRect;
    private Drawable mTextSelectHandle;
    private Drawable mTextSelectHandleLeft;
    private Drawable mTextSelectHandleRight;
    private boolean nextSetTextAnimated;
    private Runnable onPremiumMenuLockClickListener;
    private Rect padding;
    private Rect rect;
    private List<TextWatcher> registeredTextWatchers;
    float rightHintOffset;
    private int scrollY;
    private boolean showDisableMarkdown;
    private boolean supportRtlHint;
    private boolean transformHintToHeader;
    private boolean transformHintToHeaderOnFocus;
    private View windowView;

    public void extendActionMode(ActionMode actionMode, Menu menu) {
    }

    public int getActionModeStyle() {
        return 1;
    }

    @Override // android.widget.TextView, android.view.View
    @TargetApi(26)
    public int getAutofillType() {
        return 0;
    }

    public Theme.ResourcesProvider getResourcesProvider() {
        return null;
    }

    public void setShowDisableMarkdown(boolean z) {
        this.showDisableMarkdown = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(long j) {
        invalidate();
    }

    public void setHintText2(CharSequence charSequence, boolean z) {
        AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = this.hintAnimatedDrawable2;
        if (animatedTextDrawable != null) {
            animatedTextDrawable.setText(charSequence, !LocaleController.isRTL && z);
        }
    }

    public void setHintRightOffset(int i) {
        float f = i;
        if (this.rightHintOffset == f) {
            return;
        }
        this.rightHintOffset = f;
        invalidate();
    }

    /* JADX INFO: loaded from: classes7.dex */
    @TargetApi(23)
    public class ActionModeCallback2Wrapper extends ActionMode.Callback2 {
        private final ActionMode.Callback mWrapped;

        public ActionModeCallback2Wrapper(ActionMode.Callback callback) {
            this.mWrapped = callback;
        }

        @Override // android.view.ActionMode.Callback
        public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            return this.mWrapped.onCreateActionMode(actionMode, menu);
        }

        @Override // android.view.ActionMode.Callback
        public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
            return this.mWrapped.onPrepareActionMode(actionMode, menu);
        }

        @Override // android.view.ActionMode.Callback
        public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            return this.mWrapped.onActionItemClicked(actionMode, menuItem);
        }

        @Override // android.view.ActionMode.Callback
        public void onDestroyActionMode(ActionMode actionMode) {
            this.mWrapped.onDestroyActionMode(actionMode);
            EditTextBoldCursor.this.cleanupFloatingActionModeViews();
            EditTextBoldCursor.this.floatingActionMode = null;
        }

        @Override // android.view.ActionMode.Callback2
        public void onGetContentRect(ActionMode actionMode, View view, Rect rect) {
            ActionMode.Callback callback = this.mWrapped;
            if (callback instanceof ActionMode.Callback2) {
                ((ActionMode.Callback2) callback).onGetContentRect(actionMode, view, rect);
            } else {
                super.onGetContentRect(actionMode, view, rect);
            }
        }
    }

    public EditTextBoldCursor(Context context) {
        super(context);
        this.invalidateCallback = new Choreographer60FpsContent.FrameCallback() { // from class: org.telegram.ui.Components.EditTextBoldCursor$$ExternalSyntheticLambda1
            @Override // org.telegram.messenger.utils.Choreographer60FpsContent.FrameCallback
            public final void doFrame(long j) {
                this.f$0.lambda$new$0(j);
            }
        };
        this.rect = new Rect();
        this.hintVisible = true;
        this.hintAlpha = 1.0f;
        this.allowDrawCursor = true;
        this.forceCursorEnd = false;
        this.cursorWidth = 2.0f;
        this.lineVisible = false;
        this.lineActive = false;
        this.lineActiveness = 0.0f;
        this.lastLineActiveness = 0.0f;
        this.activeLineWidth = 0.0f;
        this.transformHintToHeaderOnFocus = true;
        this.lastOffset = -1;
        this.registeredTextWatchers = new ArrayList();
        this.isTextWatchersSuppressed = false;
        this.padding = new Rect();
        this.lastTouchX = -1;
        if (Build.VERSION.SDK_INT >= 26) {
            setImportantForAutofill(2);
        }
        init();
    }

    public void useAnimatedTextDrawable() {
        AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = new AnimatedTextView.AnimatedTextDrawable() { // from class: org.telegram.ui.Components.EditTextBoldCursor.1
            @Override // android.graphics.drawable.Drawable
            public void invalidateSelf() {
                EditTextBoldCursor.this.invalidate();
            }
        };
        this.hintAnimatedDrawable = animatedTextDrawable;
        animatedTextDrawable.setEllipsizeByGradient(true);
        this.hintAnimatedDrawable.setTextColor(this.hintColor);
        this.hintAnimatedDrawable.setTextSize(getPaint().getTextSize());
        AnimatedTextView.AnimatedTextDrawable animatedTextDrawable2 = new AnimatedTextView.AnimatedTextDrawable() { // from class: org.telegram.ui.Components.EditTextBoldCursor.2
            @Override // android.graphics.drawable.Drawable
            public void invalidateSelf() {
                EditTextBoldCursor.this.invalidate();
            }
        };
        this.hintAnimatedDrawable2 = animatedTextDrawable2;
        animatedTextDrawable2.setGravity(5);
        this.hintAnimatedDrawable2.setTextColor(this.hintColor);
        this.hintAnimatedDrawable2.setTextSize(getPaint().getTextSize());
    }

    @Override // android.widget.TextView
    public void addTextChangedListener(TextWatcher textWatcher) {
        this.registeredTextWatchers.add(textWatcher);
        if (this.isTextWatchersSuppressed) {
            return;
        }
        super.addTextChangedListener(textWatcher);
    }

    @Override // android.widget.TextView
    public void removeTextChangedListener(TextWatcher textWatcher) {
        this.registeredTextWatchers.remove(textWatcher);
        if (this.isTextWatchersSuppressed) {
            return;
        }
        super.removeTextChangedListener(textWatcher);
    }

    public void dispatchTextWatchersTextChanged() {
        for (TextWatcher textWatcher : this.registeredTextWatchers) {
            textWatcher.beforeTextChanged(_UrlKt.FRAGMENT_ENCODE_SET, 0, length(), length());
            textWatcher.onTextChanged(getText(), 0, length(), length());
            textWatcher.afterTextChanged(getText());
        }
    }

    public void setTextWatchersSuppressed(boolean z, boolean z2) {
        if (this.isTextWatchersSuppressed == z) {
            return;
        }
        this.isTextWatchersSuppressed = z;
        List<TextWatcher> list = this.registeredTextWatchers;
        if (z) {
            Iterator<TextWatcher> it = list.iterator();
            while (it.hasNext()) {
                super.removeTextChangedListener(it.next());
            }
            return;
        }
        for (TextWatcher textWatcher : list) {
            super.addTextChangedListener(textWatcher);
            if (z2) {
                textWatcher.beforeTextChanged(_UrlKt.FRAGMENT_ENCODE_SET, 0, length(), length());
                textWatcher.onTextChanged(getText(), 0, length(), length());
                textWatcher.afterTextChanged(getText());
            }
        }
    }

    public boolean isTextWatchersSuppressed() {
        return this.isTextWatchersSuppressed;
    }

    @Override // android.widget.TextView
    public Drawable getTextCursorDrawable() {
        if (this.cursorDrawable != null) {
            return super.getTextCursorDrawable();
        }
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(new float[]{AndroidUtilities.dp(10.0f), AndroidUtilities.dp(10.0f), AndroidUtilities.dp(10.0f), AndroidUtilities.dp(10.0f), AndroidUtilities.dp(10.0f), AndroidUtilities.dp(10.0f), AndroidUtilities.dp(10.0f), AndroidUtilities.dp(10.0f)}, null, null)) { // from class: org.telegram.ui.Components.EditTextBoldCursor.3
            @Override // android.graphics.drawable.ShapeDrawable, android.graphics.drawable.Drawable
            public void draw(Canvas canvas) {
                super.draw(canvas);
                EditTextBoldCursor.this.cursorDrawn = true;
            }
        };
        shapeDrawable.getPaint().setColor(0);
        return shapeDrawable;
    }

    @SuppressLint({"PrivateApi"})
    private void init() {
        int i;
        float f;
        char c2;
        this.linePaint = new Paint();
        this.activeLinePaint = new Paint();
        TextPaint textPaint = new TextPaint(1);
        this.errorPaint = textPaint;
        textPaint.setTextSize(AndroidUtilities.dp(11.0f));
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 26) {
            setImportantForAutofill(2);
        }
        if (i2 >= 29) {
            ShapeDrawable shapeDrawable = new ShapeDrawable() { // from class: org.telegram.ui.Components.EditTextBoldCursor.4
                @Override // android.graphics.drawable.ShapeDrawable, android.graphics.drawable.Drawable
                public void draw(Canvas canvas) {
                    EditTextBoldCursor editTextBoldCursor = EditTextBoldCursor.this;
                    if (editTextBoldCursor.drawInMaim) {
                        editTextBoldCursor.cursorDrawn = true;
                    } else {
                        super.draw(canvas);
                    }
                }

                @Override // android.graphics.drawable.ShapeDrawable, android.graphics.drawable.Drawable
                public int getIntrinsicHeight() {
                    return AndroidUtilities.dp(EditTextBoldCursor.this.cursorSize + 20);
                }

                @Override // android.graphics.drawable.ShapeDrawable, android.graphics.drawable.Drawable
                public int getIntrinsicWidth() {
                    return AndroidUtilities.dp(EditTextBoldCursor.this.cursorWidth);
                }
            };
            this.cursorDrawable = shapeDrawable;
            c2 = 0;
            f = 10.0f;
            i = 2;
            shapeDrawable.setShape(new RoundRectShape(new float[]{AndroidUtilities.dp(10.0f), AndroidUtilities.dp(10.0f), AndroidUtilities.dp(10.0f), AndroidUtilities.dp(10.0f), AndroidUtilities.dp(10.0f), AndroidUtilities.dp(10.0f), AndroidUtilities.dp(10.0f), AndroidUtilities.dp(10.0f)}, null, null));
            GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{-11230757, -11230757});
            this.gradientDrawable = gradientDrawable;
            gradientDrawable.setCornerRadius(AndroidUtilities.dp(10.0f));
            setTextCursorDrawable(this.cursorDrawable);
        } else {
            i = 2;
            f = 10.0f;
            c2 = 0;
        }
        try {
            if (!mScrollYGet && mScrollYField == null) {
                mScrollYGet = true;
                Field declaredField = View.class.getDeclaredField("mScrollY");
                mScrollYField = declaredField;
                declaredField.setAccessible(true);
            }
        } catch (Throwable unused) {
        }
        try {
            if (editorClass == null) {
                Field declaredField2 = TextView.class.getDeclaredField("mEditor");
                mEditor = declaredField2;
                declaredField2.setAccessible(true);
                Class<?> cls = Class.forName("android.widget.Editor");
                editorClass = cls;
                try {
                    Field declaredField3 = cls.getDeclaredField("mShowCursor");
                    mShowCursorField = declaredField3;
                    declaredField3.setAccessible(true);
                } catch (Exception unused2) {
                }
                try {
                    Method declaredMethod = editorClass.getDeclaredMethod("invalidateTextDisplayList", null);
                    mEditorInvalidateDisplayList = declaredMethod;
                    declaredMethod.setAccessible(true);
                } catch (Exception unused3) {
                }
                Method declaredMethod2 = TextView.class.getDeclaredMethod("getVerticalOffset", Boolean.TYPE);
                getVerticalOffsetMethod = declaredMethod2;
                declaredMethod2.setAccessible(true);
            }
        } catch (Throwable th) {
            FileLog.m992e(th);
        }
        if (this.cursorDrawable == null) {
            try {
                GradientDrawable.Orientation orientation = GradientDrawable.Orientation.TOP_BOTTOM;
                int[] iArr = new int[i];
                iArr[c2] = -11230757;
                iArr[1] = -11230757;
                GradientDrawable gradientDrawable2 = new GradientDrawable(orientation, iArr);
                this.gradientDrawable = gradientDrawable2;
                gradientDrawable2.setCornerRadius(AndroidUtilities.dp(f));
                if (Build.VERSION.SDK_INT >= 29) {
                    setTextCursorDrawable(this.gradientDrawable);
                }
                this.editor = mEditor.get(this);
            } catch (Throwable unused4) {
            }
            try {
                if (mCursorDrawableResField == null) {
                    Field declaredField4 = TextView.class.getDeclaredField("mCursorDrawableRes");
                    mCursorDrawableResField = declaredField4;
                    declaredField4.setAccessible(true);
                }
                Field field = mCursorDrawableResField;
                if (field != null) {
                    field.set(this, Integer.valueOf(C2665R.drawable.field_carret_empty));
                }
            } catch (Throwable unused5) {
            }
        }
        this.cursorSize = AndroidUtilities.dp(24.0f);
    }

    @SuppressLint({"PrivateApi"})
    public void fixHandleView(boolean z) {
        if (z) {
            this.fixed = false;
            return;
        }
        if (this.fixed) {
            return;
        }
        try {
            if (editorClass == null) {
                editorClass = Class.forName("android.widget.Editor");
                Field declaredField = TextView.class.getDeclaredField("mEditor");
                mEditor = declaredField;
                declaredField.setAccessible(true);
                this.editor = mEditor.get(this);
            }
            if (this.listenerFixer == null) {
                Method declaredMethod = editorClass.getDeclaredMethod("getPositionListener", null);
                declaredMethod.setAccessible(true);
                this.listenerFixer = (ViewTreeObserver.OnPreDrawListener) declaredMethod.invoke(this.editor, null);
            }
            final ViewTreeObserver.OnPreDrawListener onPreDrawListener = this.listenerFixer;
            Objects.requireNonNull(onPreDrawListener);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.EditTextBoldCursor$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    onPreDrawListener.onPreDraw();
                }
            }, 500L);
        } catch (Throwable unused) {
        }
        this.fixed = true;
    }

    public void setTransformHintToHeader(boolean z) {
        if (this.transformHintToHeader == z) {
            return;
        }
        this.transformHintToHeader = z;
        AnimatorSet animatorSet = this.headerTransformAnimation;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.headerTransformAnimation = null;
        }
    }

    public void setTransformHintToHeaderOnFocus(boolean z) {
        if (this.transformHintToHeaderOnFocus == z) {
            return;
        }
        this.transformHintToHeaderOnFocus = z;
        checkHeaderVisibility(false);
    }

    public void setAllowDrawCursor(boolean z) {
        this.allowDrawCursor = z;
        invalidate();
    }

    public void setForceCursorEnd(boolean z) {
        this.forceCursorEnd = z;
        invalidate();
    }

    public void setCursorWidth(float f) {
        this.cursorWidth = f;
    }

    public void setCursorColor(int i) {
        ShapeDrawable shapeDrawable = this.cursorDrawable;
        if (shapeDrawable != null) {
            shapeDrawable.getPaint().setColor(i);
        }
        GradientDrawable gradientDrawable = this.gradientDrawable;
        if (gradientDrawable != null) {
            gradientDrawable.setColor(i);
        }
        invalidate();
    }

    public void setCursorSize(int i) {
        this.cursorSize = i;
    }

    public void setErrorLineColor(int i) {
        this.errorLineColor = i;
        this.errorPaint.setColor(i);
        invalidate();
    }

    public void setLineColors(int i, int i2, int i3) {
        this.lineVisible = true;
        getContext().getResources().getDrawable(C2665R.drawable.search_dark).getPadding(this.padding);
        Rect rect = this.padding;
        setPadding(rect.left, rect.top, rect.right, rect.bottom);
        this.lineColor = i;
        this.activeLineColor = i2;
        this.activeLinePaint.setColor(i2);
        this.errorLineColor = i3;
        this.errorPaint.setColor(i3);
        invalidate();
    }

    public void setHintVisible(boolean z, boolean z2) {
        if (this.hintVisible == z) {
            return;
        }
        this.hintLastUpdateTime = System.currentTimeMillis();
        this.hintVisible = z;
        if (!z2) {
            this.hintAlpha = z ? 1.0f : 0.0f;
        }
        invalidate();
    }

    public void setHintColor(int i) {
        this.hintColor = i;
        AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = this.hintAnimatedDrawable;
        if (animatedTextDrawable != null) {
            animatedTextDrawable.setTextColor(i);
        }
        AnimatedTextView.AnimatedTextDrawable animatedTextDrawable2 = this.hintAnimatedDrawable2;
        if (animatedTextDrawable2 != null) {
            animatedTextDrawable2.setTextColor(this.hintColor);
        }
        invalidate();
    }

    public void setHeaderHintColor(int i) {
        this.headerHintColor = i;
        invalidate();
    }

    @Override // android.widget.TextView
    public void setTextSize(int i, float f) {
        AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = this.hintAnimatedDrawable;
        if (animatedTextDrawable != null) {
            animatedTextDrawable.setTextSize(AndroidUtilities.dp(f));
        }
        AnimatedTextView.AnimatedTextDrawable animatedTextDrawable2 = this.hintAnimatedDrawable2;
        if (animatedTextDrawable2 != null) {
            animatedTextDrawable2.setTextSize(AndroidUtilities.dp(f));
        }
        super.setTextSize(i, f);
    }

    public void setNextSetTextAnimated(boolean z) {
        this.nextSetTextAnimated = z;
    }

    public void setErrorText(CharSequence charSequence) {
        if (TextUtils.equals(charSequence, this.errorText)) {
            return;
        }
        this.errorText = charSequence;
        requestLayout();
    }

    public boolean hasErrorText() {
        return !TextUtils.isEmpty(this.errorText);
    }

    public StaticLayout getErrorLayout(int i) {
        if (TextUtils.isEmpty(this.errorText)) {
            return null;
        }
        return new StaticLayout(this.errorText, this.errorPaint, i, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
    }

    public float getLineY() {
        return this.lineY;
    }

    public void setSupportRtlHint(boolean z) {
        this.supportRtlHint = z;
    }

    @Override // android.widget.TextView, android.view.View
    public void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
        if (i != i3) {
            getParent().requestDisallowInterceptTouchEvent(true);
        }
    }

    @Override // org.telegram.ui.Components.EditTextEffects, com.exteragram.messenger.components.ReceiveContentEditText, android.widget.EditText, android.widget.TextView
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        super.setText(charSequence, bufferType);
        checkHeaderVisibility(this.nextSetTextAnimated);
        this.nextSetTextAnimated = false;
    }

    @Override // com.exteragram.messenger.components.ReceiveContentEditText, android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int measuredHeight = getMeasuredHeight() + (getMeasuredWidth() << 16);
        AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = this.hintAnimatedDrawable;
        if (animatedTextDrawable != null) {
            animatedTextDrawable.setBounds(getPaddingLeft(), getPaddingTop(), getMeasuredWidth() - getPaddingRight(), getMeasuredHeight() - getPaddingBottom());
        }
        AnimatedTextView.AnimatedTextDrawable animatedTextDrawable2 = this.hintAnimatedDrawable2;
        if (animatedTextDrawable2 != null) {
            animatedTextDrawable2.setBounds(getPaddingLeft(), getPaddingTop(), getMeasuredWidth() - getPaddingRight(), getMeasuredHeight() - getPaddingBottom());
        }
        StaticLayout staticLayout = this.hintLayout;
        if (staticLayout != null && this.hintAnimatedDrawable == null) {
            if (this.lastSize != measuredHeight) {
                setHintText(this.hint, false, staticLayout.getPaint());
            }
            if (this.hintLayoutYFix) {
                this.lineY = (((getExtendedPaddingTop() + getPaddingTop()) + ((((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom()) - this.hintLayout.getHeight()) / 2.0f)) + this.hintLayout.getHeight()) - AndroidUtilities.dp(1.0f);
            } else {
                this.lineY = ((getMeasuredHeight() - this.hintLayout.getHeight()) / 2.0f) + this.hintLayout.getHeight() + AndroidUtilities.dp(6.0f);
            }
        } else {
            this.lineY = getMeasuredHeight() - AndroidUtilities.dp(2.0f);
        }
        this.lastSize = measuredHeight;
    }

    public void setHintText(CharSequence charSequence) {
        setHintText(charSequence, false, getPaint());
    }

    public void setHintText(CharSequence charSequence, boolean z) {
        setHintText(charSequence, z, getPaint());
    }

    public void setHintText(CharSequence charSequence, boolean z, TextPaint textPaint) {
        AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = this.hintAnimatedDrawable;
        if (animatedTextDrawable != null) {
            animatedTextDrawable.setText(charSequence, !LocaleController.isRTL);
            return;
        }
        if (charSequence == null) {
            charSequence = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        if (getMeasuredWidth() == 0) {
            z = false;
        }
        SubstringLayoutAnimator substringLayoutAnimator = this.hintAnimator;
        if (z) {
            if (substringLayoutAnimator == null) {
                this.hintAnimator = new SubstringLayoutAnimator(this);
            }
            this.hintAnimator.create(this.hintLayout, this.hint, charSequence, textPaint);
        } else if (substringLayoutAnimator != null) {
            substringLayoutAnimator.cancel();
        }
        this.hint = charSequence;
        if (getMeasuredWidth() != 0) {
            charSequence = TextUtils.ellipsize(charSequence, textPaint, getMeasuredWidth(), TextUtils.TruncateAt.END);
            StaticLayout staticLayout = this.hintLayout;
            if (staticLayout != null && TextUtils.equals(staticLayout.getText(), charSequence)) {
                return;
            }
        }
        this.hintLayout = new StaticLayout(charSequence, textPaint, AndroidUtilities.dp(1000.0f), Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
        invalidate();
    }

    public Layout getHintLayoutEx() {
        return this.hintLayout;
    }

    @Override // com.exteragram.messenger.components.ReceiveContentEditText, android.widget.TextView, android.view.View
    public void onFocusChanged(boolean z, int i, Rect rect) {
        try {
            super.onFocusChanged(z, i, rect);
        } catch (Exception e) {
            FileLog.m992e(e);
        }
        checkHeaderVisibility(true);
    }

    private void checkHeaderVisibility(boolean z) {
        boolean z2 = this.transformHintToHeader && (getText().length() > 0 || (this.transformHintToHeaderOnFocus && isFocused()));
        if (this.currentDrawHintAsHeader != z2) {
            AnimatorSet animatorSet = this.headerTransformAnimation;
            if (animatorSet != null) {
                animatorSet.cancel();
                this.headerTransformAnimation = null;
            }
            this.currentDrawHintAsHeader = z2;
            if (z) {
                AnimatorSet animatorSet2 = new AnimatorSet();
                this.headerTransformAnimation = animatorSet2;
                animatorSet2.playTogether(ObjectAnimator.ofFloat(this, "headerAnimationProgress", z2 ? 1.0f : 0.0f));
                this.headerTransformAnimation.setDuration(200L);
                this.headerTransformAnimation.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
                this.headerTransformAnimation.start();
            } else {
                this.headerAnimationProgress = z2 ? 1.0f : 0.0f;
            }
            invalidate();
        }
    }

    @Override // org.telegram.ui.Components.EditTextEffects, com.exteragram.messenger.components.ReceiveContentEditText, android.widget.TextView
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        stopFling();
        if (!this.transformHintToHeader || this.transformHintToHeaderOnFocus) {
            return;
        }
        checkHeaderVisibility(true);
    }

    @Keep
    public void setHeaderAnimationProgress(float f) {
        this.headerAnimationProgress = f;
        invalidate();
    }

    @Keep
    public float getHeaderAnimationProgress() {
        return this.headerAnimationProgress;
    }

    @Override // android.widget.TextView
    public void setLineSpacing(float f, float f2) {
        super.setLineSpacing(f, f2);
        this.lineSpacingExtra = f;
    }

    @Override // android.widget.TextView
    public int getExtendedPaddingTop() {
        int i = this.ignoreTopCount;
        if (i != 0) {
            this.ignoreTopCount = i - 1;
            return 0;
        }
        return super.getExtendedPaddingTop();
    }

    @Override // android.widget.TextView
    public int getExtendedPaddingBottom() {
        int i = this.ignoreBottomCount;
        if (i != 0) {
            this.ignoreBottomCount = i - 1;
            int i2 = this.scrollY;
            if (i2 != Integer.MAX_VALUE) {
                return -i2;
            }
            return 0;
        }
        return super.getExtendedPaddingBottom();
    }

    @Override // org.telegram.ui.Components.EditTextEffects
    public int getDrawScrollY() {
        int i;
        return (!this.drawInMaim || mScrollYField == null || (i = this.scrollY) == Integer.MAX_VALUE) ? super.getDrawScrollY() : i;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x008c  */
    @Override // com.exteragram.messenger.components.ReceiveContentEditText, android.widget.TextView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouchEvent(MotionEvent motionEvent) {
        float f;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.lastTouchX = (int) motionEvent.getX();
            stopFling();
            this.flingBlocked = false;
            this.flingDownScrollY = getScrollY();
            this.flingDownSelectionStart = getSelectionStart();
            this.flingDownSelectionEnd = getSelectionEnd();
            VelocityTracker velocityTracker = this.flingVelocityTracker;
            if (velocityTracker == null) {
                this.flingVelocityTracker = VelocityTracker.obtain();
            } else {
                velocityTracker.clear();
            }
        } else if (actionMasked == 5) {
            this.flingBlocked = true;
        }
        VelocityTracker velocityTracker2 = this.flingVelocityTracker;
        if (velocityTracker2 != null) {
            velocityTracker2.addMovement(motionEvent);
        }
        if (actionMasked != 1 || this.flingVelocityTracker == null || this.flingBlocked || getScrollY() == this.flingDownScrollY || getSelectionStart() != this.flingDownSelectionStart || getSelectionEnd() != this.flingDownSelectionEnd) {
            f = 0.0f;
        } else {
            ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
            this.flingVelocityTracker.computeCurrentVelocity(1000, viewConfiguration.getScaledMaximumFlingVelocity());
            f = -this.flingVelocityTracker.getYVelocity();
            if (Math.abs(f) < viewConfiguration.getScaledMinimumFlingVelocity()) {
            }
        }
        boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
        if (actionMasked == 1 || actionMasked == 3) {
            VelocityTracker velocityTracker3 = this.flingVelocityTracker;
            if (velocityTracker3 != null) {
                velocityTracker3.recycle();
                this.flingVelocityTracker = null;
            }
            if (f != 0.0f) {
                if (this.flingScroller == null) {
                    this.flingScroller = new OverScroller(getContext());
                }
                this.flingScroller.fling(0, getScrollY(), 0, (int) f, 0, 0, 0, getMaxFlingScrollY());
                this.flinging = true;
                postInvalidateOnAnimation();
            }
        }
        return zOnTouchEvent;
    }

    @Override // android.widget.TextView, android.view.View
    public boolean performLongClick() {
        this.flingBlocked = true;
        return super.performLongClick();
    }

    @Override // android.widget.TextView, android.view.View
    public void computeScroll() {
        super.computeScroll();
        if (this.flinging) {
            if (this.flingScroller.computeScrollOffset()) {
                int iMax = Math.max(0, Math.min(this.flingScroller.getCurrY(), getMaxFlingScrollY()));
                if (iMax != getScrollY()) {
                    scrollTo(getScrollX(), iMax);
                }
                postInvalidateOnAnimation();
                return;
            }
            this.flinging = false;
            moveCursorToVisibleOffset();
        }
    }

    private int getMaxFlingScrollY() {
        Layout layout = getLayout();
        if (layout == null) {
            return 0;
        }
        return Math.max(0, layout.getHeight() - ((getHeight() - super.getExtendedPaddingTop()) - super.getExtendedPaddingBottom()));
    }

    private void stopFling() {
        if (this.flinging) {
            this.flinging = false;
            this.flingScroller.abortAnimation();
        }
    }

    @Override // org.telegram.ui.Components.EditTextEffects, com.exteragram.messenger.components.ReceiveContentEditText, android.widget.TextView
    public void onSelectionChanged(int i, int i2) {
        super.onSelectionChanged(i, i2);
        stopFling();
    }

    public void invalidateForce() {
        invalidate();
        if (isHardwareAccelerated()) {
            try {
                if (mEditorInvalidateDisplayList != null) {
                    if (this.editor == null) {
                        this.editor = mEditor.get(this);
                    }
                    Object obj = this.editor;
                    if (obj != null) {
                        mEditorInvalidateDisplayList.invoke(obj, null);
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    private void drawHint(final Canvas canvas) {
        if (length() == 0 || this.transformHintToHeader) {
            boolean z = this.hintVisible;
            if ((z && this.hintAlpha != 1.0f) || (!z && this.hintAlpha != 0.0f)) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                long j = jCurrentTimeMillis - this.hintLastUpdateTime;
                if (j < 0 || j > 17) {
                    j = 17;
                }
                this.hintLastUpdateTime = jCurrentTimeMillis;
                boolean z2 = this.hintVisible;
                float f = this.hintAlpha;
                if (z2) {
                    float f2 = f + (j / 150.0f);
                    this.hintAlpha = f2;
                    if (f2 > 1.0f) {
                        this.hintAlpha = 1.0f;
                    }
                } else {
                    float f3 = f - (j / 150.0f);
                    this.hintAlpha = f3;
                    if (f3 < 0.0f) {
                        this.hintAlpha = 0.0f;
                    }
                }
                invalidate();
            }
            AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = this.hintAnimatedDrawable;
            if (animatedTextDrawable != null && !TextUtils.isEmpty(animatedTextDrawable.getText()) && (this.hintVisible || this.hintAlpha != 0.0f)) {
                AnimatedTextView.AnimatedTextDrawable animatedTextDrawable2 = this.hintAnimatedDrawable2;
                AnimatedTextView.AnimatedTextDrawable animatedTextDrawable3 = this.hintAnimatedDrawable;
                if (animatedTextDrawable2 == null) {
                    animatedTextDrawable3.setRightPadding(0.0f);
                } else if (animatedTextDrawable3.getCurrentWidth() + this.hintAnimatedDrawable2.getCurrentWidth() < getMeasuredWidth()) {
                    canvas.save();
                    canvas.translate((this.hintAnimatedDrawable2.getCurrentWidth() - getMeasuredWidth()) + this.hintAnimatedDrawable.getCurrentWidth(), 0.0f);
                    this.hintAnimatedDrawable2.setAlpha((int) (Color.alpha(this.hintColor) * this.hintAlpha));
                    this.hintAnimatedDrawable2.draw(canvas);
                    canvas.restore();
                    this.hintAnimatedDrawable.setRightPadding(0.0f);
                } else {
                    canvas.save();
                    canvas.translate(this.rightHintOffset, 0.0f);
                    this.hintAnimatedDrawable2.setAlpha((int) (Color.alpha(this.hintColor) * this.hintAlpha));
                    this.hintAnimatedDrawable2.draw(canvas);
                    canvas.restore();
                    this.hintAnimatedDrawable.setRightPadding((this.hintAnimatedDrawable2.getCurrentWidth() + AndroidUtilities.dp(2.0f)) - this.rightHintOffset);
                }
                this.hintAnimatedDrawable.setAlpha((int) (Color.alpha(this.hintColor) * this.hintAlpha));
                this.hintAnimatedDrawable.draw(canvas);
                return;
            }
            if (this.hintLayout != null) {
                if (this.hintVisible || this.hintAlpha != 0.0f) {
                    int color = getPaint().getColor();
                    canvas.save();
                    float lineLeft = this.hintLayout.getLineLeft(0);
                    float lineWidth = this.hintLayout.getLineWidth(0);
                    int i = lineLeft != 0.0f ? (int) (0.0f - lineLeft) : 0;
                    if (this.supportRtlHint && LocaleController.isRTL) {
                        float scrollX = i + getScrollX() + (getMeasuredWidth() - lineWidth);
                        this.hintLayoutX = scrollX;
                        float height = (this.lineY - this.hintLayout.getHeight()) - AndroidUtilities.dp(7.0f);
                        this.hintLayoutY = height;
                        canvas.translate(scrollX, height);
                    } else {
                        float scrollX2 = i + getScrollX() + this.hintLayoutOffset;
                        this.hintLayoutX = scrollX2;
                        float height2 = (this.lineY - this.hintLayout.getHeight()) - AndroidUtilities.dp2(7.0f);
                        this.hintLayoutY = height2;
                        canvas.translate(scrollX2, height2);
                    }
                    if (this.transformHintToHeader) {
                        float f4 = 1.0f - (this.headerAnimationProgress * 0.3f);
                        if (this.supportRtlHint && LocaleController.isRTL) {
                            float f5 = lineWidth + lineLeft;
                            canvas.translate(f5 - (f5 * f4), 0.0f);
                        } else if (lineLeft != 0.0f) {
                            canvas.translate(lineLeft * (1.0f - f4), 0.0f);
                        }
                        canvas.scale(f4, f4);
                        canvas.translate(0.0f, (-AndroidUtilities.dp(22.0f)) * this.headerAnimationProgress);
                        getPaint().setColor(ColorUtils.blendARGB(this.hintColor, this.headerHintColor, this.headerAnimationProgress));
                    } else {
                        getPaint().setColor(this.hintColor);
                        getPaint().setAlpha((int) (this.hintAlpha * 255.0f * (Color.alpha(this.hintColor) / 255.0f)));
                    }
                    SubstringLayoutAnimator substringLayoutAnimator = this.hintAnimator;
                    if (substringLayoutAnimator != null && substringLayoutAnimator.animateTextChange) {
                        canvas.save();
                        canvas.clipRect(0, 0, getMeasuredWidth(), getMeasuredHeight());
                        this.hintAnimator.draw(canvas, getPaint());
                        canvas.restore();
                    } else {
                        Utilities.Callback2<Canvas, Runnable> callback2 = this.drawHint;
                        if (callback2 != null) {
                            callback2.run(canvas, new Runnable() { // from class: org.telegram.ui.Components.EditTextBoldCursor$$ExternalSyntheticLambda2
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.lambda$drawHint$1(canvas);
                                }
                            });
                        } else {
                            this.hintLayout.draw(canvas);
                        }
                    }
                    getPaint().setTypeface(AndroidUtilities.regular());
                    getPaint().setColor(color);
                    canvas.restore();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$drawHint$1(Canvas canvas) {
        this.hintLayout.draw(canvas);
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x01f1  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x03e2  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0134  */
    @Override // org.telegram.ui.Components.EditTextEffects, android.widget.TextView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onDraw(Canvas canvas) {
        Canvas canvas2;
        boolean z;
        int totalPaddingTop;
        Rect rect;
        int i;
        float f;
        Object obj;
        Canvas canvas3;
        boolean z2;
        int totalPaddingTop2;
        Rect rect2;
        int i2;
        float f2;
        int i3;
        drawHint(canvas);
        if (this.ellipsizeByGradient) {
            canvas2 = canvas;
            canvas2.saveLayerAlpha((getScrollX() + getPaddingLeft()) - this.ellipsizeWidth, 0.0f, ((getScrollX() + getWidth()) - getPaddingRight()) + this.ellipsizeWidth, getHeight(), 255, 31);
        } else {
            canvas2 = canvas;
        }
        int extendedPaddingTop = getExtendedPaddingTop();
        InlineMathController inlineMath = getInlineMath();
        int totalPaddingLeft = inlineMath == null ? 0 : getTotalPaddingLeft();
        int totalPaddingTop3 = inlineMath == null ? 0 : getTotalPaddingTop();
        float cursorShiftX = inlineMath == null ? 0.0f : inlineMath.getCursorShiftX();
        float cursorShiftY = inlineMath == null ? 0.0f : inlineMath.getCursorShiftY();
        this.scrollY = Integer.MAX_VALUE;
        try {
            Field field = mScrollYField;
            if (field != null) {
                this.scrollY = field.getInt(this);
                mScrollYField.set(this, 0);
            } else {
                this.scrollY = getScrollX();
            }
        } catch (Exception e) {
            if (BuildVars.DEBUG_PRIVATE_VERSION) {
                HttpUrl$$ExternalSyntheticBUOutline0.m899m(e);
                return;
            }
        }
        this.ignoreTopCount = 1;
        this.ignoreBottomCount = 1;
        canvas2.save();
        if (inlineMath != null) {
            inlineMath.clipReplacedParagraph(canvas2, totalPaddingTop3);
        }
        canvas2.translate(0.0f, extendedPaddingTop);
        try {
            this.drawInMaim = true;
            super.onDraw(canvas);
            this.drawInMaim = false;
        } catch (Exception e2) {
            if (BuildVars.DEBUG_PRIVATE_VERSION) {
                HttpUrl$$ExternalSyntheticBUOutline0.m899m(e2);
                return;
            }
        }
        Field field2 = mScrollYField;
        if (field2 != null && (i3 = this.scrollY) != Integer.MAX_VALUE) {
            try {
                field2.set(this, Integer.valueOf(i3));
            } catch (Exception e3) {
                if (BuildVars.DEBUG_PRIVATE_VERSION) {
                    HttpUrl$$ExternalSyntheticBUOutline0.m899m(e3);
                    return;
                }
            }
        }
        canvas2.restore();
        if (this.cursorDrawable == null) {
            try {
                Field field3 = mShowCursorField;
                if (field3 == null || (obj = this.editor) == null) {
                    z = this.cursorDrawn;
                    this.cursorDrawn = false;
                } else {
                    z = (SystemClock.uptimeMillis() - field3.getLong(obj)) % 1000 < 500 && isFocused();
                }
                if (this.allowDrawCursor && z) {
                    canvas2.save();
                    if (getVerticalOffsetMethod != null) {
                        totalPaddingTop = (getGravity() & 112) != 48 ? ((Integer) getVerticalOffsetMethod.invoke(this, Boolean.TRUE)).intValue() : 0;
                        canvas2.translate(getPaddingLeft() + cursorShiftX, getExtendedPaddingTop() + totalPaddingTop + cursorShiftY);
                        Layout layout = getLayout();
                        int lineForOffset = layout.getLineForOffset(getSelectionStart());
                        int lineCount = layout.getLineCount();
                        updateCursorPosition();
                        Rect bounds = this.gradientDrawable.getBounds();
                        Rect rect3 = this.rect;
                        rect3.left = bounds.left;
                        rect3.right = bounds.left + AndroidUtilities.dp(this.cursorWidth);
                        rect = this.rect;
                        i = bounds.bottom;
                        rect.bottom = i;
                        rect.top = bounds.top;
                        f = this.lineSpacingExtra;
                        if (f != 0.0f && lineForOffset < lineCount - 1) {
                            rect.bottom = (int) (i - f);
                        }
                        int iCenterY = rect.centerY();
                        int i4 = this.cursorSize;
                        rect.top = iCenterY - (i4 / 2);
                        Rect rect4 = this.rect;
                        rect4.bottom = rect4.top + i4;
                        this.gradientDrawable.setBounds(rect4);
                        this.gradientDrawable.draw(canvas2);
                        canvas2.restore();
                    } else {
                        if ((getGravity() & 112) != 48) {
                            totalPaddingTop = getTotalPaddingTop() - getExtendedPaddingTop();
                        }
                        canvas2.translate(getPaddingLeft() + cursorShiftX, getExtendedPaddingTop() + totalPaddingTop + cursorShiftY);
                        Layout layout2 = getLayout();
                        int lineForOffset2 = layout2.getLineForOffset(getSelectionStart());
                        int lineCount2 = layout2.getLineCount();
                        updateCursorPosition();
                        Rect bounds2 = this.gradientDrawable.getBounds();
                        Rect rect32 = this.rect;
                        rect32.left = bounds2.left;
                        rect32.right = bounds2.left + AndroidUtilities.dp(this.cursorWidth);
                        rect = this.rect;
                        i = bounds2.bottom;
                        rect.bottom = i;
                        rect.top = bounds2.top;
                        f = this.lineSpacingExtra;
                        if (f != 0.0f) {
                            rect.bottom = (int) (i - f);
                        }
                        int iCenterY2 = rect.centerY();
                        int i42 = this.cursorSize;
                        rect.top = iCenterY2 - (i42 / 2);
                        Rect rect42 = this.rect;
                        rect42.bottom = rect42.top + i42;
                        this.gradientDrawable.setBounds(rect42);
                        this.gradientDrawable.draw(canvas2);
                        canvas2.restore();
                    }
                }
            } catch (Throwable th) {
                if (BuildVars.DEBUG_PRIVATE_VERSION) {
                    HttpUrl$$ExternalSyntheticBUOutline0.m899m(th);
                    return;
                }
            }
        } else if (this.cursorDrawn && this.allowDrawCursor) {
            try {
                canvas2.save();
                if (getVerticalOffsetMethod != null) {
                    totalPaddingTop2 = (getGravity() & 112) != 48 ? ((Integer) getVerticalOffsetMethod.invoke(this, Boolean.TRUE)).intValue() : 0;
                    canvas2.translate(getPaddingLeft() + cursorShiftX, getExtendedPaddingTop() + totalPaddingTop2 + cursorShiftY);
                    Layout layout3 = getLayout();
                    int lineForOffset3 = layout3.getLineForOffset(getSelectionStart());
                    int lineCount3 = layout3.getLineCount();
                    updateCursorPosition();
                    Rect bounds3 = this.gradientDrawable.getBounds();
                    Rect rect5 = this.rect;
                    rect5.left = bounds3.left;
                    rect5.right = bounds3.left + AndroidUtilities.dp(this.cursorWidth);
                    rect2 = this.rect;
                    i2 = bounds3.bottom;
                    rect2.bottom = i2;
                    rect2.top = bounds3.top;
                    f2 = this.lineSpacingExtra;
                    if (f2 != 0.0f && lineForOffset3 < lineCount3 - 1) {
                        rect2.bottom = (int) (i2 - f2);
                    }
                    int iCenterY3 = rect2.centerY();
                    int i5 = this.cursorSize;
                    rect2.top = iCenterY3 - (i5 / 2);
                    Rect rect6 = this.rect;
                    rect6.bottom = rect6.top + i5;
                    this.gradientDrawable.setBounds(rect6);
                    this.gradientDrawable.draw(canvas2);
                    canvas2.restore();
                    this.cursorDrawn = false;
                } else {
                    if ((getGravity() & 112) != 48) {
                        totalPaddingTop2 = getTotalPaddingTop() - getExtendedPaddingTop();
                    }
                    canvas2.translate(getPaddingLeft() + cursorShiftX, getExtendedPaddingTop() + totalPaddingTop2 + cursorShiftY);
                    Layout layout32 = getLayout();
                    int lineForOffset32 = layout32.getLineForOffset(getSelectionStart());
                    int lineCount32 = layout32.getLineCount();
                    updateCursorPosition();
                    Rect bounds32 = this.gradientDrawable.getBounds();
                    Rect rect52 = this.rect;
                    rect52.left = bounds32.left;
                    rect52.right = bounds32.left + AndroidUtilities.dp(this.cursorWidth);
                    rect2 = this.rect;
                    i2 = bounds32.bottom;
                    rect2.bottom = i2;
                    rect2.top = bounds32.top;
                    f2 = this.lineSpacingExtra;
                    if (f2 != 0.0f) {
                        rect2.bottom = (int) (i2 - f2);
                    }
                    int iCenterY32 = rect2.centerY();
                    int i52 = this.cursorSize;
                    rect2.top = iCenterY32 - (i52 / 2);
                    Rect rect62 = this.rect;
                    rect62.bottom = rect62.top + i52;
                    this.gradientDrawable.setBounds(rect62);
                    this.gradientDrawable.draw(canvas2);
                    canvas2.restore();
                    this.cursorDrawn = false;
                }
            } catch (Throwable th2) {
                if (BuildVars.DEBUG_PRIVATE_VERSION) {
                    HttpUrl$$ExternalSyntheticBUOutline0.m899m(th2);
                    return;
                }
            }
        }
        if (inlineMath != null) {
            inlineMath.draw(canvas2, totalPaddingLeft, totalPaddingTop3, getScrollY() - this.offsetY, (getScrollY() + getMeasuredHeight()) - this.offsetY);
        }
        if (!this.lineVisible || this.lineColor == 0) {
            canvas3 = canvas;
        } else {
            int iDp = AndroidUtilities.dp(1.0f);
            boolean z3 = this.lineActive;
            if (!TextUtils.isEmpty(this.errorText)) {
                this.linePaint.setColor(this.errorLineColor);
                iDp = AndroidUtilities.dp(2.0f);
                this.lineActive = false;
            } else if (isFocused()) {
                this.lineActive = true;
            } else {
                this.linePaint.setColor(this.lineColor);
                this.lineActive = false;
            }
            if (this.lineActive != z3) {
                this.lineLastUpdateTime = SystemClock.elapsedRealtime();
                this.lastLineActiveness = this.lineActiveness;
            }
            float fElapsedRealtime = (SystemClock.elapsedRealtime() - this.lineLastUpdateTime) / 150.0f;
            if (fElapsedRealtime < 1.0f || (((z2 = this.lineActive) && this.lineActiveness != 1.0f) || (!z2 && this.lineActiveness != 0.0f))) {
                this.lineActiveness = AndroidUtilities.lerp(this.lastLineActiveness, this.lineActive ? 1.0f : 0.0f, Math.max(0.0f, Math.min(1.0f, fElapsedRealtime)));
                if (fElapsedRealtime < 1.0f) {
                    invalidate();
                }
            }
            int measuredHeight = this.lineYFix ? getMeasuredHeight() - AndroidUtilities.dp(2.0f) : Math.min(Math.max(0, ((((getLayout() == null ? 0 : getLayout().getHeight()) - getMeasuredHeight()) + getPaddingBottom()) + getPaddingTop()) - getScrollY()), AndroidUtilities.dp(2.0f)) + ((int) this.lineY) + getScrollY();
            int measuredWidth = this.lastTouchX;
            if (measuredWidth < 0) {
                measuredWidth = getMeasuredWidth() / 2;
            }
            int i6 = measuredWidth;
            int iMax = Math.max(i6, getMeasuredWidth() - i6) * 2;
            if (this.lineActiveness < 1.0f) {
                canvas.drawRect(getScrollX(), measuredHeight - iDp, getScrollX() + getMeasuredWidth(), measuredHeight, this.linePaint);
            }
            float f3 = this.lineActiveness;
            if (f3 > 0.0f) {
                float interpolation = CubicBezierInterpolator.EASE_BOTH.getInterpolation(f3);
                boolean z4 = this.lineActive;
                if (z4) {
                    this.activeLineWidth = iMax * interpolation;
                }
                if (z4) {
                    interpolation = 1.0f;
                }
                float f4 = i6;
                canvas3 = canvas;
                canvas3.drawRect(getScrollX() + Math.max(0.0f, f4 - (this.activeLineWidth / 2.0f)), measuredHeight - ((int) (interpolation * AndroidUtilities.dp(2.0f))), getScrollX() + Math.min(f4 + (this.activeLineWidth / 2.0f), getMeasuredWidth()), measuredHeight, this.activeLinePaint);
            }
        }
        if (this.ellipsizeByGradient) {
            canvas3.save();
            canvas3.translate(getScrollX(), 0.0f);
            this.ellipsizePaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
            this.ellipsizeMatrix.reset();
            this.ellipsizeGradient.setLocalMatrix(this.ellipsizeMatrix);
            canvas3.drawRect(getPaddingLeft() - this.ellipsizeWidth, 0.0f, getPaddingLeft(), getHeight(), this.ellipsizePaint);
            this.ellipsizeMatrix.reset();
            this.ellipsizeMatrix.postScale(-1.0f, 1.0f, this.ellipsizeWidth / 2.0f, 0.0f);
            this.ellipsizeMatrix.postTranslate(getWidth() - getPaddingRight(), 0.0f);
            this.ellipsizeGradient.setLocalMatrix(this.ellipsizeMatrix);
            canvas.drawRect(getWidth() - getPaddingRight(), 0.0f, (getWidth() - getPaddingRight()) + this.ellipsizeWidth, getHeight(), this.ellipsizePaint);
            canvas.restore();
            canvas.restore();
        }
    }

    public void setWindowView(View view) {
        this.windowView = view;
    }

    private boolean updateCursorPosition() {
        Layout layout = getLayout();
        int length = this.forceCursorEnd ? layout.getText().length() : getSelectionStart();
        int lineForOffset = layout.getLineForOffset(length);
        updateCursorPosition(layout.getLineTop(lineForOffset), layout.getLineTop(lineForOffset + 1), layout.getPrimaryHorizontal(length));
        this.lastText = layout.getText();
        this.lastOffset = length;
        return true;
    }

    private int clampHorizontalPosition(Drawable drawable, float f, boolean z) {
        int intrinsicWidth;
        float fMax = Math.max(0.5f, f - 0.5f);
        if (this.mTempRect == null) {
            this.mTempRect = new Rect();
        }
        Rect rect = this.mTempRect;
        if (drawable != null) {
            drawable.getPadding(rect);
            intrinsicWidth = drawable.getIntrinsicWidth();
        } else {
            rect.setEmpty();
            intrinsicWidth = 0;
        }
        int scrollX = getScrollX();
        float f2 = fMax - scrollX;
        int width = (getWidth() - getCompoundPaddingLeft()) - getCompoundPaddingRight();
        if (z && f2 >= width - 1.0f) {
            return (width + scrollX) - (intrinsicWidth - this.mTempRect.right);
        }
        if (z && (Math.abs(f2) <= 1.0f || (TextUtils.isEmpty(getText()) && 1048576 - scrollX <= width + 1.0f && fMax <= 1.0f))) {
            return scrollX - this.mTempRect.left;
        }
        return ((int) fMax) - this.mTempRect.left;
    }

    private void updateCursorPosition(int i, int i2, float f) {
        InlineMathController inlineMath = getInlineMath();
        int iClampHorizontalPosition = clampHorizontalPosition(this.gradientDrawable, f, inlineMath == null || !inlineMath.hasCursorShift());
        int iDp = AndroidUtilities.dp(this.cursorWidth);
        GradientDrawable gradientDrawable = this.gradientDrawable;
        Rect rect = this.mTempRect;
        gradientDrawable.setBounds(iClampHorizontalPosition, i - rect.top, iDp + iClampHorizontalPosition, i2 + rect.bottom);
    }

    @Override // android.widget.TextView
    public float getLineSpacingExtra() {
        return super.getLineSpacingExtra();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cleanupFloatingActionModeViews() {
        FloatingToolbar floatingToolbar = this.floatingToolbar;
        if (floatingToolbar != null) {
            floatingToolbar.dismiss();
            this.floatingToolbar = null;
        }
        if (this.floatingToolbarPreDrawListener != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.floatingToolbarPreDrawListener);
            this.floatingToolbarPreDrawListener = null;
        }
    }

    @Override // org.telegram.ui.Components.EditTextEffects, android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        try {
            super.onAttachedToWindow();
        } catch (Exception e) {
            FileLog.m992e(e);
        }
        this.attachedToWindow = getRootView();
        if (Build.VERSION.SDK_INT < 29) {
            Choreographer60FpsContent.getInstance().addFrameCallback(this.invalidateCallback, 2);
        }
    }

    @Override // org.telegram.ui.Components.EditTextEffects, com.exteragram.messenger.components.ReceiveContentEditText, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.attachedToWindow = null;
        stopFling();
        if (Build.VERSION.SDK_INT < 29) {
            Choreographer60FpsContent.getInstance().removeFrameCallback(this.invalidateCallback);
        }
    }

    @Override // android.view.View
    public boolean postDelayed(Runnable runnable, long j) {
        if (Build.VERSION.SDK_INT >= 29 && runnable != null && j == 500 && BLINK_CLASS.equals(runnable.getClass().getName()) && Looper.myLooper() == Looper.getMainLooper()) {
            Choreographer60FpsContent.getInstance().addFrameCallbackOnce(runnable, 2);
            return true;
        }
        return super.postDelayed(runnable, j);
    }

    @Override // android.view.View
    public boolean removeCallbacks(Runnable runnable) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            Choreographer60FpsContent.getInstance().removeFrameCallbackOnce(runnable);
        }
        return super.removeCallbacks(runnable);
    }

    public void setBlurredBackgroundDrawableViewFactory(BlurredBackgroundDrawableViewFactory blurredBackgroundDrawableViewFactory) {
        this.blurredBackgroundDrawableViewFactory = blurredBackgroundDrawableViewFactory;
    }

    private void addMarkdownToggle(Menu menu) {
        if (this.showDisableMarkdown) {
            menu.add(C2665R.id.menu_groupbolditalic, C2665R.id.menu_markdown, 20, LocaleController.getString(ExteraConfig.getDisableMarkdown() ? C2665R.string.EnableMarkdown : C2665R.string.DisableMarkdown));
        }
    }

    @Override // android.view.View
    public ActionMode startActionMode(ActionMode.Callback callback) {
        if (this.windowView != null || this.attachedToWindow != null) {
            FloatingActionMode floatingActionMode = this.floatingActionMode;
            if (floatingActionMode != null) {
                floatingActionMode.finish();
            }
            cleanupFloatingActionModeViews();
            Context context = getContext();
            View view = this.windowView;
            if (view == null) {
                view = this.attachedToWindow;
            }
            FloatingToolbar floatingToolbar = new FloatingToolbar(context, view, getActionModeStyle(), getResourcesProvider(), this.blurredBackgroundDrawableViewFactory);
            this.floatingToolbar = floatingToolbar;
            floatingToolbar.setOnPremiumLockClick(this.onPremiumMenuLockClickListener);
            this.floatingToolbar.setQuoteShowVisible(new Utilities.Callback0Return() { // from class: org.telegram.ui.Components.EditTextBoldCursor$$ExternalSyntheticLambda3
                @Override // org.telegram.messenger.Utilities.Callback0Return
                public final Object run() {
                    return Boolean.valueOf(this.f$0.shouldShowQuoteButton());
                }
            });
            this.floatingActionMode = new FloatingActionMode(getContext(), new ActionModeCallback2Wrapper(callback), this, this.floatingToolbar);
            this.floatingToolbarPreDrawListener = new ViewTreeObserver.OnPreDrawListener() { // from class: org.telegram.ui.Components.EditTextBoldCursor$$ExternalSyntheticLambda4
                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public final boolean onPreDraw() {
                    return this.f$0.lambda$startActionMode$2();
                }
            };
            FloatingActionMode floatingActionMode2 = this.floatingActionMode;
            callback.onCreateActionMode(floatingActionMode2, floatingActionMode2.getMenu());
            FloatingActionMode floatingActionMode3 = this.floatingActionMode;
            extendActionMode(floatingActionMode3, floatingActionMode3.getMenu());
            addMarkdownToggle(this.floatingActionMode.getMenu());
            this.floatingActionMode.invalidate();
            getViewTreeObserver().addOnPreDrawListener(this.floatingToolbarPreDrawListener);
            invalidate();
            return this.floatingActionMode;
        }
        return super.startActionMode(callback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$startActionMode$2() {
        FloatingActionMode floatingActionMode = this.floatingActionMode;
        if (floatingActionMode == null) {
            return true;
        }
        floatingActionMode.updateViewLocationInWindow();
        return true;
    }

    @Override // com.exteragram.messenger.components.ReceiveContentEditText, android.widget.EditText, android.widget.TextView
    public boolean onTextContextMenuItem(int i) {
        if (i == C2665R.id.menu_markdown) {
            ExteraConfig.setDisableMarkdown(!ExteraConfig.getDisableMarkdown());
            FloatingActionMode floatingActionMode = this.floatingActionMode;
            if (floatingActionMode != null) {
                floatingActionMode.finish();
            }
            return true;
        }
        return super.onTextContextMenuItem(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean shouldShowQuoteButton() {
        Editable text;
        if (!hasSelection() || getSelectionStart() < 0 || getSelectionEnd() < 0 || getSelectionStart() == getSelectionEnd() || (text = getText()) == null) {
            return false;
        }
        QuoteSpan.QuoteStyleSpan[] quoteStyleSpanArr = (QuoteSpan.QuoteStyleSpan[]) text.getSpans(getSelectionStart(), getSelectionEnd(), QuoteSpan.QuoteStyleSpan.class);
        return quoteStyleSpanArr == null || quoteStyleSpanArr.length == 0;
    }

    @Override // android.view.View
    public ActionMode startActionMode(ActionMode.Callback callback, int i) {
        if (this.windowView != null || this.attachedToWindow != null) {
            return startActionMode(callback);
        }
        return super.startActionMode(callback, i);
    }

    public void hideActionMode() {
        cleanupFloatingActionModeViews();
    }

    @Override // android.widget.EditText
    public void setSelection(int i, int i2) {
        try {
            super.setSelection(i, i2);
        } catch (Exception e) {
            FileLog.m992e(e);
        }
    }

    @Override // android.widget.EditText
    public void setSelection(int i) {
        try {
            super.setSelection(i);
        } catch (Exception e) {
            FileLog.m992e(e);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("android.widget.EditText");
        if (this.hintLayout != null) {
            if (getText().length() <= 0) {
                accessibilityNodeInfo.setText(this.hintLayout.getText());
            } else {
                AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setHintText(this.hintLayout.getText());
            }
        }
    }

    private Drawable updateHandleDrawable(Drawable drawable, boolean z) {
        if (drawable != null) {
            if (z) {
                drawable = drawable.mutate();
            }
            ColorFilter colorFilter = this.mHandlesColorFilter;
            if (colorFilter != null) {
                drawable.setColorFilter(colorFilter);
            }
        }
        return drawable;
    }

    public void setHandlesColor(int i) {
        if (Build.VERSION.SDK_INT < 29 || XiaomiUtilities.isMIUI() || this.mHandlesColor == i) {
            return;
        }
        this.mHandlesColor = i;
        this.mHandlesColorFilter = new PorterDuffColorFilter(i, PorterDuff.Mode.SRC_IN);
        updateHandleDrawable(this.mTextSelectHandleLeft, false);
        updateHandleDrawable(this.mTextSelectHandleRight, false);
        updateHandleDrawable(this.mTextSelectHandle, false);
    }

    @Override // android.widget.TextView
    public Drawable getTextSelectHandleLeft() {
        if (this.mTextSelectHandleLeft == null) {
            this.mTextSelectHandleLeft = updateHandleDrawable(super.getTextSelectHandleLeft(), true);
        }
        return this.mTextSelectHandleLeft;
    }

    @Override // android.widget.TextView
    public Drawable getTextSelectHandleRight() {
        if (this.mTextSelectHandleRight == null) {
            this.mTextSelectHandleRight = updateHandleDrawable(super.getTextSelectHandleRight(), true);
        }
        return this.mTextSelectHandleRight;
    }

    @Override // android.widget.TextView
    public Drawable getTextSelectHandle() {
        if (this.mTextSelectHandle == null) {
            this.mTextSelectHandle = updateHandleDrawable(super.getTextSelectHandle(), true);
        }
        return this.mTextSelectHandle;
    }

    @Override // android.widget.TextView
    public void setTextSelectHandleLeft(Drawable drawable) {
        Drawable drawableUpdateHandleDrawable = updateHandleDrawable(drawable, true);
        this.mTextSelectHandleLeft = drawableUpdateHandleDrawable;
        super.setTextSelectHandleLeft(drawableUpdateHandleDrawable);
    }

    @Override // android.widget.TextView
    public void setTextSelectHandleRight(Drawable drawable) {
        Drawable drawableUpdateHandleDrawable = updateHandleDrawable(drawable, true);
        this.mTextSelectHandleRight = drawableUpdateHandleDrawable;
        super.setTextSelectHandleRight(drawableUpdateHandleDrawable);
    }

    @Override // android.widget.TextView
    public void setTextSelectHandle(Drawable drawable) {
        Drawable drawableUpdateHandleDrawable = updateHandleDrawable(drawable, true);
        this.mTextSelectHandle = drawableUpdateHandleDrawable;
        super.setTextSelectHandle(drawableUpdateHandleDrawable);
    }

    public void setOnPremiumMenuLockClickListener(Runnable runnable) {
        this.onPremiumMenuLockClickListener = runnable;
    }

    public Runnable getOnPremiumMenuLockClickListener() {
        return this.onPremiumMenuLockClickListener;
    }

    public void setEllipsizeByGradient(boolean z) {
        this.ellipsizeByGradient = z;
        if (z) {
            this.ellipsizeWidth = AndroidUtilities.dp(12.0f);
            this.ellipsizePaint = new Paint(1);
            LinearGradient linearGradient = new LinearGradient(0.0f, 0.0f, this.ellipsizeWidth, 0.0f, new int[]{-1, 16777215}, new float[]{0.4f, 1.0f}, Shader.TileMode.CLAMP);
            this.ellipsizeGradient = linearGradient;
            this.ellipsizePaint.setShader(linearGradient);
            this.ellipsizeMatrix = new Matrix();
        }
    }
}
