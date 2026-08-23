package org.telegram.ui.Components.Premium.boosts.cells.selector;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.Shader;
import android.os.Build;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Property;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.widget.ScrollView;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2573R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.AnimatedFloat;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.EditTextBoldCursor;
import org.telegram.ui.Components.GroupCreateSpan;
import org.telegram.ui.Components.LayoutHelper;

/* JADX INFO: loaded from: classes7.dex */
@SuppressLint({"ViewConstructor"})
public abstract class SelectorSearchCell extends ScrollView {
    public ArrayList<GroupCreateSpan> allSpans;
    private final LinearGradient bottomGradient;
    private final AnimatedFloat bottomGradientAlpha;
    private final Matrix bottomGradientMatrix;
    private final Paint bottomGradientPaint;
    public float containerHeight;
    private GroupCreateSpan currentDeletingSpan;
    private EditTextBoldCursor editText;
    private int fieldY;
    private int hintTextWidth;
    private boolean ignoreScrollEvent;
    private boolean ignoreTextChange;
    private Utilities.Callback<String> onSearchTextChange;
    private int prevResultContainerHeight;
    private final Theme.ResourcesProvider resourcesProvider;
    public int resultContainerHeight;
    private boolean scroll;
    public SpansContainer spansContainer;
    private final LinearGradient topGradient;
    private final AnimatedFloat topGradientAlpha;
    private final Matrix topGradientMatrix;
    private final Paint topGradientPaint;
    private Runnable updateHeight;

    public EditTextBoldCursor getEditText() {
        return this.editText;
    }

    public SelectorSearchCell(Context context, Theme.ResourcesProvider resourcesProvider, Runnable runnable) {
        super(context);
        this.allSpans = new ArrayList<>();
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        this.topGradientAlpha = new AnimatedFloat(this, 0L, 300L, cubicBezierInterpolator);
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        LinearGradient linearGradient = new LinearGradient(0.0f, 0.0f, 0.0f, AndroidUtilities.dp(8.0f), new int[]{-16777216, 0}, new float[]{0.0f, 1.0f}, tileMode);
        this.topGradient = linearGradient;
        Paint paint = new Paint(1);
        this.topGradientPaint = paint;
        this.topGradientMatrix = new Matrix();
        this.bottomGradientAlpha = new AnimatedFloat(this, 0L, 300L, cubicBezierInterpolator);
        LinearGradient linearGradient2 = new LinearGradient(0.0f, 0.0f, 0.0f, AndroidUtilities.dp(8.0f), new int[]{0, -16777216}, new float[]{0.0f, 1.0f}, tileMode);
        this.bottomGradient = linearGradient2;
        Paint paint2 = new Paint(1);
        this.bottomGradientPaint = paint2;
        this.bottomGradientMatrix = new Matrix();
        paint.setShader(linearGradient);
        PorterDuff.Mode mode = PorterDuff.Mode.DST_OUT;
        paint.setXfermode(new PorterDuffXfermode(mode));
        paint2.setShader(linearGradient2);
        paint2.setXfermode(new PorterDuffXfermode(mode));
        this.resourcesProvider = resourcesProvider;
        this.updateHeight = runnable;
        setVerticalScrollBarEnabled(false);
        AndroidUtilities.setScrollViewEdgeEffectColor(this, Theme.getColor(Theme.key_windowBackgroundWhite));
        SpansContainer spansContainer = new SpansContainer(context);
        this.spansContainer = spansContainer;
        addView(spansContainer, LayoutHelper.createFrame(-1, -2.0f));
        EditTextBoldCursor editTextBoldCursor = new EditTextBoldCursor(context) { // from class: org.telegram.ui.Components.Premium.boosts.cells.selector.SelectorSearchCell.1
            @Override // org.telegram.ui.Components.EditTextBoldCursor, android.widget.TextView, android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                if (SelectorSearchCell.this.currentDeletingSpan != null) {
                    SelectorSearchCell.this.currentDeletingSpan.cancelDeleteAnimation();
                    SelectorSearchCell.this.currentDeletingSpan = null;
                }
                if (motionEvent.getAction() == 0 && !AndroidUtilities.showKeyboard(this)) {
                    SelectorSearchCell.this.fullScroll(130);
                    clearFocus();
                    requestFocus();
                }
                return super.onTouchEvent(motionEvent);
            }
        };
        this.editText = editTextBoldCursor;
        if (Build.VERSION.SDK_INT >= 25) {
            editTextBoldCursor.setRevealOnFocusHint(false);
        }
        this.editText.setTextSize(1, 16.0f);
        this.editText.setHintColor(Theme.getColor(Theme.key_groupcreate_hintText, resourcesProvider));
        this.editText.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, resourcesProvider));
        EditTextBoldCursor editTextBoldCursor2 = this.editText;
        int i = Theme.key_groupcreate_cursor;
        editTextBoldCursor2.setCursorColor(Theme.getColor(i, resourcesProvider));
        this.editText.setHandlesColor(Theme.getColor(i, resourcesProvider));
        this.editText.setCursorWidth(1.5f);
        EditTextBoldCursor editTextBoldCursor3 = this.editText;
        editTextBoldCursor3.setInputType(editTextBoldCursor3.getInputType() | 176);
        this.editText.setSingleLine(true);
        this.editText.setBackgroundDrawable(null);
        this.editText.setVerticalScrollBarEnabled(false);
        this.editText.setHorizontalScrollBarEnabled(false);
        this.editText.setTextIsSelectable(false);
        this.editText.setPadding(0, 0, 0, 0);
        this.editText.setImeOptions(268435462);
        this.editText.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
        this.spansContainer.addView(this.editText);
        this.editText.setHintText(LocaleController.getString(C2573R.string.Search));
        this.hintTextWidth = (int) this.editText.getPaint().measureText(LocaleController.getString(C2573R.string.Search));
        this.editText.addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.Components.Premium.boosts.cells.selector.SelectorSearchCell.2
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (SelectorSearchCell.this.ignoreTextChange || SelectorSearchCell.this.onSearchTextChange == null || editable == null) {
                    return;
                }
                SelectorSearchCell.this.onSearchTextChange.run(editable.toString());
            }
        });
    }

    public void setHintText(String str, boolean z) {
        this.editText.setHintText(str, z);
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00a6 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0040 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void updateSpans(boolean z, final HashSet<Long> hashSet, final Runnable runnable, List<TLRPC.TL_help_country> list) {
        Object chat;
        Object obj;
        MessagesController messagesController = MessagesController.getInstance(UserConfig.selectedAccount);
        ArrayList<GroupCreateSpan> arrayList = new ArrayList<>();
        ArrayList<GroupCreateSpan> arrayList2 = new ArrayList<>();
        for (int i = 0; i < this.allSpans.size(); i++) {
            GroupCreateSpan groupCreateSpan = this.allSpans.get(i);
            if (!hashSet.contains(Long.valueOf(groupCreateSpan.getUid()))) {
                arrayList.add(groupCreateSpan);
            }
        }
        for (Long l : hashSet) {
            long jLongValue = l.longValue();
            int i2 = 0;
            while (true) {
                if (i2 >= this.allSpans.size()) {
                    if (jLongValue >= 0) {
                        chat = messagesController.getUser(l);
                    } else {
                        chat = messagesController.getChat(Long.valueOf(-jLongValue));
                    }
                    if (list != null) {
                        for (TLRPC.TL_help_country tL_help_country : list) {
                            if (tL_help_country.default_name.hashCode() == jLongValue) {
                                obj = tL_help_country;
                                break;
                            }
                        }
                        obj = chat;
                        if (obj == null) {
                            GroupCreateSpan groupCreateSpan2 = new GroupCreateSpan(getContext(), obj, null, true, this.resourcesProvider);
                            groupCreateSpan2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Premium.boosts.cells.selector.SelectorSearchCell$$ExternalSyntheticLambda0
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    this.f$0.lambda$updateSpans$0(hashSet, runnable, view);
                                }
                            });
                            arrayList2.add(groupCreateSpan2);
                        }
                    } else {
                        obj = chat;
                        if (obj == null) {
                        }
                    }
                } else if (this.allSpans.get(i2).getUid() == jLongValue) {
                    break;
                } else {
                    i2++;
                }
            }
        }
        if (!arrayList.isEmpty() || !arrayList2.isEmpty()) {
            this.spansContainer.updateSpans(arrayList, arrayList2, z);
        }
        this.editText.setOnKeyListener(new View.OnKeyListener() { // from class: org.telegram.ui.Components.Premium.boosts.cells.selector.SelectorSearchCell.3
            private boolean wasEmpty;

            @Override // android.view.View.OnKeyListener
            public boolean onKey(View view, int i3, KeyEvent keyEvent) {
                if (i3 == 67) {
                    if (keyEvent.getAction() == 0) {
                        this.wasEmpty = SelectorSearchCell.this.editText.length() == 0;
                    } else if (keyEvent.getAction() == 1 && this.wasEmpty && !SelectorSearchCell.this.allSpans.isEmpty()) {
                        ArrayList<GroupCreateSpan> arrayList3 = SelectorSearchCell.this.allSpans;
                        SelectorSearchCell.this.lambda$updateSpans$0(arrayList3.get(arrayList3.size() - 1), hashSet, runnable);
                        return true;
                    }
                }
                return false;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onDeleteSpanClicked, reason: merged with bridge method [inline-methods] */
    public void lambda$updateSpans$0(View view, HashSet<Long> hashSet, Runnable runnable) {
        if (this.allSpans.contains(view)) {
            GroupCreateSpan groupCreateSpan = (GroupCreateSpan) view;
            if (groupCreateSpan.isDeleting()) {
                this.currentDeletingSpan = null;
                this.spansContainer.removeSpan(groupCreateSpan);
                hashSet.remove(Long.valueOf(groupCreateSpan.getUid()));
                runnable.run();
                return;
            }
            GroupCreateSpan groupCreateSpan2 = this.currentDeletingSpan;
            if (groupCreateSpan2 != null) {
                groupCreateSpan2.cancelDeleteAnimation();
                this.currentDeletingSpan = null;
            }
            this.currentDeletingSpan = groupCreateSpan;
            groupCreateSpan.startDeleteAnimation();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        float scrollY = getScrollY();
        canvas.saveLayerAlpha(0.0f, scrollY, getWidth(), getHeight() + r0, 255, 31);
        super.dispatchDraw(canvas);
        canvas.save();
        float f = this.topGradientAlpha.set(canScrollVertically(-1));
        this.topGradientMatrix.reset();
        this.topGradientMatrix.postTranslate(0.0f, scrollY);
        this.topGradient.setLocalMatrix(this.topGradientMatrix);
        this.topGradientPaint.setAlpha((int) (f * 255.0f));
        canvas.drawRect(0.0f, scrollY, getWidth(), AndroidUtilities.dp(8.0f) + r0, this.topGradientPaint);
        float f2 = this.bottomGradientAlpha.set(canScrollVertically(1));
        this.bottomGradientMatrix.reset();
        this.bottomGradientMatrix.postTranslate(0.0f, (getHeight() + r0) - AndroidUtilities.dp(8.0f));
        this.bottomGradient.setLocalMatrix(this.bottomGradientMatrix);
        this.bottomGradientPaint.setAlpha((int) (f2 * 255.0f));
        canvas.drawRect(0.0f, (getHeight() + r0) - AndroidUtilities.dp(8.0f), getWidth(), r0 + getHeight(), this.bottomGradientPaint);
        canvas.restore();
        canvas.restore();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return super.dispatchTouchEvent(motionEvent);
    }

    public void setText(CharSequence charSequence) {
        this.ignoreTextChange = true;
        this.editText.setText(charSequence);
        this.ignoreTextChange = false;
    }

    public void setOnSearchTextChange(Utilities.Callback<String> callback) {
        this.onSearchTextChange = callback;
    }

    @Override // android.widget.ScrollView, android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        if (this.ignoreScrollEvent) {
            this.ignoreScrollEvent = false;
            return false;
        }
        rect.offset(view.getLeft() - view.getScrollX(), view.getTop() - view.getScrollY());
        rect.top += this.fieldY + AndroidUtilities.dp(20.0f);
        rect.bottom += this.fieldY + AndroidUtilities.dp(50.0f);
        return super.requestChildRectangleOnScreen(view, rect, z);
    }

    @Override // android.widget.ScrollView, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(150.0f), Integer.MIN_VALUE));
    }

    public void setContainerHeight(float f) {
        this.containerHeight = f;
        SpansContainer spansContainer = this.spansContainer;
        if (spansContainer != null) {
            spansContainer.requestLayout();
        }
    }

    public Animator getContainerHeightAnimator(float f) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.containerHeight, f);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.Premium.boosts.cells.selector.SelectorSearchCell$$ExternalSyntheticLambda1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$getContainerHeightAnimator$1(valueAnimator);
            }
        });
        return valueAnimatorOfFloat;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getContainerHeightAnimator$1(ValueAnimator valueAnimator) {
        setContainerHeight(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    public class SpansContainer extends ViewGroup {
        private View addingSpan;
        private ArrayList<View> animAddingSpans;
        private ArrayList<View> animRemovingSpans;
        private boolean animationStarted;
        private ArrayList<Animator> animators;
        private AnimatorSet currentAnimation;
        private final int heightDp;
        private final int padDp;
        private final int padXDp;
        private final int padYDp;
        private final ArrayList<View> removingSpans;

        public SpansContainer(Context context) {
            super(context);
            this.animAddingSpans = new ArrayList<>();
            this.animRemovingSpans = new ArrayList<>();
            this.animators = new ArrayList<>();
            this.removingSpans = new ArrayList<>();
            this.padDp = 14;
            this.padYDp = 4;
            this.padXDp = 6;
            this.heightDp = 28;
        }

        /* JADX WARN: Removed duplicated region for block: B:33:0x00e2  */
        @Override // android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void onMeasure(int i, int i2) {
            Property property;
            Property property2;
            int iMin;
            int i3;
            int childCount = getChildCount();
            int size = View.MeasureSpec.getSize(i);
            float f = 28.0f;
            int iDp = size - AndroidUtilities.dp(28.0f);
            int iDp2 = AndroidUtilities.dp(10.0f);
            int iDp3 = AndroidUtilities.dp(10.0f);
            int i4 = 0;
            int measuredWidth = 0;
            int measuredWidth2 = 0;
            while (true) {
                property = View.TRANSLATION_Y;
                property2 = View.TRANSLATION_X;
                if (i4 >= childCount) {
                    break;
                }
                View childAt = getChildAt(i4);
                float f2 = f;
                if (childAt instanceof GroupCreateSpan) {
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(f2), TLObject.FLAG_30));
                    boolean zContains = this.removingSpans.contains(childAt);
                    if (!zContains && childAt.getMeasuredWidth() + measuredWidth > iDp) {
                        iDp2 += childAt.getMeasuredHeight() + AndroidUtilities.dp(4.0f);
                        measuredWidth = 0;
                    }
                    if (childAt.getMeasuredWidth() + measuredWidth2 > iDp) {
                        iDp3 += childAt.getMeasuredHeight() + AndroidUtilities.dp(4.0f);
                        measuredWidth2 = 0;
                    }
                    int iDp4 = AndroidUtilities.dp(14.0f) + measuredWidth;
                    if (this.animationStarted) {
                        i3 = childCount;
                        if (!zContains) {
                            measuredWidth += childAt.getMeasuredWidth() + AndroidUtilities.dp(6.0f);
                        }
                        measuredWidth2 += childAt.getMeasuredWidth() + AndroidUtilities.dp(6.0f);
                    } else if (zContains) {
                        childAt.setTranslationX(AndroidUtilities.dp(14.0f) + measuredWidth2);
                        childAt.setTranslationY(iDp3);
                        i3 = childCount;
                        if (!zContains) {
                        }
                        measuredWidth2 += childAt.getMeasuredWidth() + AndroidUtilities.dp(6.0f);
                    } else {
                        if (this.removingSpans.isEmpty()) {
                            i3 = childCount;
                            childAt.setTranslationX(iDp4);
                            childAt.setTranslationY(iDp2);
                        } else {
                            float f3 = iDp4;
                            if (childAt.getTranslationX() != f3) {
                                i3 = childCount;
                                this.animators.add(ObjectAnimator.ofFloat(childAt, (Property<View, Float>) property2, f3));
                            } else {
                                i3 = childCount;
                            }
                            float f4 = iDp2;
                            if (childAt.getTranslationY() != f4) {
                                this.animators.add(ObjectAnimator.ofFloat(childAt, (Property<View, Float>) property, f4));
                            }
                        }
                        if (!zContains) {
                        }
                        measuredWidth2 += childAt.getMeasuredWidth() + AndroidUtilities.dp(6.0f);
                    }
                } else {
                    i3 = childCount;
                }
                i4++;
                f = f2;
                childCount = i3;
            }
            float f5 = f;
            if (AndroidUtilities.isTablet()) {
                iMin = AndroidUtilities.dp(376.0f) / 3;
            } else {
                Point point = AndroidUtilities.displaySize;
                iMin = (Math.min(point.x, point.y) - AndroidUtilities.dp(154.0f)) / 3;
            }
            if (iDp - measuredWidth < iMin) {
                iDp2 += AndroidUtilities.dp(36.0f);
                measuredWidth = 0;
            }
            if (iDp - measuredWidth2 < iMin) {
                iDp3 += AndroidUtilities.dp(36.0f);
            }
            SelectorSearchCell.this.editText.measure(View.MeasureSpec.makeMeasureSpec(iDp - measuredWidth, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(f5), TLObject.FLAG_30));
            SelectorSearchCell.this.editText.setHintVisible(SelectorSearchCell.this.editText.getMeasuredWidth() > SelectorSearchCell.this.hintTextWidth, true);
            if (!this.animationStarted) {
                int iDp5 = iDp3 + AndroidUtilities.dp(38.0f);
                int iDp6 = measuredWidth + AndroidUtilities.dp(16.0f);
                SelectorSearchCell.this.fieldY = iDp2;
                if (this.currentAnimation != null) {
                    int iDp7 = iDp2 + AndroidUtilities.dp(38.0f);
                    SelectorSearchCell selectorSearchCell = SelectorSearchCell.this;
                    selectorSearchCell.resultContainerHeight = iDp7;
                    float f6 = iDp7;
                    if (selectorSearchCell.containerHeight != f6) {
                        this.animators.add(selectorSearchCell.getContainerHeightAnimator(f6));
                    }
                    float f7 = iDp6;
                    if (SelectorSearchCell.this.editText.getTranslationX() != f7) {
                        this.animators.add(ObjectAnimator.ofFloat(SelectorSearchCell.this.editText, (Property<EditTextBoldCursor, Float>) property2, f7));
                    }
                    if (SelectorSearchCell.this.editText.getTranslationY() != SelectorSearchCell.this.fieldY) {
                        this.animators.add(ObjectAnimator.ofFloat(SelectorSearchCell.this.editText, (Property<EditTextBoldCursor, Float>) property, SelectorSearchCell.this.fieldY));
                    }
                    SelectorSearchCell.this.editText.setAllowDrawCursor(false);
                    this.currentAnimation.playTogether(this.animators);
                    this.currentAnimation.setDuration(180L);
                    this.currentAnimation.setInterpolator(new LinearInterpolator());
                    this.currentAnimation.start();
                    this.animationStarted = true;
                    if (SelectorSearchCell.this.updateHeight != null) {
                        SelectorSearchCell.this.updateHeight.run();
                    }
                } else {
                    SelectorSearchCell selectorSearchCell2 = SelectorSearchCell.this;
                    selectorSearchCell2.resultContainerHeight = iDp5;
                    selectorSearchCell2.containerHeight = iDp5;
                    selectorSearchCell2.editText.setTranslationX(iDp6);
                    SelectorSearchCell.this.editText.setTranslationY(SelectorSearchCell.this.fieldY);
                    if (SelectorSearchCell.this.updateHeight != null) {
                        SelectorSearchCell.this.updateHeight.run();
                    }
                    if (SelectorSearchCell.this.scroll) {
                        post(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.cells.selector.SelectorSearchCell$SpansContainer$$ExternalSyntheticLambda0
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$onMeasure$0();
                            }
                        });
                        SelectorSearchCell.this.scroll = false;
                    }
                }
                SelectorSearchCell selectorSearchCell3 = SelectorSearchCell.this;
                selectorSearchCell3.prevResultContainerHeight = selectorSearchCell3.resultContainerHeight;
            } else if (this.currentAnimation != null) {
                if (!SelectorSearchCell.this.ignoreScrollEvent && this.removingSpans.isEmpty()) {
                    SelectorSearchCell.this.editText.bringPointIntoView(SelectorSearchCell.this.editText.getSelectionStart());
                }
                if (SelectorSearchCell.this.scroll) {
                    SelectorSearchCell.this.fullScroll(130);
                    SelectorSearchCell.this.scroll = false;
                }
            }
            setMeasuredDimension(size, (int) SelectorSearchCell.this.containerHeight);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onMeasure$0() {
            SelectorSearchCell.this.fullScroll(130);
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onLayout(boolean z, int i, int i2, int i3, int i4) {
            int childCount = getChildCount();
            for (int i5 = 0; i5 < childCount; i5++) {
                View childAt = getChildAt(i5);
                childAt.layout(0, 0, childAt.getMeasuredWidth(), childAt.getMeasuredHeight());
            }
        }

        public void removeSpan(final GroupCreateSpan groupCreateSpan) {
            SelectorSearchCell.this.ignoreScrollEvent = true;
            SelectorSearchCell.this.allSpans.remove(groupCreateSpan);
            groupCreateSpan.setOnClickListener(null);
            setupEndValues();
            this.animationStarted = false;
            AnimatorSet animatorSet = new AnimatorSet();
            this.currentAnimation = animatorSet;
            animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.Premium.boosts.cells.selector.SelectorSearchCell.SpansContainer.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    SpansContainer.this.removeView(groupCreateSpan);
                    SpansContainer.this.removingSpans.clear();
                    SpansContainer.this.currentAnimation = null;
                    SpansContainer.this.animationStarted = false;
                    SelectorSearchCell.this.editText.setAllowDrawCursor(true);
                    if (SelectorSearchCell.this.updateHeight != null) {
                        SelectorSearchCell.this.updateHeight.run();
                    }
                    if (SelectorSearchCell.this.scroll) {
                        SelectorSearchCell.this.fullScroll(130);
                        SelectorSearchCell.this.scroll = false;
                    }
                }
            });
            this.removingSpans.clear();
            this.removingSpans.add(groupCreateSpan);
            this.animAddingSpans.clear();
            this.animRemovingSpans.clear();
            this.animAddingSpans.add(groupCreateSpan);
            this.animators.clear();
            this.animators.add(ObjectAnimator.ofFloat(groupCreateSpan, (Property<GroupCreateSpan, Float>) View.SCALE_X, 1.0f, 0.01f));
            this.animators.add(ObjectAnimator.ofFloat(groupCreateSpan, (Property<GroupCreateSpan, Float>) View.SCALE_Y, 1.0f, 0.01f));
            this.animators.add(ObjectAnimator.ofFloat(groupCreateSpan, (Property<GroupCreateSpan, Float>) View.ALPHA, 1.0f, 0.0f));
            requestLayout();
        }

        public void updateSpans(final ArrayList<GroupCreateSpan> arrayList, ArrayList<GroupCreateSpan> arrayList2, boolean z) {
            Property property;
            Property property2;
            Property property3;
            SelectorSearchCell.this.ignoreScrollEvent = true;
            SelectorSearchCell.this.allSpans.removeAll(arrayList);
            SelectorSearchCell.this.allSpans.addAll(arrayList2);
            this.removingSpans.clear();
            this.removingSpans.addAll(arrayList);
            for (int i = 0; i < arrayList.size(); i++) {
                arrayList.get(i).setOnClickListener(null);
            }
            setupEndValues();
            if (z) {
                this.animationStarted = false;
                AnimatorSet animatorSet = new AnimatorSet();
                this.currentAnimation = animatorSet;
                animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.Premium.boosts.cells.selector.SelectorSearchCell.SpansContainer.2
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        SpansContainer spansContainer;
                        int i2 = 0;
                        while (true) {
                            int size = arrayList.size();
                            spansContainer = SpansContainer.this;
                            if (i2 >= size) {
                                break;
                            }
                            spansContainer.removeView((View) arrayList.get(i2));
                            i2++;
                        }
                        spansContainer.addingSpan = null;
                        SpansContainer.this.removingSpans.clear();
                        SpansContainer.this.currentAnimation = null;
                        SpansContainer.this.animationStarted = false;
                        SelectorSearchCell.this.editText.setAllowDrawCursor(true);
                        if (SelectorSearchCell.this.updateHeight != null) {
                            SelectorSearchCell.this.updateHeight.run();
                        }
                        if (SelectorSearchCell.this.scroll) {
                            SelectorSearchCell.this.fullScroll(130);
                            SelectorSearchCell.this.scroll = false;
                        }
                    }
                });
                this.animators.clear();
                this.animAddingSpans.clear();
                this.animRemovingSpans.clear();
                int i2 = 0;
                while (true) {
                    int size = arrayList.size();
                    property = View.ALPHA;
                    property2 = View.SCALE_Y;
                    property3 = View.SCALE_X;
                    if (i2 >= size) {
                        break;
                    }
                    GroupCreateSpan groupCreateSpan = arrayList.get(i2);
                    this.animRemovingSpans.add(groupCreateSpan);
                    this.animators.add(ObjectAnimator.ofFloat(groupCreateSpan, (Property<GroupCreateSpan, Float>) property3, 1.0f, 0.01f));
                    this.animators.add(ObjectAnimator.ofFloat(groupCreateSpan, (Property<GroupCreateSpan, Float>) property2, 1.0f, 0.01f));
                    this.animators.add(ObjectAnimator.ofFloat(groupCreateSpan, (Property<GroupCreateSpan, Float>) property, 1.0f, 0.0f));
                    i2++;
                }
                for (int i3 = 0; i3 < arrayList2.size(); i3++) {
                    GroupCreateSpan groupCreateSpan2 = arrayList2.get(i3);
                    this.animAddingSpans.add(groupCreateSpan2);
                    this.animators.add(ObjectAnimator.ofFloat(groupCreateSpan2, (Property<GroupCreateSpan, Float>) property3, 0.01f, 1.0f));
                    this.animators.add(ObjectAnimator.ofFloat(groupCreateSpan2, (Property<GroupCreateSpan, Float>) property2, 0.01f, 1.0f));
                    this.animators.add(ObjectAnimator.ofFloat(groupCreateSpan2, (Property<GroupCreateSpan, Float>) property, 0.0f, 1.0f));
                }
            } else {
                for (int i4 = 0; i4 < arrayList.size(); i4++) {
                    removeView(arrayList.get(i4));
                }
                this.addingSpan = null;
                this.removingSpans.clear();
                this.currentAnimation = null;
                this.animationStarted = false;
                SelectorSearchCell.this.editText.setAllowDrawCursor(true);
            }
            for (int i5 = 0; i5 < arrayList2.size(); i5++) {
                addView(arrayList2.get(i5));
            }
            requestLayout();
        }

        public void removeAllSpans(boolean z) {
            SelectorSearchCell.this.ignoreScrollEvent = true;
            final ArrayList arrayList = new ArrayList(SelectorSearchCell.this.allSpans);
            this.removingSpans.clear();
            this.removingSpans.addAll(SelectorSearchCell.this.allSpans);
            SelectorSearchCell.this.allSpans.clear();
            for (int i = 0; i < arrayList.size(); i++) {
                ((GroupCreateSpan) arrayList.get(i)).setOnClickListener(null);
            }
            setupEndValues();
            if (z) {
                this.animationStarted = false;
                AnimatorSet animatorSet = new AnimatorSet();
                this.currentAnimation = animatorSet;
                animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.Premium.boosts.cells.selector.SelectorSearchCell.SpansContainer.3
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        SpansContainer spansContainer;
                        int i2 = 0;
                        while (true) {
                            int size = arrayList.size();
                            spansContainer = SpansContainer.this;
                            if (i2 >= size) {
                                break;
                            }
                            spansContainer.removeView((View) arrayList.get(i2));
                            i2++;
                        }
                        spansContainer.removingSpans.clear();
                        SpansContainer.this.currentAnimation = null;
                        SpansContainer.this.animationStarted = false;
                        SelectorSearchCell.this.editText.setAllowDrawCursor(true);
                        if (SelectorSearchCell.this.updateHeight != null) {
                            SelectorSearchCell.this.updateHeight.run();
                        }
                        if (SelectorSearchCell.this.scroll) {
                            SelectorSearchCell.this.fullScroll(130);
                            SelectorSearchCell.this.scroll = false;
                        }
                    }
                });
                this.animators.clear();
                this.animAddingSpans.clear();
                this.animRemovingSpans.clear();
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    GroupCreateSpan groupCreateSpan = (GroupCreateSpan) arrayList.get(i2);
                    this.animAddingSpans.add(groupCreateSpan);
                    this.animators.add(ObjectAnimator.ofFloat(groupCreateSpan, (Property<GroupCreateSpan, Float>) View.SCALE_X, 1.0f, 0.01f));
                    this.animators.add(ObjectAnimator.ofFloat(groupCreateSpan, (Property<GroupCreateSpan, Float>) View.SCALE_Y, 1.0f, 0.01f));
                    this.animators.add(ObjectAnimator.ofFloat(groupCreateSpan, (Property<GroupCreateSpan, Float>) View.ALPHA, 1.0f, 0.0f));
                }
            } else {
                for (int i3 = 0; i3 < arrayList.size(); i3++) {
                    removeView((View) arrayList.get(i3));
                }
                this.removingSpans.clear();
                this.currentAnimation = null;
                this.animationStarted = false;
                SelectorSearchCell.this.editText.setAllowDrawCursor(true);
            }
            requestLayout();
        }

        private void setupEndValues() {
            AnimatorSet animatorSet = this.currentAnimation;
            if (animatorSet != null) {
                animatorSet.cancel();
            }
            for (int i = 0; i < this.animAddingSpans.size(); i++) {
                this.animAddingSpans.get(i).setScaleX(1.0f);
                this.animAddingSpans.get(i).setScaleY(1.0f);
                this.animAddingSpans.get(i).setAlpha(1.0f);
            }
            for (int i2 = 0; i2 < this.animRemovingSpans.size(); i2++) {
                this.animRemovingSpans.get(i2).setScaleX(0.0f);
                this.animRemovingSpans.get(i2).setScaleY(0.0f);
                this.animRemovingSpans.get(i2).setAlpha(0.0f);
            }
            this.animAddingSpans.clear();
            this.animRemovingSpans.clear();
        }
    }
}
