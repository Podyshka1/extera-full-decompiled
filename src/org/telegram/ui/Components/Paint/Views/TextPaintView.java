package org.telegram.ui.Components.Paint.Views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.os.Build;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import java.util.Iterator;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2573R;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.AnimatedEmojiSpan;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.Paint.PaintTypeface;
import org.telegram.ui.Components.Paint.Swatch;
import org.telegram.ui.Components.Paint.Views.EntityView;
import org.telegram.ui.Components.RectOld;

/* JADX INFO: loaded from: classes7.dex */
public class TextPaintView extends EntityView {
    private int align;
    private int baseFontSize;
    private int currentType;
    private boolean disableAutoresize;
    private EditTextOutline editText;
    private String lastTypefaceKey;
    private int maxFontSize;
    private int minFontSize;
    private Runnable onFontChange;
    private Swatch swatch;
    private PaintTypeface typeface;

    public TextPaintView(Context context, PointF pointF, int i, CharSequence charSequence, Swatch swatch, int i2) {
        super(context, pointF);
        this.typeface = PaintTypeface.ROBOTO_MEDIUM;
        this.baseFontSize = i;
        EditTextOutline editTextOutline = new EditTextOutline(context) { // from class: org.telegram.ui.Components.Paint.Views.TextPaintView.1
            @Override // org.telegram.ui.Components.EditTextEffects, android.view.View
            public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                EntityView.SelectionView selectionView = TextPaintView.this.selectionView;
                if (selectionView == null || selectionView.getVisibility() != 0) {
                    return false;
                }
                return super.dispatchTouchEvent(motionEvent);
            }

            @Override // org.telegram.ui.Components.EditTextEffects, android.widget.TextView, android.view.View
            public void onLayout(boolean z, int i3, int i4, int i5, int i6) {
                super.onLayout(z, i3, i4, i5, i6);
                TextPaintView.this.updateSelectionView();
            }

            @Override // org.telegram.ui.Components.EditTextBoldCursor, android.widget.TextView, android.view.View
            public void onMeasure(int i3, int i4) {
                super.onMeasure(i3, i4);
                TextPaintView.this.updateSelectionView();
            }
        };
        this.editText = editTextOutline;
        NotificationCenter.listenEmojiLoading(editTextOutline);
        this.editText.setGravity(19);
        this.editText.setBackgroundColor(0);
        this.editText.setPadding(AndroidUtilities.dp(7.0f), AndroidUtilities.dp(7.0f), AndroidUtilities.dp(7.0f), AndroidUtilities.dp(7.0f));
        this.editText.setClickable(false);
        this.editText.setEnabled(false);
        this.editText.setCursorColor(-1);
        this.editText.setTextSize(0, this.baseFontSize);
        this.editText.setCursorSize(AndroidUtilities.dp(this.baseFontSize * 0.4f));
        this.editText.setText(charSequence);
        updateHint();
        this.editText.setTextColor(swatch.color);
        this.editText.setTypeface(null, 1);
        this.editText.setHorizontallyScrolling(false);
        int i3 = Build.VERSION.SDK_INT;
        EditTextOutline editTextOutline2 = this.editText;
        if (i3 >= 26) {
            editTextOutline2.setImeOptions(285212672);
        } else {
            editTextOutline2.setImeOptions(268435456);
        }
        this.editText.setFocusableInTouchMode(true);
        this.editText.setInputType(16384);
        this.editText.setSingleLine(false);
        addView(this.editText, LayoutHelper.createFrame(-2, -2, 51));
        EditTextOutline editTextOutline3 = this.editText;
        if (i3 >= 29) {
            editTextOutline3.setBreakStrategy(0);
        } else {
            editTextOutline3.setBreakStrategy(0);
        }
        setSwatch(swatch);
        setType(i2);
        updatePosition();
        this.editText.addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.Components.Paint.Views.TextPaintView.2
            boolean pasted;

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence2, int i4, int i5, int i6) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence2, int i4, int i5, int i6) {
                this.pasted = i6 > 3;
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                int iClamp;
                if (this.pasted && TextPaintView.this.minFontSize > 0 && TextPaintView.this.maxFontSize > 0 && !TextPaintView.this.disableAutoresize && TextPaintView.this.editText.getLayout() != null) {
                    float f = AndroidUtilities.displaySize.y / 3.0f;
                    float height = TextPaintView.this.editText.getLayout().getHeight();
                    if (height > f && (iClamp = Utilities.clamp((int) ((f / height) * TextPaintView.this.getBaseFontSize()), TextPaintView.this.maxFontSize, TextPaintView.this.minFontSize)) != TextPaintView.this.getBaseFontSize()) {
                        TextPaintView.this.setBaseFontSize(iClamp);
                        if (TextPaintView.this.onFontChange != null) {
                            TextPaintView.this.onFontChange.run();
                        }
                    }
                }
                TextPaintView.this.updateHint();
            }
        });
    }

    @Override // org.telegram.ui.Components.Paint.Views.EntityView
    public float getStickyPaddingLeft() {
        RectF rectF = this.editText.framePadding;
        if (rectF == null) {
            return 0.0f;
        }
        return rectF.left;
    }

    @Override // org.telegram.ui.Components.Paint.Views.EntityView
    public float getStickyPaddingRight() {
        RectF rectF = this.editText.framePadding;
        if (rectF == null) {
            return 0.0f;
        }
        return rectF.right;
    }

    @Override // org.telegram.ui.Components.Paint.Views.EntityView
    public float getStickyPaddingTop() {
        RectF rectF = this.editText.framePadding;
        if (rectF == null) {
            return 0.0f;
        }
        return rectF.top;
    }

    @Override // org.telegram.ui.Components.Paint.Views.EntityView
    public float getStickyPaddingBottom() {
        RectF rectF = this.editText.framePadding;
        if (rectF == null) {
            return 0.0f;
        }
        return rectF.bottom;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateHint() {
        int length = this.editText.getText().length();
        EditTextOutline editTextOutline = this.editText;
        if (length <= 0) {
            editTextOutline.setHint(LocaleController.getString(C2573R.string.TextPlaceholder));
            this.editText.setHintTextColor(1627389951);
        } else {
            editTextOutline.setHint((CharSequence) null);
        }
    }

    public TextPaintView(Context context, TextPaintView textPaintView, PointF pointF) {
        this(context, pointF, textPaintView.baseFontSize, textPaintView.getText(), textPaintView.getSwatch(), textPaintView.currentType);
        setRotation(textPaintView.getRotation());
        setScale(textPaintView.getScale());
        setTypeface(textPaintView.getTypeface());
        setAlign(textPaintView.getAlign());
        int align = getAlign();
        int i = 2;
        this.editText.setGravity(align != 1 ? align != 2 ? 19 : 21 : 17);
        int align2 = getAlign();
        if (align2 == 1) {
            i = 4;
        } else if (align2 == 2 ? !LocaleController.isRTL : LocaleController.isRTL) {
            i = 3;
        }
        this.editText.setTextAlignment(i);
    }

    public int getBaseFontSize() {
        return this.baseFontSize;
    }

    public void setMinMaxFontSize(int i, int i2, Runnable runnable) {
        this.minFontSize = i;
        this.maxFontSize = i2;
        this.onFontChange = runnable;
    }

    public void disableAutoresize(boolean z) {
        this.disableAutoresize = z;
    }

    public void setBaseFontSize(int i) {
        this.baseFontSize = i;
        float f = i;
        this.editText.setTextSize(0, f);
        this.editText.setCursorSize(AndroidUtilities.dp(f * 0.4f));
        if (this.editText.getText() != null) {
            Editable text = this.editText.getText();
            Emoji.EmojiSpan[] emojiSpanArr = (Emoji.EmojiSpan[]) text.getSpans(0, text.length(), Emoji.EmojiSpan.class);
            for (int i2 = 0; i2 < emojiSpanArr.length; i2++) {
                emojiSpanArr[i2].replaceFontMetrics(getFontMetricsInt());
                emojiSpanArr[i2].scale = 0.85f;
            }
            for (AnimatedEmojiSpan animatedEmojiSpan : (AnimatedEmojiSpan[]) text.getSpans(0, text.length(), AnimatedEmojiSpan.class)) {
                animatedEmojiSpan.replaceFontMetrics(getFontMetricsInt());
            }
            this.editText.invalidateForce();
        }
    }

    public void setAlign(int i) {
        this.align = i;
    }

    public int getAlign() {
        return this.align;
    }

    public void setTypeface(PaintTypeface paintTypeface) {
        this.typeface = paintTypeface;
        if (paintTypeface != null) {
            this.editText.setTypeface(paintTypeface.getTypeface());
        }
        updateSelectionView();
    }

    public void setTypeface(String str) {
        Iterator<PaintTypeface> it = PaintTypeface.get().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            PaintTypeface next = it.next();
            if (next.getKey().equals(str)) {
                setTypeface(next);
                str = null;
                break;
            }
        }
        this.lastTypefaceKey = str;
        updateSelectionView();
    }

    public void updateTypeface() {
        String str = this.lastTypefaceKey;
        if (str != null) {
            setTypeface(str);
        }
    }

    public PaintTypeface getTypeface() {
        return this.typeface;
    }

    public EditTextOutline getEditText() {
        return this.editText;
    }

    public void setMaxWidth(int i) {
        this.editText.setMaxWidth(i);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        updatePosition();
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        updatePosition();
    }

    public CharSequence getText() {
        return this.editText.getText();
    }

    public void setText(CharSequence charSequence) {
        this.editText.setText(charSequence);
        updateHint();
    }

    public Paint.FontMetricsInt getFontMetricsInt() {
        return this.editText.getPaint().getFontMetricsInt();
    }

    public float getFontSize() {
        return this.editText.getTextSize();
    }

    public View getFocusedView() {
        return this.editText;
    }

    public void beginEditing() {
        this.editText.setEnabled(true);
        this.editText.setClickable(true);
        this.editText.requestFocus();
        EditTextOutline editTextOutline = this.editText;
        editTextOutline.setSelection(editTextOutline.getText().length());
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Paint.Views.TextPaintView$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$beginEditing$0();
            }
        }, 300L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$beginEditing$0() {
        AndroidUtilities.showKeyboard(this.editText);
    }

    public void endEditing() {
        this.editText.clearFocus();
        this.editText.setEnabled(false);
        this.editText.setClickable(false);
        updateSelectionView();
    }

    public Swatch getSwatch() {
        return this.swatch;
    }

    public int getTextSize() {
        return (int) this.editText.getTextSize();
    }

    public void setSwatch(Swatch swatch) {
        this.swatch = swatch.clone();
        updateColor();
    }

    public void setType(int i) {
        this.currentType = i;
        updateColor();
    }

    public int getType() {
        return this.currentType;
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0031  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void updateColor() {
        this.editText.setShadowLayer(0.0f, 0.0f, 0.0f, 0);
        int i = this.swatch.color;
        int i2 = this.currentType;
        if (i2 == 0) {
            this.editText.setStrokeColor(0);
            this.editText.setFrameColor(this.swatch.color);
            i = AndroidUtilities.computePerceivedBrightness(this.swatch.color) >= 0.721f ? -16777216 : -1;
        } else if (i2 == 1) {
            this.editText.setFrameColor(AndroidUtilities.computePerceivedBrightness(i) >= 0.25f ? -1728053248 : -1711276033);
        } else if (i2 == 2) {
            this.editText.setFrameColor(AndroidUtilities.computePerceivedBrightness(i) >= 0.25f ? -16777216 : -1);
        } else {
            EditTextOutline editTextOutline = this.editText;
            if (i2 == 3) {
                editTextOutline.setStrokeColor(0);
                this.editText.setFrameColor(0);
            } else {
                editTextOutline.setFrameColor(0);
                this.editText.setStrokeColor(this.swatch.color);
                this.editText.setShadowLayer(0.0f, 0.0f, 0.0f, 0);
                if (AndroidUtilities.computePerceivedBrightness(this.swatch.color) >= 0.721f) {
                }
            }
        }
        this.editText.setTextColor(i);
        this.editText.setCursorColor(i);
        this.editText.setHandlesColor(i);
        this.editText.setHighlightColor(Theme.multAlpha(i, 0.4f));
    }

    @Override // org.telegram.ui.Components.Paint.Views.EntityView
    public RectOld getSelectionBounds() {
        ViewGroup viewGroup = (ViewGroup) getParent();
        if (viewGroup == null) {
            return new RectOld();
        }
        float scaleX = viewGroup.getScaleX();
        float measuredWidth = (getMeasuredWidth() * getScale()) + (AndroidUtilities.dp(64.0f) / scaleX);
        float measuredHeight = (getMeasuredHeight() * getScale()) + (AndroidUtilities.dp(52.0f) / scaleX);
        float positionX = (getPositionX() - (measuredWidth / 2.0f)) * scaleX;
        return new RectOld(positionX, (getPositionY() - (((measuredHeight - this.editText.getExtendedPaddingTop()) - AndroidUtilities.dpf2(4.0f)) / 2.0f)) * scaleX, ((measuredWidth * scaleX) + positionX) - positionX, (measuredHeight - this.editText.getExtendedPaddingBottom()) * scaleX);
    }

    @Override // org.telegram.ui.Components.Paint.Views.EntityView
    public TextViewSelectionView createSelectionView() {
        return new TextViewSelectionView(getContext());
    }

    public class TextViewSelectionView extends EntityView.SelectionView {
        private final Paint clearPaint;
        private Path path;

        public TextViewSelectionView(Context context) {
            super(context);
            Paint paint = new Paint(1);
            this.clearPaint = paint;
            this.path = new Path();
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        }

        @Override // org.telegram.ui.Components.Paint.Views.EntityView.SelectionView
        public int pointInsideHandle(float f, float f2) {
            float fDp = AndroidUtilities.dp(1.0f);
            float fDp2 = AndroidUtilities.dp(19.5f);
            float f3 = fDp + fDp2;
            float f4 = f3 * 2.0f;
            float measuredWidth = getMeasuredWidth() - f4;
            float measuredHeight = ((getMeasuredHeight() - f4) / 2.0f) + f3;
            if (f > f3 - fDp2 && f2 > measuredHeight - fDp2 && f < f3 + fDp2 && f2 < measuredHeight + fDp2) {
                return 1;
            }
            float f5 = f3 + measuredWidth;
            return (f <= f5 - fDp2 || f2 <= measuredHeight - fDp2 || f >= f5 + fDp2 || f2 >= measuredHeight + fDp2) ? 0 : 2;
        }

        @Override // android.view.View
        public void onDraw(Canvas canvas) {
            Canvas canvas2;
            super.onDraw(canvas);
            int saveCount = canvas.getSaveCount();
            float showAlpha = getShowAlpha();
            if (showAlpha <= 0.0f) {
                return;
            }
            if (showAlpha < 1.0f) {
                int i = (int) (showAlpha * 255.0f);
                canvas2 = canvas;
                canvas2.saveLayerAlpha(0.0f, 0.0f, getWidth(), getHeight(), i, 31);
            } else {
                canvas2 = canvas;
            }
            float fDp = AndroidUtilities.dp(2.0f);
            float fDpf2 = AndroidUtilities.dpf2(5.66f);
            float fDp2 = fDp + fDpf2 + AndroidUtilities.dp(15.0f);
            float f = fDp2 * 2.0f;
            float measuredWidth = getMeasuredWidth() - f;
            float measuredHeight = getMeasuredHeight() - f;
            RectF rectF = AndroidUtilities.rectTmp;
            float f2 = fDp2 + measuredWidth;
            float f3 = fDp2 + measuredHeight;
            rectF.set(fDp2, fDp2, f2, f3);
            float fDp3 = AndroidUtilities.dp(12.0f);
            float fMin = Math.min(fDp3, measuredWidth / 2.0f);
            float f4 = measuredHeight / 2.0f;
            float fMin2 = Math.min(fDp3, f4);
            this.path.rewind();
            float f5 = fMin * 2.0f;
            float f6 = fDp2 + f5;
            float f7 = 2.0f * fMin2;
            float f8 = fDp2 + f7;
            rectF.set(fDp2, fDp2, f6, f8);
            this.path.arcTo(rectF, 180.0f, 90.0f);
            float f9 = f2 - f5;
            rectF.set(f9, fDp2, f2, f8);
            this.path.arcTo(rectF, 270.0f, 90.0f);
            canvas2.drawPath(this.path, this.paint);
            this.path.rewind();
            float f10 = f3 - f7;
            rectF.set(fDp2, f10, f6, f3);
            this.path.arcTo(rectF, 180.0f, -90.0f);
            rectF.set(f9, f10, f2, f3);
            this.path.arcTo(rectF, 90.0f, -90.0f);
            canvas2.drawPath(this.path, this.paint);
            float f11 = fDp2 + f4;
            canvas2.drawCircle(fDp2, f11, fDpf2, this.dotStrokePaint);
            canvas2.drawCircle(fDp2, f11, (fDpf2 - AndroidUtilities.dp(1.0f)) + 1.0f, this.dotPaint);
            canvas2.drawCircle(f2, f11, fDpf2, this.dotStrokePaint);
            canvas2.drawCircle(f2, f11, (fDpf2 - AndroidUtilities.dp(1.0f)) + 1.0f, this.dotPaint);
            canvas2.saveLayerAlpha(0.0f, 0.0f, getWidth(), getHeight(), 255, 31);
            float f12 = fDp2 + fMin2;
            float f13 = f3 - fMin2;
            canvas.drawLine(fDp2, f12, fDp2, f13, this.paint);
            canvas.drawLine(f2, f12, f2, f13, this.paint);
            canvas.drawCircle(f2, f11, (AndroidUtilities.dp(1.0f) + fDpf2) - 1.0f, this.clearPaint);
            canvas.drawCircle(fDp2, f11, (fDpf2 + AndroidUtilities.dp(1.0f)) - 1.0f, this.clearPaint);
            canvas.restoreToCount(saveCount);
        }
    }
}
