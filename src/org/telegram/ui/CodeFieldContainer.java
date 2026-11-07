package org.telegram.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import okhttp3.internal.url._UrlKt;
import org.telegram.PhoneFormat.PhoneFormat;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.LayoutHelper;

/* JADX INFO: loaded from: classes6.dex */
public abstract class CodeFieldContainer extends LinearLayout {
    Paint bitmapPaint;
    public CodeNumberField[] codeField;
    public boolean ignoreOnTextChange;
    public boolean isFocusSuppressed;
    Paint paint;
    float strokeWidth;

    public abstract void processNextPressed();

    public CodeFieldContainer(Context context) {
        super(context);
        this.paint = new Paint(1);
        this.bitmapPaint = new Paint(1);
        this.paint.setStyle(Paint.Style.STROKE);
        setOrientation(0);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        Paint paint = this.paint;
        float fDp = AndroidUtilities.dp(1.5f);
        this.strokeWidth = fDp;
        paint.setStrokeWidth(fDp);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt instanceof CodeNumberField) {
                CodeNumberField codeNumberField = (CodeNumberField) childAt;
                if (!this.isFocusSuppressed) {
                    if (childAt.isFocused()) {
                        codeNumberField.animateFocusedProgress(1.0f);
                    } else if (!childAt.isFocused()) {
                        codeNumberField.animateFocusedProgress(0.0f);
                    }
                }
                float successProgress = codeNumberField.getSuccessProgress();
                this.paint.setColor(ColorUtils.blendARGB(ColorUtils.blendARGB(ColorUtils.blendARGB(Theme.getColor(Theme.key_windowBackgroundWhiteInputField), Theme.getColor(Theme.key_windowBackgroundWhiteInputFieldActivated), codeNumberField.getFocusedProgress()), Theme.getColor(Theme.key_text_RedBold), codeNumberField.getErrorProgress()), Theme.getColor(Theme.key_checkbox), successProgress));
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(childAt.getLeft(), childAt.getTop(), childAt.getRight(), childAt.getBottom());
                float f = this.strokeWidth;
                rectF.inset(f, f);
                if (successProgress != 0.0f) {
                    float f2 = -Math.max(0.0f, this.strokeWidth * (codeNumberField.getSuccessScaleProgress() - 1.0f));
                    rectF.inset(f2, f2);
                }
                canvas.drawRoundRect(rectF, AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), this.paint);
            }
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j) {
        if (view instanceof CodeNumberField) {
            CodeNumberField codeNumberField = (CodeNumberField) view;
            canvas.save();
            float f = codeNumberField.enterAnimation;
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set(view.getX(), view.getY(), view.getX() + view.getMeasuredWidth(), view.getY() + view.getMeasuredHeight());
            float f2 = this.strokeWidth;
            rectF.inset(f2, f2);
            canvas.clipRect(rectF);
            if (codeNumberField.replaceAnimation) {
                float f3 = (f * 0.5f) + 0.5f;
                view.setAlpha(f);
                canvas.scale(f3, f3, codeNumberField.getX() + (codeNumberField.getMeasuredWidth() / 2.0f), codeNumberField.getY() + (codeNumberField.getMeasuredHeight() / 2.0f));
            } else {
                view.setAlpha(1.0f);
                canvas.translate(0.0f, view.getMeasuredHeight() * (1.0f - f));
            }
            super.drawChild(canvas, view, j);
            canvas.restore();
            float f4 = codeNumberField.exitAnimation;
            if (f4 >= 1.0f) {
                return true;
            }
            canvas.save();
            float f5 = 1.0f - f4;
            float f6 = (f5 * 0.5f) + 0.5f;
            canvas.scale(f6, f6, codeNumberField.getX() + (codeNumberField.getMeasuredWidth() / 2.0f), codeNumberField.getY() + (codeNumberField.getMeasuredHeight() / 2.0f));
            this.bitmapPaint.setAlpha((int) (f5 * 255.0f));
            canvas.drawBitmap(codeNumberField.exitBitmap, codeNumberField.getX(), codeNumberField.getY(), this.bitmapPaint);
            canvas.restore();
            return true;
        }
        return super.drawChild(canvas, view, j);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00b2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setNumbersCount(final int i, int i2) {
        int i3;
        int i4;
        int i5;
        CodeNumberField[] codeNumberFieldArr = this.codeField;
        int i6 = 0;
        if (codeNumberFieldArr == null || codeNumberFieldArr.length != i) {
            if (codeNumberFieldArr != null) {
                for (CodeNumberField codeNumberField : codeNumberFieldArr) {
                    removeView(codeNumberField);
                }
            }
            this.codeField = new CodeNumberField[i];
            final int i7 = 0;
            while (i7 < i) {
                this.codeField[i7] = new CodeNumberField(getContext()) { // from class: org.telegram.ui.CodeFieldContainer.1
                    @Override // com.exteragram.messenger.components.ReceiveContentEditText, android.view.View
                    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
                        int i8;
                        int i9 = 0;
                        if (keyEvent.getKeyCode() == 4) {
                            return false;
                        }
                        int keyCode = keyEvent.getKeyCode();
                        if (i7 >= CodeFieldContainer.this.codeField.length) {
                            return false;
                        }
                        if (keyEvent.getAction() != 1) {
                            return isFocused();
                        }
                        if (keyCode == 67 && CodeFieldContainer.this.codeField[i7].length() == 1) {
                            CodeFieldContainer.this.codeField[i7].startExitAnimation();
                            CodeFieldContainer.this.codeField[i7].setText(_UrlKt.FRAGMENT_ENCODE_SET);
                            return true;
                        }
                        if (keyCode != 67 || CodeFieldContainer.this.codeField[i7].length() != 0 || (i8 = i7) <= 0) {
                            if (keyCode >= 7 && keyCode <= 16) {
                                String string = Integer.toString(keyCode - 7);
                                if (CodeFieldContainer.this.codeField[i7].getText() != null && string.equals(CodeFieldContainer.this.codeField[i7].getText().toString())) {
                                    int i10 = i7;
                                    int i11 = i - 1;
                                    CodeFieldContainer codeFieldContainer = CodeFieldContainer.this;
                                    if (i10 >= i11) {
                                        codeFieldContainer.processNextPressed();
                                    } else {
                                        codeFieldContainer.codeField[i10 + 1].requestFocus();
                                    }
                                    return true;
                                }
                                if (CodeFieldContainer.this.codeField[i7].length() > 0) {
                                    CodeFieldContainer.this.codeField[i7].startExitAnimation();
                                }
                                CodeFieldContainer.this.codeField[i7].setText(string);
                            }
                            return true;
                        }
                        CodeNumberField[] codeNumberFieldArr2 = CodeFieldContainer.this.codeField;
                        codeNumberFieldArr2[i8 - 1].setSelection(codeNumberFieldArr2[i8 - 1].length());
                        while (true) {
                            int i12 = i7;
                            if (i9 < i12) {
                                int i13 = i12 - 1;
                                CodeFieldContainer codeFieldContainer2 = CodeFieldContainer.this;
                                if (i9 == i13) {
                                    codeFieldContainer2.codeField[i12 - 1].requestFocus();
                                } else {
                                    codeFieldContainer2.codeField[i9].clearFocus();
                                }
                                i9++;
                            } else {
                                CodeFieldContainer.this.codeField[i12 - 1].startExitAnimation();
                                CodeFieldContainer.this.codeField[i7 - 1].setText(_UrlKt.FRAGMENT_ENCODE_SET);
                                return true;
                            }
                        }
                    }
                };
                this.codeField[i7].setImeOptions(268435461);
                this.codeField[i7].setTextSize(1, 20.0f);
                this.codeField[i7].setMaxLines(1);
                this.codeField[i7].setTypeface(AndroidUtilities.bold());
                this.codeField[i7].setPadding(0, 0, 0, 0);
                this.codeField[i7].setGravity(17);
                CodeNumberField[] codeNumberFieldArr2 = this.codeField;
                if (i2 == 3) {
                    codeNumberFieldArr2[i7].setEnabled(false);
                    this.codeField[i7].setInputType(0);
                    this.codeField[i7].setVisibility(8);
                } else {
                    codeNumberFieldArr2[i7].setInputType(3);
                }
                int i8 = 42;
                int i9 = 10;
                if (i2 == 10) {
                    i3 = 47;
                } else {
                    i3 = 34;
                    if (i2 == 11) {
                        i8 = 28;
                        i9 = 5;
                    } else {
                        i9 = 7;
                        i4 = 42;
                        i5 = 34;
                        addView(this.codeField[i7], LayoutHelper.createLinear(i5, i4, 1, 0, 0, i7 == i + (-1) ? i9 : 0, 0));
                        this.codeField[i7].addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.CodeFieldContainer.2
                            @Override // android.text.TextWatcher
                            public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
                            }

                            @Override // android.text.TextWatcher
                            public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
                            }

                            @Override // android.text.TextWatcher
                            public void afterTextChanged(Editable editable) {
                                int length;
                                if (!CodeFieldContainer.this.ignoreOnTextChange && (length = editable.length()) >= 1) {
                                    int i10 = i7;
                                    if (length > 1) {
                                        String string = editable.toString();
                                        CodeFieldContainer.this.ignoreOnTextChange = true;
                                        for (int i11 = 0; i11 < Math.min(i - i7, length); i11++) {
                                            if (i11 == 0) {
                                                editable.replace(0, length, string.substring(i11, i11 + 1));
                                            } else {
                                                i10++;
                                                int i12 = i7;
                                                int i13 = i12 + i11;
                                                CodeNumberField[] codeNumberFieldArr3 = CodeFieldContainer.this.codeField;
                                                if (i13 < codeNumberFieldArr3.length) {
                                                    codeNumberFieldArr3[i12 + i11].setText(string.substring(i11, i11 + 1));
                                                }
                                            }
                                        }
                                        CodeFieldContainer.this.ignoreOnTextChange = false;
                                    }
                                    int i14 = i10 + 1;
                                    if (i14 >= 0) {
                                        CodeNumberField[] codeNumberFieldArr4 = CodeFieldContainer.this.codeField;
                                        if (i14 < codeNumberFieldArr4.length) {
                                            CodeNumberField codeNumberField2 = codeNumberFieldArr4[i14];
                                            codeNumberField2.setSelection(codeNumberField2.length());
                                            CodeFieldContainer.this.codeField[i14].requestFocus();
                                        }
                                    }
                                    int i15 = i;
                                    if ((i10 == i15 - 1 || (i10 == i15 - 2 && length >= 2)) && CodeFieldContainer.this.getCode().length() == i) {
                                        CodeFieldContainer.this.processNextPressed();
                                    }
                                }
                            }
                        });
                        this.codeField[i7].setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.CodeFieldContainer$$ExternalSyntheticLambda0
                            @Override // android.widget.TextView.OnEditorActionListener
                            public final boolean onEditorAction(TextView textView, int i10, KeyEvent keyEvent) {
                                return this.f$0.lambda$setNumbersCount$0(textView, i10, keyEvent);
                            }
                        });
                        i7++;
                    }
                }
                i5 = i8;
                i4 = i3;
                addView(this.codeField[i7], LayoutHelper.createLinear(i5, i4, 1, 0, 0, i7 == i + (-1) ? i9 : 0, 0));
                this.codeField[i7].addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.CodeFieldContainer.2
                    @Override // android.text.TextWatcher
                    public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
                    }

                    @Override // android.text.TextWatcher
                    public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
                    }

                    @Override // android.text.TextWatcher
                    public void afterTextChanged(Editable editable) {
                        int length;
                        if (!CodeFieldContainer.this.ignoreOnTextChange && (length = editable.length()) >= 1) {
                            int i10 = i7;
                            if (length > 1) {
                                String string = editable.toString();
                                CodeFieldContainer.this.ignoreOnTextChange = true;
                                for (int i11 = 0; i11 < Math.min(i - i7, length); i11++) {
                                    if (i11 == 0) {
                                        editable.replace(0, length, string.substring(i11, i11 + 1));
                                    } else {
                                        i10++;
                                        int i12 = i7;
                                        int i13 = i12 + i11;
                                        CodeNumberField[] codeNumberFieldArr3 = CodeFieldContainer.this.codeField;
                                        if (i13 < codeNumberFieldArr3.length) {
                                            codeNumberFieldArr3[i12 + i11].setText(string.substring(i11, i11 + 1));
                                        }
                                    }
                                }
                                CodeFieldContainer.this.ignoreOnTextChange = false;
                            }
                            int i14 = i10 + 1;
                            if (i14 >= 0) {
                                CodeNumberField[] codeNumberFieldArr4 = CodeFieldContainer.this.codeField;
                                if (i14 < codeNumberFieldArr4.length) {
                                    CodeNumberField codeNumberField2 = codeNumberFieldArr4[i14];
                                    codeNumberField2.setSelection(codeNumberField2.length());
                                    CodeFieldContainer.this.codeField[i14].requestFocus();
                                }
                            }
                            int i15 = i;
                            if ((i10 == i15 - 1 || (i10 == i15 - 2 && length >= 2)) && CodeFieldContainer.this.getCode().length() == i) {
                                CodeFieldContainer.this.processNextPressed();
                            }
                        }
                    }
                });
                this.codeField[i7].setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.CodeFieldContainer$$ExternalSyntheticLambda0
                    @Override // android.widget.TextView.OnEditorActionListener
                    public final boolean onEditorAction(TextView textView, int i10, KeyEvent keyEvent) {
                        return this.f$0.lambda$setNumbersCount$0(textView, i10, keyEvent);
                    }
                });
                i7++;
            }
            return;
        }
        while (true) {
            CodeNumberField[] codeNumberFieldArr3 = this.codeField;
            if (i6 >= codeNumberFieldArr3.length) {
                return;
            }
            codeNumberFieldArr3[i6].setText(_UrlKt.FRAGMENT_ENCODE_SET);
            i6++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$setNumbersCount$0(TextView textView, int i, KeyEvent keyEvent) {
        if (i != 5) {
            return false;
        }
        processNextPressed();
        return true;
    }

    public String getCode() {
        if (this.codeField == null) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        StringBuilder sb = new StringBuilder();
        int i = 0;
        while (true) {
            CodeNumberField[] codeNumberFieldArr = this.codeField;
            if (i < codeNumberFieldArr.length) {
                sb.append(PhoneFormat.stripExceptNumbers(codeNumberFieldArr[i].getText().toString()));
                i++;
            } else {
                return sb.toString();
            }
        }
    }

    public void setCode(String str) {
        this.codeField[0].setText(str);
    }

    public void setText(String str) {
        setText(str, false);
    }

    public void setText(String str, boolean z) {
        if (this.codeField == null) {
            return;
        }
        int i = 0;
        if (z) {
            int i2 = 0;
            while (true) {
                CodeNumberField[] codeNumberFieldArr = this.codeField;
                if (i2 >= codeNumberFieldArr.length) {
                    break;
                }
                if (codeNumberFieldArr[i2].isFocused()) {
                    i = i2;
                    break;
                }
                i2++;
            }
        }
        for (int i3 = i; i3 < Math.min(this.codeField.length, str.length() + i); i3++) {
            this.codeField[i3].setText(Character.toString(str.charAt(i3 - i)));
        }
    }
}
