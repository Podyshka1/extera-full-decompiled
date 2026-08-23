package org.telegram.p029ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ComposeShader;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.os.SystemClock;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextWatcher;
import android.util.Property;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Keep;
import java.util.ArrayList;
import java.util.List;
import okhttp3.internal.url._UrlKt;
import org.mvel2.asm.Opcodes;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.p029ui.ActionBar.ActionBarMenuItem;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.ActionBar.ThemeDescription;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes7.dex */
public class ColorPicker extends FrameLayout {
    private ImageView addButton;
    private Paint circlePaint;
    private boolean circlePressed;
    private ImageView clearButton;
    private EditTextBoldCursor[] colorEditText;
    private LinearGradient colorGradient;
    private float[] colorHSV;
    private boolean colorPressed;
    private Bitmap colorWheelBitmap;
    private Paint colorWheelPaint;
    private int colorWheelWidth;
    private AnimatorSet colorsAnimator;
    private int colorsCount;
    private int currentResetType;
    private final ColorPickerDelegate delegate;
    private float[] hsvTemp;
    boolean ignoreTextChange;
    private long lastUpdateTime;
    private Paint linePaint;
    private LinearLayout linearLayout;
    private float maxBrightness;
    private int maxColorsCount;
    private float maxHsvBrightness;
    private ActionBarMenuItem menuItem;
    private float minBrightness;
    private float minHsvBrightness;
    private boolean myMessagesColor;
    private float pressedMoveProgress;
    private int prevSelectedColor;
    private RadioButton[] radioButton;
    private FrameLayout radioContainer;
    private TextView resetButton;
    Theme.ResourcesProvider resourcesProvider;
    private int selectedColor;
    private RectF sliderRect;
    private Paint valueSliderPaint;

    public static /* synthetic */ void $r8$lambda$MKFloAoZQIqBkwJxoCpBUNw1G_4(View view) {
    }

    private static class RadioButton extends View {
        private ObjectAnimator checkAnimator;
        private boolean checked;
        private float checkedState;
        private int currentColor;
        private final Paint paint;

        public RadioButton(Context context) {
            super(context);
            this.paint = new Paint(1);
        }

        void updateCheckedState(boolean z) {
            ObjectAnimator objectAnimator = this.checkAnimator;
            if (objectAnimator != null) {
                objectAnimator.cancel();
            }
            if (z) {
                ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "checkedState", this.checked ? 1.0f : 0.0f);
                this.checkAnimator = objectAnimatorOfFloat;
                objectAnimatorOfFloat.setDuration(200L);
                this.checkAnimator.start();
                return;
            }
            setCheckedState(this.checked ? 1.0f : 0.0f);
        }

        public void setChecked(boolean z, boolean z2) {
            this.checked = z;
            updateCheckedState(z2);
        }

        public void setColor(int i) {
            this.currentColor = i;
            invalidate();
        }

        public int getColor() {
            return this.currentColor;
        }

        @Keep
        public void setCheckedState(float f) {
            this.checkedState = f;
            invalidate();
        }

        @Keep
        public float getCheckedState() {
            return this.checkedState;
        }

        @Override // android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            updateCheckedState(false);
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(30.0f), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(30.0f), TLObject.FLAG_30));
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            float fM1124dp = AndroidUtilities.m1124dp(15.0f);
            float measuredWidth = getMeasuredWidth() * 0.5f;
            float measuredHeight = getMeasuredHeight() * 0.5f;
            this.paint.setColor(this.currentColor);
            this.paint.setStyle(Paint.Style.STROKE);
            this.paint.setStrokeWidth(AndroidUtilities.m1124dp(3.0f));
            this.paint.setAlpha(Math.round(this.checkedState * 255.0f));
            canvas.drawCircle(measuredWidth, measuredHeight, fM1124dp - (this.paint.getStrokeWidth() * 0.5f), this.paint);
            this.paint.setAlpha(255);
            this.paint.setStyle(Paint.Style.FILL);
            canvas.drawCircle(measuredWidth, measuredHeight, fM1124dp - (AndroidUtilities.m1124dp(5.0f) * this.checkedState), this.paint);
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setText(LocaleController.getString(C2888R.string.ColorPickerMainColor));
            accessibilityNodeInfo.setClassName(Button.class.getName());
            accessibilityNodeInfo.setChecked(this.checked);
            accessibilityNodeInfo.setCheckable(true);
            accessibilityNodeInfo.setEnabled(true);
        }
    }

    public ColorPicker(Context context, boolean z, ColorPickerDelegate colorPickerDelegate) {
        super(context);
        this.sliderRect = new RectF();
        this.radioButton = new RadioButton[4];
        this.colorsCount = 1;
        this.maxColorsCount = 1;
        this.colorHSV = new float[]{0.0f, 0.0f, 1.0f};
        this.hsvTemp = new float[3];
        this.pressedMoveProgress = 1.0f;
        this.minBrightness = 0.0f;
        this.maxBrightness = 1.0f;
        this.minHsvBrightness = 0.0f;
        this.maxHsvBrightness = 1.0f;
        this.delegate = colorPickerDelegate;
        this.colorEditText = new EditTextBoldCursor[2];
        setWillNotDraw(false);
        this.circlePaint = new Paint(1);
        this.colorWheelPaint = new Paint(5);
        this.valueSliderPaint = new Paint(5);
        Paint paint = new Paint();
        this.linePaint = paint;
        paint.setColor(301989888);
        setClipChildren(false);
        LinearLayout linearLayout = new LinearLayout(context) { // from class: org.telegram.ui.Components.ColorPicker.1
            private RectF rect = new RectF();
            private Paint paint = new Paint(1);

            @Override // android.widget.LinearLayout, android.view.View
            protected void onDraw(Canvas canvas) {
                this.paint.setColor(ColorPicker.this.getThemedColor(Theme.key_dialogBackgroundGray));
                this.rect.set(ColorPicker.this.colorEditText[0].getLeft() - AndroidUtilities.m1124dp(13.0f), AndroidUtilities.m1124dp(5.0f), r0 + ((int) (AndroidUtilities.m1124dp(91.0f) + (ColorPicker.this.clearButton.getVisibility() == 0 ? AndroidUtilities.m1124dp(25.0f) * ColorPicker.this.clearButton.getAlpha() : 0.0f))), AndroidUtilities.m1124dp(37.0f));
                canvas.drawRoundRect(this.rect, AndroidUtilities.m1124dp(16.0f), AndroidUtilities.m1124dp(16.0f), this.paint);
            }
        };
        this.linearLayout = linearLayout;
        linearLayout.setOrientation(0);
        addView(this.linearLayout, LayoutHelper.createFrame(-1, 54.0f, 51, 27.0f, -6.0f, 17.0f, 0.0f));
        this.linearLayout.setWillNotDraw(false);
        FrameLayout frameLayout = new FrameLayout(context);
        this.radioContainer = frameLayout;
        frameLayout.setClipChildren(false);
        addView(this.radioContainer, LayoutHelper.createFrame(174, 30.0f, 49, 72.0f, 1.0f, 0.0f, 0.0f));
        int i = 0;
        while (i < 4) {
            this.radioButton[i] = new RadioButton(context);
            this.radioButton[i].setChecked(this.selectedColor == i, false);
            this.radioContainer.addView(this.radioButton[i], LayoutHelper.createFrame(30, 30.0f, 48, 0.0f, 0.0f, 0.0f, 0.0f));
            this.radioButton[i].setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ColorPicker$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$0(view);
                }
            });
            i++;
        }
        final int i2 = 0;
        while (true) {
            EditTextBoldCursor[] editTextBoldCursorArr = this.colorEditText;
            if (i2 >= editTextBoldCursorArr.length) {
                break;
            }
            if (i2 % 2 == 0) {
                editTextBoldCursorArr[i2] = new EditTextBoldCursor(context) { // from class: org.telegram.ui.Components.ColorPicker.2
                    @Override // org.telegram.p029ui.Components.EditTextBoldCursor, android.widget.TextView, android.view.View
                    public boolean onTouchEvent(MotionEvent motionEvent) {
                        if (getAlpha() == 1.0f && motionEvent.getAction() == 0) {
                            if (ColorPicker.this.colorEditText[i2 + 1].isFocused()) {
                                AndroidUtilities.showKeyboard(ColorPicker.this.colorEditText[i2 + 1]);
                            } else {
                                ColorPicker.this.colorEditText[i2 + 1].requestFocus();
                            }
                        }
                        return false;
                    }
                };
                this.colorEditText[i2].setBackgroundDrawable(null);
                this.colorEditText[i2].setText("#");
                this.colorEditText[i2].setEnabled(false);
                this.colorEditText[i2].setFocusable(false);
                this.colorEditText[i2].setPadding(0, AndroidUtilities.m1124dp(5.0f), 0, AndroidUtilities.m1124dp(16.0f));
                this.linearLayout.addView(this.colorEditText[i2], LayoutHelper.createLinear(-2, -1, 0.0f, 0.0f, 0.0f, 0.0f));
            } else {
                editTextBoldCursorArr[i2] = new EditTextBoldCursor(context) { // from class: org.telegram.ui.Components.ColorPicker.3
                    @Override // org.telegram.p029ui.Components.EditTextBoldCursor, android.widget.TextView, android.view.View
                    public boolean onTouchEvent(MotionEvent motionEvent) {
                        if (getAlpha() != 1.0f) {
                            return false;
                        }
                        if (!isFocused()) {
                            requestFocus();
                            return false;
                        }
                        AndroidUtilities.showKeyboard(this);
                        return super.onTouchEvent(motionEvent);
                    }

                    @Override // android.view.View
                    public boolean getGlobalVisibleRect(Rect rect, Point point) {
                        boolean globalVisibleRect = super.getGlobalVisibleRect(rect, point);
                        rect.bottom += AndroidUtilities.m1124dp(40.0f);
                        return globalVisibleRect;
                    }

                    @Override // android.view.View
                    public void invalidate() {
                        super.invalidate();
                        ColorPicker.this.colorEditText[i2 - 1].invalidate();
                    }
                };
                this.colorEditText[i2].setBackgroundDrawable(null);
                this.colorEditText[i2].setFilters(new InputFilter[]{new InputFilter.LengthFilter(6)});
                this.colorEditText[i2].setHint("8BC6ED");
                this.colorEditText[i2].setPadding(0, AndroidUtilities.m1124dp(5.0f), 0, AndroidUtilities.m1124dp(16.0f));
                this.linearLayout.addView(this.colorEditText[i2], LayoutHelper.createLinear(71, -1, 0.0f, 0.0f, 0.0f, 0.0f));
                this.colorEditText[i2].addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.Components.ColorPicker.4
                    @Override // android.text.TextWatcher
                    public void beforeTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
                    }

                    @Override // android.text.TextWatcher
                    public void onTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
                    }

                    @Override // android.text.TextWatcher
                    public void afterTextChanged(Editable editable) {
                        ColorPicker colorPicker = ColorPicker.this;
                        if (colorPicker.ignoreTextChange) {
                            return;
                        }
                        colorPicker.ignoreTextChange = true;
                        int i3 = 0;
                        while (i3 < editable.length()) {
                            char cCharAt = editable.charAt(i3);
                            if ((cCharAt < '0' || cCharAt > '9') && ((cCharAt < 'a' || cCharAt > 'f') && (cCharAt < 'A' || cCharAt > 'F'))) {
                                editable.replace(i3, i3 + 1, _UrlKt.FRAGMENT_ENCODE_SET);
                                i3--;
                            }
                            i3++;
                        }
                        if (editable.length() == 0) {
                            ColorPicker.this.ignoreTextChange = false;
                            return;
                        }
                        ColorPicker colorPicker2 = ColorPicker.this;
                        colorPicker2.setColorInner(colorPicker2.getFieldColor(i2, -1));
                        int color = ColorPicker.this.getColor();
                        if (editable.length() == 6) {
                            editable.replace(0, editable.length(), String.format("%02x%02x%02x", Byte.valueOf((byte) Color.red(color)), Byte.valueOf((byte) Color.green(color)), Byte.valueOf((byte) Color.blue(color))).toUpperCase());
                            ColorPicker.this.colorEditText[i2].setSelection(editable.length());
                        }
                        ColorPicker.this.radioButton[ColorPicker.this.selectedColor].setColor(color);
                        ColorPicker.this.delegate.setColor(color, ColorPicker.this.selectedColor, true);
                        ColorPicker.this.ignoreTextChange = false;
                    }
                });
                this.colorEditText[i2].setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.Components.ColorPicker$$ExternalSyntheticLambda1
                    @Override // android.widget.TextView.OnEditorActionListener
                    public final boolean onEditorAction(TextView textView, int i3, KeyEvent keyEvent) {
                        return ColorPicker.$r8$lambda$InqtIePNoE4CsS2SG6_Q5sSXZIs(textView, i3, keyEvent);
                    }
                });
            }
            this.colorEditText[i2].setTextSize(1, 16.0f);
            this.colorEditText[i2].setHintTextColor(getThemedColor(Theme.key_windowBackgroundWhiteHintText));
            EditTextBoldCursor editTextBoldCursor = this.colorEditText[i2];
            int i3 = Theme.key_windowBackgroundWhiteBlackText;
            editTextBoldCursor.setTextColor(getThemedColor(i3));
            this.colorEditText[i2].setCursorColor(getThemedColor(i3));
            this.colorEditText[i2].setCursorSize(AndroidUtilities.m1124dp(18.0f));
            this.colorEditText[i2].setCursorWidth(1.5f);
            this.colorEditText[i2].setSingleLine(true);
            this.colorEditText[i2].setGravity(19);
            this.colorEditText[i2].setHeaderHintColor(getThemedColor(Theme.key_windowBackgroundWhiteBlueHeader));
            this.colorEditText[i2].setTransformHintToHeader(true);
            this.colorEditText[i2].setInputType(524416);
            this.colorEditText[i2].setImeOptions(268435462);
            if (i2 == 1) {
                this.colorEditText[i2].requestFocus();
            } else if (i2 == 2 || i2 == 3) {
                this.colorEditText[i2].setVisibility(8);
            }
            i2++;
        }
        ImageView imageView = new ImageView(getContext());
        this.addButton = imageView;
        int i4 = Theme.key_dialogButtonSelector;
        imageView.setBackground(Theme.createSelectorDrawable(getThemedColor(i4), 1));
        this.addButton.setImageResource(C2888R.drawable.msg_add);
        ImageView imageView2 = this.addButton;
        int i5 = Theme.key_windowBackgroundWhiteBlackText;
        int themedColor = getThemedColor(i5);
        PorterDuff.Mode mode = PorterDuff.Mode.MULTIPLY;
        imageView2.setColorFilter(new PorterDuffColorFilter(themedColor, mode));
        ImageView imageView3 = this.addButton;
        ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER;
        imageView3.setScaleType(scaleType);
        this.addButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ColorPicker$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$2(view);
            }
        });
        this.addButton.setContentDescription(LocaleController.getString(C2888R.string.Add));
        addView(this.addButton, LayoutHelper.createFrame(30, 30.0f, 49, 36.0f, 1.0f, 0.0f, 0.0f));
        ImageView imageView4 = new ImageView(getContext()) { // from class: org.telegram.ui.Components.ColorPicker.6
            @Override // android.view.View
            public void setAlpha(float f) {
                super.setAlpha(f);
                ColorPicker.this.linearLayout.invalidate();
            }
        };
        this.clearButton = imageView4;
        imageView4.setBackground(Theme.createSelectorDrawable(getThemedColor(i4), 1));
        this.clearButton.setImageResource(C2888R.drawable.msg_close);
        this.clearButton.setColorFilter(new PorterDuffColorFilter(getThemedColor(i5), mode));
        this.clearButton.setAlpha(0.0f);
        this.clearButton.setScaleX(0.0f);
        this.clearButton.setScaleY(0.0f);
        this.clearButton.setScaleType(scaleType);
        this.clearButton.setVisibility(4);
        this.clearButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ColorPicker$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$3(view);
            }
        });
        this.clearButton.setContentDescription(LocaleController.getString(C2888R.string.ClearButton));
        addView(this.clearButton, LayoutHelper.createFrame(30, 30.0f, 51, 97.0f, 1.0f, 0.0f, 0.0f));
        TextView textView = new TextView(context);
        this.resetButton = textView;
        textView.setTextSize(1, 15.0f);
        this.resetButton.setTypeface(AndroidUtilities.bold());
        this.resetButton.setGravity(17);
        this.resetButton.setPadding(AndroidUtilities.m1124dp(4.0f), 0, AndroidUtilities.m1124dp(4.0f), 0);
        this.resetButton.setTextColor(getThemedColor(i5));
        addView(this.resetButton, LayoutHelper.createFrame(-2, 36.0f, 53, 0.0f, 3.0f, 14.0f, 0.0f));
        this.resetButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ColorPicker$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ColorPicker.$r8$lambda$MKFloAoZQIqBkwJxoCpBUNw1G_4(view);
            }
        });
        if (z) {
            ActionBarMenuItem actionBarMenuItem = new ActionBarMenuItem(context, null, 0, getThemedColor(i5));
            this.menuItem = actionBarMenuItem;
            actionBarMenuItem.setLongClickEnabled(false);
            this.menuItem.setIcon(C2888R.drawable.ic_ab_other);
            this.menuItem.setContentDescription(LocaleController.getString(C2888R.string.AccDescrMoreOptions));
            this.menuItem.addSubItem(1, C2888R.drawable.msg_edit, LocaleController.getString(C2888R.string.OpenInEditor));
            this.menuItem.addSubItem(2, C2888R.drawable.msg_share, LocaleController.getString(C2888R.string.ShareTheme));
            this.menuItem.addSubItem(3, C2888R.drawable.msg_delete, LocaleController.getString(C2888R.string.DeleteTheme));
            this.menuItem.setMenuYOffset(-AndroidUtilities.m1124dp(80.0f));
            this.menuItem.setSubMenuOpenSide(2);
            this.menuItem.setDelegate(new ActionBarMenuItem.ActionBarMenuItemDelegate() { // from class: org.telegram.ui.Components.ColorPicker$$ExternalSyntheticLambda5
                @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemDelegate
                public final void onItemClick(int i6) {
                    this.f$0.lambda$new$5(i6);
                }
            });
            this.menuItem.setAdditionalYOffset(AndroidUtilities.m1124dp(72.0f));
            this.menuItem.setTranslationX(AndroidUtilities.m1124dp(6.0f));
            this.menuItem.setBackgroundDrawable(Theme.createSelectorDrawable(getThemedColor(i4), 1));
            addView(this.menuItem, LayoutHelper.createFrame(30, 30.0f, 53, 0.0f, 2.0f, 10.0f, 0.0f));
            this.menuItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ColorPicker$$ExternalSyntheticLambda6
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$6(view);
                }
            });
        }
        updateColorsPosition(null, 0, false, getMeasuredWidth());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        RadioButton radioButton = (RadioButton) view;
        int i = 0;
        while (true) {
            RadioButton[] radioButtonArr = this.radioButton;
            if (i < radioButtonArr.length) {
                RadioButton radioButton2 = radioButtonArr[i];
                boolean z = radioButton2 == radioButton;
                radioButton2.setChecked(z, true);
                if (z) {
                    this.prevSelectedColor = this.selectedColor;
                    this.selectedColor = i;
                }
                i++;
            } else {
                int color = radioButton.getColor();
                setColorInner(color);
                this.colorEditText[1].setText(String.format("%02x%02x%02x", Byte.valueOf((byte) Color.red(color)), Byte.valueOf((byte) Color.green(color)), Byte.valueOf((byte) Color.blue(color))).toUpperCase());
                return;
            }
        }
    }

    public static /* synthetic */ boolean $r8$lambda$InqtIePNoE4CsS2SG6_Q5sSXZIs(TextView textView, int i, KeyEvent keyEvent) {
        if (i != 6) {
            return false;
        }
        AndroidUtilities.hideKeyboard(textView);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(View view) {
        if (this.colorsAnimator != null) {
            return;
        }
        int i = this.colorsCount;
        if (i == 1) {
            if (this.radioButton[1].getColor() == 0) {
                RadioButton[] radioButtonArr = this.radioButton;
                radioButtonArr[1].setColor(generateGradientColors(radioButtonArr[0].getColor()));
            }
            if (this.myMessagesColor) {
                this.delegate.setColor(this.radioButton[0].getColor(), 0, true);
            }
            this.delegate.setColor(this.radioButton[1].getColor(), 1, true);
            this.colorsCount = 2;
        } else if (i == 2) {
            this.colorsCount = 3;
            if (this.radioButton[2].getColor() == 0) {
                float[] fArr = new float[3];
                Color.colorToHSV(this.radioButton[0].getColor(), fArr);
                float f = fArr[0];
                if (f > 180.0f) {
                    fArr[0] = f - 60.0f;
                } else {
                    fArr[0] = f + 60.0f;
                }
                this.radioButton[2].setColor(Color.HSVToColor(255, fArr));
            }
            this.delegate.setColor(this.radioButton[2].getColor(), 2, true);
        } else {
            if (i != 3) {
                return;
            }
            this.colorsCount = 4;
            if (this.radioButton[3].getColor() == 0) {
                RadioButton[] radioButtonArr2 = this.radioButton;
                radioButtonArr2[3].setColor(generateGradientColors(radioButtonArr2[2].getColor()));
            }
            this.delegate.setColor(this.radioButton[3].getColor(), 3, true);
        }
        ArrayList arrayList = new ArrayList();
        int i2 = this.colorsCount;
        int i3 = this.maxColorsCount;
        Property property = View.TRANSLATION_X;
        Property property2 = View.SCALE_Y;
        Property property3 = View.SCALE_X;
        Property property4 = View.ALPHA;
        if (i2 < i3) {
            arrayList.add(ObjectAnimator.ofFloat(this.addButton, (Property<ImageView, Float>) property4, 1.0f));
            arrayList.add(ObjectAnimator.ofFloat(this.addButton, (Property<ImageView, Float>) property3, 1.0f));
            arrayList.add(ObjectAnimator.ofFloat(this.addButton, (Property<ImageView, Float>) property2, 1.0f));
            arrayList.add(ObjectAnimator.ofFloat(this.addButton, (Property<ImageView, Float>) property, (AndroidUtilities.m1124dp(30.0f) * (this.colorsCount - 1)) + (AndroidUtilities.m1124dp(13.0f) * (this.colorsCount - 1))));
        } else {
            arrayList.add(ObjectAnimator.ofFloat(this.addButton, (Property<ImageView, Float>) property, (AndroidUtilities.m1124dp(30.0f) * (this.colorsCount - 1)) + (AndroidUtilities.m1124dp(13.0f) * (this.colorsCount - 1))));
            arrayList.add(ObjectAnimator.ofFloat(this.addButton, (Property<ImageView, Float>) property4, 0.0f));
            arrayList.add(ObjectAnimator.ofFloat(this.addButton, (Property<ImageView, Float>) property3, 0.0f));
            arrayList.add(ObjectAnimator.ofFloat(this.addButton, (Property<ImageView, Float>) property2, 0.0f));
        }
        if (this.colorsCount > 1) {
            if (this.clearButton.getVisibility() != 0) {
                this.clearButton.setScaleX(0.0f);
                this.clearButton.setScaleY(0.0f);
            }
            this.clearButton.setVisibility(0);
            arrayList.add(ObjectAnimator.ofFloat(this.clearButton, (Property<ImageView, Float>) property4, 1.0f));
            arrayList.add(ObjectAnimator.ofFloat(this.clearButton, (Property<ImageView, Float>) property3, 1.0f));
            arrayList.add(ObjectAnimator.ofFloat(this.clearButton, (Property<ImageView, Float>) property2, 1.0f));
        }
        this.radioButton[this.colorsCount - 1].callOnClick();
        this.colorsAnimator = new AnimatorSet();
        updateColorsPosition(arrayList, 0, false, getMeasuredWidth());
        this.colorsAnimator.playTogether(arrayList);
        this.colorsAnimator.setDuration(180L);
        this.colorsAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT);
        this.colorsAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ColorPicker.5
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (ColorPicker.this.colorsCount == ColorPicker.this.maxColorsCount) {
                    ColorPicker.this.addButton.setVisibility(4);
                }
                ColorPicker.this.colorsAnimator = null;
            }
        });
        this.colorsAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3(View view) {
        RadioButton[] radioButtonArr;
        if (this.colorsAnimator != null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        int i = this.colorsCount;
        Property property = View.TRANSLATION_X;
        Property property2 = View.SCALE_Y;
        Property property3 = View.SCALE_X;
        Property property4 = View.ALPHA;
        if (i == 2) {
            this.colorsCount = 1;
            arrayList.add(ObjectAnimator.ofFloat(this.clearButton, (Property<ImageView, Float>) property4, 0.0f));
            arrayList.add(ObjectAnimator.ofFloat(this.clearButton, (Property<ImageView, Float>) property3, 0.0f));
            arrayList.add(ObjectAnimator.ofFloat(this.clearButton, (Property<ImageView, Float>) property2, 0.0f));
            arrayList.add(ObjectAnimator.ofFloat(this.addButton, (Property<ImageView, Float>) property, 0.0f));
        } else if (i == 3) {
            this.colorsCount = 2;
            arrayList.add(ObjectAnimator.ofFloat(this.addButton, (Property<ImageView, Float>) property, AndroidUtilities.m1124dp(30.0f) + AndroidUtilities.m1124dp(13.0f)));
        } else {
            if (i != 4) {
                return;
            }
            this.colorsCount = 3;
            arrayList.add(ObjectAnimator.ofFloat(this.addButton, (Property<ImageView, Float>) property, (AndroidUtilities.m1124dp(30.0f) * 2) + (AndroidUtilities.m1124dp(13.0f) * 2)));
        }
        if (this.colorsCount < this.maxColorsCount) {
            this.addButton.setVisibility(0);
            arrayList.add(ObjectAnimator.ofFloat(this.addButton, (Property<ImageView, Float>) property4, 1.0f));
            arrayList.add(ObjectAnimator.ofFloat(this.addButton, (Property<ImageView, Float>) property3, 1.0f));
            arrayList.add(ObjectAnimator.ofFloat(this.addButton, (Property<ImageView, Float>) property2, 1.0f));
        } else {
            arrayList.add(ObjectAnimator.ofFloat(this.addButton, (Property<ImageView, Float>) property4, 0.0f));
            arrayList.add(ObjectAnimator.ofFloat(this.addButton, (Property<ImageView, Float>) property3, 0.0f));
            arrayList.add(ObjectAnimator.ofFloat(this.addButton, (Property<ImageView, Float>) property2, 0.0f));
        }
        int i2 = this.selectedColor;
        if (i2 != 3) {
            RadioButton radioButton = this.radioButton[i2];
            int i3 = i2 + 1;
            while (true) {
                radioButtonArr = this.radioButton;
                if (i3 >= radioButtonArr.length) {
                    break;
                }
                radioButtonArr[i3 - 1] = radioButtonArr[i3];
                i3++;
            }
            radioButtonArr[3] = radioButton;
        }
        int i4 = this.prevSelectedColor;
        if (i4 >= 0 && i4 < this.selectedColor) {
            this.radioButton[i4].callOnClick();
        } else {
            this.radioButton[this.colorsCount - 1].callOnClick();
        }
        int i5 = 0;
        while (true) {
            RadioButton[] radioButtonArr2 = this.radioButton;
            if (i5 < radioButtonArr2.length) {
                if (i5 < this.colorsCount) {
                    this.delegate.setColor(radioButtonArr2[i5].getColor(), i5, i5 == this.radioButton.length - 1);
                } else {
                    this.delegate.setColor(0, i5, i5 == radioButtonArr2.length - 1);
                }
                i5++;
            } else {
                this.colorsAnimator = new AnimatorSet();
                updateColorsPosition(arrayList, this.selectedColor, true, getMeasuredWidth());
                this.colorsAnimator.playTogether(arrayList);
                this.colorsAnimator.setDuration(180L);
                this.colorsAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT);
                this.colorsAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ColorPicker.7
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        if (ColorPicker.this.colorsCount == 1) {
                            ColorPicker.this.clearButton.setVisibility(4);
                        }
                        for (int i6 = 0; i6 < ColorPicker.this.radioButton.length; i6++) {
                            if (ColorPicker.this.radioButton[i6].getTag(C2888R.id.index_tag) == null) {
                                ColorPicker.this.radioButton[i6].setVisibility(4);
                            }
                        }
                        ColorPicker.this.colorsAnimator = null;
                    }
                });
                this.colorsAnimator.start();
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$5(int i) {
        if (i == 1 || i == 2) {
            this.delegate.openThemeCreate(i == 2);
        } else if (i == 3) {
            this.delegate.deleteTheme();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$6(View view) {
        this.menuItem.toggleSubMenu();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        updateColorsPosition(null, 0, false, getMeasuredWidth());
    }

    private void updateColorsPosition(ArrayList arrayList, int i, boolean z, int i2) {
        int i3 = this.colorsCount;
        float f = this.radioContainer.getLeft() + ((AndroidUtilities.m1124dp(30.0f) * i3) + ((i3 - 1) * AndroidUtilities.m1124dp(13.0f))) > i2 - AndroidUtilities.m1124dp(this.currentResetType == 1 ? 50.0f : 0.0f) ? r2 - r4 : 0.0f;
        Property property = View.TRANSLATION_X;
        if (arrayList != null) {
            arrayList.add(ObjectAnimator.ofFloat(this.radioContainer, (Property<FrameLayout, Float>) property, -f));
        } else {
            this.radioContainer.setTranslationX(-f);
        }
        int i4 = 0;
        int iM1124dp = 0;
        while (true) {
            RadioButton[] radioButtonArr = this.radioButton;
            if (i4 >= radioButtonArr.length) {
                return;
            }
            boolean z2 = radioButtonArr[i4].getTag(C2888R.id.index_tag) != null;
            int i5 = this.colorsCount;
            Property property2 = View.SCALE_Y;
            Property property3 = View.SCALE_X;
            Property property4 = View.ALPHA;
            if (i4 < i5) {
                this.radioButton[i4].setVisibility(0);
                if (arrayList != null) {
                    if (!z2) {
                        arrayList.add(ObjectAnimator.ofFloat(this.radioButton[i4], (Property<RadioButton, Float>) property4, 1.0f));
                        arrayList.add(ObjectAnimator.ofFloat(this.radioButton[i4], (Property<RadioButton, Float>) property3, 1.0f));
                        arrayList.add(ObjectAnimator.ofFloat(this.radioButton[i4], (Property<RadioButton, Float>) property2, 1.0f));
                    }
                    if (z || !(z || i4 == this.colorsCount - 1)) {
                        arrayList.add(ObjectAnimator.ofFloat(this.radioButton[i4], (Property<RadioButton, Float>) property, iM1124dp));
                    } else {
                        this.radioButton[i4].setTranslationX(iM1124dp);
                    }
                } else {
                    this.radioButton[i4].setVisibility(0);
                    if (this.colorsAnimator == null) {
                        this.radioButton[i4].setAlpha(1.0f);
                        this.radioButton[i4].setScaleX(1.0f);
                        this.radioButton[i4].setScaleY(1.0f);
                    }
                    this.radioButton[i4].setTranslationX(iM1124dp);
                }
                this.radioButton[i4].setTag(C2888R.id.index_tag, 1);
            } else {
                if (arrayList == null) {
                    this.radioButton[i4].setVisibility(4);
                    if (this.colorsAnimator == null) {
                        this.radioButton[i4].setAlpha(0.0f);
                        this.radioButton[i4].setScaleX(0.0f);
                        this.radioButton[i4].setScaleY(0.0f);
                    }
                } else if (z2) {
                    arrayList.add(ObjectAnimator.ofFloat(this.radioButton[i4], (Property<RadioButton, Float>) property4, 0.0f));
                    arrayList.add(ObjectAnimator.ofFloat(this.radioButton[i4], (Property<RadioButton, Float>) property3, 0.0f));
                    arrayList.add(ObjectAnimator.ofFloat(this.radioButton[i4], (Property<RadioButton, Float>) property2, 0.0f));
                }
                if (!z) {
                    this.radioButton[i4].setTranslationX(iM1124dp);
                }
                this.radioButton[i4].setTag(C2888R.id.index_tag, null);
            }
            iM1124dp += AndroidUtilities.m1124dp(30.0f) + AndroidUtilities.m1124dp(13.0f);
            i4++;
        }
    }

    public void hideKeyboard() {
        AndroidUtilities.hideKeyboard(this.colorEditText[1]);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00a4  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void onDraw(Canvas canvas) {
        float f;
        float measuredWidth;
        int iM1124dp = AndroidUtilities.m1124dp(45.0f);
        float f2 = iM1124dp;
        canvas.drawBitmap(this.colorWheelBitmap, 0.0f, f2, (Paint) null);
        int height = iM1124dp + this.colorWheelBitmap.getHeight();
        canvas.drawRect(0.0f, f2, getMeasuredWidth(), iM1124dp + 1, this.linePaint);
        canvas.drawRect(0.0f, height - 1, getMeasuredWidth(), height, this.linePaint);
        float[] fArr = this.hsvTemp;
        float[] fArr2 = this.colorHSV;
        fArr[0] = fArr2[0];
        fArr[1] = fArr2[1];
        fArr[2] = 1.0f;
        int measuredWidth2 = (int) ((fArr2[0] * getMeasuredWidth()) / 360.0f);
        int height2 = (int) (f2 + (this.colorWheelBitmap.getHeight() * (1.0f - this.colorHSV[1])));
        if (!this.circlePressed) {
            int iM1124dp2 = AndroidUtilities.m1124dp(16.0f);
            float interpolation = CubicBezierInterpolator.EASE_OUT.getInterpolation(this.pressedMoveProgress);
            if (measuredWidth2 < iM1124dp2) {
                measuredWidth = measuredWidth2 + ((iM1124dp2 - measuredWidth2) * interpolation);
            } else {
                if (measuredWidth2 > getMeasuredWidth() - iM1124dp2) {
                    measuredWidth = measuredWidth2 - ((measuredWidth2 - (getMeasuredWidth() - iM1124dp2)) * interpolation);
                }
                if (height2 >= iM1124dp + iM1124dp2) {
                    height2 = (int) (height2 + (interpolation * (r5 - height2)));
                } else if (height2 > (this.colorWheelBitmap.getHeight() + iM1124dp) - iM1124dp2) {
                    height2 = (int) (height2 - (interpolation * (height2 - ((iM1124dp + this.colorWheelBitmap.getHeight()) - iM1124dp2))));
                }
            }
            measuredWidth2 = (int) measuredWidth;
            if (height2 >= iM1124dp + iM1124dp2) {
            }
        }
        drawPointerArrow(canvas, measuredWidth2, height2, Color.HSVToColor(this.hsvTemp), false);
        this.sliderRect.set(AndroidUtilities.m1124dp(22.0f), AndroidUtilities.m1124dp(26.0f) + height, getMeasuredWidth() - AndroidUtilities.m1124dp(22.0f), height + AndroidUtilities.m1124dp(34.0f));
        if (this.colorGradient == null) {
            float[] fArr3 = this.hsvTemp;
            fArr3[2] = this.minHsvBrightness;
            int iHSVToColor = Color.HSVToColor(fArr3);
            float[] fArr4 = this.hsvTemp;
            fArr4[2] = this.maxHsvBrightness;
            int iHSVToColor2 = Color.HSVToColor(fArr4);
            RectF rectF = this.sliderRect;
            float f3 = rectF.left;
            float f4 = rectF.top;
            LinearGradient linearGradient = new LinearGradient(f3, f4, rectF.right, f4, new int[]{iHSVToColor2, iHSVToColor}, (float[]) null, Shader.TileMode.CLAMP);
            this.colorGradient = linearGradient;
            this.valueSliderPaint.setShader(linearGradient);
        }
        canvas.drawRoundRect(this.sliderRect, AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f), this.valueSliderPaint);
        if (this.minHsvBrightness == this.maxHsvBrightness) {
            f = 0.5f;
        } else {
            float brightness = getBrightness();
            float f5 = this.minHsvBrightness;
            f = (brightness - f5) / (this.maxHsvBrightness - f5);
        }
        RectF rectF2 = this.sliderRect;
        drawPointerArrow(canvas, (int) (rectF2.left + ((1.0f - f) * rectF2.width())), (int) this.sliderRect.centerY(), getColor(), true);
        if (this.circlePressed || this.pressedMoveProgress >= 1.0f) {
            return;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j = jElapsedRealtime - this.lastUpdateTime;
        this.lastUpdateTime = jElapsedRealtime;
        float f6 = this.pressedMoveProgress + (j / 180.0f);
        this.pressedMoveProgress = f6;
        if (f6 > 1.0f) {
            this.pressedMoveProgress = 1.0f;
        }
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getFieldColor(int i, int i2) {
        try {
            return Integer.parseInt(this.colorEditText[i].getText().toString(), 16) | (-16777216);
        } catch (Exception unused) {
            return i2;
        }
    }

    private void drawPointerArrow(Canvas canvas, int i, int i2, int i3, boolean z) {
        AndroidUtilities.m1124dp(z ? 12.0f : 16.0f);
        this.circlePaint.setColor(-9408400);
        float f = i;
        float f2 = i2;
        canvas.drawCircle(f, f2, AndroidUtilities.m1124dp(z ? 11.5f : 15.5f), this.circlePaint);
        this.circlePaint.setColor(-1);
        canvas.drawCircle(f, f2, AndroidUtilities.m1124dp(z ? 11.0f : 15.0f), this.circlePaint);
        this.circlePaint.setColor(i3);
        canvas.drawCircle(f, f2, AndroidUtilities.m1124dp(z ? 9.0f : 13.0f), this.circlePaint);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        if (this.colorWheelWidth != i) {
            this.colorWheelWidth = i;
            this.colorWheelBitmap = createColorWheelBitmap(i, AndroidUtilities.m1124dp(180.0f));
            this.colorGradient = null;
        }
    }

    private Bitmap createColorWheelBitmap(int i, int i2) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
        float f = i;
        int[] iArr = {Opcodes.V_PREVIEW, -256, -16711936, -16711681, -16776961, -65281, Opcodes.V_PREVIEW};
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        float f2 = i2;
        this.colorWheelPaint.setShader(new ComposeShader(new LinearGradient(0.0f, i2 / 3, 0.0f, f2, new int[]{-1, 0}, (float[]) null, tileMode), new LinearGradient(0.0f, 0.0f, f, 0.0f, iArr, (float[]) null, tileMode), PorterDuff.Mode.MULTIPLY));
        new Canvas(bitmapCreateBitmap).drawRect(0.0f, 0.0f, f, f2, this.colorWheelPaint);
        return bitmapCreateBitmap;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000b, code lost:
    
        if (r0 != 2) goto L8;
     */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00f8  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouchEvent(MotionEvent motionEvent) {
        float f;
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action == 1) {
                this.colorPressed = false;
                this.circlePressed = false;
                this.lastUpdateTime = SystemClock.elapsedRealtime();
                invalidate();
            }
            return super.onTouchEvent(motionEvent);
        }
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        int iM1124dp = AndroidUtilities.m1124dp(45.0f);
        if (this.circlePressed || (!this.colorPressed && y >= iM1124dp && y <= this.colorWheelBitmap.getHeight() + iM1124dp)) {
            if (!this.circlePressed) {
                getParent().requestDisallowInterceptTouchEvent(true);
            }
            this.circlePressed = true;
            this.pressedMoveProgress = 0.0f;
            this.lastUpdateTime = SystemClock.elapsedRealtime();
            x = Math.max(0, Math.min(x, this.colorWheelBitmap.getWidth()));
            y = Math.max(iM1124dp, Math.min(y, this.colorWheelBitmap.getHeight() + iM1124dp));
            if (this.minHsvBrightness == this.maxHsvBrightness) {
                f = 0.5f;
            } else {
                float brightness = getBrightness();
                float f2 = this.minHsvBrightness;
                f = (brightness - f2) / (this.maxHsvBrightness - f2);
            }
            this.colorHSV[0] = (x * 360.0f) / this.colorWheelBitmap.getWidth();
            this.colorHSV[1] = 1.0f - ((1.0f / this.colorWheelBitmap.getHeight()) * (y - iM1124dp));
            updateHsvMinMaxBrightness();
            this.colorHSV[2] = (this.minHsvBrightness * (1.0f - f)) + (this.maxHsvBrightness * f);
            this.colorGradient = null;
        }
        if (this.colorPressed) {
            float f3 = x;
            RectF rectF = this.sliderRect;
            float fWidth = 1.0f - ((f3 - rectF.left) / rectF.width());
            float f4 = fWidth >= 0.0f ? fWidth > 1.0f ? 1.0f : fWidth : 0.0f;
            this.colorHSV[2] = (this.minHsvBrightness * (1.0f - f4)) + (this.maxHsvBrightness * f4);
            if (!this.colorPressed) {
                getParent().requestDisallowInterceptTouchEvent(true);
            }
            this.colorPressed = true;
        } else if (!this.circlePressed) {
            float f5 = x;
            RectF rectF2 = this.sliderRect;
            if (f5 >= rectF2.left && f5 <= rectF2.right) {
                float f6 = y;
                if (f6 >= rectF2.top - AndroidUtilities.m1124dp(7.0f) && f6 <= this.sliderRect.bottom + AndroidUtilities.m1124dp(7.0f)) {
                }
            }
        }
        if (this.colorPressed || this.circlePressed) {
            int color = getColor();
            if (!this.ignoreTextChange) {
                int iRed = Color.red(color);
                int iGreen = Color.green(color);
                int iBlue = Color.blue(color);
                this.ignoreTextChange = true;
                String upperCase = String.format("%02x%02x%02x", Byte.valueOf((byte) iRed), Byte.valueOf((byte) iGreen), Byte.valueOf((byte) iBlue)).toUpperCase();
                Editable text = this.colorEditText[1].getText();
                text.replace(0, text.length(), upperCase);
                this.radioButton[this.selectedColor].setColor(color);
                this.ignoreTextChange = false;
            }
            this.delegate.setColor(color, this.selectedColor, false);
            invalidate();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setColorInner(int i) {
        Color.colorToHSV(i, this.colorHSV);
        int defaultColor = this.delegate.getDefaultColor(this.selectedColor);
        if (defaultColor == 0 || defaultColor != i) {
            updateHsvMinMaxBrightness();
        }
        this.colorGradient = null;
        invalidate();
    }

    public void setColor(int i, int i2) {
        if (!this.ignoreTextChange) {
            this.ignoreTextChange = true;
            if (this.selectedColor == i2) {
                String upperCase = String.format("%02x%02x%02x", Byte.valueOf((byte) Color.red(i)), Byte.valueOf((byte) Color.green(i)), Byte.valueOf((byte) Color.blue(i))).toUpperCase();
                this.colorEditText[1].setText(upperCase);
                this.colorEditText[1].setSelection(upperCase.length());
            }
            this.radioButton[i2].setColor(i);
            this.ignoreTextChange = false;
        }
        setColorInner(i);
    }

    public void setHasChanges(final boolean z) {
        if (!z || this.resetButton.getTag() == null) {
            if ((z || this.resetButton.getTag() != null) && this.clearButton.getTag() == null) {
                this.resetButton.setTag(z ? 1 : null);
                AnimatorSet animatorSet = new AnimatorSet();
                ArrayList arrayList = new ArrayList();
                if (z) {
                    this.resetButton.setVisibility(0);
                }
                arrayList.add(ObjectAnimator.ofFloat(this.resetButton, (Property<TextView, Float>) View.ALPHA, z ? 1.0f : 0.0f));
                animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ColorPicker.8
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        if (z) {
                            return;
                        }
                        ColorPicker.this.resetButton.setVisibility(8);
                    }
                });
                animatorSet.playTogether(arrayList);
                animatorSet.setDuration(180L);
                animatorSet.start();
            }
        }
    }

    public void setType(int i, boolean z, final int i2, int i3, boolean z2, int i4, boolean z3) {
        if (i != this.currentResetType) {
            this.prevSelectedColor = 0;
            this.selectedColor = 0;
            int i5 = 0;
            while (i5 < 4) {
                this.radioButton[i5].setChecked(i5 == this.selectedColor, true);
                i5++;
            }
        }
        this.maxColorsCount = i2;
        this.currentResetType = i;
        this.myMessagesColor = z2;
        this.colorsCount = i3;
        if (i3 == 1) {
            this.addButton.setTranslationX(0.0f);
        } else if (i3 == 2) {
            this.addButton.setTranslationX(AndroidUtilities.m1124dp(30.0f) + AndroidUtilities.m1124dp(13.0f));
        } else if (i3 == 3) {
            this.addButton.setTranslationX((AndroidUtilities.m1124dp(30.0f) * 2) + (AndroidUtilities.m1124dp(13.0f) * 2));
        } else {
            this.addButton.setTranslationX((AndroidUtilities.m1124dp(30.0f) * 3) + (AndroidUtilities.m1124dp(13.0f) * 3));
        }
        ActionBarMenuItem actionBarMenuItem = this.menuItem;
        if (actionBarMenuItem != null) {
            if (i == 1) {
                actionBarMenuItem.setVisibility(0);
            } else {
                actionBarMenuItem.setVisibility(8);
                this.clearButton.setTranslationX(0.0f);
            }
        }
        if (i2 <= 1) {
            this.addButton.setVisibility(8);
            this.clearButton.setVisibility(8);
        } else {
            if (i3 < i2) {
                this.addButton.setVisibility(0);
                this.addButton.setScaleX(1.0f);
                this.addButton.setScaleY(1.0f);
                this.addButton.setAlpha(1.0f);
            } else {
                this.addButton.setVisibility(8);
            }
            if (i3 > 1) {
                this.clearButton.setVisibility(0);
                this.clearButton.setScaleX(1.0f);
                this.clearButton.setScaleY(1.0f);
                this.clearButton.setAlpha(1.0f);
            } else {
                this.clearButton.setVisibility(8);
            }
        }
        this.linearLayout.invalidate();
        updateColorsPosition(null, 0, false, getMeasuredWidth());
        ArrayList arrayList = z3 ? new ArrayList() : null;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(arrayList);
        animatorSet.setDuration(180L);
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ColorPicker.9
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (i2 <= 1) {
                    ColorPicker.this.clearButton.setVisibility(8);
                }
            }
        });
        animatorSet.start();
    }

    public int getColor() {
        float[] fArr = this.hsvTemp;
        float[] fArr2 = this.colorHSV;
        fArr[0] = fArr2[0];
        fArr[1] = fArr2[1];
        fArr[2] = getBrightness();
        return (Color.HSVToColor(this.hsvTemp) & 16777215) | (-16777216);
    }

    private float getBrightness() {
        return Math.max(this.minHsvBrightness, Math.min(this.colorHSV[2], this.maxHsvBrightness));
    }

    private void updateHsvMinMaxBrightness() {
        ImageView imageView = this.clearButton;
        if (imageView == null) {
            return;
        }
        float f = imageView.getTag() != null ? 0.0f : this.minBrightness;
        float f2 = this.clearButton.getTag() != null ? 1.0f : this.maxBrightness;
        float[] fArr = this.colorHSV;
        float f3 = fArr[2];
        if (f == 0.0f && f2 == 1.0f) {
            this.minHsvBrightness = 0.0f;
            this.maxHsvBrightness = 1.0f;
            return;
        }
        fArr[2] = 1.0f;
        int iHSVToColor = Color.HSVToColor(fArr);
        this.colorHSV[2] = f3;
        float fComputePerceivedBrightness = AndroidUtilities.computePerceivedBrightness(iHSVToColor);
        float fMax = Math.max(0.0f, Math.min(f / fComputePerceivedBrightness, 1.0f));
        this.minHsvBrightness = fMax;
        this.maxHsvBrightness = Math.max(fMax, Math.min(f2 / fComputePerceivedBrightness, 1.0f));
    }

    public void setMinBrightness(float f) {
        this.minBrightness = f;
        updateHsvMinMaxBrightness();
    }

    public void setMaxBrightness(float f) {
        this.maxBrightness = f;
        updateHsvMinMaxBrightness();
    }

    public void provideThemeDescriptions(List list) {
        for (int i = 0; i < this.colorEditText.length; i++) {
            EditTextBoldCursor editTextBoldCursor = this.colorEditText[i];
            int i2 = ThemeDescription.FLAG_TEXTCOLOR;
            int i3 = Theme.key_windowBackgroundWhiteBlackText;
            list.add(new ThemeDescription(editTextBoldCursor, i2, null, null, null, null, i3));
            list.add(new ThemeDescription(this.colorEditText[i], ThemeDescription.FLAG_CURSORCOLOR, null, null, null, null, i3));
            list.add(new ThemeDescription(this.colorEditText[i], ThemeDescription.FLAG_HINTTEXTCOLOR, null, null, null, null, Theme.key_windowBackgroundWhiteHintText));
            list.add(new ThemeDescription(this.colorEditText[i], ThemeDescription.FLAG_HINTTEXTCOLOR | ThemeDescription.FLAG_PROGRESSBAR, null, null, null, null, Theme.key_windowBackgroundWhiteBlueHeader));
            list.add(new ThemeDescription(this.colorEditText[i], ThemeDescription.FLAG_BACKGROUNDFILTER, null, null, null, null, Theme.key_windowBackgroundWhiteInputField));
            list.add(new ThemeDescription(this.colorEditText[i], ThemeDescription.FLAG_BACKGROUNDFILTER | ThemeDescription.FLAG_DRAWABLESELECTEDSTATE, null, null, null, null, Theme.key_windowBackgroundWhiteInputFieldActivated));
        }
        ImageView imageView = this.clearButton;
        int i4 = ThemeDescription.FLAG_IMAGECOLOR;
        int i5 = Theme.key_windowBackgroundWhiteBlackText;
        list.add(new ThemeDescription(imageView, i4, null, null, null, null, i5));
        ImageView imageView2 = this.clearButton;
        int i6 = ThemeDescription.FLAG_BACKGROUNDFILTER;
        int i7 = Theme.key_dialogButtonSelector;
        list.add(new ThemeDescription(imageView2, i6, null, null, null, null, i7));
        if (this.menuItem != null) {
            ThemeDescription.ThemeDescriptionDelegate themeDescriptionDelegate = new ThemeDescription.ThemeDescriptionDelegate() { // from class: org.telegram.ui.Components.ColorPicker$$ExternalSyntheticLambda7
                @Override // org.telegram.ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
                public final void didSetColor() {
                    this.f$0.lambda$provideThemeDescriptions$7();
                }

                @Override // org.telegram.ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
                public /* synthetic */ void onAnimationProgress(float f) {
                    ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
                }
            };
            list.add(new ThemeDescription(this.menuItem, 0, null, null, null, themeDescriptionDelegate, i5));
            list.add(new ThemeDescription(this.menuItem, 0, null, null, null, themeDescriptionDelegate, i7));
            list.add(new ThemeDescription(this.menuItem, 0, null, null, null, themeDescriptionDelegate, Theme.key_actionBarDefaultSubmenuItem));
            list.add(new ThemeDescription(this.menuItem, 0, null, null, null, themeDescriptionDelegate, Theme.key_actionBarDefaultSubmenuItemIcon));
            list.add(new ThemeDescription(this.menuItem, 0, null, null, null, themeDescriptionDelegate, Theme.key_actionBarDefaultSubmenuBackground));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$provideThemeDescriptions$7() {
        this.menuItem.setIconColor(getThemedColor(Theme.key_windowBackgroundWhiteBlackText));
        Theme.setDrawableColor(this.menuItem.getBackground(), getThemedColor(Theme.key_dialogButtonSelector));
        this.menuItem.setPopupItemsColor(getThemedColor(Theme.key_actionBarDefaultSubmenuItem), false);
        this.menuItem.setPopupItemsColor(getThemedColor(Theme.key_actionBarDefaultSubmenuItemIcon), true);
        this.menuItem.redrawPopup(getThemedColor(Theme.key_actionBarDefaultSubmenuBackground));
    }

    public interface ColorPickerDelegate {
        void deleteTheme();

        int getDefaultColor(int i);

        void openThemeCreate(boolean z);

        void setColor(int i, int i2, boolean z);

        /* JADX INFO: renamed from: org.telegram.ui.Components.ColorPicker$ColorPickerDelegate$-CC, reason: invalid class name */
        public abstract /* synthetic */ class CC {
            public static void $default$openThemeCreate(ColorPickerDelegate colorPickerDelegate, boolean z) {
            }

            public static void $default$deleteTheme(ColorPickerDelegate colorPickerDelegate) {
            }

            public static int $default$getDefaultColor(ColorPickerDelegate colorPickerDelegate, int i) {
                return 0;
            }
        }
    }

    public static int generateGradientColors(int i) {
        float[] fArr = new float[3];
        Color.colorToHSV(i, fArr);
        float f = fArr[1];
        if (f > 0.5f) {
            fArr[1] = f - 0.15f;
        } else {
            fArr[1] = f + 0.15f;
        }
        float f2 = fArr[0];
        if (f2 > 180.0f) {
            fArr[0] = f2 - 20.0f;
        } else {
            fArr[0] = f2 + 20.0f;
        }
        return Color.HSVToColor(255, fArr);
    }

    public void setResourcesProvider(Theme.ResourcesProvider resourcesProvider) {
        this.resourcesProvider = resourcesProvider;
    }

    @Override // android.view.View
    public void invalidate() {
        super.invalidate();
        this.linearLayout.invalidate();
    }
}
