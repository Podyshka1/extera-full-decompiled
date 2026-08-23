package org.telegram.p029ui.Cells;

import android.R;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.AnimatedColor;
import org.telegram.p029ui.Components.AnimatedEmojiDrawable;
import org.telegram.p029ui.Components.AnimatedTextView;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.EditTextCaption;
import org.telegram.p029ui.Components.EditTextEmoji;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.SizeNotifierFrameLayout;
import org.telegram.p029ui.Components.TextStyleSpan;
import org.telegram.p029ui.Components.TypefaceSpan;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes6.dex */
public abstract class EditEmojiTextCell extends FrameLayout {
    private boolean allowEntities;
    public boolean autofocused;
    public final EditTextEmoji editTextEmoji;
    private boolean focused;
    private final ImageView[] iconImageView;
    private boolean ignoreEditText;
    final AnimatedTextView.AnimatedTextDrawable limit;
    final AnimatedColor limitColor;
    private int limitCount;
    private int maxLength;
    private boolean needDivider;
    private boolean showLimitWhenEmpty;
    private boolean showLimitWhenFocused;
    private int showLimitWhenNear;

    protected void onFocusChanged(boolean z) {
    }

    protected void onTextChanged(CharSequence charSequence) {
    }

    public void setShowLimitWhenEmpty(boolean z) {
        this.showLimitWhenEmpty = z;
        if (z) {
            updateLimitText();
        }
    }

    public void setShowLimitWhenNear(int i) {
        this.showLimitWhenNear = i;
        updateLimitText();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateLimitText() {
        int i;
        EditTextEmoji editTextEmoji = this.editTextEmoji;
        if (editTextEmoji == null || editTextEmoji.getEditText() == null) {
            return;
        }
        this.limitCount = this.maxLength - getText().length();
        AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = this.limit;
        boolean zIsEmpty = TextUtils.isEmpty(getText());
        String str = _UrlKt.FRAGMENT_ENCODE_SET;
        if ((!zIsEmpty || this.showLimitWhenEmpty) && ((!this.showLimitWhenFocused || (this.focused && !this.autofocused)) && ((i = this.showLimitWhenNear) == -1 || this.limitCount <= i))) {
            str = _UrlKt.FRAGMENT_ENCODE_SET + this.limitCount;
        }
        animatedTextDrawable.setText(str);
    }

    public void whenHitEnter(final Runnable runnable) {
        this.editTextEmoji.getEditText().setImeOptions(6);
        this.editTextEmoji.getEditText().setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.Cells.EditEmojiTextCell.1
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                if (i != 6) {
                    return false;
                }
                runnable.run();
                return true;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$hideKeyboardOnEnter$0() {
        AndroidUtilities.hideKeyboard(this.editTextEmoji.getEditText());
    }

    public void hideKeyboardOnEnter() {
        whenHitEnter(new Runnable() { // from class: org.telegram.ui.Cells.EditEmojiTextCell$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$hideKeyboardOnEnter$0();
            }
        });
    }

    public void setShowLimitOnFocus(boolean z) {
        this.showLimitWhenFocused = z;
    }

    public int emojiCacheType() {
        return AnimatedEmojiDrawable.getCacheTypeForEnterView();
    }

    public void setEmojiViewCacheType(int i) {
        this.editTextEmoji.setEmojiViewCacheType(i);
    }

    public EditEmojiTextCell setAllowEntities(boolean z) {
        this.allowEntities = z;
        return this;
    }

    public EditEmojiTextCell(Context context, SizeNotifierFrameLayout sizeNotifierFrameLayout, String str, final boolean z, final int i, int i2, final Theme.ResourcesProvider resourcesProvider) {
        float f;
        super(context);
        this.iconImageView = new ImageView[2];
        this.showLimitWhenNear = -1;
        this.allowEntities = true;
        AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = new AnimatedTextView.AnimatedTextDrawable(false, true, true);
        this.limit = animatedTextDrawable;
        animatedTextDrawable.setAnimationProperties(0.2f, 0L, 160L, CubicBezierInterpolator.EASE_OUT_QUINT);
        animatedTextDrawable.setTextSize(AndroidUtilities.m1124dp(15.33f));
        animatedTextDrawable.setGravity(5);
        this.maxLength = i;
        EditTextEmoji editTextEmoji = new EditTextEmoji(context, sizeNotifierFrameLayout, null, i2, true) { // from class: org.telegram.ui.Cells.EditEmojiTextCell.2
            @Override // android.view.View
            protected boolean verifyDrawable(Drawable drawable) {
                return drawable == EditEmojiTextCell.this.limit || super.verifyDrawable(drawable);
            }

            @Override // android.view.View
            protected void onDraw(Canvas canvas) {
                canvas.save();
                canvas.clipRect(getScrollX() + getPaddingLeft(), 0, (getScrollX() + getWidth()) - getPaddingRight(), getHeight());
                super.onDraw(canvas);
                canvas.restore();
                EditEmojiTextCell editEmojiTextCell = EditEmojiTextCell.this;
                AnimatedColor animatedColor = editEmojiTextCell.limitColor;
                if (animatedColor != null) {
                    editEmojiTextCell.limit.setTextColor(animatedColor.set(Theme.getColor(editEmojiTextCell.limitCount <= 0 ? Theme.key_text_RedRegular : Theme.key_dialogSearchHint, resourcesProvider)));
                }
                int iMin = Math.min(AndroidUtilities.m1124dp(48.0f), getHeight());
                float f2 = z ? 0.0f : -AndroidUtilities.m1124dp(1.0f);
                EditEmojiTextCell.this.limit.setBounds(getScrollX(), (getHeight() + f2) - iMin, (getScrollX() + getWidth()) - AndroidUtilities.m1124dp((z ? 0 : 44) + 12), f2 + getHeight());
                EditEmojiTextCell.this.limit.draw(canvas);
            }

            @Override // org.telegram.p029ui.Components.EditTextEmoji
            protected void extendActionMode(ActionMode actionMode, Menu menu) {
                if (menu.findItem(C2888R.id.menu_bold) != null) {
                    return;
                }
                menu.removeItem(R.id.shareText);
                menu.add(C2888R.id.menu_groupbolditalic, C2888R.id.menu_spoiler, 6, LocaleController.getString(C2888R.string.Spoiler));
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(LocaleController.getString(C2888R.string.Bold));
                spannableStringBuilder.setSpan(new TypefaceSpan(AndroidUtilities.bold()), 0, spannableStringBuilder.length(), 33);
                menu.add(C2888R.id.menu_groupbolditalic, C2888R.id.menu_bold, 7, spannableStringBuilder);
                SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(LocaleController.getString(C2888R.string.Italic));
                spannableStringBuilder2.setSpan(new TypefaceSpan(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM_ITALIC)), 0, spannableStringBuilder2.length(), 33);
                menu.add(C2888R.id.menu_groupbolditalic, C2888R.id.menu_italic, 8, spannableStringBuilder2);
                SpannableStringBuilder spannableStringBuilder3 = new SpannableStringBuilder(LocaleController.getString(C2888R.string.Strike));
                TextStyleSpan.TextStyleRun textStyleRun = new TextStyleSpan.TextStyleRun();
                textStyleRun.flags |= 8;
                spannableStringBuilder3.setSpan(new TextStyleSpan(textStyleRun), 0, spannableStringBuilder3.length(), 33);
                menu.add(C2888R.id.menu_groupbolditalic, C2888R.id.menu_strike, 9, spannableStringBuilder3);
                menu.add(C2888R.id.menu_groupbolditalic, C2888R.id.menu_regular, 10, LocaleController.getString(C2888R.string.Regular));
            }

            @Override // org.telegram.p029ui.Components.EditTextEmoji
            protected boolean allowEntities() {
                return EditEmojiTextCell.this.allowEntities && super.allowEntities();
            }

            @Override // org.telegram.p029ui.Components.EditTextEmoji
            public int emojiCacheType() {
                return EditEmojiTextCell.this.emojiCacheType();
            }
        };
        this.editTextEmoji = editTextEmoji;
        final EditTextCaption editText = editTextEmoji.getEditText();
        editText.setDelegate(new EditTextCaption.EditTextCaptionDelegate() { // from class: org.telegram.ui.Cells.EditEmojiTextCell.3
            @Override // org.telegram.ui.Components.EditTextCaption.EditTextCaptionDelegate
            public void onSpansChanged() {
                EditEmojiTextCell.this.onTextChanged(editText.getText());
            }
        });
        editTextEmoji.setWillNotDraw(false);
        this.limitColor = new AnimatedColor(editTextEmoji);
        animatedTextDrawable.setCallback(editTextEmoji);
        editText.setTextSize(1, 17.0f);
        editText.setHintTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteHintText, resourcesProvider));
        int i3 = Theme.key_windowBackgroundWhiteBlackText;
        editText.setTextColor(Theme.getColor(i3, resourcesProvider));
        editText.setBackground(null);
        if (z) {
            editText.setMaxLines(5);
            editText.setSingleLine(false);
        } else {
            editText.setMaxLines(1);
            editText.setSingleLine(true);
        }
        int paddingLeft = editText.getPaddingLeft();
        int paddingTop = editText.getPaddingTop();
        if (i2 == 4) {
            f = 0.0f;
        } else {
            f = (i > 0 ? 42 : 0) + 21;
        }
        editText.setPadding(paddingLeft, paddingTop, AndroidUtilities.m1124dp(f), editText.getPaddingBottom());
        editText.setGravity((LocaleController.isRTL ? 5 : 3) | 48);
        editText.setInputType((z ? 131072 : 0) | 573441);
        editText.setRawInputType(573441);
        editText.setHint(str);
        editText.setCursorColor(Theme.getColor(i3, resourcesProvider));
        editText.setCursorSize(AndroidUtilities.m1124dp(19.0f));
        editText.setCursorWidth(1.5f);
        editText.addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.Cells.EditEmojiTextCell.4
            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i4, int i5, int i6) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i4, int i5, int i6) {
                if (EditEmojiTextCell.this.ignoreEditText) {
                    return;
                }
                EditEmojiTextCell.this.autofocused = false;
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (!EditEmojiTextCell.this.ignoreEditText) {
                    if (i > 0 && editable != null && editable.length() > i) {
                        EditEmojiTextCell.this.ignoreEditText = true;
                        editText.setText(editable.subSequence(0, i));
                        EditTextCaption editTextCaption = editText;
                        editTextCaption.setSelection(editTextCaption.length());
                        EditEmojiTextCell.this.ignoreEditText = false;
                    }
                    EditEmojiTextCell.this.onTextChanged(editable);
                }
                if (z) {
                    while (true) {
                        int iIndexOf = editable.toString().indexOf("\n");
                        if (iIndexOf < 0) {
                            break;
                        } else {
                            editable.delete(iIndexOf, iIndexOf + 1);
                        }
                    }
                }
                AnimatedTextView.AnimatedTextDrawable animatedTextDrawable2 = EditEmojiTextCell.this.limit;
                if (animatedTextDrawable2 == null || i <= 0) {
                    return;
                }
                animatedTextDrawable2.cancelAnimation();
                EditEmojiTextCell.this.updateLimitText();
            }
        });
        editText.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: org.telegram.ui.Cells.EditEmojiTextCell.5
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z2) {
                EditEmojiTextCell.this.focused = z2;
                if (EditEmojiTextCell.this.showLimitWhenFocused) {
                    EditEmojiTextCell.this.updateLimitText();
                }
                EditEmojiTextCell.this.onFocusChanged(z2);
            }
        });
        addView(editTextEmoji, LayoutHelper.createFrame(-1, -1, 48));
        updateLimitText();
    }

    public void setOnChangeIconListener(View.OnClickListener onClickListener) {
        this.editTextEmoji.setLayoutParams(LayoutHelper.createFrame(-1, -1.0f, 53, 44.0f, 0.0f, 0.0f, 0.0f));
        int i = 0;
        while (true) {
            ImageView[] imageViewArr = this.iconImageView;
            if (i >= imageViewArr.length) {
                return;
            }
            imageViewArr[i] = new ImageView(getContext());
            this.iconImageView[i].setFocusable(true);
            this.iconImageView[i].setVisibility(i == 0 ? 0 : 8);
            this.iconImageView[i].setBackground(Theme.createSelectorDrawable(Theme.getColor(Theme.key_stickers_menuSelector)));
            this.iconImageView[i].setScaleType(ImageView.ScaleType.FIT_XY);
            int iM1124dp = AndroidUtilities.m1124dp(8.0f);
            this.iconImageView[i].setPadding(iM1124dp, iM1124dp, iM1124dp, iM1124dp);
            this.iconImageView[i].setOnClickListener(onClickListener);
            this.iconImageView[i].setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_windowBackgroundWhiteGrayIcon), PorterDuff.Mode.MULTIPLY));
            this.iconImageView[i].setImportantForAccessibility(2);
            addView(this.iconImageView[i], LayoutHelper.createFrame(48, 48.0f, 19, 12.0f, 0.0f, 8.0f, 0.0f));
            i++;
        }
    }

    public void setIcon(int i, boolean z) {
        this.iconImageView[z ? 1 : 0].setImageResource(i);
        if (z) {
            ImageView[] imageViewArr = this.iconImageView;
            ImageView imageView = imageViewArr[0];
            imageViewArr[0] = imageViewArr[1];
            imageViewArr[1] = imageView;
        }
        AndroidUtilities.updateViewVisibilityAnimated(this.iconImageView[0], true, 0.5f, z);
        AndroidUtilities.updateViewVisibilityAnimated(this.iconImageView[1], false, 0.5f, z);
    }

    public void setText(CharSequence charSequence) {
        this.ignoreEditText = true;
        this.editTextEmoji.setText(charSequence);
        EditTextEmoji editTextEmoji = this.editTextEmoji;
        editTextEmoji.setSelection(editTextEmoji.getText().length());
        this.ignoreEditText = false;
    }

    public CharSequence getText() {
        return this.editTextEmoji.getText();
    }

    public void setDivider(boolean z) {
        this.needDivider = z;
        setWillNotDraw(!z);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.needDivider) {
            canvas.drawLine(LocaleController.isRTL ? 0.0f : AndroidUtilities.m1124dp(22.0f), getMeasuredHeight() - 1, getMeasuredWidth() - (LocaleController.isRTL ? AndroidUtilities.m1124dp(22.0f) : 0), getMeasuredHeight() - 1, Theme.dividerPaint);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), i2);
    }
}
