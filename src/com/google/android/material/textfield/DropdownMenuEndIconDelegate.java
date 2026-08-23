package com.google.android.material.textfield;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.text.Editable;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.Spinner;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.C1349R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.motion.MotionUtils;

/* JADX INFO: loaded from: classes5.dex */
class DropdownMenuEndIconDelegate extends EndIconDelegate {
    private static final int DEFAULT_ANIMATION_FADE_IN_DURATION = 67;
    private static final int DEFAULT_ANIMATION_FADE_OUT_DURATION = 50;
    private AccessibilityManager accessibilityManager;
    private final int animationFadeInDuration;
    private final TimeInterpolator animationFadeInterpolator;
    private final int animationFadeOutDuration;
    private AutoCompleteTextView autoCompleteTextView;
    private long dropdownPopupActivatedAt;
    private boolean dropdownPopupDirty;
    private boolean editTextHasFocus;
    private ValueAnimator fadeInAnim;
    private ValueAnimator fadeOutAnim;
    private boolean isEndIconChecked;
    private final View.OnFocusChangeListener onEditTextFocusChangeListener;
    private final View.OnClickListener onIconClickListener;
    private final AccessibilityManager.TouchExplorationStateChangeListener touchExplorationStateChangeListener;

    @Override // com.google.android.material.textfield.EndIconDelegate
    boolean isBoxBackgroundModeSupported(int i) {
        return i != 0;
    }

    @Override // com.google.android.material.textfield.EndIconDelegate
    boolean isIconActivable() {
        return true;
    }

    @Override // com.google.android.material.textfield.EndIconDelegate
    boolean isIconCheckable() {
        return true;
    }

    @Override // com.google.android.material.textfield.EndIconDelegate
    boolean shouldTintIconOnError() {
        return true;
    }

    public static /* synthetic */ void $r8$lambda$nNUP5cjMWoIMzjM1rxTH_Aso8Io(DropdownMenuEndIconDelegate dropdownMenuEndIconDelegate, View view, boolean z) {
        dropdownMenuEndIconDelegate.editTextHasFocus = z;
        dropdownMenuEndIconDelegate.refreshIconState();
        if (z) {
            return;
        }
        dropdownMenuEndIconDelegate.setEndIconChecked(false);
        dropdownMenuEndIconDelegate.dropdownPopupDirty = false;
    }

    public static /* synthetic */ void $r8$lambda$B9_pgNgtuRR7l72K3jIEKbhb2Io(DropdownMenuEndIconDelegate dropdownMenuEndIconDelegate, boolean z) {
        AutoCompleteTextView autoCompleteTextView = dropdownMenuEndIconDelegate.autoCompleteTextView;
        if (autoCompleteTextView == null || EditTextUtils.isEditable(autoCompleteTextView)) {
            return;
        }
        dropdownMenuEndIconDelegate.endIconView.setImportantForAccessibility(z ? 2 : 1);
    }

    DropdownMenuEndIconDelegate(EndCompoundLayout endCompoundLayout) {
        super(endCompoundLayout);
        this.onIconClickListener = new View.OnClickListener() { // from class: com.google.android.material.textfield.DropdownMenuEndIconDelegate$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.showHideDropdown();
            }
        };
        this.onEditTextFocusChangeListener = new View.OnFocusChangeListener() { // from class: com.google.android.material.textfield.DropdownMenuEndIconDelegate$$ExternalSyntheticLambda4
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                DropdownMenuEndIconDelegate.$r8$lambda$nNUP5cjMWoIMzjM1rxTH_Aso8Io(this.f$0, view, z);
            }
        };
        this.touchExplorationStateChangeListener = new AccessibilityManager.TouchExplorationStateChangeListener() { // from class: com.google.android.material.textfield.DropdownMenuEndIconDelegate$$ExternalSyntheticLambda5
            @Override // android.view.accessibility.AccessibilityManager.TouchExplorationStateChangeListener
            public final void onTouchExplorationStateChanged(boolean z) {
                DropdownMenuEndIconDelegate.$r8$lambda$B9_pgNgtuRR7l72K3jIEKbhb2Io(this.f$0, z);
            }
        };
        this.dropdownPopupActivatedAt = Long.MAX_VALUE;
        this.animationFadeInDuration = MotionUtils.resolveThemeDuration(endCompoundLayout.getContext(), C1349R.attr.motionDurationShort3, 67);
        this.animationFadeOutDuration = MotionUtils.resolveThemeDuration(endCompoundLayout.getContext(), C1349R.attr.motionDurationShort3, 50);
        this.animationFadeInterpolator = MotionUtils.resolveThemeInterpolator(endCompoundLayout.getContext(), C1349R.attr.motionEasingLinearInterpolator, AnimationUtils.LINEAR_INTERPOLATOR);
    }

    @Override // com.google.android.material.textfield.EndIconDelegate
    void setUp() {
        initAnimators();
        this.accessibilityManager = (AccessibilityManager) this.context.getSystemService("accessibility");
    }

    @Override // com.google.android.material.textfield.EndIconDelegate
    @SuppressLint({"ClickableViewAccessibility"})
    void tearDown() {
        AutoCompleteTextView autoCompleteTextView = this.autoCompleteTextView;
        if (autoCompleteTextView != null) {
            autoCompleteTextView.setOnTouchListener(null);
            this.autoCompleteTextView.setOnDismissListener(null);
        }
    }

    @Override // com.google.android.material.textfield.EndIconDelegate
    public AccessibilityManager.TouchExplorationStateChangeListener getTouchExplorationStateChangeListener() {
        return this.touchExplorationStateChangeListener;
    }

    @Override // com.google.android.material.textfield.EndIconDelegate
    int getIconDrawableResId() {
        return C1349R.drawable.mtrl_dropdown_arrow;
    }

    @Override // com.google.android.material.textfield.EndIconDelegate
    int getIconContentDescriptionResId() {
        return C1349R.string.exposed_dropdown_menu_content_description;
    }

    @Override // com.google.android.material.textfield.EndIconDelegate
    boolean isIconChecked() {
        return this.isEndIconChecked;
    }

    @Override // com.google.android.material.textfield.EndIconDelegate
    boolean isIconActivated() {
        return this.editTextHasFocus;
    }

    @Override // com.google.android.material.textfield.EndIconDelegate
    View.OnClickListener getOnIconClickListener() {
        return this.onIconClickListener;
    }

    @Override // com.google.android.material.textfield.EndIconDelegate
    public void onEditTextAttached(EditText editText) {
        this.autoCompleteTextView = castAutoCompleteTextViewOrThrow(editText);
        setUpDropdownShowHideBehavior();
        this.textInputLayout.setErrorIconDrawable((Drawable) null);
        if (!EditTextUtils.isEditable(editText) && this.accessibilityManager.isTouchExplorationEnabled()) {
            this.endIconView.setImportantForAccessibility(2);
        }
        this.textInputLayout.setEndIconVisible(true);
    }

    @Override // com.google.android.material.textfield.EndIconDelegate
    public void afterEditTextChanged(Editable editable) {
        if (this.accessibilityManager.isTouchExplorationEnabled() && EditTextUtils.isEditable(this.autoCompleteTextView) && !this.endIconView.hasFocus()) {
            this.autoCompleteTextView.dismissDropDown();
        }
        this.autoCompleteTextView.post(new Runnable() { // from class: com.google.android.material.textfield.DropdownMenuEndIconDelegate$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                DropdownMenuEndIconDelegate.m3496$r8$lambda$y8fy3mWjKkDKEPGKU3W34ch_Uw(this.f$0);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$-y8fy3mWjKkDKEPGKU3W34ch_Uw, reason: not valid java name */
    public static /* synthetic */ void m3496$r8$lambda$y8fy3mWjKkDKEPGKU3W34ch_Uw(DropdownMenuEndIconDelegate dropdownMenuEndIconDelegate) {
        boolean zIsPopupShowing = dropdownMenuEndIconDelegate.autoCompleteTextView.isPopupShowing();
        dropdownMenuEndIconDelegate.setEndIconChecked(zIsPopupShowing);
        dropdownMenuEndIconDelegate.dropdownPopupDirty = zIsPopupShowing;
    }

    @Override // com.google.android.material.textfield.EndIconDelegate
    View.OnFocusChangeListener getOnEditTextFocusChangeListener() {
        return this.onEditTextFocusChangeListener;
    }

    @Override // com.google.android.material.textfield.EndIconDelegate
    public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        if (!EditTextUtils.isEditable(this.autoCompleteTextView)) {
            accessibilityNodeInfoCompat.setClassName(Spinner.class.getName());
        }
        if (accessibilityNodeInfoCompat.isShowingHintText()) {
            accessibilityNodeInfoCompat.setHintText(null);
        }
    }

    @Override // com.google.android.material.textfield.EndIconDelegate
    @SuppressLint({"WrongConstant"})
    public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        if (!this.accessibilityManager.isEnabled() || EditTextUtils.isEditable(this.autoCompleteTextView)) {
            return;
        }
        boolean z = (accessibilityEvent.getEventType() == 32768 || accessibilityEvent.getEventType() == 8) && this.isEndIconChecked && !this.autoCompleteTextView.isPopupShowing();
        if (accessibilityEvent.getEventType() == 1 || z) {
            showHideDropdown();
            updateDropdownPopupDirty();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showHideDropdown() {
        if (this.autoCompleteTextView == null) {
            return;
        }
        if (isDropdownPopupActive()) {
            this.dropdownPopupDirty = false;
        }
        if (!this.dropdownPopupDirty) {
            setEndIconChecked(!this.isEndIconChecked);
            if (this.isEndIconChecked) {
                this.autoCompleteTextView.requestFocus();
                this.autoCompleteTextView.showDropDown();
                return;
            } else {
                this.autoCompleteTextView.dismissDropDown();
                return;
            }
        }
        this.dropdownPopupDirty = false;
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private void setUpDropdownShowHideBehavior() {
        this.autoCompleteTextView.setOnTouchListener(new View.OnTouchListener() { // from class: com.google.android.material.textfield.DropdownMenuEndIconDelegate$$ExternalSyntheticLambda1
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return DropdownMenuEndIconDelegate.m3497$r8$lambda$rHz86UpD1kaGbWDU0jLf2Nncs(this.f$0, view, motionEvent);
            }
        });
        this.autoCompleteTextView.setOnDismissListener(new AutoCompleteTextView.OnDismissListener() { // from class: com.google.android.material.textfield.DropdownMenuEndIconDelegate$$ExternalSyntheticLambda2
            @Override // android.widget.AutoCompleteTextView.OnDismissListener
            public final void onDismiss() {
                DropdownMenuEndIconDelegate.m3498$r8$lambda$scsWsP1aqfljH19IzwcrEYD_Bo(this.f$0);
            }
        });
        this.autoCompleteTextView.setThreshold(0);
    }

    /* JADX INFO: renamed from: $r8$lambda$rHz86UpD1kaG-bWDU0-jLf2Nncs, reason: not valid java name */
    public static /* synthetic */ boolean m3497$r8$lambda$rHz86UpD1kaGbWDU0jLf2Nncs(DropdownMenuEndIconDelegate dropdownMenuEndIconDelegate, View view, MotionEvent motionEvent) {
        dropdownMenuEndIconDelegate.getClass();
        if (motionEvent.getAction() == 1) {
            if (dropdownMenuEndIconDelegate.isDropdownPopupActive()) {
                dropdownMenuEndIconDelegate.dropdownPopupDirty = false;
            }
            dropdownMenuEndIconDelegate.showHideDropdown();
            dropdownMenuEndIconDelegate.updateDropdownPopupDirty();
        }
        return false;
    }

    /* JADX INFO: renamed from: $r8$lambda$scsW-sP1aqfljH19IzwcrEYD_Bo, reason: not valid java name */
    public static /* synthetic */ void m3498$r8$lambda$scsWsP1aqfljH19IzwcrEYD_Bo(DropdownMenuEndIconDelegate dropdownMenuEndIconDelegate) {
        dropdownMenuEndIconDelegate.updateDropdownPopupDirty();
        dropdownMenuEndIconDelegate.setEndIconChecked(false);
    }

    private boolean isDropdownPopupActive() {
        long jUptimeMillis = SystemClock.uptimeMillis() - this.dropdownPopupActivatedAt;
        return jUptimeMillis < 0 || jUptimeMillis > 300;
    }

    private static AutoCompleteTextView castAutoCompleteTextViewOrThrow(EditText editText) {
        if (!(editText instanceof AutoCompleteTextView)) {
            throw new RuntimeException("EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used.");
        }
        return (AutoCompleteTextView) editText;
    }

    private void updateDropdownPopupDirty() {
        this.dropdownPopupDirty = true;
        this.dropdownPopupActivatedAt = SystemClock.uptimeMillis();
    }

    private void setEndIconChecked(boolean z) {
        if (this.isEndIconChecked != z) {
            this.isEndIconChecked = z;
            this.fadeInAnim.cancel();
            this.fadeOutAnim.start();
        }
    }

    private void initAnimators() {
        this.fadeInAnim = getAlphaAnimator(this.animationFadeInDuration, 0.0f, 1.0f);
        ValueAnimator alphaAnimator = getAlphaAnimator(this.animationFadeOutDuration, 1.0f, 0.0f);
        this.fadeOutAnim = alphaAnimator;
        alphaAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.textfield.DropdownMenuEndIconDelegate.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                DropdownMenuEndIconDelegate.this.refreshIconState();
                DropdownMenuEndIconDelegate.this.fadeInAnim.start();
            }
        });
    }

    private ValueAnimator getAlphaAnimator(int i, float... fArr) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(fArr);
        valueAnimatorOfFloat.setInterpolator(this.animationFadeInterpolator);
        valueAnimatorOfFloat.setDuration(i);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.textfield.DropdownMenuEndIconDelegate$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                DropdownMenuEndIconDelegate.$r8$lambda$CZy5WigobS3oySmsGDEVS50zVNw(this.f$0, valueAnimator);
            }
        });
        return valueAnimatorOfFloat;
    }

    public static /* synthetic */ void $r8$lambda$CZy5WigobS3oySmsGDEVS50zVNw(DropdownMenuEndIconDelegate dropdownMenuEndIconDelegate, ValueAnimator valueAnimator) {
        dropdownMenuEndIconDelegate.getClass();
        dropdownMenuEndIconDelegate.endIconView.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }
}
