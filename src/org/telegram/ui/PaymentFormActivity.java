package org.telegram.ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.telephony.TelephonyManager;
import android.text.Editable;
import android.text.InputFilter;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.method.PasswordTransformationMethod;
import android.text.style.ClickableSpan;
import android.util.Property;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.CookieManager;
import android.webkit.JavascriptInterface;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.Keep;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.FloatValueHolder;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import com.android.dx.io.Opcodes;
import com.google.android.gms.cast.CastStatusCodes;
import com.google.android.gms.cast.MediaTrack;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.wallet.AutoResolveHelper;
import com.google.android.gms.wallet.IsReadyToPayRequest;
import com.google.android.gms.wallet.PaymentData;
import com.google.android.gms.wallet.PaymentDataRequest;
import com.google.android.gms.wallet.PaymentsClient;
import com.google.android.gms.wallet.Wallet;
import com.google.android.material.timepicker.TimeModel;
import com.stripe.android.Stripe;
import com.stripe.android.TokenCallback;
import com.stripe.android.exception.APIConnectionException;
import com.stripe.android.exception.APIException;
import com.stripe.android.model.Card;
import com.stripe.android.model.Token;
import com.stripe.android.net.TokenParser;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.Optional;
import java.util.Scanner;
import kotlin.text.Typography;
import okhttp3.internal.url._UrlKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.mvel2.MVEL;
import org.telegram.PhoneFormat.PhoneFormat;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SRPHelper;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.browser.Browser;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_account;
import org.telegram.tgnet.tl.TL_update;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.ActionBarMenu;
import org.telegram.ui.ActionBar.ActionBarMenuItem;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.BottomSheet;
import org.telegram.ui.ActionBar.INavigationLayout;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.ActionBar.ThemeDescription;
import org.telegram.ui.Cells.EditTextSettingsCell;
import org.telegram.ui.Cells.HeaderCell;
import org.telegram.ui.Cells.PaymentInfoCell;
import org.telegram.ui.Cells.RadioCell;
import org.telegram.ui.Cells.RecurrentPaymentsAcceptCell;
import org.telegram.ui.Cells.ShadowSectionCell;
import org.telegram.ui.Cells.TextCheckCell;
import org.telegram.ui.Cells.TextDetailSettingsCell;
import org.telegram.ui.Cells.TextInfoPrivacyCell;
import org.telegram.ui.Cells.TextPriceCell;
import org.telegram.ui.Cells.TextSettingsCell;
import org.telegram.ui.Components.AlertsCreator;
import org.telegram.ui.Components.Bulletin;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.ContextProgressView;
import org.telegram.ui.Components.EditTextBoldCursor;
import org.telegram.ui.Components.EmbedBottomSheet$$ExternalSyntheticLambda6;
import org.telegram.ui.Components.HintEditText;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.TypefaceSpan;
import org.telegram.ui.Components.URLSpanNoUnderline;
import org.telegram.ui.CountrySelectActivity;
import org.telegram.ui.Stars.StarsIntroActivity;

/* JADX INFO: loaded from: classes6.dex */
public class PaymentFormActivity extends BaseFragment implements NotificationCenter.NotificationCenterDelegate {
    private boolean allowUnregistered;
    private TLRPC.User botUser;
    private TextInfoPrivacyCell[] bottomCell;
    private BottomFrameLayout bottomLayout;
    private boolean canceled;
    private String cardName;
    private TextCheckCell checkCell1;
    private EditTextSettingsCell codeFieldCell;
    private HashMap<String, String> codesMap;
    private ArrayList<String> countriesArray;
    private HashMap<String, String> countriesMap;
    private CountrySelectActivity.Country country;
    private String countryName;
    private String currentBotName;
    private String currentItemName;
    private TL_account.Password currentPassword;
    private int currentStep;
    private Utilities.Callback<TLRPC.payments_PaymentResult> customAnyResultReceiver;
    private Utilities.CallbackReturn<TLRPC.TL_error, Boolean> customErrorReceiver;
    private Utilities.Callback<TLRPC.TL_payments_paymentResult> customResultReceiver;
    private PaymentFormActivityDelegate delegate;
    private TextDetailSettingsCell[] detailSettingsCell;
    private ArrayList<View> dividers;
    private ActionBarMenuItem doneItem;
    private AnimatorSet doneItemAnimation;
    private boolean donePressed;
    private int emailCodeLength;
    private FrameLayout googlePayButton;
    private FrameLayout googlePayContainer;
    private String googlePayCountryCode;
    private TLRPC.TL_inputPaymentCredentialsGooglePay googlePayCredentials;
    private JSONObject googlePayParameters;
    private String googlePayPublicKey;
    private HeaderCell[] headerCell;
    private boolean ignoreOnCardChange;
    private boolean ignoreOnPhoneChange;
    private boolean ignoreOnTextChange;
    private boolean initGooglePay;
    private EditTextBoldCursor[] inputFields;
    private TLRPC.InputInvoice invoiceInput;
    private String invoiceSlug;
    private InvoiceStatus invoiceStatus;
    private boolean isCheckoutPreview;
    private boolean isWebView;
    private LinearLayout linearLayout2;
    private boolean loadingPasswordInfo;
    private MessageObject messageObject;
    private boolean needPayAfterTransition;
    private boolean need_card_country;
    private boolean need_card_name;
    private boolean need_card_postcode;
    private BaseFragment parentFragment;
    private PaymentFormActivity passwordFragment;
    private boolean passwordOk;
    private TextView payTextView;
    private TLRPC.PaymentForm paymentForm;
    private PaymentFormCallback paymentFormCallback;
    private TLRPC.TL_paymentFormMethod paymentFormMethod;
    private PaymentInfoCell paymentInfoCell;
    private String paymentJson;
    private TLRPC.PaymentReceipt paymentReceipt;
    private boolean paymentStatusSent;
    private PaymentsClient paymentsClient;
    private HashMap<String, String> phoneFormatMap;
    private ArrayList<TLRPC.TL_labeledPrice> prices;
    private ContextProgressView progressView;
    private ContextProgressView progressViewButton;
    private String providerApiKey;
    private RadioCell[] radioCells;
    private RecurrentPaymentsAcceptCell recurrentAcceptCell;
    private boolean recurrentAccepted;
    private TLRPC.TL_payments_validatedRequestedInfo requestedInfo;
    private Theme.ResourcesProvider resourcesProvider;
    private boolean saveCardInfo;
    private boolean saveShippingInfo;
    private TLRPC.TL_paymentSavedCredentialsCard savedCredentialsCard;
    private ScrollView scrollView;
    private ShadowSectionCell[] sectionCell;
    private TextSettingsCell[] settingsCell;
    private float shiftDp;
    private TLRPC.TL_shippingOption shippingOption;
    private Runnable shortPollRunnable;
    private boolean shouldNavigateBack;
    private boolean swipeBackEnabled;
    private TextView textView;
    private Long tipAmount;
    private LinearLayout tipLayout;
    private TextPriceCell totalCell;
    private String[] totalPrice;
    private String totalPriceDecimal;
    private TLRPC.TL_payments_validateRequestedInfo validateRequest;
    private boolean waitingForEmail;
    private WebView webView;
    private String webViewUrl;
    private boolean webviewLoading;
    private static final List<String> WEBVIEW_PROTOCOLS = Arrays.asList("http", "https");
    private static final List<String> BLACKLISTED_PROTOCOLS = Collections.singletonList("tg");

    public enum InvoiceStatus {
        PAID,
        CANCELLED,
        PENDING,
        FAILED
    }

    public interface PaymentFormActivityDelegate {
        default void currentPasswordUpdated(TL_account.Password password) {
        }

        default void didSelectNewAddress(TLRPC.TL_payments_validateRequestedInfo tL_payments_validateRequestedInfo) {
        }

        default boolean didSelectNewCard(String str, String str2, boolean z, TLRPC.TL_inputPaymentCredentialsGooglePay tL_inputPaymentCredentialsGooglePay, TLRPC.TL_paymentSavedCredentialsCard tL_paymentSavedCredentialsCard) {
            return false;
        }

        default void onFragmentDestroyed() {
        }
    }

    public interface PaymentFormCallback {
        void onInvoiceStatusChanged(InvoiceStatus invoiceStatus);
    }

    /* JADX INFO: renamed from: $r8$lambda$-n8ObnsWdeFAzl5V43M-Atxv73w, reason: not valid java name */
    public static /* synthetic */ void m17647$r8$lambda$n8ObnsWdeFAzl5V43MAtxv73w(TLObject tLObject, TLRPC.TL_error tL_error) {
    }

    public static /* synthetic */ void $r8$lambda$N5EBCheEeuvSVEmlqehvGd50Iaw(TLObject tLObject, TLRPC.TL_error tL_error) {
    }

    public class TelegramWebviewProxy {
        private TelegramWebviewProxy() {
        }

        @JavascriptInterface
        @Keep
        public void postEvent(final String str, final String str2) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PaymentFormActivity$TelegramWebviewProxy$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$postEvent$0(str, str2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$postEvent$0(String str, String str2) {
            if (PaymentFormActivity.this.getParentActivity() != null && str.equals("payment_form_submit")) {
                try {
                    JSONObject jSONObject = new JSONObject(str2);
                    JSONObject jSONObject2 = jSONObject.getJSONObject("credentials");
                    PaymentFormActivity.this.paymentJson = jSONObject2.toString();
                    PaymentFormActivity.this.cardName = jSONObject.getString("title");
                } catch (Throwable th) {
                    PaymentFormActivity.this.paymentJson = str2;
                    FileLog.m992e(th);
                }
                PaymentFormActivity.this.goToNextStep();
            }
        }
    }

    public class LinkSpan extends ClickableSpan {
        public LinkSpan() {
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            super.updateDrawState(textPaint);
            textPaint.setUnderlineText(false);
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View view) {
            PaymentFormActivity paymentFormActivity = PaymentFormActivity.this;
            paymentFormActivity.presentFragment(new TwoStepVerificationSetupActivity(6, paymentFormActivity.currentPassword));
        }
    }

    public PaymentFormActivity(TLRPC.PaymentReceipt paymentReceipt) {
        this.countriesArray = new ArrayList<>();
        this.countriesMap = new HashMap<>();
        this.codesMap = new HashMap<>();
        this.phoneFormatMap = new HashMap<>();
        this.swipeBackEnabled = true;
        this.headerCell = new HeaderCell[3];
        this.dividers = new ArrayList<>();
        this.sectionCell = new ShadowSectionCell[3];
        this.bottomCell = new TextInfoPrivacyCell[3];
        this.settingsCell = new TextSettingsCell[2];
        this.detailSettingsCell = new TextDetailSettingsCell[7];
        this.shiftDp = -4.5f;
        this.emailCodeLength = 6;
        this.currentStep = 5;
        TLRPC.PaymentForm paymentForm = new TLRPC.PaymentForm();
        this.paymentForm = paymentForm;
        this.paymentReceipt = paymentReceipt;
        paymentForm.bot_id = paymentReceipt.bot_id;
        paymentForm.invoice = paymentReceipt.invoice;
        paymentForm.provider_id = paymentReceipt.provider_id;
        paymentForm.users = paymentReceipt.users;
        this.shippingOption = paymentReceipt.shipping;
        long j = paymentReceipt.tip_amount;
        if (j != 0) {
            this.tipAmount = Long.valueOf(j);
        }
        TLRPC.User user = getMessagesController().getUser(Long.valueOf(paymentReceipt.bot_id));
        this.botUser = user;
        if (user != null) {
            this.currentBotName = user.first_name;
        } else {
            this.currentBotName = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        this.currentItemName = paymentReceipt.title;
        if (paymentReceipt.info != null) {
            this.validateRequest = new TLRPC.TL_payments_validateRequestedInfo();
            if (this.messageObject != null) {
                TLRPC.TL_inputInvoiceMessage tL_inputInvoiceMessage = new TLRPC.TL_inputInvoiceMessage();
                tL_inputInvoiceMessage.peer = getMessagesController().getInputPeer(paymentReceipt.bot_id);
                this.validateRequest.invoice = tL_inputInvoiceMessage;
            } else {
                TLRPC.TL_inputInvoiceSlug tL_inputInvoiceSlug = new TLRPC.TL_inputInvoiceSlug();
                tL_inputInvoiceSlug.slug = this.invoiceSlug;
                this.validateRequest.invoice = tL_inputInvoiceSlug;
            }
            this.validateRequest.info = paymentReceipt.info;
        }
        this.cardName = paymentReceipt.credentials_title;
    }

    public PaymentFormActivity(TLRPC.PaymentForm paymentForm, String str, BaseFragment baseFragment) {
        this(paymentForm, (MessageObject) null, str, baseFragment);
    }

    public PaymentFormActivity(TLRPC.PaymentForm paymentForm, TLRPC.InputInvoice inputInvoice, BaseFragment baseFragment) {
        this(inputInvoice, paymentForm, null, null, 4, null, null, null, null, null, null, false, null, baseFragment, false);
        this.isCheckoutPreview = true;
    }

    public PaymentFormActivity(TLRPC.PaymentForm paymentForm, TLRPC.InputInvoice inputInvoice, boolean z, BaseFragment baseFragment) {
        this(inputInvoice, paymentForm, null, null, 4, null, null, null, null, null, null, false, null, baseFragment, z);
        this.isCheckoutPreview = z;
    }

    public PaymentFormActivity(TLRPC.PaymentForm paymentForm, MessageObject messageObject, BaseFragment baseFragment) {
        this(paymentForm, messageObject, (String) null, baseFragment);
    }

    public PaymentFormActivity(TLRPC.PaymentForm paymentForm, MessageObject messageObject, String str, BaseFragment baseFragment) {
        this.countriesArray = new ArrayList<>();
        this.countriesMap = new HashMap<>();
        this.codesMap = new HashMap<>();
        this.phoneFormatMap = new HashMap<>();
        this.swipeBackEnabled = true;
        this.headerCell = new HeaderCell[3];
        this.dividers = new ArrayList<>();
        this.sectionCell = new ShadowSectionCell[3];
        this.bottomCell = new TextInfoPrivacyCell[3];
        this.settingsCell = new TextSettingsCell[2];
        this.detailSettingsCell = new TextDetailSettingsCell[7];
        this.shiftDp = -4.5f;
        this.emailCodeLength = 6;
        this.isCheckoutPreview = true;
        init(null, paymentForm, messageObject, str, 4, null, null, null, null, null, null, false, null, baseFragment, false);
    }

    private PaymentFormActivity(TLRPC.InputInvoice inputInvoice, TLRPC.PaymentForm paymentForm, MessageObject messageObject, String str, int i, TLRPC.TL_payments_validatedRequestedInfo tL_payments_validatedRequestedInfo, TLRPC.TL_shippingOption tL_shippingOption, Long l, String str2, String str3, TLRPC.TL_payments_validateRequestedInfo tL_payments_validateRequestedInfo, boolean z, TLRPC.TL_inputPaymentCredentialsGooglePay tL_inputPaymentCredentialsGooglePay, BaseFragment baseFragment, boolean z2) {
        this.countriesArray = new ArrayList<>();
        this.countriesMap = new HashMap<>();
        this.codesMap = new HashMap<>();
        this.phoneFormatMap = new HashMap<>();
        this.swipeBackEnabled = true;
        this.headerCell = new HeaderCell[3];
        this.dividers = new ArrayList<>();
        this.sectionCell = new ShadowSectionCell[3];
        this.bottomCell = new TextInfoPrivacyCell[3];
        this.settingsCell = new TextSettingsCell[2];
        this.detailSettingsCell = new TextDetailSettingsCell[7];
        this.shiftDp = -4.5f;
        this.emailCodeLength = 6;
        init(inputInvoice, paymentForm, messageObject, str, i, tL_payments_validatedRequestedInfo, tL_shippingOption, l, str2, str3, tL_payments_validateRequestedInfo, z, tL_inputPaymentCredentialsGooglePay, baseFragment, z2);
    }

    public void setPaymentFormCallback(PaymentFormCallback paymentFormCallback) {
        this.paymentFormCallback = paymentFormCallback;
    }

    private void setCurrentPassword(TL_account.Password password) {
        if (password != null && password.has_password) {
            if (getParentActivity() == null) {
                return;
            }
            goToNextStep();
        } else {
            this.currentPassword = password;
            this.waitingForEmail = (password == null || TextUtils.isEmpty(password.email_unconfirmed_pattern)) ? false : true;
            updatePasswordFields();
        }
    }

    private void setDelegate(PaymentFormActivityDelegate paymentFormActivityDelegate) {
        this.delegate = paymentFormActivityDelegate;
    }

    public void setResourcesProvider(Theme.ResourcesProvider resourcesProvider) {
        this.resourcesProvider = resourcesProvider;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public Theme.ResourcesProvider getResourceProvider() {
        return this.resourcesProvider;
    }

    private void init(TLRPC.InputInvoice inputInvoice, TLRPC.PaymentForm paymentForm, MessageObject messageObject, String str, int i, TLRPC.TL_payments_validatedRequestedInfo tL_payments_validatedRequestedInfo, TLRPC.TL_shippingOption tL_shippingOption, Long l, String str2, String str3, TLRPC.TL_payments_validateRequestedInfo tL_payments_validateRequestedInfo, boolean z, TLRPC.TL_inputPaymentCredentialsGooglePay tL_inputPaymentCredentialsGooglePay, BaseFragment baseFragment, boolean z2) {
        if (baseFragment != null) {
            this.currentAccount = baseFragment.getCurrentAccount();
        }
        this.currentStep = i;
        this.parentFragment = baseFragment;
        this.paymentJson = str2;
        this.googlePayCredentials = tL_inputPaymentCredentialsGooglePay;
        this.requestedInfo = tL_payments_validatedRequestedInfo;
        this.paymentForm = paymentForm;
        this.shippingOption = tL_shippingOption;
        this.tipAmount = l;
        this.messageObject = messageObject;
        this.invoiceSlug = str;
        this.invoiceInput = inputInvoice;
        this.saveCardInfo = z;
        this.allowUnregistered = z2;
        this.isWebView = ("stripe".equals(paymentForm.native_provider) || "smartglocal".equals(this.paymentForm.native_provider)) ? false : true;
        TLRPC.User user = getMessagesController().getUser(Long.valueOf(paymentForm.bot_id));
        this.botUser = user;
        if (user != null) {
            this.currentBotName = user.first_name;
        } else {
            this.currentBotName = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        this.currentItemName = paymentForm.title;
        this.validateRequest = tL_payments_validateRequestedInfo;
        this.saveShippingInfo = true;
        if (z || this.currentStep == 4) {
            this.saveCardInfo = z;
        } else {
            this.saveCardInfo = !this.paymentForm.saved_credentials.isEmpty();
        }
        if (str3 == null) {
            if (this.paymentForm.saved_credentials.isEmpty()) {
                return;
            }
            TLRPC.TL_paymentSavedCredentialsCard tL_paymentSavedCredentialsCard = this.paymentForm.saved_credentials.get(0);
            this.savedCredentialsCard = tL_paymentSavedCredentialsCard;
            this.cardName = tL_paymentSavedCredentialsCard.title;
            return;
        }
        this.cardName = str3;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        AndroidUtilities.requestAdjustResize(getParentActivity(), this.classGuid);
        try {
            int i = this.currentStep;
            if ((i == 2 || i == 6) && !this.paymentForm.invoice.test) {
                getParentActivity().getWindow().setFlags(8192, 8192);
                AndroidUtilities.logFlagSecure();
                return;
            }
            if (SharedConfig.passcodeHash.length() != 0 && !SharedConfig.allowScreenCapture) {
                return;
            }
            getParentActivity().getWindow().clearFlags(8192);
            AndroidUtilities.logFlagSecure();
        } catch (Throwable th) {
            FileLog.m992e(th);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x03d3  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x03f3  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0413  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0435  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x046b  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x048c  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x04ad  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x04ce  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x04fd  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x0573  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x05e9  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x0727  */
    /* JADX WARN: Removed duplicated region for block: B:354:0x0b4a  */
    /* JADX WARN: Removed duplicated region for block: B:370:0x0ba0  */
    /* JADX WARN: Removed duplicated region for block: B:372:0x0baf  */
    /* JADX WARN: Removed duplicated region for block: B:373:0x0bbc  */
    /* JADX WARN: Removed duplicated region for block: B:378:0x0bde  */
    /* JADX WARN: Removed duplicated region for block: B:379:0x0be0  */
    /* JADX WARN: Removed duplicated region for block: B:382:0x0c0c  */
    /* JADX WARN: Removed duplicated region for block: B:383:0x0c26  */
    /* JADX WARN: Removed duplicated region for block: B:393:0x0cc7  */
    /* JADX WARN: Removed duplicated region for block: B:458:0x0f79  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0300  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0304  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0327  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x032f  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x038f  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x03bd  */
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
    @Override // org.telegram.ui.ActionBar.BaseFragment
    @SuppressLint({"SetJavaScriptEnabled", "AddJavascriptInterface"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public View createView(Context context) {
        int i;
        char c2;
        TLRPC.PaymentForm paymentForm;
        SpannableStringBuilder spannableStringBuilder;
        TLRPC.PaymentForm paymentForm2;
        TLRPC.TL_paymentRequestedInfo tL_paymentRequestedInfo;
        TLRPC.TL_paymentRequestedInfo tL_paymentRequestedInfo2;
        final long jLongValue;
        int i2;
        TLRPC.TL_paymentRequestedInfo tL_paymentRequestedInfo3;
        String str;
        TelephonyManager telephonyManager;
        ViewGroup frameLayout;
        int i3;
        int i4;
        TLRPC.TL_postAddress tL_postAddress;
        TLRPC.TL_postAddress tL_postAddress2;
        TLRPC.TL_postAddress tL_postAddress3;
        TLRPC.TL_postAddress tL_postAddress4;
        TLRPC.TL_postAddress tL_postAddress5;
        TLRPC.TL_postAddress tL_postAddress6;
        String str2;
        String str3;
        BufferedReader bufferedReader;
        switch (this.currentStep) {
            case 0:
                this.actionBar.setTitle(LocaleController.getString(C2665R.string.PaymentShippingInfo));
                break;
            case 1:
                this.actionBar.setTitle(LocaleController.getString(C2665R.string.PaymentShippingMethod));
                break;
            case 2:
            case 3:
                TLRPC.TL_paymentFormMethod tL_paymentFormMethod = this.paymentFormMethod;
                if (tL_paymentFormMethod != null && !TextUtils.isEmpty(tL_paymentFormMethod.title)) {
                    this.actionBar.setTitle(this.paymentFormMethod.title);
                } else {
                    this.actionBar.setTitle(LocaleController.getString(C2665R.string.PaymentCardInfo));
                }
                break;
            case 4:
                boolean z = this.paymentForm.invoice.test;
                ActionBar actionBar = this.actionBar;
                if (!z) {
                    actionBar.setTitle(LocaleController.getString(C2665R.string.PaymentCheckout));
                } else {
                    actionBar.setTitle("Test " + LocaleController.getString(C2665R.string.PaymentCheckout));
                }
                break;
            case 5:
                boolean z2 = this.paymentForm.invoice.test;
                ActionBar actionBar2 = this.actionBar;
                if (!z2) {
                    actionBar2.setTitle(LocaleController.getString(C2665R.string.PaymentReceipt));
                } else {
                    actionBar2.setTitle("Test " + LocaleController.getString(C2665R.string.PaymentReceipt));
                }
                break;
            case 6:
                this.actionBar.setTitle(LocaleController.getString(C2665R.string.PaymentPassword));
                break;
        }
        this.actionBar.setBackButtonImage(C2665R.drawable.ic_ab_back);
        this.actionBar.setAllowOverlayTitle(true);
        this.actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.PaymentFormActivity.1
            @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i5) {
                if (i5 == -1) {
                    if (PaymentFormActivity.this.donePressed) {
                        return;
                    }
                    PaymentFormActivity.this.finishFragment();
                    return;
                }
                if (i5 != 1 || PaymentFormActivity.this.donePressed) {
                    return;
                }
                if (PaymentFormActivity.this.currentStep != 3) {
                    AndroidUtilities.hideKeyboard(PaymentFormActivity.this.getParentActivity().getCurrentFocus());
                }
                int i6 = PaymentFormActivity.this.currentStep;
                if (i6 == 0) {
                    PaymentFormActivity.this.setDonePressed(true);
                    PaymentFormActivity.this.sendForm();
                    return;
                }
                int i7 = 0;
                if (i6 == 1) {
                    while (true) {
                        if (i7 >= PaymentFormActivity.this.radioCells.length) {
                            break;
                        }
                        if (PaymentFormActivity.this.radioCells[i7].isChecked()) {
                            PaymentFormActivity paymentFormActivity = PaymentFormActivity.this;
                            paymentFormActivity.shippingOption = paymentFormActivity.requestedInfo.shipping_options.get(i7);
                            break;
                        }
                        i7++;
                    }
                    PaymentFormActivity.this.goToNextStep();
                    return;
                }
                if (i6 == 2) {
                    PaymentFormActivity.this.sendCardData();
                } else if (i6 == 3) {
                    PaymentFormActivity.this.checkPassword();
                } else {
                    if (i6 != 6) {
                        return;
                    }
                    PaymentFormActivity.this.sendSavePassword(false);
                }
            }
        });
        ActionBarMenu actionBarMenuCreateMenu = this.actionBar.createMenu();
        int i5 = this.currentStep;
        int i6 = 6;
        int i7 = 3;
        if (i5 == 0 || i5 == 1 || i5 == 2 || i5 == 3 || i5 == 4 || i5 == 6) {
            this.doneItem = actionBarMenuCreateMenu.addItemWithWidth(1, C2665R.drawable.ic_ab_done, AndroidUtilities.dp(56.0f), LocaleController.getString(C2665R.string.Done));
            ContextProgressView contextProgressView = new ContextProgressView(context, 1);
            this.progressView = contextProgressView;
            contextProgressView.setAlpha(0.0f);
            this.progressView.setScaleX(0.1f);
            this.progressView.setScaleY(0.1f);
            this.progressView.setVisibility(4);
            this.doneItem.addView(this.progressView, LayoutHelper.createFrame(-1, -1.0f));
        }
        FrameLayout frameLayout2 = new FrameLayout(context);
        this.fragmentView = frameLayout2;
        frameLayout2.setBackgroundColor(getThemedColor(Theme.key_windowBackgroundGray));
        ScrollView scrollView = new ScrollView(context);
        this.scrollView = scrollView;
        scrollView.setFillViewport(true);
        AndroidUtilities.setScrollViewEdgeEffectColor(this.scrollView, getThemedColor(Theme.key_actionBarDefault));
        frameLayout2.addView(this.scrollView, LayoutHelper.createFrame(-1, -1.0f, 51, 0.0f, 0.0f, 0.0f, this.currentStep == 4 ? 48.0f : 0.0f));
        LinearLayout linearLayout = new LinearLayout(context);
        this.linearLayout2 = linearLayout;
        linearLayout.setOrientation(1);
        this.linearLayout2.setClipChildren(false);
        this.scrollView.addView(this.linearLayout2, new FrameLayout.LayoutParams(-1, -2));
        int i8 = this.currentStep;
        final String name = _UrlKt.FRAGMENT_ENCODE_SET;
        int i9 = 1;
        int i10 = 8;
        if (i8 == 0) {
            HashMap map = new HashMap();
            HashMap map2 = new HashMap();
            try {
                bufferedReader = new BufferedReader(new InputStreamReader(context.getResources().getAssets().open("countries.txt")));
            } catch (Exception e) {
                FileLog.m992e(e);
            }
            while (true) {
                String line = bufferedReader.readLine();
                if (line != null) {
                    String[] strArrSplit = line.split(";");
                    this.countriesArray.add(0, strArrSplit[2]);
                    this.countriesMap.put(strArrSplit[2], strArrSplit[0]);
                    this.codesMap.put(strArrSplit[0], strArrSplit[2]);
                    map2.put(strArrSplit[1], strArrSplit[2]);
                    if (strArrSplit.length > 3) {
                        this.phoneFormatMap.put(strArrSplit[0], strArrSplit[3]);
                    }
                    map.put(strArrSplit[1], strArrSplit[2]);
                } else {
                    bufferedReader.close();
                }
                Collections.sort(this.countriesArray, new PassportActivity$$ExternalSyntheticLambda8());
                int i11 = 10;
                this.inputFields = new EditTextBoldCursor[10];
                int i12 = 0;
                while (i12 < i11) {
                    if (i12 == 0) {
                        this.headerCell[0] = new HeaderCell(context, this.resourcesProvider);
                        this.headerCell[0].setBackgroundColor(getThemedColor(Theme.key_windowBackgroundWhite));
                        this.headerCell[0].setText(LocaleController.getString(C2665R.string.PaymentShippingAddress));
                        this.linearLayout2.addView(this.headerCell[0], LayoutHelper.createLinear(-1, -2));
                    } else if (i12 == i6) {
                        this.sectionCell[0] = new ShadowSectionCell(context, this.resourcesProvider);
                        this.linearLayout2.addView(this.sectionCell[0], LayoutHelper.createLinear(-1, -2));
                        this.headerCell[i9] = new HeaderCell(context, this.resourcesProvider);
                        this.headerCell[i9].setBackgroundColor(getThemedColor(Theme.key_windowBackgroundWhite));
                        this.headerCell[i9].setText(LocaleController.getString(C2665R.string.PaymentShippingReceiver));
                        this.linearLayout2.addView(this.headerCell[i9], LayoutHelper.createLinear(-1, -2));
                    }
                    if (i12 == i10) {
                        LinearLayout linearLayout2 = new LinearLayout(context);
                        linearLayout2.setClipChildren(false);
                        linearLayout2.setOrientation(0);
                        this.linearLayout2.addView(linearLayout2, LayoutHelper.createLinear(-1, 50));
                        linearLayout2.setBackgroundColor(getThemedColor(Theme.key_windowBackgroundWhite));
                        frameLayout = linearLayout2;
                    } else if (i12 == 9) {
                        frameLayout = (ViewGroup) this.inputFields[i10].getParent();
                    } else {
                        frameLayout = new FrameLayout(context);
                        frameLayout.setClipChildren(false);
                        this.linearLayout2.addView(frameLayout, LayoutHelper.createLinear(-1, 50));
                        int i13 = Theme.key_windowBackgroundWhite;
                        frameLayout.setBackgroundColor(getThemedColor(i13));
                        int i14 = i12 != 5 ? i9 : 0;
                        if (i14 == 0) {
                            i3 = i6;
                            if (i14 != 0) {
                                View view = new View(context) { // from class: org.telegram.ui.PaymentFormActivity.2
                                    @Override // android.view.View
                                    public void onDraw(Canvas canvas) {
                                        canvas.drawLine(LocaleController.isRTL ? 0.0f : AndroidUtilities.dp(20.0f), getMeasuredHeight() - 1, getMeasuredWidth() - (LocaleController.isRTL ? AndroidUtilities.dp(20.0f) : 0), getMeasuredHeight() - 1, Theme.dividerPaint);
                                    }
                                };
                                view.setBackgroundColor(getThemedColor(i13));
                                this.dividers.add(view);
                                frameLayout.addView(view, new FrameLayout.LayoutParams(-1, i9, 83));
                            }
                        } else {
                            if (i12 != 7 || this.paymentForm.invoice.phone_requested) {
                                if (i12 == i6) {
                                    TLRPC.TL_invoice tL_invoice = this.paymentForm.invoice;
                                    i3 = i6;
                                    if (!tL_invoice.phone_requested && !tL_invoice.email_requested) {
                                    }
                                }
                                if (i14 != 0) {
                                }
                            } else {
                                i3 = i6;
                            }
                            i14 = 0;
                            if (i14 != 0) {
                            }
                        }
                        EditTextBoldCursor[] editTextBoldCursorArr = this.inputFields;
                        if (i12 != 9) {
                            editTextBoldCursorArr[i12] = new HintEditText(context);
                        } else {
                            editTextBoldCursorArr[i12] = new EditTextBoldCursor(context);
                        }
                        this.inputFields[i12].setTag(Integer.valueOf(i12));
                        this.inputFields[i12].setTextSize(1, 16.0f);
                        this.inputFields[i12].setHintTextColor(getThemedColor(Theme.key_windowBackgroundWhiteHintText));
                        EditTextBoldCursor editTextBoldCursor = this.inputFields[i12];
                        int i15 = Theme.key_windowBackgroundWhiteBlackText;
                        editTextBoldCursor.setTextColor(getThemedColor(i15));
                        this.inputFields[i12].setBackgroundDrawable(null);
                        this.inputFields[i12].setCursorColor(getThemedColor(i15));
                        this.inputFields[i12].setCursorSize(AndroidUtilities.dp(20.0f));
                        this.inputFields[i12].setCursorWidth(1.5f);
                        if (i12 == 4) {
                            this.inputFields[i12].setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda15
                                @Override // android.view.View.OnTouchListener
                                public final boolean onTouch(View view2, MotionEvent motionEvent) {
                                    return this.f$0.lambda$createView$1(view2, motionEvent);
                                }
                            });
                            this.inputFields[i12].setInputType(0);
                        }
                        if (i12 != 9 || i12 == i10) {
                            this.inputFields[i12].setInputType(i7);
                        } else {
                            EditTextBoldCursor[] editTextBoldCursorArr2 = this.inputFields;
                            if (i12 == 7) {
                                editTextBoldCursorArr2[i12].setInputType(1);
                            } else {
                                editTextBoldCursorArr2[i12].setInputType(16385);
                            }
                        }
                        this.inputFields[i12].setImeOptions(268435461);
                        switch (i12) {
                            case 0:
                                this.inputFields[i12].setHint(LocaleController.getString(C2665R.string.PaymentShippingAddress1Placeholder));
                                TLRPC.TL_paymentRequestedInfo tL_paymentRequestedInfo4 = this.paymentForm.saved_info;
                                if (tL_paymentRequestedInfo4 != null && (tL_postAddress = tL_paymentRequestedInfo4.shipping_address) != null) {
                                    this.inputFields[i12].setText(tL_postAddress.street_line1);
                                }
                                break;
                            case 1:
                                this.inputFields[i12].setHint(LocaleController.getString(C2665R.string.PaymentShippingAddress2Placeholder));
                                TLRPC.TL_paymentRequestedInfo tL_paymentRequestedInfo5 = this.paymentForm.saved_info;
                                if (tL_paymentRequestedInfo5 != null && (tL_postAddress2 = tL_paymentRequestedInfo5.shipping_address) != null) {
                                    this.inputFields[i12].setText(tL_postAddress2.street_line2);
                                }
                                break;
                            case 2:
                                this.inputFields[i12].setHint(LocaleController.getString(C2665R.string.PaymentShippingCityPlaceholder));
                                TLRPC.TL_paymentRequestedInfo tL_paymentRequestedInfo6 = this.paymentForm.saved_info;
                                if (tL_paymentRequestedInfo6 != null && (tL_postAddress3 = tL_paymentRequestedInfo6.shipping_address) != null) {
                                    this.inputFields[i12].setText(tL_postAddress3.city);
                                }
                                break;
                            case 3:
                                this.inputFields[i12].setHint(LocaleController.getString(C2665R.string.PaymentShippingStatePlaceholder));
                                TLRPC.TL_paymentRequestedInfo tL_paymentRequestedInfo7 = this.paymentForm.saved_info;
                                if (tL_paymentRequestedInfo7 != null && (tL_postAddress4 = tL_paymentRequestedInfo7.shipping_address) != null) {
                                    this.inputFields[i12].setText(tL_postAddress4.state);
                                }
                                break;
                            case 4:
                                this.inputFields[i12].setHint(LocaleController.getString(C2665R.string.PaymentShippingCountry));
                                TLRPC.TL_paymentRequestedInfo tL_paymentRequestedInfo8 = this.paymentForm.saved_info;
                                if (tL_paymentRequestedInfo8 != null && (tL_postAddress5 = tL_paymentRequestedInfo8.shipping_address) != null) {
                                    String str4 = (String) map2.get(tL_postAddress5.country_iso2);
                                    String str5 = this.paymentForm.saved_info.shipping_address.country_iso2;
                                    this.countryName = str5;
                                    EditTextBoldCursor editTextBoldCursor2 = this.inputFields[i12];
                                    if (str4 == null) {
                                        str4 = str5;
                                    }
                                    editTextBoldCursor2.setText(str4);
                                }
                                break;
                            case 5:
                                this.inputFields[i12].setHint(LocaleController.getString(C2665R.string.PaymentShippingZipPlaceholder));
                                TLRPC.TL_paymentRequestedInfo tL_paymentRequestedInfo9 = this.paymentForm.saved_info;
                                if (tL_paymentRequestedInfo9 != null && (tL_postAddress6 = tL_paymentRequestedInfo9.shipping_address) != null) {
                                    this.inputFields[i12].setText(tL_postAddress6.post_code);
                                }
                                break;
                            case 6:
                                this.inputFields[i12].setHint(LocaleController.getString(C2665R.string.PaymentShippingName));
                                TLRPC.TL_paymentRequestedInfo tL_paymentRequestedInfo10 = this.paymentForm.saved_info;
                                if (tL_paymentRequestedInfo10 != null && (str2 = tL_paymentRequestedInfo10.name) != null) {
                                    this.inputFields[i12].setText(str2);
                                }
                                break;
                            case 7:
                                this.inputFields[i12].setHint(LocaleController.getString(C2665R.string.PaymentShippingEmailPlaceholder));
                                TLRPC.TL_paymentRequestedInfo tL_paymentRequestedInfo11 = this.paymentForm.saved_info;
                                if (tL_paymentRequestedInfo11 != null && (str3 = tL_paymentRequestedInfo11.email) != null) {
                                    this.inputFields[i12].setText(str3);
                                }
                                break;
                        }
                        EditTextBoldCursor editTextBoldCursor3 = this.inputFields[i12];
                        editTextBoldCursor3.setSelection(editTextBoldCursor3.length());
                        if (i12 != i10) {
                            TextView textView = new TextView(context);
                            this.textView = textView;
                            textView.setText("+");
                            this.textView.setTextColor(getThemedColor(i15));
                            this.textView.setTextSize(1, 16.0f);
                            frameLayout.addView(this.textView, LayoutHelper.createLinear(-2, -2, 21.0f, 12.0f, 0.0f, 6.0f));
                            this.inputFields[i12].setPadding(AndroidUtilities.dp(10.0f), 0, 0, 0);
                            this.inputFields[i12].setGravity(19);
                            this.inputFields[i12].setFilters(new InputFilter[]{new InputFilter.LengthFilter(5)});
                            frameLayout.addView(this.inputFields[i12], LayoutHelper.createLinear(55, -2, 0.0f, 12.0f, 21.0f, 6.0f));
                            this.inputFields[i12].addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.PaymentFormActivity.3
                                @Override // android.text.TextWatcher
                                public void beforeTextChanged(CharSequence charSequence, int i16, int i17, int i18) {
                                }

                                @Override // android.text.TextWatcher
                                public void onTextChanged(CharSequence charSequence, int i16, int i17, int i18) {
                                }

                                @Override // android.text.TextWatcher
                                public void afterTextChanged(Editable editable) {
                                    boolean z3;
                                    String str6;
                                    String str7;
                                    if (PaymentFormActivity.this.ignoreOnTextChange) {
                                        return;
                                    }
                                    PaymentFormActivity.this.ignoreOnTextChange = true;
                                    String strStripExceptNumbers = PhoneFormat.stripExceptNumbers(PaymentFormActivity.this.inputFields[8].getText().toString());
                                    PaymentFormActivity.this.inputFields[8].setText(strStripExceptNumbers);
                                    HintEditText hintEditText = (HintEditText) PaymentFormActivity.this.inputFields[9];
                                    if (strStripExceptNumbers.length() == 0) {
                                        hintEditText.setHintText((String) null);
                                        hintEditText.setHint(LocaleController.getString(C2665R.string.PaymentShippingPhoneNumber));
                                    } else {
                                        int i16 = 4;
                                        if (strStripExceptNumbers.length() > 4) {
                                            while (true) {
                                                if (i16 < 1) {
                                                    z3 = false;
                                                    str6 = null;
                                                    break;
                                                }
                                                String strSubstring = strStripExceptNumbers.substring(0, i16);
                                                if (((String) PaymentFormActivity.this.codesMap.get(strSubstring)) != null) {
                                                    String str8 = strStripExceptNumbers.substring(i16) + PaymentFormActivity.this.inputFields[9].getText().toString();
                                                    PaymentFormActivity.this.inputFields[8].setText(strSubstring);
                                                    str6 = str8;
                                                    strStripExceptNumbers = strSubstring;
                                                    z3 = true;
                                                    break;
                                                }
                                                i16--;
                                            }
                                            if (!z3) {
                                                str6 = strStripExceptNumbers.substring(1) + PaymentFormActivity.this.inputFields[9].getText().toString();
                                                EditTextBoldCursor editTextBoldCursor4 = PaymentFormActivity.this.inputFields[8];
                                                strStripExceptNumbers = strStripExceptNumbers.substring(0, 1);
                                                editTextBoldCursor4.setText(strStripExceptNumbers);
                                            }
                                        } else {
                                            z3 = false;
                                            str6 = null;
                                        }
                                        String str9 = (String) PaymentFormActivity.this.codesMap.get(strStripExceptNumbers);
                                        if (str9 != null && PaymentFormActivity.this.countriesArray.indexOf(str9) != -1 && (str7 = (String) PaymentFormActivity.this.phoneFormatMap.get(strStripExceptNumbers)) != null) {
                                            hintEditText.setHintText(str7.replace('X', Typography.ndash));
                                            hintEditText.setHint((CharSequence) null);
                                        } else {
                                            hintEditText.setHintText((String) null);
                                            hintEditText.setHint(LocaleController.getString(C2665R.string.PaymentShippingPhoneNumber));
                                        }
                                        if (!z3) {
                                            PaymentFormActivity.this.inputFields[8].setSelection(PaymentFormActivity.this.inputFields[8].getText().length());
                                        }
                                        if (str6 != null) {
                                            hintEditText.requestFocus();
                                            hintEditText.setText(str6);
                                            hintEditText.setSelection(hintEditText.length());
                                        }
                                    }
                                    PaymentFormActivity.this.ignoreOnTextChange = false;
                                }
                            });
                        } else {
                            EditTextBoldCursor[] editTextBoldCursorArr3 = this.inputFields;
                            if (i12 == 9) {
                                editTextBoldCursorArr3[i12].setPadding(0, 0, 0, 0);
                                this.inputFields[i12].setGravity(19);
                                frameLayout.addView(this.inputFields[i12], LayoutHelper.createLinear(-1, -2, 0.0f, 12.0f, 21.0f, 6.0f));
                                this.inputFields[i12].addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.PaymentFormActivity.4
                                    private int actionPosition;
                                    private int characterAction = -1;

                                    @Override // android.text.TextWatcher
                                    public void onTextChanged(CharSequence charSequence, int i16, int i17, int i18) {
                                    }

                                    @Override // android.text.TextWatcher
                                    public void beforeTextChanged(CharSequence charSequence, int i16, int i17, int i18) {
                                        if (i17 == 0 && i18 == 1) {
                                            this.characterAction = 1;
                                            return;
                                        }
                                        if (i17 == 1 && i18 == 0) {
                                            if (charSequence.charAt(i16) == ' ' && i16 > 0) {
                                                this.characterAction = 3;
                                                this.actionPosition = i16 - 1;
                                                return;
                                            } else {
                                                this.characterAction = 2;
                                                return;
                                            }
                                        }
                                        this.characterAction = -1;
                                    }

                                    @Override // android.text.TextWatcher
                                    public void afterTextChanged(Editable editable) {
                                        int i16;
                                        int i17;
                                        if (PaymentFormActivity.this.ignoreOnPhoneChange) {
                                            return;
                                        }
                                        HintEditText hintEditText = (HintEditText) PaymentFormActivity.this.inputFields[9];
                                        int selectionStart = hintEditText.getSelectionStart();
                                        String string = hintEditText.getText().toString();
                                        if (this.characterAction == 3) {
                                            string = string.substring(0, this.actionPosition).concat(string.substring(this.actionPosition + 1));
                                            selectionStart--;
                                        }
                                        StringBuilder sb = new StringBuilder(string.length());
                                        int i18 = 0;
                                        while (i18 < string.length()) {
                                            int i19 = i18 + 1;
                                            String strSubstring = string.substring(i18, i19);
                                            if ("0123456789".contains(strSubstring)) {
                                                sb.append(strSubstring);
                                            }
                                            i18 = i19;
                                        }
                                        PaymentFormActivity.this.ignoreOnPhoneChange = true;
                                        String hintText = hintEditText.getHintText();
                                        if (hintText != null) {
                                            int i20 = 0;
                                            while (true) {
                                                if (i20 >= sb.length()) {
                                                    break;
                                                }
                                                if (i20 < hintText.length()) {
                                                    if (hintText.charAt(i20) == ' ') {
                                                        sb.insert(i20, ' ');
                                                        i20++;
                                                        if (selectionStart == i20 && (i17 = this.characterAction) != 2 && i17 != 3) {
                                                            selectionStart++;
                                                        }
                                                    }
                                                    i20++;
                                                } else {
                                                    sb.insert(i20, ' ');
                                                    if (selectionStart == i20 + 1 && (i16 = this.characterAction) != 2 && i16 != 3) {
                                                        selectionStart++;
                                                    }
                                                }
                                            }
                                        }
                                        hintEditText.setText(sb);
                                        if (selectionStart >= 0) {
                                            hintEditText.setSelection(Math.min(selectionStart, hintEditText.length()));
                                        }
                                        hintEditText.onTextChange();
                                        PaymentFormActivity.this.ignoreOnPhoneChange = false;
                                    }
                                });
                            } else {
                                editTextBoldCursorArr3[i12].setPadding(0, 0, 0, AndroidUtilities.dp(6.0f));
                                this.inputFields[i12].setGravity(LocaleController.isRTL ? 5 : i7);
                                frameLayout.addView(this.inputFields[i12], LayoutHelper.createFrame(-1, -2.0f, 51, 21.0f, 12.0f, 21.0f, 6.0f));
                            }
                        }
                        this.inputFields[i12].setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda22
                            @Override // android.widget.TextView.OnEditorActionListener
                            public final boolean onEditorAction(TextView textView2, int i16, KeyEvent keyEvent) {
                                return this.f$0.lambda$createView$2(textView2, i16, keyEvent);
                            }
                        });
                        if (i12 != 9) {
                            TLRPC.TL_invoice tL_invoice2 = this.paymentForm.invoice;
                            if (tL_invoice2.email_to_provider || tL_invoice2.phone_to_provider) {
                                int i16 = 0;
                                TLRPC.User user = null;
                                while (i16 < this.paymentForm.users.size()) {
                                    TLRPC.User user2 = this.paymentForm.users.get(i16);
                                    int i17 = i7;
                                    if (user2.id == this.paymentForm.provider_id) {
                                        user = user2;
                                    }
                                    i16++;
                                    i7 = i17;
                                }
                                i4 = i7;
                                String name2 = user != null ? ContactsController.formatName(user.first_name, user.last_name) : _UrlKt.FRAGMENT_ENCODE_SET;
                                this.bottomCell[1] = new TextInfoPrivacyCell(context, this.resourcesProvider);
                                this.bottomCell[1].setBackgroundDrawable(Theme.getThemedDrawableByKey(context, C2665R.drawable.greydivider_bottom, Theme.key_windowBackgroundGrayShadow));
                                this.linearLayout2.addView(this.bottomCell[1], LayoutHelper.createLinear(-1, -2));
                                TLRPC.TL_invoice tL_invoice3 = this.paymentForm.invoice;
                                boolean z3 = tL_invoice3.email_to_provider;
                                if (z3 && tL_invoice3.phone_to_provider) {
                                    this.bottomCell[1].setText(LocaleController.formatString("PaymentPhoneEmailToProvider", C2665R.string.PaymentPhoneEmailToProvider, name2));
                                } else {
                                    TextInfoPrivacyCell[] textInfoPrivacyCellArr = this.bottomCell;
                                    if (z3) {
                                        textInfoPrivacyCellArr[1].setText(LocaleController.formatString("PaymentEmailToProvider", C2665R.string.PaymentEmailToProvider, name2));
                                    } else {
                                        textInfoPrivacyCellArr[1].setText(LocaleController.formatString("PaymentPhoneToProvider", C2665R.string.PaymentPhoneToProvider, name2));
                                    }
                                }
                            } else {
                                this.sectionCell[1] = new ShadowSectionCell(context, this.resourcesProvider);
                                this.linearLayout2.addView(this.sectionCell[1], LayoutHelper.createLinear(-1, -2));
                                i4 = i7;
                            }
                            TextCheckCell textCheckCell = new TextCheckCell(context, this.resourcesProvider);
                            this.checkCell1 = textCheckCell;
                            textCheckCell.setBackgroundDrawable(Theme.getSelectorDrawable(true));
                            this.checkCell1.setTextAndCheck(LocaleController.getString(C2665R.string.PaymentShippingSave), this.saveShippingInfo, false);
                            this.linearLayout2.addView(this.checkCell1, LayoutHelper.createLinear(-1, -2));
                            this.checkCell1.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda23
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view2) {
                                    this.f$0.lambda$createView$3(view2);
                                }
                            });
                            this.bottomCell[0] = new TextInfoPrivacyCell(context, this.resourcesProvider);
                            this.bottomCell[0].setBackgroundDrawable(Theme.getThemedDrawableByKey(context, C2665R.drawable.greydivider_bottom, Theme.key_windowBackgroundGrayShadow));
                            this.bottomCell[0].setText(LocaleController.getString(C2665R.string.PaymentShippingSaveInfo));
                            this.linearLayout2.addView(this.bottomCell[0], LayoutHelper.createLinear(-1, -2));
                        } else {
                            i4 = i7;
                        }
                        i12++;
                        i6 = i3;
                        i7 = i4;
                        i11 = 10;
                        i10 = 8;
                        i9 = 1;
                    }
                    i3 = i6;
                    EditTextBoldCursor[] editTextBoldCursorArr4 = this.inputFields;
                    if (i12 != 9) {
                    }
                    this.inputFields[i12].setTag(Integer.valueOf(i12));
                    this.inputFields[i12].setTextSize(1, 16.0f);
                    this.inputFields[i12].setHintTextColor(getThemedColor(Theme.key_windowBackgroundWhiteHintText));
                    EditTextBoldCursor editTextBoldCursor4 = this.inputFields[i12];
                    int i152 = Theme.key_windowBackgroundWhiteBlackText;
                    editTextBoldCursor4.setTextColor(getThemedColor(i152));
                    this.inputFields[i12].setBackgroundDrawable(null);
                    this.inputFields[i12].setCursorColor(getThemedColor(i152));
                    this.inputFields[i12].setCursorSize(AndroidUtilities.dp(20.0f));
                    this.inputFields[i12].setCursorWidth(1.5f);
                    if (i12 == 4) {
                    }
                    if (i12 != 9) {
                        this.inputFields[i12].setInputType(i7);
                    }
                    this.inputFields[i12].setImeOptions(268435461);
                    switch (i12) {
                    }
                    EditTextBoldCursor editTextBoldCursor32 = this.inputFields[i12];
                    editTextBoldCursor32.setSelection(editTextBoldCursor32.length());
                    if (i12 != i10) {
                    }
                    this.inputFields[i12].setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda22
                        @Override // android.widget.TextView.OnEditorActionListener
                        public final boolean onEditorAction(TextView textView2, int i162, KeyEvent keyEvent) {
                            return this.f$0.lambda$createView$2(textView2, i162, keyEvent);
                        }
                    });
                    if (i12 != 9) {
                    }
                    i12++;
                    i6 = i3;
                    i7 = i4;
                    i11 = 10;
                    i10 = 8;
                    i9 = 1;
                }
                int i18 = i6;
                int i19 = i7;
                if (this.paymentForm.invoice.name_requested) {
                    i2 = 8;
                } else {
                    i2 = 8;
                    ((ViewGroup) this.inputFields[i18].getParent()).setVisibility(8);
                }
                if (!this.paymentForm.invoice.phone_requested) {
                    ((ViewGroup) this.inputFields[i2].getParent()).setVisibility(i2);
                }
                if (!this.paymentForm.invoice.email_requested) {
                    ((ViewGroup) this.inputFields[7].getParent()).setVisibility(i2);
                }
                TLRPC.TL_invoice tL_invoice4 = this.paymentForm.invoice;
                if (tL_invoice4.phone_requested) {
                    this.inputFields[9].setImeOptions(268435462);
                } else if (tL_invoice4.email_requested) {
                    this.inputFields[7].setImeOptions(268435462);
                } else {
                    boolean z4 = tL_invoice4.name_requested;
                    EditTextBoldCursor[] editTextBoldCursorArr5 = this.inputFields;
                    if (z4) {
                        editTextBoldCursorArr5[i18].setImeOptions(268435462);
                    } else {
                        editTextBoldCursorArr5[5].setImeOptions(268435462);
                    }
                }
                ShadowSectionCell shadowSectionCell = this.sectionCell[1];
                if (shadowSectionCell != null) {
                    TLRPC.TL_invoice tL_invoice5 = this.paymentForm.invoice;
                    shadowSectionCell.setVisibility((tL_invoice5.name_requested || tL_invoice5.phone_requested || tL_invoice5.email_requested) ? 0 : 8);
                } else {
                    TextInfoPrivacyCell textInfoPrivacyCell = this.bottomCell[1];
                    if (textInfoPrivacyCell != null) {
                        TLRPC.TL_invoice tL_invoice6 = this.paymentForm.invoice;
                        textInfoPrivacyCell.setVisibility((tL_invoice6.name_requested || tL_invoice6.phone_requested || tL_invoice6.email_requested) ? 0 : 8);
                    }
                }
                HeaderCell headerCell = this.headerCell[1];
                TLRPC.TL_invoice tL_invoice7 = this.paymentForm.invoice;
                headerCell.setVisibility((tL_invoice7.name_requested || tL_invoice7.phone_requested || tL_invoice7.email_requested) ? 0 : 8);
                if (!this.paymentForm.invoice.shipping_address_requested) {
                    this.headerCell[0].setVisibility(8);
                    this.sectionCell[0].setVisibility(8);
                    ((ViewGroup) this.inputFields[0].getParent()).setVisibility(8);
                    ((ViewGroup) this.inputFields[1].getParent()).setVisibility(8);
                    ((ViewGroup) this.inputFields[2].getParent()).setVisibility(8);
                    ((ViewGroup) this.inputFields[i19].getParent()).setVisibility(8);
                    ((ViewGroup) this.inputFields[4].getParent()).setVisibility(8);
                    ((ViewGroup) this.inputFields[5].getParent()).setVisibility(8);
                }
                TLRPC.TL_paymentRequestedInfo tL_paymentRequestedInfo12 = this.paymentForm.saved_info;
                if (tL_paymentRequestedInfo12 != null && !TextUtils.isEmpty(tL_paymentRequestedInfo12.phone)) {
                    fillNumber(this.paymentForm.saved_info.phone);
                } else {
                    fillNumber(null);
                }
                if (this.inputFields[8].length() == 0) {
                    TLRPC.PaymentForm paymentForm3 = this.paymentForm;
                    if (paymentForm3.invoice.phone_requested && ((tL_paymentRequestedInfo3 = paymentForm3.saved_info) == null || TextUtils.isEmpty(tL_paymentRequestedInfo3.phone))) {
                        try {
                            telephonyManager = (TelephonyManager) ApplicationLoader.applicationContext.getSystemService("phone");
                        } catch (Exception e2) {
                            FileLog.m992e(e2);
                        }
                        String upperCase = telephonyManager != null ? telephonyManager.getSimCountryIso().toUpperCase() : null;
                        if (upperCase != null && (str = (String) map.get(upperCase)) != null && this.countriesArray.indexOf(str) != -1) {
                            this.inputFields[8].setText(this.countriesMap.get(str));
                        }
                    }
                }
            }
        } else {
            int i20 = 3;
            if (i8 == 2) {
                if (this.paymentForm.native_params != null) {
                    try {
                        JSONObject jSONObject = new JSONObject(this.paymentForm.native_params.data);
                        String strOptString = jSONObject.optString("google_pay_public_key");
                        if (!TextUtils.isEmpty(strOptString)) {
                            this.googlePayPublicKey = strOptString;
                        }
                        this.googlePayCountryCode = jSONObject.optString("acquirer_bank_country");
                        this.googlePayParameters = jSONObject.optJSONObject("gpay_parameters");
                    } catch (Exception e3) {
                        FileLog.m992e(e3);
                    }
                }
                if (this.isWebView || this.paymentFormMethod != null) {
                    if (this.googlePayPublicKey != null || this.googlePayParameters != null) {
                        initGooglePay(context);
                    }
                    createGooglePayButton(context);
                    this.linearLayout2.addView(this.googlePayContainer, LayoutHelper.createLinear(-1, 50));
                    this.webviewLoading = true;
                    showEditDoneProgress(true, true);
                    this.progressView.setVisibility(0);
                    this.doneItem.setEnabled(false);
                    this.doneItem.getContentView().setVisibility(4);
                    AndroidUtilities.checkAndroidTheme(context, true);
                    WebView webView = new WebView(context) { // from class: org.telegram.ui.PaymentFormActivity.5
                        @Override // android.webkit.WebView, android.view.View
                        public boolean onTouchEvent(MotionEvent motionEvent) {
                            ((ViewGroup) PaymentFormActivity.this.fragmentView).requestDisallowInterceptTouchEvent(true);
                            return super.onTouchEvent(motionEvent);
                        }

                        @Override // android.webkit.WebView, android.widget.AbsoluteLayout, android.view.View
                        public void onMeasure(int i21, int i22) {
                            super.onMeasure(i21, i22);
                        }
                    };
                    this.webView = webView;
                    webView.getSettings().setJavaScriptEnabled(true);
                    this.webView.getSettings().setDomStorageEnabled(true);
                    this.webView.getSettings().setSupportZoom(true);
                    this.webView.getSettings().setBuiltInZoomControls(true);
                    this.webView.getSettings().setDisplayZoomControls(false);
                    this.webView.getSettings().setUseWideViewPort(true);
                    this.webView.getSettings().setMixedContentMode(0);
                    CookieManager.getInstance().setAcceptThirdPartyCookies(this.webView, true);
                    this.webView.addJavascriptInterface(new TelegramWebviewProxy(), "TelegramWebviewProxy");
                    this.webView.setWebViewClient(new C54196(context));
                    this.linearLayout2.addView(this.webView, LayoutHelper.createFrame(-1, -2.0f));
                    this.sectionCell[2] = new ShadowSectionCell(context, this.resourcesProvider);
                    this.linearLayout2.addView(this.sectionCell[2], LayoutHelper.createLinear(-1, -2));
                    TextCheckCell textCheckCell2 = new TextCheckCell(context, this.resourcesProvider);
                    this.checkCell1 = textCheckCell2;
                    textCheckCell2.setBackgroundDrawable(Theme.getSelectorDrawable(true));
                    this.checkCell1.setTextAndCheck(LocaleController.getString(C2665R.string.PaymentCardSavePaymentInformation), this.saveCardInfo, false);
                    this.linearLayout2.addView(this.checkCell1, LayoutHelper.createLinear(-1, -2));
                    this.checkCell1.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda24
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            this.f$0.lambda$createView$4(view2);
                        }
                    });
                    this.bottomCell[0] = new TextInfoPrivacyCell(context, this.resourcesProvider);
                    this.bottomCell[0].setBackgroundDrawable(Theme.getThemedDrawableByKey(context, C2665R.drawable.greydivider_bottom, Theme.key_windowBackgroundGrayShadow));
                    updateSavePaymentField();
                    this.linearLayout2.addView(this.bottomCell[0], LayoutHelper.createLinear(-1, -2));
                } else {
                    if (this.paymentForm.native_params != null) {
                        try {
                            JSONObject jSONObject2 = new JSONObject(this.paymentForm.native_params.data);
                            try {
                                this.need_card_country = jSONObject2.getBoolean("need_country");
                            } catch (Exception unused) {
                                this.need_card_country = false;
                            }
                            try {
                                this.need_card_postcode = jSONObject2.getBoolean("need_zip");
                            } catch (Exception unused2) {
                                this.need_card_postcode = false;
                            }
                            try {
                                this.need_card_name = jSONObject2.getBoolean("need_cardholder_name");
                            } catch (Exception unused3) {
                                this.need_card_name = false;
                            }
                            if (jSONObject2.has("public_token")) {
                                this.providerApiKey = jSONObject2.getString("public_token");
                            } else {
                                try {
                                    this.providerApiKey = jSONObject2.getString("publishable_key");
                                } catch (Exception unused4) {
                                    this.providerApiKey = _UrlKt.FRAGMENT_ENCODE_SET;
                                }
                            }
                            this.initGooglePay = !jSONObject2.optBoolean("google_pay_hidden", false);
                        } catch (Exception e4) {
                            FileLog.m992e(e4);
                        }
                    }
                    if (this.initGooglePay && ((!TextUtils.isEmpty(this.providerApiKey) && "stripe".equals(this.paymentForm.native_provider)) || this.googlePayParameters != null)) {
                        initGooglePay(context);
                    }
                    int i21 = 6;
                    this.inputFields = new EditTextBoldCursor[6];
                    int i22 = 0;
                    while (i22 < i21) {
                        if (i22 == 0) {
                            this.headerCell[0] = new HeaderCell(context, this.resourcesProvider);
                            this.headerCell[0].setBackgroundColor(getThemedColor(Theme.key_windowBackgroundWhite));
                            this.headerCell[0].setText(LocaleController.getString(C2665R.string.PaymentCardTitle));
                            this.linearLayout2.addView(this.headerCell[0], LayoutHelper.createLinear(-1, -2));
                        } else if (i22 == 4) {
                            this.headerCell[1] = new HeaderCell(context, this.resourcesProvider);
                            this.headerCell[1].setBackgroundColor(getThemedColor(Theme.key_windowBackgroundWhite));
                            this.headerCell[1].setText(LocaleController.getString(C2665R.string.PaymentBillingAddress));
                            this.linearLayout2.addView(this.headerCell[1], LayoutHelper.createLinear(-1, -2));
                        }
                        boolean z5 = (i22 == i20 || i22 == 5 || (i22 == 4 && !this.need_card_postcode)) ? false : true;
                        FrameLayout frameLayout3 = new FrameLayout(context);
                        frameLayout3.setClipChildren(false);
                        int i23 = Theme.key_windowBackgroundWhite;
                        frameLayout3.setBackgroundColor(getThemedColor(i23));
                        this.linearLayout2.addView(frameLayout3, LayoutHelper.createLinear(-1, 50));
                        this.inputFields[i22] = new EditTextBoldCursor(context);
                        this.inputFields[i22].setTag(Integer.valueOf(i22));
                        this.inputFields[i22].setTextSize(1, 16.0f);
                        this.inputFields[i22].setHintTextColor(getThemedColor(Theme.key_windowBackgroundWhiteHintText));
                        EditTextBoldCursor editTextBoldCursor5 = this.inputFields[i22];
                        int i24 = Theme.key_windowBackgroundWhiteBlackText;
                        editTextBoldCursor5.setTextColor(getThemedColor(i24));
                        this.inputFields[i22].setBackgroundDrawable(null);
                        this.inputFields[i22].setCursorColor(getThemedColor(i24));
                        this.inputFields[i22].setCursorSize(AndroidUtilities.dp(20.0f));
                        this.inputFields[i22].setCursorWidth(1.5f);
                        if (i22 == 3) {
                            this.inputFields[i22].setFilters(new InputFilter[]{new InputFilter.LengthFilter(3)});
                            this.inputFields[i22].setInputType(130);
                            this.inputFields[i22].setTypeface(Typeface.DEFAULT);
                            this.inputFields[i22].setTransformationMethod(PasswordTransformationMethod.getInstance());
                        } else if (i22 == 0) {
                            this.inputFields[i22].setInputType(3);
                        } else if (i22 == 4) {
                            this.inputFields[i22].setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda25
                                @Override // android.view.View.OnTouchListener
                                public final boolean onTouch(View view2, MotionEvent motionEvent) {
                                    return this.f$0.lambda$createView$6(view2, motionEvent);
                                }
                            });
                            this.inputFields[i22].setInputType(0);
                        } else if (i22 == 1) {
                            this.inputFields[i22].setInputType(16386);
                        } else {
                            EditTextBoldCursor[] editTextBoldCursorArr6 = this.inputFields;
                            if (i22 == 2) {
                                editTextBoldCursorArr6[i22].setInputType(4097);
                            } else {
                                editTextBoldCursorArr6[i22].setInputType(16385);
                                this.inputFields[i22].setImeOptions(268435461);
                                if (i22 != 0) {
                                    this.inputFields[i22].setHint(LocaleController.getString(C2665R.string.PaymentCardNumber));
                                } else if (i22 == 1) {
                                    this.inputFields[i22].setHint(LocaleController.getString(C2665R.string.PaymentCardExpireDate));
                                } else if (i22 == 2) {
                                    this.inputFields[i22].setHint(LocaleController.getString(C2665R.string.PaymentCardName));
                                } else if (i22 == 3) {
                                    this.inputFields[i22].setHint(LocaleController.getString(C2665R.string.PaymentCardCvv));
                                } else if (i22 == 4) {
                                    this.inputFields[i22].setHint(LocaleController.getString(C2665R.string.PaymentShippingCountry));
                                } else if (i22 == 5) {
                                    this.inputFields[i22].setHint(LocaleController.getString(C2665R.string.PaymentShippingZipPlaceholder));
                                }
                                if (i22 != 0) {
                                    this.inputFields[i22].addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.PaymentFormActivity.7
                                        private int actionPosition;
                                        public final String[] PREFIXES_15 = {"34", "37"};
                                        public final String[] PREFIXES_14 = {"300", "301", "302", "303", "304", "305", "309", "36", "38", "39"};
                                        public final String[] PREFIXES_16 = {"2221", "2222", "2223", "2224", "2225", "2226", "2227", "2228", "2229", "2200", "2201", "2202", "2203", "2204", "8600", "9860", "223", "224", "225", "226", "227", "228", "229", "23", "24", "25", "26", "270", "271", "2720", "50", "51", "52", "53", "54", "55", "4", "60", "62", "64", "65", "35"};
                                        private int characterAction = -1;

                                        @Override // android.text.TextWatcher
                                        public void onTextChanged(CharSequence charSequence, int i25, int i26, int i27) {
                                        }

                                        @Override // android.text.TextWatcher
                                        public void beforeTextChanged(CharSequence charSequence, int i25, int i26, int i27) {
                                            if (i26 == 0 && i27 == 1) {
                                                this.characterAction = 1;
                                                return;
                                            }
                                            if (i26 == 1 && i27 == 0) {
                                                if (charSequence.charAt(i25) == ' ' && i25 > 0) {
                                                    this.characterAction = 3;
                                                    this.actionPosition = i25 - 1;
                                                    return;
                                                } else {
                                                    this.characterAction = 2;
                                                    return;
                                                }
                                            }
                                            this.characterAction = -1;
                                        }

                                        @Override // android.text.TextWatcher
                                        public void afterTextChanged(Editable editable) {
                                            int i25;
                                            boolean z6;
                                            int i26;
                                            int i27;
                                            String[] strArr;
                                            int i28;
                                            String str6;
                                            if (PaymentFormActivity.this.ignoreOnCardChange) {
                                                return;
                                            }
                                            int i29 = 0;
                                            EditTextBoldCursor editTextBoldCursor6 = PaymentFormActivity.this.inputFields[0];
                                            int selectionStart = editTextBoldCursor6.getSelectionStart();
                                            String string = editTextBoldCursor6.getText().toString();
                                            int i30 = 1;
                                            if (this.characterAction == 3) {
                                                string = string.substring(0, this.actionPosition).concat(string.substring(this.actionPosition + 1));
                                                selectionStart--;
                                            }
                                            StringBuilder sb = new StringBuilder(string.length());
                                            int i31 = 0;
                                            while (i31 < string.length()) {
                                                int i32 = i31 + 1;
                                                String strSubstring = string.substring(i31, i32);
                                                if ("0123456789".contains(strSubstring)) {
                                                    sb.append(strSubstring);
                                                }
                                                i31 = i32;
                                            }
                                            PaymentFormActivity.this.ignoreOnCardChange = true;
                                            String str7 = null;
                                            int i33 = 100;
                                            if (sb.length() > 0) {
                                                String string2 = sb.toString();
                                                int i34 = 0;
                                                while (true) {
                                                    if (i34 >= 3) {
                                                        i25 = i30;
                                                        break;
                                                    }
                                                    if (i34 == 0) {
                                                        strArr = this.PREFIXES_16;
                                                        i28 = 16;
                                                        str6 = "xxxx xxxx xxxx xxxx";
                                                    } else if (i34 == i30) {
                                                        strArr = this.PREFIXES_15;
                                                        i28 = 15;
                                                        str6 = "xxxx xxxx xxxx xxx";
                                                    } else {
                                                        strArr = this.PREFIXES_14;
                                                        i28 = 14;
                                                        str6 = "xxxx xxxx xxxx xx";
                                                    }
                                                    int i35 = i29;
                                                    while (i35 < strArr.length) {
                                                        String str8 = strArr[i35];
                                                        i25 = i30;
                                                        if (string2.length() <= str8.length()) {
                                                            if (str8.startsWith(string2)) {
                                                                i33 = i28;
                                                                str7 = str6;
                                                                break;
                                                            } else {
                                                                i35++;
                                                                i30 = i25;
                                                            }
                                                        } else if (string2.startsWith(str8)) {
                                                            i33 = i28;
                                                            str7 = str6;
                                                            break;
                                                        } else {
                                                            i35++;
                                                            i30 = i25;
                                                        }
                                                    }
                                                    i25 = i30;
                                                    if (str7 != null) {
                                                        break;
                                                    }
                                                    i34++;
                                                    i30 = i25;
                                                    i29 = 0;
                                                }
                                                if (sb.length() > i33) {
                                                    sb.setLength(i33);
                                                }
                                            } else {
                                                i25 = 1;
                                            }
                                            if (str7 != null) {
                                                if (sb.length() == i33) {
                                                    PaymentFormActivity.this.inputFields[i25].requestFocus();
                                                }
                                                editTextBoldCursor6.setTextColor(PaymentFormActivity.this.getThemedColor(Theme.key_windowBackgroundWhiteBlackText));
                                                int i36 = 0;
                                                while (true) {
                                                    if (i36 >= sb.length()) {
                                                        break;
                                                    }
                                                    if (i36 < str7.length()) {
                                                        if (str7.charAt(i36) == ' ') {
                                                            sb.insert(i36, ' ');
                                                            i36++;
                                                            if (selectionStart == i36 && (i27 = this.characterAction) != 2 && i27 != 3) {
                                                                selectionStart++;
                                                            }
                                                        }
                                                        i36++;
                                                    } else {
                                                        sb.insert(i36, ' ');
                                                        if (selectionStart == i36 + 1 && (i26 = this.characterAction) != 2 && i26 != 3) {
                                                            selectionStart++;
                                                        }
                                                    }
                                                }
                                            }
                                            if (sb.toString().equals(editable.toString())) {
                                                z6 = false;
                                            } else {
                                                z6 = false;
                                                editable.replace(0, editable.length(), sb);
                                            }
                                            if (selectionStart >= 0) {
                                                editTextBoldCursor6.setSelection(Math.min(selectionStart, editTextBoldCursor6.length()));
                                            }
                                            PaymentFormActivity.this.ignoreOnCardChange = z6;
                                        }
                                    });
                                } else if (i22 == 1) {
                                    this.inputFields[i22].addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.PaymentFormActivity.8
                                        private int actionPosition;
                                        private int characterAction = -1;
                                        private boolean isYear;

                                        @Override // android.text.TextWatcher
                                        public void onTextChanged(CharSequence charSequence, int i25, int i26, int i27) {
                                        }

                                        @Override // android.text.TextWatcher
                                        public void beforeTextChanged(CharSequence charSequence, int i25, int i26, int i27) {
                                            if (i26 == 0 && i27 == 1) {
                                                this.isYear = TextUtils.indexOf((CharSequence) PaymentFormActivity.this.inputFields[1].getText(), '/') != -1;
                                                this.characterAction = 1;
                                                return;
                                            }
                                            if (i26 == 1 && i27 == 0) {
                                                if (charSequence.charAt(i25) == '/' && i25 > 0) {
                                                    this.isYear = false;
                                                    this.characterAction = 3;
                                                    this.actionPosition = i25 - 1;
                                                    return;
                                                }
                                                this.characterAction = 2;
                                                return;
                                            }
                                            this.characterAction = -1;
                                        }

                                        /* JADX WARN: Removed duplicated region for block: B:62:0x0151 A[PHI: r1
  0x0151: PHI (r1v7 int) = (r1v1 int), (r1v1 int), (r1v1 int), (r1v3 int), (r1v1 int), (r1v1 int), (r1v1 int) binds: [B:64:0x0157, B:59:0x0146, B:60:0x0148, B:61:0x014a, B:54:0x0122, B:49:0x0102, B:50:0x0104] A[DONT_GENERATE, DONT_INLINE]] */
                                        /* JADX WARN: Removed duplicated region for block: B:90:0x01bc  */
                                        @Override // android.text.TextWatcher
                                        /*
                                            Code decompiled incorrectly, please refer to instructions dump.
                                        */
                                        public void afterTextChanged(Editable editable) {
                                            if (PaymentFormActivity.this.ignoreOnCardChange) {
                                                return;
                                            }
                                            boolean z6 = true;
                                            EditTextBoldCursor editTextBoldCursor6 = PaymentFormActivity.this.inputFields[1];
                                            int selectionStart = editTextBoldCursor6.getSelectionStart();
                                            String string = editTextBoldCursor6.getText().toString();
                                            if (this.characterAction == 3) {
                                                string = string.substring(0, this.actionPosition).concat(string.substring(this.actionPosition + 1));
                                                selectionStart--;
                                            }
                                            StringBuilder sb = new StringBuilder(string.length());
                                            int i25 = 0;
                                            while (i25 < string.length()) {
                                                int i26 = i25 + 1;
                                                String strSubstring = string.substring(i25, i26);
                                                if ("0123456789".contains(strSubstring)) {
                                                    sb.append(strSubstring);
                                                }
                                                i25 = i26;
                                            }
                                            PaymentFormActivity.this.ignoreOnCardChange = true;
                                            PaymentFormActivity.this.inputFields[1].setTextColor(PaymentFormActivity.this.getThemedColor(Theme.key_windowBackgroundWhiteBlackText));
                                            if (sb.length() > 4) {
                                                sb.setLength(4);
                                            }
                                            if (sb.length() < 2) {
                                                this.isYear = false;
                                            }
                                            if (this.isYear) {
                                                int i27 = sb.length() > 2 ? 2 : 1;
                                                String[] strArr = new String[i27];
                                                strArr[0] = sb.substring(0, 2);
                                                if (i27 == 2) {
                                                    strArr[1] = sb.substring(2);
                                                }
                                                if (sb.length() == 4 && i27 == 2) {
                                                    int i28 = Utilities.parseInt((CharSequence) strArr[0]);
                                                    int i29 = Utilities.parseInt((CharSequence) strArr[1]) + CastStatusCodes.AUTHENTICATION_FAILED;
                                                    Calendar calendar = Calendar.getInstance();
                                                    boolean z7 = UserConfig.getInstance(((BaseFragment) PaymentFormActivity.this).currentAccount).getClientPhone().startsWith("7") || (PaymentFormActivity.this.country != null && PaymentFormActivity.this.country.code.equals("7"));
                                                    int i30 = z7 ? 2022 : calendar.get(1);
                                                    int i31 = z7 ? 1 : calendar.get(2) + 1;
                                                    if (i29 < i30 || (i29 == i30 && i28 < i31)) {
                                                        PaymentFormActivity.this.inputFields[1].setTextColor(PaymentFormActivity.this.getThemedColor(Theme.key_text_RedRegular));
                                                    }
                                                } else {
                                                    int i32 = Utilities.parseInt((CharSequence) strArr[0]);
                                                    if (i32 > 12 || i32 == 0) {
                                                        PaymentFormActivity.this.inputFields[1].setTextColor(PaymentFormActivity.this.getThemedColor(Theme.key_text_RedRegular));
                                                    } else {
                                                        z6 = false;
                                                    }
                                                }
                                            } else {
                                                if (sb.length() == 1) {
                                                    int i33 = Utilities.parseInt((CharSequence) sb.toString());
                                                    if (i33 != 1 && i33 != 0) {
                                                        sb.insert(0, MVEL.VERSION_SUB);
                                                        selectionStart++;
                                                    }
                                                } else if (sb.length() == 2) {
                                                    int i34 = Utilities.parseInt((CharSequence) sb.toString());
                                                    if (i34 > 12 || i34 == 0) {
                                                        PaymentFormActivity.this.inputFields[1].setTextColor(PaymentFormActivity.this.getThemedColor(Theme.key_text_RedRegular));
                                                    } else {
                                                        z6 = false;
                                                    }
                                                    selectionStart++;
                                                }
                                                z6 = false;
                                            }
                                            if (!z6 && sb.length() == 4) {
                                                PaymentFormActivity.this.inputFields[PaymentFormActivity.this.need_card_name ? (char) 2 : (char) 3].requestFocus();
                                            }
                                            if (sb.length() == 2) {
                                                sb.append('/');
                                            } else {
                                                if (sb.length() > 2 && sb.charAt(2) != '/') {
                                                    sb.insert(2, '/');
                                                }
                                                editTextBoldCursor6.setText(sb);
                                                if (selectionStart >= 0) {
                                                    editTextBoldCursor6.setSelection(Math.min(selectionStart, editTextBoldCursor6.length()));
                                                }
                                                PaymentFormActivity.this.ignoreOnCardChange = false;
                                            }
                                            selectionStart++;
                                            editTextBoldCursor6.setText(sb);
                                            if (selectionStart >= 0) {
                                            }
                                            PaymentFormActivity.this.ignoreOnCardChange = false;
                                        }
                                    });
                                }
                                this.inputFields[i22].setPadding(0, 0, 0, AndroidUtilities.dp(6.0f));
                                this.inputFields[i22].setGravity(!LocaleController.isRTL ? 5 : 3);
                                frameLayout3.addView(this.inputFields[i22], LayoutHelper.createFrame(-1, -2.0f, 51, 21.0f, 12.0f, 21.0f, 6.0f));
                                this.inputFields[i22].setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda26
                                    @Override // android.widget.TextView.OnEditorActionListener
                                    public final boolean onEditorAction(TextView textView2, int i25, KeyEvent keyEvent) {
                                        return this.f$0.lambda$createView$7(textView2, i25, keyEvent);
                                    }
                                });
                                if (i22 != 3) {
                                    this.sectionCell[0] = new ShadowSectionCell(context, this.resourcesProvider);
                                    this.linearLayout2.addView(this.sectionCell[0], LayoutHelper.createLinear(-1, -2));
                                } else if (i22 == 5) {
                                    this.sectionCell[2] = new ShadowSectionCell(context, this.resourcesProvider);
                                    this.linearLayout2.addView(this.sectionCell[2], LayoutHelper.createLinear(-1, -2));
                                    TextCheckCell textCheckCell3 = new TextCheckCell(context, this.resourcesProvider);
                                    this.checkCell1 = textCheckCell3;
                                    textCheckCell3.setBackgroundDrawable(Theme.getSelectorDrawable(true));
                                    this.checkCell1.setTextAndCheck(LocaleController.getString(C2665R.string.PaymentCardSavePaymentInformation), this.saveCardInfo, false);
                                    this.linearLayout2.addView(this.checkCell1, LayoutHelper.createLinear(-1, -2));
                                    this.checkCell1.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda27
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view2) {
                                            this.f$0.lambda$createView$8(view2);
                                        }
                                    });
                                    this.bottomCell[0] = new TextInfoPrivacyCell(context, this.resourcesProvider);
                                    this.bottomCell[0].setBackgroundDrawable(Theme.getThemedDrawableByKey(context, C2665R.drawable.greydivider_bottom, Theme.key_windowBackgroundGrayShadow));
                                    updateSavePaymentField();
                                    this.linearLayout2.addView(this.bottomCell[0], LayoutHelper.createLinear(-1, -2));
                                } else if (i22 == 0) {
                                    createGooglePayButton(context);
                                    frameLayout3.addView(this.googlePayContainer, LayoutHelper.createFrame(-2, -2.0f, (LocaleController.isRTL ? 3 : 5) | 16, 0.0f, 0.0f, 4.0f, 0.0f));
                                }
                                if (z5) {
                                    View view2 = new View(context) { // from class: org.telegram.ui.PaymentFormActivity.9
                                        @Override // android.view.View
                                        public void onDraw(Canvas canvas) {
                                            canvas.drawLine(LocaleController.isRTL ? 0.0f : AndroidUtilities.dp(20.0f), getMeasuredHeight() - 1, getMeasuredWidth() - (LocaleController.isRTL ? AndroidUtilities.dp(20.0f) : 0), getMeasuredHeight() - 1, Theme.dividerPaint);
                                        }
                                    };
                                    view2.setBackgroundColor(getThemedColor(i23));
                                    this.dividers.add(view2);
                                    frameLayout3.addView(view2, new FrameLayout.LayoutParams(-1, 1, 83));
                                }
                                if ((i22 != 4 && !this.need_card_country) || ((i22 == 5 && !this.need_card_postcode) || (i22 == 2 && !this.need_card_name))) {
                                    frameLayout3.setVisibility(8);
                                }
                                i22++;
                                i21 = 6;
                                i20 = 3;
                            }
                        }
                        this.inputFields[i22].setImeOptions(268435461);
                        if (i22 != 0) {
                        }
                        if (i22 != 0) {
                        }
                        this.inputFields[i22].setPadding(0, 0, 0, AndroidUtilities.dp(6.0f));
                        this.inputFields[i22].setGravity(!LocaleController.isRTL ? 5 : 3);
                        frameLayout3.addView(this.inputFields[i22], LayoutHelper.createFrame(-1, -2.0f, 51, 21.0f, 12.0f, 21.0f, 6.0f));
                        this.inputFields[i22].setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda26
                            @Override // android.widget.TextView.OnEditorActionListener
                            public final boolean onEditorAction(TextView textView2, int i25, KeyEvent keyEvent) {
                                return this.f$0.lambda$createView$7(textView2, i25, keyEvent);
                            }
                        });
                        if (i22 != 3) {
                        }
                        if (z5) {
                        }
                        if (i22 != 4) {
                        }
                        i22++;
                        i21 = 6;
                        i20 = 3;
                    }
                    if (!this.need_card_country && !this.need_card_postcode) {
                        this.headerCell[1].setVisibility(8);
                        this.sectionCell[0].setVisibility(8);
                    }
                    boolean z6 = this.need_card_postcode;
                    EditTextBoldCursor[] editTextBoldCursorArr7 = this.inputFields;
                    if (z6) {
                        editTextBoldCursorArr7[5].setImeOptions(268435462);
                    } else {
                        editTextBoldCursorArr7[3].setImeOptions(268435462);
                    }
                }
            } else if (i8 == 1) {
                ArrayList<TLRPC.TL_shippingOption> arrayList = this.requestedInfo.shipping_options;
                int size = arrayList == null ? 0 : arrayList.size();
                this.radioCells = new RadioCell[size];
                int i25 = 0;
                while (i25 < size) {
                    TLRPC.TL_shippingOption tL_shippingOption = this.requestedInfo.shipping_options.get(i25);
                    this.radioCells[i25] = new RadioCell(context);
                    this.radioCells[i25].setTag(Integer.valueOf(i25));
                    this.radioCells[i25].setBackgroundDrawable(Theme.getSelectorDrawable(true));
                    this.radioCells[i25].setText(String.format("%s - %s", getTotalPriceString(tL_shippingOption.prices), tL_shippingOption.title), i25 == 0, i25 != size + (-1));
                    this.radioCells[i25].setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda28
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view3) {
                            this.f$0.lambda$createView$9(view3);
                        }
                    });
                    this.linearLayout2.addView(this.radioCells[i25]);
                    i25++;
                }
                this.bottomCell[0] = new TextInfoPrivacyCell(context, this.resourcesProvider);
                this.bottomCell[0].setBackgroundDrawable(Theme.getThemedDrawableByKey(context, C2665R.drawable.greydivider_bottom, Theme.key_windowBackgroundGrayShadow));
                this.linearLayout2.addView(this.bottomCell[0], LayoutHelper.createLinear(-1, -2));
            } else if (i8 == 3) {
                this.inputFields = new EditTextBoldCursor[2];
                int i26 = 0;
                for (int i27 = 2; i26 < i27; i27 = 2) {
                    if (i26 == 0) {
                        this.headerCell[0] = new HeaderCell(context, this.resourcesProvider);
                        this.headerCell[0].setBackgroundColor(getThemedColor(Theme.key_windowBackgroundWhite));
                        this.headerCell[0].setText(LocaleController.getString(C2665R.string.PaymentCardTitle));
                        this.linearLayout2.addView(this.headerCell[0], LayoutHelper.createLinear(-1, -2));
                    }
                    FrameLayout frameLayout4 = new FrameLayout(context);
                    frameLayout4.setClipChildren(false);
                    this.linearLayout2.addView(frameLayout4, LayoutHelper.createLinear(-1, 50));
                    int i28 = Theme.key_windowBackgroundWhite;
                    frameLayout4.setBackgroundColor(getThemedColor(i28));
                    boolean z7 = i26 != 1;
                    if (z7) {
                        if (i26 != 7 || this.paymentForm.invoice.phone_requested) {
                            if (i26 == 6) {
                                TLRPC.TL_invoice tL_invoice8 = this.paymentForm.invoice;
                                if (!tL_invoice8.phone_requested && !tL_invoice8.email_requested) {
                                    z7 = false;
                                }
                            }
                        }
                    }
                    if (z7) {
                        View view3 = new View(context) { // from class: org.telegram.ui.PaymentFormActivity.10
                            @Override // android.view.View
                            public void onDraw(Canvas canvas) {
                                canvas.drawLine(LocaleController.isRTL ? 0.0f : AndroidUtilities.dp(20.0f), getMeasuredHeight() - 1, getMeasuredWidth() - (LocaleController.isRTL ? AndroidUtilities.dp(20.0f) : 0), getMeasuredHeight() - 1, Theme.dividerPaint);
                            }
                        };
                        view3.setBackgroundColor(getThemedColor(i28));
                        this.dividers.add(view3);
                        frameLayout4.addView(view3, new FrameLayout.LayoutParams(-1, 1, 83));
                    }
                    this.inputFields[i26] = new EditTextBoldCursor(context);
                    this.inputFields[i26].setTag(Integer.valueOf(i26));
                    this.inputFields[i26].setTextSize(1, 16.0f);
                    this.inputFields[i26].setHintTextColor(getThemedColor(Theme.key_windowBackgroundWhiteHintText));
                    EditTextBoldCursor editTextBoldCursor6 = this.inputFields[i26];
                    int i29 = Theme.key_windowBackgroundWhiteBlackText;
                    editTextBoldCursor6.setTextColor(getThemedColor(i29));
                    this.inputFields[i26].setBackgroundDrawable(null);
                    this.inputFields[i26].setCursorColor(getThemedColor(i29));
                    this.inputFields[i26].setCursorSize(AndroidUtilities.dp(20.0f));
                    this.inputFields[i26].setCursorWidth(1.5f);
                    EditTextBoldCursor[] editTextBoldCursorArr8 = this.inputFields;
                    if (i26 == 0) {
                        editTextBoldCursorArr8[i26].setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda29
                            @Override // android.view.View.OnTouchListener
                            public final boolean onTouch(View view4, MotionEvent motionEvent) {
                                return PaymentFormActivity.m17662$r8$lambda$lq9LWx85ffust2Y_olLL_Ztadc(view4, motionEvent);
                            }
                        });
                        this.inputFields[i26].setInputType(0);
                    } else {
                        editTextBoldCursorArr8[i26].setInputType(129);
                        this.inputFields[i26].setTypeface(Typeface.DEFAULT);
                    }
                    this.inputFields[i26].setImeOptions(268435462);
                    if (i26 == 0) {
                        EditTextBoldCursor editTextBoldCursor7 = this.inputFields[i26];
                        TLRPC.TL_paymentSavedCredentialsCard tL_paymentSavedCredentialsCard = this.savedCredentialsCard;
                        editTextBoldCursor7.setText(tL_paymentSavedCredentialsCard == null ? _UrlKt.FRAGMENT_ENCODE_SET : tL_paymentSavedCredentialsCard.title);
                    } else if (i26 == 1) {
                        this.inputFields[i26].setHint(LocaleController.getString(C2665R.string.LoginPassword));
                        this.inputFields[i26].requestFocus();
                    }
                    this.inputFields[i26].setPadding(0, 0, 0, AndroidUtilities.dp(6.0f));
                    this.inputFields[i26].setGravity(LocaleController.isRTL ? 5 : 3);
                    frameLayout4.addView(this.inputFields[i26], LayoutHelper.createFrame(-1, -2.0f, 51, 21.0f, 12.0f, 21.0f, 6.0f));
                    this.inputFields[i26].setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda5
                        @Override // android.widget.TextView.OnEditorActionListener
                        public final boolean onEditorAction(TextView textView2, int i30, KeyEvent keyEvent) {
                            return this.f$0.lambda$createView$11(textView2, i30, keyEvent);
                        }
                    });
                    if (i26 == 1) {
                        this.bottomCell[0] = new TextInfoPrivacyCell(context, this.resourcesProvider);
                        TextInfoPrivacyCell textInfoPrivacyCell2 = this.bottomCell[0];
                        int i30 = C2665R.string.PaymentConfirmationMessage;
                        TLRPC.TL_paymentSavedCredentialsCard tL_paymentSavedCredentialsCard2 = this.savedCredentialsCard;
                        textInfoPrivacyCell2.setText(LocaleController.formatString("PaymentConfirmationMessage", i30, tL_paymentSavedCredentialsCard2 == null ? _UrlKt.FRAGMENT_ENCODE_SET : tL_paymentSavedCredentialsCard2.title));
                        TextInfoPrivacyCell textInfoPrivacyCell3 = this.bottomCell[0];
                        int i31 = C2665R.drawable.greydivider;
                        int i32 = Theme.key_windowBackgroundGrayShadow;
                        textInfoPrivacyCell3.setBackgroundDrawable(Theme.getThemedDrawableByKey(context, i31, i32));
                        this.linearLayout2.addView(this.bottomCell[0], LayoutHelper.createLinear(-1, -2));
                        this.settingsCell[0] = new TextSettingsCell(context, this.resourcesProvider);
                        this.settingsCell[0].setBackgroundDrawable(Theme.getSelectorDrawable(true));
                        this.settingsCell[0].setText(LocaleController.getString(C2665R.string.PaymentConfirmationNewCard), false);
                        this.linearLayout2.addView(this.settingsCell[0], LayoutHelper.createLinear(-1, -2));
                        this.settingsCell[0].setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda6
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view4) {
                                this.f$0.lambda$createView$12(view4);
                            }
                        });
                        this.bottomCell[1] = new TextInfoPrivacyCell(context, this.resourcesProvider);
                        this.bottomCell[1].setBackgroundDrawable(Theme.getThemedDrawableByKey(context, C2665R.drawable.greydivider_bottom, i32));
                        this.linearLayout2.addView(this.bottomCell[1], LayoutHelper.createLinear(-1, -2));
                    }
                    i26++;
                }
            } else if (i8 == 4 || i8 == 5) {
                PaymentInfoCell paymentInfoCell = new PaymentInfoCell(context);
                this.paymentInfoCell = paymentInfoCell;
                paymentInfoCell.setBackgroundColor(getThemedColor(Theme.key_windowBackgroundWhite));
                MessageObject messageObject = this.messageObject;
                if (messageObject != null) {
                    this.paymentInfoCell.setInvoice((TLRPC.TL_messageMediaInvoice) messageObject.messageOwner.media, this.currentBotName);
                } else {
                    TLRPC.PaymentReceipt paymentReceipt = this.paymentReceipt;
                    if (paymentReceipt != null) {
                        this.paymentInfoCell.setReceipt(paymentReceipt, this.currentBotName);
                    } else if (this.invoiceSlug != null || this.invoiceInput != null) {
                        PaymentInfoCell paymentInfoCell2 = this.paymentInfoCell;
                        TLRPC.PaymentForm paymentForm4 = this.paymentForm;
                        paymentInfoCell2.setInfo(paymentForm4.title, paymentForm4.description, paymentForm4.photo, this.currentBotName, paymentForm4);
                    }
                }
                this.linearLayout2.addView(this.paymentInfoCell, LayoutHelper.createLinear(-1, -2));
                this.sectionCell[0] = new ShadowSectionCell(context, this.resourcesProvider);
                this.linearLayout2.addView(this.sectionCell[0], LayoutHelper.createLinear(-1, -2));
                ArrayList<TLRPC.TL_labeledPrice> arrayList2 = new ArrayList<>(this.paymentForm.invoice.prices);
                this.prices = arrayList2;
                TLRPC.TL_shippingOption tL_shippingOption2 = this.shippingOption;
                if (tL_shippingOption2 != null) {
                    arrayList2.addAll(tL_shippingOption2.prices);
                }
                this.totalPrice = new String[1];
                for (int i33 = 0; i33 < this.prices.size(); i33++) {
                    TLRPC.TL_labeledPrice tL_labeledPrice = this.prices.get(i33);
                    TextPriceCell textPriceCell = new TextPriceCell(context);
                    textPriceCell.setBackgroundColor(getThemedColor(Theme.key_windowBackgroundWhite));
                    textPriceCell.setTextAndValue(tL_labeledPrice.label, LocaleController.getInstance().formatCurrencyString(tL_labeledPrice.amount, this.paymentForm.invoice.currency), false);
                    this.linearLayout2.addView(textPriceCell);
                }
                if (this.currentStep == 5 && this.tipAmount != null) {
                    TextPriceCell textPriceCell2 = new TextPriceCell(context);
                    textPriceCell2.setBackgroundColor(getThemedColor(Theme.key_windowBackgroundWhite));
                    textPriceCell2.setTextAndValue(LocaleController.getString(C2665R.string.PaymentTip), LocaleController.getInstance().formatCurrencyString(this.tipAmount.longValue(), this.paymentForm.invoice.currency), false);
                    this.linearLayout2.addView(textPriceCell2);
                }
                TextPriceCell textPriceCell3 = new TextPriceCell(context);
                this.totalCell = textPriceCell3;
                int i34 = Theme.key_windowBackgroundWhite;
                textPriceCell3.setBackgroundColor(getThemedColor(i34));
                this.totalPrice[0] = getTotalPriceString(this.prices);
                this.totalCell.setTextAndValue(LocaleController.getString(C2665R.string.PaymentTransactionTotal), this.totalPrice[0], true);
                float f = 14.0f;
                if (this.currentStep == 4 && (this.paymentForm.invoice.flags & 256) != 0) {
                    FrameLayout frameLayout5 = new FrameLayout(context);
                    frameLayout5.setClipChildren(false);
                    frameLayout5.setBackgroundColor(getThemedColor(i34));
                    this.linearLayout2.addView(frameLayout5, LayoutHelper.createLinear(-1, this.paymentForm.invoice.suggested_tip_amounts.isEmpty() ? 40 : 78));
                    frameLayout5.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda7
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view4) {
                            this.f$0.lambda$createView$13(view4);
                        }
                    });
                    TextPriceCell textPriceCell4 = new TextPriceCell(context);
                    textPriceCell4.setBackgroundColor(getThemedColor(i34));
                    textPriceCell4.setTextAndValue(LocaleController.getString(C2665R.string.PaymentTipOptional), _UrlKt.FRAGMENT_ENCODE_SET, false);
                    frameLayout5.addView(textPriceCell4);
                    this.inputFields = new EditTextBoldCursor[]{new EditTextBoldCursor(context)};
                    this.inputFields[0].setTag(0);
                    this.inputFields[0].setTextSize(1, 16.0f);
                    EditTextBoldCursor editTextBoldCursor8 = this.inputFields[0];
                    int i35 = Theme.key_windowBackgroundWhiteGrayText2;
                    editTextBoldCursor8.setHintTextColor(getThemedColor(i35));
                    this.inputFields[0].setTextColor(getThemedColor(i35));
                    this.inputFields[0].setBackgroundDrawable(null);
                    this.inputFields[0].setCursorColor(getThemedColor(Theme.key_windowBackgroundWhiteBlackText));
                    this.inputFields[0].setCursorSize(AndroidUtilities.dp(20.0f));
                    this.inputFields[0].setCursorWidth(1.5f);
                    this.inputFields[0].setInputType(3);
                    this.inputFields[0].setImeOptions(268435462);
                    this.inputFields[0].setHint(LocaleController.getInstance().formatCurrencyString(0L, this.paymentForm.invoice.currency));
                    this.inputFields[0].setPadding(0, 0, 0, AndroidUtilities.dp(6.0f));
                    this.inputFields[0].setGravity(LocaleController.isRTL ? 3 : 5);
                    frameLayout5.addView(this.inputFields[0], LayoutHelper.createFrame(-1, -2.0f, 51, 21.0f, 9.0f, 21.0f, 1.0f));
                    this.inputFields[0].addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.PaymentFormActivity.11
                        private boolean anyBefore;
                        private int beforeTextLength;
                        char[] commas = {',', '.', 1643, 12289, 11841, 65040, 65041, 65104, 65105, 65292, 65380, 699};
                        private int enteredCharacterStart;
                        private boolean isDeletedChar;
                        private boolean lastDotEntered;
                        private String overrideText;

                        @Override // android.text.TextWatcher
                        public void onTextChanged(CharSequence charSequence, int i36, int i37, int i38) {
                        }

                        private int indexOfComma(String str6) {
                            int i36 = 0;
                            while (true) {
                                char[] cArr = this.commas;
                                if (i36 >= cArr.length) {
                                    return -1;
                                }
                                int iIndexOf = str6.indexOf(cArr[i36]);
                                if (iIndexOf >= 0) {
                                    return iIndexOf;
                                }
                                i36++;
                            }
                        }

                        @Override // android.text.TextWatcher
                        public void beforeTextChanged(CharSequence charSequence, int i36, int i37, int i38) {
                            if (PaymentFormActivity.this.ignoreOnTextChange) {
                                return;
                            }
                            this.anyBefore = !TextUtils.isEmpty(charSequence);
                            this.overrideText = null;
                            this.beforeTextLength = charSequence == null ? 0 : charSequence.length();
                            this.enteredCharacterStart = i36;
                            boolean z8 = i37 == 1 && i38 == 0;
                            this.isDeletedChar = z8;
                            if (!z8) {
                                return;
                            }
                            String strFixNumbers = LocaleController.fixNumbers(charSequence);
                            char cCharAt = strFixNumbers.charAt(i36);
                            int iIndexOfComma = indexOfComma(strFixNumbers);
                            String strSubstring = iIndexOfComma >= 0 ? strFixNumbers.substring(iIndexOfComma + 1) : _UrlKt.FRAGMENT_ENCODE_SET;
                            long jLongValue2 = Utilities.parseLong(PhoneFormat.stripExceptNumbers(strSubstring)).longValue();
                            if ((cCharAt >= '0' && cCharAt <= '9') || (strSubstring.length() != 0 && jLongValue2 == 0)) {
                                if (iIndexOfComma <= 0 || i36 <= iIndexOfComma || jLongValue2 != 0) {
                                    return;
                                }
                                this.overrideText = strFixNumbers.substring(0, iIndexOfComma - 1);
                                return;
                            }
                            while (true) {
                                int i39 = i36 - 1;
                                if (i39 < 0) {
                                    return;
                                }
                                char cCharAt2 = strFixNumbers.charAt(i39);
                                if (cCharAt2 >= '0' && cCharAt2 <= '9') {
                                    this.overrideText = strFixNumbers.substring(0, i39).concat(strFixNumbers.substring(i36));
                                    return;
                                }
                                i36 = i39;
                            }
                        }

                        @Override // android.text.TextWatcher
                        public void afterTextChanged(Editable editable) {
                            String strSubstring;
                            if (PaymentFormActivity.this.ignoreOnTextChange) {
                                return;
                            }
                            long jLongValue2 = PaymentFormActivity.this.tipAmount != null ? PaymentFormActivity.this.tipAmount.longValue() : 0L;
                            String strFixNumbers = this.overrideText;
                            if (strFixNumbers == null) {
                                strFixNumbers = LocaleController.fixNumbers(editable.toString());
                            }
                            int iIndexOfComma = indexOfComma(strFixNumbers);
                            boolean z8 = iIndexOfComma >= 0;
                            int currencyExpDivider = LocaleController.getCurrencyExpDivider(PaymentFormActivity.this.paymentForm.invoice.currency);
                            String strSubstring2 = iIndexOfComma >= 0 ? strFixNumbers.substring(0, iIndexOfComma) : strFixNumbers;
                            String currencyString = _UrlKt.FRAGMENT_ENCODE_SET;
                            String strSubstring3 = iIndexOfComma >= 0 ? strFixNumbers.substring(iIndexOfComma + 1) : _UrlKt.FRAGMENT_ENCODE_SET;
                            long jLongValue3 = Utilities.parseLong(PhoneFormat.stripExceptNumbers(strSubstring2)).longValue() * ((long) currencyExpDivider);
                            long jLongValue4 = Utilities.parseLong(PhoneFormat.stripExceptNumbers(strSubstring3)).longValue();
                            String str6 = _UrlKt.FRAGMENT_ENCODE_SET + jLongValue4;
                            String str7 = _UrlKt.FRAGMENT_ENCODE_SET + (currencyExpDivider - 1);
                            if (iIndexOfComma > 0 && str6.length() > str7.length()) {
                                if (this.enteredCharacterStart - iIndexOfComma < str6.length()) {
                                    strSubstring = str6.substring(0, str7.length());
                                } else {
                                    strSubstring = str6.substring(str6.length() - str7.length());
                                }
                                jLongValue4 = Utilities.parseLong(strSubstring).longValue();
                            }
                            PaymentFormActivity.this.tipAmount = Long.valueOf(jLongValue3 + jLongValue4);
                            if (PaymentFormActivity.this.paymentForm.invoice.max_tip_amount != 0 && PaymentFormActivity.this.tipAmount.longValue() > PaymentFormActivity.this.paymentForm.invoice.max_tip_amount) {
                                PaymentFormActivity paymentFormActivity = PaymentFormActivity.this;
                                paymentFormActivity.tipAmount = Long.valueOf(paymentFormActivity.paymentForm.invoice.max_tip_amount);
                            }
                            int selectionStart = PaymentFormActivity.this.inputFields[0].getSelectionStart();
                            PaymentFormActivity.this.ignoreOnTextChange = true;
                            long jLongValue5 = PaymentFormActivity.this.tipAmount.longValue();
                            PaymentFormActivity paymentFormActivity2 = PaymentFormActivity.this;
                            if (jLongValue5 == 0) {
                                paymentFormActivity2.inputFields[0].setText(_UrlKt.FRAGMENT_ENCODE_SET);
                            } else {
                                EditTextBoldCursor editTextBoldCursor9 = paymentFormActivity2.inputFields[0];
                                currencyString = LocaleController.getInstance().formatCurrencyString(PaymentFormActivity.this.tipAmount.longValue(), false, z8, true, PaymentFormActivity.this.paymentForm.invoice.currency);
                                editTextBoldCursor9.setText(currencyString);
                            }
                            if (jLongValue2 < PaymentFormActivity.this.tipAmount.longValue() && jLongValue2 != 0 && this.anyBefore && selectionStart >= 0) {
                                PaymentFormActivity.this.inputFields[0].setSelection(Math.min(selectionStart, PaymentFormActivity.this.inputFields[0].length()));
                            } else if (!this.isDeletedChar || this.beforeTextLength == PaymentFormActivity.this.inputFields[0].length()) {
                                if (!this.lastDotEntered && z8 && iIndexOfComma >= 0) {
                                    int iIndexOfComma2 = indexOfComma(currencyString);
                                    PaymentFormActivity paymentFormActivity3 = PaymentFormActivity.this;
                                    if (iIndexOfComma2 > 0) {
                                        paymentFormActivity3.inputFields[0].setSelection(iIndexOfComma2 + 1);
                                    } else {
                                        paymentFormActivity3.inputFields[0].setSelection(PaymentFormActivity.this.inputFields[0].length());
                                    }
                                } else {
                                    PaymentFormActivity.this.inputFields[0].setSelection(PaymentFormActivity.this.inputFields[0].length());
                                }
                            } else {
                                PaymentFormActivity.this.inputFields[0].setSelection(Math.max(0, Math.min(selectionStart, PaymentFormActivity.this.inputFields[0].length())));
                            }
                            this.lastDotEntered = z8;
                            PaymentFormActivity.this.updateTotalPrice();
                            this.overrideText = null;
                            PaymentFormActivity.this.ignoreOnTextChange = false;
                        }
                    });
                    this.inputFields[0].setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda8
                        @Override // android.widget.TextView.OnEditorActionListener
                        public final boolean onEditorAction(TextView textView2, int i36, KeyEvent keyEvent) {
                            return PaymentFormActivity.$r8$lambda$twxww_K7r_wLtF8pcrVN4TZOQQk(textView2, i36, keyEvent);
                        }
                    });
                    this.inputFields[0].requestFocus();
                    if (!this.paymentForm.invoice.suggested_tip_amounts.isEmpty()) {
                        HorizontalScrollView horizontalScrollView = new HorizontalScrollView(context);
                        horizontalScrollView.setHorizontalScrollBarEnabled(false);
                        horizontalScrollView.setVerticalScrollBarEnabled(false);
                        horizontalScrollView.setClipToPadding(false);
                        horizontalScrollView.setPadding(AndroidUtilities.dp(21.0f), 0, AndroidUtilities.dp(21.0f), 0);
                        horizontalScrollView.setFillViewport(true);
                        frameLayout5.addView(horizontalScrollView, LayoutHelper.createFrame(-1, 30.0f, 51, 0.0f, 44.0f, 0.0f, 0.0f));
                        final int[] iArr = new int[1];
                        final int[] iArr2 = new int[1];
                        final int size2 = this.paymentForm.invoice.suggested_tip_amounts.size();
                        LinearLayout linearLayout3 = new LinearLayout(context) { // from class: org.telegram.ui.PaymentFormActivity.12
                            boolean ignoreLayout;

                            @Override // android.widget.LinearLayout, android.view.View
                            public void onMeasure(int i36, int i37) {
                                int size3 = View.MeasureSpec.getSize(i36);
                                this.ignoreLayout = true;
                                int iDp = AndroidUtilities.dp(9.0f);
                                int i38 = size2;
                                int i39 = iDp * (i38 - 1);
                                int i40 = (iArr[0] * i38) + i39;
                                float f2 = 1.0f;
                                if (i40 <= size3) {
                                    setWeightSum(1.0f);
                                    int childCount = getChildCount();
                                    for (int i41 = 0; i41 < childCount; i41++) {
                                        getChildAt(i41).getLayoutParams().width = 0;
                                        ((LinearLayout.LayoutParams) getChildAt(i41).getLayoutParams()).weight = 1.0f / childCount;
                                    }
                                } else if (iArr2[0] + i39 <= size3) {
                                    setWeightSum(1.0f);
                                    int i42 = size3 - i39;
                                    int childCount2 = getChildCount();
                                    for (int i43 = 0; i43 < childCount2; i43++) {
                                        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) getChildAt(i43).getLayoutParams();
                                        layoutParams.width = 0;
                                        float fIntValue = ((Integer) r7.getTag(C2665R.id.width_tag)).intValue() / i42;
                                        layoutParams.weight = fIntValue;
                                        f2 -= fIntValue;
                                    }
                                    float f3 = f2 / (size2 - 1);
                                    if (f3 > 0.0f) {
                                        int childCount3 = getChildCount();
                                        for (int i44 = 0; i44 < childCount3; i44++) {
                                            View childAt = getChildAt(i44);
                                            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) childAt.getLayoutParams();
                                            if (((Integer) childAt.getTag(C2665R.id.width_tag)).intValue() != iArr[0]) {
                                                layoutParams2.weight += f3;
                                            }
                                        }
                                    }
                                } else {
                                    setWeightSum(0.0f);
                                    int childCount4 = getChildCount();
                                    for (int i45 = 0; i45 < childCount4; i45++) {
                                        getChildAt(i45).getLayoutParams().width = -2;
                                        ((LinearLayout.LayoutParams) getChildAt(i45).getLayoutParams()).weight = 0.0f;
                                    }
                                }
                                this.ignoreLayout = false;
                                super.onMeasure(i36, i37);
                            }

                            @Override // android.view.View, android.view.ViewParent
                            public void requestLayout() {
                                if (this.ignoreLayout) {
                                    return;
                                }
                                super.requestLayout();
                            }
                        };
                        this.tipLayout = linearLayout3;
                        linearLayout3.setOrientation(0);
                        horizontalScrollView.addView(this.tipLayout, LayoutHelper.createScroll(-1, 30, 51));
                        int themedColor = getThemedColor(Theme.key_contacts_inviteBackground);
                        int i36 = 0;
                        while (i36 < size2) {
                            boolean z8 = LocaleController.isRTL;
                            TLRPC.PaymentForm paymentForm5 = this.paymentForm;
                            if (z8) {
                                jLongValue = paymentForm5.invoice.suggested_tip_amounts.get((size2 - i36) - 1).longValue();
                            } else {
                                jLongValue = paymentForm5.invoice.suggested_tip_amounts.get(i36).longValue();
                            }
                            String currencyString = LocaleController.getInstance().formatCurrencyString(jLongValue, this.paymentForm.invoice.currency);
                            final TextView textView2 = new TextView(context);
                            textView2.setTextSize(1, f);
                            textView2.setTypeface(AndroidUtilities.bold());
                            textView2.setLines(1);
                            textView2.setTag(Long.valueOf(jLongValue));
                            textView2.setMaxLines(1);
                            textView2.setText(currencyString);
                            textView2.setPadding(AndroidUtilities.dp(15.0f), 0, AndroidUtilities.dp(15.0f), 0);
                            textView2.setTextColor(getThemedColor(Theme.key_chats_secretName));
                            textView2.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.dp(15.0f), 536870911 & themedColor));
                            textView2.setSingleLine(true);
                            textView2.setGravity(17);
                            this.tipLayout.addView(textView2, LayoutHelper.createLinear(-2, -1, 19, 0, 0, i36 != size2 + (-1) ? 9 : 0, 0));
                            textView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda9
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view4) {
                                    this.f$0.lambda$createView$15(textView2, jLongValue, view4);
                                }
                            });
                            int iCeil = ((int) Math.ceil(textView2.getPaint().measureText(currencyString))) + AndroidUtilities.dp(30.0f);
                            textView2.setTag(C2665R.id.width_tag, Integer.valueOf(iCeil));
                            iArr[0] = Math.max(iArr[0], iCeil);
                            iArr2[0] = iArr2[0] + iCeil;
                            i36++;
                            f = 14.0f;
                        }
                    }
                }
                this.linearLayout2.addView(this.totalCell);
                this.sectionCell[2] = new ShadowSectionCell(context, this.resourcesProvider);
                this.sectionCell[2].setBackgroundDrawable(Theme.getThemedDrawableByKey(context, C2665R.drawable.greydivider_bottom, Theme.key_windowBackgroundGrayShadow));
                this.linearLayout2.addView(this.sectionCell[2], LayoutHelper.createLinear(-1, -2));
                this.detailSettingsCell[0] = new TextDetailSettingsCell(context) { // from class: org.telegram.ui.PaymentFormActivity.13
                    @Override // android.view.View
                    public void setVisibility(int i37) {
                        super.setVisibility(i37);
                    }
                };
                this.detailSettingsCell[0].setBackground(Theme.getSelectorDrawable(true));
                TextDetailSettingsCell textDetailSettingsCell = this.detailSettingsCell[0];
                String str6 = this.cardName;
                textDetailSettingsCell.setTextAndValueAndIcon((str6 == null || str6.length() <= 1) ? this.cardName : this.cardName.substring(0, 1).toUpperCase() + this.cardName.substring(1), LocaleController.getString(C2665R.string.PaymentCheckoutMethod), C2665R.drawable.msg_payment_card, true);
                if (this.isCheckoutPreview || this.allowUnregistered) {
                    String str7 = this.cardName;
                    i = (str7 == null || str7.length() <= 1) ? 8 : 0;
                } else {
                    i = 0;
                }
                this.detailSettingsCell[0].setVisibility(i);
                this.linearLayout2.addView(this.detailSettingsCell[0]);
                if (this.currentStep == 4) {
                    this.detailSettingsCell[0].setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda10
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view4) {
                            this.f$0.lambda$createView$16(view4);
                        }
                    });
                }
                TLRPC.User user3 = null;
                for (int i37 = 0; i37 < this.paymentForm.users.size(); i37++) {
                    TLRPC.User user4 = this.paymentForm.users.get(i37);
                    if (user4.id == this.paymentForm.provider_id) {
                        user3 = user4;
                    }
                }
                char c3 = 1;
                this.detailSettingsCell[1] = new TextDetailSettingsCell(context);
                this.detailSettingsCell[1].setBackground(Theme.getSelectorDrawable(true));
                if (user3 != null) {
                    TextDetailSettingsCell textDetailSettingsCell2 = this.detailSettingsCell[1];
                    name = ContactsController.formatName(user3.first_name, user3.last_name);
                    String string = LocaleController.getString(C2665R.string.PaymentCheckoutProvider);
                    int i38 = C2665R.drawable.msg_payment_provider;
                    TLRPC.TL_payments_validateRequestedInfo tL_payments_validateRequestedInfo = this.validateRequest;
                    textDetailSettingsCell2.setTextAndValueAndIcon(name, string, i38, ((tL_payments_validateRequestedInfo == null || (((tL_paymentRequestedInfo2 = tL_payments_validateRequestedInfo.info) == null || tL_paymentRequestedInfo2.shipping_address == null) && this.shippingOption == null)) && ((tL_paymentRequestedInfo = this.paymentForm.saved_info) == null || tL_paymentRequestedInfo.shipping_address == null)) ? false : true);
                    c3 = 1;
                    this.linearLayout2.addView(this.detailSettingsCell[1]);
                }
                this.detailSettingsCell[c3].setVisibility(user3 != null ? i : 8);
                TLRPC.TL_payments_validateRequestedInfo tL_payments_validateRequestedInfo2 = this.validateRequest;
                if (tL_payments_validateRequestedInfo2 != null || (this.isCheckoutPreview && (paymentForm2 = this.paymentForm) != null && paymentForm2.saved_info != null)) {
                    TLRPC.TL_paymentRequestedInfo tL_paymentRequestedInfo13 = tL_payments_validateRequestedInfo2 != null ? tL_payments_validateRequestedInfo2.info : this.paymentForm.saved_info;
                    this.detailSettingsCell[2] = new TextDetailSettingsCell(context);
                    this.detailSettingsCell[2].setVisibility(8);
                    this.linearLayout2.addView(this.detailSettingsCell[2]);
                    if (tL_paymentRequestedInfo13.shipping_address != null) {
                        this.detailSettingsCell[2].setVisibility(0);
                        int i39 = this.currentStep;
                        TextDetailSettingsCell[] textDetailSettingsCellArr = this.detailSettingsCell;
                        if (i39 == 4) {
                            textDetailSettingsCellArr[2].setBackgroundDrawable(Theme.getSelectorDrawable(true));
                            this.detailSettingsCell[2].setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda11
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view4) {
                                    this.f$0.lambda$createView$17(view4);
                                }
                            });
                        } else {
                            textDetailSettingsCellArr[2].setBackgroundColor(getThemedColor(Theme.key_windowBackgroundWhite));
                        }
                    }
                    this.detailSettingsCell[3] = new TextDetailSettingsCell(context);
                    this.detailSettingsCell[3].setVisibility(8);
                    this.linearLayout2.addView(this.detailSettingsCell[3]);
                    if (tL_paymentRequestedInfo13.name != null) {
                        this.detailSettingsCell[3].setVisibility(0);
                        int i40 = this.currentStep;
                        TextDetailSettingsCell[] textDetailSettingsCellArr2 = this.detailSettingsCell;
                        if (i40 == 4) {
                            textDetailSettingsCellArr2[3].setBackgroundDrawable(Theme.getSelectorDrawable(true));
                            this.detailSettingsCell[3].setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda12
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view4) {
                                    this.f$0.lambda$createView$18(view4);
                                }
                            });
                        } else {
                            textDetailSettingsCellArr2[3].setBackgroundColor(getThemedColor(Theme.key_windowBackgroundWhite));
                        }
                    }
                    this.detailSettingsCell[4] = new TextDetailSettingsCell(context);
                    this.detailSettingsCell[4].setVisibility(8);
                    this.linearLayout2.addView(this.detailSettingsCell[4]);
                    if (tL_paymentRequestedInfo13.phone != null) {
                        this.detailSettingsCell[4].setVisibility(0);
                        int i41 = this.currentStep;
                        TextDetailSettingsCell[] textDetailSettingsCellArr3 = this.detailSettingsCell;
                        if (i41 == 4) {
                            textDetailSettingsCellArr3[4].setBackgroundDrawable(Theme.getSelectorDrawable(true));
                            this.detailSettingsCell[4].setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda13
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view4) {
                                    this.f$0.lambda$createView$19(view4);
                                }
                            });
                        } else {
                            textDetailSettingsCellArr3[4].setBackgroundColor(getThemedColor(Theme.key_windowBackgroundWhite));
                        }
                    }
                    this.detailSettingsCell[5] = new TextDetailSettingsCell(context);
                    this.detailSettingsCell[5].setVisibility(8);
                    this.linearLayout2.addView(this.detailSettingsCell[5]);
                    if (tL_paymentRequestedInfo13.email != null) {
                        this.detailSettingsCell[5].setVisibility(0);
                        int i42 = this.currentStep;
                        TextDetailSettingsCell[] textDetailSettingsCellArr4 = this.detailSettingsCell;
                        if (i42 == 4) {
                            textDetailSettingsCellArr4[5].setBackgroundDrawable(Theme.getSelectorDrawable(true));
                            this.detailSettingsCell[5].setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda14
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view4) {
                                    this.f$0.lambda$createView$20(view4);
                                }
                            });
                        } else {
                            textDetailSettingsCellArr4[5].setBackgroundColor(getThemedColor(Theme.key_windowBackgroundWhite));
                        }
                    }
                    if (this.shippingOption != null) {
                        this.detailSettingsCell[6] = new TextDetailSettingsCell(context);
                        this.detailSettingsCell[6].setBackgroundColor(getThemedColor(Theme.key_windowBackgroundWhite));
                        this.detailSettingsCell[6].setTextAndValueAndIcon(this.shippingOption.title, LocaleController.getString(C2665R.string.PaymentCheckoutShippingMethod), C2665R.drawable.msg_payment_delivery, false);
                        this.linearLayout2.addView(this.detailSettingsCell[6]);
                    }
                    setAddressFields(tL_paymentRequestedInfo13);
                }
                if (this.currentStep == 4) {
                    this.recurrentAccepted = !this.isCheckoutPreview;
                    if (this.invoiceInput instanceof TLRPC.TL_inputInvoiceStars) {
                        this.recurrentAccepted = true;
                    }
                    this.bottomLayout = new BottomFrameLayout(context, this.paymentForm);
                    View view4 = new View(context);
                    view4.setBackground(Theme.getSelectorDrawable(getThemedColor(Theme.key_listSelector), false));
                    this.bottomLayout.addView(view4, LayoutHelper.createFrame(-1, -1.0f));
                    frameLayout2.addView(this.bottomLayout, LayoutHelper.createFrame(-1, 48, 80));
                    this.bottomLayout.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda16
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view5) {
                            this.f$0.lambda$createView$23(name, view5);
                        }
                    });
                    TextView textView3 = new TextView(context);
                    this.payTextView = textView3;
                    int i43 = Theme.key_contacts_inviteText;
                    textView3.setTextColor(getThemedColor(i43));
                    this.payTextView.setText(LocaleController.formatString(C2665R.string.PaymentCheckoutPay, this.totalPrice[0]));
                    this.payTextView.setTextSize(1, 14.0f);
                    this.payTextView.setGravity(17);
                    this.payTextView.setTypeface(AndroidUtilities.bold());
                    this.bottomLayout.addView(this.payTextView, LayoutHelper.createFrame(-1, -1.0f));
                    ContextProgressView contextProgressView2 = new ContextProgressView(context, 0);
                    this.progressViewButton = contextProgressView2;
                    contextProgressView2.setVisibility(4);
                    int themedColor2 = getThemedColor(i43);
                    this.progressViewButton.setColors(805306367 & themedColor2, themedColor2);
                    this.bottomLayout.addView(this.progressViewButton, LayoutHelper.createFrame(-1, -1.0f));
                    this.bottomLayout.setChecked(this.recurrentAccepted, false);
                    this.payTextView.setAlpha(!this.recurrentAccepted ? 0.8f : 1.0f);
                    this.doneItem.setEnabled(false);
                    this.doneItem.getContentView().setVisibility(4);
                    AndroidUtilities.checkAndroidTheme(context, true);
                    try {
                        WebView webView2 = new WebView(context) { // from class: org.telegram.ui.PaymentFormActivity.18
                            @Override // android.webkit.WebView, android.view.View
                            public boolean onTouchEvent(MotionEvent motionEvent) {
                                getParent().requestDisallowInterceptTouchEvent(true);
                                return super.onTouchEvent(motionEvent);
                            }
                        };
                        this.webView = webView2;
                        webView2.setBackgroundColor(-1);
                        this.webView.getSettings().setJavaScriptEnabled(true);
                        this.webView.getSettings().setDomStorageEnabled(true);
                        this.webView.getSettings().setSupportZoom(true);
                        this.webView.getSettings().setBuiltInZoomControls(true);
                        this.webView.getSettings().setDisplayZoomControls(false);
                        this.webView.getSettings().setUseWideViewPort(true);
                        this.webView.getSettings().setMixedContentMode(0);
                        CookieManager.getInstance().setAcceptThirdPartyCookies(this.webView, true);
                        this.webView.setWebViewClient(new AnonymousClass19(context));
                    } catch (Exception e5) {
                        FileLog.m992e(e5);
                    }
                    this.recurrentAcceptCell = null;
                    if (this.paymentForm.invoice.terms_url != null) {
                        RecurrentPaymentsAcceptCell recurrentPaymentsAcceptCell = new RecurrentPaymentsAcceptCell(context, getResourceProvider());
                        this.recurrentAcceptCell = recurrentPaymentsAcceptCell;
                        recurrentPaymentsAcceptCell.setChecked(this.recurrentAccepted);
                        if (TextUtils.isEmpty(this.currentBotName)) {
                            String string2 = LocaleController.getString(C2665R.string.PaymentCheckoutAcceptRecurrentFee);
                            spannableStringBuilder = new SpannableStringBuilder(string2);
                            int iIndexOf = string2.indexOf(42);
                            int iLastIndexOf = string2.lastIndexOf(42);
                            if (iIndexOf != -1 && iLastIndexOf != -1) {
                                SpannableString spannableString = new SpannableString(string2.substring(iIndexOf + 1, iLastIndexOf));
                                spannableString.setSpan(new URLSpanNoUnderline(this.paymentForm.invoice.terms_url), 0, spannableString.length(), 33);
                                int i44 = iLastIndexOf + 1;
                                spannableStringBuilder.replace(iIndexOf, i44, (CharSequence) spannableString);
                                string2.substring(0, iIndexOf);
                                spannableString.toString();
                                string2.substring(i44);
                            }
                        } else {
                            String string3 = LocaleController.getString(C2665R.string.PaymentCheckoutAcceptRecurrent);
                            spannableStringBuilder = new SpannableStringBuilder(string3);
                            int iIndexOf2 = string3.indexOf(42);
                            int iLastIndexOf2 = string3.lastIndexOf(42);
                            if (iIndexOf2 != -1 && iLastIndexOf2 != -1) {
                                SpannableString spannableString2 = new SpannableString(string3.substring(iIndexOf2 + 1, iLastIndexOf2));
                                spannableString2.setSpan(new URLSpanNoUnderline(this.paymentForm.invoice.terms_url), 0, spannableString2.length(), 33);
                                int i45 = iLastIndexOf2 + 1;
                                spannableStringBuilder.replace(iIndexOf2, i45, (CharSequence) spannableString2);
                                string3 = string3.substring(0, iIndexOf2) + ((Object) spannableString2) + string3.substring(i45);
                            }
                            int iIndexOf3 = string3.indexOf("%1$s");
                            if (iIndexOf3 != -1) {
                                spannableStringBuilder.replace(iIndexOf3, iIndexOf3 + 4, (CharSequence) this.currentBotName);
                                spannableStringBuilder.setSpan(new TypefaceSpan(AndroidUtilities.bold()), iIndexOf3, this.currentBotName.length() + iIndexOf3, 33);
                            }
                        }
                        this.recurrentAcceptCell.setText(spannableStringBuilder);
                        this.recurrentAcceptCell.setBackground(Theme.createSelectorWithBackgroundDrawable(getThemedColor(Theme.key_windowBackgroundWhite), getThemedColor(Theme.key_listSelector)));
                        this.recurrentAcceptCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda17
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view5) {
                                this.f$0.lambda$createView$24(view5);
                            }
                        });
                        frameLayout2.addView(this.recurrentAcceptCell, LayoutHelper.createFrame(-1, -2.0f, 80, 0.0f, 0.0f, 0.0f, 48.0f));
                    }
                    WebView webView3 = this.webView;
                    if (webView3 != null) {
                        frameLayout2.addView(webView3, LayoutHelper.createFrame(-1, -1.0f));
                        this.webView.setVisibility(8);
                    }
                }
                this.sectionCell[1] = new ShadowSectionCell(context, this.resourcesProvider);
                this.sectionCell[1].setBackgroundDrawable(Theme.getThemedDrawableByKey(context, C2665R.drawable.greydivider_bottom, Theme.key_windowBackgroundGrayShadow));
                if (i != 0 && this.currentStep == 4 && this.validateRequest == null && ((paymentForm = this.paymentForm) == null || paymentForm.saved_info == null)) {
                    c2 = 1;
                    this.sectionCell[1].setVisibility(i);
                } else {
                    c2 = 1;
                }
                this.linearLayout2.addView(this.sectionCell[c2], LayoutHelper.createLinear(-1, -2));
            } else if (i8 == 6) {
                EditTextSettingsCell editTextSettingsCell = new EditTextSettingsCell(context);
                this.codeFieldCell = editTextSettingsCell;
                editTextSettingsCell.setTextAndHint(_UrlKt.FRAGMENT_ENCODE_SET, LocaleController.getString(C2665R.string.PasswordCode), false);
                this.codeFieldCell.setBackgroundColor(getThemedColor(Theme.key_windowBackgroundWhite));
                EditTextBoldCursor textView4 = this.codeFieldCell.getTextView();
                textView4.setInputType(3);
                textView4.setImeOptions(6);
                textView4.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda18
                    @Override // android.widget.TextView.OnEditorActionListener
                    public final boolean onEditorAction(TextView textView5, int i46, KeyEvent keyEvent) {
                        return this.f$0.lambda$createView$25(textView5, i46, keyEvent);
                    }
                });
                textView4.addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.PaymentFormActivity.20
                    @Override // android.text.TextWatcher
                    public void beforeTextChanged(CharSequence charSequence, int i46, int i47, int i48) {
                    }

                    @Override // android.text.TextWatcher
                    public void onTextChanged(CharSequence charSequence, int i46, int i47, int i48) {
                    }

                    @Override // android.text.TextWatcher
                    public void afterTextChanged(Editable editable) {
                        if (PaymentFormActivity.this.emailCodeLength == 0 || editable.length() != PaymentFormActivity.this.emailCodeLength) {
                            return;
                        }
                        PaymentFormActivity.this.sendSavePassword(false);
                    }
                });
                this.linearLayout2.addView(this.codeFieldCell, LayoutHelper.createLinear(-1, -2));
                this.bottomCell[2] = new TextInfoPrivacyCell(context, this.resourcesProvider);
                this.bottomCell[2].setBackgroundDrawable(Theme.getThemedDrawableByKey(context, C2665R.drawable.greydivider, Theme.key_windowBackgroundGrayShadow));
                this.linearLayout2.addView(this.bottomCell[2], LayoutHelper.createLinear(-1, -2));
                this.settingsCell[1] = new TextSettingsCell(context, this.resourcesProvider);
                this.settingsCell[1].setBackgroundDrawable(Theme.getSelectorDrawable(true));
                TextSettingsCell textSettingsCell = this.settingsCell[1];
                int i46 = Theme.key_windowBackgroundWhiteBlackText;
                textSettingsCell.setTag(Integer.valueOf(i46));
                this.settingsCell[1].setTextColor(getThemedColor(i46));
                this.settingsCell[1].setText(LocaleController.getString(C2665R.string.ResendCode), true);
                this.linearLayout2.addView(this.settingsCell[1], LayoutHelper.createLinear(-1, -2));
                this.settingsCell[1].setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda19
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view5) {
                        this.f$0.lambda$createView$27(view5);
                    }
                });
                this.settingsCell[0] = new TextSettingsCell(context, this.resourcesProvider);
                this.settingsCell[0].setBackgroundDrawable(Theme.getSelectorDrawable(true));
                TextSettingsCell textSettingsCell2 = this.settingsCell[0];
                int i47 = Theme.key_text_RedRegular;
                textSettingsCell2.setTag(Integer.valueOf(i47));
                this.settingsCell[0].setTextColor(getThemedColor(i47));
                this.settingsCell[0].setText(LocaleController.getString(C2665R.string.AbortPassword), false);
                this.linearLayout2.addView(this.settingsCell[0], LayoutHelper.createLinear(-1, -2));
                this.settingsCell[0].setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda20
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view5) {
                        this.f$0.lambda$createView$29(view5);
                    }
                });
                this.inputFields = new EditTextBoldCursor[3];
                int i48 = 0;
                for (int i49 = 3; i48 < i49; i49 = 3) {
                    if (i48 == 0) {
                        this.headerCell[0] = new HeaderCell(context, this.resourcesProvider);
                        this.headerCell[0].setBackgroundColor(getThemedColor(Theme.key_windowBackgroundWhite));
                        this.headerCell[0].setText(LocaleController.getString(C2665R.string.PaymentPasswordTitle));
                        this.linearLayout2.addView(this.headerCell[0], LayoutHelper.createLinear(-1, -2));
                    } else if (i48 == 2) {
                        this.headerCell[1] = new HeaderCell(context, this.resourcesProvider);
                        this.headerCell[1].setBackgroundColor(getThemedColor(Theme.key_windowBackgroundWhite));
                        this.headerCell[1].setText(LocaleController.getString(C2665R.string.PaymentPasswordEmailTitle));
                        this.linearLayout2.addView(this.headerCell[1], LayoutHelper.createLinear(-1, -2));
                    }
                    FrameLayout frameLayout6 = new FrameLayout(context);
                    frameLayout6.setClipChildren(false);
                    this.linearLayout2.addView(frameLayout6, LayoutHelper.createLinear(-1, 50));
                    int i50 = Theme.key_windowBackgroundWhite;
                    frameLayout6.setBackgroundColor(getThemedColor(i50));
                    if (i48 == 0) {
                        View view5 = new View(context) { // from class: org.telegram.ui.PaymentFormActivity.21
                            @Override // android.view.View
                            public void onDraw(Canvas canvas) {
                                canvas.drawLine(LocaleController.isRTL ? 0.0f : AndroidUtilities.dp(20.0f), getMeasuredHeight() - 1, getMeasuredWidth() - (LocaleController.isRTL ? AndroidUtilities.dp(20.0f) : 0), getMeasuredHeight() - 1, Theme.dividerPaint);
                            }
                        };
                        view5.setBackgroundColor(getThemedColor(i50));
                        this.dividers.add(view5);
                        frameLayout6.addView(view5, new FrameLayout.LayoutParams(-1, 1, 83));
                    }
                    this.inputFields[i48] = new EditTextBoldCursor(context);
                    this.inputFields[i48].setTag(Integer.valueOf(i48));
                    this.inputFields[i48].setTextSize(1, 16.0f);
                    this.inputFields[i48].setHintTextColor(getThemedColor(Theme.key_windowBackgroundWhiteHintText));
                    EditTextBoldCursor editTextBoldCursor9 = this.inputFields[i48];
                    int i51 = Theme.key_windowBackgroundWhiteBlackText;
                    editTextBoldCursor9.setTextColor(getThemedColor(i51));
                    this.inputFields[i48].setBackgroundDrawable(null);
                    this.inputFields[i48].setCursorColor(getThemedColor(i51));
                    this.inputFields[i48].setCursorSize(AndroidUtilities.dp(20.0f));
                    this.inputFields[i48].setCursorWidth(1.5f);
                    if (i48 == 0 || i48 == 1) {
                        this.inputFields[i48].setInputType(129);
                        this.inputFields[i48].setTypeface(Typeface.DEFAULT);
                        this.inputFields[i48].setImeOptions(268435461);
                    } else {
                        this.inputFields[i48].setInputType(33);
                        this.inputFields[i48].setImeOptions(268435462);
                    }
                    if (i48 == 0) {
                        this.inputFields[i48].setHint(LocaleController.getString(C2665R.string.PaymentPasswordEnter));
                        this.inputFields[i48].requestFocus();
                    } else if (i48 == 1) {
                        this.inputFields[i48].setHint(LocaleController.getString(C2665R.string.PaymentPasswordReEnter));
                    } else if (i48 == 2) {
                        this.inputFields[i48].setHint(LocaleController.getString(C2665R.string.PaymentPasswordEmail));
                    }
                    this.inputFields[i48].setPadding(0, 0, 0, AndroidUtilities.dp(6.0f));
                    this.inputFields[i48].setGravity(LocaleController.isRTL ? 5 : 3);
                    frameLayout6.addView(this.inputFields[i48], LayoutHelper.createFrame(-1, -2.0f, 51, 21.0f, 12.0f, 21.0f, 6.0f));
                    this.inputFields[i48].setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda21
                        @Override // android.widget.TextView.OnEditorActionListener
                        public final boolean onEditorAction(TextView textView5, int i52, KeyEvent keyEvent) {
                            return this.f$0.lambda$createView$30(textView5, i52, keyEvent);
                        }
                    });
                    if (i48 == 1) {
                        this.bottomCell[0] = new TextInfoPrivacyCell(context, this.resourcesProvider);
                        this.bottomCell[0].setText(LocaleController.getString(C2665R.string.PaymentPasswordInfo));
                        this.bottomCell[0].setBackgroundDrawable(Theme.getThemedDrawableByKey(context, C2665R.drawable.greydivider, Theme.key_windowBackgroundGrayShadow));
                        this.linearLayout2.addView(this.bottomCell[0], LayoutHelper.createLinear(-1, -2));
                    } else if (i48 == 2) {
                        this.bottomCell[1] = new TextInfoPrivacyCell(context, this.resourcesProvider);
                        this.bottomCell[1].setText(LocaleController.getString(C2665R.string.PaymentPasswordEmailInfo));
                        this.bottomCell[1].setBackgroundDrawable(Theme.getThemedDrawableByKey(context, C2665R.drawable.greydivider_bottom, Theme.key_windowBackgroundGrayShadow));
                        this.linearLayout2.addView(this.bottomCell[1], LayoutHelper.createLinear(-1, -2));
                    }
                    i48++;
                }
                updatePasswordFields();
            }
        }
        return this.fragmentView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$1(View view, MotionEvent motionEvent) {
        if (getParentActivity() == null) {
            return false;
        }
        if (motionEvent.getAction() == 1) {
            CountrySelectActivity countrySelectActivity = new CountrySelectActivity(false);
            countrySelectActivity.setDisableAnonymousNumbers(true);
            countrySelectActivity.setCountrySelectActivityDelegate(new CountrySelectActivity.CountrySelectActivityDelegate() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda42
                @Override // org.telegram.ui.CountrySelectActivity.CountrySelectActivityDelegate
                public final void didSelectCountry(CountrySelectActivity.Country country) {
                    this.f$0.lambda$createView$0(country);
                }
            });
            presentFragment(countrySelectActivity);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$0(CountrySelectActivity.Country country) {
        this.country = country;
        this.inputFields[4].setText(country.name);
        this.countryName = country.shortname;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$2(TextView textView, int i, KeyEvent keyEvent) {
        if (i != 5) {
            if (i != 6) {
                return false;
            }
            this.doneItem.performClick();
            return true;
        }
        int iIntValue = ((Integer) textView.getTag()).intValue();
        while (true) {
            iIntValue++;
            EditTextBoldCursor[] editTextBoldCursorArr = this.inputFields;
            if (iIntValue < editTextBoldCursorArr.length) {
                if (iIntValue != 4 && ((View) editTextBoldCursorArr[iIntValue].getParent()).getVisibility() == 0) {
                    this.inputFields[iIntValue].requestFocus();
                    break;
                }
            } else {
                break;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$3(View view) {
        boolean z = !this.saveShippingInfo;
        this.saveShippingInfo = z;
        this.checkCell1.setChecked(z);
    }

    /* JADX INFO: renamed from: org.telegram.ui.PaymentFormActivity$6 */
    public class C54196 extends WebViewClient {
        final /* synthetic */ Context val$context;

        public C54196(Context context) {
            this.val$context = context;
        }

        @Override // android.webkit.WebViewClient
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            try {
                if (!AndroidUtilities.isSafeToShow(PaymentFormActivity.this.getContext())) {
                    return true;
                }
                new AlertDialog.Builder(PaymentFormActivity.this.getContext(), PaymentFormActivity.this.resourcesProvider).setTitle(LocaleController.getString(C2665R.string.ChromeCrashTitle)).setMessage(AndroidUtilities.replaceSingleTag(LocaleController.getString(C2665R.string.ChromeCrashMessage), new Runnable() { // from class: org.telegram.ui.PaymentFormActivity$6$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onRenderProcessGone$0();
                    }
                })).setPositiveButton(LocaleController.getString(C2665R.string.OK), null).show();
                return true;
            } catch (Exception e) {
                FileLog.m992e(e);
                return false;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onRenderProcessGone$0() {
            Browser.openUrl(PaymentFormActivity.this.getContext(), "https://play.google.com/store/apps/details?id=com.google.android.webview");
        }

        @Override // android.webkit.WebViewClient
        public void onLoadResource(WebView webView, String str) {
            super.onLoadResource(webView, str);
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            PaymentFormActivity.this.shouldNavigateBack = !str.equals(r0.webViewUrl);
            try {
                Uri uri = Uri.parse(str);
                if ("t.me".equals(uri.getHost())) {
                    PaymentFormActivity.this.goToNextStep();
                    return true;
                }
                if (PaymentFormActivity.BLACKLISTED_PROTOCOLS.contains(uri.getScheme())) {
                    return true;
                }
                if (!PaymentFormActivity.WEBVIEW_PROTOCOLS.contains(uri.getScheme())) {
                    try {
                        if (PaymentFormActivity.this.getContext() instanceof Activity) {
                            ((Activity) PaymentFormActivity.this.getContext()).startActivityForResult(new Intent("android.intent.action.VIEW", uri), Opcodes.MUL_INT_LIT16);
                        }
                    } catch (ActivityNotFoundException unused) {
                        new AlertDialog.Builder(this.val$context).setTitle(PaymentFormActivity.this.currentBotName).setMessage(LocaleController.getString(C2665R.string.PaymentAppNotFoundForDeeplink)).setPositiveButton(LocaleController.getString(C2665R.string.OK), null).show();
                    }
                    return true;
                }
            } catch (Exception unused2) {
            }
            return super.shouldOverrideUrlLoading(webView, str);
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            PaymentFormActivity.this.webviewLoading = false;
            PaymentFormActivity.this.showEditDoneProgress(true, false);
            PaymentFormActivity.this.updateSavePaymentField();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$4(View view) {
        boolean z = !this.saveCardInfo;
        this.saveCardInfo = z;
        this.checkCell1.setChecked(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$6(View view, MotionEvent motionEvent) {
        if (getParentActivity() == null) {
            return false;
        }
        if (motionEvent.getAction() == 1) {
            CountrySelectActivity countrySelectActivity = new CountrySelectActivity(false);
            countrySelectActivity.setDisableAnonymousNumbers(true);
            countrySelectActivity.setCountrySelectActivityDelegate(new CountrySelectActivity.CountrySelectActivityDelegate() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda33
                @Override // org.telegram.ui.CountrySelectActivity.CountrySelectActivityDelegate
                public final void didSelectCountry(CountrySelectActivity.Country country) {
                    this.f$0.lambda$createView$5(country);
                }
            });
            presentFragment(countrySelectActivity);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$5(CountrySelectActivity.Country country) {
        this.country = country;
        this.inputFields[4].setText(country.name);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$7(TextView textView, int i, KeyEvent keyEvent) {
        if (i != 5) {
            if (i != 6) {
                return false;
            }
            this.doneItem.performClick();
            return true;
        }
        int iIntValue = ((Integer) textView.getTag()).intValue();
        while (true) {
            int i2 = iIntValue + 1;
            EditTextBoldCursor[] editTextBoldCursorArr = this.inputFields;
            if (i2 >= editTextBoldCursorArr.length) {
                break;
            }
            iIntValue = i2 == 4 ? iIntValue + 2 : i2;
            if (((View) editTextBoldCursorArr[iIntValue].getParent()).getVisibility() == 0) {
                this.inputFields[iIntValue].requestFocus();
                break;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$8(View view) {
        boolean z = !this.saveCardInfo;
        this.saveCardInfo = z;
        this.checkCell1.setChecked(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$9(View view) {
        int iIntValue = ((Integer) view.getTag()).intValue();
        int i = 0;
        while (true) {
            RadioCell[] radioCellArr = this.radioCells;
            if (i >= radioCellArr.length) {
                return;
            }
            radioCellArr[i].setChecked(iIntValue == i, true);
            i++;
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$lq9LWx85ffust2Y_olLL_Z-tadc, reason: not valid java name */
    public static /* synthetic */ boolean m17662$r8$lambda$lq9LWx85ffust2Y_olLL_Ztadc(View view, MotionEvent motionEvent) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$11(TextView textView, int i, KeyEvent keyEvent) {
        if (i != 6) {
            return false;
        }
        this.doneItem.performClick();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$12(View view) {
        this.passwordOk = false;
        goToNextStep();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$13(View view) {
        this.inputFields[0].requestFocus();
        AndroidUtilities.showKeyboard(this.inputFields[0]);
    }

    public static /* synthetic */ boolean $r8$lambda$twxww_K7r_wLtF8pcrVN4TZOQQk(TextView textView, int i, KeyEvent keyEvent) {
        if (i != 6) {
            return false;
        }
        AndroidUtilities.hideKeyboard(textView);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$15(TextView textView, long j, View view) {
        long jLongValue = ((Long) textView.getTag()).longValue();
        Long l = this.tipAmount;
        if (l != null && jLongValue == l.longValue()) {
            this.ignoreOnTextChange = true;
            this.inputFields[0].setText(_UrlKt.FRAGMENT_ENCODE_SET);
            this.ignoreOnTextChange = false;
            this.tipAmount = 0L;
            updateTotalPrice();
        } else {
            this.inputFields[0].setText(LocaleController.getInstance().formatCurrencyString(j, false, true, true, this.paymentForm.invoice.currency));
        }
        EditTextBoldCursor editTextBoldCursor = this.inputFields[0];
        editTextBoldCursor.setSelection(editTextBoldCursor.length());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$16(View view) {
        if (getParentActivity() == null) {
            return;
        }
        showChoosePaymentMethod();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$17(View view) {
        PaymentFormActivity paymentFormActivity = new PaymentFormActivity(this.invoiceInput, this.paymentForm, this.messageObject, this.invoiceSlug, 0, this.requestedInfo, this.shippingOption, this.tipAmount, null, this.cardName, this.validateRequest, this.saveCardInfo, null, this.parentFragment, this.allowUnregistered);
        paymentFormActivity.setCustomResultReceiver(this.customResultReceiver);
        paymentFormActivity.setCustomAnyResultReceiver(this.customAnyResultReceiver);
        paymentFormActivity.setDelegate(new PaymentFormActivityDelegate() { // from class: org.telegram.ui.PaymentFormActivity.14
            @Override // org.telegram.ui.PaymentFormActivity.PaymentFormActivityDelegate
            public void didSelectNewAddress(TLRPC.TL_payments_validateRequestedInfo tL_payments_validateRequestedInfo) {
                PaymentFormActivity.this.validateRequest = tL_payments_validateRequestedInfo;
                PaymentFormActivity paymentFormActivity2 = PaymentFormActivity.this;
                paymentFormActivity2.setAddressFields(paymentFormActivity2.validateRequest.info);
            }
        });
        presentFragment(paymentFormActivity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$18(View view) {
        PaymentFormActivity paymentFormActivity = new PaymentFormActivity(this.invoiceInput, this.paymentForm, this.messageObject, this.invoiceSlug, 0, this.requestedInfo, this.shippingOption, this.tipAmount, null, this.cardName, this.validateRequest, this.saveCardInfo, null, this.parentFragment, this.allowUnregistered);
        paymentFormActivity.setCustomResultReceiver(this.customResultReceiver);
        paymentFormActivity.setCustomAnyResultReceiver(this.customAnyResultReceiver);
        paymentFormActivity.setDelegate(new PaymentFormActivityDelegate() { // from class: org.telegram.ui.PaymentFormActivity.15
            @Override // org.telegram.ui.PaymentFormActivity.PaymentFormActivityDelegate
            public void didSelectNewAddress(TLRPC.TL_payments_validateRequestedInfo tL_payments_validateRequestedInfo) {
                PaymentFormActivity.this.validateRequest = tL_payments_validateRequestedInfo;
                PaymentFormActivity paymentFormActivity2 = PaymentFormActivity.this;
                paymentFormActivity2.setAddressFields(paymentFormActivity2.validateRequest.info);
            }
        });
        presentFragment(paymentFormActivity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$19(View view) {
        PaymentFormActivity paymentFormActivity = new PaymentFormActivity(this.invoiceInput, this.paymentForm, this.messageObject, this.invoiceSlug, 0, this.requestedInfo, this.shippingOption, this.tipAmount, null, this.cardName, this.validateRequest, this.saveCardInfo, null, this.parentFragment, this.allowUnregistered);
        paymentFormActivity.setCustomResultReceiver(this.customResultReceiver);
        paymentFormActivity.setCustomAnyResultReceiver(this.customAnyResultReceiver);
        paymentFormActivity.setDelegate(new PaymentFormActivityDelegate() { // from class: org.telegram.ui.PaymentFormActivity.16
            @Override // org.telegram.ui.PaymentFormActivity.PaymentFormActivityDelegate
            public void didSelectNewAddress(TLRPC.TL_payments_validateRequestedInfo tL_payments_validateRequestedInfo) {
                PaymentFormActivity.this.validateRequest = tL_payments_validateRequestedInfo;
                PaymentFormActivity paymentFormActivity2 = PaymentFormActivity.this;
                paymentFormActivity2.setAddressFields(paymentFormActivity2.validateRequest.info);
            }
        });
        presentFragment(paymentFormActivity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$20(View view) {
        PaymentFormActivity paymentFormActivity = new PaymentFormActivity(this.invoiceInput, this.paymentForm, this.messageObject, this.invoiceSlug, 0, this.requestedInfo, this.shippingOption, this.tipAmount, null, this.cardName, this.validateRequest, this.saveCardInfo, null, this.parentFragment, this.allowUnregistered);
        paymentFormActivity.setCustomResultReceiver(this.customResultReceiver);
        paymentFormActivity.setCustomAnyResultReceiver(this.customAnyResultReceiver);
        paymentFormActivity.setDelegate(new PaymentFormActivityDelegate() { // from class: org.telegram.ui.PaymentFormActivity.17
            @Override // org.telegram.ui.PaymentFormActivity.PaymentFormActivityDelegate
            public void didSelectNewAddress(TLRPC.TL_payments_validateRequestedInfo tL_payments_validateRequestedInfo) {
                PaymentFormActivity.this.validateRequest = tL_payments_validateRequestedInfo;
                PaymentFormActivity paymentFormActivity2 = PaymentFormActivity.this;
                paymentFormActivity2.setAddressFields(paymentFormActivity2.validateRequest.info);
            }
        });
        presentFragment(paymentFormActivity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0077, code lost:
    
        if (r2.invoice.flexible != false) goto L39;
     */
    /* JADX WARN: Removed duplicated region for block: B:40:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x008f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$createView$23(String str, final View view) {
        int i;
        RecurrentPaymentsAcceptCell recurrentPaymentsAcceptCell = this.recurrentAcceptCell;
        if (recurrentPaymentsAcceptCell != null && !this.recurrentAccepted) {
            this.shiftDp = -this.shiftDp;
            AndroidUtilities.shakeViewSpring(recurrentPaymentsAcceptCell.getTextView(), this.shiftDp);
            AndroidUtilities.shakeViewSpring(this.recurrentAcceptCell.getCheckBox(), this.shiftDp);
            try {
                this.recurrentAcceptCell.performHapticFeedback(3, 2);
                return;
            } catch (Exception unused) {
                return;
            }
        }
        boolean z = this.isCheckoutPreview;
        if (z && this.paymentForm.saved_info != null && this.validateRequest == null) {
            setDonePressed(true);
            sendSavedForm(new Runnable() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda31
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$createView$21(view);
                }
            });
            return;
        }
        if (z) {
            TLRPC.PaymentForm paymentForm = this.paymentForm;
            TLRPC.TL_paymentRequestedInfo tL_paymentRequestedInfo = paymentForm.saved_info;
            if (tL_paymentRequestedInfo == null) {
                TLRPC.TL_invoice tL_invoice = paymentForm.invoice;
                if (!tL_invoice.shipping_address_requested && !tL_invoice.email_requested && !tL_invoice.name_requested && !tL_invoice.phone_requested) {
                }
                if (tL_paymentRequestedInfo != null) {
                    TLRPC.TL_invoice tL_invoice2 = paymentForm.invoice;
                    if (tL_invoice2.shipping_address_requested || tL_invoice2.email_requested || tL_invoice2.name_requested || tL_invoice2.phone_requested) {
                        i = 0;
                    } else {
                        i = (this.savedCredentialsCard == null && this.paymentJson == null && this.googlePayCredentials == null) ? 2 : 1;
                    }
                }
                if (i != 2 && !paymentForm.additional_methods.isEmpty()) {
                    Objects.requireNonNull(view);
                    showChoosePaymentMethod(new EmbedBottomSheet$$ExternalSyntheticLambda6(view));
                    return;
                } else {
                    presentFragment(new PaymentFormActivity(this.invoiceInput, this.paymentForm, this.messageObject, this.invoiceSlug, i, this.requestedInfo, this.shippingOption, this.tipAmount, this.paymentJson, this.cardName, this.validateRequest, this.saveCardInfo, null, this.parentFragment, this.allowUnregistered).setCustomResultReceiver(this.customResultReceiver).setCustomAnyResultReceiver(this.customAnyResultReceiver));
                    return;
                }
            }
            if (this.savedCredentialsCard == null) {
                if (this.paymentJson != null || this.googlePayCredentials != null) {
                }
                if (tL_paymentRequestedInfo != null) {
                }
                if (i != 2) {
                }
                presentFragment(new PaymentFormActivity(this.invoiceInput, this.paymentForm, this.messageObject, this.invoiceSlug, i, this.requestedInfo, this.shippingOption, this.tipAmount, this.paymentJson, this.cardName, this.validateRequest, this.saveCardInfo, null, this.parentFragment, this.allowUnregistered).setCustomResultReceiver(this.customResultReceiver).setCustomAnyResultReceiver(this.customAnyResultReceiver));
                return;
            }
            if (this.shippingOption == null) {
            }
        }
        if (!this.paymentForm.password_missing && this.savedCredentialsCard != null) {
            if (UserConfig.getInstance(this.currentAccount).tmpPassword != null && UserConfig.getInstance(this.currentAccount).tmpPassword.valid_until < ConnectionsManager.getInstance(this.currentAccount).getCurrentTime() + 60) {
                UserConfig.getInstance(this.currentAccount).tmpPassword = null;
                UserConfig.getInstance(this.currentAccount).saveConfig(false);
            }
            if (UserConfig.getInstance(this.currentAccount).tmpPassword == null) {
                this.needPayAfterTransition = true;
                presentFragment(new PaymentFormActivity(this.invoiceInput, this.paymentForm, this.messageObject, this.invoiceSlug, 3, this.requestedInfo, this.shippingOption, this.tipAmount, null, this.cardName, this.validateRequest, this.saveCardInfo, null, this.parentFragment, this.allowUnregistered).setCustomResultReceiver(this.customResultReceiver).setCustomAnyResultReceiver(this.customAnyResultReceiver));
                this.needPayAfterTransition = false;
                return;
            } else if (this.isCheckoutPreview) {
                this.isCheckoutPreview = false;
                NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.paymentFinished);
            }
        }
        TLRPC.User user = this.botUser;
        if (user != null && !user.verified) {
            String str2 = "payment_warning_" + this.botUser.id;
            SharedPreferences notificationsSettings = MessagesController.getNotificationsSettings(this.currentAccount);
            if (!notificationsSettings.getBoolean(str2, false)) {
                notificationsSettings.edit().putBoolean(str2, true).apply();
                AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
                builder.setTitle(LocaleController.getString(C2665R.string.PaymentWarning));
                builder.setMessage(LocaleController.formatString("PaymentWarningText", C2665R.string.PaymentWarningText, this.currentBotName, str));
                builder.setPositiveButton(LocaleController.getString(C2665R.string.Continue), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda32
                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                    public final void onClick(AlertDialog alertDialog, int i2) {
                        this.f$0.lambda$createView$22(alertDialog, i2);
                    }
                });
                showDialog(builder.create());
                return;
            }
            showPayAlert(this.totalPrice[0]);
            return;
        }
        showPayAlert(this.totalPrice[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$21(View view) {
        setDonePressed(false);
        view.callOnClick();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$22(AlertDialog alertDialog, int i) {
        showPayAlert(this.totalPrice[0]);
    }

    /* JADX INFO: renamed from: org.telegram.ui.PaymentFormActivity$19, reason: invalid class name */
    public class AnonymousClass19 extends WebViewClient {
        final /* synthetic */ Context val$context;

        public AnonymousClass19(Context context) {
            this.val$context = context;
        }

        @Override // android.webkit.WebViewClient
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            try {
                if (!AndroidUtilities.isSafeToShow(PaymentFormActivity.this.getContext())) {
                    return true;
                }
                new AlertDialog.Builder(PaymentFormActivity.this.getContext(), PaymentFormActivity.this.resourcesProvider).setTitle(LocaleController.getString(C2665R.string.ChromeCrashTitle)).setMessage(AndroidUtilities.replaceSingleTag(LocaleController.getString(C2665R.string.ChromeCrashMessage), new Runnable() { // from class: org.telegram.ui.PaymentFormActivity$19$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onRenderProcessGone$0();
                    }
                })).setPositiveButton(LocaleController.getString(C2665R.string.OK), null).show();
                return true;
            } catch (Exception e) {
                FileLog.m992e(e);
                return false;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onRenderProcessGone$0() {
            Browser.openUrl(PaymentFormActivity.this.getContext(), "https://play.google.com/store/apps/details?id=com.google.android.webview");
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            PaymentFormActivity.this.webviewLoading = false;
            PaymentFormActivity.this.showEditDoneProgress(true, false);
            PaymentFormActivity.this.updateSavePaymentField();
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            try {
                Uri uri = Uri.parse(str);
                if ("t.me".equals(uri.getHost())) {
                    PaymentFormActivity.this.goToNextStep();
                    return true;
                }
                if (PaymentFormActivity.BLACKLISTED_PROTOCOLS.contains(uri.getScheme())) {
                    return true;
                }
                if (PaymentFormActivity.WEBVIEW_PROTOCOLS.contains(uri.getScheme())) {
                    return false;
                }
                try {
                    if (PaymentFormActivity.this.getContext() instanceof Activity) {
                        ((Activity) PaymentFormActivity.this.getContext()).startActivityForResult(new Intent("android.intent.action.VIEW", uri), Opcodes.MUL_INT_LIT16);
                    }
                } catch (ActivityNotFoundException unused) {
                    new AlertDialog.Builder(this.val$context).setTitle(PaymentFormActivity.this.currentBotName).setMessage(LocaleController.getString(C2665R.string.PaymentAppNotFoundForDeeplink)).setPositiveButton(LocaleController.getString(C2665R.string.OK), null).show();
                }
                return true;
            } catch (Exception unused2) {
                return false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$24(View view) {
        if (this.donePressed) {
            return;
        }
        boolean z = !this.recurrentAccepted;
        this.recurrentAccepted = z;
        this.recurrentAcceptCell.setChecked(z);
        this.bottomLayout.setChecked(this.recurrentAccepted, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$25(TextView textView, int i, KeyEvent keyEvent) {
        if (i != 6) {
            return false;
        }
        sendSavePassword(false);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$27(View view) {
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(new TL_account.resendPasswordEmail(), new RequestDelegate() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda41
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                PaymentFormActivity.m17647$r8$lambda$n8ObnsWdeFAzl5V43MAtxv73w(tLObject, tL_error);
            }
        }, this.allowUnregistered ? 8 : 0);
        AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
        builder.setMessage(LocaleController.getString(C2665R.string.ResendCodeInfo));
        builder.setTitle(LocaleController.getString(C2665R.string.AppName));
        builder.setPositiveButton(LocaleController.getString(C2665R.string.OK), null);
        showDialog(builder.create());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$29(View view) {
        AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
        String string = LocaleController.getString(C2665R.string.TurnPasswordOffQuestion);
        if (this.currentPassword.has_secure_values) {
            string = string + "\n\n" + LocaleController.getString(C2665R.string.TurnPasswordOffPassport);
        }
        builder.setMessage(string);
        builder.setTitle(LocaleController.getString(C2665R.string.TurnPasswordOffQuestionTitle));
        builder.setPositiveButton(LocaleController.getString(C2665R.string.Disable), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda35
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                this.f$0.lambda$createView$28(alertDialog, i);
            }
        });
        builder.setNegativeButton(LocaleController.getString(C2665R.string.Cancel), null);
        AlertDialog alertDialogCreate = builder.create();
        showDialog(alertDialogCreate);
        TextView textView = (TextView) alertDialogCreate.getButton(-1);
        if (textView != null) {
            textView.setTextColor(getThemedColor(Theme.key_text_RedBold));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$28(AlertDialog alertDialog, int i) {
        sendSavePassword(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$30(TextView textView, int i, KeyEvent keyEvent) {
        if (i == 6) {
            this.doneItem.performClick();
            return true;
        }
        if (i != 5) {
            return false;
        }
        int iIntValue = ((Integer) textView.getTag()).intValue();
        if (iIntValue == 0) {
            this.inputFields[1].requestFocus();
            return false;
        }
        if (iIntValue != 1) {
            return false;
        }
        this.inputFields[2].requestFocus();
        return false;
    }

    private void showChoosePaymentMethod() {
        showChoosePaymentMethod(null);
    }

    private void showChoosePaymentMethod(final Runnable runnable) {
        BottomSheet.Builder title = new BottomSheet.Builder(getParentActivity()).setTitle(LocaleController.getString(C2665R.string.PaymentCheckoutMethod), true);
        final ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        TLRPC.TL_paymentSavedCredentialsCard tL_paymentSavedCredentialsCard = this.savedCredentialsCard;
        if (tL_paymentSavedCredentialsCard != null) {
            arrayList.add(tL_paymentSavedCredentialsCard.title);
            arrayList2.add(Integer.valueOf(C2665R.drawable.msg_payment_card));
        } else {
            String str = this.cardName;
            if (str != null) {
                arrayList.add(str);
                arrayList2.add(Integer.valueOf(C2665R.drawable.msg_payment_card));
            }
        }
        final ArrayList arrayList3 = new ArrayList();
        ArrayList<TLRPC.TL_paymentSavedCredentialsCard> arrayList4 = this.paymentForm.saved_credentials;
        int size = arrayList4.size();
        int i = 0;
        while (i < size) {
            TLRPC.TL_paymentSavedCredentialsCard tL_paymentSavedCredentialsCard2 = arrayList4.get(i);
            i++;
            TLRPC.TL_paymentSavedCredentialsCard tL_paymentSavedCredentialsCard3 = tL_paymentSavedCredentialsCard2;
            TLRPC.TL_paymentSavedCredentialsCard tL_paymentSavedCredentialsCard4 = this.savedCredentialsCard;
            if (tL_paymentSavedCredentialsCard4 == null || !Objects.equals(tL_paymentSavedCredentialsCard3.id, tL_paymentSavedCredentialsCard4.id)) {
                arrayList.add(tL_paymentSavedCredentialsCard3.title);
                arrayList2.add(Integer.valueOf(C2665R.drawable.msg_payment_card));
                arrayList3.add(tL_paymentSavedCredentialsCard3);
            }
        }
        ArrayList<TLRPC.TL_paymentFormMethod> arrayList5 = this.paymentForm.additional_methods;
        int size2 = arrayList5.size();
        int i2 = 0;
        while (i2 < size2) {
            TLRPC.TL_paymentFormMethod tL_paymentFormMethod = arrayList5.get(i2);
            i2++;
            arrayList.add(tL_paymentFormMethod.title);
            arrayList2.add(Integer.valueOf(C2665R.drawable.msg_payment_provider));
        }
        arrayList.add(LocaleController.getString(C2665R.string.PaymentCheckoutMethodNewCard));
        arrayList2.add(Integer.valueOf(C2665R.drawable.msg_addbot));
        int[] iArr = new int[arrayList2.size()];
        for (int i3 = 0; i3 < arrayList2.size(); i3++) {
            iArr[i3] = ((Integer) arrayList2.get(i3)).intValue();
        }
        title.setItems((CharSequence[]) arrayList.toArray(new CharSequence[0]), iArr, new DialogInterface.OnClickListener() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda43
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i4) {
                this.f$0.lambda$showChoosePaymentMethod$31(runnable, arrayList3, arrayList, dialogInterface, i4);
            }
        });
        showDialog(title.create());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showChoosePaymentMethod$31(final Runnable runnable, List list, List list2, DialogInterface dialogInterface, int i) {
        PaymentFormActivityDelegate paymentFormActivityDelegate = new PaymentFormActivityDelegate() { // from class: org.telegram.ui.PaymentFormActivity.22
            @Override // org.telegram.ui.PaymentFormActivity.PaymentFormActivityDelegate
            public boolean didSelectNewCard(String str, String str2, boolean z, TLRPC.TL_inputPaymentCredentialsGooglePay tL_inputPaymentCredentialsGooglePay, TLRPC.TL_paymentSavedCredentialsCard tL_paymentSavedCredentialsCard) {
                String str3;
                PaymentFormActivity.this.savedCredentialsCard = tL_paymentSavedCredentialsCard;
                PaymentFormActivity.this.paymentJson = str;
                PaymentFormActivity.this.saveCardInfo = z;
                PaymentFormActivity.this.cardName = str2;
                PaymentFormActivity.this.googlePayCredentials = tL_inputPaymentCredentialsGooglePay;
                if (PaymentFormActivity.this.detailSettingsCell[0] != null) {
                    PaymentFormActivity.this.detailSettingsCell[0].setVisibility(0);
                    TextDetailSettingsCell textDetailSettingsCell = PaymentFormActivity.this.detailSettingsCell[0];
                    if (PaymentFormActivity.this.cardName == null || PaymentFormActivity.this.cardName.length() <= 1) {
                        str3 = PaymentFormActivity.this.cardName;
                    } else {
                        str3 = PaymentFormActivity.this.cardName.substring(0, 1).toUpperCase() + PaymentFormActivity.this.cardName.substring(1);
                    }
                    textDetailSettingsCell.setTextAndValueAndIcon(str3, LocaleController.getString(C2665R.string.PaymentCheckoutMethod), C2665R.drawable.msg_payment_card, true);
                    if (PaymentFormActivity.this.detailSettingsCell[1] != null) {
                        PaymentFormActivity.this.detailSettingsCell[1].setVisibility(0);
                    }
                }
                Runnable runnable2 = runnable;
                if (runnable2 != null) {
                    runnable2.run();
                }
                return false;
            }
        };
        TLRPC.TL_paymentSavedCredentialsCard tL_paymentSavedCredentialsCard = this.savedCredentialsCard;
        int i2 = (tL_paymentSavedCredentialsCard == null && this.cardName == null) ? 0 : 1;
        if (!(tL_paymentSavedCredentialsCard == null && this.cardName == null) && i == 0) {
            return;
        }
        if (i >= i2 && i < list.size() + i2) {
            TLRPC.TL_paymentSavedCredentialsCard tL_paymentSavedCredentialsCard2 = (TLRPC.TL_paymentSavedCredentialsCard) list.get(i - i2);
            this.savedCredentialsCard = tL_paymentSavedCredentialsCard2;
            paymentFormActivityDelegate.didSelectNewCard(null, tL_paymentSavedCredentialsCard2.title, true, null, tL_paymentSavedCredentialsCard2);
            return;
        }
        if (i < list2.size() - 1) {
            TLRPC.TL_paymentFormMethod tL_paymentFormMethod = this.paymentForm.additional_methods.get((i - list.size()) - i2);
            PaymentFormActivity paymentFormActivity = new PaymentFormActivity(this.invoiceInput, this.paymentForm, this.messageObject, this.invoiceSlug, 2, this.requestedInfo, this.shippingOption, this.tipAmount, null, this.cardName, this.validateRequest, this.saveCardInfo, null, this.parentFragment, this.allowUnregistered);
            paymentFormActivity.setCustomResultReceiver(this.customResultReceiver);
            paymentFormActivity.setCustomAnyResultReceiver(this.customAnyResultReceiver);
            paymentFormActivity.setPaymentMethod(tL_paymentFormMethod);
            paymentFormActivity.setDelegate(paymentFormActivityDelegate);
            presentFragment(paymentFormActivity);
            return;
        }
        if (i == list2.size() - 1) {
            PaymentFormActivity paymentFormActivity2 = new PaymentFormActivity(this.invoiceInput, this.paymentForm, this.messageObject, this.invoiceSlug, 2, this.requestedInfo, this.shippingOption, this.tipAmount, null, this.cardName, this.validateRequest, this.saveCardInfo, null, this.parentFragment, this.allowUnregistered);
            paymentFormActivity2.setCustomResultReceiver(this.customResultReceiver);
            paymentFormActivity2.setCustomAnyResultReceiver(this.customAnyResultReceiver);
            paymentFormActivity2.setDelegate(paymentFormActivityDelegate);
            presentFragment(paymentFormActivity2);
        }
    }

    private void setPaymentMethod(TLRPC.TL_paymentFormMethod tL_paymentFormMethod) {
        this.paymentFormMethod = tL_paymentFormMethod;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAddressFields(TLRPC.TL_paymentRequestedInfo tL_paymentRequestedInfo) {
        TLRPC.TL_postAddress tL_postAddress = tL_paymentRequestedInfo.shipping_address;
        if (tL_postAddress != null) {
            this.detailSettingsCell[2].setTextAndValueAndIcon(String.format("%s %s, %s, %s, %s, %s", tL_postAddress.street_line1, tL_postAddress.street_line2, tL_postAddress.city, tL_postAddress.state, tL_postAddress.country_iso2, tL_postAddress.post_code), LocaleController.getString(C2665R.string.PaymentShippingAddress), C2665R.drawable.msg_payment_address, true);
        }
        this.detailSettingsCell[2].setVisibility(tL_paymentRequestedInfo.shipping_address != null ? 0 : 8);
        String str = tL_paymentRequestedInfo.name;
        if (str != null) {
            this.detailSettingsCell[3].setTextAndValueAndIcon(str, LocaleController.getString(C2665R.string.PaymentCheckoutName), C2665R.drawable.msg_contacts, true);
        }
        this.detailSettingsCell[3].setVisibility(tL_paymentRequestedInfo.name != null ? 0 : 8);
        if (tL_paymentRequestedInfo.phone != null) {
            this.detailSettingsCell[4].setTextAndValueAndIcon(PhoneFormat.getInstance().format(tL_paymentRequestedInfo.phone), LocaleController.getString(C2665R.string.PaymentCheckoutPhoneNumber), C2665R.drawable.msg_calls, (tL_paymentRequestedInfo.email == null && this.shippingOption == null) ? false : true);
        }
        this.detailSettingsCell[4].setVisibility(tL_paymentRequestedInfo.phone != null ? 0 : 8);
        String str2 = tL_paymentRequestedInfo.email;
        if (str2 != null) {
            this.detailSettingsCell[5].setTextAndValueAndIcon(str2, LocaleController.getString(C2665R.string.PaymentCheckoutEmail), C2665R.drawable.msg_mention, this.shippingOption != null);
        }
        this.detailSettingsCell[5].setVisibility(tL_paymentRequestedInfo.email != null ? 0 : 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateTotalPrice() {
        this.totalPrice[0] = getTotalPriceString(this.prices);
        this.totalCell.setTextAndValue(LocaleController.getString(C2665R.string.PaymentTransactionTotal), this.totalPrice[0], true);
        TextView textView = this.payTextView;
        if (textView != null) {
            textView.setText(LocaleController.formatString("PaymentCheckoutPay", C2665R.string.PaymentCheckoutPay, this.totalPrice[0]));
        }
        if (this.tipLayout != null) {
            int themedColor = getThemedColor(Theme.key_contacts_inviteBackground);
            int childCount = this.tipLayout.getChildCount();
            for (int i = 0; i < childCount; i++) {
                TextView textView2 = (TextView) this.tipLayout.getChildAt(i);
                if (textView2.getTag().equals(this.tipAmount)) {
                    Theme.setDrawableColor(textView2.getBackground(), themedColor);
                    textView2.setTextColor(getThemedColor(Theme.key_contacts_inviteText));
                } else {
                    Theme.setDrawableColor(textView2.getBackground(), 536870911 & themedColor);
                    textView2.setTextColor(getThemedColor(Theme.key_chats_secretName));
                }
                textView2.invalidate();
            }
        }
    }

    private void createGooglePayButton(Context context) {
        FrameLayout frameLayout = new FrameLayout(context);
        this.googlePayContainer = frameLayout;
        frameLayout.setBackgroundDrawable(Theme.getSelectorDrawable(true));
        this.googlePayContainer.setVisibility(8);
        FrameLayout frameLayout2 = new FrameLayout(context);
        this.googlePayButton = frameLayout2;
        frameLayout2.setClickable(true);
        this.googlePayButton.setFocusable(true);
        this.googlePayButton.setBackgroundResource(C2665R.drawable.googlepay_button_no_shadow_background);
        String str = this.googlePayPublicKey;
        FrameLayout frameLayout3 = this.googlePayButton;
        if (str == null) {
            frameLayout3.setPadding(AndroidUtilities.dp(10.0f), AndroidUtilities.dp(2.0f), AndroidUtilities.dp(10.0f), AndroidUtilities.dp(2.0f));
        } else {
            frameLayout3.setPadding(AndroidUtilities.dp(2.0f), AndroidUtilities.dp(2.0f), AndroidUtilities.dp(2.0f), AndroidUtilities.dp(2.0f));
        }
        this.googlePayContainer.addView(this.googlePayButton, LayoutHelper.createFrame(-1, 48.0f));
        this.googlePayButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda38
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$createGooglePayButton$32(view);
            }
        });
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setWeightSum(2.0f);
        linearLayout.setGravity(16);
        linearLayout.setOrientation(1);
        linearLayout.setDuplicateParentStateEnabled(true);
        this.googlePayButton.addView(linearLayout, LayoutHelper.createFrame(-1, -1.0f));
        ImageView imageView = new ImageView(context);
        imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        imageView.setDuplicateParentStateEnabled(true);
        imageView.setImageResource(C2665R.drawable.buy_with_googlepay_button_content);
        linearLayout.addView(imageView, LayoutHelper.createLinear(-1, 0, 1.0f));
        ImageView imageView2 = new ImageView(context);
        imageView2.setScaleType(ImageView.ScaleType.FIT_XY);
        imageView2.setDuplicateParentStateEnabled(true);
        imageView2.setImageResource(C2665R.drawable.googlepay_button_overlay);
        this.googlePayButton.addView(imageView2, LayoutHelper.createFrame(-1, -1.0f));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createGooglePayButton$32(View view) {
        this.googlePayButton.setClickable(false);
        try {
            JSONObject baseRequest = getBaseRequest();
            JSONObject baseCardPaymentMethod = getBaseCardPaymentMethod();
            if (this.googlePayPublicKey != null && this.googlePayParameters == null) {
                baseCardPaymentMethod.put("tokenizationSpecification", new JSONObject() { // from class: org.telegram.ui.PaymentFormActivity.23
                    {
                        put("type", "DIRECT");
                        put("parameters", new JSONObject() { // from class: org.telegram.ui.PaymentFormActivity.23.1
                            {
                                put("protocolVersion", "ECv2");
                                put("publicKey", PaymentFormActivity.this.googlePayPublicKey);
                            }
                        });
                    }
                });
            } else {
                baseCardPaymentMethod.put("tokenizationSpecification", new JSONObject() { // from class: org.telegram.ui.PaymentFormActivity.24
                    {
                        put("type", "PAYMENT_GATEWAY");
                        if (PaymentFormActivity.this.googlePayParameters != null) {
                            put("parameters", PaymentFormActivity.this.googlePayParameters);
                        } else {
                            put("parameters", new JSONObject() { // from class: org.telegram.ui.PaymentFormActivity.24.1
                                {
                                    put("gateway", "stripe");
                                    put("stripe:publishableKey", PaymentFormActivity.this.providerApiKey);
                                    put("stripe:version", "3.5.0");
                                }
                            });
                        }
                    }
                });
            }
            baseRequest.put("allowedPaymentMethods", new JSONArray().put(baseCardPaymentMethod));
            JSONObject jSONObject = new JSONObject();
            ArrayList<TLRPC.TL_labeledPrice> arrayList = new ArrayList<>(this.paymentForm.invoice.prices);
            TLRPC.TL_shippingOption tL_shippingOption = this.shippingOption;
            if (tL_shippingOption != null) {
                arrayList.addAll(tL_shippingOption.prices);
            }
            String totalPriceDecimalString = getTotalPriceDecimalString(arrayList);
            this.totalPriceDecimal = totalPriceDecimalString;
            jSONObject.put("totalPrice", totalPriceDecimalString);
            jSONObject.put("totalPriceStatus", "FINAL");
            if (!TextUtils.isEmpty(this.googlePayCountryCode)) {
                jSONObject.put("countryCode", this.googlePayCountryCode);
            }
            jSONObject.put("currencyCode", this.paymentForm.invoice.currency);
            jSONObject.put("checkoutOption", "COMPLETE_IMMEDIATE_PURCHASE");
            baseRequest.put("transactionInfo", jSONObject);
            baseRequest.put("merchantInfo", new JSONObject().put("merchantName", this.currentBotName));
            PaymentDataRequest paymentDataRequestFromJson = PaymentDataRequest.fromJson(baseRequest.toString());
            if (paymentDataRequestFromJson != null) {
                AutoResolveHelper.resolveTask(this.paymentsClient.loadPaymentData(paymentDataRequestFromJson), getParentActivity(), 991);
            }
        } catch (JSONException e) {
            FileLog.m992e(e);
        }
    }

    private void updatePasswordFields() {
        if (this.currentStep != 6 || this.bottomCell[2] == null) {
            return;
        }
        int i = 0;
        this.doneItem.setVisibility(0);
        if (this.currentPassword == null) {
            showEditDoneProgress(true, true);
            this.bottomCell[2].setVisibility(8);
            this.settingsCell[0].setVisibility(8);
            this.settingsCell[1].setVisibility(8);
            this.codeFieldCell.setVisibility(8);
            this.headerCell[0].setVisibility(8);
            this.headerCell[1].setVisibility(8);
            this.bottomCell[0].setVisibility(8);
            for (int i2 = 0; i2 < 3; i2++) {
                ((View) this.inputFields[i2].getParent()).setVisibility(8);
            }
            while (i < this.dividers.size()) {
                this.dividers.get(i).setVisibility(8);
                i++;
            }
            return;
        }
        showEditDoneProgress(true, false);
        boolean z = this.waitingForEmail;
        TextInfoPrivacyCell[] textInfoPrivacyCellArr = this.bottomCell;
        if (z) {
            TextInfoPrivacyCell textInfoPrivacyCell = textInfoPrivacyCellArr[2];
            int i3 = C2665R.string.EmailPasswordConfirmText2;
            String str = this.currentPassword.email_unconfirmed_pattern;
            if (str == null) {
                str = _UrlKt.FRAGMENT_ENCODE_SET;
            }
            textInfoPrivacyCell.setText(LocaleController.formatString("EmailPasswordConfirmText2", i3, str));
            this.bottomCell[2].setVisibility(0);
            this.settingsCell[0].setVisibility(0);
            this.settingsCell[1].setVisibility(0);
            this.codeFieldCell.setVisibility(0);
            this.bottomCell[1].setText(_UrlKt.FRAGMENT_ENCODE_SET);
            this.headerCell[0].setVisibility(8);
            this.headerCell[1].setVisibility(8);
            this.bottomCell[0].setVisibility(8);
            for (int i4 = 0; i4 < 3; i4++) {
                ((View) this.inputFields[i4].getParent()).setVisibility(8);
            }
            while (i < this.dividers.size()) {
                this.dividers.get(i).setVisibility(8);
                i++;
            }
            return;
        }
        textInfoPrivacyCellArr[2].setVisibility(8);
        this.settingsCell[0].setVisibility(8);
        this.settingsCell[1].setVisibility(8);
        this.bottomCell[1].setText(LocaleController.getString(C2665R.string.PaymentPasswordEmailInfo));
        this.codeFieldCell.setVisibility(8);
        this.headerCell[0].setVisibility(0);
        this.headerCell[1].setVisibility(0);
        this.bottomCell[0].setVisibility(0);
        for (int i5 = 0; i5 < 3; i5++) {
            ((View) this.inputFields[i5].getParent()).setVisibility(0);
        }
        for (int i6 = 0; i6 < this.dividers.size(); i6++) {
            this.dividers.get(i6).setVisibility(0);
        }
    }

    private void loadPasswordInfo() {
        if (this.loadingPasswordInfo) {
            return;
        }
        this.loadingPasswordInfo = true;
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(new TL_account.getPassword(), new RequestDelegate() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda4
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$loadPasswordInfo$35(tLObject, tL_error);
            }
        }, 10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadPasswordInfo$35(final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda34
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadPasswordInfo$34(tL_error, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadPasswordInfo$34(TLRPC.TL_error tL_error, TLObject tLObject) {
        this.loadingPasswordInfo = false;
        if (tL_error == null) {
            TL_account.Password password = (TL_account.Password) tLObject;
            this.currentPassword = password;
            if (!TwoStepVerificationActivity.canHandleCurrentPassword(password, false)) {
                AlertsCreator.showUpdateAppAlert(getParentActivity(), LocaleController.getString(C2665R.string.UpdateAppAlert), true);
                return;
            }
            TLRPC.PaymentForm paymentForm = this.paymentForm;
            if (paymentForm != null && this.currentPassword.has_password) {
                paymentForm.password_missing = false;
                paymentForm.can_save_credentials = true;
                updateSavePaymentField();
            }
            TwoStepVerificationActivity.initPasswordNewAlgo(this.currentPassword);
            PaymentFormActivity paymentFormActivity = this.passwordFragment;
            if (paymentFormActivity != null) {
                paymentFormActivity.setCurrentPassword(this.currentPassword);
            }
            if (this.currentPassword.has_password || this.shortPollRunnable != null) {
                return;
            }
            Runnable runnable = new Runnable() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda49
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$loadPasswordInfo$33();
                }
            };
            this.shortPollRunnable = runnable;
            AndroidUtilities.runOnUIThread(runnable, 5000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadPasswordInfo$33() {
        if (this.shortPollRunnable == null) {
            return;
        }
        loadPasswordInfo();
        this.shortPollRunnable = null;
    }

    private void showAlertWithText(String str, String str2) {
        AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
        builder.setPositiveButton(LocaleController.getString(C2665R.string.OK), null);
        builder.setTitle(str);
        builder.setMessage(str2);
        showDialog(builder.create());
    }

    private void showPayAlert(String str) {
        if (getParentActivity() == null) {
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
        builder.setTitle(LocaleController.getString(C2665R.string.PaymentTransactionReview));
        builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString("PaymentTransactionMessage2", C2665R.string.PaymentTransactionMessage2, str, this.currentBotName, this.currentItemName)));
        builder.setPositiveButton(LocaleController.getString(C2665R.string.Continue), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda47
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                this.f$0.lambda$showPayAlert$36(alertDialog, i);
            }
        });
        builder.setNegativeButton(LocaleController.getString(C2665R.string.Cancel), null);
        showDialog(builder.create());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showPayAlert$36(AlertDialog alertDialog, int i) {
        setDonePressed(true);
        sendData();
    }

    private JSONObject getBaseRequest() {
        return new JSONObject().put("apiVersion", 2).put("apiVersionMinor", 0);
    }

    private JSONObject getBaseCardPaymentMethod() throws JSONException {
        List listAsList = Arrays.asList("AMEX", "DISCOVER", "JCB", "MASTERCARD", "VISA");
        List listAsList2 = Arrays.asList("PAN_ONLY", "CRYPTOGRAM_3DS");
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("type", "CARD");
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("allowedAuthMethods", new JSONArray((Collection) listAsList2));
        jSONObject2.put("allowedCardNetworks", new JSONArray((Collection) listAsList));
        jSONObject.put("parameters", jSONObject2);
        return jSONObject;
    }

    public Optional<JSONObject> getIsReadyToPayRequest() {
        try {
            JSONObject baseRequest = getBaseRequest();
            baseRequest.put("allowedPaymentMethods", new JSONArray().put(getBaseCardPaymentMethod()));
            return Optional.of(baseRequest);
        } catch (JSONException unused) {
            return Optional.empty();
        }
    }

    private void initGooglePay(Context context) {
        IsReadyToPayRequest isReadyToPayRequestFromJson;
        if (getParentActivity() == null) {
            return;
        }
        this.paymentsClient = Wallet.getPaymentsClient(context, new Wallet.WalletOptions.Builder().setEnvironment(this.paymentForm.invoice.test ? 3 : 1).setTheme(1).build());
        Optional<JSONObject> isReadyToPayRequest = getIsReadyToPayRequest();
        if (isReadyToPayRequest.isPresent() && (isReadyToPayRequestFromJson = IsReadyToPayRequest.fromJson(isReadyToPayRequest.get().toString())) != null) {
            this.paymentsClient.isReadyToPay(isReadyToPayRequestFromJson).addOnCompleteListener(getParentActivity(), new OnCompleteListener() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda30
                @Override // com.google.android.gms.tasks.OnCompleteListener
                public final void onComplete(Task task) {
                    this.f$0.lambda$initGooglePay$37(task);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initGooglePay$37(Task task) {
        if (task.isSuccessful()) {
            FrameLayout frameLayout = this.googlePayContainer;
            if (frameLayout != null) {
                frameLayout.setVisibility(0);
                return;
            }
            return;
        }
        FileLog.m991e("isReadyToPay failed", task.getException());
    }

    private String getTotalPriceString(ArrayList<TLRPC.TL_labeledPrice> arrayList) {
        long jLongValue = 0;
        for (int i = 0; i < arrayList.size(); i++) {
            jLongValue += arrayList.get(i).amount;
        }
        Long l = this.tipAmount;
        if (l != null) {
            jLongValue += l.longValue();
        }
        return LocaleController.getInstance().formatCurrencyString(jLongValue, this.paymentForm.invoice.currency);
    }

    private String getTotalPriceDecimalString(ArrayList<TLRPC.TL_labeledPrice> arrayList) {
        long j = 0;
        for (int i = 0; i < arrayList.size(); i++) {
            j += arrayList.get(i).amount;
        }
        return LocaleController.getInstance().formatCurrencyDecimalString(j, this.paymentForm.invoice.currency, false);
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.twoStepPasswordChanged);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.didRemoveTwoStepPassword);
        if (this.currentStep != 4 || this.isCheckoutPreview) {
            NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.paymentFinished);
        }
        return super.onFragmentCreate();
    }

    public int getOtherSameFragmentDiff() {
        INavigationLayout iNavigationLayout = this.parentLayout;
        int i = 0;
        if (iNavigationLayout == null || iNavigationLayout.getFragmentStack() == null) {
            return 0;
        }
        int iIndexOf = this.parentLayout.getFragmentStack().indexOf(this);
        if (iIndexOf == -1) {
            iIndexOf = this.parentLayout.getFragmentStack().size();
        }
        while (true) {
            if (i >= this.parentLayout.getFragmentStack().size()) {
                i = iIndexOf;
                break;
            }
            if (this.parentLayout.getFragmentStack().get(i) instanceof PaymentFormActivity) {
                break;
            }
            i++;
        }
        return i - iIndexOf;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        PaymentFormActivityDelegate paymentFormActivityDelegate = this.delegate;
        if (paymentFormActivityDelegate != null) {
            paymentFormActivityDelegate.onFragmentDestroyed();
        }
        AndroidUtilities.checkAndroidTheme(getContext(), false);
        if (!this.paymentStatusSent) {
            this.invoiceStatus = InvoiceStatus.CANCELLED;
            if (this.paymentFormCallback != null && getOtherSameFragmentDiff() == 0) {
                this.paymentFormCallback.onInvoiceStatusChanged(this.invoiceStatus);
            }
        }
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.twoStepPasswordChanged);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.didRemoveTwoStepPassword);
        if (this.currentStep != 4 || this.isCheckoutPreview) {
            NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.paymentFinished);
        }
        WebView webView = this.webView;
        if (webView != null) {
            try {
                ViewParent parent = webView.getParent();
                if (parent != null) {
                    ((ViewGroup) parent).removeView(this.webView);
                }
                this.webView.stopLoading();
                this.webView.loadUrl("about:blank");
                this.webViewUrl = null;
                this.webView.destroy();
                this.webView = null;
            } catch (Exception e) {
                FileLog.m992e(e);
            }
        }
        try {
            int i = this.currentStep;
            if ((i == 2 || i == 6) && (SharedConfig.passcodeHash.length() == 0 || SharedConfig.allowScreenCapture)) {
                getParentActivity().getWindow().clearFlags(8192);
                AndroidUtilities.logFlagSecure();
            }
        } catch (Throwable th) {
            FileLog.m992e(th);
        }
        super.onFragmentDestroy();
        this.canceled = true;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onBecomeFullyVisible() {
        super.onBecomeFullyVisible();
        if (this.currentStep == 4 && this.needPayAfterTransition) {
            this.needPayAfterTransition = false;
            this.bottomLayout.callOnClick();
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onTransitionAnimationEnd(boolean z, boolean z2) {
        if (!z || z2) {
            return;
        }
        WebView webView = this.webView;
        int i = this.currentStep;
        if (webView != null) {
            if (i != 4) {
                TLRPC.TL_paymentFormMethod tL_paymentFormMethod = this.paymentFormMethod;
                if (tL_paymentFormMethod != null) {
                    String str = tL_paymentFormMethod.url;
                    this.webViewUrl = str;
                    webView.loadUrl(str);
                    return;
                } else {
                    String str2 = this.paymentForm.url;
                    this.webViewUrl = str2;
                    webView.loadUrl(str2);
                    return;
                }
            }
            return;
        }
        if (i == 2) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onTransitionAnimationEnd$38();
                }
            }, 100L);
            return;
        }
        if (i == 3) {
            this.inputFields[1].requestFocus();
            AndroidUtilities.showKeyboard(this.inputFields[1]);
            return;
        }
        if (i == 4) {
            EditTextBoldCursor[] editTextBoldCursorArr = this.inputFields;
            if (editTextBoldCursorArr != null) {
                editTextBoldCursorArr[0].requestFocus();
                return;
            }
            return;
        }
        if (i != 6 || this.waitingForEmail) {
            return;
        }
        this.inputFields[0].requestFocus();
        AndroidUtilities.showKeyboard(this.inputFields[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onTransitionAnimationEnd$38() {
        this.inputFields[0].requestFocus();
        AndroidUtilities.showKeyboard(this.inputFields[0]);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.twoStepPasswordChanged) {
            TLRPC.PaymentForm paymentForm = this.paymentForm;
            paymentForm.password_missing = false;
            paymentForm.can_save_credentials = true;
            updateSavePaymentField();
            return;
        }
        if (i == NotificationCenter.didRemoveTwoStepPassword) {
            TLRPC.PaymentForm paymentForm2 = this.paymentForm;
            paymentForm2.password_missing = true;
            paymentForm2.can_save_credentials = false;
            updateSavePaymentField();
            return;
        }
        if (i == NotificationCenter.paymentFinished) {
            this.paymentStatusSent = true;
            removeSelfFromStack();
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onActivityResultFragment(int i, final int i2, final Intent intent) {
        super.onActivityResultFragment(i, i2, intent);
        if (i == 991) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onActivityResultFragment$39(i2, intent);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onActivityResultFragment$39(int i, Intent intent) {
        String json;
        if (i == -1) {
            PaymentData fromIntent = PaymentData.getFromIntent(intent);
            if (fromIntent == null || (json = fromIntent.toJson()) == null) {
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject(json).getJSONObject("paymentMethodData");
                JSONObject jSONObject2 = jSONObject.getJSONObject("tokenizationData");
                jSONObject2.getString("type");
                String string = jSONObject2.getString("token");
                if (this.googlePayPublicKey != null || this.googlePayParameters != null) {
                    TLRPC.TL_inputPaymentCredentialsGooglePay tL_inputPaymentCredentialsGooglePay = new TLRPC.TL_inputPaymentCredentialsGooglePay();
                    this.googlePayCredentials = tL_inputPaymentCredentialsGooglePay;
                    tL_inputPaymentCredentialsGooglePay.payment_token = new TLRPC.TL_dataJSON();
                    this.googlePayCredentials.payment_token.data = jSONObject2.toString();
                    String strOptString = jSONObject.optString(MediaTrack.ROLE_DESCRIPTION);
                    if (!TextUtils.isEmpty(strOptString)) {
                        this.cardName = strOptString;
                    } else {
                        this.cardName = "Android Pay";
                    }
                } else {
                    Token token = TokenParser.parseToken(string);
                    this.paymentJson = String.format(Locale.US, "{\"type\":\"%1$s\", \"id\":\"%2$s\"}", token.getType(), token.getId());
                    Card card = token.getCard();
                    this.cardName = card.getBrand() + " *" + card.getLast4();
                }
                goToNextStep();
            } catch (JSONException e) {
                FileLog.m992e(e);
            }
        } else if (i == 1) {
            Status statusFromIntent = AutoResolveHelper.getStatusFromIntent(intent);
            StringBuilder sb = new StringBuilder("android pay error ");
            sb.append(statusFromIntent != null ? statusFromIntent.getStatusMessage() : _UrlKt.FRAGMENT_ENCODE_SET);
            FileLog.m990e(sb.toString());
        }
        showEditDoneProgress(true, false);
        setDonePressed(false);
        FrameLayout frameLayout = this.googlePayButton;
        if (frameLayout != null) {
            frameLayout.setClickable(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01f2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void goToNextStep() {
        int i;
        int i2;
        boolean z;
        int i3 = this.currentStep;
        if (i3 == 0) {
            PaymentFormActivityDelegate paymentFormActivityDelegate = this.delegate;
            if (paymentFormActivityDelegate != null) {
                paymentFormActivityDelegate.didSelectNewAddress(this.validateRequest);
                finishFragment();
                return;
            }
            if (this.paymentForm.invoice.flexible) {
                i = 1;
            } else if (this.savedCredentialsCard == null && this.paymentJson == null) {
                i = 2;
            } else {
                if (UserConfig.getInstance(this.currentAccount).tmpPassword != null && UserConfig.getInstance(this.currentAccount).tmpPassword.valid_until < ConnectionsManager.getInstance(this.currentAccount).getCurrentTime() + 60) {
                    UserConfig.getInstance(this.currentAccount).tmpPassword = null;
                    UserConfig.getInstance(this.currentAccount).saveConfig(false);
                }
                i = UserConfig.getInstance(this.currentAccount).tmpPassword != null ? 4 : 3;
            }
            if (i == 2 && this.savedCredentialsCard == null && this.paymentJson == null && !this.paymentForm.additional_methods.isEmpty()) {
                showChoosePaymentMethod(new Runnable() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda39
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.goToNextStep();
                    }
                });
                return;
            } else {
                presentFragment(new PaymentFormActivity(this.invoiceInput, this.paymentForm, this.messageObject, this.invoiceSlug, i, this.requestedInfo, null, null, this.paymentJson, this.cardName, this.validateRequest, this.saveCardInfo, this.googlePayCredentials, this.parentFragment, this.allowUnregistered).setCustomResultReceiver(this.customResultReceiver).setCustomAnyResultReceiver(this.customAnyResultReceiver), this.isWebView);
                return;
            }
        }
        if (i3 == 1) {
            if (this.paymentJson != null || this.cardName != null) {
                i2 = 4;
            } else if (this.savedCredentialsCard != null) {
                if (UserConfig.getInstance(this.currentAccount).tmpPassword != null && UserConfig.getInstance(this.currentAccount).tmpPassword.valid_until < ConnectionsManager.getInstance(this.currentAccount).getCurrentTime() + 60) {
                    UserConfig.getInstance(this.currentAccount).tmpPassword = null;
                    UserConfig.getInstance(this.currentAccount).saveConfig(false);
                }
                if (UserConfig.getInstance(this.currentAccount).tmpPassword == null) {
                    i2 = 3;
                }
            } else {
                i2 = 2;
            }
            if (i2 == 2 && this.cardName == null && this.savedCredentialsCard == null && this.paymentJson == null && !this.paymentForm.additional_methods.isEmpty()) {
                showChoosePaymentMethod(new Runnable() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda39
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.goToNextStep();
                    }
                });
                return;
            } else {
                presentFragment(new PaymentFormActivity(this.invoiceInput, this.paymentForm, this.messageObject, this.invoiceSlug, i2, this.requestedInfo, this.shippingOption, this.tipAmount, this.paymentJson, this.cardName, this.validateRequest, this.saveCardInfo, this.googlePayCredentials, this.parentFragment, this.allowUnregistered).setCustomResultReceiver(this.customResultReceiver).setCustomAnyResultReceiver(this.customAnyResultReceiver), this.isWebView);
                return;
            }
        }
        if (i3 == 2) {
            TLRPC.PaymentForm paymentForm = this.paymentForm;
            if (paymentForm.password_missing && (z = this.saveCardInfo)) {
                PaymentFormActivity paymentFormActivity = new PaymentFormActivity(this.invoiceInput, paymentForm, this.messageObject, this.invoiceSlug, 6, this.requestedInfo, this.shippingOption, this.tipAmount, this.paymentJson, this.cardName, this.validateRequest, z, this.googlePayCredentials, this.parentFragment, this.allowUnregistered);
                this.passwordFragment = paymentFormActivity;
                paymentFormActivity.setCustomResultReceiver(this.customResultReceiver);
                this.passwordFragment.setCustomAnyResultReceiver(this.customAnyResultReceiver);
                this.passwordFragment.setCurrentPassword(this.currentPassword);
                this.passwordFragment.setDelegate(new PaymentFormActivityDelegate() { // from class: org.telegram.ui.PaymentFormActivity.25
                    @Override // org.telegram.ui.PaymentFormActivity.PaymentFormActivityDelegate
                    public boolean didSelectNewCard(String str, String str2, boolean z2, TLRPC.TL_inputPaymentCredentialsGooglePay tL_inputPaymentCredentialsGooglePay, TLRPC.TL_paymentSavedCredentialsCard tL_paymentSavedCredentialsCard) {
                        if (PaymentFormActivity.this.delegate != null) {
                            PaymentFormActivity.this.delegate.didSelectNewCard(str, str2, z2, tL_inputPaymentCredentialsGooglePay, tL_paymentSavedCredentialsCard);
                        }
                        if (PaymentFormActivity.this.isWebView) {
                            PaymentFormActivity.this.removeSelfFromStack();
                        }
                        return PaymentFormActivity.this.delegate != null;
                    }

                    @Override // org.telegram.ui.PaymentFormActivity.PaymentFormActivityDelegate
                    public void onFragmentDestroyed() {
                        PaymentFormActivity.this.passwordFragment = null;
                    }

                    @Override // org.telegram.ui.PaymentFormActivity.PaymentFormActivityDelegate
                    public void currentPasswordUpdated(TL_account.Password password) {
                        PaymentFormActivity.this.currentPassword = password;
                    }
                });
                presentFragment(this.passwordFragment, this.isWebView);
                return;
            }
            PaymentFormActivityDelegate paymentFormActivityDelegate2 = this.delegate;
            if (paymentFormActivityDelegate2 != null) {
                paymentFormActivityDelegate2.didSelectNewCard(this.paymentJson, this.cardName, this.saveCardInfo, this.googlePayCredentials, null);
                finishFragment();
                return;
            } else {
                presentFragment(new PaymentFormActivity(this.invoiceInput, paymentForm, this.messageObject, this.invoiceSlug, 4, this.requestedInfo, this.shippingOption, this.tipAmount, this.paymentJson, this.cardName, this.validateRequest, this.saveCardInfo, this.googlePayCredentials, this.parentFragment, this.allowUnregistered).setCustomResultReceiver(this.customResultReceiver).setCustomAnyResultReceiver(this.customAnyResultReceiver), this.isWebView);
                return;
            }
        }
        if (i3 == 3) {
            presentFragment(new PaymentFormActivity(this.invoiceInput, this.paymentForm, this.messageObject, this.invoiceSlug, this.passwordOk ? 4 : 2, this.requestedInfo, this.shippingOption, this.tipAmount, this.paymentJson, this.cardName, this.validateRequest, this.saveCardInfo, this.googlePayCredentials, this.parentFragment, this.allowUnregistered).setCustomResultReceiver(this.customResultReceiver).setCustomAnyResultReceiver(this.customAnyResultReceiver), true);
            return;
        }
        if (i3 != 4) {
            if (i3 != 6) {
                return;
            }
            if (!this.delegate.didSelectNewCard(this.paymentJson, this.cardName, this.saveCardInfo, this.googlePayCredentials, this.savedCredentialsCard)) {
                presentFragment(new PaymentFormActivity(this.invoiceInput, this.paymentForm, this.messageObject, this.invoiceSlug, 4, this.requestedInfo, this.shippingOption, this.tipAmount, this.paymentJson, this.cardName, this.validateRequest, this.saveCardInfo, this.googlePayCredentials, this.parentFragment, false).setCustomResultReceiver(this.customResultReceiver).setCustomAnyResultReceiver(this.customAnyResultReceiver), true);
                return;
            } else {
                finishFragment();
                return;
            }
        }
        if (this.isCheckoutPreview) {
            NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.paymentFinished);
        }
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.paymentFinished, new Object[0]);
        if (getMessagesController().newMessageCallback == null) {
            if (onCheckoutSuccess(getParentLayout(), getParentActivity()) || isFinishing()) {
                return;
            }
            finishFragment();
            return;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda40
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$goToNextStep$40();
            }
        }, 500L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$goToNextStep$40() {
        getMessagesController().newMessageCallback = null;
        if (this.invoiceStatus == InvoiceStatus.PENDING && !isFinishing()) {
            InvoiceStatus invoiceStatus = InvoiceStatus.FAILED;
            this.invoiceStatus = invoiceStatus;
            PaymentFormCallback paymentFormCallback = this.paymentFormCallback;
            if (paymentFormCallback != null) {
                paymentFormCallback.onInvoiceStatusChanged(invoiceStatus);
            }
            finishFragment();
            return;
        }
        if (this.invoiceStatus != InvoiceStatus.PAID || isFinishing()) {
            return;
        }
        finishFragment();
    }

    private boolean onCheckoutSuccess(INavigationLayout iNavigationLayout, Activity activity) {
        int i = 0;
        if (this.invoiceInput != null) {
            if (iNavigationLayout == null) {
                return false;
            }
            ArrayList arrayList = new ArrayList(iNavigationLayout.getFragmentStack());
            int size = arrayList.size();
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                BaseFragment baseFragment = (BaseFragment) obj;
                if (baseFragment instanceof PaymentFormActivity) {
                    baseFragment.removeSelfFromStack();
                }
            }
            return true;
        }
        String str = this.botUser.username;
        if ((!(str != null && str.equalsIgnoreCase(getMessagesController().premiumBotUsername) && this.invoiceSlug == null) && (this.invoiceSlug == null || getMessagesController().premiumInvoiceSlug == null || !Objects.equals(this.invoiceSlug, getMessagesController().premiumInvoiceSlug))) || iNavigationLayout == null) {
            return false;
        }
        ArrayList arrayList2 = new ArrayList(iNavigationLayout.getFragmentStack());
        int size2 = arrayList2.size();
        while (i < size2) {
            Object obj2 = arrayList2.get(i);
            i++;
            BaseFragment baseFragment2 = (BaseFragment) obj2;
            if ((baseFragment2 instanceof ChatActivity) || (baseFragment2 instanceof PremiumPreviewFragment)) {
                baseFragment2.removeSelfFromStack();
            }
        }
        iNavigationLayout.presentFragment(new PremiumPreviewFragment(null).setForcePremium(), !isFinishing());
        if (activity instanceof LaunchActivity) {
            try {
                this.fragmentView.performHapticFeedback(3, 2);
            } catch (Exception unused) {
            }
            ((LaunchActivity) activity).getFireworksOverlay().start();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSavePaymentField() {
        if (this.bottomCell[0] == null || this.sectionCell[2] == null) {
            return;
        }
        TLRPC.PaymentForm paymentForm = this.paymentForm;
        if ((paymentForm.password_missing || paymentForm.can_save_credentials) && (this.webView == null || !this.webviewLoading)) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(LocaleController.getString(C2665R.string.PaymentCardSavePaymentInformationInfoLine1));
            if (this.paymentForm.password_missing) {
                loadPasswordInfo();
                spannableStringBuilder.append((CharSequence) "\n");
                int length = spannableStringBuilder.length();
                String string = LocaleController.getString(C2665R.string.PaymentCardSavePaymentInformationInfoLine2);
                int iIndexOf = string.indexOf(42);
                int iLastIndexOf = string.lastIndexOf(42);
                spannableStringBuilder.append((CharSequence) string);
                if (iIndexOf != -1 && iLastIndexOf != -1) {
                    int i = iIndexOf + length;
                    int i2 = iLastIndexOf + length;
                    this.bottomCell[0].getTextView().setMovementMethod(new AndroidUtilities.LinkMovementMethodMy());
                    spannableStringBuilder.replace(i2, i2 + 1, (CharSequence) _UrlKt.FRAGMENT_ENCODE_SET);
                    spannableStringBuilder.replace(i, i + 1, (CharSequence) _UrlKt.FRAGMENT_ENCODE_SET);
                    spannableStringBuilder.setSpan(new LinkSpan(), i, i2 - 1, 33);
                }
            }
            this.checkCell1.setEnabled(true);
            this.bottomCell[0].setText(spannableStringBuilder);
            this.checkCell1.setVisibility(0);
            this.bottomCell[0].setVisibility(0);
            ShadowSectionCell shadowSectionCell = this.sectionCell[2];
            shadowSectionCell.setBackground(Theme.getThemedDrawableByKey(shadowSectionCell.getContext(), C2665R.drawable.greydivider, Theme.key_windowBackgroundGrayShadow));
            return;
        }
        this.checkCell1.setVisibility(8);
        this.bottomCell[0].setVisibility(8);
        ShadowSectionCell shadowSectionCell2 = this.sectionCell[2];
        shadowSectionCell2.setBackground(Theme.getThemedDrawableByKey(shadowSectionCell2.getContext(), C2665R.drawable.greydivider_bottom, Theme.key_windowBackgroundGrayShadow));
    }

    @SuppressLint({"HardwareIds"})
    public void fillNumber(String str) {
        boolean z;
        try {
            TelephonyManager telephonyManager = (TelephonyManager) ApplicationLoader.applicationContext.getSystemService("phone");
            if (str == null && (telephonyManager.getSimState() == 1 || telephonyManager.getPhoneType() == 0)) {
                return;
            }
            boolean z2 = getParentActivity().checkSelfPermission("android.permission.READ_PHONE_STATE") == 0;
            if (str != null || z2) {
                if (str == null) {
                    str = PhoneFormat.stripExceptNumbers(telephonyManager.getLine1Number());
                }
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                int i = 4;
                String strSubstring = null;
                if (str.length() > 4) {
                    while (true) {
                        if (i < 1) {
                            z = false;
                            break;
                        }
                        String strSubstring2 = str.substring(0, i);
                        if (this.codesMap.get(strSubstring2) != null) {
                            strSubstring = str.substring(i);
                            this.inputFields[8].setText(strSubstring2);
                            z = true;
                            break;
                        }
                        i--;
                    }
                    if (!z) {
                        strSubstring = str.substring(1);
                        this.inputFields[8].setText(str.substring(0, 1));
                    }
                }
                if (strSubstring != null) {
                    this.inputFields[9].setText(strSubstring);
                    EditTextBoldCursor editTextBoldCursor = this.inputFields[9];
                    editTextBoldCursor.setSelection(editTextBoldCursor.length());
                }
            }
        } catch (Exception e) {
            FileLog.m992e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendSavePassword(final boolean z) {
        final String str;
        final String str2;
        if (!z && this.codeFieldCell.getVisibility() == 0) {
            String text = this.codeFieldCell.getText();
            if (text.length() == 0) {
                shakeView(this.codeFieldCell);
                return;
            }
            showEditDoneProgress(true, true);
            TL_account.confirmPasswordEmail confirmpasswordemail = new TL_account.confirmPasswordEmail();
            confirmpasswordemail.code = text;
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(confirmpasswordemail, new RequestDelegate() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda36
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$sendSavePassword$42(tLObject, tL_error);
                }
            }, 10);
            return;
        }
        final TL_account.updatePasswordSettings updatepasswordsettings = new TL_account.updatePasswordSettings();
        if (z) {
            this.doneItem.setVisibility(0);
            TL_account.passwordInputSettings passwordinputsettings = new TL_account.passwordInputSettings();
            updatepasswordsettings.new_settings = passwordinputsettings;
            passwordinputsettings.flags = 2;
            passwordinputsettings.email = _UrlKt.FRAGMENT_ENCODE_SET;
            updatepasswordsettings.password = new TLRPC.TL_inputCheckPasswordEmpty();
            str = null;
            str2 = null;
        } else {
            String string = this.inputFields[0].getText().toString();
            if (TextUtils.isEmpty(string)) {
                shakeField(0);
                return;
            }
            if (!string.equals(this.inputFields[1].getText().toString())) {
                try {
                    Toast.makeText(getParentActivity(), LocaleController.getString(C2665R.string.PasswordDoNotMatch), 0).show();
                } catch (Exception e) {
                    FileLog.m992e(e);
                }
                shakeField(1);
                return;
            }
            String string2 = this.inputFields[2].getText().toString();
            if (string2.length() < 3) {
                shakeField(2);
                return;
            }
            int iLastIndexOf = string2.lastIndexOf(46);
            int iLastIndexOf2 = string2.lastIndexOf(64);
            if (iLastIndexOf2 < 0 || iLastIndexOf < iLastIndexOf2) {
                shakeField(2);
                return;
            }
            updatepasswordsettings.password = new TLRPC.TL_inputCheckPasswordEmpty();
            TL_account.passwordInputSettings passwordinputsettings2 = new TL_account.passwordInputSettings();
            updatepasswordsettings.new_settings = passwordinputsettings2;
            int i = passwordinputsettings2.flags;
            passwordinputsettings2.flags = i | 1;
            passwordinputsettings2.hint = _UrlKt.FRAGMENT_ENCODE_SET;
            passwordinputsettings2.new_algo = this.currentPassword.new_algo;
            passwordinputsettings2.flags = i | 3;
            passwordinputsettings2.email = string2.trim();
            str = string2;
            str2 = string;
        }
        showEditDoneProgress(true, true);
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda37
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$sendSavePassword$48(z, str, str2, updatepasswordsettings);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendSavePassword$42(TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda45
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$sendSavePassword$41(tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendSavePassword$41(TLRPC.TL_error tL_error) {
        String pluralString;
        showEditDoneProgress(true, false);
        if (tL_error == null) {
            if (getParentActivity() == null) {
                return;
            }
            Runnable runnable = this.shortPollRunnable;
            if (runnable != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable);
                this.shortPollRunnable = null;
            }
            goToNextStep();
            return;
        }
        if (tL_error.text.startsWith("CODE_INVALID")) {
            shakeView(this.codeFieldCell);
            this.codeFieldCell.setText(_UrlKt.FRAGMENT_ENCODE_SET, false);
        } else {
            if (tL_error.text.startsWith("FLOOD_WAIT")) {
                int i = Utilities.parseInt((CharSequence) tL_error.text);
                if (i < 60) {
                    pluralString = LocaleController.formatPluralString("Seconds", i, new Object[0]);
                } else {
                    pluralString = LocaleController.formatPluralString("Minutes", i / 60, new Object[0]);
                }
                showAlertWithText(LocaleController.getString(C2665R.string.AppName), LocaleController.formatString("FloodWaitTime", C2665R.string.FloodWaitTime, pluralString));
                return;
            }
            showAlertWithText(LocaleController.getString(C2665R.string.AppName), tL_error.text);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendSavePassword$47(final boolean z, final String str, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda51
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$sendSavePassword$46(tL_error, z, tLObject, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendSavePassword$48(final boolean z, final String str, String str2, TL_account.updatePasswordSettings updatepasswordsettings) {
        RequestDelegate requestDelegate = new RequestDelegate() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda44
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$sendSavePassword$47(z, str, tLObject, tL_error);
            }
        };
        if (!z) {
            byte[] stringBytes = AndroidUtilities.getStringBytes(str2);
            TLRPC.PasswordKdfAlgo passwordKdfAlgo = this.currentPassword.new_algo;
            if (passwordKdfAlgo instanceof TLRPC.C2769xb6caa888) {
                updatepasswordsettings.new_settings.new_password_hash = SRPHelper.getVBytes(stringBytes, (TLRPC.C2769xb6caa888) passwordKdfAlgo);
                if (updatepasswordsettings.new_settings.new_password_hash == null) {
                    TLRPC.TL_error tL_error = new TLRPC.TL_error();
                    tL_error.text = "ALGO_INVALID";
                    requestDelegate.run(null, tL_error);
                }
                ConnectionsManager.getInstance(this.currentAccount).sendRequest(updatepasswordsettings, requestDelegate, 10);
                return;
            }
            TLRPC.TL_error tL_error2 = new TLRPC.TL_error();
            tL_error2.text = "PASSWORD_HASH_INVALID";
            requestDelegate.run(null, tL_error2);
            return;
        }
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(updatepasswordsettings, requestDelegate, 10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendSavePassword$46(TLRPC.TL_error tL_error, final boolean z, TLObject tLObject, final String str) {
        String pluralString;
        if (tL_error != null && "SRP_ID_INVALID".equals(tL_error.text)) {
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(new TL_account.getPassword(), new RequestDelegate() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda63
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject2, TLRPC.TL_error tL_error2) {
                    this.f$0.lambda$sendSavePassword$44(z, tLObject2, tL_error2);
                }
            }, 8);
            return;
        }
        showEditDoneProgress(true, false);
        if (z) {
            TL_account.Password password = this.currentPassword;
            password.has_password = false;
            password.current_algo = null;
            this.delegate.currentPasswordUpdated(password);
            finishFragment();
            return;
        }
        if (tL_error == null && (tLObject instanceof TLRPC.TL_boolTrue)) {
            if (getParentActivity() == null) {
                return;
            }
            goToNextStep();
            return;
        }
        if (tL_error != null) {
            if (tL_error.text.equals("EMAIL_UNCONFIRMED") || tL_error.text.startsWith("EMAIL_UNCONFIRMED_")) {
                this.emailCodeLength = Utilities.parseInt((CharSequence) tL_error.text);
                AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
                builder.setPositiveButton(LocaleController.getString(C2665R.string.OK), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda64
                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                    public final void onClick(AlertDialog alertDialog, int i) {
                        this.f$0.lambda$sendSavePassword$45(str, alertDialog, i);
                    }
                });
                builder.setMessage(LocaleController.getString(C2665R.string.YourEmailAlmostThereText));
                builder.setTitle(LocaleController.getString(C2665R.string.YourEmailAlmostThere));
                Dialog dialogShowDialog = showDialog(builder.create());
                if (dialogShowDialog != null) {
                    dialogShowDialog.setCanceledOnTouchOutside(false);
                    dialogShowDialog.setCancelable(false);
                    return;
                }
                return;
            }
            if (tL_error.text.equals("EMAIL_INVALID")) {
                showAlertWithText(LocaleController.getString(C2665R.string.AppName), LocaleController.getString(C2665R.string.PasswordEmailInvalid));
                return;
            }
            if (tL_error.text.startsWith("FLOOD_WAIT")) {
                int i = Utilities.parseInt((CharSequence) tL_error.text);
                if (i < 60) {
                    pluralString = LocaleController.formatPluralString("Seconds", i, new Object[0]);
                } else {
                    pluralString = LocaleController.formatPluralString("Minutes", i / 60, new Object[0]);
                }
                showAlertWithText(LocaleController.getString(C2665R.string.AppName), LocaleController.formatString("FloodWaitTime", C2665R.string.FloodWaitTime, pluralString));
                return;
            }
            showAlertWithText(LocaleController.getString(C2665R.string.AppName), tL_error.text);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendSavePassword$44(final boolean z, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda66
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$sendSavePassword$43(tL_error, tLObject, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendSavePassword$43(TLRPC.TL_error tL_error, TLObject tLObject, boolean z) {
        if (tL_error == null) {
            TL_account.Password password = (TL_account.Password) tLObject;
            this.currentPassword = password;
            TwoStepVerificationActivity.initPasswordNewAlgo(password);
            sendSavePassword(z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendSavePassword$45(String str, AlertDialog alertDialog, int i) {
        this.waitingForEmail = true;
        this.currentPassword.email_unconfirmed_pattern = str;
        updatePasswordFields();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean sendCardData() {
        Integer num;
        Integer numValueOf;
        String[] strArrSplit = this.inputFields[1].getText().toString().split("/");
        if (strArrSplit.length == 2) {
            Integer numValueOf2 = Integer.valueOf(Utilities.parseInt((CharSequence) strArrSplit[0]));
            numValueOf = Integer.valueOf(Utilities.parseInt((CharSequence) strArrSplit[1]));
            num = numValueOf2;
        } else {
            num = null;
            numValueOf = null;
        }
        final Card card = new Card(this.inputFields[0].getText().toString(), num, numValueOf, this.inputFields[3].getText().toString(), this.inputFields[2].getText().toString(), null, null, null, null, this.inputFields[5].getText().toString(), this.inputFields[4].getText().toString(), null);
        this.cardName = card.getBrand() + " *" + card.getLast4();
        boolean z = num != null && numValueOf != null && UserConfig.getInstance(this.currentAccount).getClientPhone().startsWith("7") && "smartglocal".equals(this.paymentForm.native_provider) && (numValueOf.intValue() > 22 || (numValueOf.intValue() == 22 && num.intValue() > 1));
        if (!card.validateNumber()) {
            shakeField(0);
            return false;
        }
        if (!z && (!card.validateExpMonth() || !card.validateExpYear() || !card.validateExpiryDate())) {
            shakeField(1);
            return false;
        }
        if (this.need_card_name && this.inputFields[2].length() == 0) {
            shakeField(2);
            return false;
        }
        if (!card.validateCVC()) {
            shakeField(3);
            return false;
        }
        if (this.need_card_country && this.inputFields[4].length() == 0) {
            shakeField(4);
            return false;
        }
        if (this.need_card_postcode && this.inputFields[5].length() == 0) {
            shakeField(5);
            return false;
        }
        showEditDoneProgress(true, true);
        try {
            if (!"stripe".equals(this.paymentForm.native_provider)) {
                if ("smartglocal".equals(this.paymentForm.native_provider)) {
                    new AsyncTask<Object, Object, String>() { // from class: org.telegram.ui.PaymentFormActivity.27
                        /* JADX WARN: Not initialized variable reg: 4, insn: 0x013e: MOVE (r2 I:??[OBJECT, ARRAY]) = (r4 I:??[OBJECT, ARRAY]), block:B:35:0x013e */
                        /* JADX WARN: Removed duplicated region for block: B:14:0x0099  */
                        @Override // android.os.AsyncTask
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                        */
                        public String doInBackground(Object... objArr) throws Throwable {
                            HttpURLConnection httpURLConnection;
                            HttpURLConnection httpURLConnection2;
                            JSONObject jSONObject;
                            String string;
                            URL url;
                            OutputStream outputStream;
                            HttpURLConnection httpURLConnection3 = null;
                            try {
                                try {
                                    try {
                                        jSONObject = new JSONObject();
                                        JSONObject jSONObject2 = new JSONObject();
                                        jSONObject2.put("number", card.getNumber());
                                        jSONObject2.put("expiration_month", String.format(Locale.US, TimeModel.ZERO_LEADING_NUMBER_FORMAT, card.getExpMonth()));
                                        jSONObject2.put("expiration_year", _UrlKt.FRAGMENT_ENCODE_SET + card.getExpYear());
                                        jSONObject2.put("security_code", _UrlKt.FRAGMENT_ENCODE_SET + card.getCVC());
                                        jSONObject.put("card", jSONObject2);
                                    } catch (Throwable th) {
                                        th = th;
                                        if (httpURLConnection3 != null) {
                                            httpURLConnection3.disconnect();
                                        }
                                        throw th;
                                    }
                                } catch (Exception e) {
                                    e = e;
                                    httpURLConnection2 = null;
                                }
                                if (PaymentFormActivity.this.paymentForm.native_params != null) {
                                    try {
                                        string = new JSONObject(PaymentFormActivity.this.paymentForm.native_params.data).getString("tokenize_url");
                                    } catch (Exception unused) {
                                    }
                                    if (string != null) {
                                        try {
                                            if (string.startsWith("https://")) {
                                                if (!string.endsWith(".smart-glocal.com/cds/v1/tokenize/card")) {
                                                    string = null;
                                                }
                                            }
                                        } catch (Exception unused2) {
                                        }
                                    }
                                    if (string != null) {
                                        url = new URL(string);
                                    } else if (PaymentFormActivity.this.paymentForm.invoice.test) {
                                        url = new URL("https://tgb-playground.smart-glocal.com/cds/v1/tokenize/card");
                                    } else {
                                        url = new URL("https://tgb.smart-glocal.com/cds/v1/tokenize/card");
                                    }
                                    httpURLConnection2 = (HttpURLConnection) url.openConnection();
                                    try {
                                        httpURLConnection2.setConnectTimeout(30000);
                                        httpURLConnection2.setReadTimeout(80000);
                                        httpURLConnection2.setUseCaches(false);
                                        httpURLConnection2.setDoOutput(true);
                                        httpURLConnection2.setRequestMethod("POST");
                                        httpURLConnection2.setRequestProperty("Content-Type", "application/json");
                                        httpURLConnection2.setRequestProperty("X-PUBLIC-TOKEN", PaymentFormActivity.this.providerApiKey);
                                        outputStream = httpURLConnection2.getOutputStream();
                                    } catch (Exception e2) {
                                        e = e2;
                                        FileLog.m992e(e);
                                        if (httpURLConnection2 != null) {
                                        }
                                        return null;
                                    }
                                    try {
                                        outputStream.write(jSONObject.toString().getBytes("UTF-8"));
                                        outputStream.close();
                                        int responseCode = httpURLConnection2.getResponseCode();
                                        if (responseCode >= 200 && responseCode < 300) {
                                            JSONObject jSONObject3 = new JSONObject();
                                            jSONObject3.put("token", new JSONObject(PaymentFormActivity.getResponseBody(httpURLConnection2.getInputStream())).getJSONObject("data").getString("token"));
                                            jSONObject3.put("type", "card");
                                            String string2 = jSONObject3.toString();
                                            httpURLConnection2.disconnect();
                                            return string2;
                                        }
                                        if (BuildVars.DEBUG_VERSION) {
                                            FileLog.m990e(_UrlKt.FRAGMENT_ENCODE_SET + PaymentFormActivity.getResponseBody(httpURLConnection2.getErrorStream()));
                                        }
                                        httpURLConnection2.disconnect();
                                    } catch (Throwable th2) {
                                        if (outputStream != null) {
                                            try {
                                                outputStream.close();
                                            } catch (Throwable th3) {
                                                th2.addSuppressed(th3);
                                            }
                                        }
                                        throw th2;
                                    }
                                }
                                return null;
                            } catch (Throwable th4) {
                                th = th4;
                                httpURLConnection3 = httpURLConnection;
                            }
                        }

                        @Override // android.os.AsyncTask
                        public void onPostExecute(String str) {
                            if (PaymentFormActivity.this.canceled) {
                                return;
                            }
                            PaymentFormActivity paymentFormActivity = PaymentFormActivity.this;
                            if (str == null) {
                                AlertsCreator.showSimpleToast(paymentFormActivity, LocaleController.getString(C2665R.string.PaymentConnectionFailed));
                            } else {
                                paymentFormActivity.paymentJson = str;
                                PaymentFormActivity.this.goToNextStep();
                            }
                            PaymentFormActivity.this.showEditDoneProgress(true, false);
                            PaymentFormActivity.this.setDonePressed(false);
                        }
                    }.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null, null, null);
                }
            } else {
                new Stripe(this.providerApiKey).createToken(card, new AnonymousClass26());
            }
        } catch (Exception e) {
            FileLog.m992e(e);
        }
        return true;
    }

    /* JADX INFO: renamed from: org.telegram.ui.PaymentFormActivity$26, reason: invalid class name */
    public class AnonymousClass26 implements TokenCallback {
        public AnonymousClass26() {
        }

        @Override // com.stripe.android.TokenCallback
        public void onSuccess(Token token) {
            if (PaymentFormActivity.this.canceled) {
                return;
            }
            PaymentFormActivity.this.paymentJson = String.format(Locale.US, "{\"type\":\"%1$s\", \"id\":\"%2$s\"}", token.getType(), token.getId());
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PaymentFormActivity$26$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onSuccess$0();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onSuccess$0() {
            PaymentFormActivity.this.goToNextStep();
            PaymentFormActivity.this.showEditDoneProgress(true, false);
            PaymentFormActivity.this.setDonePressed(false);
        }

        @Override // com.stripe.android.TokenCallback
        public void onError(Exception exc) {
            if (PaymentFormActivity.this.canceled) {
                return;
            }
            PaymentFormActivity.this.showEditDoneProgress(true, false);
            PaymentFormActivity.this.setDonePressed(false);
            if ((exc instanceof APIConnectionException) || (exc instanceof APIException)) {
                AlertsCreator.showSimpleToast(PaymentFormActivity.this, LocaleController.getString(C2665R.string.PaymentConnectionFailed));
            } else {
                AlertsCreator.showSimpleToast(PaymentFormActivity.this, exc.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getResponseBody(InputStream inputStream) throws IOException {
        String next = new Scanner(inputStream, "UTF-8").useDelimiter("\\A").next();
        inputStream.close();
        return next;
    }

    private void sendSavedForm(final Runnable runnable) {
        if (this.canceled) {
            return;
        }
        showEditDoneProgress(true, true);
        TLRPC.TL_payments_validateRequestedInfo tL_payments_validateRequestedInfo = new TLRPC.TL_payments_validateRequestedInfo();
        this.validateRequest = tL_payments_validateRequestedInfo;
        TLRPC.InputInvoice inputInvoice = this.invoiceInput;
        if (inputInvoice != null) {
            tL_payments_validateRequestedInfo.invoice = inputInvoice;
        } else if (this.messageObject != null) {
            TLRPC.TL_inputInvoiceMessage tL_inputInvoiceMessage = new TLRPC.TL_inputInvoiceMessage();
            tL_inputInvoiceMessage.peer = getMessagesController().getInputPeer(this.messageObject.messageOwner.peer_id);
            tL_inputInvoiceMessage.msg_id = this.messageObject.getId();
            this.validateRequest.invoice = tL_inputInvoiceMessage;
        } else {
            TLRPC.TL_inputInvoiceSlug tL_inputInvoiceSlug = new TLRPC.TL_inputInvoiceSlug();
            tL_inputInvoiceSlug.slug = this.invoiceSlug;
            this.validateRequest.invoice = tL_inputInvoiceSlug;
        }
        final TLRPC.TL_payments_validateRequestedInfo tL_payments_validateRequestedInfo2 = this.validateRequest;
        tL_payments_validateRequestedInfo2.save = true;
        tL_payments_validateRequestedInfo2.info = this.paymentForm.saved_info;
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_payments_validateRequestedInfo2, new RequestDelegate() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda46
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$sendSavedForm$51(runnable, tL_payments_validateRequestedInfo2, tLObject, tL_error);
            }
        }, (this.allowUnregistered ? 8 : 0) | 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendSavedForm$51(final Runnable runnable, final TLObject tLObject, final TLObject tLObject2, final TLRPC.TL_error tL_error) {
        if (tLObject2 instanceof TLRPC.TL_payments_validatedRequestedInfo) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda54
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$sendSavedForm$49(tLObject2, runnable);
                }
            });
        } else {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda55
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$sendSavedForm$50(tL_error, tLObject);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendSavedForm$49(TLObject tLObject, Runnable runnable) {
        this.requestedInfo = (TLRPC.TL_payments_validatedRequestedInfo) tLObject;
        runnable.run();
        setDonePressed(false);
        showEditDoneProgress(true, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendSavedForm$50(TLRPC.TL_error tL_error, TLObject tLObject) {
        setDonePressed(false);
        showEditDoneProgress(true, false);
        if (tL_error != null) {
            AlertsCreator.processError(this.currentAccount, tL_error, this, tLObject, new Object[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendForm() {
        if (this.canceled) {
            return;
        }
        showEditDoneProgress(true, true);
        TLRPC.TL_payments_validateRequestedInfo tL_payments_validateRequestedInfo = new TLRPC.TL_payments_validateRequestedInfo();
        this.validateRequest = tL_payments_validateRequestedInfo;
        TLRPC.InputInvoice inputInvoice = this.invoiceInput;
        if (inputInvoice != null) {
            tL_payments_validateRequestedInfo.invoice = inputInvoice;
        } else if (this.messageObject != null) {
            TLRPC.TL_inputInvoiceMessage tL_inputInvoiceMessage = new TLRPC.TL_inputInvoiceMessage();
            tL_inputInvoiceMessage.peer = getMessagesController().getInputPeer(this.messageObject.messageOwner.peer_id);
            tL_inputInvoiceMessage.msg_id = this.messageObject.getId();
            this.validateRequest.invoice = tL_inputInvoiceMessage;
        } else {
            TLRPC.TL_inputInvoiceSlug tL_inputInvoiceSlug = new TLRPC.TL_inputInvoiceSlug();
            tL_inputInvoiceSlug.slug = this.invoiceSlug;
            this.validateRequest.invoice = tL_inputInvoiceSlug;
        }
        TLRPC.TL_payments_validateRequestedInfo tL_payments_validateRequestedInfo2 = this.validateRequest;
        tL_payments_validateRequestedInfo2.save = this.saveShippingInfo;
        tL_payments_validateRequestedInfo2.info = new TLRPC.TL_paymentRequestedInfo();
        if (this.paymentForm.invoice.name_requested) {
            this.validateRequest.info.name = this.inputFields[6].getText().toString();
            this.validateRequest.info.flags |= 1;
        }
        if (this.paymentForm.invoice.phone_requested) {
            this.validateRequest.info.phone = "+" + this.inputFields[8].getText().toString() + this.inputFields[9].getText().toString();
            TLRPC.TL_paymentRequestedInfo tL_paymentRequestedInfo = this.validateRequest.info;
            tL_paymentRequestedInfo.flags = tL_paymentRequestedInfo.flags | 2;
        }
        if (this.paymentForm.invoice.email_requested) {
            this.validateRequest.info.email = this.inputFields[7].getText().toString().trim();
            this.validateRequest.info.flags |= 4;
        }
        if (this.paymentForm.invoice.shipping_address_requested) {
            this.validateRequest.info.shipping_address = new TLRPC.TL_postAddress();
            this.validateRequest.info.shipping_address.street_line1 = this.inputFields[0].getText().toString();
            this.validateRequest.info.shipping_address.street_line2 = this.inputFields[1].getText().toString();
            this.validateRequest.info.shipping_address.city = this.inputFields[2].getText().toString();
            this.validateRequest.info.shipping_address.state = this.inputFields[3].getText().toString();
            TLRPC.TL_postAddress tL_postAddress = this.validateRequest.info.shipping_address;
            String str = this.countryName;
            if (str == null) {
                str = _UrlKt.FRAGMENT_ENCODE_SET;
            }
            tL_postAddress.country_iso2 = str;
            tL_postAddress.post_code = this.inputFields[5].getText().toString();
            this.validateRequest.info.flags |= 8;
        }
        final TLRPC.TL_payments_validateRequestedInfo tL_payments_validateRequestedInfo3 = this.validateRequest;
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(this.validateRequest, new RequestDelegate() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda48
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$sendForm$55(tL_payments_validateRequestedInfo3, tLObject, tL_error);
            }
        }, (this.allowUnregistered ? 8 : 0) | 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendForm$55(final TLObject tLObject, final TLObject tLObject2, final TLRPC.TL_error tL_error) {
        if (tLObject2 instanceof TLRPC.TL_payments_validatedRequestedInfo) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda52
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$sendForm$53(tLObject2);
                }
            });
        } else {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda53
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$sendForm$54(tL_error, tLObject);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendForm$53(TLObject tLObject) {
        this.requestedInfo = (TLRPC.TL_payments_validatedRequestedInfo) tLObject;
        if (this.paymentForm.saved_info != null && !this.saveShippingInfo) {
            TLRPC.TL_payments_clearSavedInfo tL_payments_clearSavedInfo = new TLRPC.TL_payments_clearSavedInfo();
            tL_payments_clearSavedInfo.info = true;
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_payments_clearSavedInfo, new RequestDelegate() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda62
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject2, TLRPC.TL_error tL_error) {
                    PaymentFormActivity.$r8$lambda$N5EBCheEeuvSVEmlqehvGd50Iaw(tLObject2, tL_error);
                }
            }, this.allowUnregistered ? 8 : 0);
        }
        goToNextStep();
        setDonePressed(false);
        showEditDoneProgress(true, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendForm$54(TLRPC.TL_error tL_error, TLObject tLObject) {
        setDonePressed(false);
        showEditDoneProgress(true, false);
        if (tL_error != null) {
            String str = tL_error.text;
            str.getClass();
            switch (str) {
                case "ADDRESS_CITY_INVALID":
                    shakeField(2);
                    break;
                case "ADDRESS_STREET_LINE1_INVALID":
                    shakeField(0);
                    break;
                case "ADDRESS_COUNTRY_INVALID":
                    shakeField(4);
                    break;
                case "REQ_INFO_NAME_INVALID":
                    shakeField(6);
                    break;
                case "ADDRESS_POSTCODE_INVALID":
                    shakeField(5);
                    break;
                case "ADDRESS_STATE_INVALID":
                    shakeField(3);
                    break;
                case "REQ_INFO_PHONE_INVALID":
                    shakeField(9);
                    break;
                case "ADDRESS_STREET_LINE2_INVALID":
                    shakeField(1);
                    break;
                case "REQ_INFO_EMAIL_INVALID":
                    shakeField(7);
                    break;
                default:
                    AlertsCreator.processError(this.currentAccount, tL_error, this, tLObject, new Object[0]);
                    break;
            }
        }
    }

    public PaymentFormActivity setCustomResultReceiver(Utilities.Callback<TLRPC.TL_payments_paymentResult> callback) {
        this.customResultReceiver = callback;
        return this;
    }

    public PaymentFormActivity setCustomAnyResultReceiver(Utilities.Callback<TLRPC.payments_PaymentResult> callback) {
        this.customAnyResultReceiver = callback;
        return this;
    }

    public void setCustomErrorReceiver(Utilities.CallbackReturn<TLRPC.TL_error, Boolean> callbackReturn) {
        this.customErrorReceiver = callbackReturn;
    }

    private void sendData() {
        String str;
        if (this.canceled) {
            return;
        }
        showEditDoneProgress(false, true);
        final TLRPC.TL_payments_sendPaymentForm tL_payments_sendPaymentForm = new TLRPC.TL_payments_sendPaymentForm();
        TLRPC.InputInvoice inputInvoice = this.invoiceInput;
        if (inputInvoice != null) {
            tL_payments_sendPaymentForm.invoice = inputInvoice;
        } else if (this.messageObject != null) {
            TLRPC.TL_inputInvoiceMessage tL_inputInvoiceMessage = new TLRPC.TL_inputInvoiceMessage();
            tL_inputInvoiceMessage.peer = getMessagesController().getInputPeer(this.messageObject.messageOwner.peer_id);
            tL_inputInvoiceMessage.msg_id = this.messageObject.getId();
            tL_payments_sendPaymentForm.invoice = tL_inputInvoiceMessage;
        } else {
            TLRPC.TL_inputInvoiceSlug tL_inputInvoiceSlug = new TLRPC.TL_inputInvoiceSlug();
            tL_inputInvoiceSlug.slug = this.invoiceSlug;
            tL_payments_sendPaymentForm.invoice = tL_inputInvoiceSlug;
        }
        tL_payments_sendPaymentForm.form_id = this.paymentForm.form_id;
        if (UserConfig.getInstance(this.currentAccount).tmpPassword != null && this.savedCredentialsCard != null) {
            TLRPC.TL_inputPaymentCredentialsSaved tL_inputPaymentCredentialsSaved = new TLRPC.TL_inputPaymentCredentialsSaved();
            tL_payments_sendPaymentForm.credentials = tL_inputPaymentCredentialsSaved;
            tL_inputPaymentCredentialsSaved.id = this.savedCredentialsCard.id;
            tL_inputPaymentCredentialsSaved.tmp_password = UserConfig.getInstance(this.currentAccount).tmpPassword.tmp_password;
        } else {
            TLRPC.TL_inputPaymentCredentialsGooglePay tL_inputPaymentCredentialsGooglePay = this.googlePayCredentials;
            if (tL_inputPaymentCredentialsGooglePay != null) {
                tL_payments_sendPaymentForm.credentials = tL_inputPaymentCredentialsGooglePay;
            } else {
                TLRPC.TL_inputPaymentCredentials tL_inputPaymentCredentials = new TLRPC.TL_inputPaymentCredentials();
                tL_payments_sendPaymentForm.credentials = tL_inputPaymentCredentials;
                tL_inputPaymentCredentials.save = this.saveCardInfo;
                tL_inputPaymentCredentials.data = new TLRPC.TL_dataJSON();
                tL_payments_sendPaymentForm.credentials.data.data = this.paymentJson;
            }
        }
        TLRPC.TL_payments_validatedRequestedInfo tL_payments_validatedRequestedInfo = this.requestedInfo;
        if (tL_payments_validatedRequestedInfo != null && (str = tL_payments_validatedRequestedInfo.id) != null) {
            tL_payments_sendPaymentForm.requested_info_id = str;
            tL_payments_sendPaymentForm.flags = 1 | tL_payments_sendPaymentForm.flags;
        }
        TLRPC.TL_shippingOption tL_shippingOption = this.shippingOption;
        if (tL_shippingOption != null) {
            tL_payments_sendPaymentForm.shipping_option_id = tL_shippingOption.id;
            tL_payments_sendPaymentForm.flags |= 2;
        }
        if ((this.paymentForm.invoice.flags & 256) != 0) {
            Long l = this.tipAmount;
            tL_payments_sendPaymentForm.tip_amount = l != null ? l.longValue() : 0L;
            tL_payments_sendPaymentForm.flags |= 4;
        }
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_payments_sendPaymentForm, new RequestDelegate() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda56
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$sendData$69(tL_payments_sendPaymentForm, tLObject, tL_error);
            }
        }, (this.allowUnregistered ? 8 : 0) | 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendData$69(final TLRPC.TL_payments_sendPaymentForm tL_payments_sendPaymentForm, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        if (tLObject != null) {
            if (tLObject instanceof TLRPC.TL_payments_paymentResult) {
                Utilities.Callback<TLRPC.TL_payments_paymentResult> callback = this.customResultReceiver;
                if (callback != null) {
                    callback.run((TLRPC.TL_payments_paymentResult) tLObject);
                    return;
                }
                TLRPC.Updates updates = ((TLRPC.TL_payments_paymentResult) tLObject).updates;
                final TLRPC.Message[] messageArr = new TLRPC.Message[1];
                int size = updates.updates.size();
                int i = 0;
                while (true) {
                    if (i >= size) {
                        break;
                    }
                    TLRPC.Update update = updates.updates.get(i);
                    if (update instanceof TL_update.TL_updateNewMessage) {
                        messageArr[0] = ((TL_update.TL_updateNewMessage) update).message;
                        break;
                    } else {
                        if (update instanceof TL_update.TL_updateNewChannelMessage) {
                            messageArr[0] = ((TL_update.TL_updateNewChannelMessage) update).message;
                            break;
                        }
                        i++;
                    }
                }
                getMessagesController().processUpdates(updates, false);
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda59
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$sendData$60(messageArr);
                    }
                });
                return;
            }
            if (tLObject instanceof TLRPC.TL_payments_paymentVerificationNeeded) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda60
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$sendData$67(tLObject);
                    }
                });
                return;
            }
            return;
        }
        Utilities.CallbackReturn<TLRPC.TL_error, Boolean> callbackReturn = this.customErrorReceiver;
        if (callbackReturn == null || !callbackReturn.run(tL_error).booleanValue()) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda61
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$sendData$68(tL_error, tL_payments_sendPaymentForm);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendData$60(final TLRPC.Message[] messageArr) {
        String forcedFirstName;
        TLRPC.Chat chat;
        int i;
        int i2;
        String string;
        String string2;
        final Bulletin bulletinCreateSimpleBulletin;
        PaymentFormCallback paymentFormCallback;
        PaymentFormCallback paymentFormCallback2;
        Context context = getContext();
        if (context == null) {
            context = ApplicationLoader.applicationContext;
        }
        if (context == null) {
            context = LaunchActivity.instance;
        }
        if (context == null) {
            return;
        }
        this.paymentStatusSent = true;
        InvoiceStatus invoiceStatus = InvoiceStatus.PAID;
        this.invoiceStatus = invoiceStatus;
        TLRPC.InputInvoice inputInvoice = this.invoiceInput;
        boolean z = inputInvoice instanceof TLRPC.TL_inputInvoiceStars;
        final boolean z2 = z && (((TLRPC.TL_inputInvoiceStars) inputInvoice).purpose instanceof TLRPC.TL_inputStorePaymentStarsGift);
        boolean z3 = z && (((TLRPC.TL_inputInvoiceStars) inputInvoice).purpose instanceof TLRPC.TL_inputStorePaymentStarsGiveaway);
        if (!z && (paymentFormCallback2 = this.paymentFormCallback) != null) {
            paymentFormCallback2.onInvoiceStatusChanged(invoiceStatus);
        }
        goToNextStep();
        if (z && (paymentFormCallback = this.paymentFormCallback) != null) {
            paymentFormCallback.onInvoiceStatusChanged(this.invoiceStatus);
        }
        final long starsGiftUserId = getStarsGiftUserId();
        if (starsGiftUserId > 0) {
            forcedFirstName = UserObject.getForcedFirstName(getMessagesController().getUser(Long.valueOf(starsGiftUserId)));
        } else {
            forcedFirstName = _UrlKt.FRAGMENT_ENCODE_SET;
            if (starsGiftUserId < 0 && (chat = getMessagesController().getChat(Long.valueOf(-starsGiftUserId))) != null) {
                forcedFirstName = chat.title;
            }
        }
        long stars = getStars();
        if (z) {
            i = (z2 || z3) ? C2665R.raw.stars_send : C2665R.raw.stars_topup;
        } else {
            i = C2665R.raw.payment_success;
        }
        int i3 = i;
        if (z) {
            if (z3) {
                i2 = C2665R.string.StarsGiveawaySentPopup;
            } else {
                i2 = z2 ? C2665R.string.StarsGiftSentPopup : C2665R.string.StarsAcquired;
            }
            string = LocaleController.getString(i2);
        } else {
            string = null;
        }
        String str = string;
        if (!z) {
            string2 = LocaleController.formatString(C2665R.string.PaymentInfoHint, this.totalPrice[0], this.currentItemName);
        } else if (z3) {
            string2 = LocaleController.formatPluralStringComma("StarsGiveawaySentPopupInfo", (int) stars);
        } else {
            string2 = LocaleController.formatPluralStringComma(z2 ? "StarsGiftSentPopupInfo" : "StarsAcquiredInfo", (int) stars, forcedFirstName);
        }
        SpannableStringBuilder spannableStringBuilderReplaceTags = AndroidUtilities.replaceTags(string2);
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment == null) {
            return;
        }
        BulletinFactory bulletinFactoryOf = BulletinFactory.of(safeLastFragment);
        if (starsGiftUserId != 0 && str != null && !z3) {
            bulletinCreateSimpleBulletin = bulletinFactoryOf.createSimpleBulletin(i3, str, spannableStringBuilderReplaceTags, LocaleController.getString(C2665R.string.ViewInChat), new Runnable() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda68
                @Override // java.lang.Runnable
                public final void run() {
                    PaymentFormActivity.$r8$lambda$ZwxLWeRkeD62yJ8Gykbml7RGJkY(starsGiftUserId);
                }
            });
        } else if (str != null) {
            bulletinCreateSimpleBulletin = bulletinFactoryOf.createSimpleBulletin(i3, str, spannableStringBuilderReplaceTags);
        } else {
            bulletinCreateSimpleBulletin = bulletinFactoryOf.createSimpleBulletin(i3, spannableStringBuilderReplaceTags);
        }
        bulletinCreateSimpleBulletin.hideAfterBottomSheet = false;
        bulletinCreateSimpleBulletin.setDuration(5000);
        if (messageArr[0] != null) {
            bulletinCreateSimpleBulletin.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda69
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$sendData$59(bulletinCreateSimpleBulletin, z2, messageArr, view);
                }
            });
        }
        bulletinCreateSimpleBulletin.show(z3);
    }

    public static /* synthetic */ void $r8$lambda$ZwxLWeRkeD62yJ8Gykbml7RGJkY(long j) {
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment != null) {
            safeLastFragment.presentFragment(ChatActivity.of(j));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendData$59(Bulletin bulletin, boolean z, TLRPC.Message[] messageArr, View view) {
        bulletin.hide();
        if (z) {
            BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
            if (safeLastFragment != null) {
                safeLastFragment.presentFragment(ChatActivity.of(MessageObject.getDialogId(messageArr[0]), messageArr[0].id));
                return;
            }
            return;
        }
        TLRPC.TL_payments_getPaymentReceipt tL_payments_getPaymentReceipt = new TLRPC.TL_payments_getPaymentReceipt();
        tL_payments_getPaymentReceipt.msg_id = messageArr[0].id;
        tL_payments_getPaymentReceipt.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(messageArr[0].peer_id);
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_payments_getPaymentReceipt, new RequestDelegate() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda70
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$sendData$58(tLObject, tL_error);
            }
        }, 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendData$58(final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda75
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$sendData$57(tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendData$57(TLObject tLObject) {
        BaseFragment lastFragment;
        if (tLObject instanceof TLRPC.TL_payments_paymentReceiptStars) {
            StarsIntroActivity.showTransactionSheet(getContext(), false, this.currentAccount, (TLRPC.TL_payments_paymentReceiptStars) tLObject, getResourceProvider());
            return;
        }
        if (!(tLObject instanceof TLRPC.PaymentReceipt) || (lastFragment = LaunchActivity.getLastFragment()) == null) {
            return;
        }
        BaseFragment.BottomSheetParams bottomSheetParams = new BaseFragment.BottomSheetParams();
        bottomSheetParams.transitionFromLeft = true;
        bottomSheetParams.allowNestedScroll = false;
        lastFragment.showAsSheet(new PaymentFormActivity((TLRPC.PaymentReceipt) tLObject).setCustomResultReceiver(this.customResultReceiver).setCustomAnyResultReceiver(this.customAnyResultReceiver), bottomSheetParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendData$67(TLObject tLObject) {
        Utilities.Callback<TLRPC.payments_PaymentResult> callback = this.customAnyResultReceiver;
        if (callback != null) {
            callback.run((TLRPC.TL_payments_paymentVerificationNeeded) tLObject);
        }
        setDonePressed(false);
        this.webviewLoading = true;
        showEditDoneProgress(true, true);
        ContextProgressView contextProgressView = this.progressView;
        if (contextProgressView != null) {
            contextProgressView.setVisibility(0);
        }
        ActionBarMenuItem actionBarMenuItem = this.doneItem;
        if (actionBarMenuItem != null) {
            actionBarMenuItem.setEnabled(false);
            this.doneItem.getContentView().setVisibility(4);
        }
        final INavigationLayout parentLayout = getParentLayout();
        final Activity parentActivity = getParentActivity();
        getMessagesController().newMessageCallback = new MessagesController.NewMessageCallback() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda65
            @Override // org.telegram.messenger.MessagesController.NewMessageCallback
            public final boolean onMessageReceived(TLRPC.Message message) {
                return this.f$0.lambda$sendData$66(parentLayout, parentActivity, message);
            }
        };
        WebView webView = this.webView;
        if (webView != null) {
            webView.setVisibility(0);
            WebView webView2 = this.webView;
            String str = ((TLRPC.TL_payments_paymentVerificationNeeded) tLObject).url;
            this.webViewUrl = str;
            webView2.loadUrl(str);
        }
        this.paymentStatusSent = true;
        InvoiceStatus invoiceStatus = InvoiceStatus.PENDING;
        this.invoiceStatus = invoiceStatus;
        PaymentFormCallback paymentFormCallback = this.paymentFormCallback;
        if (paymentFormCallback != null) {
            paymentFormCallback.onInvoiceStatusChanged(invoiceStatus);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$sendData$66(final INavigationLayout iNavigationLayout, final Activity activity, final TLRPC.Message message) {
        if (MessageObject.getPeerId(message.peer_id) != this.botUser.id || !(message.action instanceof TLRPC.TL_messageActionPaymentSent)) {
            return false;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda71
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$sendData$65(iNavigationLayout, activity, message);
            }
        });
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendData$65(INavigationLayout iNavigationLayout, Activity activity, final TLRPC.Message message) {
        String forcedFirstName;
        TLRPC.Chat chat;
        int i;
        int i2;
        String string;
        String string2;
        final Bulletin bulletinCreateSimpleBulletin;
        PaymentFormCallback paymentFormCallback;
        PaymentFormCallback paymentFormCallback2;
        this.paymentStatusSent = true;
        this.invoiceStatus = InvoiceStatus.PAID;
        onCheckoutSuccess(iNavigationLayout, activity);
        TLRPC.InputInvoice inputInvoice = this.invoiceInput;
        boolean z = inputInvoice instanceof TLRPC.TL_inputInvoiceStars;
        final boolean z2 = z && (((TLRPC.TL_inputInvoiceStars) inputInvoice).purpose instanceof TLRPC.TL_inputStorePaymentStarsGift);
        boolean z3 = z && (((TLRPC.TL_inputInvoiceStars) inputInvoice).purpose instanceof TLRPC.TL_inputStorePaymentStarsGiveaway);
        if (!z && (paymentFormCallback2 = this.paymentFormCallback) != null) {
            paymentFormCallback2.onInvoiceStatusChanged(this.invoiceStatus);
        }
        goToNextStep();
        if (z && (paymentFormCallback = this.paymentFormCallback) != null) {
            paymentFormCallback.onInvoiceStatusChanged(this.invoiceStatus);
        }
        final long starsGiftUserId = getStarsGiftUserId();
        if (starsGiftUserId > 0) {
            forcedFirstName = UserObject.getForcedFirstName(getMessagesController().getUser(Long.valueOf(starsGiftUserId)));
        } else {
            forcedFirstName = _UrlKt.FRAGMENT_ENCODE_SET;
            if (starsGiftUserId < 0 && (chat = getMessagesController().getChat(Long.valueOf(-starsGiftUserId))) != null) {
                forcedFirstName = chat.title;
            }
        }
        long stars = getStars();
        if (z) {
            i = (z2 || z3) ? C2665R.raw.stars_send : C2665R.raw.stars_topup;
        } else {
            i = C2665R.raw.payment_success;
        }
        int i3 = i;
        if (z) {
            if (z3) {
                i2 = C2665R.string.StarsGiveawaySentPopup;
            } else {
                i2 = z2 ? C2665R.string.StarsGiftSentPopup : C2665R.string.StarsAcquired;
            }
            string = LocaleController.getString(i2);
        } else {
            string = null;
        }
        String str = string;
        if (!z) {
            string2 = LocaleController.formatString(C2665R.string.PaymentInfoHint, this.totalPrice[0], this.currentItemName);
        } else if (z3) {
            string2 = LocaleController.formatPluralStringComma("StarsGiveawaySentPopupInfo", (int) stars);
        } else {
            string2 = LocaleController.formatPluralStringComma(z2 ? "StarsGiftSentPopupInfo" : "StarsAcquiredInfo", (int) stars, forcedFirstName);
        }
        SpannableStringBuilder spannableStringBuilderReplaceTags = AndroidUtilities.replaceTags(string2);
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment == null) {
            return;
        }
        BulletinFactory bulletinFactoryOf = BulletinFactory.of(safeLastFragment);
        if (starsGiftUserId != 0 && str != null && !z3) {
            bulletinCreateSimpleBulletin = bulletinFactoryOf.createSimpleBulletin(i3, str, spannableStringBuilderReplaceTags, LocaleController.getString(C2665R.string.ViewInChat), new Runnable() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda73
                @Override // java.lang.Runnable
                public final void run() {
                    PaymentFormActivity.$r8$lambda$C3qxmrCHzS0gfzsY2zzJ5QHH8ho(starsGiftUserId);
                }
            });
        } else if (str != null) {
            bulletinCreateSimpleBulletin = bulletinFactoryOf.createSimpleBulletin(i3, str, spannableStringBuilderReplaceTags);
        } else {
            bulletinCreateSimpleBulletin = bulletinFactoryOf.createSimpleBulletin(i3, spannableStringBuilderReplaceTags);
        }
        bulletinCreateSimpleBulletin.hideAfterBottomSheet = false;
        bulletinCreateSimpleBulletin.setDuration(5000);
        if (message != null) {
            bulletinCreateSimpleBulletin.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda74
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$sendData$64(bulletinCreateSimpleBulletin, z2, message, view);
                }
            });
        }
        bulletinCreateSimpleBulletin.show(z3);
    }

    public static /* synthetic */ void $r8$lambda$C3qxmrCHzS0gfzsY2zzJ5QHH8ho(long j) {
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment != null) {
            safeLastFragment.presentFragment(ChatActivity.of(j));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendData$64(Bulletin bulletin, boolean z, TLRPC.Message message, View view) {
        bulletin.hide();
        if (z) {
            BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
            if (safeLastFragment != null) {
                safeLastFragment.presentFragment(ChatActivity.of(MessageObject.getDialogId(message), message.id));
                return;
            }
            return;
        }
        TLRPC.TL_payments_getPaymentReceipt tL_payments_getPaymentReceipt = new TLRPC.TL_payments_getPaymentReceipt();
        tL_payments_getPaymentReceipt.msg_id = message.id;
        tL_payments_getPaymentReceipt.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(message.peer_id);
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_payments_getPaymentReceipt, new RequestDelegate() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda0
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$sendData$63(tLObject, tL_error);
            }
        }, 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendData$63(final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$sendData$62(tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendData$62(TLObject tLObject) {
        BaseFragment lastFragment;
        if (tLObject instanceof TLRPC.TL_payments_paymentReceiptStars) {
            StarsIntroActivity.showTransactionSheet(getContext(), false, this.currentAccount, (TLRPC.TL_payments_paymentReceiptStars) tLObject, getResourceProvider());
            return;
        }
        if (!(tLObject instanceof TLRPC.PaymentReceipt) || (lastFragment = LaunchActivity.getLastFragment()) == null) {
            return;
        }
        BaseFragment.BottomSheetParams bottomSheetParams = new BaseFragment.BottomSheetParams();
        bottomSheetParams.transitionFromLeft = true;
        bottomSheetParams.allowNestedScroll = false;
        lastFragment.showAsSheet(new PaymentFormActivity((TLRPC.PaymentReceipt) tLObject).setCustomResultReceiver(this.customResultReceiver).setCustomAnyResultReceiver(this.customAnyResultReceiver), bottomSheetParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendData$68(TLRPC.TL_error tL_error, TLRPC.TL_payments_sendPaymentForm tL_payments_sendPaymentForm) {
        AlertsCreator.processError(this.currentAccount, tL_error, this, tL_payments_sendPaymentForm, new Object[0]);
        setDonePressed(false);
        showEditDoneProgress(false, false);
        this.paymentStatusSent = true;
        InvoiceStatus invoiceStatus = InvoiceStatus.FAILED;
        this.invoiceStatus = invoiceStatus;
        PaymentFormCallback paymentFormCallback = this.paymentFormCallback;
        if (paymentFormCallback != null) {
            paymentFormCallback.onInvoiceStatusChanged(invoiceStatus);
        }
    }

    private long getStars() {
        TLRPC.InputInvoice inputInvoice = this.invoiceInput;
        if (!(inputInvoice instanceof TLRPC.TL_inputInvoiceStars)) {
            return 0L;
        }
        TLRPC.InputStorePaymentPurpose inputStorePaymentPurpose = ((TLRPC.TL_inputInvoiceStars) inputInvoice).purpose;
        if (inputStorePaymentPurpose instanceof TLRPC.TL_inputStorePaymentStarsGift) {
            return ((TLRPC.TL_inputStorePaymentStarsGift) inputStorePaymentPurpose).stars;
        }
        if (inputStorePaymentPurpose instanceof TLRPC.TL_inputStorePaymentStarsTopup) {
            return ((TLRPC.TL_inputStorePaymentStarsTopup) inputStorePaymentPurpose).stars;
        }
        if (inputStorePaymentPurpose instanceof TLRPC.TL_inputStorePaymentStarsGiveaway) {
            return ((TLRPC.TL_inputStorePaymentStarsGiveaway) inputStorePaymentPurpose).stars;
        }
        return 0L;
    }

    private long getStarsGiftUserId() {
        TLRPC.InputPeer inputPeer;
        TLRPC.InputInvoice inputInvoice = this.invoiceInput;
        if (!(inputInvoice instanceof TLRPC.TL_inputInvoiceStars)) {
            return 0L;
        }
        TLRPC.InputStorePaymentPurpose inputStorePaymentPurpose = ((TLRPC.TL_inputInvoiceStars) inputInvoice).purpose;
        if (inputStorePaymentPurpose instanceof TLRPC.TL_inputStorePaymentStarsGift) {
            TLRPC.InputUser inputUser = ((TLRPC.TL_inputStorePaymentStarsGift) inputStorePaymentPurpose).user_id;
            if (inputUser != null) {
                return inputUser.user_id;
            }
            return 0L;
        }
        if (!(inputStorePaymentPurpose instanceof TLRPC.TL_inputStorePaymentStarsGiveaway) || (inputPeer = ((TLRPC.TL_inputStorePaymentStarsGiveaway) inputStorePaymentPurpose).boost_peer) == null) {
            return 0L;
        }
        return DialogObject.getPeerDialogId(inputPeer);
    }

    private void shakeField(int i) {
        shakeView(this.inputFields[i]);
    }

    private void shakeView(View view) {
        try {
            view.performHapticFeedback(3, 2);
        } catch (Exception unused) {
        }
        AndroidUtilities.shakeViewSpring(view, 2.5f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDonePressed(boolean z) {
        this.donePressed = z;
        this.swipeBackEnabled = !z;
        ActionBar actionBar = this.actionBar;
        if (actionBar != null && actionBar.getBackButton() != null) {
            this.actionBar.getBackButton().setEnabled(!this.donePressed);
        }
        TextDetailSettingsCell textDetailSettingsCell = this.detailSettingsCell[0];
        if (textDetailSettingsCell != null) {
            textDetailSettingsCell.setEnabled(!this.donePressed);
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean isSwipeBackEnabled(MotionEvent motionEvent) {
        return this.swipeBackEnabled;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkPassword() {
        if (UserConfig.getInstance(this.currentAccount).tmpPassword != null && UserConfig.getInstance(this.currentAccount).tmpPassword.valid_until < ConnectionsManager.getInstance(this.currentAccount).getCurrentTime() + 60) {
            UserConfig.getInstance(this.currentAccount).tmpPassword = null;
            UserConfig.getInstance(this.currentAccount).saveConfig(false);
        }
        if (UserConfig.getInstance(this.currentAccount).tmpPassword != null) {
            sendData();
            return;
        }
        int length = this.inputFields[1].length();
        EditTextBoldCursor[] editTextBoldCursorArr = this.inputFields;
        if (length == 0) {
            try {
                editTextBoldCursorArr[1].performHapticFeedback(3, 2);
            } catch (Exception unused) {
            }
            AndroidUtilities.shakeViewSpring(this.inputFields[1], 2.5f);
            return;
        }
        final String string = editTextBoldCursorArr[1].getText().toString();
        showEditDoneProgress(true, true);
        setDonePressed(true);
        final TL_account.getPassword getpassword = new TL_account.getPassword();
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(getpassword, new RequestDelegate() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda50
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$checkPassword$74(string, getpassword, tLObject, tL_error);
            }
        }, (this.allowUnregistered ? 8 : 0) | 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkPassword$74(final String str, final TL_account.getPassword getpassword, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda57
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$checkPassword$73(tL_error, tLObject, str, getpassword);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkPassword$73(TLRPC.TL_error tL_error, TLObject tLObject, String str, TL_account.getPassword getpassword) {
        if (tL_error == null) {
            final TL_account.Password password = (TL_account.Password) tLObject;
            if (!TwoStepVerificationActivity.canHandleCurrentPassword(password, false)) {
                AlertsCreator.showUpdateAppAlert(getParentActivity(), LocaleController.getString(C2665R.string.UpdateAppAlert), true);
                return;
            } else if (!password.has_password) {
                this.passwordOk = false;
                goToNextStep();
                return;
            } else {
                final byte[] stringBytes = AndroidUtilities.getStringBytes(str);
                Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda58
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$checkPassword$72(password, stringBytes);
                    }
                });
                return;
            }
        }
        AlertsCreator.processError(this.currentAccount, tL_error, this, getpassword, new Object[0]);
        showEditDoneProgress(true, false);
        setDonePressed(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkPassword$72(TL_account.Password password, byte[] bArr) {
        TLRPC.PasswordKdfAlgo passwordKdfAlgo = password.current_algo;
        byte[] x = passwordKdfAlgo instanceof TLRPC.C2769xb6caa888 ? SRPHelper.getX(bArr, (TLRPC.C2769xb6caa888) passwordKdfAlgo) : null;
        final TL_account.getTmpPassword gettmppassword = new TL_account.getTmpPassword();
        gettmppassword.period = 1800;
        RequestDelegate requestDelegate = new RequestDelegate() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda67
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$checkPassword$71(gettmppassword, tLObject, tL_error);
            }
        };
        TLRPC.PasswordKdfAlgo passwordKdfAlgo2 = password.current_algo;
        if (passwordKdfAlgo2 instanceof TLRPC.C2769xb6caa888) {
            TLRPC.TL_inputCheckPasswordSRP tL_inputCheckPasswordSRPStartCheck = SRPHelper.startCheck(x, password.srp_id, password.srp_B, (TLRPC.C2769xb6caa888) passwordKdfAlgo2);
            gettmppassword.password = tL_inputCheckPasswordSRPStartCheck;
            if (tL_inputCheckPasswordSRPStartCheck == null) {
                TLRPC.TL_error tL_error = new TLRPC.TL_error();
                tL_error.text = "ALGO_INVALID";
                requestDelegate.run(null, tL_error);
                return;
            }
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(gettmppassword, requestDelegate, 10);
            return;
        }
        TLRPC.TL_error tL_error2 = new TLRPC.TL_error();
        tL_error2.text = "PASSWORD_HASH_INVALID";
        requestDelegate.run(null, tL_error2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkPassword$71(final TL_account.getTmpPassword gettmppassword, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda72
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$checkPassword$70(tLObject, tL_error, gettmppassword);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkPassword$70(TLObject tLObject, TLRPC.TL_error tL_error, TL_account.getTmpPassword gettmppassword) {
        showEditDoneProgress(true, false);
        setDonePressed(false);
        if (tLObject != null) {
            this.passwordOk = true;
            UserConfig.getInstance(this.currentAccount).tmpPassword = (TL_account.tmpPassword) tLObject;
            UserConfig.getInstance(this.currentAccount).saveConfig(false);
            goToNextStep();
            return;
        }
        if (tL_error.text.equals("PASSWORD_HASH_INVALID")) {
            try {
                this.inputFields[1].performHapticFeedback(3, 2);
            } catch (Exception unused) {
            }
            AndroidUtilities.shakeViewSpring(this.inputFields[1], 3.25f);
            this.inputFields[1].setText(_UrlKt.FRAGMENT_ENCODE_SET);
            return;
        }
        AlertsCreator.processError(this.currentAccount, tL_error, this, gettmppassword, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showEditDoneProgress(boolean z, final boolean z2) {
        AnimatorSet animatorSet = this.doneItemAnimation;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        if (z && this.doneItem != null) {
            AnimatorSet animatorSet2 = new AnimatorSet();
            this.doneItemAnimation = animatorSet2;
            if (z2) {
                this.progressView.setVisibility(0);
                this.doneItem.setEnabled(false);
                AnimatorSet animatorSet3 = this.doneItemAnimation;
                View contentView = this.doneItem.getContentView();
                Property property = View.SCALE_X;
                ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(contentView, (Property<View, Float>) property, 0.1f);
                View contentView2 = this.doneItem.getContentView();
                Property property2 = View.SCALE_Y;
                ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(contentView2, (Property<View, Float>) property2, 0.1f);
                View contentView3 = this.doneItem.getContentView();
                Property property3 = View.ALPHA;
                animatorSet3.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2, ObjectAnimator.ofFloat(contentView3, (Property<View, Float>) property3, 0.0f), ObjectAnimator.ofFloat(this.progressView, (Property<ContextProgressView, Float>) property, 1.0f), ObjectAnimator.ofFloat(this.progressView, (Property<ContextProgressView, Float>) property2, 1.0f), ObjectAnimator.ofFloat(this.progressView, (Property<ContextProgressView, Float>) property3, 1.0f));
            } else if (this.webView != null) {
                animatorSet2.playTogether(ObjectAnimator.ofFloat(this.progressView, (Property<ContextProgressView, Float>) View.SCALE_X, 0.1f), ObjectAnimator.ofFloat(this.progressView, (Property<ContextProgressView, Float>) View.SCALE_Y, 0.1f), ObjectAnimator.ofFloat(this.progressView, (Property<ContextProgressView, Float>) View.ALPHA, 0.0f));
            } else {
                this.doneItem.getContentView().setVisibility(0);
                this.doneItem.setEnabled(true);
                AnimatorSet animatorSet4 = this.doneItemAnimation;
                ContextProgressView contextProgressView = this.progressView;
                Property property4 = View.SCALE_X;
                ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(contextProgressView, (Property<ContextProgressView, Float>) property4, 0.1f);
                ContextProgressView contextProgressView2 = this.progressView;
                Property property5 = View.SCALE_Y;
                ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(contextProgressView2, (Property<ContextProgressView, Float>) property5, 0.1f);
                ContextProgressView contextProgressView3 = this.progressView;
                Property property6 = View.ALPHA;
                animatorSet4.playTogether(objectAnimatorOfFloat3, objectAnimatorOfFloat4, ObjectAnimator.ofFloat(contextProgressView3, (Property<ContextProgressView, Float>) property6, 0.0f));
                if (!isFinishing()) {
                    this.doneItemAnimation.playTogether(ObjectAnimator.ofFloat(this.doneItem.getContentView(), (Property<View, Float>) property4, 1.0f), ObjectAnimator.ofFloat(this.doneItem.getContentView(), (Property<View, Float>) property5, 1.0f), ObjectAnimator.ofFloat(this.doneItem.getContentView(), (Property<View, Float>) property6, 1.0f));
                }
            }
            this.doneItemAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.PaymentFormActivity.28
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (PaymentFormActivity.this.doneItemAnimation == null || !PaymentFormActivity.this.doneItemAnimation.equals(animator)) {
                        return;
                    }
                    boolean z3 = z2;
                    PaymentFormActivity paymentFormActivity = PaymentFormActivity.this;
                    if (!z3) {
                        paymentFormActivity.progressView.setVisibility(4);
                    } else {
                        paymentFormActivity.doneItem.getContentView().setVisibility(4);
                    }
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    if (PaymentFormActivity.this.doneItemAnimation == null || !PaymentFormActivity.this.doneItemAnimation.equals(animator)) {
                        return;
                    }
                    PaymentFormActivity.this.doneItemAnimation = null;
                }
            });
            this.doneItemAnimation.setDuration(150L);
            this.doneItemAnimation.start();
            return;
        }
        if (this.payTextView != null) {
            this.doneItemAnimation = new AnimatorSet();
            if (z2) {
                this.progressViewButton.setVisibility(0);
                this.bottomLayout.setEnabled(false);
                AnimatorSet animatorSet5 = this.doneItemAnimation;
                TextView textView = this.payTextView;
                Property property7 = View.SCALE_X;
                ObjectAnimator objectAnimatorOfFloat5 = ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) property7, 0.1f);
                TextView textView2 = this.payTextView;
                Property property8 = View.SCALE_Y;
                ObjectAnimator objectAnimatorOfFloat6 = ObjectAnimator.ofFloat(textView2, (Property<TextView, Float>) property8, 0.1f);
                TextView textView3 = this.payTextView;
                Property property9 = View.ALPHA;
                animatorSet5.playTogether(objectAnimatorOfFloat5, objectAnimatorOfFloat6, ObjectAnimator.ofFloat(textView3, (Property<TextView, Float>) property9, 0.0f), ObjectAnimator.ofFloat(this.progressViewButton, (Property<ContextProgressView, Float>) property7, 1.0f), ObjectAnimator.ofFloat(this.progressViewButton, (Property<ContextProgressView, Float>) property8, 1.0f), ObjectAnimator.ofFloat(this.progressViewButton, (Property<ContextProgressView, Float>) property9, 1.0f));
            } else {
                this.payTextView.setVisibility(0);
                this.bottomLayout.setEnabled(true);
                AnimatorSet animatorSet6 = this.doneItemAnimation;
                ContextProgressView contextProgressView4 = this.progressViewButton;
                Property property10 = View.SCALE_X;
                ObjectAnimator objectAnimatorOfFloat7 = ObjectAnimator.ofFloat(contextProgressView4, (Property<ContextProgressView, Float>) property10, 0.1f);
                ContextProgressView contextProgressView5 = this.progressViewButton;
                Property property11 = View.SCALE_Y;
                ObjectAnimator objectAnimatorOfFloat8 = ObjectAnimator.ofFloat(contextProgressView5, (Property<ContextProgressView, Float>) property11, 0.1f);
                ContextProgressView contextProgressView6 = this.progressViewButton;
                Property property12 = View.ALPHA;
                animatorSet6.playTogether(objectAnimatorOfFloat7, objectAnimatorOfFloat8, ObjectAnimator.ofFloat(contextProgressView6, (Property<ContextProgressView, Float>) property12, 0.0f), ObjectAnimator.ofFloat(this.payTextView, (Property<TextView, Float>) property10, 1.0f), ObjectAnimator.ofFloat(this.payTextView, (Property<TextView, Float>) property11, 1.0f), ObjectAnimator.ofFloat(this.payTextView, (Property<TextView, Float>) property12, 1.0f));
            }
            this.doneItemAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.PaymentFormActivity.29
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (PaymentFormActivity.this.doneItemAnimation == null || !PaymentFormActivity.this.doneItemAnimation.equals(animator)) {
                        return;
                    }
                    boolean z3 = z2;
                    PaymentFormActivity paymentFormActivity = PaymentFormActivity.this;
                    if (!z3) {
                        paymentFormActivity.progressViewButton.setVisibility(4);
                    } else {
                        paymentFormActivity.payTextView.setVisibility(4);
                    }
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    if (PaymentFormActivity.this.doneItemAnimation == null || !PaymentFormActivity.this.doneItemAnimation.equals(animator)) {
                        return;
                    }
                    PaymentFormActivity.this.doneItemAnimation = null;
                }
            });
            this.doneItemAnimation.setDuration(150L);
            this.doneItemAnimation.start();
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean presentFragment(BaseFragment baseFragment) {
        onPresentFragment(baseFragment);
        return super.presentFragment(baseFragment);
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean presentFragment(BaseFragment baseFragment, boolean z) {
        onPresentFragment(baseFragment);
        return super.presentFragment(baseFragment, z);
    }

    private void onPresentFragment(BaseFragment baseFragment) {
        AndroidUtilities.hideKeyboard(this.fragmentView);
        if (baseFragment instanceof PaymentFormActivity) {
            PaymentFormActivity paymentFormActivity = (PaymentFormActivity) baseFragment;
            paymentFormActivity.paymentFormCallback = this.paymentFormCallback;
            paymentFormActivity.resourcesProvider = this.resourcesProvider;
            paymentFormActivity.needPayAfterTransition = this.needPayAfterTransition;
            paymentFormActivity.savedCredentialsCard = this.savedCredentialsCard;
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onBackPressed(boolean z) {
        WebView webView = this.webView;
        if (webView == null || !this.shouldNavigateBack) {
            return !this.donePressed;
        }
        if (z) {
            webView.loadUrl(this.webViewUrl);
            this.shouldNavigateBack = false;
        }
        return false;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayList = new ArrayList<>();
        arrayList.add(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_windowBackgroundGray));
        ActionBar actionBar = this.actionBar;
        int i = ThemeDescription.FLAG_BACKGROUND;
        int i2 = Theme.key_actionBarDefault;
        arrayList.add(new ThemeDescription(actionBar, i, null, null, null, null, i2));
        arrayList.add(new ThemeDescription(this.scrollView, ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, i2));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SEARCH, null, null, null, null, Theme.key_actionBarDefaultSearch));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SEARCHPLACEHOLDER, null, null, null, null, Theme.key_actionBarDefaultSearchPlaceholder));
        arrayList.add(new ThemeDescription(this.linearLayout2, 0, new Class[]{View.class}, Theme.dividerPaint, null, null, Theme.key_divider));
        ContextProgressView contextProgressView = this.progressView;
        int i3 = Theme.key_contextProgressInner2;
        arrayList.add(new ThemeDescription(contextProgressView, 0, null, null, null, null, i3));
        ContextProgressView contextProgressView2 = this.progressView;
        int i4 = Theme.key_contextProgressOuter2;
        arrayList.add(new ThemeDescription(contextProgressView2, 0, null, null, null, null, i4));
        arrayList.add(new ThemeDescription(this.progressViewButton, 0, null, null, null, null, i3));
        arrayList.add(new ThemeDescription(this.progressViewButton, 0, null, null, null, null, i4));
        if (this.inputFields != null) {
            for (int i5 = 0; i5 < this.inputFields.length; i5++) {
                arrayList.add(new ThemeDescription((View) this.inputFields[i5].getParent(), ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_windowBackgroundWhite));
                arrayList.add(new ThemeDescription(this.inputFields[i5], ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, Theme.key_windowBackgroundWhiteBlackText));
                arrayList.add(new ThemeDescription(this.inputFields[i5], ThemeDescription.FLAG_HINTTEXTCOLOR, null, null, null, null, Theme.key_windowBackgroundWhiteHintText));
            }
        } else {
            arrayList.add(new ThemeDescription(null, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, Theme.key_windowBackgroundWhiteBlackText));
            arrayList.add(new ThemeDescription(null, ThemeDescription.FLAG_HINTTEXTCOLOR, null, null, null, null, Theme.key_windowBackgroundWhiteHintText));
        }
        if (this.radioCells != null) {
            for (int i6 = 0; i6 < this.radioCells.length; i6++) {
                arrayList.add(new ThemeDescription(this.radioCells[i6], ThemeDescription.FLAG_SELECTORWHITE, null, null, null, null, Theme.key_windowBackgroundWhite));
                arrayList.add(new ThemeDescription(this.radioCells[i6], ThemeDescription.FLAG_SELECTORWHITE, null, null, null, null, Theme.key_listSelector));
                arrayList.add(new ThemeDescription(this.radioCells[i6], 0, new Class[]{RadioCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlackText));
                arrayList.add(new ThemeDescription(this.radioCells[i6], ThemeDescription.FLAG_CHECKBOX, new Class[]{RadioCell.class}, new String[]{"radioButton"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_radioBackground));
                arrayList.add(new ThemeDescription(this.radioCells[i6], ThemeDescription.FLAG_CHECKBOXCHECK, new Class[]{RadioCell.class}, new String[]{"radioButton"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_radioBackgroundChecked));
            }
        } else {
            arrayList.add(new ThemeDescription((View) null, 0, new Class[]{RadioCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlackText));
            arrayList.add(new ThemeDescription((View) null, ThemeDescription.FLAG_CHECKBOX, new Class[]{RadioCell.class}, new String[]{"radioButton"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_radioBackground));
            arrayList.add(new ThemeDescription((View) null, ThemeDescription.FLAG_CHECKBOXCHECK, new Class[]{RadioCell.class}, new String[]{"radioButton"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_radioBackgroundChecked));
        }
        for (int i7 = 0; i7 < this.headerCell.length; i7++) {
            arrayList.add(new ThemeDescription(this.headerCell[i7], ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_windowBackgroundWhite));
            arrayList.add(new ThemeDescription(this.headerCell[i7], 0, new Class[]{HeaderCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlueHeader));
        }
        for (int i8 = 0; i8 < this.sectionCell.length; i8++) {
            arrayList.add(new ThemeDescription(this.sectionCell[i8], ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{ShadowSectionCell.class}, null, null, null, Theme.key_windowBackgroundGrayShadow));
        }
        for (int i9 = 0; i9 < this.bottomCell.length; i9++) {
            arrayList.add(new ThemeDescription(this.bottomCell[i9], ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{TextInfoPrivacyCell.class}, null, null, null, Theme.key_windowBackgroundGrayShadow));
            arrayList.add(new ThemeDescription(this.bottomCell[i9], 0, new Class[]{TextInfoPrivacyCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayText4));
            arrayList.add(new ThemeDescription(this.bottomCell[i9], ThemeDescription.FLAG_LINKCOLOR, new Class[]{TextInfoPrivacyCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteLinkText));
        }
        for (int i10 = 0; i10 < this.dividers.size(); i10++) {
            arrayList.add(new ThemeDescription(this.dividers.get(i10), ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_windowBackgroundWhite));
        }
        EditTextSettingsCell editTextSettingsCell = this.codeFieldCell;
        int i11 = ThemeDescription.FLAG_BACKGROUND;
        int i12 = Theme.key_windowBackgroundWhite;
        arrayList.add(new ThemeDescription(editTextSettingsCell, i11, null, null, null, null, i12));
        int i13 = Theme.key_windowBackgroundWhiteBlackText;
        arrayList.add(new ThemeDescription(this.codeFieldCell, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{EditTextSettingsCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i13));
        arrayList.add(new ThemeDescription(this.codeFieldCell, ThemeDescription.FLAG_HINTTEXTCOLOR, new Class[]{EditTextSettingsCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteHintText));
        arrayList.add(new ThemeDescription(this.textView, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, i13));
        arrayList.add(new ThemeDescription(this.checkCell1, 0, new Class[]{TextCheckCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i13));
        arrayList.add(new ThemeDescription(this.checkCell1, 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrack));
        arrayList.add(new ThemeDescription(this.checkCell1, 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackChecked));
        arrayList.add(new ThemeDescription(this.checkCell1, ThemeDescription.FLAG_SELECTORWHITE, null, null, null, null, i12));
        arrayList.add(new ThemeDescription(this.checkCell1, ThemeDescription.FLAG_SELECTORWHITE, null, null, null, null, Theme.key_listSelector));
        for (int i14 = 0; i14 < this.settingsCell.length; i14++) {
            arrayList.add(new ThemeDescription(this.settingsCell[i14], ThemeDescription.FLAG_SELECTORWHITE, null, null, null, null, Theme.key_windowBackgroundWhite));
            arrayList.add(new ThemeDescription(this.settingsCell[i14], ThemeDescription.FLAG_SELECTORWHITE, null, null, null, null, Theme.key_listSelector));
            arrayList.add(new ThemeDescription(this.settingsCell[i14], 0, new Class[]{TextSettingsCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlackText));
        }
        arrayList.add(new ThemeDescription(this.payTextView, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, Theme.key_windowBackgroundWhiteBlueText6));
        int i15 = Theme.key_windowBackgroundWhite;
        arrayList.add(new ThemeDescription(this.linearLayout2, ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{TextPriceCell.class}, null, null, null, i15));
        int i16 = Theme.key_windowBackgroundWhiteBlackText;
        arrayList.add(new ThemeDescription(this.linearLayout2, ThemeDescription.FLAG_CHECKTAG, new Class[]{TextPriceCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i16));
        arrayList.add(new ThemeDescription(this.linearLayout2, ThemeDescription.FLAG_CHECKTAG, new Class[]{TextPriceCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i16));
        int i17 = Theme.key_windowBackgroundWhiteGrayText2;
        arrayList.add(new ThemeDescription(this.linearLayout2, ThemeDescription.FLAG_CHECKTAG, new Class[]{TextPriceCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i17));
        arrayList.add(new ThemeDescription(this.linearLayout2, ThemeDescription.FLAG_CHECKTAG, new Class[]{TextPriceCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i17));
        arrayList.add(new ThemeDescription(this.detailSettingsCell[0], ThemeDescription.FLAG_SELECTORWHITE, null, null, null, null, i15));
        arrayList.add(new ThemeDescription(this.detailSettingsCell[0], ThemeDescription.FLAG_SELECTORWHITE, null, null, null, null, Theme.key_listSelector));
        for (int i18 = 1; i18 < this.detailSettingsCell.length; i18++) {
            arrayList.add(new ThemeDescription(this.detailSettingsCell[i18], ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_windowBackgroundWhite));
            arrayList.add(new ThemeDescription(this.detailSettingsCell[i18], 0, new Class[]{TextDetailSettingsCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlackText));
            arrayList.add(new ThemeDescription(this.detailSettingsCell[i18], 0, new Class[]{TextDetailSettingsCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayText2));
        }
        PaymentInfoCell paymentInfoCell = this.paymentInfoCell;
        int i19 = ThemeDescription.FLAG_BACKGROUND;
        int i20 = Theme.key_windowBackgroundWhite;
        arrayList.add(new ThemeDescription(paymentInfoCell, i19, null, null, null, null, i20));
        int i21 = Theme.key_windowBackgroundWhiteBlackText;
        arrayList.add(new ThemeDescription(this.paymentInfoCell, 0, new Class[]{PaymentInfoCell.class}, new String[]{"nameTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i21));
        arrayList.add(new ThemeDescription(this.paymentInfoCell, 0, new Class[]{PaymentInfoCell.class}, new String[]{"detailTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i21));
        arrayList.add(new ThemeDescription(this.paymentInfoCell, 0, new Class[]{PaymentInfoCell.class}, new String[]{"detailExTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayText2));
        arrayList.add(new ThemeDescription(this.bottomLayout, ThemeDescription.FLAG_SELECTORWHITE, null, null, null, null, i20));
        arrayList.add(new ThemeDescription(this.bottomLayout, ThemeDescription.FLAG_SELECTORWHITE, null, null, null, null, Theme.key_listSelector));
        return arrayList;
    }

    public class BottomFrameLayout extends FrameLayout {
        Paint paint;
        float progress;
        SpringAnimation springAnimation;

        public BottomFrameLayout(Context context, TLRPC.PaymentForm paymentForm) {
            super(context);
            this.paint = new Paint(1);
            setWillNotDraw(false);
        }

        @Override // android.view.View
        public void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            canvas.drawColor(PaymentFormActivity.this.getThemedColor(Theme.key_switchTrackBlue));
            this.paint.setColor(PaymentFormActivity.this.getThemedColor(Theme.key_contacts_inviteBackground));
            canvas.drawCircle(LocaleController.isRTL ? getWidth() - AndroidUtilities.dp(28.0f) : AndroidUtilities.dp(28.0f), -AndroidUtilities.dp(28.0f), Math.max(getWidth(), getHeight()) * this.progress, this.paint);
        }

        public void setChecked(boolean z, boolean z2) {
            SpringAnimation springAnimation = this.springAnimation;
            if (springAnimation != null) {
                springAnimation.cancel();
            }
            float f = z ? 1.0f : 0.0f;
            if (!z2) {
                this.progress = f;
                if (PaymentFormActivity.this.payTextView != null) {
                    PaymentFormActivity.this.payTextView.setAlpha((this.progress * 0.2f) + 0.8f);
                }
                invalidate();
                return;
            }
            if (this.progress == f) {
                return;
            }
            SpringAnimation spring = new SpringAnimation(new FloatValueHolder(this.progress * 100.0f)).setSpring(new SpringForce(f * 100.0f).setStiffness(z ? 500.0f : 650.0f).setDampingRatio(1.0f));
            this.springAnimation = spring;
            spring.addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() { // from class: org.telegram.ui.PaymentFormActivity$BottomFrameLayout$$ExternalSyntheticLambda0
                @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationUpdateListener
                public final void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f2, float f3) {
                    this.f$0.lambda$setChecked$0(dynamicAnimation, f2, f3);
                }
            });
            this.springAnimation.addEndListener(new DynamicAnimation.OnAnimationEndListener() { // from class: org.telegram.ui.PaymentFormActivity$BottomFrameLayout$$ExternalSyntheticLambda1
                @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationEndListener
                public final void onAnimationEnd(DynamicAnimation dynamicAnimation, boolean z3, float f2, float f3) {
                    this.f$0.lambda$setChecked$1(dynamicAnimation, z3, f2, f3);
                }
            });
            this.springAnimation.start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setChecked$0(DynamicAnimation dynamicAnimation, float f, float f2) {
            this.progress = f / 100.0f;
            if (PaymentFormActivity.this.payTextView != null) {
                PaymentFormActivity.this.payTextView.setAlpha((this.progress * 0.2f) + 0.8f);
            }
            invalidate();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setChecked$1(DynamicAnimation dynamicAnimation, boolean z, float f, float f2) {
            if (dynamicAnimation == this.springAnimation) {
                this.springAnimation = null;
            }
        }
    }
}
