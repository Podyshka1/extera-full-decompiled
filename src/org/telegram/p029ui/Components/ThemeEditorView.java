package org.telegram.p029ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ComposeShader;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.SweepGradient;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Editable;
import android.text.InputFilter;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ForegroundColorSpan;
import android.util.Property;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Keep;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.ActionBar;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.BottomSheet;
import org.telegram.p029ui.ActionBar.INavigationLayout;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.ActionBar.ThemeColors;
import org.telegram.p029ui.ActionBar.ThemeDescription;
import org.telegram.p029ui.Cells.TextColorThemeCell;
import org.telegram.p029ui.Components.RecyclerListView;
import org.telegram.p029ui.Components.ThemeEditorView;
import org.telegram.p029ui.Components.WallpaperUpdater;
import org.telegram.p029ui.LaunchActivity;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes3.dex */
public class ThemeEditorView {
    private static volatile ThemeEditorView Instance;
    private ArrayList currentThemeDesription;
    private int currentThemeDesriptionPosition;
    private DecelerateInterpolator decelerateInterpolator;
    private EditorAlert editorAlert;
    private boolean hidden;
    private Activity parentActivity;
    private SharedPreferences preferences;
    private Theme.ThemeInfo themeInfo;
    private WallpaperUpdater wallpaperUpdater;
    private WindowManager.LayoutParams windowLayoutParams;
    private WindowManager windowManager;
    private FrameLayout windowView;
    private final int editorWidth = AndroidUtilities.m1124dp(54.0f);
    private final int editorHeight = AndroidUtilities.m1124dp(54.0f);

    public static ThemeEditorView getInstance() {
        return Instance;
    }

    public void destroy() {
        FrameLayout frameLayout;
        this.wallpaperUpdater.cleanup();
        if (this.parentActivity == null || (frameLayout = this.windowView) == null) {
            return;
        }
        try {
            this.windowManager.removeViewImmediate(frameLayout);
            this.windowView = null;
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
        try {
            EditorAlert editorAlert = this.editorAlert;
            if (editorAlert != null) {
                editorAlert.lambda$new$0();
                this.editorAlert = null;
            }
        } catch (Exception e2) {
            FileLog.m1136e(e2);
        }
        this.parentActivity = null;
        Instance = null;
    }

    /* JADX INFO: loaded from: classes7.dex */
    public class EditorAlert extends BottomSheet {
        private boolean animationInProgress;
        private FrameLayout bottomLayout;
        private FrameLayout bottomSaveLayout;
        private AnimatorSet colorChangeAnimation;
        private ColorPicker colorPicker;
        private FrameLayout frameLayout;
        private boolean ignoreTextChange;
        private LinearLayoutManager layoutManager;
        private ListAdapter listAdapter;
        private RecyclerListView listView;
        private int previousScrollPosition;
        private int scrollOffsetY;
        private SearchAdapter searchAdapter;
        private EmptyTextProgressView searchEmptyView;
        private SearchField searchField;
        private View[] shadow;
        private AnimatorSet[] shadowAnimation;
        private Drawable shadowDrawable;
        private boolean startedColorChange;
        private int topBeforeSwitch;

        @Override // org.telegram.p029ui.ActionBar.BottomSheet
        protected boolean canDismissWithSwipe() {
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        class SearchField extends FrameLayout {
            private ImageView clearSearchImageView;
            private EditTextBoldCursor searchEditText;

            public SearchField(Context context) {
                super(context);
                View view = new View(context);
                view.setBackgroundDrawable(Theme.createRoundRectDrawable(AndroidUtilities.m1124dp(18.0f), -854795));
                addView(view, LayoutHelper.createFrame(-1, 36.0f, 51, 14.0f, 11.0f, 14.0f, 0.0f));
                ImageView imageView = new ImageView(context);
                ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER;
                imageView.setScaleType(scaleType);
                imageView.setImageResource(C2888R.drawable.smiles_inputsearch);
                imageView.setColorFilter(new PorterDuffColorFilter(-6182737, PorterDuff.Mode.MULTIPLY));
                addView(imageView, LayoutHelper.createFrame(36, 36.0f, 51, 16.0f, 11.0f, 0.0f, 0.0f));
                ImageView imageView2 = new ImageView(context);
                this.clearSearchImageView = imageView2;
                imageView2.setScaleType(scaleType);
                ImageView imageView3 = this.clearSearchImageView;
                CloseProgressDrawable2 closeProgressDrawable2 = new CloseProgressDrawable2() { // from class: org.telegram.ui.Components.ThemeEditorView.EditorAlert.SearchField.1
                    @Override // org.telegram.p029ui.Components.CloseProgressDrawable2
                    public int getCurrentColor() {
                        return -6182737;
                    }
                };
                imageView3.setImageDrawable(closeProgressDrawable2);
                closeProgressDrawable2.setSide(AndroidUtilities.m1124dp(7.0f));
                this.clearSearchImageView.setScaleX(0.1f);
                this.clearSearchImageView.setScaleY(0.1f);
                this.clearSearchImageView.setAlpha(0.0f);
                addView(this.clearSearchImageView, LayoutHelper.createFrame(36, 36.0f, 53, 14.0f, 11.0f, 14.0f, 0.0f));
                this.clearSearchImageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ThemeEditorView$EditorAlert$SearchField$$ExternalSyntheticLambda0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        this.f$0.lambda$new$0(view2);
                    }
                });
                EditTextBoldCursor editTextBoldCursor = new EditTextBoldCursor(context) { // from class: org.telegram.ui.Components.ThemeEditorView.EditorAlert.SearchField.2
                    @Override // org.telegram.p029ui.Components.EditTextEffects, android.view.View
                    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
                        motionEventObtain.setLocation(motionEventObtain.getRawX(), motionEventObtain.getRawY() - ((BottomSheet) EditorAlert.this).containerView.getTranslationY());
                        EditorAlert.this.listView.dispatchTouchEvent(motionEventObtain);
                        motionEventObtain.recycle();
                        return super.dispatchTouchEvent(motionEvent);
                    }
                };
                this.searchEditText = editTextBoldCursor;
                editTextBoldCursor.setTextSize(1, 16.0f);
                this.searchEditText.setHintTextColor(-6774617);
                this.searchEditText.setTextColor(-14540254);
                this.searchEditText.setBackgroundDrawable(null);
                this.searchEditText.setPadding(0, 0, 0, 0);
                this.searchEditText.setMaxLines(1);
                this.searchEditText.setLines(1);
                this.searchEditText.setSingleLine(true);
                this.searchEditText.setImeOptions(268435459);
                this.searchEditText.setHint(LocaleController.getString(C2888R.string.Search));
                this.searchEditText.setCursorColor(-11491093);
                this.searchEditText.setCursorSize(AndroidUtilities.m1124dp(20.0f));
                this.searchEditText.setCursorWidth(1.5f);
                addView(this.searchEditText, LayoutHelper.createFrame(-1, 40.0f, 51, 54.0f, 9.0f, 46.0f, 0.0f));
                this.searchEditText.addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.Components.ThemeEditorView.EditorAlert.SearchField.3
                    @Override // android.text.TextWatcher
                    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                    }

                    @Override // android.text.TextWatcher
                    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                    }

                    @Override // android.text.TextWatcher
                    public void afterTextChanged(Editable editable) {
                        boolean z = SearchField.this.searchEditText.length() > 0;
                        if (z != (SearchField.this.clearSearchImageView.getAlpha() != 0.0f)) {
                            SearchField.this.clearSearchImageView.animate().alpha(z ? 1.0f : 0.0f).setDuration(150L).scaleX(z ? 1.0f : 0.1f).scaleY(z ? 1.0f : 0.1f).start();
                        }
                        String string = SearchField.this.searchEditText.getText().toString();
                        if (string.length() != 0) {
                            if (EditorAlert.this.searchEmptyView != null) {
                                EditorAlert.this.searchEmptyView.setText(LocaleController.getString(C2888R.string.NoResult));
                            }
                        } else if (EditorAlert.this.listView.getAdapter() != EditorAlert.this.listAdapter) {
                            int currentTop = EditorAlert.this.getCurrentTop();
                            EditorAlert.this.searchEmptyView.setText(LocaleController.getString(C2888R.string.NoChats));
                            EditorAlert.this.searchEmptyView.showTextView();
                            EditorAlert.this.listView.setAdapter(EditorAlert.this.listAdapter);
                            EditorAlert.this.listAdapter.notifyDataSetChanged();
                            if (currentTop > 0) {
                                EditorAlert.this.layoutManager.scrollToPositionWithOffset(0, -currentTop);
                            }
                        }
                        if (EditorAlert.this.searchAdapter != null) {
                            EditorAlert.this.searchAdapter.searchDialogs(string);
                        }
                    }
                });
                this.searchEditText.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.Components.ThemeEditorView$EditorAlert$SearchField$$ExternalSyntheticLambda1
                    @Override // android.widget.TextView.OnEditorActionListener
                    public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                        return this.f$0.lambda$new$1(textView, i, keyEvent);
                    }
                });
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$new$0(View view) {
                this.searchEditText.setText(_UrlKt.FRAGMENT_ENCODE_SET);
                AndroidUtilities.showKeyboard(this.searchEditText);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ boolean lambda$new$1(TextView textView, int i, KeyEvent keyEvent) {
                if (keyEvent == null) {
                    return false;
                }
                if ((keyEvent.getAction() != 1 || keyEvent.getKeyCode() != 84) && (keyEvent.getAction() != 0 || keyEvent.getKeyCode() != 66)) {
                    return false;
                }
                AndroidUtilities.hideKeyboard(this.searchEditText);
                return false;
            }

            public void showKeyboard() {
                this.searchEditText.requestFocus();
                AndroidUtilities.showKeyboard(this.searchEditText);
            }

            @Override // android.view.ViewGroup, android.view.ViewParent
            public void requestDisallowInterceptTouchEvent(boolean z) {
                super.requestDisallowInterceptTouchEvent(z);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        class ColorPicker extends FrameLayout {
            private float alpha;
            private LinearGradient alphaGradient;
            private boolean alphaPressed;
            private Paint circlePaint;
            private boolean circlePressed;
            private final EditTextBoldCursor[] colorEditText;
            private LinearGradient colorGradient;
            private float[] colorHSV;
            private boolean colorPressed;
            private Bitmap colorWheelBitmap;
            private Paint colorWheelPaint;
            private int colorWheelRadius;
            private DecelerateInterpolator decelerateInterpolator;
            private float[] hsvTemp;
            private LinearLayout linearLayout;
            private final OutlineTextContainerView[] outlineContainer;
            private final int paramValueSliderWidth;
            private Paint valueSliderPaint;

            public ColorPicker(Context context) {
                super(context);
                this.paramValueSliderWidth = AndroidUtilities.m1124dp(20.0f);
                this.colorEditText = new EditTextBoldCursor[2];
                this.outlineContainer = new OutlineTextContainerView[2];
                this.colorHSV = new float[]{0.0f, 0.0f, 1.0f};
                this.alpha = 1.0f;
                this.hsvTemp = new float[3];
                this.decelerateInterpolator = new DecelerateInterpolator();
                setWillNotDraw(false);
                this.circlePaint = new Paint(1);
                Paint paint = new Paint();
                this.colorWheelPaint = paint;
                paint.setAntiAlias(true);
                this.colorWheelPaint.setDither(true);
                Paint paint2 = new Paint();
                this.valueSliderPaint = paint2;
                paint2.setAntiAlias(true);
                this.valueSliderPaint.setDither(true);
                LinearLayout linearLayout = new LinearLayout(context);
                this.linearLayout = linearLayout;
                linearLayout.setOrientation(0);
                addView(this.linearLayout, LayoutHelper.createFrame(-2, -2, 49));
                final int i = 0;
                while (i < 2) {
                    this.outlineContainer[i] = new OutlineTextContainerView(context);
                    this.outlineContainer[i].setUseDefaultColor(true);
                    this.outlineContainer[i].updateColor();
                    this.outlineContainer[i].setText(i == 0 ? "HEX" : "B%");
                    this.linearLayout.addView(this.outlineContainer[i], LayoutHelper.createLinear(i == 0 ? 125 : 65, 48, 0.0f, 0.0f, i == 0 ? 16.0f : 0.0f, 0.0f));
                    this.colorEditText[i] = new EditTextBoldCursor(context);
                    this.colorEditText[i].setTextColor(-14606047);
                    this.colorEditText[i].setCursorColor(-14606047);
                    this.colorEditText[i].setCursorSize(AndroidUtilities.m1124dp(20.0f));
                    this.colorEditText[i].setCursorWidth(1.5f);
                    this.colorEditText[i].setTextSize(1, 18.0f);
                    this.colorEditText[i].setBackground(null);
                    this.colorEditText[i].setMaxLines(1);
                    this.colorEditText[i].setTag(Integer.valueOf(i));
                    int iM1124dp = AndroidUtilities.m1124dp(2.0f);
                    this.colorEditText[i].setPadding(iM1124dp, iM1124dp, iM1124dp, iM1124dp);
                    this.colorEditText[i].setGravity(17);
                    if (i == 0) {
                        this.colorEditText[i].setInputType(1);
                    } else {
                        this.colorEditText[i].setInputType(2);
                    }
                    this.colorEditText[i].setImeOptions((i == 1 ? 6 : 5) | 268435456);
                    this.colorEditText[i].setFilters(new InputFilter[]{new InputFilter.LengthFilter(i == 0 ? 9 : 3)});
                    this.colorEditText[i].setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: org.telegram.ui.Components.ThemeEditorView$EditorAlert$ColorPicker$$ExternalSyntheticLambda0
                        @Override // android.view.View.OnFocusChangeListener
                        public final void onFocusChange(View view, boolean z) {
                            this.f$0.lambda$new$0(i, view, z);
                        }
                    });
                    this.outlineContainer[i].addView(this.colorEditText[i], LayoutHelper.createFrame(-1, 42.0f));
                    this.outlineContainer[i].attachEditText(this.colorEditText[i]);
                    this.colorEditText[i].addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.Components.ThemeEditorView.EditorAlert.ColorPicker.1
                        @Override // android.text.TextWatcher
                        public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                        }

                        @Override // android.text.TextWatcher
                        public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                        }

                        @Override // android.text.TextWatcher
                        public void afterTextChanged(Editable editable) {
                            if (EditorAlert.this.ignoreTextChange) {
                                return;
                            }
                            EditorAlert.this.ignoreTextChange = true;
                            if (i == 0) {
                                int i2 = 0;
                                while (i2 < editable.length()) {
                                    char cCharAt = editable.charAt(i2);
                                    if ((cCharAt != '#' || i2 != 0) && ((cCharAt < '0' || cCharAt > '9') && ((cCharAt < 'a' || cCharAt > 'f') && (cCharAt < 'A' || cCharAt > 'F')))) {
                                        editable.replace(i2, i2 + 1, _UrlKt.FRAGMENT_ENCODE_SET);
                                        i2--;
                                    }
                                    i2++;
                                }
                                if (editable.length() == 0 || editable.charAt(0) != '#') {
                                    editable.insert(0, "#");
                                }
                                if (editable.length() != 9) {
                                    EditorAlert.this.ignoreTextChange = false;
                                    return;
                                } else {
                                    try {
                                        ColorPicker.this.setColor(Color.parseColor(editable.toString()));
                                    } catch (IllegalArgumentException unused) {
                                        ColorPicker.this.setColor(-1);
                                    }
                                }
                            } else {
                                int iIntValue = Utilities.parseInt((CharSequence) editable.toString()).intValue();
                                if (iIntValue > 100 || iIntValue < 0) {
                                    iIntValue = iIntValue > 100 ? 100 : 0;
                                    editable.replace(0, editable.length(), iIntValue + _UrlKt.FRAGMENT_ENCODE_SET);
                                }
                                ColorPicker.this.colorHSV[2] = iIntValue / 100.0f;
                            }
                            int color = ColorPicker.this.getColor();
                            ColorPicker.this.colorEditText[0].setTextKeepState(String.format("#%02x%02x%02x%02x", Byte.valueOf((byte) Color.alpha(color)), Byte.valueOf((byte) Color.red(color)), Byte.valueOf((byte) Color.green(color)), Byte.valueOf((byte) Color.blue(color))).toUpperCase());
                            ColorPicker.this.colorEditText[1].setTextKeepState(String.valueOf((int) (ColorPicker.this.colorHSV[2] * 100.0f)));
                            ColorPicker.this.setColor(color);
                            for (int i3 = 0; i3 < ThemeEditorView.this.currentThemeDesription.size(); i3++) {
                                ((ThemeDescription) ThemeEditorView.this.currentThemeDesription.get(i3)).setColor(ColorPicker.this.getColor(), false);
                            }
                            EditorAlert.this.ignoreTextChange = false;
                        }
                    });
                    this.colorEditText[i].setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.Components.ThemeEditorView$EditorAlert$ColorPicker$$ExternalSyntheticLambda1
                        @Override // android.widget.TextView.OnEditorActionListener
                        public final boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
                            return ThemeEditorView.EditorAlert.ColorPicker.$r8$lambda$HYq2xFJx5fikv5JF6WhAv7tzfx8(textView, i2, keyEvent);
                        }
                    });
                    i++;
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$new$0(int i, View view, boolean z) {
                this.outlineContainer[i].animateSelection(z ? 1.0f : 0.0f);
            }

            public static /* synthetic */ boolean $r8$lambda$HYq2xFJx5fikv5JF6WhAv7tzfx8(TextView textView, int i, KeyEvent keyEvent) {
                if (i != 6) {
                    return false;
                }
                AndroidUtilities.hideKeyboard(textView);
                return true;
            }

            @Override // android.widget.FrameLayout, android.view.View
            protected void onMeasure(int i, int i2) {
                int size = View.MeasureSpec.getSize(i);
                int iMin = Math.min(size, View.MeasureSpec.getSize(i2));
                measureChild(this.linearLayout, View.MeasureSpec.makeMeasureSpec(size - AndroidUtilities.m1124dp(42.0f), TLObject.FLAG_30), i2);
                setMeasuredDimension(iMin, iMin);
            }

            @Override // android.view.View
            protected void onDraw(Canvas canvas) {
                int width = (getWidth() / 2) - (this.paramValueSliderWidth * 2);
                int height = getHeight() / 2;
                Bitmap bitmap = this.colorWheelBitmap;
                int i = this.colorWheelRadius;
                canvas.drawBitmap(bitmap, width - i, height - i, (Paint) null);
                double radians = (float) Math.toRadians(this.colorHSV[0]);
                int i2 = ((int) ((-Math.cos(radians)) * ((double) this.colorHSV[1]) * ((double) this.colorWheelRadius))) + width;
                double d = -Math.sin(radians);
                float[] fArr = this.colorHSV;
                float f = fArr[1];
                int i3 = ((int) (d * ((double) f) * ((double) this.colorWheelRadius))) + height;
                float[] fArr2 = this.hsvTemp;
                fArr2[0] = fArr[0];
                fArr2[1] = f;
                fArr2[2] = 1.0f;
                drawPointerArrow(canvas, i2, i3, Color.HSVToColor(fArr2));
                int i4 = this.colorWheelRadius;
                int i5 = width + i4 + this.paramValueSliderWidth;
                int i6 = height - i4;
                int iM1124dp = AndroidUtilities.m1124dp(9.0f);
                int i7 = this.colorWheelRadius * 2;
                if (this.colorGradient == null) {
                    this.colorGradient = new LinearGradient(i5, i6, i5 + iM1124dp, i6 + i7, new int[]{-16777216, Color.HSVToColor(this.hsvTemp)}, (float[]) null, Shader.TileMode.CLAMP);
                }
                this.valueSliderPaint.setShader(this.colorGradient);
                float f2 = i6;
                float f3 = i6 + i7;
                canvas.drawRoundRect(i5, f2, i5 + iM1124dp, f3, 100.0f, 100.0f, this.valueSliderPaint);
                int i8 = iM1124dp / 2;
                float[] fArr3 = this.colorHSV;
                float f4 = i7;
                drawPointerArrow(canvas, i5 + i8, (int) ((fArr3[2] * f4) + f2), Color.HSVToColor(fArr3));
                int i9 = i5 + (this.paramValueSliderWidth * 2);
                if (this.alphaGradient == null) {
                    int iHSVToColor = Color.HSVToColor(this.hsvTemp);
                    this.alphaGradient = new LinearGradient(i9, f2, i9 + iM1124dp, f3, new int[]{iHSVToColor, iHSVToColor & 16777215}, (float[]) null, Shader.TileMode.CLAMP);
                }
                this.valueSliderPaint.setShader(this.alphaGradient);
                canvas.drawRoundRect(i9, f2, iM1124dp + i9, f3, 100.0f, 100.0f, this.valueSliderPaint);
                drawPointerArrow(canvas, i9 + i8, (int) (f2 + ((1.0f - this.alpha) * f4)), (Color.HSVToColor(this.colorHSV) & 16777215) | (((int) (this.alpha * 255.0f)) << 24));
            }

            private void drawPointerArrow(Canvas canvas, int i, int i2, int i3) {
                AndroidUtilities.m1124dp(13.0f);
                this.circlePaint.setColor(-9408400);
                float f = i;
                float f2 = i2;
                canvas.drawCircle(f, f2, AndroidUtilities.m1124dp(11.5f), this.circlePaint);
                this.circlePaint.setColor(-1);
                canvas.drawCircle(f, f2, AndroidUtilities.m1124dp(11.0f), this.circlePaint);
                this.circlePaint.setColor(i3);
                canvas.drawCircle(f, f2, AndroidUtilities.m1124dp(9.0f), this.circlePaint);
            }

            @Override // android.view.View
            protected void onSizeChanged(int i, int i2, int i3, int i4) {
                int iMax = Math.max(1, ((i / 2) - (this.paramValueSliderWidth * 2)) - AndroidUtilities.m1124dp(20.0f));
                this.colorWheelRadius = iMax;
                this.colorWheelBitmap = createColorWheelBitmap(iMax * 2, iMax * 2);
                this.colorGradient = null;
                this.alphaGradient = null;
            }

            private Bitmap createColorWheelBitmap(int i, int i2) {
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
                int[] iArr = new int[13];
                float[] fArr = {0.0f, 1.0f, 1.0f};
                for (int i3 = 0; i3 < 13; i3++) {
                    fArr[0] = ((i3 * 30) + 180) % 360;
                    iArr[i3] = Color.HSVToColor(fArr);
                }
                iArr[12] = iArr[0];
                float f = i / 2;
                float f2 = i2 / 2;
                this.colorWheelPaint.setShader(new ComposeShader(new SweepGradient(f, f2, iArr, (float[]) null), new RadialGradient(f, f2, this.colorWheelRadius, -1, 16777215, Shader.TileMode.CLAMP), PorterDuff.Mode.SRC_OVER));
                new Canvas(bitmapCreateBitmap).drawCircle(f, f2, this.colorWheelRadius, this.colorWheelPaint);
                return bitmapCreateBitmap;
            }

            private void startColorChange(boolean z) {
                if (EditorAlert.this.startedColorChange == z) {
                    return;
                }
                if (EditorAlert.this.colorChangeAnimation != null) {
                    EditorAlert.this.colorChangeAnimation.cancel();
                }
                EditorAlert.this.startedColorChange = z;
                EditorAlert.this.colorChangeAnimation = new AnimatorSet();
                EditorAlert.this.colorChangeAnimation.playTogether(ObjectAnimator.ofInt(((BottomSheet) EditorAlert.this).backDrawable, (Property<ColorDrawable, Integer>) AnimationProperties.COLOR_DRAWABLE_ALPHA, z ? 0 : 51), ObjectAnimator.ofFloat(((BottomSheet) EditorAlert.this).containerView, (Property<ViewGroup, Float>) View.ALPHA, z ? 0.2f : 1.0f));
                EditorAlert.this.colorChangeAnimation.setDuration(150L);
                EditorAlert.this.colorChangeAnimation.setInterpolator(this.decelerateInterpolator);
                EditorAlert.this.colorChangeAnimation.start();
            }

            /* JADX WARN: Code restructure failed: missing block: B:5:0x000d, code lost:
            
                if (r1 != 2) goto L8;
             */
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Removed duplicated region for block: B:27:0x00a7  */
            /* JADX WARN: Removed duplicated region for block: B:39:0x00c5  */
            /* JADX WARN: Removed duplicated region for block: B:48:0x00ea  */
            /* JADX WARN: Removed duplicated region for block: B:60:0x0109  */
            /* JADX WARN: Removed duplicated region for block: B:73:0x0133  */
            /* JADX WARN: Removed duplicated region for block: B:76:0x014a  */
            /* JADX WARN: Removed duplicated region for block: B:94:0x0199  */
            @Override // android.view.View
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public boolean onTouchEvent(MotionEvent motionEvent) {
                int i;
                int i2;
                int i3;
                int action = motionEvent.getAction();
                if (action != 0) {
                    if (action == 1) {
                        this.alphaPressed = false;
                        this.colorPressed = false;
                        this.circlePressed = false;
                        startColorChange(false);
                    }
                    return super.onTouchEvent(motionEvent);
                }
                int x = (int) motionEvent.getX();
                int y = (int) motionEvent.getY();
                int width = (getWidth() / 2) - (this.paramValueSliderWidth * 2);
                int height = (getHeight() / 2) - AndroidUtilities.m1124dp(8.0f);
                int i4 = x - width;
                int i5 = y - height;
                double dSqrt = Math.sqrt((i4 * i4) + (i5 * i5));
                if (!this.circlePressed) {
                    if (this.alphaPressed || this.colorPressed) {
                        i = 2;
                        i2 = 0;
                    } else {
                        i = 2;
                        i2 = 0;
                        if (dSqrt <= this.colorWheelRadius) {
                        }
                    }
                    if (this.colorPressed) {
                        float f = (y - (height - r2)) / (this.colorWheelRadius * 2.0f);
                        if (f < 0.0f) {
                            f = 0.0f;
                        } else if (f > 1.0f) {
                            f = 1.0f;
                        }
                        this.colorHSV[i] = f;
                        this.colorPressed = true;
                    } else if (!this.circlePressed && !this.alphaPressed) {
                        int i6 = this.colorWheelRadius;
                        int i7 = this.paramValueSliderWidth;
                        if (x >= width + i6 + i7 && x <= width + i6 + (i7 * i) && y >= height - i6 && y <= i6 + height) {
                        }
                    }
                    if (this.alphaPressed) {
                        float f2 = 1.0f - ((y - (height - r1)) / (this.colorWheelRadius * 2.0f));
                        this.alpha = f2;
                        if (f2 < 0.0f) {
                            this.alpha = 0.0f;
                        } else if (f2 > 1.0f) {
                            this.alpha = 1.0f;
                        }
                        this.alphaPressed = true;
                    } else if (!this.circlePressed && !this.colorPressed) {
                        int i8 = this.colorWheelRadius;
                        int i9 = this.paramValueSliderWidth;
                        if (x >= width + i8 + (i9 * 3) && x <= width + i8 + (i9 * 4) && y >= height - i8 && y <= i8 + height) {
                        }
                    }
                    if (!this.alphaPressed || this.colorPressed || this.circlePressed) {
                        startColorChange(true);
                        int color = getColor();
                        for (i3 = i2; i3 < ThemeEditorView.this.currentThemeDesription.size(); i3++) {
                            int currentKey = ((ThemeDescription) ThemeEditorView.this.currentThemeDesription.get(i3)).getCurrentKey();
                            if ((i3 == 0 && currentKey == Theme.key_chat_wallpaper) || currentKey == Theme.key_chat_wallpaper_gradient_to1 || currentKey == Theme.key_chat_wallpaper_gradient_to2 || currentKey == Theme.key_chat_wallpaper_gradient_to3 || currentKey == Theme.key_windowBackgroundWhite || currentKey == Theme.key_windowBackgroundGray) {
                                color |= -16777216;
                            }
                            ((ThemeDescription) ThemeEditorView.this.currentThemeDesription.get(i3)).setColor(color, i2);
                        }
                        int i10 = i2;
                        if (!EditorAlert.this.ignoreTextChange) {
                            EditorAlert.this.ignoreTextChange = true;
                            EditTextBoldCursor editTextBoldCursor = this.colorEditText[i10];
                            Byte bValueOf = Byte.valueOf((byte) Color.alpha(color));
                            Byte bValueOf2 = Byte.valueOf((byte) Color.red(color));
                            Byte bValueOf3 = Byte.valueOf((byte) Color.green(color));
                            Byte bValueOf4 = Byte.valueOf((byte) Color.blue(color));
                            Object[] objArr = new Object[4];
                            objArr[0] = bValueOf;
                            objArr[1] = bValueOf2;
                            objArr[i] = bValueOf3;
                            objArr[3] = bValueOf4;
                            editTextBoldCursor.setTextKeepState(String.format("#%02x%02x%02x%02x", objArr).toUpperCase());
                            this.colorEditText[1].setTextKeepState(String.valueOf((int) (this.colorHSV[i] * 100.0f)));
                            for (int i11 = 0; i11 < i; i11++) {
                                EditTextBoldCursor editTextBoldCursor2 = this.colorEditText[i11];
                                editTextBoldCursor2.setSelection(editTextBoldCursor2.length());
                            }
                            EditorAlert.this.ignoreTextChange = false;
                        }
                        invalidate();
                    }
                    return true;
                }
                i = 2;
                i2 = 0;
                int i12 = this.colorWheelRadius;
                if (dSqrt > i12) {
                    dSqrt = i12;
                }
                this.circlePressed = true;
                this.colorHSV[i2] = (float) (Math.toDegrees(Math.atan2(i5, i4)) + 180.0d);
                this.colorHSV[1] = Math.max(0.0f, Math.min(1.0f, (float) (dSqrt / ((double) this.colorWheelRadius))));
                this.colorGradient = null;
                this.alphaGradient = null;
                if (this.colorPressed) {
                }
                if (this.alphaPressed) {
                }
                if (!this.alphaPressed) {
                    startColorChange(true);
                    int color2 = getColor();
                    while (i3 < ThemeEditorView.this.currentThemeDesription.size()) {
                    }
                    int i102 = i2;
                    if (!EditorAlert.this.ignoreTextChange) {
                    }
                    invalidate();
                }
                return true;
            }

            public void setColor(int i) {
                int iAlpha = Color.alpha(i);
                if (!EditorAlert.this.ignoreTextChange) {
                    EditorAlert.this.ignoreTextChange = true;
                    this.colorEditText[0].setTextKeepState(String.format("#%02x%02x%02x%02x", Byte.valueOf((byte) Color.alpha(i)), Byte.valueOf((byte) Color.red(i)), Byte.valueOf((byte) Color.green(i)), Byte.valueOf((byte) Color.blue(i))).toUpperCase());
                    this.colorEditText[1].setTextKeepState(String.valueOf((int) (this.colorHSV[2] * 100.0f)));
                    for (int i2 = 0; i2 < 2; i2++) {
                        EditTextBoldCursor editTextBoldCursor = this.colorEditText[i2];
                        editTextBoldCursor.setSelection(editTextBoldCursor.length());
                    }
                    EditorAlert.this.ignoreTextChange = false;
                }
                this.alphaGradient = null;
                this.colorGradient = null;
                this.alpha = iAlpha / 255.0f;
                Color.colorToHSV(i, this.colorHSV);
                invalidate();
            }

            public int getColor() {
                return (Color.HSVToColor(this.colorHSV) & 16777215) | (((int) (this.alpha * 255.0f)) << 24);
            }
        }

        public EditorAlert(Context context, ArrayList arrayList) {
            super(context, true);
            this.shadow = new View[2];
            this.shadowAnimation = new AnimatorSet[2];
            this.shadowDrawable = context.getResources().getDrawable(C2888R.drawable.sheet_shadow_round).mutate();
            FrameLayout frameLayout = new FrameLayout(context) { // from class: org.telegram.ui.Components.ThemeEditorView.EditorAlert.1
                private boolean ignoreLayout = false;
                private RectF rect1 = new RectF();
                private Boolean statusBarOpen;

                @Override // android.view.ViewGroup
                public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
                    if (motionEvent.getAction() == 0 && EditorAlert.this.scrollOffsetY != 0 && motionEvent.getY() < EditorAlert.this.scrollOffsetY) {
                        EditorAlert.this.lambda$new$0();
                        return true;
                    }
                    return super.onInterceptTouchEvent(motionEvent);
                }

                @Override // android.view.View
                public boolean onTouchEvent(MotionEvent motionEvent) {
                    return !EditorAlert.this.isDismissed() && super.onTouchEvent(motionEvent);
                }

                @Override // android.widget.FrameLayout, android.view.View
                protected void onMeasure(int i, int i2) {
                    int size = View.MeasureSpec.getSize(i);
                    int size2 = View.MeasureSpec.getSize(i2);
                    if (!((BottomSheet) EditorAlert.this).isFullscreen) {
                        this.ignoreLayout = true;
                        setPadding(((BottomSheet) EditorAlert.this).backgroundPaddingLeft, AndroidUtilities.statusBarHeight, ((BottomSheet) EditorAlert.this).backgroundPaddingLeft, 0);
                        this.ignoreLayout = false;
                    }
                    int iM1124dp = ((size2 - AndroidUtilities.statusBarHeight) + AndroidUtilities.m1124dp(8.0f)) - Math.min(size, size2 - AndroidUtilities.statusBarHeight);
                    if (EditorAlert.this.listView.getPaddingTop() != iM1124dp) {
                        this.ignoreLayout = true;
                        EditorAlert.this.listView.getPaddingTop();
                        EditorAlert.this.listView.setPadding(0, iM1124dp, 0, AndroidUtilities.m1124dp(48.0f));
                        if (EditorAlert.this.colorPicker.getVisibility() == 0) {
                            EditorAlert editorAlert = EditorAlert.this;
                            editorAlert.setScrollOffsetY(editorAlert.listView.getPaddingTop());
                            EditorAlert.this.previousScrollPosition = 0;
                        }
                        this.ignoreLayout = false;
                    }
                    super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(size2, TLObject.FLAG_30));
                }

                @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
                protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
                    super.onLayout(z, i, i2, i3, i4);
                    EditorAlert.this.updateLayout();
                }

                @Override // android.view.View, android.view.ViewParent
                public void requestLayout() {
                    if (this.ignoreLayout) {
                        return;
                    }
                    super.requestLayout();
                }

                @Override // android.view.View
                protected void onDraw(Canvas canvas) {
                    int iMin;
                    float fMin;
                    int iM1124dp = (EditorAlert.this.scrollOffsetY - ((BottomSheet) EditorAlert.this).backgroundPaddingTop) + AndroidUtilities.m1124dp(6.0f);
                    int iM1124dp2 = (EditorAlert.this.scrollOffsetY - ((BottomSheet) EditorAlert.this).backgroundPaddingTop) - AndroidUtilities.m1124dp(8.0f);
                    int measuredHeight = getMeasuredHeight() + AndroidUtilities.m1124dp(30.0f) + ((BottomSheet) EditorAlert.this).backgroundPaddingTop;
                    if (((BottomSheet) EditorAlert.this).isFullscreen) {
                        iMin = 0;
                        fMin = 1.0f;
                    } else {
                        int i = AndroidUtilities.statusBarHeight;
                        iM1124dp2 += i;
                        iM1124dp += i;
                        measuredHeight -= i;
                        int i2 = ((BottomSheet) EditorAlert.this).backgroundPaddingTop + iM1124dp2;
                        int i3 = AndroidUtilities.statusBarHeight;
                        if (i2 < i3 * 2) {
                            int iMin2 = Math.min(i3, ((i3 * 2) - iM1124dp2) - ((BottomSheet) EditorAlert.this).backgroundPaddingTop);
                            iM1124dp2 -= iMin2;
                            measuredHeight += iMin2;
                            fMin = 1.0f - Math.min(1.0f, (iMin2 * 2) / AndroidUtilities.statusBarHeight);
                        } else {
                            fMin = 1.0f;
                        }
                        int i4 = ((BottomSheet) EditorAlert.this).backgroundPaddingTop + iM1124dp2;
                        int i5 = AndroidUtilities.statusBarHeight;
                        iMin = i4 < i5 ? Math.min(i5, (i5 - iM1124dp2) - ((BottomSheet) EditorAlert.this).backgroundPaddingTop) : 0;
                    }
                    EditorAlert.this.shadowDrawable.setBounds(0, iM1124dp2, getMeasuredWidth(), measuredHeight);
                    EditorAlert.this.shadowDrawable.draw(canvas);
                    if (fMin != 1.0f) {
                        Theme.dialogs_onlineCirclePaint.setColor(-1);
                        this.rect1.set(((BottomSheet) EditorAlert.this).backgroundPaddingLeft, ((BottomSheet) EditorAlert.this).backgroundPaddingTop + iM1124dp2, getMeasuredWidth() - ((BottomSheet) EditorAlert.this).backgroundPaddingLeft, ((BottomSheet) EditorAlert.this).backgroundPaddingTop + iM1124dp2 + AndroidUtilities.m1124dp(24.0f));
                        canvas.drawRoundRect(this.rect1, AndroidUtilities.m1124dp(12.0f) * fMin, AndroidUtilities.m1124dp(12.0f) * fMin, Theme.dialogs_onlineCirclePaint);
                    }
                    int iM1124dp3 = AndroidUtilities.m1124dp(36.0f);
                    this.rect1.set((getMeasuredWidth() - iM1124dp3) / 2, iM1124dp, (getMeasuredWidth() + iM1124dp3) / 2, iM1124dp + AndroidUtilities.m1124dp(4.0f));
                    Theme.dialogs_onlineCirclePaint.setColor(-1973016);
                    Theme.dialogs_onlineCirclePaint.setAlpha((int) (EditorAlert.this.listView.getAlpha() * 255.0f));
                    canvas.drawRoundRect(this.rect1, AndroidUtilities.m1124dp(2.0f), AndroidUtilities.m1124dp(2.0f), Theme.dialogs_onlineCirclePaint);
                    if (iMin > 0) {
                        Theme.dialogs_onlineCirclePaint.setColor(Theme.getColor(Theme.key_dialogBackground));
                        canvas.drawRect(((BottomSheet) EditorAlert.this).backgroundPaddingLeft, AndroidUtilities.statusBarHeight - iMin, getMeasuredWidth() - ((BottomSheet) EditorAlert.this).backgroundPaddingLeft, AndroidUtilities.statusBarHeight, Theme.dialogs_onlineCirclePaint);
                    }
                    updateLightStatusBar(iMin > AndroidUtilities.statusBarHeight / 2);
                }

                private void updateLightStatusBar(boolean z) {
                    Boolean bool = this.statusBarOpen;
                    if (bool == null || bool.booleanValue() != z) {
                        boolean z2 = AndroidUtilities.computePerceivedBrightness(EditorAlert.this.getThemedColor(Theme.key_dialogBackground)) > 0.721f;
                        boolean z3 = AndroidUtilities.computePerceivedBrightness(Theme.blendOver(EditorAlert.this.getThemedColor(Theme.key_actionBarDefault), AndroidUtilities.DARK_STATUS_BAR_OVERLAY)) > 0.721f;
                        this.statusBarOpen = Boolean.valueOf(z);
                        if (!z) {
                            z2 = z3;
                        }
                        AndroidUtilities.setLightStatusBar(EditorAlert.this.getWindow(), z2);
                    }
                }
            };
            this.containerView = frameLayout;
            frameLayout.setWillNotDraw(false);
            ViewGroup viewGroup = this.containerView;
            int i = this.backgroundPaddingLeft;
            viewGroup.setPadding(i, 0, i, 0);
            FrameLayout frameLayout2 = new FrameLayout(context);
            this.frameLayout = frameLayout2;
            frameLayout2.setBackgroundColor(-1);
            SearchField searchField = new SearchField(context);
            this.searchField = searchField;
            this.frameLayout.addView(searchField, LayoutHelper.createFrame(-1, -1, 51));
            RecyclerListView recyclerListView = new RecyclerListView(context) { // from class: org.telegram.ui.Components.ThemeEditorView.EditorAlert.2
                @Override // org.telegram.p029ui.Components.RecyclerListView
                protected boolean allowSelectChildAtPosition(float f, float f2) {
                    return f2 >= ((float) ((EditorAlert.this.scrollOffsetY + AndroidUtilities.m1124dp(48.0f)) + AndroidUtilities.statusBarHeight));
                }
            };
            this.listView = recyclerListView;
            recyclerListView.setSelectorDrawableColor(251658240);
            this.listView.setPadding(0, 0, 0, AndroidUtilities.m1124dp(48.0f));
            this.listView.setClipToPadding(false);
            RecyclerListView recyclerListView2 = this.listView;
            LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getContext());
            this.layoutManager = linearLayoutManager;
            recyclerListView2.setLayoutManager(linearLayoutManager);
            this.listView.setHorizontalScrollBarEnabled(false);
            this.listView.setVerticalScrollBarEnabled(false);
            this.containerView.addView(this.listView, LayoutHelper.createFrame(-1, -1, 51));
            RecyclerListView recyclerListView3 = this.listView;
            ListAdapter listAdapter = new ListAdapter(context, arrayList);
            this.listAdapter = listAdapter;
            recyclerListView3.setAdapter(listAdapter);
            this.searchAdapter = new SearchAdapter(context);
            this.listView.setGlowColor(-657673);
            this.listView.setItemAnimator(null);
            this.listView.setLayoutAnimation(null);
            this.listView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Components.ThemeEditorView$EditorAlert$$ExternalSyntheticLambda0
                @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
                public final void onItemClick(View view, int i2) throws Throwable {
                    this.f$0.lambda$new$0(view, i2);
                }
            });
            this.listView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Components.ThemeEditorView.EditorAlert.3
                @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                public void onScrolled(RecyclerView recyclerView, int i2, int i3) {
                    EditorAlert.this.updateLayout();
                }
            });
            EmptyTextProgressView emptyTextProgressView = new EmptyTextProgressView(context);
            this.searchEmptyView = emptyTextProgressView;
            emptyTextProgressView.setShowAtCenter(true);
            this.searchEmptyView.showTextView();
            this.searchEmptyView.setText(LocaleController.getString(C2888R.string.NoResult));
            this.listView.setEmptyView(this.searchEmptyView);
            this.containerView.addView(this.searchEmptyView, LayoutHelper.createFrame(-1, -1.0f, 51, 0.0f, 52.0f, 0.0f, 0.0f));
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, AndroidUtilities.getShadowHeight(), 51);
            layoutParams.topMargin = AndroidUtilities.m1124dp(58.0f);
            this.shadow[0] = new View(context);
            this.shadow[0].setBackgroundColor(301989888);
            this.shadow[0].setAlpha(0.0f);
            this.shadow[0].setTag(1);
            this.containerView.addView(this.shadow[0], layoutParams);
            this.containerView.addView(this.frameLayout, LayoutHelper.createFrame(-1, 58, 51));
            ColorPicker colorPicker = new ColorPicker(context);
            this.colorPicker = colorPicker;
            colorPicker.setVisibility(8);
            this.containerView.addView(this.colorPicker, LayoutHelper.createFrame(-1, -1, 1));
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, AndroidUtilities.getShadowHeight(), 83);
            layoutParams2.bottomMargin = AndroidUtilities.m1124dp(48.0f);
            this.shadow[1] = new View(context);
            this.shadow[1].setBackgroundColor(301989888);
            this.containerView.addView(this.shadow[1], layoutParams2);
            FrameLayout frameLayout3 = new FrameLayout(context);
            this.bottomSaveLayout = frameLayout3;
            frameLayout3.setBackgroundColor(-1);
            this.containerView.addView(this.bottomSaveLayout, LayoutHelper.createFrame(-1, 48, 83));
            TextView textView = new TextView(context);
            textView.setTextSize(1, 14.0f);
            textView.setTextColor(-15095832);
            textView.setGravity(17);
            textView.setBackgroundDrawable(Theme.createSelectorDrawable(788529152, 0));
            textView.setPadding(AndroidUtilities.m1124dp(18.0f), 0, AndroidUtilities.m1124dp(18.0f), 0);
            textView.setText(LocaleController.getString(C2888R.string.CloseEditor).toUpperCase());
            textView.setTypeface(AndroidUtilities.bold());
            this.bottomSaveLayout.addView(textView, LayoutHelper.createFrame(-2, -1, 51));
            textView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ThemeEditorView$EditorAlert$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$1(view);
                }
            });
            TextView textView2 = new TextView(context);
            textView2.setTextSize(1, 14.0f);
            textView2.setTextColor(-15095832);
            textView2.setGravity(17);
            textView2.setBackgroundDrawable(Theme.createSelectorDrawable(788529152, 0));
            textView2.setPadding(AndroidUtilities.m1124dp(18.0f), 0, AndroidUtilities.m1124dp(18.0f), 0);
            textView2.setText(LocaleController.getString(C2888R.string.SaveTheme).toUpperCase());
            textView2.setTypeface(AndroidUtilities.bold());
            this.bottomSaveLayout.addView(textView2, LayoutHelper.createFrame(-2, -1, 53));
            textView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ThemeEditorView$EditorAlert$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) throws Throwable {
                    this.f$0.lambda$new$2(view);
                }
            });
            FrameLayout frameLayout4 = new FrameLayout(context);
            this.bottomLayout = frameLayout4;
            frameLayout4.setVisibility(8);
            this.bottomLayout.setBackgroundColor(-1);
            this.containerView.addView(this.bottomLayout, LayoutHelper.createFrame(-1, 48, 83));
            TextView textView3 = new TextView(context);
            textView3.setTextSize(1, 14.0f);
            textView3.setTextColor(-15095832);
            textView3.setGravity(17);
            textView3.setBackgroundDrawable(Theme.createSelectorDrawable(788529152, 0));
            textView3.setPadding(AndroidUtilities.m1124dp(18.0f), 0, AndroidUtilities.m1124dp(18.0f), 0);
            textView3.setText(LocaleController.getString(C2888R.string.Cancel).toUpperCase());
            textView3.setTypeface(AndroidUtilities.bold());
            this.bottomLayout.addView(textView3, LayoutHelper.createFrame(-2, -1, 51));
            textView3.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ThemeEditorView$EditorAlert$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) throws Throwable {
                    this.f$0.lambda$new$3(view);
                }
            });
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(0);
            this.bottomLayout.addView(linearLayout, LayoutHelper.createFrame(-2, -1, 53));
            TextView textView4 = new TextView(context);
            textView4.setTextSize(1, 14.0f);
            textView4.setTextColor(-15095832);
            textView4.setGravity(17);
            textView4.setBackgroundDrawable(Theme.createSelectorDrawable(788529152, 0));
            textView4.setPadding(AndroidUtilities.m1124dp(18.0f), 0, AndroidUtilities.m1124dp(18.0f), 0);
            textView4.setText(LocaleController.getString(C2888R.string.Default).toUpperCase());
            textView4.setTypeface(AndroidUtilities.bold());
            linearLayout.addView(textView4, LayoutHelper.createFrame(-2, -1, 51));
            textView4.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ThemeEditorView$EditorAlert$$ExternalSyntheticLambda4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) throws Throwable {
                    this.f$0.lambda$new$4(view);
                }
            });
            TextView textView5 = new TextView(context);
            textView5.setTextSize(1, 14.0f);
            textView5.setTextColor(-15095832);
            textView5.setGravity(17);
            textView5.setBackgroundDrawable(Theme.createSelectorDrawable(788529152, 0));
            textView5.setPadding(AndroidUtilities.m1124dp(18.0f), 0, AndroidUtilities.m1124dp(18.0f), 0);
            textView5.setText(LocaleController.getString(C2888R.string.Save).toUpperCase());
            textView5.setTypeface(AndroidUtilities.bold());
            linearLayout.addView(textView5, LayoutHelper.createFrame(-2, -1, 51));
            textView5.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ThemeEditorView$EditorAlert$$ExternalSyntheticLambda5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) throws Throwable {
                    this.f$0.lambda$new$5(view);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(View view, int i) throws Throwable {
            if (i == 0) {
                return;
            }
            RecyclerView.Adapter adapter = this.listView.getAdapter();
            ListAdapter listAdapter = this.listAdapter;
            if (adapter == listAdapter) {
                ThemeEditorView.this.currentThemeDesription = listAdapter.getItem(i - 1);
            } else {
                ThemeEditorView.this.currentThemeDesription = this.searchAdapter.getItem(i - 1);
            }
            ThemeEditorView.this.currentThemeDesriptionPosition = i;
            for (int i2 = 0; i2 < ThemeEditorView.this.currentThemeDesription.size(); i2++) {
                ThemeDescription themeDescription = (ThemeDescription) ThemeEditorView.this.currentThemeDesription.get(i2);
                if (themeDescription.getCurrentKey() == Theme.key_chat_wallpaper) {
                    ThemeEditorView.this.wallpaperUpdater.showAlert(true);
                    return;
                }
                themeDescription.startEditing();
                if (i2 == 0) {
                    this.colorPicker.setColor(themeDescription.getCurrentColor());
                }
            }
            setColorPickerVisible(true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$1(View view) {
            lambda$new$0();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$2(View view) throws Throwable {
            Theme.saveCurrentTheme(ThemeEditorView.this.themeInfo, true, false, false);
            setOnDismissListener((DialogInterface.OnDismissListener) null);
            lambda$new$0();
            ThemeEditorView.this.close();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$3(View view) throws Throwable {
            for (int i = 0; i < ThemeEditorView.this.currentThemeDesription.size(); i++) {
                ((ThemeDescription) ThemeEditorView.this.currentThemeDesription.get(i)).setPreviousColor();
            }
            setColorPickerVisible(false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$4(View view) throws Throwable {
            for (int i = 0; i < ThemeEditorView.this.currentThemeDesription.size(); i++) {
                ((ThemeDescription) ThemeEditorView.this.currentThemeDesription.get(i)).setDefaultColor();
            }
            setColorPickerVisible(false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$5(View view) throws Throwable {
            setColorPickerVisible(false);
        }

        private void runShadowAnimation(final int i, final boolean z) {
            if ((!z || this.shadow[i].getTag() == null) && (z || this.shadow[i].getTag() != null)) {
                return;
            }
            this.shadow[i].setTag(z ? null : 1);
            if (z) {
                this.shadow[i].setVisibility(0);
            }
            AnimatorSet animatorSet = this.shadowAnimation[i];
            if (animatorSet != null) {
                animatorSet.cancel();
            }
            this.shadowAnimation[i] = new AnimatorSet();
            this.shadowAnimation[i].playTogether(ObjectAnimator.ofFloat(this.shadow[i], (Property<View, Float>) View.ALPHA, z ? 1.0f : 0.0f));
            this.shadowAnimation[i].setDuration(150L);
            this.shadowAnimation[i].addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ThemeEditorView.EditorAlert.4
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (EditorAlert.this.shadowAnimation[i] == null || !EditorAlert.this.shadowAnimation[i].equals(animator)) {
                        return;
                    }
                    if (!z) {
                        EditorAlert.this.shadow[i].setVisibility(4);
                    }
                    EditorAlert.this.shadowAnimation[i] = null;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    if (EditorAlert.this.shadowAnimation[i] == null || !EditorAlert.this.shadowAnimation[i].equals(animator)) {
                        return;
                    }
                    EditorAlert.this.shadowAnimation[i] = null;
                }
            });
            this.shadowAnimation[i].start();
        }

        @Override // org.telegram.p029ui.ActionBar.BottomSheet
        public void dismissInternal() {
            super.dismissInternal();
            if (this.searchField.searchEditText.isFocused()) {
                AndroidUtilities.hideKeyboard(this.searchField.searchEditText);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v6, types: [org.telegram.ui.Components.RecyclerListView] */
        /* JADX WARN: Type inference failed for: r1v7, types: [android.view.View, android.widget.FrameLayout] */
        /* JADX WARN: Type inference failed for: r1v8, types: [android.view.View, org.telegram.ui.Components.ThemeEditorView$EditorAlert$SearchField] */
        /* JADX WARN: Type inference failed for: r23v1 */
        /* JADX WARN: Type inference failed for: r23v2 */
        /* JADX WARN: Type inference failed for: r23v3 */
        /* JADX WARN: Type inference failed for: r23v4 */
        /* JADX WARN: Type inference failed for: r23v5 */
        /* JADX WARN: Type inference failed for: r2v0 */
        /* JADX WARN: Type inference failed for: r2v1, types: [boolean, int] */
        /* JADX WARN: Type inference failed for: r2v9 */
        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        public void setColorPickerVisible(boolean z) throws Throwable {
            ?? r2;
            if (z) {
                this.animationInProgress = true;
                this.colorPicker.setVisibility(0);
                this.bottomLayout.setVisibility(0);
                this.colorPicker.setAlpha(0.0f);
                this.bottomLayout.setAlpha(0.0f);
                this.previousScrollPosition = this.scrollOffsetY;
                AnimatorSet animatorSet = new AnimatorSet();
                ColorPicker colorPicker = this.colorPicker;
                Property property = View.ALPHA;
                animatorSet.playTogether(ObjectAnimator.ofFloat(colorPicker, (Property<ColorPicker, Float>) property, 1.0f), ObjectAnimator.ofFloat(this.bottomLayout, (Property<FrameLayout, Float>) property, 1.0f), ObjectAnimator.ofFloat(this.listView, (Property<RecyclerListView, Float>) property, 0.0f), ObjectAnimator.ofFloat(this.frameLayout, (Property<FrameLayout, Float>) property, 0.0f), ObjectAnimator.ofFloat(this.shadow[0], (Property<View, Float>) property, 0.0f), ObjectAnimator.ofFloat(this.searchEmptyView, (Property<EmptyTextProgressView, Float>) property, 0.0f), ObjectAnimator.ofFloat(this.bottomSaveLayout, (Property<FrameLayout, Float>) property, 0.0f), ObjectAnimator.ofInt(this, "scrollOffsetY", this.listView.getPaddingTop()));
                animatorSet.setDuration(150L);
                animatorSet.setInterpolator(ThemeEditorView.this.decelerateInterpolator);
                animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ThemeEditorView.EditorAlert.5
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        EditorAlert.this.listView.setVisibility(4);
                        EditorAlert.this.searchField.setVisibility(4);
                        EditorAlert.this.bottomSaveLayout.setVisibility(4);
                        EditorAlert.this.animationInProgress = false;
                    }
                });
                animatorSet.start();
                return;
            }
            if (ThemeEditorView.this.parentActivity != null) {
                r2 = 0;
                ((LaunchActivity) ThemeEditorView.this.parentActivity).rebuildAllFragments(false);
            } else {
                r2 = 0;
            }
            Theme.saveCurrentTheme(ThemeEditorView.this.themeInfo, r2, r2, r2);
            if (this.listView.getAdapter() == this.listAdapter) {
                AndroidUtilities.hideKeyboard(getCurrentFocus());
            }
            this.animationInProgress = true;
            this.listView.setVisibility(r2);
            this.bottomSaveLayout.setVisibility(r2);
            this.searchField.setVisibility(r2);
            float f = 0.0f;
            this.listView.setAlpha(0.0f);
            AnimatorSet animatorSet2 = new AnimatorSet();
            ColorPicker colorPicker2 = this.colorPicker;
            Property property2 = View.ALPHA;
            float[] fArr = new float[1];
            fArr[r2] = 0.0f;
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(colorPicker2, (Property<ColorPicker, Float>) property2, fArr);
            FrameLayout frameLayout = this.bottomLayout;
            float[] fArr2 = new float[1];
            fArr2[r2] = 0.0f;
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(frameLayout, (Property<FrameLayout, Float>) property2, fArr2);
            RecyclerListView recyclerListView = this.listView;
            float[] fArr3 = new float[1];
            fArr3[r2] = 1.0f;
            ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(recyclerListView, (Property<RecyclerListView, Float>) property2, fArr3);
            FrameLayout frameLayout2 = this.frameLayout;
            float[] fArr4 = new float[1];
            fArr4[r2] = 1.0f;
            ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(frameLayout2, (Property<FrameLayout, Float>) property2, fArr4);
            View view = this.shadow[r2];
            if (view.getTag() == null) {
                f = 1.0f;
            }
            ?? r23 = r2;
            float[] fArr5 = new float[1];
            fArr5[r23 == true ? 1 : 0] = f;
            ObjectAnimator objectAnimatorOfFloat5 = ObjectAnimator.ofFloat(view, (Property<View, Float>) property2, fArr5);
            EmptyTextProgressView emptyTextProgressView = this.searchEmptyView;
            float[] fArr6 = new float[1];
            fArr6[r23 == true ? 1 : 0] = 1.0f;
            ObjectAnimator objectAnimatorOfFloat6 = ObjectAnimator.ofFloat(emptyTextProgressView, (Property<EmptyTextProgressView, Float>) property2, fArr6);
            FrameLayout frameLayout3 = this.bottomSaveLayout;
            float[] fArr7 = new float[1];
            fArr7[r23 == true ? 1 : 0] = 1.0f;
            ObjectAnimator objectAnimatorOfFloat7 = ObjectAnimator.ofFloat(frameLayout3, (Property<FrameLayout, Float>) property2, fArr7);
            ObjectAnimator objectAnimatorOfInt = ObjectAnimator.ofInt(this, "scrollOffsetY", this.previousScrollPosition);
            Animator[] animatorArr = new Animator[8];
            animatorArr[r23 == true ? 1 : 0] = objectAnimatorOfFloat;
            animatorArr[1] = objectAnimatorOfFloat2;
            animatorArr[2] = objectAnimatorOfFloat3;
            animatorArr[3] = objectAnimatorOfFloat4;
            animatorArr[4] = objectAnimatorOfFloat5;
            animatorArr[5] = objectAnimatorOfFloat6;
            animatorArr[6] = objectAnimatorOfFloat7;
            animatorArr[7] = objectAnimatorOfInt;
            animatorSet2.playTogether(animatorArr);
            animatorSet2.setDuration(150L);
            animatorSet2.setInterpolator(ThemeEditorView.this.decelerateInterpolator);
            animatorSet2.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ThemeEditorView.EditorAlert.6
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (EditorAlert.this.listView.getAdapter() == EditorAlert.this.searchAdapter) {
                        EditorAlert.this.searchField.showKeyboard();
                    }
                    EditorAlert.this.colorPicker.setVisibility(8);
                    EditorAlert.this.bottomLayout.setVisibility(8);
                    EditorAlert.this.animationInProgress = false;
                }
            });
            animatorSet2.start();
            this.listView.getAdapter().notifyItemChanged(ThemeEditorView.this.currentThemeDesriptionPosition);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getCurrentTop() {
            if (this.listView.getChildCount() == 0) {
                return -1000;
            }
            int top = 0;
            View childAt = this.listView.getChildAt(0);
            RecyclerListView.Holder holder = (RecyclerListView.Holder) this.listView.findContainingViewHolder(childAt);
            if (holder == null) {
                return -1000;
            }
            int paddingTop = this.listView.getPaddingTop();
            if (holder.getAdapterPosition() == 0 && childAt.getTop() >= 0) {
                top = childAt.getTop();
            }
            return paddingTop - top;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateLayout() {
            int paddingTop;
            if (this.listView.getChildCount() <= 0 || this.listView.getVisibility() != 0 || this.animationInProgress) {
                return;
            }
            int i = 0;
            View childAt = this.listView.getChildAt(0);
            RecyclerListView.Holder holder = (RecyclerListView.Holder) this.listView.findContainingViewHolder(childAt);
            if (this.listView.getVisibility() != 0 || this.animationInProgress) {
                paddingTop = this.listView.getPaddingTop();
            } else {
                paddingTop = childAt.getTop() - AndroidUtilities.m1124dp(8.0f);
            }
            if (paddingTop > (-AndroidUtilities.m1124dp(1.0f)) && holder != null && holder.getAdapterPosition() == 0) {
                runShadowAnimation(0, false);
                i = paddingTop;
            } else {
                runShadowAnimation(0, true);
            }
            if (this.scrollOffsetY != i) {
                setScrollOffsetY(i);
            }
        }

        @Keep
        public int getScrollOffsetY() {
            return this.scrollOffsetY;
        }

        @Keep
        public void setScrollOffsetY(int i) {
            RecyclerListView recyclerListView = this.listView;
            this.scrollOffsetY = i;
            recyclerListView.setTopGlowOffset(i);
            this.frameLayout.setTranslationY(this.scrollOffsetY);
            this.colorPicker.setTranslationY(this.scrollOffsetY);
            this.searchEmptyView.setTranslationY(this.scrollOffsetY);
            this.containerView.invalidate();
        }

        public class SearchAdapter extends RecyclerListView.SelectionAdapter {
            private Context context;
            private int lastSearchId;
            private String lastSearchText;
            private Runnable searchRunnable;
            private ArrayList searchResult = new ArrayList();
            private ArrayList searchNames = new ArrayList();

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemViewType(int i) {
                return i == 0 ? 1 : 0;
            }

            @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
            public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
                return true;
            }

            public SearchAdapter(Context context) {
                this.context = context;
            }

            public CharSequence generateSearchName(String str, String str2) {
                if (TextUtils.isEmpty(str)) {
                    return _UrlKt.FRAGMENT_ENCODE_SET;
                }
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                String strTrim = str.trim();
                String lowerCase = strTrim.toLowerCase();
                int i = 0;
                while (true) {
                    int iIndexOf = lowerCase.indexOf(str2, i);
                    if (iIndexOf == -1) {
                        break;
                    }
                    int length = str2.length() + iIndexOf;
                    if (i != 0 && i != iIndexOf + 1) {
                        spannableStringBuilder.append((CharSequence) strTrim.substring(i, iIndexOf));
                    } else if (i == 0 && iIndexOf != 0) {
                        spannableStringBuilder.append((CharSequence) strTrim.substring(0, iIndexOf));
                    }
                    String strSubstring = strTrim.substring(iIndexOf, Math.min(strTrim.length(), length));
                    if (strSubstring.startsWith(" ")) {
                        spannableStringBuilder.append((CharSequence) " ");
                    }
                    String strTrim2 = strSubstring.trim();
                    int length2 = spannableStringBuilder.length();
                    spannableStringBuilder.append((CharSequence) strTrim2);
                    spannableStringBuilder.setSpan(new ForegroundColorSpan(-11697229), length2, strTrim2.length() + length2, 33);
                    i = length;
                }
                if (i != -1 && i < strTrim.length()) {
                    spannableStringBuilder.append((CharSequence) strTrim.substring(i));
                }
                return spannableStringBuilder;
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* JADX INFO: renamed from: searchDialogsInternal, reason: merged with bridge method [inline-methods] */
            public void lambda$searchDialogs$1(String str, int i) {
                try {
                    String lowerCase = str.trim().toLowerCase();
                    if (lowerCase.length() == 0) {
                        this.lastSearchId = -1;
                        updateSearchResults(new ArrayList(), new ArrayList(), this.lastSearchId);
                        return;
                    }
                    String translitString = LocaleController.getInstance().getTranslitString(lowerCase);
                    if (lowerCase.equals(translitString) || translitString.length() == 0) {
                        translitString = null;
                    }
                    int i2 = (translitString != null ? 1 : 0) + 1;
                    String[] strArr = new String[i2];
                    strArr[0] = lowerCase;
                    if (translitString != null) {
                        strArr[1] = translitString;
                    }
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    int size = EditorAlert.this.listAdapter.items.size();
                    for (int i3 = 0; i3 < size; i3++) {
                        ArrayList arrayList3 = (ArrayList) EditorAlert.this.listAdapter.items.get(i3);
                        String stringName = ThemeColors.getStringName(((ThemeDescription) arrayList3.get(0)).getCurrentKey());
                        String lowerCase2 = stringName.toLowerCase();
                        int i4 = 0;
                        while (true) {
                            if (i4 < i2) {
                                String str2 = strArr[i4];
                                if (lowerCase2.contains(str2)) {
                                    arrayList.add(arrayList3);
                                    arrayList2.add(generateSearchName(stringName, str2));
                                    break;
                                }
                                i4++;
                            }
                        }
                    }
                    updateSearchResults(arrayList, arrayList2, i);
                } catch (Exception e) {
                    FileLog.m1136e(e);
                }
            }

            private void updateSearchResults(final ArrayList arrayList, final ArrayList arrayList2, final int i) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ThemeEditorView$EditorAlert$SearchAdapter$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$updateSearchResults$0(i, arrayList, arrayList2);
                    }
                });
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$updateSearchResults$0(int i, ArrayList arrayList, ArrayList arrayList2) {
                if (i != this.lastSearchId) {
                    return;
                }
                if (EditorAlert.this.listView.getAdapter() != EditorAlert.this.searchAdapter) {
                    EditorAlert editorAlert = EditorAlert.this;
                    editorAlert.topBeforeSwitch = editorAlert.getCurrentTop();
                    EditorAlert.this.listView.setAdapter(EditorAlert.this.searchAdapter);
                    EditorAlert.this.searchAdapter.notifyDataSetChanged();
                }
                boolean z = !this.searchResult.isEmpty() && arrayList.isEmpty();
                boolean z2 = this.searchResult.isEmpty() && arrayList.isEmpty();
                if (z) {
                    EditorAlert editorAlert2 = EditorAlert.this;
                    editorAlert2.topBeforeSwitch = editorAlert2.getCurrentTop();
                }
                this.searchResult = arrayList;
                this.searchNames = arrayList2;
                notifyDataSetChanged();
                if (!z2 && !z && EditorAlert.this.topBeforeSwitch > 0) {
                    EditorAlert.this.layoutManager.scrollToPositionWithOffset(0, -EditorAlert.this.topBeforeSwitch);
                    EditorAlert.this.topBeforeSwitch = -1000;
                }
                EditorAlert.this.searchEmptyView.showTextView();
            }

            public void searchDialogs(final String str) {
                if (str == null || !str.equals(this.lastSearchText)) {
                    this.lastSearchText = str;
                    if (this.searchRunnable != null) {
                        Utilities.searchQueue.cancelRunnable(this.searchRunnable);
                        this.searchRunnable = null;
                    }
                    if (str == null || str.length() == 0) {
                        this.searchResult.clear();
                        EditorAlert editorAlert = EditorAlert.this;
                        editorAlert.topBeforeSwitch = editorAlert.getCurrentTop();
                        this.lastSearchId = -1;
                        notifyDataSetChanged();
                        return;
                    }
                    final int i = this.lastSearchId + 1;
                    this.lastSearchId = i;
                    this.searchRunnable = new Runnable() { // from class: org.telegram.ui.Components.ThemeEditorView$EditorAlert$SearchAdapter$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$searchDialogs$1(str, i);
                        }
                    };
                    Utilities.searchQueue.postRunnable(this.searchRunnable, 300L);
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemCount() {
                if (this.searchResult.isEmpty()) {
                    return 0;
                }
                return this.searchResult.size() + 1;
            }

            public ArrayList getItem(int i) {
                if (i < 0 || i >= this.searchResult.size()) {
                    return null;
                }
                return (ArrayList) this.searchResult.get(i);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
                View textColorThemeCell;
                if (i == 0) {
                    textColorThemeCell = new TextColorThemeCell(this.context);
                    textColorThemeCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
                } else {
                    textColorThemeCell = new View(this.context);
                    textColorThemeCell.setLayoutParams(new RecyclerView.LayoutParams(-1, AndroidUtilities.m1124dp(56.0f)));
                }
                return new RecyclerListView.Holder(textColorThemeCell);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
                if (viewHolder.getItemViewType() == 0) {
                    int i2 = i - 1;
                    ThemeDescription themeDescription = (ThemeDescription) ((ArrayList) this.searchResult.get(i2)).get(0);
                    ((TextColorThemeCell) viewHolder.itemView).setTextAndColor((CharSequence) this.searchNames.get(i2), themeDescription.getCurrentKey() != Theme.key_chat_wallpaper ? themeDescription.getSetColor() : 0);
                }
            }
        }

        private class ListAdapter extends RecyclerListView.SelectionAdapter {
            private Context context;
            private ArrayList items = new ArrayList();

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemViewType(int i) {
                return i == 0 ? 1 : 0;
            }

            @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
            public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
                return true;
            }

            public ListAdapter(Context context, ArrayList arrayList) {
                this.context = context;
                HashMap map = new HashMap();
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    ThemeDescription themeDescription = (ThemeDescription) arrayList.get(i);
                    int currentKey = themeDescription.getCurrentKey();
                    ArrayList arrayList2 = (ArrayList) map.get(Integer.valueOf(currentKey));
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList();
                        map.put(Integer.valueOf(currentKey), arrayList2);
                        this.items.add(arrayList2);
                    }
                    arrayList2.add(themeDescription);
                }
                if (Build.VERSION.SDK_INT >= 26) {
                    int i2 = Theme.key_windowBackgroundGray;
                    if (map.containsKey(Integer.valueOf(i2))) {
                        return;
                    }
                    ArrayList arrayList3 = new ArrayList();
                    arrayList3.add(new ThemeDescription(null, 0, null, null, null, null, i2));
                    this.items.add(arrayList3);
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemCount() {
                if (this.items.isEmpty()) {
                    return 0;
                }
                return this.items.size() + 1;
            }

            public ArrayList getItem(int i) {
                if (i < 0 || i >= this.items.size()) {
                    return null;
                }
                return (ArrayList) this.items.get(i);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
                View textColorThemeCell;
                if (i == 0) {
                    textColorThemeCell = new TextColorThemeCell(this.context);
                    textColorThemeCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
                } else {
                    textColorThemeCell = new View(this.context);
                    textColorThemeCell.setLayoutParams(new RecyclerView.LayoutParams(-1, AndroidUtilities.m1124dp(56.0f)));
                }
                return new RecyclerListView.Holder(textColorThemeCell);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
                if (viewHolder.getItemViewType() == 0) {
                    ThemeDescription themeDescription = (ThemeDescription) ((ArrayList) this.items.get(i - 1)).get(0);
                    ((TextColorThemeCell) viewHolder.itemView).setTextAndColor(themeDescription.getTitle(), themeDescription.getCurrentKey() != Theme.key_chat_wallpaper ? themeDescription.getSetColor() : 0);
                }
            }
        }
    }

    public void show(Activity activity, Theme.ThemeInfo themeInfo) {
        if (Instance != null) {
            Instance.destroy();
        }
        this.hidden = false;
        this.themeInfo = themeInfo;
        this.windowView = new C52171(activity);
        this.windowManager = (WindowManager) activity.getSystemService("window");
        SharedPreferences sharedPreferences = ApplicationLoader.applicationContext.getSharedPreferences("themeconfig", 0);
        this.preferences = sharedPreferences;
        int i = sharedPreferences.getInt("sidex", 1);
        int i2 = this.preferences.getInt("sidey", 0);
        float f = this.preferences.getFloat("px", 0.0f);
        float f2 = this.preferences.getFloat("py", 0.0f);
        try {
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
            this.windowLayoutParams = layoutParams;
            int i3 = this.editorWidth;
            layoutParams.width = i3;
            layoutParams.height = this.editorHeight;
            layoutParams.x = getSideCoord(true, i, f, i3);
            this.windowLayoutParams.y = getSideCoord(false, i2, f2, this.editorHeight);
            WindowManager.LayoutParams layoutParams2 = this.windowLayoutParams;
            layoutParams2.format = -3;
            layoutParams2.gravity = 51;
            layoutParams2.type = 99;
            layoutParams2.flags = 16777736;
            AndroidUtilities.setPreferredMaxRefreshRate(this.windowManager, this.windowView, layoutParams2);
            this.windowManager.addView(this.windowView, this.windowLayoutParams);
            this.wallpaperUpdater = new WallpaperUpdater(activity, null, new WallpaperUpdater.WallpaperUpdaterDelegate() { // from class: org.telegram.ui.Components.ThemeEditorView.2
                @Override // org.telegram.ui.Components.WallpaperUpdater.WallpaperUpdaterDelegate
                public void didSelectWallpaper(File file, Bitmap bitmap, boolean z) throws Throwable {
                    Theme.setThemeWallpaper(ThemeEditorView.this.themeInfo, bitmap, file);
                }

                @Override // org.telegram.ui.Components.WallpaperUpdater.WallpaperUpdaterDelegate
                public void needOpenColorPicker() throws Throwable {
                    for (int i4 = 0; i4 < ThemeEditorView.this.currentThemeDesription.size(); i4++) {
                        ThemeDescription themeDescription = (ThemeDescription) ThemeEditorView.this.currentThemeDesription.get(i4);
                        themeDescription.startEditing();
                        if (i4 == 0) {
                            ThemeEditorView.this.editorAlert.colorPicker.setColor(themeDescription.getCurrentColor());
                        }
                    }
                    ThemeEditorView.this.editorAlert.setColorPickerVisible(true);
                }
            });
            Instance = this;
            this.parentActivity = activity;
            showWithAnimation();
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
    }

    /* JADX INFO: renamed from: org.telegram.ui.Components.ThemeEditorView$1 */
    /* JADX INFO: loaded from: classes7.dex */
    class C52171 extends FrameLayout {
        private boolean dragging;
        private float startX;
        private float startY;

        public static /* synthetic */ void $r8$lambda$oc9I2dK8GKQWkypXPayXK8aXBxc(DialogInterface dialogInterface) {
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            return true;
        }

        C52171(Context context) {
            super(context);
        }

        /* JADX WARN: Removed duplicated region for block: B:32:0x008e  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x0091  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x0097  */
        @Override // android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public boolean onTouchEvent(MotionEvent motionEvent) {
            INavigationLayout actionBarLayout;
            ArrayList<ThemeDescription> themeDescriptions;
            float rawX = motionEvent.getRawX();
            float rawY = motionEvent.getRawY();
            if (motionEvent.getAction() == 0) {
                this.startX = rawX;
                this.startY = rawY;
            } else if (motionEvent.getAction() != 2 || this.dragging) {
                if (motionEvent.getAction() == 1 && !this.dragging && ThemeEditorView.this.editorAlert == null) {
                    LaunchActivity launchActivity = (LaunchActivity) ThemeEditorView.this.parentActivity;
                    if (AndroidUtilities.isTablet()) {
                        actionBarLayout = launchActivity.getLayersActionBarLayout();
                        if (actionBarLayout != null && actionBarLayout.getFragmentStack().isEmpty()) {
                            actionBarLayout = null;
                        }
                        if (actionBarLayout == null && (actionBarLayout = launchActivity.getRightActionBarLayout()) != null && actionBarLayout.getFragmentStack().isEmpty()) {
                        }
                        if (actionBarLayout == null) {
                        }
                        if (actionBarLayout != null) {
                        }
                    } else {
                        actionBarLayout = null;
                        if (actionBarLayout == null) {
                            actionBarLayout = launchActivity.getActionBarLayout();
                        }
                        if (actionBarLayout != null) {
                            BaseFragment baseFragment = actionBarLayout.getFragmentStack().isEmpty() ? null : (BaseFragment) actionBarLayout.getFragmentStack().get(actionBarLayout.getFragmentStack().size() - 1);
                            if (baseFragment != null && (themeDescriptions = baseFragment.getThemeDescriptions()) != null) {
                                ThemeEditorView themeEditorView = ThemeEditorView.this;
                                ThemeEditorView themeEditorView2 = ThemeEditorView.this;
                                themeEditorView.editorAlert = themeEditorView2.new EditorAlert(themeEditorView2.parentActivity, themeDescriptions);
                                ThemeEditorView.this.editorAlert.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.ThemeEditorView$1$$ExternalSyntheticLambda0
                                    @Override // android.content.DialogInterface.OnDismissListener
                                    public final void onDismiss(DialogInterface dialogInterface) {
                                        ThemeEditorView.C52171.$r8$lambda$oc9I2dK8GKQWkypXPayXK8aXBxc(dialogInterface);
                                    }
                                });
                                ThemeEditorView.this.editorAlert.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.ThemeEditorView$1$$ExternalSyntheticLambda1
                                    @Override // android.content.DialogInterface.OnDismissListener
                                    public final void onDismiss(DialogInterface dialogInterface) {
                                        this.f$0.lambda$onTouchEvent$1(dialogInterface);
                                    }
                                });
                                ThemeEditorView.this.editorAlert.show();
                                ThemeEditorView.this.hide();
                            }
                        }
                    }
                }
            } else if (Math.abs(this.startX - rawX) >= AndroidUtilities.getPixelsInCM(0.3f, true) || Math.abs(this.startY - rawY) >= AndroidUtilities.getPixelsInCM(0.3f, false)) {
                this.dragging = true;
                this.startX = rawX;
                this.startY = rawY;
            }
            if (this.dragging) {
                if (motionEvent.getAction() == 2) {
                    float f = rawX - this.startX;
                    float f2 = rawY - this.startY;
                    ThemeEditorView.this.windowLayoutParams.x = (int) (r6.x + f);
                    ThemeEditorView.this.windowLayoutParams.y = (int) (r11.y + f2);
                    int i = ThemeEditorView.this.editorWidth / 2;
                    int i2 = -i;
                    if (ThemeEditorView.this.windowLayoutParams.x < i2) {
                        ThemeEditorView.this.windowLayoutParams.x = i2;
                    } else if (ThemeEditorView.this.windowLayoutParams.x > (AndroidUtilities.displaySize.x - ThemeEditorView.this.windowLayoutParams.width) + i) {
                        ThemeEditorView.this.windowLayoutParams.x = (AndroidUtilities.displaySize.x - ThemeEditorView.this.windowLayoutParams.width) + i;
                    }
                    float f3 = 1.0f;
                    if (ThemeEditorView.this.windowLayoutParams.x < 0) {
                        f3 = 1.0f + ((ThemeEditorView.this.windowLayoutParams.x / i) * 0.5f);
                    } else if (ThemeEditorView.this.windowLayoutParams.x > AndroidUtilities.displaySize.x - ThemeEditorView.this.windowLayoutParams.width) {
                        f3 = 1.0f - ((((ThemeEditorView.this.windowLayoutParams.x - AndroidUtilities.displaySize.x) + ThemeEditorView.this.windowLayoutParams.width) / i) * 0.5f);
                    }
                    if (ThemeEditorView.this.windowView.getAlpha() != f3) {
                        ThemeEditorView.this.windowView.setAlpha(f3);
                    }
                    if (ThemeEditorView.this.windowLayoutParams.y < 0) {
                        ThemeEditorView.this.windowLayoutParams.y = 0;
                    } else if (ThemeEditorView.this.windowLayoutParams.y > AndroidUtilities.displaySize.y - ThemeEditorView.this.windowLayoutParams.height) {
                        ThemeEditorView.this.windowLayoutParams.y = AndroidUtilities.displaySize.y - ThemeEditorView.this.windowLayoutParams.height;
                    }
                    ThemeEditorView.this.windowManager.updateViewLayout(ThemeEditorView.this.windowView, ThemeEditorView.this.windowLayoutParams);
                    this.startX = rawX;
                    this.startY = rawY;
                } else if (motionEvent.getAction() == 1) {
                    this.dragging = false;
                    ThemeEditorView.this.animateToBoundsMaybe();
                }
            }
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onTouchEvent$1(DialogInterface dialogInterface) {
            ThemeEditorView.this.editorAlert = null;
            ThemeEditorView.this.show();
        }
    }

    private void showWithAnimation() {
        this.windowView.setBackgroundResource(C2888R.drawable.theme_picker);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ObjectAnimator.ofFloat(this.windowView, (Property<FrameLayout, Float>) View.ALPHA, 0.0f, 1.0f), ObjectAnimator.ofFloat(this.windowView, (Property<FrameLayout, Float>) View.SCALE_X, 0.0f, 1.0f), ObjectAnimator.ofFloat(this.windowView, (Property<FrameLayout, Float>) View.SCALE_Y, 0.0f, 1.0f));
        animatorSet.setInterpolator(this.decelerateInterpolator);
        animatorSet.setDuration(150L);
        animatorSet.start();
    }

    private static int getSideCoord(boolean z, int i, float f, int i2) {
        int i3;
        int iRound;
        if (z) {
            i3 = AndroidUtilities.displaySize.x;
        } else {
            i3 = AndroidUtilities.displaySize.y - i2;
            i2 = ActionBar.getCurrentActionBarHeight();
        }
        int i4 = i3 - i2;
        if (i == 0) {
            iRound = AndroidUtilities.m1124dp(10.0f);
        } else if (i == 1) {
            iRound = i4 - AndroidUtilities.m1124dp(10.0f);
        } else {
            iRound = Math.round((i4 - AndroidUtilities.m1124dp(20.0f)) * f) + AndroidUtilities.m1124dp(10.0f);
        }
        return !z ? iRound + ActionBar.getCurrentActionBarHeight() : iRound;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hide() {
        if (this.parentActivity == null) {
            return;
        }
        try {
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(ObjectAnimator.ofFloat(this.windowView, (Property<FrameLayout, Float>) View.ALPHA, 1.0f, 0.0f), ObjectAnimator.ofFloat(this.windowView, (Property<FrameLayout, Float>) View.SCALE_X, 1.0f, 0.0f), ObjectAnimator.ofFloat(this.windowView, (Property<FrameLayout, Float>) View.SCALE_Y, 1.0f, 0.0f));
            animatorSet.setInterpolator(this.decelerateInterpolator);
            animatorSet.setDuration(150L);
            animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ThemeEditorView.3
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (ThemeEditorView.this.windowView != null) {
                        ThemeEditorView.this.windowView.setBackground(null);
                        ThemeEditorView.this.windowManager.removeView(ThemeEditorView.this.windowView);
                    }
                }
            });
            animatorSet.start();
            this.hidden = true;
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void show() {
        if (this.parentActivity == null) {
            return;
        }
        AndroidUtilities.setPreferredMaxRefreshRate(this.windowManager, this.windowView, this.windowLayoutParams);
        try {
            this.windowManager.addView(this.windowView, this.windowLayoutParams);
            this.hidden = false;
            showWithAnimation();
        } catch (Exception unused) {
        }
    }

    public void close() {
        try {
            this.windowManager.removeView(this.windowView);
        } catch (Exception unused) {
        }
        this.parentActivity = null;
    }

    public void onConfigurationChanged() {
        int i = this.preferences.getInt("sidex", 1);
        int i2 = this.preferences.getInt("sidey", 0);
        float f = this.preferences.getFloat("px", 0.0f);
        float f2 = this.preferences.getFloat("py", 0.0f);
        this.windowLayoutParams.x = getSideCoord(true, i, f, this.editorWidth);
        this.windowLayoutParams.y = getSideCoord(false, i2, f2, this.editorHeight);
        try {
            if (this.windowView.getParent() != null) {
                this.windowManager.updateViewLayout(this.windowView, this.windowLayoutParams);
            }
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        WallpaperUpdater wallpaperUpdater = this.wallpaperUpdater;
        if (wallpaperUpdater != null) {
            wallpaperUpdater.onActivityResult(i, i2, intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:35:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0187  */
    /* JADX WARN: Removed duplicated region for block: B:59:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void animateToBoundsMaybe() {
        float f;
        ArrayList arrayList;
        boolean z;
        int i;
        float f2;
        int sideCoord = getSideCoord(true, 0, 0.0f, this.editorWidth);
        int sideCoord2 = getSideCoord(true, 1, 0.0f, this.editorWidth);
        int sideCoord3 = getSideCoord(false, 0, 0.0f, this.editorHeight);
        int sideCoord4 = getSideCoord(false, 1, 0.0f, this.editorHeight);
        SharedPreferences.Editor editorEdit = this.preferences.edit();
        int iM1124dp = AndroidUtilities.m1124dp(20.0f);
        if (Math.abs(sideCoord - this.windowLayoutParams.x) <= iM1124dp || ((i = this.windowLayoutParams.x) < 0 && i > (-this.editorWidth) / 4)) {
            f = 0.0f;
            ArrayList arrayList2 = new ArrayList();
            editorEdit.putInt("sidex", 0);
            if (this.windowView.getAlpha() != 1.0f) {
                arrayList2.add(ObjectAnimator.ofFloat(this.windowView, (Property<FrameLayout, Float>) View.ALPHA, 1.0f));
            }
            arrayList2.add(ObjectAnimator.ofInt(this, "x", sideCoord));
            arrayList = arrayList2;
        } else {
            if (Math.abs(sideCoord2 - i) > iM1124dp) {
                int i2 = this.windowLayoutParams.x;
                int i3 = AndroidUtilities.displaySize.x;
                f = 0.0f;
                int i4 = this.editorWidth;
                f2 = 1.0f;
                if (i2 <= i3 - i4 || i2 >= i3 - ((i4 / 4) * 3)) {
                    if (this.windowView.getAlpha() != 1.0f) {
                        arrayList = new ArrayList();
                        if (this.windowLayoutParams.x < 0) {
                            arrayList.add(ObjectAnimator.ofInt(this, "x", -this.editorWidth));
                        } else {
                            arrayList.add(ObjectAnimator.ofInt(this, "x", AndroidUtilities.displaySize.x));
                        }
                        z = true;
                        if (!z) {
                            if (Math.abs(sideCoord3 - this.windowLayoutParams.y) <= iM1124dp || this.windowLayoutParams.y <= ActionBar.getCurrentActionBarHeight()) {
                                if (arrayList == null) {
                                    arrayList = new ArrayList();
                                }
                                editorEdit.putInt("sidey", 0);
                                arrayList.add(ObjectAnimator.ofInt(this, "y", sideCoord3));
                            } else if (Math.abs(sideCoord4 - this.windowLayoutParams.y) <= iM1124dp) {
                                if (arrayList == null) {
                                    arrayList = new ArrayList();
                                }
                                editorEdit.putInt("sidey", 1);
                                arrayList.add(ObjectAnimator.ofInt(this, "y", sideCoord4));
                            } else {
                                editorEdit.putFloat("py", (this.windowLayoutParams.y - sideCoord3) / (sideCoord4 - sideCoord3));
                                editorEdit.putInt("sidey", 2);
                            }
                            editorEdit.apply();
                        }
                        if (arrayList == null) {
                            if (this.decelerateInterpolator == null) {
                                this.decelerateInterpolator = new DecelerateInterpolator();
                            }
                            AnimatorSet animatorSet = new AnimatorSet();
                            animatorSet.setInterpolator(this.decelerateInterpolator);
                            animatorSet.setDuration(150L);
                            if (z) {
                                arrayList.add(ObjectAnimator.ofFloat(this.windowView, (Property<FrameLayout, Float>) View.ALPHA, f));
                                animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ThemeEditorView.4
                                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                    public void onAnimationEnd(Animator animator) throws Throwable {
                                        Theme.saveCurrentTheme(ThemeEditorView.this.themeInfo, true, false, false);
                                        ThemeEditorView.this.destroy();
                                    }
                                });
                            }
                            animatorSet.playTogether(arrayList);
                            animatorSet.start();
                            return;
                        }
                        return;
                    }
                    editorEdit.putFloat("px", (this.windowLayoutParams.x - sideCoord) / (sideCoord2 - sideCoord));
                    editorEdit.putInt("sidex", 2);
                    arrayList = null;
                }
            } else {
                f = 0.0f;
                f2 = 1.0f;
            }
            arrayList = new ArrayList();
            editorEdit.putInt("sidex", 1);
            if (this.windowView.getAlpha() != f2) {
                arrayList.add(ObjectAnimator.ofFloat(this.windowView, (Property<FrameLayout, Float>) View.ALPHA, f2));
            }
            arrayList.add(ObjectAnimator.ofInt(this, "x", sideCoord2));
        }
        z = false;
        if (!z) {
        }
        if (arrayList == null) {
        }
    }

    @Keep
    public int getX() {
        return this.windowLayoutParams.x;
    }

    @Keep
    public int getY() {
        return this.windowLayoutParams.y;
    }

    @Keep
    public void setX(int i) {
        WindowManager.LayoutParams layoutParams = this.windowLayoutParams;
        layoutParams.x = i;
        this.windowManager.updateViewLayout(this.windowView, layoutParams);
    }

    @Keep
    public void setY(int i) {
        WindowManager.LayoutParams layoutParams = this.windowLayoutParams;
        layoutParams.y = i;
        this.windowManager.updateViewLayout(this.windowView, layoutParams);
    }
}
