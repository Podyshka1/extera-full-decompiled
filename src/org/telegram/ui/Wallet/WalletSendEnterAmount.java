package org.telegram.ui.Wallet;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.SystemClock;
import android.text.Editable;
import android.text.InputFilter;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.method.DigitsKeyListener;
import android.text.style.ClickableSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.ReplacementSpan;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.ViewTreeObserver;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.WindowInsetsCompat;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.FloatValueHolder;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import com.exteragram.messenger.inline.math.MathFormat$$ExternalSyntheticBackportWithForwarding0;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.RoundingMode;
import java.nio.charset.StandardCharsets;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import kotlin.jvm.internal.LongCompanionObject;
import okhttp3.internal.url._UrlKt;
import org.mvel2.MVEL;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BotWebViewVibrationEffect;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_wallet;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.ActionBarMenuItem;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.AlertDialogDecor;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.INavigationLayout;
import org.telegram.ui.ActionBar.MessageDrawable;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.CheckBoxCell;
import org.telegram.ui.ChatActivity;
import org.telegram.ui.Components.AnimatedColor;
import org.telegram.ui.Components.AnimatedFloat;
import org.telegram.ui.Components.AnimatedTextView;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.ColoredImageSpan;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.EditTextBoldCursor;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.LinkSpanDrawable;
import org.telegram.ui.Components.LoadingSpan;
import org.telegram.ui.Components.ScaleStateListAnimator;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;
import org.telegram.ui.Components.UniversalFragment;
import org.telegram.ui.Components.UniversalRecyclerView;
import org.telegram.ui.Stories.recorder.ButtonWithCounterView;

/* JADX INFO: loaded from: classes8.dex */
public class WalletSendEnterAmount extends UniversalFragment implements NotificationCenter.NotificationCenterDelegate {
    private WalletRecipientView addressInfoLayout;
    private EditTextBoldCursor amountEdit;
    private AmountInputView amountInput;
    private final ViewTreeObserver.OnWindowFocusChangeListener amountWindowFocusListener;
    private TextView balanceView;
    private LinearLayout bottomContainer;
    private int bottomInset;
    private LinearLayout center;
    private LinearLayout centerBottom;
    private FrameLayout centerBottomContainer;
    private boolean centerBottomVisible;
    private ChatActivity chatSendDestination;
    private WalletChatSendTransition chatSendTransition;
    private String comment;
    private TextView commentView;
    private boolean comment_encrypted;
    private CharSequence currencyExchangeIcon;
    private TextView depositFundsView;
    private long fee;
    private SpannableString feeArrow;
    private TextView feeView;
    private SpannableString feeViewLoading;
    private ValueAnimator feeVisibilityAnimator;
    private float feeVisibilityProgress;
    private boolean feeVisible;
    private CharSequence gramAmountIcon;
    private DecimalFormat gramsPreviewFormat;
    private DecimalFormat gramsTextFormat;
    private boolean hasEnteredAmount;
    private long initAmount;
    private boolean inputInCurrency;
    private LinkSpanDrawable.LinksTextView insufficientFundsView;
    private SpringAnimation introAnimator;
    private float introProgress;
    private float introRevealProgress;
    private int keyboardInset;
    private int lastBottom;
    private boolean loadingRecipient;
    private boolean openChat;
    private boolean pendingAmountKeyboard;
    private TL_wallet.walletTransaction queuedTransaction;
    private TL_wallet.walletUserAddress recipient;
    private String recipientAddress;
    private String recipientDomain;
    private TLRPC.User recipientUser;
    private ButtonWithCounterView sendButton;
    private WalletActivity sendDestination;
    private WalletSendTransition sendTransition;
    private boolean sendingToUser;
    private int shakeDp;
    private final Runnable showAmountKeyboard;
    private AnimatedTextView usdView;

    @Override // org.telegram.ui.Components.UniversalFragment
    public void fillItems(ArrayList<UItem> arrayList, UniversalAdapter universalAdapter) {
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean isSupportEdgeToEdge() {
        return true;
    }

    @Override // org.telegram.ui.Components.UniversalFragment
    public void onClick(UItem uItem, View view, int i, float f, float f2) {
    }

    @Override // org.telegram.ui.Components.UniversalFragment
    public boolean onLongClick(UItem uItem, View view, int i, float f, float f2) {
        return false;
    }

    public static class AmountInputView extends FrameLayout {
        public static final Interpolator ANIMATION_INTERPOLATOR = CubicBezierInterpolator.EASE_OUT_QUINT;
        private float animationProgress;
        private float animationStartScale;
        private ValueAnimator animator;
        private final ArrayList<AmountCharacterSpan> characters;
        private boolean currencyInitialized;
        private final AnimatedTextView currencyView;
        private String decimalSeparator;
        private final WalletDiamondView diamondView;
        private SpringAnimation diamondWobble;
        private final ArrayList<DisappearingGlyph> disappearing;
        private float displayWidth;
        private final EditTextBoldCursor editText;
        private float emptyFromOrigin;
        private float emptyFromWidth;
        private String groupingSeparator;
        private ValueAnimator prefixAnimator;
        private final FrameLayout prefixContainer;
        private int prefixTargetWidth;
        private String previousRaw;
        private final Theme.ResourcesProvider resourcesProvider;
        private final LinearLayout row;
        private boolean settingAmount;
        private boolean showingCurrency;
        private boolean showingSymbol;
        private final TextView symbolView;
        private SpringAnimation symbolWobble;
        private final boolean walletAmountStyle;

        public AmountInputView(Context context, Theme.ResourcesProvider resourcesProvider) {
            this(context, resourcesProvider, true);
        }

        private AmountInputView(Context context, Theme.ResourcesProvider resourcesProvider, final boolean z) {
            super(context);
            this.characters = new ArrayList<>();
            this.animationProgress = 1.0f;
            this.previousRaw = _UrlKt.FRAGMENT_ENCODE_SET;
            this.disappearing = new ArrayList<>();
            this.animationStartScale = 0.5f;
            this.groupingSeparator = ",";
            this.decimalSeparator = ".";
            this.resourcesProvider = resourcesProvider;
            this.walletAmountStyle = z;
            setClipChildren(false);
            setClipToPadding(false);
            LinearLayout linearLayout = new LinearLayout(context);
            this.row = linearLayout;
            linearLayout.setOrientation(0);
            linearLayout.setGravity(16);
            linearLayout.setLayoutDirection(0);
            linearLayout.setClipChildren(false);
            linearLayout.setClipToPadding(false);
            addView(linearLayout, LayoutHelper.createFrame(-2, -1, 17));
            FrameLayout frameLayout = new FrameLayout(context);
            this.prefixContainer = frameLayout;
            frameLayout.setClipChildren(false);
            frameLayout.setClipToPadding(false);
            frameLayout.setTranslationZ(AndroidUtilities.dp(1.0f));
            linearLayout.addView(frameLayout, LayoutHelper.createLinear(59, 60, 16));
            this.prefixTargetWidth = AndroidUtilities.dp(59.0f);
            WalletDiamondView walletDiamondView = new WalletDiamondView(context, 60, true);
            this.diamondView = walletDiamondView;
            walletDiamondView.setInputDrivenRotation();
            frameLayout.addView(walletDiamondView, LayoutHelper.createFrame(60, 60.0f, 19, 0.0f, -5.0f, -2.0f, 0.0f));
            TextView textView = new TextView(context);
            this.symbolView = textView;
            int i = Theme.key_windowBackgroundWhiteGrayText2;
            textView.setTextColor(Theme.getColor(i, resourcesProvider));
            textView.setTextSize(1, 44.0f);
            textView.setTypeface(AndroidUtilities.getTypeface("fonts/gram.ttf"));
            textView.setGravity(16);
            textView.setIncludeFontPadding(false);
            textView.setSingleLine(true);
            textView.setVisibility(4);
            textView.setAlpha(0.0f);
            frameLayout.addView(textView, LayoutHelper.createFrame(-2, 60, 19));
            EditTextBoldCursor editTextBoldCursor = new EditTextBoldCursor(context) { // from class: org.telegram.ui.Wallet.WalletSendEnterAmount.AmountInputView.1
                private float hintCursorProgress;
                private final AnimatedFloat cursorScale = new AnimatedFloat(this, 180, CubicBezierInterpolator.EASE_OUT_QUINT);
                private final AnimatedFloat hintCursor = new AnimatedFloat(this, 320, AmountInputView.ANIMATION_INTERPOLATOR);
                private float currentCursorScale = 1.0f;

                @Override // org.telegram.ui.Components.EditTextBoldCursor
                public void drawCursor(Canvas canvas, GradientDrawable gradientDrawable) {
                    if (z) {
                        gradientDrawable.setCornerRadius(AndroidUtilities.dpf2(1.5f));
                        int lineBaseline = getLayout().getLineBaseline(0);
                        Rect bounds = gradientDrawable.getBounds();
                        float f = lineBaseline;
                        int iRound = Math.round(((bounds.top - lineBaseline) * this.currentCursorScale) + f);
                        int iRound2 = Math.round(f + ((bounds.bottom - lineBaseline) * this.currentCursorScale));
                        int iRound3 = bounds.left;
                        int iWidth = bounds.width();
                        if (this.hintCursorProgress > 0.0f) {
                            float f2 = iRound3;
                            iRound3 = Math.round(f2 + (((((((getScrollX() + getWidth()) - getCompoundPaddingLeft()) - getCompoundPaddingRight()) - getPaint().measureText(MVEL.VERSION_SUB)) - iWidth) - f2) * this.hintCursorProgress));
                        }
                        gradientDrawable.setBounds(iRound3, iRound, iWidth + iRound3, iRound2);
                    }
                    super.drawCursor(canvas, gradientDrawable);
                }

                /* JADX WARN: Removed duplicated region for block: B:28:0x0090  */
                @Override // org.telegram.ui.Components.EditTextBoldCursor, org.telegram.ui.Components.EditTextEffects, android.widget.TextView, android.view.View
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public void onDraw(Canvas canvas) {
                    float lineLeft;
                    int size;
                    int i2 = 0;
                    if (z) {
                        Editable text = getText();
                        int iMax = Math.max(TextUtils.indexOf((CharSequence) text, '.'), TextUtils.indexOf((CharSequence) text, ','));
                        this.currentCursorScale = this.cursorScale.set((iMax < 0 || getSelectionStart() <= iMax) ? 1.0f : 0.6363636f);
                        this.hintCursorProgress = this.hintCursor.set(length() == 0);
                    }
                    super.onDraw(canvas);
                    if (AmountInputView.this.animationProgress >= 1.0f) {
                        return;
                    }
                    TextPaint paint = getPaint();
                    float textSize = paint.getTextSize();
                    float compoundPaddingLeft = getCompoundPaddingLeft();
                    if (length() == 0) {
                        lineLeft = getScrollX() + AmountInputView.this.emptyFromOrigin;
                    } else {
                        if (getLayout() != null) {
                            lineLeft = getLayout().getLineLeft(0);
                        }
                        float f = compoundPaddingLeft;
                        int baseline = getBaseline();
                        ArrayList arrayList = AmountInputView.this.disappearing;
                        size = arrayList.size();
                        while (i2 < size) {
                            Object obj = arrayList.get(i2);
                            i2++;
                            DisappearingGlyph disappearingGlyph = (DisappearingGlyph) obj;
                            paint.setTextSize(disappearingGlyph.fraction ? (28.0f * textSize) / 44.0f : textSize);
                            disappearingGlyph.motion.draw(canvas, paint, disappearingGlyph.glyph, f, baseline);
                        }
                        paint.setTextSize(textSize);
                    }
                    compoundPaddingLeft += lineLeft;
                    float f2 = compoundPaddingLeft;
                    int baseline2 = getBaseline();
                    ArrayList arrayList2 = AmountInputView.this.disappearing;
                    size = arrayList2.size();
                    while (i2 < size) {
                    }
                    paint.setTextSize(textSize);
                }

                @Override // org.telegram.ui.Components.EditTextBoldCursor, org.telegram.ui.Components.EditTextEffects, com.exteragram.messenger.components.ReceiveContentEditText, android.widget.TextView
                public void onSelectionChanged(int i2, int i3) {
                    super.onSelectionChanged(i2, i3);
                    if (i2 != i3) {
                        AmountInputView.this.finishAnimation();
                    }
                }

                @Override // org.telegram.ui.Components.EditTextBoldCursor, com.exteragram.messenger.components.ReceiveContentEditText, android.widget.TextView, android.view.View
                public boolean onTouchEvent(MotionEvent motionEvent) {
                    if (motionEvent.getActionMasked() == 0) {
                        AmountInputView.this.finishAnimation();
                        if (z) {
                            this.hintCursor.force(length() == 0);
                        }
                    }
                    return super.onTouchEvent(motionEvent);
                }
            };
            this.editText = editTextBoldCursor;
            editTextBoldCursor.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, resourcesProvider));
            editTextBoldCursor.setHintTextColor(Theme.getColor(i, resourcesProvider));
            editTextBoldCursor.setHint(MVEL.VERSION_SUB);
            editTextBoldCursor.setTextSize(1, 44.0f);
            editTextBoldCursor.setTypeface(AndroidUtilities.getTypeface("fonts/gram.ttf"));
            editTextBoldCursor.setIncludeFontPadding(false);
            editTextBoldCursor.setSingleLine(true);
            editTextBoldCursor.setGravity(21);
            editTextBoldCursor.setBackground(null);
            editTextBoldCursor.setPadding(AndroidUtilities.dp(3.0f), 0, AndroidUtilities.dp(3.0f), 0);
            editTextBoldCursor.setMinWidth(AndroidUtilities.dp(24.0f));
            editTextBoldCursor.setHorizontallyScrolling(true);
            editTextBoldCursor.setCursorWidth(z ? 3.0f : 2.0f);
            editTextBoldCursor.setCursorSize(AndroidUtilities.dp(48.0f));
            int i2 = Theme.key_featuredStickers_addButton;
            int color = Theme.getColor(i2, resourcesProvider);
            editTextBoldCursor.setCursorColor(color);
            editTextBoldCursor.setHandlesColor(color);
            editTextBoldCursor.setHighlightColor(Theme.multAlpha(color, 0.3f));
            editTextBoldCursor.setAllowDrawCursor(true);
            editTextBoldCursor.setInputType(8194);
            editTextBoldCursor.setKeyListener(DigitsKeyListener.getInstance("0123456789.,"));
            editTextBoldCursor.setImeOptions(33554438);
            linearLayout.addView(editTextBoldCursor, LayoutHelper.createLinear(-2, 60, 16));
            final AnimatedTextView animatedTextView = new AnimatedTextView(context, false, true, false, true, true) { // from class: org.telegram.ui.Wallet.WalletSendEnterAmount.AmountInputView.2
                @Override // org.telegram.ui.Components.AnimatedTextView, android.view.View
                public void onMeasure(int i3, int i4) {
                    super.onMeasure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.displaySize.x, Integer.MIN_VALUE), i4);
                    setMeasuredDimension(View.resolveSize((int) Math.ceil(getDrawable().getCurrentWidth()), i3), getMeasuredHeight());
                }

                @Override // android.view.View
                public int getBaseline() {
                    return Math.round((getHeight() - getDrawable().getHeight()) / 2.0f) - getPaint().getFontMetricsInt().ascent;
                }
            };
            this.currencyView = animatedTextView;
            animatedTextView.setAnimationProperties(0.35f, 0L, 420L, 3.5f, CubicBezierInterpolator.EASE_OUT_QUINT);
            animatedTextView.setScaleProperty(0.2f);
            animatedTextView.setAllowCancel(true);
            AnimatedTextView.AnimatedTextDrawable drawable = animatedTextView.getDrawable();
            Objects.requireNonNull(animatedTextView);
            drawable.setOnWidthUpdatedListener(new Runnable() { // from class: org.telegram.ui.Wallet.WalletSendEnterAmount$AmountInputView$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    animatedTextView.requestLayout();
                }
            });
            animatedTextView.setTextColor(Theme.getColor(z ? i2 : i, resourcesProvider));
            animatedTextView.setTextSize(AndroidUtilities.dp(28.0f));
            animatedTextView.setTypeface(AndroidUtilities.getTypeface("fonts/gram.ttf"));
            animatedTextView.setGravity(3);
            animatedTextView.getDrawable().setIncludeFontPadding(false);
            animatedTextView.setText(LocaleController.getString(C2807R.string.GramCurrency), false);
            linearLayout.addView(animatedTextView, LayoutHelper.createLinear(-2, 60, 16, 4, 0, 0, 0));
            setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Wallet.WalletSendEnterAmount$AmountInputView$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$0(view);
                }
            });
            editTextBoldCursor.addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.Wallet.WalletSendEnterAmount.AmountInputView.3
                private boolean addingDecimal;
                private boolean appendDecimal;

                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
                    if (charSequence.length() <= 0 || i4 != charSequence.length() || i5 != 0 || AmountInputView.this.editText.getLayout() == null) {
                        return;
                    }
                    AmountInputView amountInputView = AmountInputView.this;
                    amountInputView.emptyFromOrigin = amountInputView.editText.getLayout().getLineLeft(0) - AmountInputView.this.editText.getScrollX();
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
                    boolean z2 = false;
                    this.appendDecimal = i5 > 0 && TextUtils.equals(charSequence, MVEL.VERSION_SUB);
                    if (AmountInputView.this.settingAmount || this.addingDecimal) {
                        return;
                    }
                    if (i4 == 0 && i5 == 0) {
                        return;
                    }
                    WalletDiamondView walletDiamondView2 = AmountInputView.this.diamondView;
                    if (i5 > 0 && i5 >= i4) {
                        z2 = true;
                    }
                    walletDiamondView2.onAmountEdited(z2);
                }

                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable editable) {
                    if (this.appendDecimal) {
                        this.appendDecimal = false;
                        this.addingDecimal = true;
                        try {
                            editable.append('.');
                            this.addingDecimal = false;
                            AmountInputView.this.editText.setSelection(editable.length());
                            return;
                        } catch (Throwable th) {
                            this.addingDecimal = false;
                            throw th;
                        }
                    }
                    AmountInputView.this.updateCharacters(editable);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(View view) {
            this.editText.requestFocus();
            AndroidUtilities.showKeyboard(this.editText);
        }

        public EditTextBoldCursor getEditText() {
            return this.editText;
        }

        public void setAmountText(String str) {
            this.settingAmount = true;
            try {
                this.editText.setText(str);
            } finally {
                this.settingAmount = false;
            }
        }

        public WalletDiamondView getDiamondView() {
            return this.diamondView;
        }

        public AnimatedTextView getCurrencyView() {
            return this.currencyView;
        }

        public void setIntroProgress(float f, float f2, boolean z) {
            float f3 = 1.0f - f;
            float width = (getWidth() / 2.0f) - this.row.getLeft();
            this.prefixContainer.setTranslationX((((width - r4.getLeft()) - this.diamondView.getLeft()) - (this.diamondView.getWidth() / 2.0f)) * f3);
            this.prefixContainer.setTranslationY(((((((getHeight() / 2.0f) - this.row.getTop()) - this.prefixContainer.getTop()) - this.diamondView.getTop()) - (this.diamondView.getHeight() / 2.0f)) * f3) - (AndroidUtilities.dp(36.0f) * ((float) Math.sin(((double) f) * 3.141592653589793d))));
            float left = (width - ((this.editText.getLeft() + (this.currencyView.getVisibility() == 8 ? this.editText : this.currencyView).getRight()) / 2.0f)) * (1.0f - f2);
            this.editText.setTranslationX(left);
            this.currencyView.setTranslationX(left);
            this.editText.setAlpha(f2);
            this.currencyView.setAlpha(f2);
            this.diamondView.setEnabled(z && !this.showingCurrency);
            this.diamondView.setIntroProgress(f);
        }

        public void setCurrency(GramWallet gramWallet, boolean z) {
            int iCeil;
            String str;
            boolean z2 = this.currencyInitialized && isAttachedToWindow() && isShown();
            if (this.walletAmountStyle) {
                int color = Theme.getColor(z ? Theme.key_wallet_inputCurrency : Theme.key_featuredStickers_addButton, this.resourcesProvider);
                this.symbolView.setTextColor(color);
                this.currencyView.setTextColor(color, z2);
                this.editText.setCursorColor(color);
                this.editText.setHandlesColor(color);
                this.editText.setHighlightColor(Theme.multAlpha(color, 0.3f));
            }
            TL_wallet.currencyRate selectedCurrencyRate = gramWallet.currencies.getSelectedCurrencyRate();
            String currency = gramWallet.currencies.getCurrency();
            boolean zEquals = TextUtils.equals(currency, "USD");
            String str2 = (selectedCurrencyRate == null || TextUtils.isEmpty(selectedCurrencyRate.symbol)) ? zEquals ? "$" : currency : selectedCurrencyRate.symbol;
            boolean z3 = z && (selectedCurrencyRate == null ? zEquals : selectedCurrencyRate.symbolLeft);
            boolean z4 = selectedCurrencyRate != null && selectedCurrencyRate.spaceBetween;
            boolean z5 = (this.showingCurrency == z && this.showingSymbol == z3 && (!z3 || TextUtils.equals(this.symbolView.getText(), str2))) ? false : true;
            if (z3) {
                this.symbolView.setText(str2);
                this.symbolView.getLayoutParams().width = (int) Math.ceil(this.symbolView.getPaint().measureText(str2));
                this.symbolView.requestLayout();
            }
            this.showingCurrency = z;
            this.showingSymbol = z3;
            if (!z) {
                iCeil = AndroidUtilities.dp(59.0f);
            } else if (z3) {
                iCeil = ((int) Math.ceil(this.symbolView.getPaint().measureText(str2))) + (z4 ? AndroidUtilities.dp(8.0f) : 0);
            } else {
                iCeil = 0;
            }
            this.prefixTargetWidth = iCeil;
            if (z5 || !this.currencyInitialized) {
                animatePrefix(z2 && z5);
            }
            this.currencyInitialized = true;
            AnimatedTextView animatedTextView = this.currencyView;
            if (!z) {
                currency = LocaleController.getString(C2807R.string.GramCurrency);
            } else if (!z3) {
                currency = str2;
            }
            animatedTextView.setText(currency, z2);
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.currencyView.getLayoutParams();
            layoutParams.leftMargin = (!z || z3 || z4) ? AndroidUtilities.dp(4.0f) : 0;
            this.currencyView.setLayoutParams(layoutParams);
            if (!z || selectedCurrencyRate == null) {
                str = ",";
            } else {
                str = selectedCurrencyRate.thousandsSeparator;
                if (str == null) {
                    str = _UrlKt.FRAGMENT_ENCODE_SET;
                }
            }
            String str3 = (!z || selectedCurrencyRate == null || TextUtils.isEmpty(selectedCurrencyRate.decimalSeparator)) ? "." : selectedCurrencyRate.decimalSeparator;
            if (TextUtils.equals(this.groupingSeparator, str) && TextUtils.equals(this.decimalSeparator, str3)) {
                return;
            }
            finishAnimation();
            this.groupingSeparator = str;
            this.decimalSeparator = str3;
            updateCharacters(this.editText.getText());
            finishAnimation();
        }

        public void setScaleProperty(float f) {
            this.animationStartScale = 1.0f - Math.max(0.0f, Math.min(1.0f, f));
        }

        private void animatePrefix(boolean z) {
            ValueAnimator valueAnimator = this.prefixAnimator;
            if (valueAnimator != null) {
                valueAnimator.removeAllListeners();
                this.prefixAnimator.cancel();
                this.prefixAnimator = null;
            }
            SpringAnimation springAnimation = this.symbolWobble;
            if (springAnimation != null) {
                springAnimation.cancel();
            }
            SpringAnimation springAnimation2 = this.diamondWobble;
            if (springAnimation2 != null) {
                springAnimation2.cancel();
            }
            if (!z) {
                finishPrefixTransition();
                return;
            }
            final int i = this.prefixContainer.getLayoutParams().width;
            final float alpha = this.diamondView.getAlpha();
            final float alpha2 = this.symbolView.getAlpha();
            final float f = this.showingCurrency ? 0.0f : 1.0f;
            final float f2 = this.showingSymbol ? 1.0f : 0.0f;
            if (alpha > 0.0f || f > 0.0f) {
                this.diamondView.setVisibility(0);
            }
            if (alpha2 > 0.0f || f2 > 0.0f) {
                this.symbolView.setVisibility(0);
            }
            this.diamondView.setEnabled(!this.showingCurrency);
            this.diamondWobble = wobbleDiamond(this.showingCurrency ? 24.0f : -24.0f);
            this.symbolWobble = wobblePrefix(this.symbolView, this.showingCurrency ? 18.0f : -18.0f);
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            this.prefixAnimator = valueAnimatorOfFloat;
            valueAnimatorOfFloat.setDuration(320L);
            this.prefixAnimator.setInterpolator(new LinearInterpolator());
            this.prefixAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Wallet.WalletSendEnterAmount$AmountInputView$$ExternalSyntheticLambda1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    this.f$0.lambda$animatePrefix$1(alpha, f, alpha2, f2, i, valueAnimator2);
                }
            });
            this.prefixAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Wallet.WalletSendEnterAmount.AmountInputView.4
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    AmountInputView.this.prefixAnimator = null;
                    AmountInputView.this.diamondView.setVisibility(AmountInputView.this.showingCurrency ? 4 : 0);
                    AmountInputView.this.symbolView.setVisibility(AmountInputView.this.showingSymbol ? 0 : 4);
                }
            });
            this.prefixAnimator.start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$animatePrefix$1(float f, float f2, float f3, float f4, int i, ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
            float interpolation = cubicBezierInterpolator.getInterpolation(fFloatValue);
            float interpolation2 = cubicBezierInterpolator.getInterpolation(Math.min(1.0f, (fFloatValue * 320.0f) / 120.0f));
            this.diamondView.setAlpha(f + ((f2 - f) * interpolation2));
            this.symbolView.setAlpha(f3 + ((f4 - f3) * interpolation2));
            this.prefixContainer.getLayoutParams().width = Math.round(i + ((this.prefixTargetWidth - i) * interpolation));
            this.prefixContainer.requestLayout();
        }

        private SpringAnimation wobblePrefix(View view, float f) {
            view.setPivotX(view.getLayoutParams().width / 2.0f);
            view.setPivotY(0.0f);
            if (view.getAlpha() < 0.01f) {
                view.setRotation(f);
            }
            SpringAnimation springAnimation = new SpringAnimation(view, DynamicAnimation.ROTATION);
            springAnimation.setSpring(new SpringForce(0.0f).setDampingRatio(0.3f).setStiffness(180.0f));
            springAnimation.setStartVelocity((-f) * 10.0f);
            springAnimation.start();
            return springAnimation;
        }

        private SpringAnimation wobbleDiamond(float f) {
            if (this.diamondView.getAlpha() < 0.01f) {
                this.diamondView.setConversionWobble(f);
            }
            SpringAnimation springAnimation = new SpringAnimation(new FloatValueHolder(this.diamondView.getConversionWobble()));
            springAnimation.setSpring(new SpringForce(0.0f).setDampingRatio(0.3f).setStiffness(180.0f));
            springAnimation.setMinimumVisibleChange(0.1f);
            springAnimation.setStartVelocity((-f) * 10.0f);
            springAnimation.addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() { // from class: org.telegram.ui.Wallet.WalletSendEnterAmount$AmountInputView$$ExternalSyntheticLambda4
                @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationUpdateListener
                public final void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f2, float f3) {
                    this.f$0.lambda$wobbleDiamond$2(dynamicAnimation, f2, f3);
                }
            });
            springAnimation.start();
            return springAnimation;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$wobbleDiamond$2(DynamicAnimation dynamicAnimation, float f, float f2) {
            this.diamondView.setConversionWobble(f);
        }

        private void finishPrefixTransition() {
            this.diamondView.setAlpha(this.showingCurrency ? 0.0f : 1.0f);
            this.symbolView.setAlpha(this.showingSymbol ? 1.0f : 0.0f);
            this.diamondView.setConversionWobble(0.0f);
            this.symbolView.setRotation(0.0f);
            this.diamondView.setEnabled(!this.showingCurrency);
            this.diamondView.setVisibility(this.showingCurrency ? 4 : 0);
            this.symbolView.setVisibility(this.showingSymbol ? 0 : 4);
            this.prefixContainer.getLayoutParams().width = this.prefixTargetWidth;
            this.prefixContainer.requestLayout();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:124:0x02d6  */
        /* JADX WARN: Removed duplicated region for block: B:126:0x02fd  */
        /* JADX WARN: Removed duplicated region for block: B:156:0x0388  */
        /* JADX WARN: Removed duplicated region for block: B:157:0x038a  */
        /* JADX WARN: Removed duplicated region for block: B:160:0x0390  */
        /* JADX WARN: Removed duplicated region for block: B:54:0x019c  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void updateCharacters(Editable editable) {
            boolean z;
            GlyphMotion glyphMotion;
            int i;
            int iMax;
            int i2;
            boolean z2;
            int i3;
            ArrayList arrayList;
            int i4;
            boolean z3;
            String string = editable.toString();
            int i5 = 0;
            while (i5 < Math.min(string.length(), this.previousRaw.length()) && string.charAt(i5) == this.previousRaw.charAt(i5)) {
                i5++;
            }
            int i6 = 0;
            while (i6 < Math.min(string.length(), this.previousRaw.length()) - i5) {
                char cCharAt = string.charAt((string.length() - i6) - 1);
                String str = this.previousRaw;
                if (cCharAt != str.charAt((str.length() - i6) - 1)) {
                    break;
                } else {
                    i6++;
                }
            }
            int length = (this.previousRaw.length() - i5) - i6;
            int length2 = (string.length() - i5) - i6;
            ArrayList arrayList2 = new ArrayList(this.characters);
            if (arrayList2.isEmpty() && this.previousRaw.isEmpty() && string.startsWith(MVEL.VERSION_SUB)) {
                z = true;
                glyphMotion = new GlyphMotion(0.0f, 1.0f, 1.0f, 0.0f);
            } else {
                z = true;
                glyphMotion = null;
            }
            ArrayList arrayList3 = new ArrayList();
            ArrayList arrayList4 = new ArrayList();
            ArrayList arrayList5 = new ArrayList();
            ArrayList arrayList6 = new ArrayList();
            int size = arrayList2.size();
            int i7 = 0;
            float fAdvance = 0.0f;
            while (i7 < size) {
                Object obj = arrayList2.get(i7);
                i7++;
                AmountCharacterSpan amountCharacterSpan = (AmountCharacterSpan) obj;
                GlyphMotion glyphMotion2 = glyphMotion;
                arrayList3.add(amountCharacterSpan.glyphMotion.snapshot());
                arrayList6.add(Integer.valueOf(amountCharacterSpan.advance()));
                fAdvance += amountCharacterSpan.advance();
                if (amountCharacterSpan.commaMotion != null) {
                    arrayList4.add(amountCharacterSpan.commaMotion.snapshot());
                    arrayList5.add(amountCharacterSpan.groupingGlyph);
                }
                glyphMotion = glyphMotion2;
            }
            GlyphMotion glyphMotion3 = glyphMotion;
            ValueAnimator valueAnimator = this.animator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.animator = null;
            }
            Object[] objArr = (AmountCharacterSpan[]) editable.getSpans(0, editable.length(), AmountCharacterSpan.class);
            int i8 = 0;
            for (int length3 = objArr.length; i8 < length3; length3 = length3) {
                editable.removeSpan(objArr[i8]);
                i8++;
            }
            this.characters.clear();
            this.disappearing.clear();
            int iMax2 = Math.max(string.indexOf(46), string.indexOf(44));
            int length4 = iMax2 < 0 ? string.length() : iMax2;
            if (this.groupingSeparator.isEmpty()) {
                i = length;
                iMax = 0;
            } else {
                i = length;
                iMax = Math.max(0, (length4 - 1) / 3);
            }
            this.displayWidth = 0.0f;
            if (isAttachedToWindow()) {
                i2 = iMax;
                boolean z4 = this.editText.getSelectionStart() == this.editText.getSelectionEnd() ? z : false;
                boolean[] zArr = new boolean[arrayList2.size()];
                z2 = z4;
                boolean[] zArr2 = new boolean[arrayList4.size()];
                i3 = 0;
                int i9 = 0;
                int i10 = 0;
                while (i3 < string.length()) {
                    int i11 = i3 < i5 ? i3 : i3 >= i5 + length2 ? (i3 - length2) + i : -1;
                    int i12 = length2;
                    boolean z5 = (i11 < 0 || i11 >= arrayList2.size()) ? false : z;
                    if (z5) {
                        zArr[i11] = z;
                    }
                    boolean z6 = z5;
                    boolean z7 = (this.groupingSeparator.isEmpty() || i3 <= 0 || i3 >= length4 || (length4 - i3) % 3 != 0) ? false : z;
                    int i13 = length4;
                    float f = fAdvance;
                    String strValueOf = i3 == iMax2 ? this.decimalSeparator : String.valueOf(string.charAt(i3));
                    if (iMax2 < 0 || i3 < iMax2) {
                        i4 = iMax2;
                        z3 = false;
                    } else {
                        i4 = iMax2;
                        z3 = z;
                    }
                    AmountCharacterSpan amountCharacterSpan2 = new AmountCharacterSpan(strValueOf, z7, z3);
                    float fMeasureText = z7 ? this.editText.getPaint().measureText(this.groupingSeparator) : 0.0f;
                    boolean z8 = z7;
                    ArrayList arrayList7 = arrayList2;
                    amountCharacterSpan2.toAdvance = (int) Math.ceil(amountCharacterSpan2.fullWidth(this.editText.getPaint()));
                    amountCharacterSpan2.fromAdvance = z6 ? ((Integer) arrayList6.get(i11)).intValue() : 0;
                    if (i3 == 0 && glyphMotion3 != null) {
                        amountCharacterSpan2.fromAdvance = amountCharacterSpan2.toAdvance;
                    }
                    if (this.walletAmountStyle && i3 == 0 && this.previousRaw.isEmpty() && arrayList7.isEmpty()) {
                        amountCharacterSpan2.fromAdvance = (int) Math.ceil(this.editText.getPaint().measureText(MVEL.VERSION_SUB));
                    }
                    i9 += amountCharacterSpan2.fromAdvance;
                    amountCharacterSpan2.glyphMotion = new GlyphMotion(this, z6 ? (GlyphMotion) arrayList3.get(i11) : i3 == 0 ? glyphMotion3 : null, this.displayWidth + fMeasureText);
                    if (z8) {
                        int i14 = i10 + 1;
                        int size2 = (arrayList4.size() - i2) + i10;
                        if (size2 >= 0) {
                            zArr2[size2] = z;
                        }
                        amountCharacterSpan2.commaMotion = new GlyphMotion(this, size2 >= 0 ? (GlyphMotion) arrayList4.get(size2) : null, this.displayWidth);
                        i10 = i14;
                    }
                    this.characters.add(amountCharacterSpan2);
                    this.displayWidth += amountCharacterSpan2.toAdvance;
                    int i15 = i3 + 1;
                    editable.setSpan(amountCharacterSpan2, i3, i15, 33);
                    i3 = i15;
                    length2 = i12;
                    length4 = i13;
                    fAdvance = f;
                    iMax2 = i4;
                    arrayList2 = arrayList7;
                }
                float f2 = fAdvance;
                ArrayList arrayList8 = arrayList2;
                if (!this.characters.isEmpty()) {
                    this.characters.get(Math.min(i5, r2.size() - 1)).fromAdvance += Math.max(0, Math.round(f2) - i9);
                }
                if (z2) {
                    int i16 = 0;
                    while (i16 < arrayList8.size()) {
                        if (zArr[i16]) {
                            arrayList = arrayList8;
                        } else {
                            if (string.isEmpty() && i16 == 0) {
                                arrayList = arrayList8;
                                if (!((AmountCharacterSpan) arrayList.get(i16)).glyph.equals(MVEL.VERSION_SUB)) {
                                }
                            } else {
                                arrayList = arrayList8;
                            }
                            AmountCharacterSpan amountCharacterSpan3 = (AmountCharacterSpan) arrayList.get(i16);
                            this.disappearing.add(new DisappearingGlyph(amountCharacterSpan3.glyph, amountCharacterSpan3.fraction, (GlyphMotion) arrayList3.get(i16)));
                        }
                        i16++;
                        arrayList8 = arrayList;
                    }
                    ArrayList arrayList9 = arrayList8;
                    for (int i17 = 0; i17 < arrayList4.size(); i17++) {
                        if (!zArr2[i17]) {
                            this.disappearing.add(new DisappearingGlyph((String) arrayList5.get(i17), false, (GlyphMotion) arrayList4.get(i17)));
                        }
                    }
                    if (string.isEmpty() && !arrayList9.isEmpty()) {
                        this.emptyFromWidth = f2;
                    }
                }
                this.previousRaw = string;
                this.animationProgress = !z2 ? 0.0f : 1.0f;
                if (z2) {
                    ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
                    this.animator = valueAnimatorOfFloat;
                    valueAnimatorOfFloat.setDuration(320L);
                    this.animator.setInterpolator(new LinearInterpolator());
                    this.animator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Wallet.WalletSendEnterAmount$AmountInputView$$ExternalSyntheticLambda0
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                            this.f$0.lambda$updateCharacters$3(valueAnimator2);
                        }
                    });
                    this.animator.start();
                }
                refreshCharacterLayout();
            }
            i2 = iMax;
            boolean[] zArr3 = new boolean[arrayList2.size()];
            z2 = z4;
            boolean[] zArr22 = new boolean[arrayList4.size()];
            i3 = 0;
            int i92 = 0;
            int i102 = 0;
            while (i3 < string.length()) {
            }
            float f22 = fAdvance;
            ArrayList arrayList82 = arrayList2;
            if (!this.characters.isEmpty()) {
            }
            if (z2) {
            }
            this.previousRaw = string;
            this.animationProgress = !z2 ? 0.0f : 1.0f;
            if (z2) {
            }
            refreshCharacterLayout();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$updateCharacters$3(ValueAnimator valueAnimator) {
            this.animationProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            refreshCharacterLayout();
        }

        private void refreshCharacterLayout() {
            Editable text = this.editText.getText();
            if (this.walletAmountStyle) {
                CharSequence charSequence = text.length() == 0 ? MVEL.VERSION_SUB : null;
                if (!TextUtils.equals(this.editText.getHint(), charSequence)) {
                    this.editText.setHint(charSequence);
                }
            }
            float fAdvance = 0.0f;
            for (int i = 0; i < this.characters.size(); i++) {
                AmountCharacterSpan amountCharacterSpan = this.characters.get(i);
                amountCharacterSpan.currentOffset = fAdvance;
                fAdvance += amountCharacterSpan.advance();
                if (text.getSpanStart(amountCharacterSpan) >= 0) {
                    text.setSpan(amountCharacterSpan, text.getSpanStart(amountCharacterSpan), text.getSpanEnd(amountCharacterSpan), 33);
                }
            }
            if (text.length() == 0 && this.animationProgress < 1.0f) {
                float fMeasureText = this.editText.getPaint().measureText(MVEL.VERSION_SUB);
                EditTextBoldCursor editTextBoldCursor = this.editText;
                int iDp = AndroidUtilities.dp(24.0f);
                float f = this.emptyFromWidth;
                editTextBoldCursor.setMinWidth(Math.max(iDp, Math.round(f + ((fMeasureText - f) * movementProgress())) + this.editText.getPaddingLeft() + this.editText.getPaddingRight()));
            } else {
                this.editText.setMinWidth((!this.walletAmountStyle || text.length() <= 0) ? AndroidUtilities.dp(24.0f) : this.editText.getPaddingLeft() + this.editText.getPaddingRight() + AndroidUtilities.dp(3.0f));
            }
            this.editText.requestLayout();
            this.editText.invalidate();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void finishAnimation() {
            ValueAnimator valueAnimator = this.animator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.animator = null;
                this.animationProgress = 1.0f;
                refreshCharacterLayout();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public float movementProgress() {
            return ANIMATION_INTERPOLATOR.getInterpolation(this.animationProgress);
        }

        public class DisappearingGlyph {
            final boolean fraction;
            final String glyph;
            final GlyphMotion motion;

            public DisappearingGlyph(String str, boolean z, GlyphMotion glyphMotion) {
                this.glyph = str;
                this.fraction = z;
                this.motion = AmountInputView.this.new GlyphMotion(glyphMotion, glyphMotion.fromX, true);
            }
        }

        public class GlyphMotion {
            private final long appearanceStart;
            private final boolean exiting;
            private final float fromAlpha;
            private final float fromScale;
            private final float fromX;
            private final float fromY;
            private final float toX;

            public GlyphMotion(AmountInputView amountInputView, GlyphMotion glyphMotion, float f) {
                this(glyphMotion, f, false);
            }

            public GlyphMotion(GlyphMotion glyphMotion, float f, boolean z) {
                float f2;
                this.exiting = z;
                this.toX = f;
                this.fromX = glyphMotion != null ? glyphMotion.fromX : f;
                this.appearanceStart = (glyphMotion == null || z) ? SystemClock.uptimeMillis() : glyphMotion.appearanceStart;
                float f3 = 0.0f;
                float fAppearanceProgress = (glyphMotion == null || !z) ? 0.0f : glyphMotion.appearanceProgress();
                if (glyphMotion != null) {
                    float f4 = glyphMotion.fromAlpha;
                    f3 = f4 + ((1.0f - f4) * fAppearanceProgress);
                }
                this.fromAlpha = f3;
                if (glyphMotion == null) {
                    f2 = AmountInputView.this.animationStartScale;
                } else {
                    float f5 = glyphMotion.fromScale;
                    f2 = f5 + ((1.0f - f5) * fAppearanceProgress);
                }
                this.fromScale = f2;
                this.fromY = glyphMotion == null ? (-AndroidUtilities.dpf2(44.0f)) * 0.1f : glyphMotion.fromY * (1.0f - fAppearanceProgress);
            }

            private GlyphMotion(float f, float f2, float f3, float f4) {
                this.exiting = false;
                this.toX = f;
                this.fromX = f;
                this.fromAlpha = f2;
                this.fromScale = f3;
                this.fromY = f4;
                this.appearanceStart = SystemClock.uptimeMillis();
            }

            private GlyphMotion(float f, GlyphMotion glyphMotion) {
                this.exiting = glyphMotion.exiting;
                this.toX = f;
                this.fromX = f;
                this.fromAlpha = glyphMotion.fromAlpha;
                this.fromScale = glyphMotion.fromScale;
                this.fromY = glyphMotion.fromY;
                this.appearanceStart = glyphMotion.appearanceStart;
            }

            private float appearanceProgress() {
                if (AmountInputView.this.animationProgress >= 1.0f) {
                    return 1.0f;
                }
                return AmountInputView.ANIMATION_INTERPOLATOR.getInterpolation(Math.min(1.0f, (SystemClock.uptimeMillis() - this.appearanceStart) / 320.0f));
            }

            /* JADX INFO: renamed from: x */
            private float m1103x() {
                float f = this.fromX;
                return f + ((this.toX - f) * AmountInputView.this.movementProgress());
            }

            public GlyphMotion snapshot() {
                float f = AmountInputView.this.animationProgress;
                AmountInputView amountInputView = AmountInputView.this;
                if (f >= 1.0f) {
                    return amountInputView.new GlyphMotion(m1103x(), 1.0f, 1.0f, 0.0f);
                }
                return amountInputView.new GlyphMotion(m1103x(), this);
            }

            public void draw(Canvas canvas, Paint paint, String str, float f, int i) {
                float fAppearanceProgress = appearanceProgress();
                float f2 = this.fromAlpha;
                float f3 = f2 + (((this.exiting ? 0.0f : 1.0f) - f2) * fAppearanceProgress);
                if (f3 <= 0.0f) {
                    return;
                }
                int alpha = paint.getAlpha();
                float fMeasureText = paint.measureText(str);
                canvas.save();
                canvas.translate(f + m1103x(), i + this.fromY + (((this.exiting ? AndroidUtilities.dpf2(44.0f) * 0.1f : 0.0f) - this.fromY) * fAppearanceProgress));
                float f4 = this.fromScale + (((this.exiting ? AmountInputView.this.animationStartScale : 1.0f) - this.fromScale) * fAppearanceProgress);
                canvas.scale(f4, f4, fMeasureText / 2.0f, (paint.ascent() + paint.descent()) / 2.0f);
                paint.setAlpha(Math.round(alpha * f3));
                canvas.drawText(str, 0.0f, 0.0f, paint);
                paint.setAlpha(alpha);
                canvas.restore();
            }
        }

        public class AmountCharacterSpan extends ReplacementSpan {
            private final boolean comma;
            private GlyphMotion commaMotion;
            private float currentOffset;
            private final boolean fraction;
            private int fromAdvance;
            private final String glyph;
            private GlyphMotion glyphMotion;
            private final String groupingGlyph;
            private int toAdvance;

            public AmountCharacterSpan(String str, boolean z, boolean z2) {
                this.glyph = str;
                this.groupingGlyph = z ? AmountInputView.this.groupingSeparator : _UrlKt.FRAGMENT_ENCODE_SET;
                this.comma = z;
                this.fraction = z2;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public int advance() {
                return Math.round(this.fromAdvance + ((this.toAdvance - r0) * AmountInputView.this.movementProgress()));
            }

            /* JADX INFO: Access modifiers changed from: private */
            public float fullWidth(Paint paint) {
                float textSize = paint.getTextSize();
                if (this.fraction) {
                    paint.setTextSize((28.0f * textSize) / 44.0f);
                }
                float fMeasureText = paint.measureText(this.glyph) + paint.measureText(this.groupingGlyph);
                paint.setTextSize(textSize);
                return fMeasureText;
            }

            @Override // android.text.style.ReplacementSpan
            public int getSize(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
                if (fontMetricsInt != null) {
                    paint.getFontMetricsInt(fontMetricsInt);
                }
                return advance();
            }

            @Override // android.text.style.ReplacementSpan
            public void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
                Canvas canvas2;
                Paint paint2;
                int i6;
                float textSize = paint.getTextSize();
                if (this.fraction) {
                    paint.setTextSize((28.0f * textSize) / 44.0f);
                }
                float f2 = f - this.currentOffset;
                GlyphMotion glyphMotion = this.commaMotion;
                if (glyphMotion != null) {
                    paint2 = paint;
                    i6 = i4;
                    canvas2 = canvas;
                    glyphMotion.draw(canvas2, paint2, this.groupingGlyph, f2, i6);
                } else {
                    canvas2 = canvas;
                    paint2 = paint;
                    i6 = i4;
                }
                this.glyphMotion.draw(canvas2, paint2, this.glyph, f2, i6);
                paint2.setTextSize(textSize);
            }
        }

        @Override // android.widget.FrameLayout, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            this.row.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), TLObject.FLAG_30));
            float fMin = Math.min(1.0f, getMeasuredWidth() / Math.max(1, this.row.getMeasuredWidth()));
            this.row.setPivotX(r4.getMeasuredWidth() / 2.0f);
            this.row.setPivotY(r4.getMeasuredHeight() / 2.0f);
            this.row.setScaleX(fMin);
            this.row.setScaleY(fMin);
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        public void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            int top = this.editText.getTop() + this.editText.getBaseline();
            if (this.symbolView.getVisibility() == 0) {
                this.symbolView.setTranslationY(((top - this.prefixContainer.getTop()) - this.symbolView.getTop()) - this.symbolView.getBaseline());
            }
            this.currencyView.setTranslationY((top - r2.getTop()) - this.currencyView.getBaseline());
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onDetachedFromWindow() {
            finishAnimation();
            animatePrefix(false);
            super.onDetachedFromWindow();
        }
    }

    public String getAddress() {
        return this.recipientAddress;
    }

    public byte[] getPublicKey() {
        TL_wallet.walletUserAddress walletuseraddress = this.recipient;
        if (walletuseraddress == null || walletuseraddress.public_key == null) {
            return null;
        }
        int i = 0;
        while (true) {
            byte[] bArr = this.recipient.public_key;
            if (i >= bArr.length) {
                return null;
            }
            if (bArr[i] != 0) {
                return bArr;
            }
            i++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(boolean z) {
        EditTextBoldCursor editTextBoldCursor;
        if (z && this.pendingAmountKeyboard && (editTextBoldCursor = this.amountEdit) != null) {
            editTextBoldCursor.removeCallbacks(this.showAmountKeyboard);
            this.amountEdit.post(this.showAmountKeyboard);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showPendingAmountKeyboard() {
        EditTextBoldCursor editTextBoldCursor;
        if (this.pendingAmountKeyboard && (editTextBoldCursor = this.amountEdit) != null && editTextBoldCursor.isAttachedToWindow() && this.amountEdit.hasWindowFocus()) {
            this.amountEdit.requestFocus();
            if (AndroidUtilities.showKeyboard(this.amountEdit)) {
                this.pendingAmountKeyboard = false;
            }
        }
    }

    public WalletSendEnterAmount(TLRPC.User user) {
        this.initAmount = 0L;
        this.showAmountKeyboard = new Runnable() { // from class: org.telegram.ui.Wallet.WalletSendEnterAmount$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.showPendingAmountKeyboard();
            }
        };
        this.amountWindowFocusListener = new ViewTreeObserver.OnWindowFocusChangeListener() { // from class: org.telegram.ui.Wallet.WalletSendEnterAmount$$ExternalSyntheticLambda13
            @Override // android.view.ViewTreeObserver.OnWindowFocusChangeListener
            public final void onWindowFocusChanged(boolean z) {
                this.f$0.lambda$new$0(z);
            }
        };
        this.fee = -1L;
        this.comment_encrypted = true;
        this.shakeDp = 6;
        this.recipientUser = user;
        this.recipientAddress = null;
        this.loadingRecipient = true;
        GramWallet.getInstance(this.currentAccount).resolveWallet(user, true, new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.WalletSendEnterAmount$$ExternalSyntheticLambda18
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$new$1((TL_wallet.walletUserAddress) obj, (String) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(TL_wallet.walletUserAddress walletuseraddress, String str) {
        this.loadingRecipient = false;
        if (TextUtils.equals(str, "WALLET_USER_UNAVAILABLE")) {
            finishFragment();
            return;
        }
        this.recipient = walletuseraddress;
        if (walletuseraddress != null) {
            this.recipientAddress = walletuseraddress.address;
        }
        UniversalRecyclerView universalRecyclerView = this.listView;
        if (universalRecyclerView != null) {
            universalRecyclerView.adapter.update(true);
        }
        updateAmount();
        loadFee();
        updateAddressInfo();
    }

    public WalletSendEnterAmount(String str) {
        this(UserConfig.selectedAccount, str);
    }

    public WalletSendEnterAmount(int i, String str) {
        this.initAmount = 0L;
        this.showAmountKeyboard = new Runnable() { // from class: org.telegram.ui.Wallet.WalletSendEnterAmount$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.showPendingAmountKeyboard();
            }
        };
        this.amountWindowFocusListener = new ViewTreeObserver.OnWindowFocusChangeListener() { // from class: org.telegram.ui.Wallet.WalletSendEnterAmount$$ExternalSyntheticLambda13
            @Override // android.view.ViewTreeObserver.OnWindowFocusChangeListener
            public final void onWindowFocusChanged(boolean z) {
                this.f$0.lambda$new$0(z);
            }
        };
        this.fee = -1L;
        this.comment_encrypted = true;
        this.shakeDp = 6;
        setCurrentAccount(i);
        this.recipientUser = null;
        this.recipientAddress = str;
        loadFee();
        this.loadingRecipient = true;
        GramWallet.getInstance(this.currentAccount).resolveWallet(str, new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.WalletSendEnterAmount$$ExternalSyntheticLambda14
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$new$2((TL_wallet.walletUserAddress) obj, (String) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(TL_wallet.walletUserAddress walletuseraddress, String str) {
        this.loadingRecipient = false;
        this.recipient = walletuseraddress;
        if (walletuseraddress != null && walletuseraddress.user_id != 0) {
            this.recipientUser = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(walletuseraddress.user_id));
        }
        UniversalRecyclerView universalRecyclerView = this.listView;
        if (universalRecyclerView != null) {
            universalRecyclerView.adapter.update(true);
        }
        updateAmount();
        updateAddressInfo();
    }

    public WalletSendEnterAmount setRecipientDomain(String str) {
        this.recipientDomain = str;
        ActionBar actionBar = this.actionBar;
        if (actionBar != null) {
            actionBar.setTitle(createTitle());
        }
        return this;
    }

    public WalletSendEnterAmount setAmount(long j) {
        this.initAmount = j;
        return this;
    }

    public WalletSendEnterAmount setComment(String str, boolean z) {
        this.comment = str;
        this.comment_encrypted = z;
        return this;
    }

    public WalletSendEnterAmount setAllowOpenChat() {
        this.openChat = true;
        return this;
    }

    @Override // org.telegram.ui.Components.UniversalFragment
    public CharSequence getTitle() {
        return createTitle();
    }

    @Override // org.telegram.ui.Components.UniversalFragment, org.telegram.ui.ActionBar.BaseFragment
    public View createView(Context context) {
        View viewCreateView = super.createView(context);
        this.fragmentView = viewCreateView;
        viewCreateView.setFocusableInTouchMode(true);
        this.listView.setVisibility(8);
        View view = this.fragmentView;
        int i = Theme.key_windowBackgroundWhite;
        view.setBackgroundColor(getThemedColor(i));
        this.actionBar.setBackgroundColor(getThemedColor(i));
        this.actionBar.setCastShadows(false);
        ActionBarMenuItem actionBarMenuItemAddItem = this.actionBar.createMenu().addItem(1, C2807R.drawable.ic_ab_other);
        actionBarMenuItemAddItem.setContentDescription(LocaleController.getString(C2807R.string.AccDescrMoreOptions));
        actionBarMenuItemAddItem.addSubItem(2, C2807R.drawable.msg_addbot, LocaleController.getString(C2807R.string.WalletDepositFunds));
        actionBarMenuItemAddItem.addSubItem(3, C2807R.drawable.menu_comments, LocaleController.getString(C2807R.string.WalletAddComment));
        this.actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.Wallet.WalletSendEnterAmount.1
            @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i2) {
                if (i2 == -1) {
                    WalletSendEnterAmount.this.finishFragment();
                } else if (i2 == 2) {
                    WalletActivity.openWalletQRAlert(WalletSendEnterAmount.this.getContext(), ((BaseFragment) WalletSendEnterAmount.this).currentAccount, WalletSendEnterAmount.this.getResourceProvider());
                } else if (i2 == 3) {
                    WalletSendEnterAmount.this.openAddCommentAlert();
                }
            }
        });
        FrameLayout frameLayout = (FrameLayout) this.fragmentView;
        frameLayout.setClipChildren(false);
        frameLayout.setClipToPadding(false);
        WalletRecipientView walletRecipientView = new WalletRecipientView(context, this.resourceProvider, new Runnable() { // from class: org.telegram.ui.Wallet.WalletSendEnterAmount$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createView$3();
            }
        }, new Runnable() { // from class: org.telegram.ui.Wallet.WalletSendEnterAmount$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createView$4();
            }
        });
        this.addressInfoLayout = walletRecipientView;
        frameLayout.addView(walletRecipientView, LayoutHelper.createFrame(-2, 64.0f, 49, 16.0f, 5.0f, 16.0f, 0.0f));
        updateAddressInfo();
        C65012 c65012 = new C65012(context);
        this.center = c65012;
        c65012.setOrientation(1);
        this.center.setClipChildren(false);
        this.center.setClipToPadding(false);
        frameLayout.addView(this.center, LayoutHelper.createFrame(-1, -2, 17));
        AmountInputView amountInputView = new AmountInputView(context, getResourceProvider(), true);
        this.amountInput = amountInputView;
        if (!amountInputView.getDiamondView().canAnimateIntro()) {
            this.introRevealProgress = 1.0f;
            this.introProgress = 1.0f;
        }
        this.center.addView(this.amountInput, LayoutHelper.createLinear(-1, 64, 49, 16, 0, 16, 0));
        EditTextBoldCursor editText = this.amountInput.getEditText();
        this.amountEdit = editText;
        editText.setFilters(new InputFilter[]{new InputFilter() { // from class: org.telegram.ui.Wallet.WalletSendEnterAmount$$ExternalSyntheticLambda6
            @Override // android.text.InputFilter
            public final CharSequence filter(CharSequence charSequence, int i2, int i3, Spanned spanned, int i4, int i5) {
                return this.f$0.lambda$createView$5(charSequence, i2, i3, spanned, i4, i5);
            }
        }});
        this.amountEdit.setImeOptions(33554438);
        this.amountEdit.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.Wallet.WalletSendEnterAmount$$ExternalSyntheticLambda7
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
                return this.f$0.lambda$createView$6(textView, i2, keyEvent);
            }
        });
        this.amountEdit.addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.Wallet.WalletSendEnterAmount.3
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                WalletSendEnterAmount.this.updateAmount();
            }
        });
        long j = this.initAmount;
        if (j > 0) {
            this.amountInput.setAmountText(MathFormat$$ExternalSyntheticBackportWithForwarding0.m260m(BigDecimal.valueOf(j, 9)).toPlainString());
            EditTextBoldCursor editTextBoldCursor = this.amountEdit;
            editTextBoldCursor.setSelection(editTextBoldCursor.length());
        }
        this.currencyExchangeIcon = new SpannableString("⇅");
        ColoredImageSpan coloredImageSpan = new ColoredImageSpan(C2807R.drawable.wallet_currency_exchange);
        coloredImageSpan.setAlpha(0.72f);
        CharSequence charSequence = this.currencyExchangeIcon;
        ((SpannableString) charSequence).setSpan(coloredImageSpan, 0, charSequence.length(), 33);
        this.gramAmountIcon = new SpannableString("G");
        ColoredImageSpan coloredImageSpan2 = new ColoredImageSpan(C2807R.drawable.wallet_gram_small);
        coloredImageSpan2.recolorDrawable = false;
        CharSequence charSequence2 = this.gramAmountIcon;
        ((SpannableString) charSequence2).setSpan(coloredImageSpan2, 0, charSequence2.length(), 33);
        AnimatedTextView animatedTextView = new AnimatedTextView(context, false, true, true, true, true);
        this.usdView = animatedTextView;
        animatedTextView.setAnimationProperties(0.35f, 0L, 320L, 3.5f, CubicBezierInterpolator.EASE_OUT_QUINT);
        this.usdView.setScaleProperty(0.25f);
        this.usdView.setText(getCurrencyPreviewText(GramWallet.getInstance(this.currentAccount), 0L));
        AnimatedTextView animatedTextView2 = this.usdView;
        int themedColor = getThemedColor(i);
        int i2 = Theme.key_windowBackgroundWhiteGrayText2;
        animatedTextView2.setTextColor(Theme.blendOver(themedColor, getThemedColor(i2)));
        this.usdView.setTextSize(AndroidUtilities.dp(14.0f));
        this.usdView.setTypeface(AndroidUtilities.getTypeface("fonts/gram.ttf"));
        this.usdView.setGravity(17);
        this.usdView.setPadding(AndroidUtilities.dp(10.0f), 0, AndroidUtilities.dp(10.0f), 0);
        this.usdView.setAllowCancel(true);
        this.usdView.setSizeableBackground(Theme.createRoundRectDrawable(AndroidUtilities.dp(14.0f), Theme.multAlpha(getThemedColor(i2), 0.08f)));
        this.center.addView(this.usdView, LayoutHelper.createLinear(-2, 28, 49, 0, 8, 0, 0));
        ScaleStateListAnimator.apply(this.usdView);
        this.usdView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Wallet.WalletSendEnterAmount$$ExternalSyntheticLambda8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$createView$7(view2);
            }
        });
        FrameLayout frameLayout2 = new FrameLayout(context);
        this.centerBottomContainer = frameLayout2;
        this.center.addView(frameLayout2, LayoutHelper.createLinear(-2, -2, 49));
        LinearLayout linearLayout = new LinearLayout(context);
        this.centerBottom = linearLayout;
        linearLayout.setOrientation(1);
        this.centerBottomContainer.addView(this.centerBottom, LayoutHelper.createFrame(-2, -2, 49));
        TextView textView = new TextView(context);
        this.depositFundsView = textView;
        textView.setTextSize(1, 14.0f);
        TextView textView2 = this.depositFundsView;
        int i3 = Theme.key_featuredStickers_addButton;
        textView2.setTextColor(getThemedColor(i3));
        this.depositFundsView.setBackground(Theme.createRadSelectorDrawable(Theme.multAlpha(getThemedColor(i3), 0.1f), Theme.multAlpha(getThemedColor(i3), 0.25f), 14, 14));
        this.depositFundsView.setPadding(AndroidUtilities.dp(10.0f), 0, AndroidUtilities.dp(10.0f), 0);
        this.depositFundsView.setGravity(17);
        this.depositFundsView.setTypeface(AndroidUtilities.bold());
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(LocaleController.getString(C2807R.string.WalletDepositFunds));
        spannableStringBuilder.append((CharSequence) " >");
        spannableStringBuilder.setSpan(new ColoredImageSpan(C2807R.drawable.settings_arrow).translate(0.0f, AndroidUtilities.dpf2(0.66f)), spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 33);
        this.depositFundsView.setText(spannableStringBuilder);
        this.centerBottomContainer.addView(this.depositFundsView, LayoutHelper.createFrame(-2, 28.0f, 49, 0.0f, 8.0f, 0.0f, 0.0f));
        ScaleStateListAnimator.apply(this.depositFundsView);
        this.depositFundsView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Wallet.WalletSendEnterAmount$$ExternalSyntheticLambda9
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$createView$8(view2);
            }
        });
        this.centerBottom.setVisibility(4);
        this.centerBottom.setAlpha(0.0f);
        this.centerBottom.setScaleX(0.8f);
        this.centerBottom.setScaleY(0.8f);
        this.depositFundsView.setVisibility(0);
        this.depositFundsView.setAlpha(1.0f);
        this.depositFundsView.setScaleX(1.0f);
        this.depositFundsView.setScaleY(1.0f);
        this.centerBottomVisible = false;
        this.commentView = new TextView(context);
        MessageDrawable messageDrawable = new MessageDrawable(0, true, false);
        messageDrawable.shadow = false;
        messageDrawable.paint.setStyle(Paint.Style.STROKE);
        messageDrawable.paint.setStrokeWidth(Math.max(1.0f, AndroidUtilities.dpf2(0.5f)));
        Paint paint = messageDrawable.paint;
        int i4 = Theme.key_wallet_out_commentBorder;
        paint.setColor(getThemedColor(i4));
        messageDrawable.overrideColor = Integer.valueOf(getThemedColor(i4));
        this.commentView.setPadding(AndroidUtilities.dp(15.0f), AndroidUtilities.dp(7.0f), AndroidUtilities.dp(19.0f), AndroidUtilities.dp(8.0f));
        this.commentView.setBackground(messageDrawable);
        this.commentView.setTextSize(1, 14.0f);
        this.commentView.setTextColor(getThemedColor(i2));
        this.commentView.setTypeface(AndroidUtilities.bold());
        this.commentView.setEllipsize(TextUtils.TruncateAt.END);
        this.commentView.setMaxLines(4);
        boolean zIsEmpty = TextUtils.isEmpty(this.comment);
        TextView textView3 = this.commentView;
        if (zIsEmpty) {
            textView3.setVisibility(8);
        } else {
            textView3.setText(this.comment);
            this.commentView.setVisibility(0);
        }
        this.centerBottom.addView(this.commentView, LayoutHelper.createLinear(-2, -2, 49, 32, 12, 32, 0));
        this.commentView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Wallet.WalletSendEnterAmount$$ExternalSyntheticLambda10
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$createView$9(view2);
            }
        });
        ScaleStateListAnimator.apply(this.commentView, 0.02f, 1.2f);
        updateCenterBottom();
        LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(context, this.resourceProvider);
        this.insufficientFundsView = linksTextView;
        linksTextView.setTextColor(getThemedColor(Theme.key_text_RedBold));
        this.insufficientFundsView.setLinkTextColor(getThemedColor(i3));
        this.insufficientFundsView.setTextSize(1, 14.0f);
        this.insufficientFundsView.setGravity(17);
        this.insufficientFundsView.setTypeface(AndroidUtilities.bold());
        this.insufficientFundsView.setPadding(AndroidUtilities.dp(10.0f), 0, AndroidUtilities.dp(10.0f), 0);
        showError(false, true);
        this.centerBottom.addView(this.insufficientFundsView, LayoutHelper.createLinear(-2, -2, 49, 0, 10, 0, 0));
        LinearLayout linearLayout2 = new LinearLayout(context);
        this.bottomContainer = linearLayout2;
        linearLayout2.setOrientation(1);
        this.bottomContainer.setPadding(AndroidUtilities.dp(16.0f), 0, AndroidUtilities.dp(16.0f), AndroidUtilities.dp(12.0f));
        this.bottomContainer.setBackground(new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{Theme.multAlpha(getThemedColor(i), 0.0f), getThemedColor(i), getThemedColor(i)}));
        TextView textView4 = new TextView(context);
        this.balanceView = textView4;
        textView4.setTextColor(getThemedColor(i2));
        this.balanceView.setTextSize(1, 14.0f);
        this.balanceView.setGravity(17);
        this.bottomContainer.addView(this.balanceView, LayoutHelper.createLinear(-1, -2, 55, 16, 0, 16, 0));
        this.feeArrow = new SpannableString(">");
        ColoredImageSpan coloredImageSpan3 = new ColoredImageSpan(C2807R.drawable.settings_arrow);
        coloredImageSpan3.translate(0.0f, AndroidUtilities.dp(1.0f));
        SpannableString spannableString = this.feeArrow;
        spannableString.setSpan(coloredImageSpan3, 0, spannableString.length(), 33);
        TextView textView5 = new TextView(context) { // from class: org.telegram.ui.Wallet.WalletSendEnterAmount.4
            @Override // android.widget.TextView, android.view.View
            public void onMeasure(int i5, int i6) {
                super.onMeasure(i5, i6);
                setMeasuredDimension(getMeasuredWidth(), Math.round(getMeasuredHeight() * WalletSendEnterAmount.this.feeVisibilityProgress));
            }
        };
        this.feeView = textView5;
        textView5.setTextColor(getThemedColor(i2));
        this.feeView.setTextSize(1, 14.0f);
        this.feeView.setGravity(17);
        this.feeView.setPadding(0, AndroidUtilities.dp(4.0f), 0, AndroidUtilities.dp(4.0f));
        this.feeView.setVisibility(8);
        this.bottomContainer.addView(this.feeView, LayoutHelper.createLinear(-1, -2, 55, 16, 0, 16, 0));
        SpannableString spannableString2 = new SpannableString(LocaleController.getString(C2807R.string.Loading));
        this.feeViewLoading = spannableString2;
        spannableString2.setSpan(new LoadingSpan(this.feeView, AndroidUtilities.dp(80.0f)), 0, this.feeViewLoading.length(), 33);
        ButtonWithCounterView round = new ButtonWithCounterView(context, getResourceProvider()).setRound();
        this.sendButton = round;
        round.setText(LocaleController.getString(C2807R.string.WalletSendGrams));
        this.sendButton.setEnabled(false);
        this.sendButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Wallet.WalletSendEnterAmount$$ExternalSyntheticLambda11
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$createView$10(view2);
            }
        });
        this.bottomContainer.addView(this.sendButton, LayoutHelper.createLinear(-1, 48, 87, 0, 14, 0, 0));
        frameLayout.addView(this.bottomContainer, LayoutHelper.createFrame(-1, -2, 87));
        updateAmount();
        updateIntroGeometry();
        return this.fragmentView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$3() {
        presentFragment(ChatActivity.of(this.recipientUser.id));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$4() {
        BulletinFactory.of(this).createSimpleBulletin(C2807R.raw.copy, LocaleController.getString(C2807R.string.WalletAddressCopiedBulletin)).show();
    }

    /* JADX INFO: renamed from: org.telegram.ui.Wallet.WalletSendEnterAmount$2 */
    public class C65012 extends LinearLayout {
        private final ViewTreeObserver.OnPreDrawListener fitContent;

        public C65012(Context context) {
            super(context);
            this.fitContent = new ViewTreeObserver.OnPreDrawListener() { // from class: org.telegram.ui.Wallet.WalletSendEnterAmount$2$$ExternalSyntheticLambda0
                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public final boolean onPreDraw() {
                    return this.f$0.lambda$$0();
                }
            };
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ boolean lambda$$0() {
            WalletSendEnterAmount.this.updateCenterGeometry();
            if (WalletSendEnterAmount.this.introAnimator == null && WalletSendEnterAmount.this.introProgress >= 1.0f) {
                return true;
            }
            WalletSendEnterAmount.this.updateIntroGeometry();
            return true;
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(0, 0));
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onAttachedToWindow() {
            super.onAttachedToWindow();
            getViewTreeObserver().addOnPreDrawListener(this.fitContent);
            getViewTreeObserver().addOnWindowFocusChangeListener(WalletSendEnterAmount.this.amountWindowFocusListener);
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onDetachedFromWindow() {
            getViewTreeObserver().removeOnPreDrawListener(this.fitContent);
            getViewTreeObserver().removeOnWindowFocusChangeListener(WalletSendEnterAmount.this.amountWindowFocusListener);
            super.onDetachedFromWindow();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ CharSequence lambda$createView$5(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
        StringBuilder sb = new StringBuilder();
        sb.append(spanned.subSequence(0, i3).toString());
        sb.append((Object) charSequence.subSequence(i, i2));
        sb.append((Object) spanned.subSequence(i4, spanned.length()));
        String string = sb.toString();
        int currencyAmountFractionDigits = 9;
        BigDecimal bigDecimalValueOf = BigDecimal.valueOf(LongCompanionObject.MAX_VALUE, 9);
        if (this.inputInCurrency) {
            BigDecimal currencyPerGram = getCurrencyPerGram();
            bigDecimalValueOf = bigDecimalValueOf.multiply(currencyPerGram);
            currencyAmountFractionDigits = getCurrencyAmountFractionDigits(currencyPerGram);
        }
        int iMax = Math.max(string.indexOf(46), string.indexOf(44));
        if (iMax >= 0 && (string.length() - iMax) - 1 > currencyAmountFractionDigits) {
            return spanned.subSequence(i3, i4);
        }
        if (parseAmount(string).compareTo(bigDecimalValueOf) > 0) {
            return spanned.subSequence(i3, i4);
        }
        if (i == i2) {
            return null;
        }
        boolean z = false;
        for (int i5 = 0; i5 < string.length(); i5++) {
            char cCharAt = string.charAt(i5);
            if (cCharAt == '.' || cCharAt == ',') {
                if (z) {
                    return spanned.subSequence(i3, i4);
                }
                z = true;
            }
        }
        if (i3 == 0 && (string.startsWith(".") || string.startsWith(","))) {
            return MVEL.VERSION_SUB + ((Object) charSequence.subSequence(i, i2));
        }
        if (string.startsWith("00")) {
            return spanned.subSequence(i3, i4);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$6(TextView textView, int i, KeyEvent keyEvent) {
        if (i != 6 || !this.sendButton.isEnabled()) {
            return false;
        }
        this.sendButton.performClick();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$7(View view) {
        switchInputMode();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$8(View view) {
        WalletActivity.openWalletQRAlert(getContext(), this.currentAccount, getResourceProvider());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$9(View view) {
        openAddCommentAlert();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$10(View view) {
        send();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startIntroAnimation() {
        if (this.introProgress >= 1.0f || this.introAnimator != null) {
            return;
        }
        SpringAnimation springAnimation = new SpringAnimation(new FloatValueHolder(this.introProgress));
        this.introAnimator = springAnimation;
        springAnimation.setSpring(new SpringForce(1.0f).setDampingRatio(0.55f).setStiffness(65.0f));
        this.introAnimator.setMinimumVisibleChange(0.001f);
        this.introAnimator.addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() { // from class: org.telegram.ui.Wallet.WalletSendEnterAmount$$ExternalSyntheticLambda16
            @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationUpdateListener
            public final void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f, float f2) {
                this.f$0.lambda$startIntroAnimation$11(dynamicAnimation, f, f2);
            }
        });
        this.introAnimator.addEndListener(new DynamicAnimation.OnAnimationEndListener() { // from class: org.telegram.ui.Wallet.WalletSendEnterAmount$$ExternalSyntheticLambda17
            @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationEndListener
            public final void onAnimationEnd(DynamicAnimation dynamicAnimation, boolean z, float f, float f2) {
                this.f$0.lambda$startIntroAnimation$12(dynamicAnimation, z, f, f2);
            }
        });
        this.introAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startIntroAnimation$11(DynamicAnimation dynamicAnimation, float f, float f2) {
        this.introProgress = f;
        updateIntroGeometry();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startIntroAnimation$12(DynamicAnimation dynamicAnimation, boolean z, float f, float f2) {
        this.introAnimator = null;
        this.introProgress = 1.0f;
        updateIntroGeometry();
    }

    private void finishIntroAnimation() {
        AmountInputView amountInputView = this.amountInput;
        if (amountInputView != null) {
            amountInputView.getDiamondView().whenReady(null);
        }
        SpringAnimation springAnimation = this.introAnimator;
        if (springAnimation != null) {
            springAnimation.cancel();
        }
        this.introProgress = 1.0f;
        if (this.amountInput != null) {
            updateIntroGeometry();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateIntroGeometry() {
        float f = this.introProgress;
        float f2 = 1.0f - f;
        float fMax = Math.max(this.introRevealProgress, Math.max(0.0f, Math.min(1.0f, f)));
        this.introRevealProgress = fMax;
        float f3 = 1.0f - fMax;
        AmountInputView amountInputView = this.amountInput;
        float f4 = this.introProgress;
        amountInputView.setIntroProgress(f4, fMax, this.introAnimator == null && f4 == 1.0f);
        this.amountInput.setTranslationY((((this.center.getHeight() / 2.0f) - this.amountInput.getTop()) - (this.amountInput.getHeight() / 2.0f)) * f2);
        this.usdView.setAlpha(this.introRevealProgress);
        this.usdView.setTranslationY(AndroidUtilities.dp(16.0f) * f3);
        this.centerBottomContainer.setAlpha(this.introRevealProgress);
        this.centerBottomContainer.setTranslationY(AndroidUtilities.dp(16.0f) * f3);
        this.bottomContainer.setAlpha(this.introRevealProgress);
        for (int i = 0; i < this.bottomContainer.getChildCount(); i++) {
            this.bottomContainer.getChildAt(i).setTranslationY(AndroidUtilities.dp(24.0f) * f3);
        }
    }

    private void updateCenterBottom() {
        if (this.centerBottom == null || this.depositFundsView == null) {
            return;
        }
        final boolean z = getGramNanoAmount() > 0 || this.commentView.getVisibility() == 0;
        if (z == this.centerBottomVisible) {
            return;
        }
        this.centerBottomVisible = z;
        this.centerBottom.setVisibility(0);
        this.depositFundsView.setVisibility(0);
        ViewPropertyAnimator duration = this.centerBottom.animate().alpha(z ? 1.0f : 0.0f).scaleX(z ? 1.0f : 0.8f).scaleY(z ? 1.0f : 0.8f).withEndAction(new Runnable() { // from class: org.telegram.ui.Wallet.WalletSendEnterAmount$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$updateCenterBottom$13(z);
            }
        }).setDuration(320L);
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        duration.setInterpolator(cubicBezierInterpolator).start();
        this.depositFundsView.animate().alpha(z ? 0.0f : 1.0f).scaleX(!z ? 1.0f : 0.8f).scaleY(z ? 0.8f : 1.0f).withEndAction(new Runnable() { // from class: org.telegram.ui.Wallet.WalletSendEnterAmount$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$updateCenterBottom$14(z);
            }
        }).setDuration(320L).setInterpolator(cubicBezierInterpolator).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateCenterBottom$13(boolean z) {
        this.centerBottom.setVisibility(z ? 0 : 4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateCenterBottom$14(boolean z) {
        this.depositFundsView.setVisibility(!z ? 0 : 4);
    }

    private void updateAddressInfo() {
        WalletRecipientView walletRecipientView = this.addressInfoLayout;
        if (walletRecipientView != null) {
            walletRecipientView.setRecipient(this.recipientUser, getAddress());
        }
    }

    private void showError(boolean z, boolean z2) {
        if (z) {
            if (z2) {
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                spannableStringBuilder.append((CharSequence) LocaleController.getString(C2807R.string.WalletInsufficientFunds));
                spannableStringBuilder.append((CharSequence) " ");
                int length = spannableStringBuilder.length();
                spannableStringBuilder.append((CharSequence) LocaleController.getString(C2807R.string.WalletDepositFunds));
                spannableStringBuilder.append((CharSequence) " >");
                spannableStringBuilder.setSpan(new ColoredImageSpan(C2807R.drawable.settings_arrow).setOverrideColor(getThemedColor(Theme.key_featuredStickers_addButton)).translate(0.0f, AndroidUtilities.dpf2(0.66f)), spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 33);
                spannableStringBuilder.setSpan(new ClickableSpan() { // from class: org.telegram.ui.Wallet.WalletSendEnterAmount.5
                    @Override // android.text.style.ClickableSpan
                    public void onClick(View view) {
                        WalletActivity.openWalletQRAlert(WalletSendEnterAmount.this.getContext(), ((BaseFragment) WalletSendEnterAmount.this).currentAccount, WalletSendEnterAmount.this.getResourceProvider());
                    }

                    @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
                    public void updateDrawState(TextPaint textPaint) {
                        textPaint.setColor(WalletSendEnterAmount.this.getThemedColor(Theme.key_featuredStickers_addButton));
                        textPaint.setUnderlineText(false);
                    }
                }, length, spannableStringBuilder.length(), 33);
                this.insufficientFundsView.setText(spannableStringBuilder);
            } else {
                this.insufficientFundsView.setText(LocaleController.formatSpannable(C2807R.string.WalletMinimumAmount, GramWallet.formatGramCapital(MessagesController.getInstance(this.currentAccount).config.walletTransferMinNanos.get())));
            }
        }
        this.insufficientFundsView.animate().alpha(z ? 1.0f : 0.0f).scaleX(z ? 1.0f : 0.6f).scaleY(z ? 1.0f : 0.6f).setDuration(320L).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).start();
    }

    private void loadFee() {
        if (WalletEngine2.isValidRecipientAddress(getAddress())) {
            this.fee = -1L;
            updateBalance();
            GramWallet gramWallet = GramWallet.getInstance(this.currentAccount);
            if (!gramWallet.isGaslessAvailable() || GramWallet.addressEquals(gramWallet.getAddress(), getAddress()) || this.recipientUser == null || !TextUtils.isEmpty(this.recipientDomain)) {
                gramWallet.emulateSend(getAddress(), 0L, this.comment, this.comment_encrypted ? getPublicKey() : null, new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.WalletSendEnterAmount$$ExternalSyntheticLambda15
                    @Override // org.telegram.messenger.Utilities.Callback2
                    public final void run(Object obj, Object obj2) {
                        this.f$0.lambda$loadFee$15((TL_wallet.walletTransaction) obj, (String) obj2);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadFee$15(TL_wallet.walletTransaction wallettransaction, String str) {
        if (wallettransaction != null) {
            this.fee = wallettransaction.fee;
            updateBalance();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openAddCommentAlert() {
        AlertDialog.Builder builder;
        Context context = getContext();
        if (context == null) {
            return;
        }
        boolean z = this.keyboardInset - this.bottomInset > AndroidUtilities.dp(20.0f);
        if (z) {
            builder = new AlertDialogDecor.Builder(context, getResourceProvider());
        } else {
            builder = new AlertDialog.Builder(context, getResourceProvider());
        }
        builder.setTitle(LocaleController.getString(C2807R.string.WalletAddComment));
        final EditTextBoldCursor editTextBoldCursor = new EditTextBoldCursor(context) { // from class: org.telegram.ui.Wallet.WalletSendEnterAmount.6
            private final AnimatedTextView.AnimatedTextDrawable limit;
            private int remaining = 960;
            private final AnimatedColor limitColor = new AnimatedColor(this);

            {
                AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = new AnimatedTextView.AnimatedTextDrawable(false, true, true);
                this.limit = animatedTextDrawable;
                animatedTextDrawable.setAnimationProperties(0.2f, 0L, 160L, CubicBezierInterpolator.EASE_OUT_QUINT);
                animatedTextDrawable.setTextSize(AndroidUtilities.dp(15.33f));
                animatedTextDrawable.setGravity(5);
                animatedTextDrawable.setCallback(this);
            }

            @Override // android.widget.TextView, android.view.View
            public boolean verifyDrawable(Drawable drawable) {
                return drawable == this.limit || super.verifyDrawable(drawable);
            }

            @Override // org.telegram.ui.Components.EditTextBoldCursor, org.telegram.ui.Components.EditTextEffects, com.exteragram.messenger.components.ReceiveContentEditText, android.widget.TextView
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                super.onTextChanged(charSequence, i, i2, i3);
                if (this.limit == null) {
                    return;
                }
                this.remaining = 960 - charSequence.toString().getBytes(StandardCharsets.UTF_8).length;
                this.limit.cancelAnimation();
                AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = this.limit;
                int i4 = this.remaining;
                animatedTextDrawable.setText(i4 <= 100 ? Integer.toString(i4) : _UrlKt.FRAGMENT_ENCODE_SET, isAttachedToWindow());
                invalidate();
            }

            @Override // android.view.View
            public void dispatchDraw(Canvas canvas) {
                super.dispatchDraw(canvas);
                this.limit.setTextColor(this.limitColor.set(Theme.getColor(this.remaining <= 0 ? Theme.key_text_RedRegular : Theme.key_dialogSearchHint, WalletSendEnterAmount.this.getResourceProvider())));
                int scrollX = ((getScrollX() + getWidth()) - getPaddingRight()) + AndroidUtilities.dp(48.0f);
                int scrollY = getScrollY() + getHeight();
                this.limit.setBounds(scrollX - AndroidUtilities.dp(48.0f), scrollY - Math.min(AndroidUtilities.dp(44.0f), getHeight()), scrollX, scrollY);
                this.limit.draw(canvas);
            }
        };
        editTextBoldCursor.setTextSize(1, 18.0f);
        editTextBoldCursor.setTextColor(getThemedColor(Theme.key_dialogTextBlack));
        editTextBoldCursor.setHintTextColor(getThemedColor(Theme.key_dialogTextHint));
        editTextBoldCursor.setHint(LocaleController.getString(C2807R.string.WalletCommentOptionalMessage));
        editTextBoldCursor.setText(this.comment);
        editTextBoldCursor.setSelection(editTextBoldCursor.length());
        editTextBoldCursor.setInputType(147457);
        editTextBoldCursor.setMaxLines(5);
        editTextBoldCursor.setImeOptions(6);
        editTextBoldCursor.setLineColors(getThemedColor(Theme.key_windowBackgroundWhiteInputField), getThemedColor(Theme.key_windowBackgroundWhiteInputFieldActivated), getThemedColor(Theme.key_text_RedRegular));
        editTextBoldCursor.setBackground(null);
        editTextBoldCursor.setPadding(0, AndroidUtilities.dp(10.0f), AndroidUtilities.dp(48.0f), AndroidUtilities.dp(10.0f));
        final CheckBoxCell checkBoxCell = new CheckBoxCell(context, 1, getResourceProvider());
        checkBoxCell.setBackground(Theme.createSelectorDrawable(Theme.getColor(Theme.key_listSelector, this.resourceProvider), 7, AndroidUtilities.dp(12.0f)));
        checkBoxCell.setText(LocaleController.getString(C2807R.string.WalletMakeCommentPublic), _UrlKt.FRAGMENT_ENCODE_SET, !this.comment_encrypted || getPublicKey() == null, false);
        checkBoxCell.setMultiline(true);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) checkBoxCell.getCheckBoxView().getLayoutParams();
        layoutParams.topMargin = 0;
        layoutParams.gravity = (LocaleController.isRTL ? 5 : 3) | 16;
        checkBoxCell.getCheckBoxView().setLayoutParams(layoutParams);
        checkBoxCell.setPadding(LocaleController.isRTL ? AndroidUtilities.dp(4.0f) : 0, AndroidUtilities.dp(12.0f), LocaleController.isRTL ? 0 : AndroidUtilities.dp(4.0f), AndroidUtilities.dp(12.0f));
        checkBoxCell.setEnabled(getPublicKey() != null);
        checkBoxCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Wallet.WalletSendEnterAmount$$ExternalSyntheticLambda19
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                checkBoxCell.setChecked(!r0.isChecked(), true);
            }
        });
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        linearLayout.addView(editTextBoldCursor, LayoutHelper.createLinear(-1, -2, 24.0f, 4.0f, 24.0f, 4.0f));
        linearLayout.addView(checkBoxCell, LayoutHelper.createLinear(-1, -2, 83, 8, 0, 8, 0));
        builder.setCustomViewOffset(6);
        builder.setView(linearLayout);
        builder.setWidth(AndroidUtilities.dp(292.0f));
        builder.setNegativeButton(LocaleController.getString(C2807R.string.Cancel), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Wallet.WalletSendEnterAmount$$ExternalSyntheticLambda20
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                alertDialog.dismiss();
            }
        });
        builder.setPositiveButton(LocaleController.getString(C2807R.string.Add), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Wallet.WalletSendEnterAmount$$ExternalSyntheticLambda21
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                this.f$0.lambda$openAddCommentAlert$18(editTextBoldCursor, checkBoxCell, alertDialog, i);
            }
        });
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.setOnShowListener(new DialogInterface.OnShowListener() { // from class: org.telegram.ui.Wallet.WalletSendEnterAmount$$ExternalSyntheticLambda22
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                WalletSendEnterAmount.m23502$r8$lambda$BMzxdN2rhbw7ycSBw81fshuE5A(editTextBoldCursor, dialogInterface);
            }
        });
        alertDialogCreate.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Wallet.WalletSendEnterAmount$$ExternalSyntheticLambda23
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                this.f$0.lambda$openAddCommentAlert$20(dialogInterface);
            }
        });
        if (z) {
            alertDialogCreate.showDelayed(250L);
        } else {
            alertDialogCreate.show();
        }
        alertDialogCreate.setDismissDialogByButtons(false);
        View button = alertDialogCreate.getButton(-1);
        if (!(button instanceof TextView) || TextUtils.isEmpty(this.comment)) {
            return;
        }
        editTextBoldCursor.addTextChangedListener(new TextWatcher(editTextBoldCursor, (TextView) button) { // from class: org.telegram.ui.Wallet.WalletSendEnterAmount.7
            final /* synthetic */ EditTextBoldCursor val$editText;
            final /* synthetic */ TextView val$positiveButtonText;
            private boolean wasEmpty;

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            {
                this.val$editText = editTextBoldCursor;
                this.val$positiveButtonText = textView;
                this.wasEmpty = TextUtils.isEmpty(editTextBoldCursor.getText());
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                boolean zIsEmpty = TextUtils.isEmpty(editable);
                if (zIsEmpty != this.wasEmpty) {
                    TextView textView = this.val$positiveButtonText;
                    this.wasEmpty = zIsEmpty;
                    textView.setText(LocaleController.getString(zIsEmpty ? C2807R.string.Remove : C2807R.string.Add));
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openAddCommentAlert$18(EditTextBoldCursor editTextBoldCursor, CheckBoxCell checkBoxCell, AlertDialog alertDialog, int i) {
        if (editTextBoldCursor.getText().toString().getBytes(StandardCharsets.UTF_8).length > 960) {
            int i2 = -this.shakeDp;
            this.shakeDp = i2;
            AndroidUtilities.shakeViewSpring(editTextBoldCursor, i2);
            return;
        }
        String strTrim = editTextBoldCursor.getText().toString().trim();
        if (TextUtils.isEmpty(strTrim)) {
            strTrim = null;
        }
        this.comment = strTrim;
        this.comment_encrypted = !checkBoxCell.isChecked();
        boolean zIsEmpty = TextUtils.isEmpty(this.comment);
        TextView textView = this.commentView;
        if (zIsEmpty) {
            textView.setVisibility(8);
        } else {
            textView.setText(this.comment);
            this.commentView.setVisibility(0);
        }
        updateCenterBottom();
        alertDialog.dismiss();
        loadFee();
    }

    /* JADX INFO: renamed from: $r8$lambda$BMzxdN2r-hbw7ycSBw81fshuE5A, reason: not valid java name */
    public static /* synthetic */ void m23502$r8$lambda$BMzxdN2rhbw7ycSBw81fshuE5A(EditTextBoldCursor editTextBoldCursor, DialogInterface dialogInterface) {
        editTextBoldCursor.requestFocus();
        AndroidUtilities.showKeyboard(editTextBoldCursor);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openAddCommentAlert$20(DialogInterface dialogInterface) {
        EditTextBoldCursor editTextBoldCursor = this.amountEdit;
        if (editTextBoldCursor != null) {
            editTextBoldCursor.requestFocus();
            AndroidUtilities.showKeyboard(this.amountEdit);
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        getNotificationCenter().addObserver(this, NotificationCenter.walletUpdate);
        return super.onFragmentCreate();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        this.pendingAmountKeyboard = false;
        finishIntroAnimation();
        WalletChatSendTransition walletChatSendTransition = this.chatSendTransition;
        if (walletChatSendTransition != null) {
            walletChatSendTransition.cancel();
            this.chatSendTransition = null;
        }
        WalletSendTransition walletSendTransition = this.sendTransition;
        if (walletSendTransition != null) {
            walletSendTransition.cancel();
            this.sendTransition = null;
        }
        ValueAnimator valueAnimator = this.feeVisibilityAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.feeVisibilityAnimator = null;
        }
        EditTextBoldCursor editTextBoldCursor = this.amountEdit;
        if (editTextBoldCursor != null) {
            editTextBoldCursor.removeCallbacks(this.showAmountKeyboard);
        }
        getNotificationCenter().removeObserver(this, NotificationCenter.walletUpdate);
        super.onFragmentDestroy();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onTransitionAnimationStart(boolean z, boolean z2) {
        EditTextBoldCursor editTextBoldCursor;
        AmountInputView amountInputView;
        super.onTransitionAnimationStart(z, z2);
        if (z && !z2 && (amountInputView = this.amountInput) != null && this.introProgress < 1.0f) {
            amountInputView.getDiamondView().whenReady(new Runnable() { // from class: org.telegram.ui.Wallet.WalletSendEnterAmount$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.startIntroAnimation();
                }
            });
        }
        if (!z || z2 || (editTextBoldCursor = this.amountEdit) == null) {
            return;
        }
        editTextBoldCursor.removeCallbacks(this.showAmountKeyboard);
        if (this.initAmount > 0) {
            EditTextBoldCursor editTextBoldCursor2 = this.amountEdit;
            editTextBoldCursor2.setSelection(editTextBoldCursor2.length());
        } else {
            this.pendingAmountKeyboard = true;
            this.amountEdit.requestFocus();
            this.amountEdit.post(this.showAmountKeyboard);
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onTransitionAnimationEnd(boolean z, boolean z2) {
        EditTextBoldCursor editTextBoldCursor;
        super.onTransitionAnimationEnd(z, z2);
        if (!z || z2 || !this.pendingAmountKeyboard || (editTextBoldCursor = this.amountEdit) == null) {
            return;
        }
        editTextBoldCursor.removeCallbacks(this.showAmountKeyboard);
        this.amountEdit.post(this.showAmountKeyboard);
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        loadFee();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onPause() {
        finishIntroAnimation();
        hideAmountKeyboard();
        super.onPause();
    }

    private void hideAmountKeyboard() {
        this.pendingAmountKeyboard = false;
        EditTextBoldCursor editTextBoldCursor = this.amountEdit;
        if (editTextBoldCursor == null) {
            return;
        }
        editTextBoldCursor.removeCallbacks(this.showAmountKeyboard);
        this.fragmentView.requestFocus();
        AndroidUtilities.hideKeyboard(this.amountEdit);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.walletUpdate) {
            updateBalance();
            updateAmount();
        }
    }

    private CharSequence createTitle() {
        return LocaleController.getString(C2807R.string.WalletSendMoneyTo);
    }

    private String getGramsText() {
        long gramNanoAmount = getGramNanoAmount();
        if (this.gramsTextFormat == null) {
            this.gramsTextFormat = new DecimalFormat("#,##0.#########", new DecimalFormatSymbols(Locale.US));
        }
        if (gramNanoAmount > 0) {
            return this.gramsTextFormat.format(BigDecimal.valueOf(gramNanoAmount, 9));
        }
        return _UrlKt.FRAGMENT_ENCODE_SET;
    }

    private String getGramsInputText(long j) {
        return MathFormat$$ExternalSyntheticBackportWithForwarding0.m260m(BigDecimal.valueOf(j).movePointLeft(9).setScale(2, RoundingMode.HALF_UP)).toPlainString();
    }

    private String getGramsPreviewText(long j) {
        if (this.gramsPreviewFormat == null) {
            DecimalFormat decimalFormat = new DecimalFormat("#,##0.##", new DecimalFormatSymbols(Locale.US));
            this.gramsPreviewFormat = decimalFormat;
            decimalFormat.setRoundingMode(RoundingMode.HALF_UP);
        }
        return this.gramsPreviewFormat.format(BigDecimal.valueOf(j).movePointLeft(9));
    }

    private CharSequence getGramsPreview(long j) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append(this.gramAmountIcon).append((CharSequence) " ");
        int length = spannableStringBuilder.length();
        spannableStringBuilder.append((CharSequence) getGramsPreviewText(j));
        setPreviewFractionSpan(spannableStringBuilder, length, spannableStringBuilder.length(), '.');
        spannableStringBuilder.append((CharSequence) " ");
        int length2 = spannableStringBuilder.length();
        spannableStringBuilder.append((CharSequence) LocaleController.getString(C2807R.string.GramCurrency));
        spannableStringBuilder.setSpan(new RelativeSizeSpan(0.85714287f), length2, spannableStringBuilder.length(), 33);
        return spannableStringBuilder.append((CharSequence) " ").append(this.currencyExchangeIcon);
    }

    private CharSequence getCurrencyPreviewText(GramWallet gramWallet, long j) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("≈ ");
        int length = spannableStringBuilder.length();
        spannableStringBuilder.append(gramWallet.formatCurrency(j));
        setPreviewFractionSpan(spannableStringBuilder, length, spannableStringBuilder.length(), getCurrencyDecimalSeparator());
        return spannableStringBuilder.append((CharSequence) " ").append(this.currencyExchangeIcon);
    }

    private char getCurrencyDecimalSeparator() {
        TL_wallet.currencyRate selectedCurrencyRate = getSelectedCurrencyRate();
        if (selectedCurrencyRate == null || TextUtils.isEmpty(selectedCurrencyRate.decimalSeparator)) {
            return '.';
        }
        return selectedCurrencyRate.decimalSeparator.charAt(0);
    }

    private static void setPreviewFractionSpan(SpannableStringBuilder spannableStringBuilder, int i, int i2, char c2) {
        int i3 = i + 1;
        while (true) {
            int i4 = i3 + 1;
            if (i4 >= i2) {
                return;
            }
            if (spannableStringBuilder.charAt(i3) == c2 && Character.isDigit(spannableStringBuilder.charAt(i3 - 1)) && Character.isDigit(spannableStringBuilder.charAt(i4))) {
                int i5 = i4;
                while (i5 < i2 && Character.isDigit(spannableStringBuilder.charAt(i5))) {
                    i5++;
                }
                spannableStringBuilder.setSpan(new RelativeSizeSpan(0.85714287f), i4, i5, 33);
                return;
            }
            i3 = i4;
        }
    }

    private long getGramNanoAmount() {
        EditTextBoldCursor editTextBoldCursor = this.amountEdit;
        if (editTextBoldCursor == null) {
            return 0L;
        }
        BigDecimal amount = parseAmount(editTextBoldCursor.getText().toString());
        if (this.inputInCurrency) {
            BigDecimal currencyPerGram = getCurrencyPerGram();
            if (currencyPerGram.signum() <= 0) {
                return 0L;
            }
            amount = amount.divide(currencyPerGram, 9, RoundingMode.DOWN).setScale(2, RoundingMode.HALF_UP);
        }
        BigInteger bigInteger = amount.movePointRight(9).toBigInteger();
        return bigInteger.compareTo(BigInteger.valueOf(LongCompanionObject.MAX_VALUE)) > 0 ? LongCompanionObject.MAX_VALUE : bigInteger.longValue();
    }

    private void switchInputMode() {
        String gramsInputText;
        BigDecimal currencyPerGram = getCurrencyPerGram();
        if (this.inputInCurrency || currencyPerGram.signum() > 0) {
            long gramNanoAmount = getGramNanoAmount();
            this.inputInCurrency = !this.inputInCurrency;
            updateInputModeViews();
            if (gramNanoAmount <= 0) {
                gramsInputText = _UrlKt.FRAGMENT_ENCODE_SET;
            } else if (this.inputInCurrency) {
                gramsInputText = formatCurrencyInput(gramNanoAmount, currencyPerGram);
            } else {
                gramsInputText = getGramsInputText(gramNanoAmount);
            }
            this.amountInput.setAmountText(gramsInputText);
            this.amountEdit.setSelection(gramsInputText.length());
        }
    }

    private void updateInputModeViews() {
        this.amountInput.setCurrency(GramWallet.getInstance(this.currentAccount), this.inputInCurrency);
    }

    private int getCurrencyAmountFractionDigits(BigDecimal bigDecimal) {
        if (bigDecimal.signum() <= 0) {
            return 9;
        }
        BigDecimal bigDecimalMovePointLeft = bigDecimal.movePointLeft(9);
        int i = 0;
        for (BigDecimal bigDecimalMovePointLeft2 = BigDecimal.ONE.movePointLeft(1); bigDecimalMovePointLeft2.compareTo(bigDecimalMovePointLeft) >= 0; bigDecimalMovePointLeft2 = bigDecimalMovePointLeft2.movePointLeft(1)) {
            i++;
        }
        return i;
    }

    private String formatCurrencyInput(long j, BigDecimal bigDecimal) {
        BigDecimal bigDecimalMovePointLeft = BigDecimal.valueOf(j).multiply(bigDecimal).movePointLeft(9);
        int iMax = Math.max(0, Math.min(getCurrencyFractionDigits(), 20));
        RoundingMode roundingMode = RoundingMode.HALF_UP;
        BigDecimal scale = bigDecimalMovePointLeft.setScale(iMax, roundingMode);
        if (scale.signum() == 0 && bigDecimalMovePointLeft.signum() != 0) {
            scale = bigDecimalMovePointLeft.setScale(Math.min(20, Math.max(iMax, bigDecimalMovePointLeft.scale())), roundingMode);
        }
        int currencyAmountFractionDigits = getCurrencyAmountFractionDigits(bigDecimal);
        if (scale.scale() > currencyAmountFractionDigits) {
            scale = scale.setScale(currencyAmountFractionDigits, RoundingMode.DOWN);
        }
        BigDecimal bigDecimalMultiply = BigDecimal.valueOf(LongCompanionObject.MAX_VALUE, 9).multiply(bigDecimal);
        if (scale.compareTo(bigDecimalMultiply) > 0) {
            scale = bigDecimalMultiply.setScale(scale.scale(), RoundingMode.DOWN);
        }
        return MathFormat$$ExternalSyntheticBackportWithForwarding0.m260m(scale).toPlainString();
    }

    private BigDecimal getCurrencyPerGram() {
        GramWallet gramWallet = GramWallet.getInstance(this.currentAccount);
        gramWallet.currencies.getCurrencies();
        double currencyRate = gramWallet.currencies.getCurrencyRate();
        double d = MessagesController.getInstance(this.currentAccount).config.tonUsdRate.get();
        if (currencyRate <= 0.0d || d <= 0.0d || Double.isNaN(currencyRate) || Double.isInfinite(currencyRate) || Double.isNaN(d) || Double.isInfinite(d)) {
            return BigDecimal.ZERO;
        }
        return BigDecimal.valueOf(currencyRate).multiply(BigDecimal.valueOf(d));
    }

    private int getCurrencyFractionDigits() {
        TL_wallet.currencyRate selectedCurrencyRate = getSelectedCurrencyRate();
        if (selectedCurrencyRate != null) {
            return selectedCurrencyRate.exp;
        }
        return TextUtils.equals(GramWallet.getInstance(this.currentAccount).currencies.getCurrency(), "USD") ? 2 : 0;
    }

    private TL_wallet.currencyRate getSelectedCurrencyRate() {
        GramWallet gramWallet = GramWallet.getInstance(this.currentAccount);
        TL_wallet.currencyRates currencies = gramWallet.currencies.getCurrencies();
        if (currencies == null) {
            return null;
        }
        ArrayList<TL_wallet.currencyRate> arrayList = currencies.rates;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            TL_wallet.currencyRate currencyrate = arrayList.get(i);
            i++;
            TL_wallet.currencyRate currencyrate2 = currencyrate;
            if (currencyrate2 != null && TextUtils.equals(currencyrate2.currency, gramWallet.currencies.getCurrency())) {
                return currencyrate2;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateAmount() {
        String gramsInputText;
        updateCenterBottom();
        if (this.amountEdit == null || this.sendButton == null) {
            return;
        }
        GramWallet gramWallet = GramWallet.getInstance(this.currentAccount);
        long balance = gramWallet.getBalance();
        long gramNanoAmount = getGramNanoAmount();
        long j = MessagesController.getInstance(this.currentAccount).config.walletTransferMinNanos.get();
        if (gramNanoAmount > 0 && gramNanoAmount < j) {
            if (this.inputInCurrency) {
                gramsInputText = formatCurrencyInput(j, getCurrencyPerGram());
            } else {
                gramsInputText = getGramsInputText(j);
            }
            this.amountInput.setAmountText(gramsInputText);
            this.amountEdit.setSelection(gramsInputText.length());
            EditTextBoldCursor editTextBoldCursor = this.amountEdit;
            int i = -this.shakeDp;
            this.shakeDp = i;
            AndroidUtilities.shakeViewSpring(editTextBoldCursor, i);
            return;
        }
        boolean z = WalletEngine2.isValidRecipientAddress(getAddress()) && !this.loadingRecipient && gramNanoAmount > 0 && gramNanoAmount <= balance;
        showError(!TextUtils.isEmpty(this.amountEdit.getText()) && gramNanoAmount > balance, true);
        String gramsText = getGramsText();
        this.sendButton.setLoading(this.loadingRecipient || this.sendingToUser);
        this.sendButton.setText(TextUtils.isEmpty(gramsText) ? LocaleController.getString(C2807R.string.WalletSendGrams) : LocaleController.formatSpannable(C2807R.string.WalletSendAmount, GramWallet.formatGramsWithUnit(gramsText)), true);
        this.sendButton.setEnabled(z);
        updateBalance();
        updateInputModeViews();
        boolean z2 = this.inputInCurrency;
        AnimatedTextView animatedTextView = this.usdView;
        if (z2) {
            animatedTextView.setText(getGramsPreview(gramNanoAmount));
        } else {
            animatedTextView.setText(getCurrencyPreviewText(gramWallet, gramNanoAmount));
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public AnimatorSet onCustomTransitionAnimation(boolean z, Runnable runnable) {
        View view;
        TL_wallet.walletTransaction wallettransaction;
        AmountInputView amountInputView;
        View view2;
        if (!z && this.chatSendDestination != null && (wallettransaction = this.queuedTransaction) != null && wallettransaction.localMessageId != 0 && (amountInputView = this.amountInput) != null && amountInputView.getDiamondView().canAnimateFlight() && (view2 = this.fragmentView) != null && (view2.getParent() instanceof View) && getParentLayout() != null) {
            WalletChatSendTransition walletChatSendTransition = new WalletChatSendTransition(getParentLayout().getView(), (View) this.fragmentView.getParent(), this.amountInput.getDiamondView(), this.chatSendDestination, this.queuedTransaction, runnable);
            this.chatSendTransition = walletChatSendTransition;
            return walletChatSendTransition.animator();
        }
        if (!z && this.sendDestination != null && this.queuedTransaction != null && this.amountInput != null && (view = this.fragmentView) != null && (view.getParent() instanceof View) && getParentLayout() != null) {
            WalletSendTransition walletSendTransition = new WalletSendTransition(getParentLayout().getView(), (View) this.fragmentView.getParent(), this.amountInput.getDiamondView(), this.sendDestination, this.queuedTransaction, runnable);
            this.sendTransition = walletSendTransition;
            return walletSendTransition.animator();
        }
        return super.onCustomTransitionAnimation(z, runnable);
    }

    private void send() {
        String gramsInputText;
        if (!this.sendButton.isEnabled() || this.sendButton.isLoading()) {
            return;
        }
        final GramWallet gramWallet = GramWallet.getInstance(this.currentAccount);
        long gramNanoAmount = getGramNanoAmount();
        long balance = gramWallet.getBalance();
        if (this.loadingRecipient || !WalletEngine2.isValidRecipientAddress(getAddress()) || gramNanoAmount <= 0) {
            return;
        }
        long j = MessagesController.getInstance(this.currentAccount).config.walletTransferMinNanos.get();
        if (gramNanoAmount < j) {
            if (this.inputInCurrency) {
                gramsInputText = formatCurrencyInput(j, getCurrencyPerGram());
            } else {
                gramsInputText = getGramsInputText(j);
            }
            this.amountInput.setAmountText(gramsInputText);
            this.amountEdit.setSelection(gramsInputText.length());
            EditTextBoldCursor editTextBoldCursor = this.amountEdit;
            int i = -this.shakeDp;
            this.shakeDp = i;
            AndroidUtilities.shakeViewSpring(editTextBoldCursor, i);
            return;
        }
        if (gramNanoAmount > balance) {
            BotWebViewVibrationEffect.APP_ERROR.vibrate();
            LinkSpanDrawable.LinksTextView linksTextView = this.insufficientFundsView;
            int i2 = -this.shakeDp;
            this.shakeDp = i2;
            AndroidUtilities.shakeViewSpring(linksTextView, i2);
            return;
        }
        long j2 = this.fee;
        if (j2 >= 0 && gramNanoAmount + j2 > balance) {
            gramNanoAmount -= j2;
        }
        final long j3 = gramNanoAmount;
        hideAmountKeyboard();
        this.sendButton.setLoading(true);
        this.queuedTransaction = null;
        if (this.recipientUser != null && TextUtils.isEmpty(this.recipientDomain)) {
            this.sendingToUser = true;
            gramWallet.send(this.recipientUser, this.recipientAddress, j3, this.comment, this.comment_encrypted ? getPublicKey() : null, (String) null, new Utilities.Callback() { // from class: org.telegram.ui.Wallet.WalletSendEnterAmount$$ExternalSyntheticLambda24
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$send$21((String) obj);
                }
            }, new Utilities.Callback() { // from class: org.telegram.ui.Wallet.WalletSendEnterAmount$$ExternalSyntheticLambda25
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$send$22((TL_wallet.walletTransaction) obj);
                }
            });
            return;
        }
        final String str = this.comment;
        byte[] publicKey = this.comment_encrypted ? getPublicKey() : null;
        boolean z = publicKey != null;
        if (gramWallet.isGaslessAvailable()) {
            TL_wallet.walletTransaction wallettransaction = new TL_wallet.walletTransaction();
            wallettransaction.peer = GramWallet.createRecipientPeer(this.recipientUser, this.recipientAddress, this.recipientDomain);
            wallettransaction.comment = str;
            wallettransaction.comment_encrypted = z;
            wallettransaction.date = getConnectionsManager().getCurrentTime();
            wallettransaction.fee = Math.max(0L, this.fee);
            wallettransaction.gasless = true;
            wallettransaction.amount = j3;
            AndroidUtilities.hideKeyboard(this.amountEdit);
            WalletActivity.openTransactionSheet(getContext(), getCurrentAccount(), wallettransaction, new Utilities.Callback3() { // from class: org.telegram.ui.Wallet.WalletSendEnterAmount$$ExternalSyntheticLambda26
                @Override // org.telegram.messenger.Utilities.Callback3
                public final void run(Object obj, Object obj2, Object obj3) {
                    this.f$0.lambda$send$25(gramWallet, j3, (String) obj, (Boolean) obj2, (Utilities.Callback) obj3);
                }
            }, new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.WalletSendEnterAmount$$ExternalSyntheticLambda27
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    this.f$0.lambda$send$26((String) obj, (Boolean) obj2);
                }
            }, getPublicKey(), null, getResourceProvider());
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.WalletSendEnterAmount$$ExternalSyntheticLambda28
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$send$27();
                }
            }, 1000L);
            return;
        }
        final boolean z2 = z;
        gramWallet.emulateSend(this.recipientAddress, j3, str, publicKey, new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.WalletSendEnterAmount$$ExternalSyntheticLambda29
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$send$33(str, z2, gramWallet, j3, (TL_wallet.walletTransaction) obj, (String) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$send$21(String str) {
        if ("PASSCODE_FAILED".equalsIgnoreCase(str)) {
            this.sendingToUser = false;
            this.sendButton.setLoading(false);
        } else if (str != null) {
            this.sendingToUser = false;
            this.sendButton.setLoading(false);
            BulletinFactory.of(this).showForError(str);
        } else if (this.openChat) {
            returnToChat();
        } else {
            returnToWallet();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$send$22(TL_wallet.walletTransaction wallettransaction) {
        this.queuedTransaction = wallettransaction;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$send$25(GramWallet gramWallet, long j, String str, Boolean bool, final Utilities.Callback callback) {
        gramWallet.send(this.recipientUser, this.recipientAddress, j, str, bool.booleanValue() ? getPublicKey() : null, this.recipientDomain, new Utilities.Callback() { // from class: org.telegram.ui.Wallet.WalletSendEnterAmount$$ExternalSyntheticLambda33
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$send$23(callback, (String) obj);
            }
        }, new Utilities.Callback() { // from class: org.telegram.ui.Wallet.WalletSendEnterAmount$$ExternalSyntheticLambda34
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$send$24((TL_wallet.walletTransaction) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$send$23(Utilities.Callback callback, String str) {
        if ("PASSCODE_FAILED".equalsIgnoreCase(str)) {
            return;
        }
        callback.run(str);
        if (str == null) {
            this.fragmentView.postDelayed(new WalletSendEnterAmount$$ExternalSyntheticLambda37(this), 220L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$send$24(TL_wallet.walletTransaction wallettransaction) {
        this.queuedTransaction = wallettransaction;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$send$26(String str, Boolean bool) {
        this.comment = str;
        this.comment_encrypted = bool.booleanValue();
        this.commentView.setText(this.comment);
        this.commentView.setVisibility(TextUtils.isEmpty(this.comment) ? 8 : 0);
        updateCenterBottom();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$send$27() {
        this.sendButton.setLoading(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$send$33(String str, boolean z, final GramWallet gramWallet, final long j, TL_wallet.walletTransaction wallettransaction, String str2) {
        if (str2 != null) {
            this.sendButton.setLoading(false);
            BulletinFactory.of(this).showForError(str2);
            return;
        }
        wallettransaction.peer = GramWallet.createRecipientPeer(this.recipientUser, this.recipientAddress, this.recipientDomain);
        wallettransaction.comment = str;
        wallettransaction.comment_encrypted = z;
        wallettransaction.date = getConnectionsManager().getCurrentTime();
        AndroidUtilities.hideKeyboard(this.amountEdit);
        WalletActivity.openTransactionSheet(getContext(), getCurrentAccount(), wallettransaction, new Utilities.Callback3() { // from class: org.telegram.ui.Wallet.WalletSendEnterAmount$$ExternalSyntheticLambda30
            @Override // org.telegram.messenger.Utilities.Callback3
            public final void run(Object obj, Object obj2, Object obj3) {
                this.f$0.lambda$send$30(gramWallet, j, (String) obj, (Boolean) obj2, (Utilities.Callback) obj3);
            }
        }, new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.WalletSendEnterAmount$$ExternalSyntheticLambda31
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$send$31((String) obj, (Boolean) obj2);
            }
        }, getPublicKey(), null, getResourceProvider());
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.WalletSendEnterAmount$$ExternalSyntheticLambda32
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$send$32();
            }
        }, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$send$30(GramWallet gramWallet, long j, String str, Boolean bool, final Utilities.Callback callback) {
        gramWallet.send(this.recipientUser, this.recipientAddress, j, str, bool.booleanValue() ? getPublicKey() : null, this.recipientDomain, new Utilities.Callback() { // from class: org.telegram.ui.Wallet.WalletSendEnterAmount$$ExternalSyntheticLambda35
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$send$28(callback, (String) obj);
            }
        }, new Utilities.Callback() { // from class: org.telegram.ui.Wallet.WalletSendEnterAmount$$ExternalSyntheticLambda36
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$send$29((TL_wallet.walletTransaction) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$send$28(Utilities.Callback callback, String str) {
        if ("PASSCODE_FAILED".equalsIgnoreCase(str)) {
            return;
        }
        callback.run(str);
        if (str == null) {
            this.fragmentView.postDelayed(new WalletSendEnterAmount$$ExternalSyntheticLambda37(this), 220L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$send$29(TL_wallet.walletTransaction wallettransaction) {
        this.queuedTransaction = wallettransaction;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$send$31(String str, Boolean bool) {
        this.comment = str;
        this.comment_encrypted = bool.booleanValue();
        this.commentView.setText(this.comment);
        this.commentView.setVisibility(TextUtils.isEmpty(this.comment) ? 8 : 0);
        updateCenterBottom();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$send$32() {
        this.sendButton.setLoading(false);
    }

    private void returnToChat() {
        INavigationLayout parentLayout = getParentLayout();
        if (parentLayout == null) {
            finishFragment();
            return;
        }
        long j = this.recipientUser.id;
        ArrayList arrayList = new ArrayList(parentLayout.getFragmentStack());
        if (arrayList.isEmpty() || arrayList.get(arrayList.size() - 1) != this) {
            return;
        }
        int size = arrayList.size() - 2;
        while (true) {
            if (size < 0) {
                break;
            }
            BaseFragment baseFragment = (BaseFragment) arrayList.get(size);
            if ((baseFragment instanceof ChatActivity) && baseFragment.getCurrentAccount() == this.currentAccount) {
                ChatActivity chatActivity = (ChatActivity) baseFragment;
                if (chatActivity.getDialogId() == j && chatActivity.getChatMode() == 0) {
                    this.chatSendDestination = chatActivity;
                    for (int size2 = arrayList.size() - 2; size2 > size; size2--) {
                        parentLayout.removeFragmentFromStack((BaseFragment) arrayList.get(size2));
                    }
                }
            }
            size--;
        }
        if (this.chatSendDestination == null) {
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.closeProfileActivity, Long.valueOf(j), Boolean.FALSE);
            ChatActivity chatActivityOf = ChatActivity.of(j);
            chatActivityOf.setCurrentAccount(this.currentAccount);
            if (!parentLayout.addFragmentToStack(chatActivityOf, parentLayout.getFragmentStack().size() - 1)) {
                finishFragment();
                return;
            }
            this.chatSendDestination = chatActivityOf;
        }
        finishFragment();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void returnToWallet() {
        INavigationLayout parentLayout = getParentLayout();
        if (parentLayout == null) {
            finishFragment();
            return;
        }
        ArrayList arrayList = new ArrayList(parentLayout.getFragmentStack());
        if (arrayList.isEmpty() || arrayList.get(arrayList.size() - 1) != this) {
            return;
        }
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            BaseFragment baseFragment = (BaseFragment) obj;
            if (baseFragment instanceof WalletSendSelectSender) {
                parentLayout.removeFragmentFromStack(baseFragment);
            }
        }
        List<BaseFragment> fragmentStack = parentLayout.getFragmentStack();
        if (fragmentStack.size() >= 2 && (fragmentStack.get(fragmentStack.size() - 2) instanceof WalletActivity) && fragmentStack.get(fragmentStack.size() - 2).getCurrentAccount() == this.currentAccount) {
            this.sendDestination = (WalletActivity) fragmentStack.get(fragmentStack.size() - 2);
        } else {
            WalletActivity walletActivity = new WalletActivity();
            walletActivity.setCurrentAccount(this.currentAccount);
            if (parentLayout.addFragmentToStack(walletActivity, fragmentStack.size() - 1)) {
                this.sendDestination = walletActivity;
            }
        }
        finishFragment();
    }

    private BigDecimal parseAmount(String str) {
        if (TextUtils.isEmpty(str)) {
            return BigDecimal.ZERO;
        }
        try {
            BigDecimal bigDecimal = new BigDecimal(str.replace(',', '.'));
            return bigDecimal.signum() < 0 ? BigDecimal.ZERO : bigDecimal;
        } catch (NumberFormatException unused) {
            return BigDecimal.ZERO;
        }
    }

    private void updateFeeVisibility(boolean z) {
        if (this.feeVisible == z) {
            return;
        }
        this.feeVisible = z;
        ValueAnimator valueAnimator = this.feeVisibilityAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.feeVisibilityAnimator = null;
        }
        float f = z ? 1.0f : 0.0f;
        if (!this.feeView.isAttachedToWindow()) {
            setFeeVisibilityProgress(f);
            return;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.feeVisibilityProgress, f);
        this.feeVisibilityAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(320L);
        this.feeVisibilityAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        this.feeVisibilityAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Wallet.WalletSendEnterAmount$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f$0.lambda$updateFeeVisibility$34(valueAnimator2);
            }
        });
        this.feeVisibilityAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateFeeVisibility$34(ValueAnimator valueAnimator) {
        setFeeVisibilityProgress(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    private void setFeeVisibilityProgress(float f) {
        this.feeVisibilityProgress = f;
        this.feeView.setAlpha(f);
        this.feeView.setVisibility(f > 0.0f ? 0 : 8);
        ((LinearLayout.LayoutParams) this.feeView.getLayoutParams()).topMargin = Math.round(AndroidUtilities.dp(4.0f) * f);
        this.feeView.requestLayout();
    }

    private void updateBalance() {
        if (this.balanceView == null) {
            return;
        }
        GramWallet gramWallet = GramWallet.getInstance(this.currentAccount);
        boolean z = false;
        this.balanceView.setText(LocaleController.formatSpannable(C2807R.string.WalletBalanceAmount, GramWallet.formatGramsBalanceWithUnit(gramWallet.getBalance(), false)));
        boolean z2 = this.hasEnteredAmount;
        EditTextBoldCursor editTextBoldCursor = this.amountEdit;
        this.hasEnteredAmount = z2 | ((editTextBoldCursor == null || TextUtils.isEmpty(editTextBoldCursor.getText())) ? false : true);
        if ((!gramWallet.isGaslessAvailable() || GramWallet.addressEquals(gramWallet.getAddress(), getAddress())) && this.hasEnteredAmount) {
            z = true;
        }
        if (z) {
            long j = this.fee;
            TextView textView = this.feeView;
            if (j >= 0) {
                textView.setText(LocaleController.formatSpannable(C2807R.string.WalletNetworkFeeAmount, GramWallet.formatGramsWithUnit(j)));
            } else {
                textView.setText(LocaleController.formatSpannable(C2807R.string.WalletNetworkFeeAmount, this.feeViewLoading));
            }
        }
        updateFeeVisibility(z);
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public WindowInsetsCompat onInsetsInternal(View view, WindowInsetsCompat windowInsetsCompat) {
        this.keyboardInset = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.ime()).bottom;
        return super.onInsetsInternal(view, windowInsetsCompat);
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onInsets(int i, int i2, int i3, int i4) {
        this.bottomInset = i4;
        updateBottomLayout();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCenterGeometry() {
        LinearLayout linearLayout = this.center;
        if (linearLayout == null || this.bottomContainer == null || linearLayout.getHeight() <= 0 || this.bottomContainer.getHeight() <= 0) {
            return;
        }
        float paddingTop = this.fragmentView.getPaddingTop();
        if (this.addressInfoLayout.getVisibility() == 0) {
            paddingTop = Math.max(paddingTop, this.addressInfoLayout.getY() + this.addressInfoLayout.getPivotY() + ((this.addressInfoLayout.getContentBottom() - this.addressInfoLayout.getPivotY()) * this.addressInfoLayout.getScaleY()));
        }
        float fMax = Math.max(0.0f, Math.min(this.fragmentView.getHeight() - this.fragmentView.getPaddingBottom(), this.bottomContainer.getY()) - paddingTop);
        float fMin = Math.min(1.0f, Math.max(0.0f, fMax - (Math.min(AndroidUtilities.dp(12.0f), fMax / 4.0f) * 2.0f)) / this.center.getHeight());
        this.center.setPivotX(r3.getWidth() / 2.0f);
        this.center.setPivotY(r3.getHeight() / 2.0f);
        this.center.setScaleX(fMin);
        this.center.setScaleY(fMin);
        this.center.setTranslationY(((paddingTop + (fMax / 2.0f)) - r2.getTop()) - (this.center.getHeight() / 2.0f));
    }

    private void updateBottomLayout() {
        if (this.bottomContainer == null) {
            return;
        }
        int iMax = Math.max(0, this.keyboardInset - this.bottomInset);
        this.bottomContainer.setPadding(AndroidUtilities.dp(16.0f), 0, AndroidUtilities.dp(16.0f), AndroidUtilities.dp(12.0f) + this.bottomInset);
        if (this.lastBottom != iMax) {
            this.bottomContainer.animate().cancel();
            this.bottomContainer.animate().translationY(-iMax).setDuration(320L).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).start();
            this.lastBottom = iMax;
        }
    }
}
