package org.telegram.p029ui.bots;

import android.R;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.text.SpannableStringBuilder;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.AnimatedColor;
import org.telegram.p029ui.Components.AnimatedEmojiSpan;
import org.telegram.p029ui.Components.AnimatedFloat;
import org.telegram.p029ui.Components.AnimatedTextView;
import org.telegram.p029ui.Components.ButtonBounce;
import org.telegram.p029ui.Components.CircularProgressDrawable;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.voip.CellFlickerDrawable;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes7.dex */
public abstract class BotButtons extends FrameLayout {
    public final AnimatedColor background;
    private final Paint backgroundPaint;
    public final Button[] buttons;
    public final AnimatedFloat height;
    private Button pressedButton;
    private final Paint separatorPaint;
    public ButtonsState state;
    private Utilities.Callback whenClicked;
    private Runnable whenResized;

    public static class ButtonsState {
        public int backgroundColor;
        public ButtonState main = new ButtonState();
        public ButtonState secondary = new ButtonState();
    }

    public static class ButtonState {
        public boolean active;
        public int color;
        public long emojiId;
        public String position;
        public boolean progressVisible;
        public boolean shineEffect;
        public String text;
        public int textColor;
        public boolean visible;

        /* JADX INFO: renamed from: of */
        public static ButtonState m1337of(boolean z, boolean z2, boolean z3, boolean z4, String str, long j, int i, int i2) {
            return m1338of(z, z2, z3, z4, str, j, i, i2, null);
        }

        /* JADX INFO: renamed from: of */
        public static ButtonState m1338of(boolean z, boolean z2, boolean z3, boolean z4, String str, long j, int i, int i2, String str2) {
            ButtonState buttonState = new ButtonState();
            buttonState.visible = z;
            buttonState.active = z2;
            buttonState.progressVisible = z3;
            buttonState.shineEffect = z4;
            buttonState.text = str;
            buttonState.emojiId = j;
            buttonState.color = i;
            buttonState.textColor = i2;
            buttonState.position = str2;
            return buttonState;
        }
    }

    private class Button {
        public final AnimatedFloat alpha;
        public final AnimatedColor backgroundColor;
        public final Paint backgroundPaint;
        public final ButtonBounce bounce;
        public final RectF bounds;
        public final CellFlickerDrawable flicker;
        public final AnimatedFloat flickerAlpha;
        public final CircularProgressDrawable progress;
        public final AnimatedFloat progressAlpha;
        public final Drawable ripple;
        public int rippleColor;
        public final AnimatedColor textColor;
        public final AnimatedTextView.AnimatedTextDrawable textDrawable;

        /* JADX INFO: renamed from: w */
        public final AnimatedFloat f2247w;

        /* JADX INFO: renamed from: x */
        public final AnimatedFloat f2248x;

        /* JADX INFO: renamed from: y */
        public final AnimatedFloat f2249y;

        private Button() {
            this.bounds = new RectF();
            CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
            this.alpha = new AnimatedFloat(BotButtons.this, 0L, 320L, cubicBezierInterpolator);
            this.f2248x = new AnimatedFloat(BotButtons.this, 0L, 320L, cubicBezierInterpolator);
            this.f2249y = new AnimatedFloat(BotButtons.this, 0L, 320L, cubicBezierInterpolator);
            this.f2247w = new AnimatedFloat(BotButtons.this, 0L, 320L, cubicBezierInterpolator);
            this.backgroundColor = new AnimatedColor(BotButtons.this, 0L, 320L, cubicBezierInterpolator);
            this.textColor = new AnimatedColor(BotButtons.this, 0L, 320L, cubicBezierInterpolator);
            this.progressAlpha = new AnimatedFloat(BotButtons.this, 0L, 320L, cubicBezierInterpolator);
            this.flickerAlpha = new AnimatedFloat(BotButtons.this, 0L, 320L, cubicBezierInterpolator);
            this.bounce = new ButtonBounce(BotButtons.this);
            this.backgroundPaint = new Paint(1);
            AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = new AnimatedTextView.AnimatedTextDrawable(true, false, true);
            this.textDrawable = animatedTextDrawable;
            Drawable drawableCreateRadSelectorDrawable = Theme.createRadSelectorDrawable(0, 9, 9);
            this.ripple = drawableCreateRadSelectorDrawable;
            CircularProgressDrawable circularProgressDrawable = new CircularProgressDrawable();
            this.progress = circularProgressDrawable;
            CellFlickerDrawable cellFlickerDrawable = new CellFlickerDrawable();
            this.flicker = cellFlickerDrawable;
            animatedTextDrawable.setGravity(17);
            animatedTextDrawable.setTextSize(AndroidUtilities.m1124dp(14.0f));
            animatedTextDrawable.setTypeface(AndroidUtilities.bold());
            animatedTextDrawable.setOverrideFullWidth(AndroidUtilities.displaySize.x * 4);
            animatedTextDrawable.setEllipsizeByGradient(true);
            animatedTextDrawable.setCallback(BotButtons.this);
            circularProgressDrawable.setCallback(BotButtons.this);
            drawableCreateRadSelectorDrawable.setCallback(BotButtons.this);
            cellFlickerDrawable.frameInside = true;
            cellFlickerDrawable.repeatProgress = 2.0f;
        }
    }

    public BotButtons(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        Paint paint = new Paint(1);
        this.backgroundPaint = paint;
        Paint paint2 = new Paint(1);
        this.separatorPaint = paint2;
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        this.height = new AnimatedFloat(this, 0L, 320L, cubicBezierInterpolator);
        this.background = new AnimatedColor(this, 0L, 320L, cubicBezierInterpolator);
        this.state = new ButtonsState();
        this.buttons = new Button[]{new Button(), new Button()};
        setWillNotDraw(false);
        paint2.setColor(Theme.multAlpha(-16777216, 0.1f));
        ButtonsState buttonsState = this.state;
        int color = Theme.getColor(Theme.key_windowBackgroundWhite, resourcesProvider);
        buttonsState.backgroundColor = color;
        paint.setColor(color);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        float f;
        float f2;
        float f3;
        float f4;
        float f5;
        char c;
        float f6;
        int i;
        float height = getHeight() - this.height.set(getTotalHeight());
        canvas.drawRect(0.0f, height - 1.0f, getWidth(), height, this.separatorPaint);
        this.backgroundPaint.setColor(this.background.set(this.state.backgroundColor));
        canvas.drawRect(0.0f, height, getWidth(), getHeight(), this.backgroundPaint);
        String str = this.state.secondary.position;
        int i2 = 1;
        int i3 = this.buttons[1].alpha.get() < this.buttons[0].alpha.get() ? 1 : 0;
        int i4 = i3;
        while (true) {
            if (i3 != 0) {
                if (i4 < 0) {
                    return;
                }
            } else if (i4 > i2) {
                return;
            }
            Button button = this.buttons[i4];
            ButtonsState buttonsState = this.state;
            ButtonState buttonState = i4 == 0 ? buttonsState.main : buttonsState.secondary;
            float f7 = button.alpha.set(buttonState.visible);
            if (buttonState.visible) {
                AnimatedFloat animatedFloat = button.f2248x;
                ButtonsState buttonsState2 = this.state;
                if (buttonsState2.secondary.visible && buttonsState2.main.visible) {
                    f = (!"left".equalsIgnoreCase(str) ? !(!"right".equalsIgnoreCase(str) || i4 == 0) : i4 == 0) ? 0 : 1;
                } else {
                    f = 0.0f;
                }
                f2 = animatedFloat.set(f);
            } else {
                f2 = button.f2248x.get();
            }
            if (buttonState.visible) {
                AnimatedFloat animatedFloat2 = button.f2249y;
                ButtonsState buttonsState3 = this.state;
                if (buttonsState3.secondary.visible && buttonsState3.main.visible) {
                    f3 = (!"top".equalsIgnoreCase(str) ? !(!"bottom".equalsIgnoreCase(str) || i4 == 0) : i4 == 0) ? 0 : 1;
                } else {
                    f3 = 0.0f;
                }
                f4 = animatedFloat2.set(f3);
            } else {
                f4 = button.f2249y.get();
            }
            if (buttonState.visible) {
                AnimatedFloat animatedFloat3 = button.f2247w;
                ButtonsState buttonsState4 = this.state;
                f5 = animatedFloat3.set((buttonsState4.secondary.visible && buttonsState4.main.visible && ("left".equalsIgnoreCase(str) || "right".equalsIgnoreCase(str))) ? 0.0f : 1.0f);
            } else {
                f5 = button.f2247w.get();
            }
            float fLerp = AndroidUtilities.lerp((getWidth() - AndroidUtilities.m1124dp(26.0f)) / 2.0f, getWidth() - AndroidUtilities.m1124dp(16.0f), f5);
            float fM1124dp = AndroidUtilities.m1124dp(44.0f);
            float f8 = fLerp / 2.0f;
            float fLerp2 = AndroidUtilities.lerp(AndroidUtilities.m1124dp(8.0f), AndroidUtilities.m1124dp(18.0f) + ((getWidth() - AndroidUtilities.m1124dp(26.0f)) / 2.0f), f2) + f8;
            float f9 = fM1124dp / 2.0f;
            float fLerp3 = AndroidUtilities.lerp(AndroidUtilities.m1124dp(7.0f), AndroidUtilities.m1124dp(58.0f), f4) + f9 + height;
            button.bounds.set(fLerp2 - f8, fLerp3 - f9, f8 + fLerp2, f9 + fLerp3);
            float f10 = button.progressAlpha.set(buttonState.progressVisible);
            float f11 = button.flickerAlpha.set(buttonState.shineEffect);
            canvas.save();
            float scale = button.bounce.getScale(0.02f) * AndroidUtilities.lerp(0.7f, 1.0f, f7);
            canvas.scale(scale, scale, fLerp2, fLerp3);
            button.backgroundPaint.setColor(Theme.multAlpha(button.backgroundColor.set(buttonState.color), f7));
            String str2 = str;
            canvas.drawRoundRect(button.bounds, AndroidUtilities.m1124dp(9.0f), AndroidUtilities.m1124dp(9.0f), button.backgroundPaint);
            if (f10 < 1.0f) {
                canvas.save();
                float f12 = 1.0f - f10;
                float fLerp4 = AndroidUtilities.lerp(0.75f, 1.0f, f12);
                canvas.scale(fLerp4, fLerp4, fLerp2, fLerp3);
                canvas.translate(0.0f, AndroidUtilities.m1124dp(-10.0f) * f10);
                float f13 = f12 * f7;
                button.textDrawable.setEmojiColor(Theme.multAlpha(button.textColor.set(buttonState.textColor), f13));
                button.textDrawable.setTextColor(Theme.multAlpha(button.textColor.set(buttonState.textColor), f13));
                button.textDrawable.setBounds(button.bounds);
                button.textDrawable.draw(canvas);
                canvas.restore();
            }
            if (f10 > 0.0f) {
                canvas.save();
                c = 0;
                float fLerp5 = AndroidUtilities.lerp(0.75f, 1.0f, f10);
                canvas.scale(fLerp5, fLerp5, fLerp2, fLerp3);
                canvas.translate(0.0f, AndroidUtilities.m1124dp(10.0f) * (1.0f - f10));
                button.progress.setColor(Theme.multAlpha(button.textColor.set(buttonState.textColor), f10 * f7));
                CircularProgressDrawable circularProgressDrawable = button.progress;
                RectF rectF = button.bounds;
                circularProgressDrawable.setBounds((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
                button.progress.draw(canvas);
                canvas.restore();
                f6 = 0.0f;
            } else {
                c = 0;
                f6 = 0.0f;
            }
            if (f11 > f6) {
                button.flicker.setColors(Theme.multAlpha(button.textColor.set(buttonState.textColor), f7 * f11));
                button.flicker.draw(canvas, button.bounds, AndroidUtilities.m1124dp(8.0f), this);
            }
            if (button.rippleColor != Theme.multAlpha(buttonState.textColor, 0.15f)) {
                Drawable drawable = button.ripple;
                int iMultAlpha = Theme.multAlpha(buttonState.textColor, 0.15f);
                button.rippleColor = iMultAlpha;
                i = 1;
                Theme.setSelectorDrawableColor(drawable, iMultAlpha, true);
            } else {
                i = 1;
            }
            Drawable drawable2 = button.ripple;
            RectF rectF2 = button.bounds;
            drawable2.setBounds((int) rectF2.left, (int) rectF2.top, (int) rectF2.right, (int) rectF2.bottom);
            button.ripple.draw(canvas);
            canvas.restore();
            i4 += i3 != 0 ? -1 : i;
            i2 = i;
            str = str2;
        }
    }

    public void setMainState(ButtonState buttonState, boolean z) {
        int totalHeight = getTotalHeight();
        this.state.main = buttonState;
        this.buttons[0].textDrawable.cancelAnimation();
        if (buttonState.emojiId != 0) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            spannableStringBuilder.append((CharSequence) "* ");
            spannableStringBuilder.append((CharSequence) buttonState.text);
            spannableStringBuilder.setSpan(new AnimatedEmojiSpan(buttonState.emojiId, 1.4f, this.buttons[0].textDrawable.getPaint().getFontMetricsInt()), 0, 1, 33);
            this.buttons[0].textDrawable.setText(spannableStringBuilder, z);
        } else {
            this.buttons[0].textDrawable.setText(buttonState.text, z);
        }
        invalidate();
        if (totalHeight == getTotalHeight() || this.whenResized == null) {
            return;
        }
        if (totalHeight < getTotalHeight()) {
            AndroidUtilities.runOnUIThread(this.whenResized, 200L);
        } else {
            this.whenResized.run();
        }
    }

    public void setSecondaryState(ButtonState buttonState, boolean z) {
        int totalHeight = getTotalHeight();
        this.state.secondary = buttonState;
        setText(this.buttons[1].textDrawable, buttonState, z);
        invalidate();
        if (totalHeight == getTotalHeight() || this.whenResized == null) {
            return;
        }
        if (totalHeight < getTotalHeight()) {
            AndroidUtilities.runOnUIThread(this.whenResized, 200L);
        } else {
            this.whenResized.run();
        }
    }

    public void setState(ButtonsState buttonsState, boolean z) {
        int totalHeight = getTotalHeight();
        this.state = buttonsState;
        setText(this.buttons[0].textDrawable, buttonsState.main, z);
        setText(this.buttons[1].textDrawable, buttonsState.secondary, z);
        invalidate();
        if (totalHeight != getTotalHeight() && this.whenResized != null) {
            if (totalHeight < getTotalHeight()) {
                AndroidUtilities.runOnUIThread(this.whenResized, 200L);
            } else {
                this.whenResized.run();
            }
        }
        setBackgroundColor(buttonsState.backgroundColor, z);
    }

    private static void setText(AnimatedTextView.AnimatedTextDrawable animatedTextDrawable, ButtonState buttonState, boolean z) {
        animatedTextDrawable.cancelAnimation();
        if (buttonState.emojiId != 0) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            spannableStringBuilder.append((CharSequence) "* ");
            spannableStringBuilder.append((CharSequence) buttonState.text);
            spannableStringBuilder.setSpan(new AnimatedEmojiSpan(buttonState.emojiId, 1.4f, animatedTextDrawable.getPaint().getFontMetricsInt()), 0, 1, 33);
            animatedTextDrawable.setText(spannableStringBuilder, z);
            return;
        }
        animatedTextDrawable.setText(buttonState.text, z);
    }

    public void setBackgroundColor(int i, boolean z) {
        Paint paint = this.backgroundPaint;
        this.state.backgroundColor = i;
        paint.setColor(i);
        if (z) {
            return;
        }
        this.background.set(i, true);
    }

    public int getTotalHeight() {
        ButtonsState buttonsState = this.state;
        boolean z = buttonsState.main.visible;
        int i = (z || buttonsState.secondary.visible) ? 1 : 0;
        if (z) {
            ButtonState buttonState = buttonsState.secondary;
            if (buttonState.visible && ("top".equalsIgnoreCase(buttonState.position) || "bottom".equalsIgnoreCase(this.state.secondary.position))) {
                i++;
            }
        }
        if (i == 0) {
            return 0;
        }
        if (i == 1) {
            return AndroidUtilities.m1124dp(58.0f);
        }
        return AndroidUtilities.m1124dp(109.0f);
    }

    public float getAnimatedTotalHeight() {
        return this.height.get();
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(109.0f) + 1, TLObject.FLAG_30));
    }

    private Button getHitButton(float f, float f2) {
        int i = 0;
        while (true) {
            Button[] buttonArr = this.buttons;
            if (i >= buttonArr.length) {
                return null;
            }
            ButtonsState buttonsState = this.state;
            ButtonState buttonState = i == 0 ? buttonsState.main : buttonsState.secondary;
            if (buttonArr[i].bounds.contains(f, f2) && buttonState.visible && buttonState.active) {
                return this.buttons[i];
            }
            i++;
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        Utilities.Callback callback;
        if (motionEvent.getAction() == 0) {
            Button hitButton = getHitButton(motionEvent.getX(), motionEvent.getY());
            this.pressedButton = hitButton;
            if (hitButton != null) {
                hitButton.bounce.setPressed(true);
                this.pressedButton.ripple.setHotspot(motionEvent.getX(), motionEvent.getY());
                this.pressedButton.ripple.setState(new int[]{R.attr.state_pressed, R.attr.state_enabled});
            }
        } else if ((motionEvent.getAction() == 1 || motionEvent.getAction() == 3) && this.pressedButton != null) {
            if (motionEvent.getAction() == 1) {
                Button hitButton2 = getHitButton(motionEvent.getX(), motionEvent.getY());
                Button button = this.pressedButton;
                if (hitButton2 == button && (callback = this.whenClicked) != null) {
                    callback.run(Boolean.valueOf(button == this.buttons[0]));
                }
            }
            this.pressedButton.bounce.setPressed(false);
            this.pressedButton.ripple.setState(new int[0]);
            this.pressedButton = null;
        }
        return this.pressedButton != null;
    }

    public void setOnButtonClickListener(Utilities.Callback<Boolean> callback) {
        this.whenClicked = callback;
    }

    public void setOnResizeListener(Runnable runnable) {
        this.whenResized = runnable;
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        Button[] buttonArr = this.buttons;
        Button button = buttonArr[0];
        if (button.ripple != drawable && button.progress != drawable) {
            Button button2 = buttonArr[1];
            if (button2.ripple != drawable && button2.progress != drawable && !super.verifyDrawable(drawable)) {
                return false;
            }
        }
        return true;
    }
}
