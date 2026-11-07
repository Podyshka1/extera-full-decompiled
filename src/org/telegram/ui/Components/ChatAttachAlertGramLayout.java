package org.telegram.ui.Components;

import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.text.Editable;
import android.text.InputFilter;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ClickableSpan;
import android.text.style.RelativeSizeSpan;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
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
import java.util.Locale;
import kotlin.jvm.internal.LongCompanionObject;
import okhttp3.internal.url._UrlKt;
import org.mvel2.MVEL;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BotWebViewVibrationEffect;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_wallet;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.ActionBarMenuItem;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.MessageDrawable;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.CheckBoxCell;
import org.telegram.ui.ChatActivity;
import org.telegram.ui.Components.AnimatedTextView;
import org.telegram.ui.Components.ChatAttachAlert;
import org.telegram.ui.Components.LinkSpanDrawable;
import org.telegram.ui.Stories.recorder.ButtonWithCounterView;
import org.telegram.ui.Wallet.GramWallet;
import org.telegram.ui.Wallet.WalletActivity;
import org.telegram.ui.Wallet.WalletChatSendTransition;
import org.telegram.ui.Wallet.WalletEngine2;
import org.telegram.ui.Wallet.WalletRecipientView;
import org.telegram.ui.Wallet.WalletSendEnterAmount;
import org.telegram.ui.Wallet.WalletSendTransition;

/* JADX INFO: loaded from: classes7.dex */
public class ChatAttachAlertGramLayout extends ChatAttachAlert.AttachAlertLayout implements NotificationCenter.NotificationCenterDelegate {
    private final FrameLayout amountArea;
    private final EditTextBoldCursor amountEdit;
    private final WalletSendEnterAmount.AmountInputView amountInput;
    private boolean amountKeyboardSuppressed;
    private final TextView balanceView;
    private final FrameLayout bottomContainer;
    private final FrameLayout bottomIntroContainer;
    private Runnable cancelFeeLoading;
    private float canvasPanTranslationY;
    private final LinearLayout center;
    private final LinearLayout centerBottom;
    private final FrameLayout centerBottomContainer;
    private boolean centerBottomVisible;
    private String comment;
    private AlertDialog commentDialog;
    private boolean commentEncrypted;
    private final TextView commentView;
    private final FrameLayout contentContainer;
    private final CharSequence currencyExchangeIcon;
    private final AnimatedTextView currencyView;
    private final int currentAccount;
    private boolean destroyed;
    private long fee;
    private boolean feeEmulationAvailable;
    private final TextView feeView;
    private final SpannableString feeViewLoading;
    private ValueAnimator feeVisibilityAnimator;
    private float feeVisibilityProgress;
    private boolean feeVisible;
    private boolean finishTransitionOnLayout;
    private final CharSequence gramAmountIcon;
    private DecimalFormat gramsPreviewFormat;
    private DecimalFormat gramsTextFormat;
    private boolean hasEnteredAmount;
    private boolean hasSettledGeometry;
    private final ActionBarMenuItem inlineMoreItem;
    private boolean inputInCurrency;
    private final LinkSpanDrawable.LinksTextView insufficientFundsView;
    private SpringAnimation introAnimator;
    private float introProgress;
    private float introRevealProgress;
    private float keyboardTransitionProgress;
    private boolean keyboardVisible;
    private boolean layoutShown;
    private boolean loadingAddress;
    private final ActionBarMenuItem moreItem;
    private boolean panTransitionInProgress;
    private boolean panTransitionOpening;
    private Runnable pendingCommentAlert;
    private boolean pendingKeyboardRequest;
    private Activity portraitLockedActivity;
    private int previousOrientation;
    private TL_wallet.walletTransaction queuedTransaction;
    private String recipientAddress;
    private byte[] recipientPublicKey;
    private final TLRPC.User recipientUser;
    private final WalletRecipientView recipientView;
    private final int[] screenLocation;
    private ButtonWithCounterView sendButton;
    private boolean sendButtonVisible;
    private boolean sendToWallet;
    private WalletChatSendTransition sendTransition;
    private float settledBottomY;
    private float settledRecipientY;
    private int shakeDp;
    private final TextView tapToSetAmount;
    private float transitionFromBottomY;
    private float transitionFromRecipientY;
    private float transitionToBottomY;
    private float transitionToRecipientY;
    private WalletSendTransition walletSendTransition;
    private boolean walletUnavailable;

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public boolean disableBottomFade() {
        return true;
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public boolean disableTopFade() {
        return true;
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public boolean hasCustomBackground() {
        return true;
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public int needsActionBar() {
        return 1;
    }

    public byte[] getPublicKey() {
        if (this.recipientPublicKey == null) {
            return null;
        }
        int i = 0;
        while (true) {
            byte[] bArr = this.recipientPublicKey;
            if (i >= bArr.length) {
                return null;
            }
            if (bArr[i] != 0) {
                return bArr;
            }
            i++;
        }
    }

    public ChatAttachAlertGramLayout(ChatAttachAlert chatAttachAlert, Context context, final int i, final TLRPC.User user, final Theme.ResourcesProvider resourcesProvider) {
        super(chatAttachAlert, context, resourcesProvider);
        this.fee = -1L;
        this.introProgress = 1.0f;
        this.introRevealProgress = 1.0f;
        this.commentEncrypted = true;
        this.shakeDp = 6;
        this.screenLocation = new int[2];
        this.currentAccount = i;
        this.recipientUser = user;
        FrameLayout frameLayout = new FrameLayout(context);
        this.contentContainer = frameLayout;
        frameLayout.setClipChildren(false);
        frameLayout.setClipToPadding(false);
        addView(frameLayout, LayoutHelper.createFrame(-1, -1, 55));
        ActionBarMenuItem actionBarMenuItemAddItem = this.parentAlert.actionBar.createMenu().addItem(31, C2807R.drawable.ic_ab_other);
        this.moreItem = actionBarMenuItemAddItem;
        actionBarMenuItemAddItem.setContentDescription(LocaleController.getString(C2807R.string.AccDescrMoreOptions));
        actionBarMenuItemAddItem.addSubItem(2, C2807R.drawable.msg_addbot, LocaleController.getString(C2807R.string.WalletDepositFunds));
        actionBarMenuItemAddItem.addSubItem(3, C2807R.drawable.menu_comments, LocaleController.getString(C2807R.string.WalletAddComment));
        actionBarMenuItemAddItem.setVisibility(8);
        ActionBarMenuItem actionBarMenuItem = new ActionBarMenuItem(context, null, 0, getThemedColor(Theme.key_windowBackgroundWhiteBlackText), false, resourcesProvider);
        this.inlineMoreItem = actionBarMenuItem;
        actionBarMenuItem.setIcon(C2807R.drawable.ic_ab_other);
        actionBarMenuItem.setContentDescription(LocaleController.getString(C2807R.string.AccDescrMoreOptions));
        actionBarMenuItem.setBackground(Theme.createSelectorDrawable(getThemedColor(Theme.key_listSelector), 1));
        actionBarMenuItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatAttachAlertGramLayout$$ExternalSyntheticLambda10
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$1(resourcesProvider, i, view);
            }
        });
        WalletRecipientView walletRecipientView = new WalletRecipientView(context, resourcesProvider, new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertGramLayout$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$2(user);
            }
        }, new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertGramLayout$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$3(resourcesProvider);
            }
        });
        this.recipientView = walletRecipientView;
        walletRecipientView.setRecipient(user, this.recipientAddress);
        addView(walletRecipientView, LayoutHelper.createFrame(-2, 64.0f, 49, 6.0f, 0.0f, 6.0f, 0.0f));
        FrameLayout frameLayout2 = new FrameLayout(context);
        this.amountArea = frameLayout2;
        frameLayout2.setClipChildren(false);
        frameLayout2.setClipToPadding(false);
        frameLayout.addView(frameLayout2, LayoutHelper.createFrame(-1, -1, 55));
        LinearLayout linearLayout = new LinearLayout(context) { // from class: org.telegram.ui.Components.ChatAttachAlertGramLayout.1
            @Override // android.widget.LinearLayout, android.view.View
            public void onMeasure(int i2, int i3) {
                super.onMeasure(i2, View.MeasureSpec.makeMeasureSpec(0, 0));
            }
        };
        this.center = linearLayout;
        linearLayout.setOrientation(1);
        linearLayout.setClipChildren(false);
        linearLayout.setClipToPadding(false);
        linearLayout.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatAttachAlertGramLayout$$ExternalSyntheticLambda16
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$4(view);
            }
        });
        frameLayout2.addView(linearLayout, LayoutHelper.createFrame(-1, -2, 17));
        WalletSendEnterAmount.AmountInputView amountInputView = new WalletSendEnterAmount.AmountInputView(context, resourcesProvider);
        this.amountInput = amountInputView;
        amountInputView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatAttachAlertGramLayout$$ExternalSyntheticLambda17
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$5(view);
            }
        });
        linearLayout.addView(amountInputView, LayoutHelper.createLinear(-1, 64, 49, 16, 0, 16, 0));
        EditTextBoldCursor editText = amountInputView.getEditText();
        this.amountEdit = editText;
        editText.setFilters(new InputFilter[]{new InputFilter() { // from class: org.telegram.ui.Components.ChatAttachAlertGramLayout$$ExternalSyntheticLambda18
            @Override // android.text.InputFilter
            public final CharSequence filter(CharSequence charSequence, int i2, int i3, Spanned spanned, int i4, int i5) {
                return this.f$0.lambda$new$6(charSequence, i2, i3, spanned, i4, i5);
            }
        }});
        editText.setImeOptions(33554438);
        editText.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.Components.ChatAttachAlertGramLayout$$ExternalSyntheticLambda19
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return this.f$0.lambda$new$7(view, motionEvent);
            }
        });
        editText.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatAttachAlertGramLayout$$ExternalSyntheticLambda20
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$8(view);
            }
        });
        editText.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.Components.ChatAttachAlertGramLayout$$ExternalSyntheticLambda21
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
                return this.f$0.lambda$new$9(textView, i2, keyEvent);
            }
        });
        editText.addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.Components.ChatAttachAlertGramLayout.2
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                ChatAttachAlertGramLayout.this.updateAmount();
            }
        });
        SpannableString spannableString = new SpannableString("⇅");
        this.currencyExchangeIcon = spannableString;
        ColoredImageSpan coloredImageSpan = new ColoredImageSpan(C2807R.drawable.wallet_currency_exchange);
        coloredImageSpan.setAlpha(0.72f);
        spannableString.setSpan(coloredImageSpan, 0, spannableString.length(), 33);
        SpannableString spannableString2 = new SpannableString("G");
        this.gramAmountIcon = spannableString2;
        ColoredImageSpan coloredImageSpan2 = new ColoredImageSpan(C2807R.drawable.wallet_gram_small);
        coloredImageSpan2.recolorDrawable = false;
        spannableString2.setSpan(coloredImageSpan2, 0, spannableString2.length(), 33);
        AnimatedTextView animatedTextView = new AnimatedTextView(context, false, true, true, true, true);
        this.currencyView = animatedTextView;
        animatedTextView.setAnimationProperties(0.35f, 0L, 320L, 3.5f, CubicBezierInterpolator.EASE_OUT_QUINT);
        animatedTextView.setScaleProperty(0.35f);
        animatedTextView.setText(getCurrencyPreviewText(GramWallet.getInstance(i), 0L));
        int themedColor = getThemedColor(Theme.key_windowBackgroundWhite);
        int i2 = Theme.key_windowBackgroundWhiteGrayText2;
        animatedTextView.setTextColor(Theme.blendOver(themedColor, getThemedColor(i2)));
        animatedTextView.setTextSize(AndroidUtilities.dp(14.0f));
        animatedTextView.setTypeface(AndroidUtilities.getTypeface("fonts/gram.ttf"));
        animatedTextView.setGravity(17);
        animatedTextView.setPadding(AndroidUtilities.dp(10.0f), 0, AndroidUtilities.dp(10.0f), 0);
        animatedTextView.setAllowCancel(true);
        animatedTextView.setSizeableBackground(Theme.createRoundRectDrawable(AndroidUtilities.dp(14.0f), Theme.multAlpha(getThemedColor(i2), 0.08f)));
        linearLayout.addView(animatedTextView, LayoutHelper.createLinear(-2, 28, 49, 0, 8, 0, 0));
        ScaleStateListAnimator.apply(animatedTextView);
        animatedTextView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatAttachAlertGramLayout$$ExternalSyntheticLambda22
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$10(view);
            }
        });
        FrameLayout frameLayout3 = new FrameLayout(context);
        this.centerBottomContainer = frameLayout3;
        linearLayout.addView(frameLayout3, LayoutHelper.createLinear(-2, -2, 49));
        LinearLayout linearLayout2 = new LinearLayout(context);
        this.centerBottom = linearLayout2;
        linearLayout2.setOrientation(1);
        frameLayout3.addView(linearLayout2, LayoutHelper.createFrame(-2, -2, 49));
        TextView textView = new TextView(context);
        this.tapToSetAmount = textView;
        textView.setTextSize(1, 14.0f);
        textView.setTextColor(getThemedColor(i2));
        textView.setPadding(AndroidUtilities.dp(10.0f), 0, AndroidUtilities.dp(10.0f), 0);
        textView.setGravity(17);
        textView.setText(LocaleController.getString(C2807R.string.WalletTapToSetAmount));
        frameLayout3.addView(textView, LayoutHelper.createFrame(-2, 28.0f, 49, 0.0f, 8.0f, 0.0f, 0.0f));
        ScaleStateListAnimator.apply(textView);
        textView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatAttachAlertGramLayout$$ExternalSyntheticLambda11
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$11(view);
            }
        });
        linearLayout2.setVisibility(4);
        linearLayout2.setAlpha(0.0f);
        linearLayout2.setScaleX(0.8f);
        linearLayout2.setScaleY(0.8f);
        textView.setVisibility(0);
        textView.setAlpha(1.0f);
        textView.setScaleX(1.0f);
        textView.setScaleY(1.0f);
        this.centerBottomVisible = false;
        TextView textView2 = new TextView(context);
        this.commentView = textView2;
        MessageDrawable messageDrawable = new MessageDrawable(0, true, false);
        messageDrawable.shadow = false;
        messageDrawable.paint.setStyle(Paint.Style.STROKE);
        messageDrawable.paint.setStrokeWidth(Math.max(1.0f, AndroidUtilities.dpf2(0.5f)));
        Paint paint = messageDrawable.paint;
        int i3 = Theme.key_wallet_out_commentBorder;
        paint.setColor(getThemedColor(i3));
        messageDrawable.overrideColor = Integer.valueOf(getThemedColor(i3));
        textView2.setPadding(AndroidUtilities.dp(15.0f), AndroidUtilities.dp(7.0f), AndroidUtilities.dp(19.0f), AndroidUtilities.dp(8.0f));
        textView2.setBackground(messageDrawable);
        textView2.setTextSize(1, 14.0f);
        textView2.setTextColor(getThemedColor(i2));
        textView2.setTypeface(AndroidUtilities.bold());
        textView2.setVisibility(8);
        textView2.setEllipsize(TextUtils.TruncateAt.END);
        textView2.setMaxLines(4);
        linearLayout2.addView(textView2, LayoutHelper.createLinear(-2, -2, 49, 32, 12, 32, 0));
        textView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatAttachAlertGramLayout$$ExternalSyntheticLambda12
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$12(view);
            }
        });
        ScaleStateListAnimator.apply(textView2, 0.02f, 1.2f);
        LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(context, resourcesProvider);
        this.insufficientFundsView = linksTextView;
        linksTextView.setTextColor(getThemedColor(Theme.key_text_RedBold));
        linksTextView.setLinkTextColor(getThemedColor(Theme.key_featuredStickers_addButton));
        linksTextView.setTextSize(1, 14.0f);
        linksTextView.setGravity(17);
        linksTextView.setTypeface(AndroidUtilities.bold());
        linksTextView.setPadding(AndroidUtilities.dp(10.0f), 0, AndroidUtilities.dp(10.0f), 0);
        showError(false, true);
        linearLayout2.addView(linksTextView, LayoutHelper.createLinear(-2, -2, 49, 0, 10, 0, 0));
        FrameLayout frameLayout4 = new FrameLayout(context);
        this.bottomContainer = frameLayout4;
        frameLayout4.setPadding(AndroidUtilities.dp(16.0f), 0, AndroidUtilities.dp(16.0f), AndroidUtilities.dp(12.0f));
        FrameLayout frameLayout5 = new FrameLayout(context);
        this.bottomIntroContainer = frameLayout5;
        frameLayout4.setClipChildren(false);
        frameLayout4.setClipToPadding(false);
        frameLayout5.setClipChildren(false);
        frameLayout5.setClipToPadding(false);
        frameLayout4.addView(frameLayout5, LayoutHelper.createFrame(-1, -1.0f));
        TextView textView3 = new TextView(context);
        this.balanceView = textView3;
        textView3.setTextColor(getThemedColor(i2));
        textView3.setTextSize(1, 14.0f);
        textView3.setGravity(17);
        frameLayout5.addView(textView3, LayoutHelper.createFrame(-1, 20, 55));
        TextView textView4 = new TextView(context);
        this.feeView = textView4;
        textView4.setTextColor(getThemedColor(i2));
        textView4.setTextSize(1, 14.0f);
        textView4.setGravity(17);
        textView4.setPadding(0, AndroidUtilities.dp(4.0f), 0, AndroidUtilities.dp(4.0f));
        textView4.setVisibility(8);
        frameLayout5.addView(textView4, LayoutHelper.createFrame(-1, -2.0f, 55, 0.0f, 24.0f, 0.0f, 0.0f));
        SpannableString spannableString3 = new SpannableString(LocaleController.getString(C2807R.string.Loading));
        this.feeViewLoading = spannableString3;
        spannableString3.setSpan(new LoadingSpan(textView4, AndroidUtilities.dp(80.0f)), 0, spannableString3.length(), 33);
        ButtonWithCounterView round = new ButtonWithCounterView(context, resourcesProvider).setRound();
        this.sendButton = round;
        round.setText(LocaleController.getString(C2807R.string.WalletSendGrams));
        this.sendButton.setEnabled(false);
        this.sendButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatAttachAlertGramLayout$$ExternalSyntheticLambda13
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$13(view);
            }
        });
        frameLayout5.addView(this.sendButton, LayoutHelper.createFrame(-1, 48, 87));
        frameLayout.addView(frameLayout4, LayoutHelper.createFrame(-1, 92.0f, 87, 0.0f, 0.0f, 0.0f, 70.0f));
        updateSendButtonVisibility(false, false);
        NotificationCenter.getInstance(i).addObserver(this, NotificationCenter.walletUpdate);
        updateBalance();
        loadRecipientAddress();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(final Theme.ResourcesProvider resourcesProvider, final int i, View view) {
        ItemOptions.makeOptions(this, resourcesProvider, this.inlineMoreItem).dontFocus().add(C2807R.drawable.msg_addbot, LocaleController.getString(C2807R.string.WalletDepositFunds), new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertGramLayout$$ExternalSyntheticLambda24
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$0(i, resourcesProvider);
            }
        }).add(C2807R.drawable.menu_comments, LocaleController.getString(C2807R.string.WalletAddComment), new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertGramLayout$$ExternalSyntheticLambda25
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.openAddCommentAlert();
            }
        }).setDimAlpha(0).translate(0.0f, -AndroidUtilities.dp(48.0f)).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(int i, Theme.ResourcesProvider resourcesProvider) {
        WalletActivity.openWalletQRAlert(getContext(), i, resourcesProvider);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(TLRPC.User user) {
        this.parentAlert.lambda$new$0();
        this.parentAlert.getBaseFragment().presentFragment(ChatActivity.of(user.id));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3(Theme.ResourcesProvider resourcesProvider) {
        BulletinFactory.of(this, resourcesProvider).createSimpleBulletin(C2807R.raw.copy, LocaleController.getString(C2807R.string.WalletAddressCopiedBulletin)).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$4(View view) {
        requestAmountKeyboard();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$5(View view) {
        requestAmountKeyboard();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ CharSequence lambda$new$6(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
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
    public /* synthetic */ boolean lambda$new$7(View view, MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() != 1 || view.hasFocus()) {
            return false;
        }
        requestAmountKeyboard();
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$8(View view) {
        requestAmountKeyboard();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$9(TextView textView, int i, KeyEvent keyEvent) {
        if (i != 6 || !this.sendButton.isEnabled()) {
            return false;
        }
        this.sendButton.performClick();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$10(View view) {
        switchInputMode();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$11(View view) {
        requestAmountKeyboard();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$12(View view) {
        openAddCommentAlert();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$13(View view) {
        send();
    }

    private void updateCenterBottom() {
        if (this.centerBottom == null || this.tapToSetAmount == null) {
            return;
        }
        final boolean z = getGramNanoAmount() > 0 || this.commentView.getVisibility() == 0 || this.keyboardVisible;
        if (z == this.centerBottomVisible) {
            return;
        }
        this.centerBottomVisible = z;
        this.centerBottom.setVisibility(0);
        this.tapToSetAmount.setVisibility(0);
        ViewPropertyAnimator duration = this.centerBottom.animate().alpha(z ? 1.0f : 0.0f).scaleX(z ? 1.0f : 0.8f).scaleY(z ? 1.0f : 0.8f).withEndAction(new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertGramLayout$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$updateCenterBottom$14(z);
            }
        }).setDuration(320L);
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        duration.setInterpolator(cubicBezierInterpolator).start();
        this.tapToSetAmount.animate().alpha(z ? 0.0f : 1.0f).scaleX(!z ? 1.0f : 0.8f).scaleY(z ? 0.8f : 1.0f).withEndAction(new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertGramLayout$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$updateCenterBottom$15(z);
            }
        }).setDuration(320L).setInterpolator(cubicBezierInterpolator).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateCenterBottom$14(boolean z) {
        this.centerBottom.setVisibility(z ? 0 : 4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateCenterBottom$15(boolean z) {
        this.tapToSetAmount.setVisibility(!z ? 0 : 4);
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
                spannableStringBuilder.setSpan(new ClickableSpan() { // from class: org.telegram.ui.Components.ChatAttachAlertGramLayout.3
                    @Override // android.text.style.ClickableSpan
                    public void onClick(View view) {
                        WalletActivity.openWalletQRAlert(ChatAttachAlertGramLayout.this.getContext(), ChatAttachAlertGramLayout.this.currentAccount, ChatAttachAlertGramLayout.this.resourcesProvider);
                    }

                    @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
                    public void updateDrawState(TextPaint textPaint) {
                        textPaint.setColor(ChatAttachAlertGramLayout.this.getThemedColor(Theme.key_featuredStickers_addButton));
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

    private void loadRecipientAddress() {
        this.loadingAddress = true;
        GramWallet.getInstance(this.currentAccount).resolveWallet(this.recipientUser, true, new Utilities.Callback2() { // from class: org.telegram.ui.Components.ChatAttachAlertGramLayout$$ExternalSyntheticLambda23
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$loadRecipientAddress$16((TL_wallet.walletUserAddress) obj, (String) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadRecipientAddress$16(TL_wallet.walletUserAddress walletuseraddress, String str) {
        if (this.destroyed) {
            return;
        }
        this.loadingAddress = false;
        if (TextUtils.equals(str, "WALLET_USER_UNAVAILABLE")) {
            this.walletUnavailable = true;
        }
        if (walletuseraddress != null && walletuseraddress.user_id == this.recipientUser.id) {
            this.recipientAddress = walletuseraddress.address;
            this.recipientPublicKey = walletuseraddress.public_key;
        }
        this.recipientView.setRecipient(this.recipientUser, this.recipientAddress);
        updateAmount();
        loadFee();
    }

    private void loadFee() {
        if (this.destroyed || TextUtils.isEmpty(this.recipientAddress)) {
            return;
        }
        Runnable runnable = this.cancelFeeLoading;
        if (runnable != null) {
            runnable.run();
            this.cancelFeeLoading = null;
        }
        this.fee = -1L;
        updateBalance();
        GramWallet gramWallet = GramWallet.getInstance(this.currentAccount);
        if (this.feeEmulationAvailable) {
            this.cancelFeeLoading = gramWallet.emulateSend(this.recipientAddress, Math.max(100000000L, getGramNanoAmount()), this.comment, this.commentEncrypted ? getPublicKey() : null, new Utilities.Callback2() { // from class: org.telegram.ui.Components.ChatAttachAlertGramLayout$$ExternalSyntheticLambda8
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    this.f$0.lambda$loadFee$17((TL_wallet.walletTransaction) obj, (String) obj2);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadFee$17(TL_wallet.walletTransaction wallettransaction, String str) {
        if (this.destroyed || wallettransaction == null) {
            return;
        }
        this.fee = wallettransaction.fee;
        updateBalance();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openAddCommentAlert() {
        if (this.destroyed || this.amountKeyboardSuppressed || this.pendingCommentAlert != null || this.commentDialog != null) {
            return;
        }
        requestAmountKeyboard();
        final long jUptimeMillis = SystemClock.uptimeMillis() + 1500;
        Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertGramLayout$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$openAddCommentAlert$18(jUptimeMillis);
            }
        };
        this.pendingCommentAlert = runnable;
        post(runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openAddCommentAlert$18(long j) {
        if (this.destroyed || !this.layoutShown || !isShown()) {
            this.pendingCommentAlert = null;
            return;
        }
        if ((this.parentAlert.sizeNotifierFrameLayout.measureKeyboardHeight() <= AndroidUtilities.dp(20.0f) || this.panTransitionInProgress || this.finishTransitionOnLayout) && SystemClock.uptimeMillis() < j) {
            postDelayed(this.pendingCommentAlert, 32L);
        } else {
            this.pendingCommentAlert = null;
            showAddCommentAlert();
        }
    }

    private void cancelPendingCommentAlert() {
        Runnable runnable = this.pendingCommentAlert;
        if (runnable != null) {
            removeCallbacks(runnable);
            this.pendingCommentAlert = null;
        }
    }

    private void showAddCommentAlert() {
        Context context;
        BaseFragment baseFragment = this.parentAlert.baseFragment;
        if (baseFragment != null && baseFragment.getParentActivity() != null) {
            context = this.parentAlert.baseFragment.getParentActivity();
        } else {
            context = getContext();
        }
        if (context == null) {
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(context, this.resourcesProvider);
        builder.setTitle(LocaleController.getString(C2807R.string.WalletAddComment));
        final EditTextBoldCursor editTextBoldCursor = new EditTextBoldCursor(context) { // from class: org.telegram.ui.Components.ChatAttachAlertGramLayout.4
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
                this.limit.setTextColor(this.limitColor.set(Theme.getColor(this.remaining <= 0 ? Theme.key_text_RedRegular : Theme.key_dialogSearchHint, ChatAttachAlertGramLayout.this.resourcesProvider)));
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
        final CheckBoxCell checkBoxCell = new CheckBoxCell(context, 1, this.resourcesProvider);
        checkBoxCell.setBackground(Theme.createSelectorDrawable(Theme.getColor(Theme.key_listSelector, this.resourcesProvider), 7, AndroidUtilities.dp(12.0f)));
        checkBoxCell.setText(LocaleController.getString(C2807R.string.WalletMakeCommentPublic), _UrlKt.FRAGMENT_ENCODE_SET, !this.commentEncrypted || getPublicKey() == null, false);
        checkBoxCell.setMultiline(true);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) checkBoxCell.getCheckBoxView().getLayoutParams();
        layoutParams.topMargin = 0;
        layoutParams.gravity = (LocaleController.isRTL ? 5 : 3) | 16;
        checkBoxCell.getCheckBoxView().setLayoutParams(layoutParams);
        checkBoxCell.setPadding(LocaleController.isRTL ? AndroidUtilities.dp(4.0f) : 0, AndroidUtilities.dp(12.0f), LocaleController.isRTL ? 0 : AndroidUtilities.dp(4.0f), AndroidUtilities.dp(12.0f));
        checkBoxCell.setEnabled(getPublicKey() != null);
        checkBoxCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatAttachAlertGramLayout$$ExternalSyntheticLambda26
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
        builder.setNegativeButton(LocaleController.getString(C2807R.string.Cancel), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.ChatAttachAlertGramLayout$$ExternalSyntheticLambda27
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                alertDialog.dismiss();
            }
        });
        builder.setPositiveButton(LocaleController.getString(C2807R.string.Add), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.ChatAttachAlertGramLayout$$ExternalSyntheticLambda28
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                this.f$0.lambda$showAddCommentAlert$21(editTextBoldCursor, checkBoxCell, alertDialog, i);
            }
        });
        AlertDialog alertDialogCreate = builder.create();
        this.commentDialog = alertDialogCreate;
        alertDialogCreate.setDismissDialogByButtons(false);
        alertDialogCreate.setOnShowListener(new DialogInterface.OnShowListener() { // from class: org.telegram.ui.Components.ChatAttachAlertGramLayout$$ExternalSyntheticLambda29
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                ChatAttachAlertGramLayout.$r8$lambda$DCrIkyparSQQYCjhrNTB8OV_vrg(editTextBoldCursor, dialogInterface);
            }
        });
        alertDialogCreate.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.ChatAttachAlertGramLayout$$ExternalSyntheticLambda30
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                this.f$0.lambda$showAddCommentAlert$24(dialogInterface);
            }
        });
        alertDialogCreate.create();
        Window window = alertDialogCreate.getWindow();
        Rect rect = new Rect();
        this.parentAlert.getWindow().getDecorView().getWindowVisibleDisplayFrame(rect);
        if (window != null && rect.height() > 0) {
            WindowManager.LayoutParams attributes = window.getAttributes();
            View decorView = window.getDecorView();
            int iWidth = attributes.width;
            if (iWidth <= 0) {
                iWidth = rect.width();
            }
            decorView.measure(View.MeasureSpec.makeMeasureSpec(iWidth, attributes.width > 0 ? TLObject.FLAG_30 : Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(rect.height(), Integer.MIN_VALUE));
            attributes.gravity = 49;
            attributes.y = Math.max(0, (rect.height() - decorView.getMeasuredHeight()) / 2);
            window.setAttributes(attributes);
        }
        alertDialogCreate.show();
        View button = alertDialogCreate.getButton(-1);
        if (!(button instanceof TextView) || TextUtils.isEmpty(this.comment)) {
            return;
        }
        editTextBoldCursor.addTextChangedListener(new TextWatcher(editTextBoldCursor, (TextView) button) { // from class: org.telegram.ui.Components.ChatAttachAlertGramLayout.5
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
    public /* synthetic */ void lambda$showAddCommentAlert$21(EditTextBoldCursor editTextBoldCursor, CheckBoxCell checkBoxCell, AlertDialog alertDialog, int i) {
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
        this.commentEncrypted = !checkBoxCell.isChecked();
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

    public static /* synthetic */ void $r8$lambda$DCrIkyparSQQYCjhrNTB8OV_vrg(EditTextBoldCursor editTextBoldCursor, DialogInterface dialogInterface) {
        editTextBoldCursor.requestFocus();
        AndroidUtilities.showKeyboard(editTextBoldCursor);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showAddCommentAlert$24(DialogInterface dialogInterface) {
        this.commentDialog = null;
        this.amountEdit.post(new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertGramLayout$$ExternalSyntheticLambda36
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$showAddCommentAlert$23();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showAddCommentAlert$23() {
        if (!this.destroyed && this.layoutShown && isShown()) {
            requestAmountKeyboard();
        }
    }

    private void requestAmountKeyboard() {
        if (this.destroyed || this.amountKeyboardSuppressed || this.parentAlert.isDismissed()) {
            return;
        }
        if (!this.layoutShown) {
            this.pendingKeyboardRequest = true;
            return;
        }
        this.pendingKeyboardRequest = false;
        this.amountEdit.setFocusableInTouchMode(true);
        this.amountEdit.setShowSoftInputOnFocus(true);
        this.parentAlert.makeFocusable(this.amountEdit, true);
        this.amountEdit.requestFocus();
        AndroidUtilities.showKeyboard(this.amountEdit);
        this.amountEdit.postDelayed(new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertGramLayout$$ExternalSyntheticLambda33
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$requestAmountKeyboard$25();
            }
        }, 220L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestAmountKeyboard$25() {
        if (!this.destroyed && !this.amountKeyboardSuppressed && !this.parentAlert.isDismissed() && this.layoutShown && this.commentDialog == null && this.amountEdit.hasFocus() && isShown()) {
            AndroidUtilities.showKeyboard(this.amountEdit);
        }
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
        BigDecimal amount = parseAmount(this.amountEdit.getText().toString());
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
            this.amountEdit.setText(gramsInputText);
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

    private void updateSendButtonVisibility(boolean z, boolean z2) {
        if (z2 && this.sendButtonVisible == z) {
            return;
        }
        this.sendButtonVisible = z;
        this.sendButton.animate().cancel();
        this.balanceView.animate().cancel();
        this.feeView.animate().cancel();
        float f = z ? 1.0f : 0.0f;
        float f2 = z ? 1.0f : 0.8f;
        float fDp = z ? 0.0f : AndroidUtilities.dp(60.0f);
        ButtonWithCounterView buttonWithCounterView = this.sendButton;
        if (!z2) {
            buttonWithCounterView.setVisibility(z ? 0 : 4);
            this.sendButton.setAlpha(f);
            this.sendButton.setScaleX(f2);
            this.sendButton.setScaleY(f2);
            this.balanceView.setTranslationY(fDp);
            this.feeView.setTranslationY(fDp);
            return;
        }
        buttonWithCounterView.setVisibility(0);
        ViewPropertyAnimator duration = this.sendButton.animate().alpha(f).scaleX(f2).scaleY(f2).setDuration(320L);
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        duration.setInterpolator(cubicBezierInterpolator).withEndAction(new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertGramLayout$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$updateSendButtonVisibility$26();
            }
        }).start();
        this.balanceView.animate().translationY(fDp).setDuration(320L).setInterpolator(cubicBezierInterpolator).start();
        this.feeView.animate().translationY(fDp).setDuration(320L).setInterpolator(cubicBezierInterpolator).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateSendButtonVisibility$26() {
        if (this.sendButtonVisible) {
            return;
        }
        this.sendButton.setVisibility(4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateAmount() {
        CharSequence currencyPreviewText;
        String gramsInputText;
        updateCenterBottom();
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
            this.amountEdit.setText(gramsInputText);
            this.amountEdit.setSelection(gramsInputText.length());
            EditTextBoldCursor editTextBoldCursor = this.amountEdit;
            int i = -this.shakeDp;
            this.shakeDp = i;
            AndroidUtilities.shakeViewSpring(editTextBoldCursor, i);
            return;
        }
        boolean z = false;
        boolean z2 = WalletEngine2.isValidAddress(this.recipientAddress) && gramNanoAmount <= balance;
        showError(!TextUtils.isEmpty(this.amountEdit.getText()) && gramNanoAmount > balance, true);
        String gramsText = getGramsText();
        this.sendButton.setLoading(this.recipientAddress == null && this.loadingAddress);
        this.sendButton.setText(TextUtils.isEmpty(gramsText) ? LocaleController.getString(C2807R.string.WalletSendGrams) : LocaleController.formatSpannable(C2807R.string.WalletSendAmount, GramWallet.formatGramsWithUnit(gramsText)), true);
        boolean zIsEmpty = TextUtils.isEmpty(this.amountEdit.getText());
        boolean z3 = !zIsEmpty;
        ButtonWithCounterView buttonWithCounterView = this.sendButton;
        if (!zIsEmpty && z2 && !this.walletUnavailable) {
            z = true;
        }
        buttonWithCounterView.setEnabled(z);
        updateSendButtonVisibility(z3, this.layoutShown);
        updateBalance();
        updateInputModeViews();
        AnimatedTextView animatedTextView = this.currencyView;
        if (this.inputInCurrency) {
            currencyPreviewText = getGramsPreview(gramNanoAmount);
        } else {
            currencyPreviewText = getCurrencyPreviewText(gramWallet, gramNanoAmount);
        }
        animatedTextView.setText(currencyPreviewText);
    }

    private void send() {
        String gramsInputText;
        if (!this.sendButton.isEnabled() || this.sendButton.isLoading()) {
            return;
        }
        GramWallet gramWallet = GramWallet.getInstance(this.currentAccount);
        long gramNanoAmount = getGramNanoAmount();
        long balance = gramWallet.getBalance();
        if (!WalletEngine2.isValidAddress(this.recipientAddress) || gramNanoAmount <= 0) {
            return;
        }
        long j = MessagesController.getInstance(this.currentAccount).config.walletTransferMinNanos.get();
        if (gramNanoAmount < j) {
            if (this.inputInCurrency) {
                gramsInputText = formatCurrencyInput(j, getCurrencyPerGram());
            } else {
                gramsInputText = getGramsInputText(j);
            }
            this.amountEdit.setText(gramsInputText);
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
        MessagesController messagesController = MessagesController.getInstance(this.currentAccount);
        long sendPaidMessagesStars = messagesController.getSendPaidMessagesStars(this.recipientUser.id);
        this.sendToWallet = messagesController.config.walletPaidMessageRecipientMessageAmountCheck.get() && sendPaidMessagesStars > 0 && (((double) gramNanoAmount) / 1.0E9d) * messagesController.config.tonUsdRate.get() < (((double) sendPaidMessagesStars) / 1000.0d) * ((double) messagesController.starsUsdWithdrawRate1000);
        this.sendButton.setLoading(true);
        this.amountKeyboardSuppressed = true;
        this.pendingKeyboardRequest = false;
        cancelPendingCommentAlert();
        this.queuedTransaction = null;
        gramWallet.send(this.recipientUser, this.recipientAddress, gramNanoAmount, this.comment, this.commentEncrypted ? getPublicKey() : null, (String) null, new Utilities.Callback() { // from class: org.telegram.ui.Components.ChatAttachAlertGramLayout$$ExternalSyntheticLambda31
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$send$27((String) obj);
            }
        }, new Utilities.Callback() { // from class: org.telegram.ui.Components.ChatAttachAlertGramLayout$$ExternalSyntheticLambda32
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$send$28((TL_wallet.walletTransaction) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$send$27(String str) {
        if (this.destroyed || this.parentAlert.isDismissed()) {
            return;
        }
        if ("PASSCODE_FAILED".equalsIgnoreCase(str)) {
            this.sendButton.setLoading(false);
            this.amountKeyboardSuppressed = false;
        } else {
            if (TextUtils.isEmpty(str)) {
                this.parentAlert.lambda$new$0();
                return;
            }
            this.sendButton.setLoading(false);
            this.amountKeyboardSuppressed = false;
            BulletinFactory.global().showForError(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$send$28(TL_wallet.walletTransaction wallettransaction) {
        this.queuedTransaction = wallettransaction;
    }

    public boolean hasQueuedSend() {
        return (this.destroyed || this.queuedTransaction == null) ? false : true;
    }

    public void setSendTransitionProgress(float f) {
        this.recipientView.setAlpha(1.0f - f);
    }

    public AnimatorSet createSendTransition(final Runnable runnable) {
        TL_wallet.walletTransaction wallettransaction;
        if (!this.destroyed && (wallettransaction = this.queuedTransaction) != null && this.sendTransition == null && this.walletSendTransition == null) {
            if (this.sendToWallet) {
                WalletActivity walletActivity = new WalletActivity();
                walletActivity.setCurrentAccount(this.currentAccount);
                if (this.parentAlert.getBaseFragment() == null || !this.parentAlert.getBaseFragment().presentFragment(walletActivity, false, true)) {
                    return null;
                }
                WalletSendTransition walletSendTransition = new WalletSendTransition(this.parentAlert, this.amountInput.getDiamondView(), walletActivity, this.queuedTransaction, new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertGramLayout$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$createSendTransition$29(runnable);
                    }
                });
                this.walletSendTransition = walletSendTransition;
                return walletSendTransition.animator();
            }
            if (wallettransaction.localMessageId != 0 && this.amountInput.getDiamondView().canAnimateFlight() && (this.parentAlert.getBaseFragment() instanceof ChatActivity)) {
                ChatActivity chatActivity = (ChatActivity) this.parentAlert.getBaseFragment();
                if (chatActivity.getCurrentAccount() == this.currentAccount && chatActivity.getDialogId() == this.recipientUser.id && chatActivity.getChatMode() == 0 && chatActivity.getFragmentView() != null && chatActivity.getFragmentView().isAttachedToWindow()) {
                    WalletChatSendTransition walletChatSendTransition = new WalletChatSendTransition(this.parentAlert, this.amountInput.getDiamondView(), chatActivity, this.queuedTransaction, new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertGramLayout$$ExternalSyntheticLambda2
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$createSendTransition$30(runnable);
                        }
                    });
                    this.sendTransition = walletChatSendTransition;
                    return walletChatSendTransition.animator();
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createSendTransition$29(Runnable runnable) {
        if (this.destroyed) {
            return;
        }
        runnable.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createSendTransition$30(Runnable runnable) {
        if (this.destroyed) {
            return;
        }
        runnable.run();
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
        if (!this.layoutShown || !isAttachedToWindow()) {
            setFeeVisibilityProgress(f);
            return;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.feeVisibilityProgress, f);
        this.feeVisibilityAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(320L);
        this.feeVisibilityAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        this.feeVisibilityAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ChatAttachAlertGramLayout$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f$0.lambda$updateFeeVisibility$31(valueAnimator2);
            }
        });
        this.feeVisibilityAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateFeeVisibility$31(ValueAnimator valueAnimator) {
        setFeeVisibilityProgress(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    private void setFeeVisibilityProgress(float f) {
        this.feeVisibilityProgress = f;
        this.feeView.setAlpha(f);
        this.feeView.setVisibility(f > 0.0f ? 0 : 8);
        requestLayout();
    }

    private void updateBalance() {
        GramWallet gramWallet = GramWallet.getInstance(this.currentAccount);
        this.balanceView.setText(LocaleController.formatSpannable(C2807R.string.WalletBalanceAmount, GramWallet.formatGramsBalanceWithUnit(gramWallet.getBalance(), true)));
        this.feeEmulationAvailable = !gramWallet.isGaslessAvailable() && gramWallet.getBalance() >= MessagesController.getInstance(this.currentAccount).config.walletTransferMinNanos.get();
        boolean z = this.hasEnteredAmount | (!TextUtils.isEmpty(this.amountEdit.getText()));
        this.hasEnteredAmount = z;
        updateFeeVisibility(this.feeEmulationAvailable && z);
        long j = this.fee;
        TextView textView = this.feeView;
        if (j >= 0) {
            textView.setText(LocaleController.formatSpannable(C2807R.string.WalletNetworkFeeAmount, GramWallet.formatGramsWithUnit(j)));
        } else {
            textView.setText(LocaleController.formatSpannable(C2807R.string.WalletNetworkFeeAmount, this.feeViewLoading));
        }
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.walletUpdate) {
            boolean z = this.feeEmulationAvailable;
            updateAmount();
            if (z != this.feeEmulationAvailable) {
                loadFee();
            }
        }
    }

    private void suppressAmountKeyboardAfterAuthorization() {
        if (!this.amountKeyboardSuppressed || this.destroyed) {
            return;
        }
        this.pendingKeyboardRequest = false;
        this.amountEdit.setShowSoftInputOnFocus(false);
        this.amountEdit.setFocusable(false);
        this.amountEdit.clearFocus();
        setFocusableInTouchMode(true);
        requestFocus();
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        if (!z) {
            suppressAmountKeyboardAfterAuthorization();
        }
        super.onWindowFocusChanged(z);
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onPause() {
        finishIntroAnimation();
        suppressAmountKeyboardAfterAuthorization();
        super.onPause();
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onShow(ChatAttachAlert.AttachAlertLayout attachAlertLayout) {
        finishIntroAnimation();
        lockPortraitIfNeeded();
        this.layoutShown = false;
        this.amountKeyboardSuppressed = false;
        this.amountEdit.setFocusableInTouchMode(true);
        this.amountEdit.setShowSoftInputOnFocus(true);
        this.pendingKeyboardRequest = false;
        this.panTransitionInProgress = false;
        this.finishTransitionOnLayout = false;
        this.center.setTranslationY(0.0f);
        this.bottomContainer.setTranslationY(0.0f);
        this.recipientView.setTranslationY(0.0f);
        this.recipientView.setAlpha(1.0f);
        this.hasSettledGeometry = false;
        this.parentAlert.actionBar.setTitle(LocaleController.getString(C2807R.string.WalletSendMoneyTo));
        this.parentAlert.actionBar.setDrawGlassTitle(false);
        this.moreItem.setVisibility(0);
        this.amountEdit.clearFocus();
        loadFee();
        float f = this.amountInput.getDiamondView().canAnimateIntro() ? 0.0f : 1.0f;
        this.introRevealProgress = f;
        this.introProgress = f;
        updateIntroGeometry();
        if (this.introProgress < 1.0f) {
            this.amountInput.getDiamondView().whenReady(new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertGramLayout$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.startIntroAnimation();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startIntroAnimation() {
        if (this.destroyed || this.introProgress >= 1.0f || this.introAnimator != null) {
            return;
        }
        SpringAnimation springAnimation = new SpringAnimation(new FloatValueHolder(this.introProgress));
        this.introAnimator = springAnimation;
        springAnimation.setSpring(new SpringForce(1.0f).setDampingRatio(0.55f).setStiffness(65.0f));
        this.introAnimator.setMinimumVisibleChange(0.001f);
        this.introAnimator.addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() { // from class: org.telegram.ui.Components.ChatAttachAlertGramLayout$$ExternalSyntheticLambda34
            @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationUpdateListener
            public final void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f, float f2) {
                this.f$0.lambda$startIntroAnimation$32(dynamicAnimation, f, f2);
            }
        });
        this.introAnimator.addEndListener(new DynamicAnimation.OnAnimationEndListener() { // from class: org.telegram.ui.Components.ChatAttachAlertGramLayout$$ExternalSyntheticLambda35
            @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationEndListener
            public final void onAnimationEnd(DynamicAnimation dynamicAnimation, boolean z, float f, float f2) {
                this.f$0.lambda$startIntroAnimation$33(dynamicAnimation, z, f, f2);
            }
        });
        this.introAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startIntroAnimation$32(DynamicAnimation dynamicAnimation, float f, float f2) {
        this.introProgress = f;
        updateIntroGeometry();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startIntroAnimation$33(DynamicAnimation dynamicAnimation, boolean z, float f, float f2) {
        this.introAnimator = null;
        this.introProgress = 1.0f;
        updateIntroGeometry();
    }

    private void finishIntroAnimation() {
        this.amountInput.getDiamondView().whenReady(null);
        SpringAnimation springAnimation = this.introAnimator;
        if (springAnimation != null) {
            springAnimation.cancel();
        }
        this.introProgress = 1.0f;
        updateIntroGeometry();
    }

    private void updateIntroGeometry() {
        float fMax = Math.max(this.introRevealProgress, Math.max(0.0f, Math.min(1.0f, this.introProgress)));
        this.introRevealProgress = fMax;
        float f = 1.0f - fMax;
        WalletSendEnterAmount.AmountInputView amountInputView = this.amountInput;
        float f2 = this.introProgress;
        amountInputView.setIntroProgress(f2, fMax, this.introAnimator == null && f2 == 1.0f);
        this.amountInput.setTranslationY((((this.center.getHeight() / 2.0f) - this.amountInput.getTop()) - (this.amountInput.getHeight() / 2.0f)) * (1.0f - this.introProgress));
        this.currencyView.setAlpha(this.introRevealProgress);
        this.currencyView.setTranslationY(AndroidUtilities.dp(16.0f) * f);
        this.centerBottomContainer.setAlpha(this.introRevealProgress);
        this.centerBottomContainer.setTranslationY(AndroidUtilities.dp(16.0f) * f);
        this.bottomIntroContainer.setAlpha(this.introRevealProgress);
        this.bottomIntroContainer.setTranslationY(AndroidUtilities.dp(24.0f) * f);
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onShown() {
        this.layoutShown = true;
        post(new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertGramLayout$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onShown$34();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onShown$34() {
        if (!this.layoutShown || this.destroyed) {
            return;
        }
        rememberSettledGeometry();
        if (this.pendingKeyboardRequest) {
            requestAmountKeyboard();
        }
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onMenuItemClick(int i) {
        if (i == 2) {
            WalletActivity.openWalletQRAlert(getContext(), this.currentAccount, this.resourcesProvider);
        } else if (i == 3) {
            openAddCommentAlert();
        }
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public boolean onBackPressed() {
        if (this.parentAlert.sizeNotifierFrameLayout.measureKeyboardHeight() > AndroidUtilities.dp(20.0f)) {
            this.pendingKeyboardRequest = false;
            cancelPendingCommentAlert();
            this.amountEdit.clearFocus();
            AndroidUtilities.hideKeyboard(this.amountEdit);
            return true;
        }
        return super.onBackPressed();
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public boolean shouldRestoreKeyboardOnDismiss() {
        return !this.amountKeyboardSuppressed;
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onHide() {
        finishIntroAnimation();
        restoreOrientation();
        this.parentAlert.actionBar.setDrawGlassTitle(true);
        this.layoutShown = false;
        this.pendingKeyboardRequest = false;
        cancelPendingCommentAlert();
        AlertDialog alertDialog = this.commentDialog;
        if (alertDialog != null) {
            alertDialog.dismiss();
        }
        this.moreItem.setVisibility(8);
        AndroidUtilities.hideKeyboard(this.amountEdit);
        this.amountEdit.clearFocus();
    }

    private void lockPortraitIfNeeded() {
        Activity activityFindActivity;
        if (this.portraitLockedActivity != null || AndroidUtilities.isTablet()) {
            return;
        }
        Point point = AndroidUtilities.displaySize;
        if (Math.min(point.x, point.y) < AndroidUtilities.dp(700.0f) && (activityFindActivity = AndroidUtilities.findActivity(getContext())) != null) {
            try {
                this.previousOrientation = activityFindActivity.getRequestedOrientation();
                activityFindActivity.setRequestedOrientation(1);
                this.portraitLockedActivity = activityFindActivity;
            } catch (Exception e) {
                FileLog.m1040e(e);
            }
        }
    }

    private void restoreOrientation() {
        Activity activity = this.portraitLockedActivity;
        if (activity == null) {
            return;
        }
        try {
            activity.setRequestedOrientation(this.previousOrientation);
        } catch (Exception e) {
            FileLog.m1040e(e);
        }
        this.portraitLockedActivity = null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        this.parentAlert.actionBar.getAlpha();
        updateCenterGeometry();
        if (this.introAnimator != null || this.introProgress < 1.0f) {
            updateIntroGeometry();
        }
        super.dispatchDraw(canvas);
        rememberSettledGeometry();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.finishTransitionOnLayout) {
            this.finishTransitionOnLayout = false;
            this.center.setTranslationY(0.0f);
            this.bottomContainer.setTranslationY(0.0f);
            this.recipientView.setTranslationY(0.0f);
            rememberSettledGeometry();
        } else if (this.panTransitionInProgress) {
            updateKeyboardTransitionPositions();
        }
        updateCenterGeometry();
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public int getButtonsHideOffset() {
        return AndroidUtilities.dp(62.0f);
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public int getListTopPadding() {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.contentContainer.getLayoutParams();
        if (layoutParams == null) {
            return 0;
        }
        return layoutParams.topMargin;
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public int getFirstOffset() {
        return getListTopPadding() + AndroidUtilities.dp(5.0f);
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public int getCurrentItemTop() {
        int top = this.contentContainer.getTop();
        if (top <= 0) {
            top = getListTopPadding();
        }
        return Math.max(0, top - (AndroidUtilities.statusBarHeight + AndroidUtilities.dp(12.0f))) + AndroidUtilities.dp(13.0f);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x006d  */
    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onPreMeasure(int i, int i2) {
        int iDp;
        int iDp2;
        boolean z = this.parentAlert.sizeNotifierFrameLayout.measureKeyboardHeight() > AndroidUtilities.dp(20.0f);
        this.keyboardVisible = z;
        this.occupyNavigationBar = z;
        int iDp3 = z ? 0 : AndroidUtilities.dp(70.0f);
        int iDp4 = AndroidUtilities.dp(92.0f) + Math.round(AndroidUtilities.dp(32.0f) * this.feeVisibilityProgress);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.bottomContainer.getLayoutParams();
        layoutParams.height = iDp4;
        layoutParams.bottomMargin = iDp3;
        if (this.keyboardVisible) {
            iDp = AndroidUtilities.dp(56.0f);
            this.parentAlert.setAllowNestedScroll(false);
        } else if (!AndroidUtilities.isTablet()) {
            Point point = AndroidUtilities.displaySize;
            if (point.x > point.y) {
                iDp = (int) (i2 / 3.5f);
                this.parentAlert.setAllowNestedScroll(true);
            } else {
                iDp = (i2 / 5) * 2;
                this.parentAlert.setAllowNestedScroll(true);
            }
        }
        int iMax = Math.max(0, iDp - AndroidUtilities.dp(1.0f)) + AndroidUtilities.statusBarHeight;
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.contentContainer.getLayoutParams();
        if (layoutParams2.topMargin != iMax) {
            layoutParams2.topMargin = iMax;
            this.contentContainer.setLayoutParams(layoutParams2);
        }
        int iMax2 = Math.max(0, (iMax - AndroidUtilities.statusBarHeight) + AndroidUtilities.dp(4.0f));
        FrameLayout.LayoutParams layoutParams3 = (FrameLayout.LayoutParams) this.recipientView.getLayoutParams();
        if (this.keyboardVisible) {
            iDp2 = ActionBar.getCurrentActionBarHeight() + AndroidUtilities.dp(4.0f);
        } else {
            iDp2 = iMax2 - AndroidUtilities.dp(4.0f);
        }
        int iMax3 = Math.max(0, iDp2);
        if (layoutParams3.topMargin != iMax3) {
            layoutParams3.topMargin = iMax3;
            this.recipientView.setLayoutParams(layoutParams3);
        }
        updateCenterBottom();
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onPanTransitionStart(boolean z, int i) {
        this.panTransitionInProgress = true;
        this.finishTransitionOnLayout = false;
        this.panTransitionOpening = z;
        this.keyboardTransitionProgress = z ? 0.0f : 1.0f;
        this.transitionFromBottomY = this.hasSettledGeometry ? this.settledBottomY : getBottomYOnScreen();
        this.transitionFromRecipientY = this.hasSettledGeometry ? this.settledRecipientY : getScreenY(this.recipientView);
        this.transitionToBottomY = getBottomYOnScreen() - this.bottomContainer.getTranslationY();
        this.transitionToRecipientY = getScreenY(this.recipientView) - this.recipientView.getTranslationY();
        updateKeyboardTransitionPositions();
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onPanTransitionEnd() {
        if (this.panTransitionInProgress) {
            this.panTransitionInProgress = false;
            this.bottomContainer.setTranslationY(this.transitionToBottomY - (getBottomYOnScreen() - this.bottomContainer.getTranslationY()));
            this.recipientView.setTranslationY(this.transitionToRecipientY - (getScreenY(this.recipientView) - this.recipientView.getTranslationY()));
            this.finishTransitionOnLayout = true;
            requestLayout();
        }
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onContainerTranslationUpdated(float f, float f2, boolean z) {
        this.canvasPanTranslationY = f;
        this.keyboardTransitionProgress = f2;
        updateKeyboardTransitionPositions();
    }

    private void rememberSettledGeometry() {
        if (!this.layoutShown || this.panTransitionInProgress || this.finishTransitionOnLayout || !isAttachedToWindow() || Math.abs(getTranslationY()) >= 0.5f || this.center.getHeight() <= 0 || this.bottomContainer.getHeight() <= 0) {
            return;
        }
        this.settledBottomY = getBottomYOnScreen();
        this.settledRecipientY = getScreenY(this.recipientView);
        this.hasSettledGeometry = true;
    }

    private void updateCenterGeometry() {
        if (this.center.getHeight() <= 0 || this.bottomContainer.getHeight() <= 0) {
            return;
        }
        float screenY = getScreenY(this.contentContainer);
        float fMax = this.recipientView.getVisibility() == 0 ? Math.max(screenY, getScreenY(this.recipientView) + this.recipientView.getPivotY() + ((this.recipientView.getContentBottom() - this.recipientView.getPivotY()) * this.recipientView.getScaleY())) : screenY;
        float fMax2 = Math.max(0.0f, Math.min(Math.min(Math.min((screenY + this.contentContainer.getHeight()) - ((FrameLayout.LayoutParams) this.bottomContainer.getLayoutParams()).bottomMargin, getVisibleTopOnScreen(this.balanceView)), getVisibleTopOnScreen(this.feeView)), getVisibleTopOnScreen(this.sendButton)) - fMax);
        float fMin = Math.min(1.0f, Math.max(0.0f, fMax2 - (Math.min(AndroidUtilities.dp(12.0f), fMax2 / 4.0f) * 2.0f)) / this.center.getHeight());
        this.center.setPivotX(r3.getWidth() / 2.0f);
        this.center.setPivotY(r3.getHeight() / 2.0f);
        this.center.setScaleX(fMin);
        this.center.setScaleY(fMin);
        this.center.setTranslationY((fMax + (fMax2 / 2.0f)) - ((getScreenY(this.center) - this.center.getTranslationY()) + (this.center.getHeight() / 2.0f)));
    }

    private float getVisibleTopOnScreen(View view) {
        if (view.getVisibility() != 0 || view.getAlpha() <= 0.0f) {
            return Float.POSITIVE_INFINITY;
        }
        return (getScreenY(view) - this.bottomIntroContainer.getTranslationY()) + (view.getPivotY() * (1.0f - view.getScaleY()));
    }

    private float getBottomYOnScreen() {
        return getScreenY(this.bottomContainer);
    }

    private float getScreenY(View view) {
        float y = 0.0f;
        while (view.getParent() instanceof View) {
            View view2 = (View) view.getParent();
            y += view.getY() - view2.getScrollY();
            view = view2;
        }
        view.getLocationOnScreen(this.screenLocation);
        return ((y + this.screenLocation[1]) + this.canvasPanTranslationY) - this.parentAlert.getGramSendExitTranslationY();
    }

    private void updateKeyboardTransitionPositions() {
        if (!this.panTransitionInProgress || this.center.getHeight() <= 0 || this.bottomContainer.getHeight() <= 0) {
            return;
        }
        boolean z = this.panTransitionOpening;
        float f = this.keyboardTransitionProgress;
        if (!z) {
            f = 1.0f - f;
        }
        float f2 = this.transitionFromBottomY;
        float f3 = f2 + ((this.transitionToBottomY - f2) * f);
        float f4 = this.transitionFromRecipientY;
        float f5 = f4 + ((this.transitionToRecipientY - f4) * f);
        this.bottomContainer.setTranslationY(f3 - (getBottomYOnScreen() - this.bottomContainer.getTranslationY()));
        this.recipientView.setTranslationY(f5 - (getScreenY(this.recipientView) - this.recipientView.getTranslationY()));
        updateCenterGeometry();
    }

    @Override // android.view.View
    public void setTranslationY(float f) {
        super.setTranslationY(f);
        this.parentAlert.getSheetContainer().invalidate();
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public int getCustomBackground() {
        return getThemedColor(Theme.key_windowBackgroundWhite);
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onDestroy() {
        if (this.destroyed) {
            return;
        }
        this.destroyed = true;
        finishIntroAnimation();
        WalletChatSendTransition walletChatSendTransition = this.sendTransition;
        if (walletChatSendTransition != null) {
            walletChatSendTransition.cancel();
            this.sendTransition = null;
        }
        WalletSendTransition walletSendTransition = this.walletSendTransition;
        if (walletSendTransition != null) {
            walletSendTransition.cancel();
            this.walletSendTransition = null;
        }
        ValueAnimator valueAnimator = this.feeVisibilityAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.feeVisibilityAnimator = null;
        }
        restoreOrientation();
        this.centerBottom.animate().cancel();
        this.tapToSetAmount.animate().cancel();
        this.insufficientFundsView.animate().cancel();
        this.sendButton.animate().cancel();
        this.balanceView.animate().cancel();
        this.feeView.animate().cancel();
        cancelPendingCommentAlert();
        AlertDialog alertDialog = this.commentDialog;
        if (alertDialog != null) {
            alertDialog.dismiss();
        }
        Runnable runnable = this.cancelFeeLoading;
        if (runnable != null) {
            runnable.run();
            this.cancelFeeLoading = null;
        }
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.walletUpdate);
        this.parentAlert.actionBar.createMenu().removeView(this.moreItem);
        AndroidUtilities.hideKeyboard(this.amountEdit);
    }
}
