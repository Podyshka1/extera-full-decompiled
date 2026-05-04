.class public Lorg/telegram/ui/PaymentFormActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;,
        Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;,
        Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy;,
        Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;,
        Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;,
        Lorg/telegram/ui/PaymentFormActivity$LinkSpan;
    }
.end annotation


# static fields
.field private static final BLACKLISTED_PROTOCOLS:Ljava/util/List;

.field private static final WEBVIEW_PROTOCOLS:Ljava/util/List;


# instance fields
.field private allowUnregistered:Z

.field private botUser:Lorg/telegram/tgnet/TLRPC$User;

.field private bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

.field private bottomLayout:Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;

.field private canceled:Z

.field private cardName:Ljava/lang/String;

.field private checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

.field private codeFieldCell:Lorg/telegram/ui/Cells/EditTextSettingsCell;

.field private codesMap:Ljava/util/HashMap;

.field private countriesArray:Ljava/util/ArrayList;

.field private countriesMap:Ljava/util/HashMap;

.field private country:Lorg/telegram/ui/CountrySelectActivity$Country;

.field private countryName:Ljava/lang/String;

.field private currentBotName:Ljava/lang/String;

.field private currentItemName:Ljava/lang/String;

.field private currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

.field private currentStep:I

.field private customErrorReceiver:Lorg/telegram/messenger/Utilities$CallbackReturn;

.field private customResultReceiver:Lorg/telegram/messenger/Utilities$Callback;

.field private delegate:Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;

.field private detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

.field private dividers:Ljava/util/ArrayList;

.field private doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private doneItemAnimation:Landroid/animation/AnimatorSet;

.field private donePressed:Z

.field private emailCodeLength:I

.field private googlePayButton:Landroid/widget/FrameLayout;

.field private googlePayContainer:Landroid/widget/FrameLayout;

.field private googlePayCountryCode:Ljava/lang/String;

.field private googlePayCredentials:Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;

.field private googlePayParameters:Lorg/json/JSONObject;

.field private googlePayPublicKey:Ljava/lang/String;

.field private headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

.field private ignoreOnCardChange:Z

.field private ignoreOnPhoneChange:Z

.field private ignoreOnTextChange:Z

.field private initGooglePay:Z

.field private inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

.field private invoiceInput:Lorg/telegram/tgnet/TLRPC$InputInvoice;

.field private invoiceSlug:Ljava/lang/String;

.field private invoiceStatus:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

.field private isCheckoutPreview:Z

.field private isWebView:Z

.field private linearLayout2:Landroid/widget/LinearLayout;

.field private loadingPasswordInfo:Z

.field private messageObject:Lorg/telegram/messenger/MessageObject;

.field private needPayAfterTransition:Z

.field private need_card_country:Z

.field private need_card_name:Z

.field private need_card_postcode:Z

.field private parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private passwordFragment:Lorg/telegram/ui/PaymentFormActivity;

.field private passwordOk:Z

.field private payTextView:Landroid/widget/TextView;

.field private paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

.field private paymentFormCallback:Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;

.field private paymentFormMethod:Lorg/telegram/tgnet/TLRPC$TL_paymentFormMethod;

.field private paymentInfoCell:Lorg/telegram/ui/Cells/PaymentInfoCell;

.field private paymentJson:Ljava/lang/String;

.field private paymentReceipt:Lorg/telegram/tgnet/TLRPC$PaymentReceipt;

.field private paymentStatusSent:Z

.field private paymentsClient:Lcom/google/android/gms/wallet/PaymentsClient;

.field private phoneFormatMap:Ljava/util/HashMap;

.field private prices:Ljava/util/ArrayList;

.field private progressView:Lorg/telegram/ui/Components/ContextProgressView;

.field private progressViewButton:Lorg/telegram/ui/Components/ContextProgressView;

.field private providerApiKey:Ljava/lang/String;

.field private radioCells:[Lorg/telegram/ui/Cells/RadioCell;

.field private recurrentAcceptCell:Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;

.field private recurrentAccepted:Z

.field private requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private saveCardInfo:Z

.field private saveShippingInfo:Z

.field private savedCredentialsCard:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

.field private scrollView:Landroid/widget/ScrollView;

.field private sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

.field private settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

.field private shiftDp:F

.field private shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

.field private shortPollRunnable:Ljava/lang/Runnable;

.field private shouldNavigateBack:Z

.field private swipeBackEnabled:Z

.field private textView:Landroid/widget/TextView;

.field private tipAmount:Ljava/lang/Long;

.field private tipLayout:Landroid/widget/LinearLayout;

.field private totalCell:Lorg/telegram/ui/Cells/TextPriceCell;

.field private totalPrice:[Ljava/lang/String;

.field private totalPriceDecimal:Ljava/lang/String;

.field private validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

.field private waitingForEmail:Z

.field private webView:Landroid/webkit/WebView;

.field private webViewUrl:Ljava/lang/String;

.field private webviewLoading:Z


# direct methods
.method public static synthetic $r8$lambda$-n8ObnsWdeFAzl5V43M-Atxv73w(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$1VftdLZyzFbjjgNBN5avbTNWmL0(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->lambda$sendForm$53(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3-G1LCgf_w57RVwNJWe7l0yufOU(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PaymentFormActivity;->lambda$loadPasswordInfo$34(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$47E0KClHybHi_atqsj-_WoQ4DdA(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/ui/Components/Bulletin;Z[Lorg/telegram/tgnet/TLRPC$Message;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/PaymentFormActivity;->lambda$sendData$59(Lorg/telegram/ui/Components/Bulletin;Z[Lorg/telegram/tgnet/TLRPC$Message;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4JokoYWywPtEE8HLbzHLZz20mHs(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PaymentFormActivity;->lambda$createView$22(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$5VPLG1d-sp7HD8Wa5NxCy1xPsiQ(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PaymentFormActivity;->lambda$createView$23(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5nvyAjxqbyNiRynvE2VTH7aufaA(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PaymentFormActivity;->lambda$sendSavePassword$42(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$88mc2wptY_uSbH6eXINp15iZgf8(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PaymentFormActivity;->lambda$sendData$58(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8_TJ_HnIyI5xA7QMT9GL3jvVxUQ(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/tgnet/tl/TL_account$getPassword;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/PaymentFormActivity;->lambda$checkPassword$73(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/tgnet/tl/TL_account$getPassword;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8ub0Ybh2v8zxYqiZelgBFpUaEJ4(Lorg/telegram/ui/PaymentFormActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->lambda$createView$13(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$A8uX3X2mRmzD4TLQ5BgXvTuWQf4(Lorg/telegram/ui/PaymentFormActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->lambda$createView$21(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$B6tPZwyts6K-U1eZyWg3ocnYOv0(Lorg/telegram/ui/PaymentFormActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PaymentFormActivity;->lambda$createView$1(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$C3qxmrCHzS0gfzsY2zzJ5QHH8ho(J)V
    .locals 1

    .line 4392
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4394
    invoke-static {p0, p1}, Lorg/telegram/ui/ChatActivity;->of(J)Lorg/telegram/ui/ChatActivity;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$Cr3lrjpS800AZh8Fx60gqzeCY7s(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/ui/CountrySelectActivity$Country;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->lambda$createView$5(Lorg/telegram/ui/CountrySelectActivity$Country;)V

    return-void
.end method

.method public static synthetic $r8$lambda$F4Bikb8GRgqWg40OsUcJ8yMw344(Lorg/telegram/ui/PaymentFormActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->lambda$createView$20(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$G603tuk-zOtRBJy13FsRtJkfGdA(Lorg/telegram/ui/PaymentFormActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->lambda$createView$24(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$I9BiOgtQ0f7PhNUVLJ2WBrurq4c(Lorg/telegram/ui/PaymentFormActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->lambda$createView$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$J0DrDFG_ByIOcpwnk9x4PtnSkl4(Lorg/telegram/ui/PaymentFormActivity;Landroid/widget/TextView;JLandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/PaymentFormActivity;->lambda$createView$15(Landroid/widget/TextView;JLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JcuAQ4fwZ6rXvkIoKESTap-ERKU(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/ui/Components/Bulletin;ZLorg/telegram/tgnet/TLRPC$Message;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/PaymentFormActivity;->lambda$sendData$64(Lorg/telegram/ui/Components/Bulletin;ZLorg/telegram/tgnet/TLRPC$Message;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Jox2wIxMQRbDPHDEhXoq3tBFVio(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/tl/TL_account$getTmpPassword;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PaymentFormActivity;->lambda$checkPassword$70(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/tl/TL_account$getTmpPassword;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LJ7taWewZmyobC2bDo5KjRl87mk(Lorg/telegram/ui/PaymentFormActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->lambda$createView$9(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LNd7Piq_e1HQLD4H8r-26M1v8Bg(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->lambda$sendSavePassword$41(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Lai7ru93IFq_rGOPdiYzN4MqkaA(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/ui/ActionBar/INavigationLayout;Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$Message;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PaymentFormActivity;->lambda$sendData$66(Lorg/telegram/ui/ActionBar/INavigationLayout;Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$MdrtzY6bufXsYZvHOsyBFcWm1N4(Lorg/telegram/ui/PaymentFormActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->lambda$createView$17(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$N5EBCheEeuvSVEmlqehvGd50Iaw(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$NZu8tC-Gi6yRkUUEZmVf7KVyuXU(Lorg/telegram/ui/PaymentFormActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->lambda$createView$16(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OxfEZRoQkOdtQIfy7WJ9_mLP5UY(Lorg/telegram/ui/PaymentFormActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->lambda$createView$18(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SHBL6KOK5prvVWnq1q6SuEDzde4(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->lambda$sendData$62(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$T_gry006pOxQ3kuWcEy47Tm1JI8(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_error;ZLorg/telegram/tgnet/TLObject;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/PaymentFormActivity;->lambda$sendSavePassword$46(Lorg/telegram/tgnet/TLRPC$TL_error;ZLorg/telegram/tgnet/TLObject;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Tm2gprLVvpaoWs5sonNrlU9ctP0(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/String;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PaymentFormActivity;->lambda$sendSavePassword$45(Ljava/lang/String;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$VGB-Rr_CANqzPH5TfhoWHErZCuk(Lorg/telegram/ui/PaymentFormActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->lambda$createView$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VnQCGqea5Gnhrzdim4zwTwUsbEM(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PaymentFormActivity;->lambda$sendSavedForm$50(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WFJ9oQIhTIQj9AUn47_VNPmd3Xo(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PaymentFormActivity;->lambda$loadPasswordInfo$35(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WVKpca5FJRb7BxJqgicrWmxHNfI(Lorg/telegram/ui/PaymentFormActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->lambda$onTransitionAnimationEnd$38()V

    return-void
.end method

.method public static synthetic $r8$lambda$WuBwMaT3TPfTtFhfs8FC6Mal3QU(Lorg/telegram/ui/PaymentFormActivity;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PaymentFormActivity;->lambda$sendSavePassword$44(ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z-VZ9CEe8DIe8empyawDg0Woe8w(Lorg/telegram/ui/PaymentFormActivity;ILandroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PaymentFormActivity;->lambda$onActivityResultFragment$39(ILandroid/content/Intent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZJ8iWvU0Atoc4gtD3s7p9mjG9tk(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PaymentFormActivity;->lambda$sendSavePassword$43(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZwxLWeRkeD62yJ8Gykbml7RGJkY(J)V
    .locals 1

    .line 4293
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4295
    invoke-static {p0, p1}, Lorg/telegram/ui/ChatActivity;->of(J)Lorg/telegram/ui/ChatActivity;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$_3okfJ_QcSlzkNMX4WlaQcJCYi0(Lorg/telegram/ui/PaymentFormActivity;[Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->lambda$sendData$60([Lorg/telegram/tgnet/TLRPC$Message;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aZpM07rqWUhVvQZQBp7WAWLKvgs(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PaymentFormActivity;->lambda$sendData$63(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$apyIbfzHBBXFM4_uOGe60OIWP4s(Lorg/telegram/ui/PaymentFormActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->lambda$createView$29(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$b-AwhPlFNRamlaZQ996Mbg3zCf8(Lorg/telegram/ui/PaymentFormActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PaymentFormActivity;->lambda$createView$25(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$bFME_NWAgNo3QhUz3anuQUMCjGc(Lorg/telegram/ui/PaymentFormActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->lambda$createView$19(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$clhnAHlXXZFdI73xM_L4Kll3auY(Lorg/telegram/ui/PaymentFormActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->lambda$createView$27(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cyLex0ax2prHtsRyCNwZ6bdh4jk(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PaymentFormActivity;->lambda$createView$28(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$dN1mvTitdcpNgn5Y0wMJakwA52s(Lorg/telegram/ui/PaymentFormActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->lambda$createView$12(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$d_V4HpOfHigP7g1TgU8SCz0Dnns(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PaymentFormActivity;->lambda$sendData$68(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fgzM2hD_dT_iF2yKuddTwXjYG4w(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PaymentFormActivity;->lambda$showPayAlert$36(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$hRmY-Kvxh7hNca5ChI1jb7qIyMs(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/ui/CountrySelectActivity$Country;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->lambda$createView$0(Lorg/telegram/ui/CountrySelectActivity$Country;)V

    return-void
.end method

.method public static synthetic $r8$lambda$i6n6m4gigVRkI-BgRvo1PRIo8Q8(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->lambda$sendData$67(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jEU67ttzYTlmU6-fhmv81JV4pnw(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PaymentFormActivity;->lambda$sendForm$54(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ksfvNJeWpbgE9PHgJ6QRS1Eekaw(Lorg/telegram/ui/PaymentFormActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->goToNextStep()V

    return-void
.end method

.method public static synthetic $r8$lambda$lIZL8gSeoPB8ovwMarAUTpkAoig(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/ui/ActionBar/INavigationLayout;Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PaymentFormActivity;->lambda$sendData$65(Lorg/telegram/ui/ActionBar/INavigationLayout;Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$Message;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lq9LWx85ffust2Y_olLL_Z-tadc(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1847
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$mCxyPUxEj2Az_K5txtnRdQl75WI(Lorg/telegram/ui/PaymentFormActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PaymentFormActivity;->lambda$createView$2(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$m_E6UemCD2jSJbZACbnkSi7OV54(Lorg/telegram/ui/PaymentFormActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PaymentFormActivity;->lambda$createView$11(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$mtR83BqOEeNRvywAqqn65S_NasI(Lorg/telegram/ui/PaymentFormActivity;ZLjava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/PaymentFormActivity;->lambda$sendSavePassword$47(ZLjava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nGGe2IILBWdlE8E7KvRHslcDZGI(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PaymentFormActivity;->lambda$sendForm$55(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nrP14jyiyBmj4Z21jffRLgudr4c(Lorg/telegram/ui/PaymentFormActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->lambda$createView$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oEE4sF270DCXotD2MFbyjcteTwI(Lorg/telegram/ui/PaymentFormActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->lambda$loadPasswordInfo$33()V

    return-void
.end method

.method public static synthetic $r8$lambda$phzUXWgSCUGbub-kcGe8rCQtca0(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/PaymentFormActivity;->lambda$sendSavedForm$51(Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qB42dO2zsLKDVVNpqFZbZuqEBmg(Lorg/telegram/ui/PaymentFormActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PaymentFormActivity;->lambda$createView$7(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$qRwVeNJPG5n6D7rwP85s4F4yn9Y(Lorg/telegram/ui/PaymentFormActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->lambda$createGooglePayButton$32(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rEqECLjzvu5gdDSrjwrhtb6A3kY(Lorg/telegram/ui/PaymentFormActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PaymentFormActivity;->lambda$createView$30(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$s8YOD6CUTY-0phCdj5SVAugjUN0(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PaymentFormActivity;->lambda$sendSavedForm$49(Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tUuiFqz04HejTHYR0rl9A18lFqc(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->lambda$sendData$57(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tbvD8WJ9lc3vE4ZzSZQqEQCyNEU(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/String;Lorg/telegram/tgnet/tl/TL_account$getPassword;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/PaymentFormActivity;->lambda$checkPassword$74(Ljava/lang/String;Lorg/telegram/tgnet/tl/TL_account$getPassword;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$twxww_K7r_wLtF8pcrVN4TZOQQk(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p2, 0x6

    if-ne p1, p2, :cond_0

    .line 2089
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$uU5v0loIvCAs-oQyjF1EBEJie6E(Lorg/telegram/ui/PaymentFormActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PaymentFormActivity;->lambda$createView$6(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$uZfDTN7MY2yu_obYyN1S4RFH1ic(Lorg/telegram/ui/PaymentFormActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->lambda$goToNextStep$40()V

    return-void
.end method

.method public static synthetic $r8$lambda$v42I-aoxCvXwQpVbT4TNF_wL_Uo(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/tl/TL_account$getTmpPassword;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PaymentFormActivity;->lambda$checkPassword$71(Lorg/telegram/tgnet/tl/TL_account$getTmpPassword;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vnj2n34tZAK-S_0oPwIRPeWySFI(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/Runnable;Ljava/util/List;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/PaymentFormActivity;->lambda$showChoosePaymentMethod$31(Ljava/lang/Runnable;Ljava/util/List;Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$xBOhHUxu_l_d2VC5wh1uFnGz61g(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/tl/TL_account$Password;[B)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PaymentFormActivity;->lambda$checkPassword$72(Lorg/telegram/tgnet/tl/TL_account$Password;[B)V

    return-void
.end method

.method public static synthetic $r8$lambda$xy60vNErIFjopNQ1OiXM_YwS-BM(Lorg/telegram/ui/PaymentFormActivity;ZLjava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/tl/TL_account$updatePasswordSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/PaymentFormActivity;->lambda$sendSavePassword$48(ZLjava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/tl/TL_account$updatePasswordSettings;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y6Fucx86E72GVsYFlQXRrz9LVzE(Lorg/telegram/ui/PaymentFormActivity;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->lambda$initGooglePay$37(Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zehGHevpiWJL8hlVWSE6vxEROhQ(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PaymentFormActivity;->lambda$sendData$69(Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetcanceled(Lorg/telegram/ui/PaymentFormActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/PaymentFormActivity;->canceled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcardName(Lorg/telegram/ui/PaymentFormActivity;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcodesMap(Lorg/telegram/ui/PaymentFormActivity;)Ljava/util/HashMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->codesMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcountriesArray(Lorg/telegram/ui/PaymentFormActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->countriesArray:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcountry(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/ui/CountrySelectActivity$Country;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->country:Lorg/telegram/ui/CountrySelectActivity$Country;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentBotName(Lorg/telegram/ui/PaymentFormActivity;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->currentBotName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentPassword(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/tgnet/tl/TL_account$Password;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentStep(Lorg/telegram/ui/PaymentFormActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdelegate(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->delegate:Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdetailSettingsCell(Lorg/telegram/ui/PaymentFormActivity;)[Lorg/telegram/ui/Cells/TextDetailSettingsCell;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdoneItem(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdoneItemAnimation(Lorg/telegram/ui/PaymentFormActivity;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdonePressed(Lorg/telegram/ui/PaymentFormActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/PaymentFormActivity;->donePressed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetemailCodeLength(Lorg/telegram/ui/PaymentFormActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/PaymentFormActivity;->emailCodeLength:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetgooglePayParameters(Lorg/telegram/ui/PaymentFormActivity;)Lorg/json/JSONObject;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayParameters:Lorg/json/JSONObject;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetgooglePayPublicKey(Lorg/telegram/ui/PaymentFormActivity;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayPublicKey:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetignoreOnCardChange(Lorg/telegram/ui/PaymentFormActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/PaymentFormActivity;->ignoreOnCardChange:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetignoreOnPhoneChange(Lorg/telegram/ui/PaymentFormActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/PaymentFormActivity;->ignoreOnPhoneChange:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetignoreOnTextChange(Lorg/telegram/ui/PaymentFormActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/PaymentFormActivity;->ignoreOnTextChange:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetinputFields(Lorg/telegram/ui/PaymentFormActivity;)[Lorg/telegram/ui/Components/EditTextBoldCursor;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisWebView(Lorg/telegram/ui/PaymentFormActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/PaymentFormActivity;->isWebView:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetneed_card_name(Lorg/telegram/ui/PaymentFormActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/PaymentFormActivity;->need_card_name:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpayTextView(Lorg/telegram/ui/PaymentFormActivity;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpaymentForm(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/tgnet/TLRPC$PaymentForm;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetphoneFormatMap(Lorg/telegram/ui/PaymentFormActivity;)Ljava/util/HashMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->phoneFormatMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetprogressView(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/ui/Components/ContextProgressView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetprogressViewButton(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/ui/Components/ContextProgressView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->progressViewButton:Lorg/telegram/ui/Components/ContextProgressView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetproviderApiKey(Lorg/telegram/ui/PaymentFormActivity;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->providerApiKey:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetradioCells(Lorg/telegram/ui/PaymentFormActivity;)[Lorg/telegram/ui/Cells/RadioCell;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrequestedInfo(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetresourcesProvider(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettipAmount(Lorg/telegram/ui/PaymentFormActivity;)Ljava/lang/Long;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->tipAmount:Ljava/lang/Long;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetvalidateRequest(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwebViewUrl(Lorg/telegram/ui/PaymentFormActivity;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->webViewUrl:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputcardName(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcurrentPassword(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/tl/TL_account$Password;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputdoneItemAnimation(Lorg/telegram/ui/PaymentFormActivity;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputgooglePayCredentials(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayCredentials:Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputignoreOnCardChange(Lorg/telegram/ui/PaymentFormActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->ignoreOnCardChange:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputignoreOnPhoneChange(Lorg/telegram/ui/PaymentFormActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->ignoreOnPhoneChange:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputignoreOnTextChange(Lorg/telegram/ui/PaymentFormActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->ignoreOnTextChange:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpasswordFragment(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/ui/PaymentFormActivity;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->passwordFragment:Lorg/telegram/ui/PaymentFormActivity;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpaymentJson(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentJson:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsaveCardInfo(Lorg/telegram/ui/PaymentFormActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsavedCredentialsCard(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->savedCredentialsCard:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputshippingOption(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputshouldNavigateBack(Lorg/telegram/ui/PaymentFormActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->shouldNavigateBack:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtipAmount(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/Long;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->tipAmount:Ljava/lang/Long;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputvalidateRequest(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputwebviewLoading(Lorg/telegram/ui/PaymentFormActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->webviewLoading:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckPassword(Lorg/telegram/ui/PaymentFormActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->checkPassword()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgoToNextStep(Lorg/telegram/ui/PaymentFormActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->goToNextStep()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendCardData(Lorg/telegram/ui/PaymentFormActivity;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->sendCardData()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msendForm(Lorg/telegram/ui/PaymentFormActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->sendForm()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendSavePassword(Lorg/telegram/ui/PaymentFormActivity;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->sendSavePassword(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetAddressFields(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->setAddressFields(Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetDonePressed(Lorg/telegram/ui/PaymentFormActivity;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->setDonePressed(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowEditDoneProgress(Lorg/telegram/ui/PaymentFormActivity;ZZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSavePaymentField(Lorg/telegram/ui/PaymentFormActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->updateSavePaymentField()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateTotalPrice(Lorg/telegram/ui/PaymentFormActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->updateTotalPrice()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetBLACKLISTED_PROTOCOLS()Ljava/util/List;
    .locals 1

    .line 0
    sget-object v0, Lorg/telegram/ui/PaymentFormActivity;->BLACKLISTED_PROTOCOLS:Ljava/util/List;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetWEBVIEW_PROTOCOLS()Ljava/util/List;
    .locals 1

    .line 0
    sget-object v0, Lorg/telegram/ui/PaymentFormActivity;->WEBVIEW_PROTOCOLS:Ljava/util/List;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smgetResponseBody(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/PaymentFormActivity;->getResponseBody(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 170
    const-string v0, "http"

    const-string v1, "https"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/PaymentFormActivity;->WEBVIEW_PROTOCOLS:Ljava/util/List;

    .line 174
    const-string v0, "tg"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/PaymentFormActivity;->BLACKLISTED_PROTOCOLS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lorg/telegram/tgnet/TLRPC$InputInvoice;Lorg/telegram/tgnet/TLRPC$PaymentForm;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V
    .locals 2

    .line 477
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->countriesArray:Ljava/util/ArrayList;

    .line 216
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->countriesMap:Ljava/util/HashMap;

    .line 217
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->codesMap:Ljava/util/HashMap;

    .line 218
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->phoneFormatMap:Ljava/util/HashMap;

    const/4 v0, 0x1

    .line 235
    iput-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->swipeBackEnabled:Z

    const/4 v0, 0x3

    .line 238
    new-array v1, v0, [Lorg/telegram/ui/Cells/HeaderCell;

    iput-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    .line 239
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->dividers:Ljava/util/ArrayList;

    .line 240
    new-array v1, v0, [Lorg/telegram/ui/Cells/ShadowSectionCell;

    iput-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    .line 242
    new-array v0, v0, [Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v0, 0x2

    .line 243
    new-array v0, v0, [Lorg/telegram/ui/Cells/TextSettingsCell;

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    const/4 v0, 0x7

    .line 257
    new-array v0, v0, [Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/high16 v0, -0x3f700000    # -4.5f

    .line 259
    iput v0, p0, Lorg/telegram/ui/PaymentFormActivity;->shiftDp:F

    const/4 v0, 0x6

    .line 263
    iput v0, p0, Lorg/telegram/ui/PaymentFormActivity;->emailCodeLength:I

    .line 478
    invoke-direct/range {p0 .. p15}, Lorg/telegram/ui/PaymentFormActivity;->init(Lorg/telegram/tgnet/TLRPC$InputInvoice;Lorg/telegram/tgnet/TLRPC$PaymentForm;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$PaymentForm;Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    const/4 v0, 0x0

    .line 439
    invoke-direct {p0, p1, v0, p2, p3}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$PaymentForm;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$PaymentForm;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 16

    move-object/from16 v0, p0

    .line 456
    invoke-direct {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 215
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->countriesArray:Ljava/util/ArrayList;

    .line 216
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->countriesMap:Ljava/util/HashMap;

    .line 217
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->codesMap:Ljava/util/HashMap;

    .line 218
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->phoneFormatMap:Ljava/util/HashMap;

    const/4 v1, 0x1

    .line 235
    iput-boolean v1, v0, Lorg/telegram/ui/PaymentFormActivity;->swipeBackEnabled:Z

    const/4 v2, 0x3

    .line 238
    new-array v3, v2, [Lorg/telegram/ui/Cells/HeaderCell;

    iput-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    .line 239
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->dividers:Ljava/util/ArrayList;

    .line 240
    new-array v3, v2, [Lorg/telegram/ui/Cells/ShadowSectionCell;

    iput-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    .line 242
    new-array v2, v2, [Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iput-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v2, 0x2

    .line 243
    new-array v2, v2, [Lorg/telegram/ui/Cells/TextSettingsCell;

    iput-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    const/4 v2, 0x7

    .line 257
    new-array v2, v2, [Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    iput-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/high16 v2, -0x3f700000    # -4.5f

    .line 259
    iput v2, v0, Lorg/telegram/ui/PaymentFormActivity;->shiftDp:F

    const/4 v2, 0x6

    .line 263
    iput v2, v0, Lorg/telegram/ui/PaymentFormActivity;->emailCodeLength:I

    .line 457
    iput-boolean v1, v0, Lorg/telegram/ui/PaymentFormActivity;->isCheckoutPreview:Z

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v14, p4

    .line 458
    invoke-direct/range {v0 .. v15}, Lorg/telegram/ui/PaymentFormActivity;->init(Lorg/telegram/tgnet/TLRPC$InputInvoice;Lorg/telegram/tgnet/TLRPC$PaymentForm;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$PaymentForm;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    const/4 v0, 0x0

    .line 453
    invoke-direct {p0, p1, p2, v0, p3}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$PaymentForm;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$PaymentForm;Lorg/telegram/tgnet/TLRPC$InputInvoice;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 16

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v1, p2

    move-object/from16 v14, p3

    .line 443
    invoke-direct/range {v0 .. v15}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$InputInvoice;Lorg/telegram/tgnet/TLRPC$PaymentForm;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    const/4 v0, 0x1

    move-object/from16 v1, p0

    .line 444
    iput-boolean v0, v1, Lorg/telegram/ui/PaymentFormActivity;->isCheckoutPreview:Z

    return-void
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$PaymentReceipt;)V
    .locals 4

    .line 402
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->countriesArray:Ljava/util/ArrayList;

    .line 216
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->countriesMap:Ljava/util/HashMap;

    .line 217
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->codesMap:Ljava/util/HashMap;

    .line 218
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->phoneFormatMap:Ljava/util/HashMap;

    const/4 v0, 0x1

    .line 235
    iput-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->swipeBackEnabled:Z

    const/4 v0, 0x3

    .line 238
    new-array v1, v0, [Lorg/telegram/ui/Cells/HeaderCell;

    iput-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    .line 239
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->dividers:Ljava/util/ArrayList;

    .line 240
    new-array v1, v0, [Lorg/telegram/ui/Cells/ShadowSectionCell;

    iput-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    .line 242
    new-array v0, v0, [Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v0, 0x2

    .line 243
    new-array v0, v0, [Lorg/telegram/ui/Cells/TextSettingsCell;

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    const/4 v0, 0x7

    .line 257
    new-array v0, v0, [Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/high16 v0, -0x3f700000    # -4.5f

    .line 259
    iput v0, p0, Lorg/telegram/ui/PaymentFormActivity;->shiftDp:F

    const/4 v0, 0x6

    .line 263
    iput v0, p0, Lorg/telegram/ui/PaymentFormActivity;->emailCodeLength:I

    const/4 v0, 0x5

    .line 403
    iput v0, p0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    .line 404
    new-instance v0, Lorg/telegram/tgnet/TLRPC$PaymentForm;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$PaymentForm;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    .line 405
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentReceipt:Lorg/telegram/tgnet/TLRPC$PaymentReceipt;

    .line 406
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;->bot_id:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->bot_id:J

    .line 407
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    .line 408
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;->provider_id:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->provider_id:J

    .line 409
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;->users:Ljava/util/ArrayList;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->users:Ljava/util/ArrayList;

    .line 410
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;->shipping:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    .line 411
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;->tip_amount:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 412
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->tipAmount:Ljava/lang/Long;

    .line 414
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;->bot_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_1

    .line 416
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->currentBotName:Ljava/lang/String;

    goto :goto_0

    .line 418
    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->currentBotName:Ljava/lang/String;

    .line 420
    :goto_0
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;->title:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->currentItemName:Ljava/lang/String;

    .line 421
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-eqz v0, :cond_3

    .line 422
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    .line 424
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_2

    .line 425
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceMessage;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceMessage;-><init>()V

    .line 426
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;->bot_id:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceMessage;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 427
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->invoice:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    goto :goto_1

    .line 429
    :cond_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;-><init>()V

    .line 430
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->invoiceSlug:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;->slug:Ljava/lang/String;

    .line 431
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->invoice:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    .line 433
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    .line 435
    :cond_3
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;->credentials_title:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/PaymentFormActivity;)I
    .locals 0

    .line 169
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method private checkPassword()V
    .locals 6

    .line 4528
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/tl/TL_account$tmpPassword;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4529
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/tl/TL_account$tmpPassword;

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_account$tmpPassword;->valid_until:I

    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    add-int/lit8 v2, v2, 0x3c

    if-ge v0, v2, :cond_0

    .line 4530
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    const/4 v2, 0x0

    iput-object v2, v0, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/tl/TL_account$tmpPassword;

    .line 4531
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 4534
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/tl/TL_account$tmpPassword;

    if-eqz v0, :cond_1

    .line 4535
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->sendData()V

    return-void

    .line 4538
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    const/4 v3, 0x2

    if-nez v0, :cond_2

    .line 4540
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v2

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4542
    :catch_0
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v2

    const/high16 v1, 0x40200000    # 2.5f

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    return-void

    .line 4545
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4546
    invoke-direct {p0, v2, v2}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    .line 4547
    invoke-direct {p0, v2}, Lorg/telegram/ui/PaymentFormActivity;->setDonePressed(Z)V

    .line 4548
    new-instance v2, Lorg/telegram/tgnet/tl/TL_account$getPassword;

    invoke-direct {v2}, Lorg/telegram/tgnet/tl/TL_account$getPassword;-><init>()V

    .line 4549
    iget v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda50;

    invoke-direct {v5, p0, v0, v2}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda50;-><init>(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/String;Lorg/telegram/tgnet/tl/TL_account$getPassword;)V

    .line 4617
    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->allowUnregistered:Z

    if-eqz v0, :cond_3

    const/16 v1, 0x8

    :cond_3
    or-int/lit8 v0, v1, 0x2

    .line 4549
    invoke-virtual {v4, v2, v5, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method private createGooglePayButton(Landroid/content/Context;)V
    .locals 7

    .line 2925
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    .line 2926
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2927
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayContainer:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2929
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayButton:Landroid/widget/FrameLayout;

    .line 2930
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 2931
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayButton:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 2932
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayButton:Landroid/widget/FrameLayout;

    sget v2, Lorg/telegram/messenger/R$drawable;->googlepay_button_no_shadow_background:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2933
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayPublicKey:Ljava/lang/String;

    const/high16 v2, 0x40000000    # 2.0f

    if-nez v0, :cond_0

    .line 2934
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayButton:Landroid/widget/FrameLayout;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v0, v4, v5, v3, v6}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 2936
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayButton:Landroid/widget/FrameLayout;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 2938
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayContainer:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayButton:Landroid/widget/FrameLayout;

    const/high16 v4, 0x42400000    # 48.0f

    const/4 v5, -0x1

    invoke-static {v5, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2939
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayButton:Landroid/widget/FrameLayout;

    new-instance v3, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda38;

    invoke-direct {v3, p0}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda38;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3004
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 3005
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    const/16 v2, 0x10

    .line 3006
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 3007
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 3008
    invoke-virtual {v0, v1}, Landroid/view/View;->setDuplicateParentStateEnabled(Z)V

    .line 3009
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayButton:Landroid/widget/FrameLayout;

    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {v5, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3011
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 3012
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 3013
    invoke-virtual {v2, v1}, Landroid/view/View;->setDuplicateParentStateEnabled(Z)V

    .line 3014
    sget v4, Lorg/telegram/messenger/R$drawable;->buy_with_googlepay_button_content:I

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v4, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 3015
    invoke-static {v5, v4, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3017
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 3018
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 3019
    invoke-virtual {v0, v1}, Landroid/view/View;->setDuplicateParentStateEnabled(Z)V

    .line 3020
    sget p1, Lorg/telegram/messenger/R$drawable;->googlepay_button_overlay:I

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3021
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayButton:Landroid/widget/FrameLayout;

    invoke-static {v5, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private getBaseCardPaymentMethod()Lorg/json/JSONObject;
    .locals 5

    .line 3148
    const-string v0, "MASTERCARD"

    const-string v1, "VISA"

    const-string v2, "AMEX"

    const-string v3, "DISCOVER"

    const-string v4, "JCB"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 3155
    const-string v1, "PAN_ONLY"

    const-string v2, "CRYPTOGRAM_3DS"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 3159
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 3160
    const-string v3, "type"

    const-string v4, "CARD"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3162
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 3163
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string v1, "allowedAuthMethods"

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3164
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string v0, "allowedCardNetworks"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3166
    const-string v0, "parameters"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v2
.end method

.method private getBaseRequest()Lorg/json/JSONObject;
    .locals 3

    .line 3144
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "apiVersion"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "apiVersionMinor"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private static getResponseBody(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2

    .line 4028
    new-instance v0, Ljava/util/Scanner;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string v1, "\\A"

    .line 4029
    invoke-virtual {v0, v1}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v0

    .line 4030
    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0

    .line 4031
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object v0
.end method

.method private getStars()J
    .locals 2

    .line 4471
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->invoiceInput:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStars;

    if-eqz v1, :cond_2

    .line 4472
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStars;

    .line 4473
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStars;->purpose:Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;

    .line 4474
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGift;

    if-eqz v1, :cond_0

    .line 4475
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGift;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGift;->stars:J

    return-wide v0

    .line 4476
    :cond_0
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsTopup;

    if-eqz v1, :cond_1

    .line 4477
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsTopup;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsTopup;->stars:J

    return-wide v0

    .line 4478
    :cond_1
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;

    if-eqz v1, :cond_2

    .line 4479
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->stars:J

    return-wide v0

    :cond_2
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private getStarsGiftUserId()J
    .locals 2

    .line 4486
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->invoiceInput:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStars;

    if-eqz v1, :cond_1

    .line 4487
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStars;

    .line 4488
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStars;->purpose:Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;

    .line 4489
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGift;

    if-eqz v1, :cond_0

    .line 4490
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGift;

    .line 4491
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGift;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    if-eqz v0, :cond_1

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$InputUser;->user_id:J

    return-wide v0

    .line 4492
    :cond_0
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;

    if-eqz v1, :cond_1

    .line 4493
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;

    .line 4494
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->boost_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$InputPeer;)J

    move-result-wide v0

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private getTotalPriceDecimalString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 6

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move v3, v2

    .line 3228
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 3229
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;->amount:J

    add-long/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3231
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p1

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_invoice;->currency:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v3, v2}, Lorg/telegram/messenger/LocaleController;->formatCurrencyDecimalString(JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getTotalPriceString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 3217
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 3218
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;->amount:J

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3220
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->tipAmount:Ljava/lang/Long;

    if-eqz p1, :cond_1

    .line 3221
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 3223
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p1

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_invoice;->currency:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatCurrencyString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private goToNextStep()V
    .locals 25

    move-object/from16 v0, p0

    .line 3423
    iget v1, v0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x2

    if-eqz v1, :cond_12

    if-eq v1, v5, :cond_b

    if-eq v1, v7, :cond_8

    if-eq v1, v4, :cond_6

    if-eq v1, v6, :cond_2

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    goto/16 :goto_0

    .line 3552
    :cond_0
    iget-object v6, v0, Lorg/telegram/ui/PaymentFormActivity;->delegate:Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;

    iget-object v7, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentJson:Ljava/lang/String;

    iget-object v8, v0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    iget-boolean v9, v0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    iget-object v10, v0, Lorg/telegram/ui/PaymentFormActivity;->googlePayCredentials:Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;

    iget-object v11, v0, Lorg/telegram/ui/PaymentFormActivity;->savedCredentialsCard:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    invoke-interface/range {v6 .. v11}, Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;->didSelectNewCard(Ljava/lang/String;Ljava/lang/String;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3553
    new-instance v6, Lorg/telegram/ui/PaymentFormActivity;

    iget-object v7, v0, Lorg/telegram/ui/PaymentFormActivity;->invoiceInput:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    iget-object v8, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v9, v0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v10, v0, Lorg/telegram/ui/PaymentFormActivity;->invoiceSlug:Ljava/lang/String;

    iget-object v12, v0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    iget-object v13, v0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    iget-object v14, v0, Lorg/telegram/ui/PaymentFormActivity;->tipAmount:Ljava/lang/Long;

    iget-object v15, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentJson:Ljava/lang/String;

    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-boolean v3, v0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->googlePayCredentials:Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;

    iget-object v11, v0, Lorg/telegram/ui/PaymentFormActivity;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/16 v21, 0x0

    move-object/from16 v20, v11

    const/4 v11, 0x4

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move/from16 v18, v3

    move-object/from16 v19, v4

    invoke-direct/range {v6 .. v21}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$InputInvoice;Lorg/telegram/tgnet/TLRPC$PaymentForm;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    invoke-virtual {v0, v6, v5}, Lorg/telegram/ui/PaymentFormActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    return-void

    .line 3555
    :cond_1
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void

    .line 3527
    :cond_2
    iget-boolean v1, v0, Lorg/telegram/ui/PaymentFormActivity;->isCheckoutPreview:Z

    if-eqz v1, :cond_3

    .line 3528
    iget v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->paymentFinished:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3530
    :cond_3
    iget v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->paymentFinished:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 3532
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->newMessageCallback:Lorg/telegram/messenger/MessagesController$NewMessageCallback;

    if-nez v1, :cond_5

    .line 3533
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PaymentFormActivity;->onCheckoutSuccess(Lorg/telegram/ui/ActionBar/INavigationLayout;Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_4

    .line 3534
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :cond_4
    :goto_0
    return-void

    .line 3537
    :cond_5
    new-instance v1, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda40;

    invoke-direct {v1, v0}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda40;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    .line 3518
    :cond_6
    iget-boolean v1, v0, Lorg/telegram/ui/PaymentFormActivity;->passwordOk:Z

    if-eqz v1, :cond_7

    move v13, v6

    goto :goto_1

    :cond_7
    move v13, v7

    .line 3523
    :goto_1
    new-instance v8, Lorg/telegram/ui/PaymentFormActivity;

    iget-object v9, v0, Lorg/telegram/ui/PaymentFormActivity;->invoiceInput:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    iget-object v10, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v11, v0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v12, v0, Lorg/telegram/ui/PaymentFormActivity;->invoiceSlug:Ljava/lang/String;

    iget-object v14, v0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    iget-object v15, v0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->tipAmount:Ljava/lang/Long;

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentJson:Ljava/lang/String;

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-boolean v6, v0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    iget-object v7, v0, Lorg/telegram/ui/PaymentFormActivity;->googlePayCredentials:Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object/from16 v16, v1

    iget-boolean v1, v0, Lorg/telegram/ui/PaymentFormActivity;->allowUnregistered:Z

    move/from16 v23, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v22, v5

    move/from16 v20, v6

    move-object/from16 v21, v7

    invoke-direct/range {v8 .. v23}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$InputInvoice;Lorg/telegram/tgnet/TLRPC$PaymentForm;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v8, v1}, Lorg/telegram/ui/PaymentFormActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    return-void

    .line 3481
    :cond_8
    iget-object v11, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-boolean v1, v11, Lorg/telegram/tgnet/TLRPC$PaymentForm;->password_missing:Z

    if-eqz v1, :cond_9

    iget-boolean v1, v0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    if-eqz v1, :cond_9

    .line 3482
    new-instance v9, Lorg/telegram/ui/PaymentFormActivity;

    iget-object v10, v0, Lorg/telegram/ui/PaymentFormActivity;->invoiceInput:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    iget-object v12, v0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v13, v0, Lorg/telegram/ui/PaymentFormActivity;->invoiceSlug:Ljava/lang/String;

    iget-object v15, v0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->tipAmount:Ljava/lang/Long;

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentJson:Ljava/lang/String;

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    iget-object v6, v0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v7, v0, Lorg/telegram/ui/PaymentFormActivity;->googlePayCredentials:Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;

    iget-object v8, v0, Lorg/telegram/ui/PaymentFormActivity;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-boolean v14, v0, Lorg/telegram/ui/PaymentFormActivity;->allowUnregistered:Z

    move/from16 v24, v14

    const/4 v14, 0x6

    move/from16 v21, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    invoke-direct/range {v9 .. v24}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$InputInvoice;Lorg/telegram/tgnet/TLRPC$PaymentForm;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    iput-object v9, v0, Lorg/telegram/ui/PaymentFormActivity;->passwordFragment:Lorg/telegram/ui/PaymentFormActivity;

    .line 3483
    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    invoke-direct {v9, v1}, Lorg/telegram/ui/PaymentFormActivity;->setCurrentPassword(Lorg/telegram/tgnet/tl/TL_account$Password;)V

    .line 3484
    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->passwordFragment:Lorg/telegram/ui/PaymentFormActivity;

    new-instance v2, Lorg/telegram/ui/PaymentFormActivity$25;

    invoke-direct {v2, v0}, Lorg/telegram/ui/PaymentFormActivity$25;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-direct {v1, v2}, Lorg/telegram/ui/PaymentFormActivity;->setDelegate(Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;)V

    .line 3506
    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->passwordFragment:Lorg/telegram/ui/PaymentFormActivity;

    iget-boolean v2, v0, Lorg/telegram/ui/PaymentFormActivity;->isWebView:Z

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/PaymentFormActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    return-void

    .line 3508
    :cond_9
    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->delegate:Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;

    if-eqz v1, :cond_a

    .line 3509
    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentJson:Ljava/lang/String;

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    iget-boolean v4, v0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->googlePayCredentials:Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;->didSelectNewCard(Ljava/lang/String;Ljava/lang/String;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;)Z

    .line 3510
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void

    .line 3512
    :cond_a
    new-instance v9, Lorg/telegram/ui/PaymentFormActivity;

    iget-object v10, v0, Lorg/telegram/ui/PaymentFormActivity;->invoiceInput:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    iget-object v12, v0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v13, v0, Lorg/telegram/ui/PaymentFormActivity;->invoiceSlug:Ljava/lang/String;

    iget-object v15, v0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->tipAmount:Ljava/lang/Long;

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentJson:Ljava/lang/String;

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-boolean v6, v0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    iget-object v7, v0, Lorg/telegram/ui/PaymentFormActivity;->googlePayCredentials:Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;

    iget-object v8, v0, Lorg/telegram/ui/PaymentFormActivity;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-boolean v14, v0, Lorg/telegram/ui/PaymentFormActivity;->allowUnregistered:Z

    move/from16 v24, v14

    const/4 v14, 0x4

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move/from16 v21, v6

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    invoke-direct/range {v9 .. v24}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$InputInvoice;Lorg/telegram/tgnet/TLRPC$PaymentForm;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    iget-boolean v1, v0, Lorg/telegram/ui/PaymentFormActivity;->isWebView:Z

    invoke-virtual {v0, v9, v1}, Lorg/telegram/ui/PaymentFormActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    return-void

    .line 3456
    :cond_b
    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentJson:Ljava/lang/String;

    if-nez v1, :cond_e

    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    if-eqz v1, :cond_c

    goto :goto_2

    .line 3458
    :cond_c
    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->savedCredentialsCard:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    if-eqz v1, :cond_10

    .line 3459
    iget v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/tl/TL_account$tmpPassword;

    if-eqz v1, :cond_d

    .line 3460
    iget v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/tl/TL_account$tmpPassword;

    iget v1, v1, Lorg/telegram/tgnet/tl/TL_account$tmpPassword;->valid_until:I

    iget v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v5

    add-int/lit8 v5, v5, 0x3c

    if-ge v1, v5, :cond_d

    .line 3461
    iget v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iput-object v2, v1, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/tl/TL_account$tmpPassword;

    .line 3462
    iget v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 3465
    :cond_d
    iget v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/tl/TL_account$tmpPassword;

    if-eqz v1, :cond_f

    :cond_e
    :goto_2
    move v13, v6

    goto :goto_3

    :cond_f
    move v13, v4

    goto :goto_3

    :cond_10
    move v13, v7

    :goto_3
    if-ne v13, v7, :cond_11

    .line 3473
    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    if-nez v1, :cond_11

    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->savedCredentialsCard:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    if-nez v1, :cond_11

    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentJson:Ljava/lang/String;

    if-nez v1, :cond_11

    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$PaymentForm;->additional_methods:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    .line 3474
    new-instance v1, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda39;

    invoke-direct {v1, v0}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda39;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-direct {v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->showChoosePaymentMethod(Ljava/lang/Runnable;)V

    return-void

    .line 3476
    :cond_11
    new-instance v8, Lorg/telegram/ui/PaymentFormActivity;

    iget-object v9, v0, Lorg/telegram/ui/PaymentFormActivity;->invoiceInput:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    iget-object v10, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v11, v0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v12, v0, Lorg/telegram/ui/PaymentFormActivity;->invoiceSlug:Ljava/lang/String;

    iget-object v14, v0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    iget-object v15, v0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->tipAmount:Ljava/lang/Long;

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentJson:Ljava/lang/String;

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-boolean v5, v0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    iget-object v6, v0, Lorg/telegram/ui/PaymentFormActivity;->googlePayCredentials:Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;

    iget-object v7, v0, Lorg/telegram/ui/PaymentFormActivity;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object/from16 v16, v1

    iget-boolean v1, v0, Lorg/telegram/ui/PaymentFormActivity;->allowUnregistered:Z

    move/from16 v23, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    invoke-direct/range {v8 .. v23}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$InputInvoice;Lorg/telegram/tgnet/TLRPC$PaymentForm;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    iget-boolean v1, v0, Lorg/telegram/ui/PaymentFormActivity;->isWebView:Z

    invoke-virtual {v0, v8, v1}, Lorg/telegram/ui/PaymentFormActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    return-void

    :cond_12
    move v1, v5

    .line 3425
    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->delegate:Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;

    if-eqz v5, :cond_13

    .line 3426
    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    invoke-interface {v5, v1}, Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;->didSelectNewAddress(Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;)V

    .line 3427
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void

    .line 3430
    :cond_13
    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_invoice;->flexible:Z

    if-eqz v5, :cond_14

    move v13, v1

    goto :goto_5

    .line 3432
    :cond_14
    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->savedCredentialsCard:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    if-nez v1, :cond_16

    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentJson:Ljava/lang/String;

    if-eqz v1, :cond_15

    goto :goto_4

    :cond_15
    move v13, v7

    goto :goto_5

    .line 3433
    :cond_16
    :goto_4
    iget v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/tl/TL_account$tmpPassword;

    if-eqz v1, :cond_17

    .line 3434
    iget v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/tl/TL_account$tmpPassword;

    iget v1, v1, Lorg/telegram/tgnet/tl/TL_account$tmpPassword;->valid_until:I

    iget v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v5

    add-int/lit8 v5, v5, 0x3c

    if-ge v1, v5, :cond_17

    .line 3435
    iget v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iput-object v2, v1, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/tl/TL_account$tmpPassword;

    .line 3436
    iget v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 3439
    :cond_17
    iget v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/tl/TL_account$tmpPassword;

    if-eqz v1, :cond_18

    move v13, v6

    goto :goto_5

    :cond_18
    move v13, v4

    :goto_5
    if-ne v13, v7, :cond_19

    .line 3447
    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->savedCredentialsCard:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    if-nez v1, :cond_19

    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentJson:Ljava/lang/String;

    if-nez v1, :cond_19

    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$PaymentForm;->additional_methods:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_19

    .line 3448
    new-instance v1, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda39;

    invoke-direct {v1, v0}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda39;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-direct {v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->showChoosePaymentMethod(Ljava/lang/Runnable;)V

    return-void

    .line 3450
    :cond_19
    new-instance v8, Lorg/telegram/ui/PaymentFormActivity;

    iget-object v9, v0, Lorg/telegram/ui/PaymentFormActivity;->invoiceInput:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    iget-object v10, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v11, v0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v12, v0, Lorg/telegram/ui/PaymentFormActivity;->invoiceSlug:Ljava/lang/String;

    iget-object v14, v0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentJson:Ljava/lang/String;

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-boolean v4, v0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->googlePayCredentials:Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;

    iget-object v6, v0, Lorg/telegram/ui/PaymentFormActivity;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-boolean v7, v0, Lorg/telegram/ui/PaymentFormActivity;->allowUnregistered:Z

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move/from16 v23, v7

    invoke-direct/range {v8 .. v23}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$InputInvoice;Lorg/telegram/tgnet/TLRPC$PaymentForm;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    iget-boolean v1, v0, Lorg/telegram/ui/PaymentFormActivity;->isWebView:Z

    invoke-virtual {v0, v8, v1}, Lorg/telegram/ui/PaymentFormActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    return-void
.end method

.method private init(Lorg/telegram/tgnet/TLRPC$InputInvoice;Lorg/telegram/tgnet/TLRPC$PaymentForm;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V
    .locals 3

    move v0, p12

    move-object/from16 v1, p14

    if-eqz v1, :cond_0

    .line 529
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    .line 531
    :cond_0
    iput p5, p0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    .line 532
    iput-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 533
    iput-object p9, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentJson:Ljava/lang/String;

    move-object/from16 p5, p13

    .line 534
    iput-object p5, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayCredentials:Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;

    .line 535
    iput-object p6, p0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    .line 536
    iput-object p2, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    .line 537
    iput-object p7, p0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    .line 538
    iput-object p8, p0, Lorg/telegram/ui/PaymentFormActivity;->tipAmount:Ljava/lang/Long;

    .line 539
    iput-object p3, p0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    .line 540
    iput-object p4, p0, Lorg/telegram/ui/PaymentFormActivity;->invoiceSlug:Ljava/lang/String;

    .line 541
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->invoiceInput:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    .line 542
    iput-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    move/from16 p1, p15

    .line 543
    iput-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->allowUnregistered:Z

    .line 544
    const-string p1, "stripe"

    iget-object p3, p2, Lorg/telegram/tgnet/TLRPC$PaymentForm;->native_provider:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$PaymentForm;->native_provider:Ljava/lang/String;

    const-string p5, "smartglocal"

    invoke-virtual {p5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    move p1, p4

    goto :goto_0

    :cond_1
    move p1, p3

    :goto_0
    iput-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->isWebView:Z

    .line 545
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide p5, p2, Lorg/telegram/tgnet/TLRPC$PaymentForm;->bot_id:J

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-virtual {p1, p5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p1, :cond_2

    .line 547
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->currentBotName:Ljava/lang/String;

    goto :goto_1

    .line 549
    :cond_2
    const-string p1, ""

    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->currentBotName:Ljava/lang/String;

    .line 551
    :goto_1
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$PaymentForm;->title:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->currentItemName:Ljava/lang/String;

    .line 552
    iput-object p11, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    .line 553
    iput-boolean p4, p0, Lorg/telegram/ui/PaymentFormActivity;->saveShippingInfo:Z

    if-nez v0, :cond_4

    .line 554
    iget p1, p0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 p2, 0x4

    if-ne p1, p2, :cond_3

    goto :goto_2

    .line 557
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$PaymentForm;->saved_credentials:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, p4

    iput-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    goto :goto_3

    .line 555
    :cond_4
    :goto_2
    iput-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    :goto_3
    if-nez p10, :cond_6

    .line 560
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$PaymentForm;->saved_credentials:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 561
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$PaymentForm;->saved_credentials:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->savedCredentialsCard:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    .line 562
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;->title:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    :cond_5
    return-void

    .line 565
    :cond_6
    iput-object p10, p0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    return-void
.end method

.method private initGooglePay(Landroid/content/Context;)V
    .locals 3

    .line 3184
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3187
    :cond_0
    new-instance v0, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;-><init>()V

    .line 3188
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_invoice;->test:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;->setEnvironment(I)Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;

    move-result-object v0

    .line 3189
    invoke-virtual {v0, v2}, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;->setTheme(I)Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;

    move-result-object v0

    .line 3190
    invoke-virtual {v0}, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;->build()Lcom/google/android/gms/wallet/Wallet$WalletOptions;

    move-result-object v0

    .line 3191
    invoke-static {p1, v0}, Lcom/google/android/gms/wallet/Wallet;->getPaymentsClient(Landroid/content/Context;Lcom/google/android/gms/wallet/Wallet$WalletOptions;)Lcom/google/android/gms/wallet/PaymentsClient;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentsClient:Lcom/google/android/gms/wallet/PaymentsClient;

    .line 3193
    invoke-virtual {p0}, Lorg/telegram/ui/PaymentFormActivity;->getIsReadyToPayRequest()Lj$/util/Optional;

    move-result-object p1

    .line 3194
    invoke-virtual {p1}, Lj$/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 3197
    :cond_2
    invoke-virtual {p1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/wallet/IsReadyToPayRequest;->fromJson(Ljava/lang/String;)Lcom/google/android/gms/wallet/IsReadyToPayRequest;

    move-result-object p1

    if-nez p1, :cond_3

    :goto_1
    return-void

    .line 3202
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentsClient:Lcom/google/android/gms/wallet/PaymentsClient;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wallet/PaymentsClient;->isReadyToPay(Lcom/google/android/gms/wallet/IsReadyToPayRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 3203
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda30;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private synthetic lambda$checkPassword$70(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/tl/TL_account$getTmpPassword;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4575
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    .line 4576
    invoke-direct {p0, v1}, Lorg/telegram/ui/PaymentFormActivity;->setDonePressed(Z)V

    if-eqz p1, :cond_0

    .line 4578
    iput-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->passwordOk:Z

    .line 4579
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    check-cast p1, Lorg/telegram/tgnet/tl/TL_account$tmpPassword;

    iput-object p1, p2, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/tl/TL_account$tmpPassword;

    .line 4580
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 4581
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->goToNextStep()V

    return-void

    .line 4583
    :cond_0
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v2, "PASSWORD_HASH_INVALID"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4585
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p1, p1, v0

    const/4 p2, 0x3

    const/4 p3, 0x2

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4587
    :catch_0
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p1, p1, v0

    const/high16 p2, 0x40500000    # 3.25f

    invoke-static {p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    .line 4588
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p1, p1, v0

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 4590
    :cond_1
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, p2, p0, p3, v0}, Lorg/telegram/ui/Components/AlertsCreator;->processError(ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    return-void
.end method

.method private synthetic lambda$checkPassword$71(Lorg/telegram/tgnet/tl/TL_account$getTmpPassword;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 4574
    new-instance v0, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda72;

    invoke-direct {v0, p0, p2, p3, p1}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda72;-><init>(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/tl/TL_account$getTmpPassword;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$checkPassword$72(Lorg/telegram/tgnet/tl/TL_account$Password;[B)V
    .locals 6

    .line 4564
    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_account$Password;->current_algo:Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4565
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;

    .line 4566
    invoke-static {p2, v0}, Lorg/telegram/messenger/SRPHelper;->getX([BLorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;)[B

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v2

    .line 4571
    :goto_0
    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$getTmpPassword;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$getTmpPassword;-><init>()V

    const/16 v1, 0x708

    .line 4572
    iput v1, v0, Lorg/telegram/tgnet/tl/TL_account$getTmpPassword;->period:I

    .line 4574
    new-instance v1, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda67;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda67;-><init>(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/tl/TL_account$getTmpPassword;)V

    .line 4595
    iget-object v3, p1, Lorg/telegram/tgnet/tl/TL_account$Password;->current_algo:Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;

    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;

    if-eqz v4, :cond_2

    .line 4596
    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;

    .line 4597
    iget-wide v4, p1, Lorg/telegram/tgnet/tl/TL_account$Password;->srp_id:J

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_account$Password;->srp_B:[B

    invoke-static {p2, v4, v5, p1, v3}, Lorg/telegram/messenger/SRPHelper;->startCheck([BJ[BLorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;)Lorg/telegram/tgnet/TLRPC$TL_inputCheckPasswordSRP;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/tgnet/tl/TL_account$getTmpPassword;->password:Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;

    if-nez p1, :cond_1

    .line 4599
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_error;-><init>()V

    .line 4600
    const-string p2, "ALGO_INVALID"

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    .line 4601
    invoke-interface {v1, v2, p1}, Lorg/telegram/tgnet/RequestDelegate;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void

    .line 4604
    :cond_1
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    const/16 p2, 0xa

    invoke-virtual {p1, v0, v1, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void

    .line 4606
    :cond_2
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_error;-><init>()V

    .line 4607
    const-string p2, "PASSWORD_HASH_INVALID"

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    .line 4608
    invoke-interface {v1, v2, p1}, Lorg/telegram/tgnet/RequestDelegate;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method private synthetic lambda$checkPassword$73(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/tgnet/tl/TL_account$getPassword;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 4551
    check-cast p2, Lorg/telegram/tgnet/tl/TL_account$Password;

    .line 4552
    invoke-static {p2, v1}, Lorg/telegram/ui/TwoStepVerificationActivity;->canHandleCurrentPassword(Lorg/telegram/tgnet/tl/TL_account$Password;Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4553
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->UpdateAppAlert:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showUpdateAppAlert(Landroid/content/Context;Ljava/lang/String;Z)Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void

    .line 4556
    :cond_0
    iget-boolean p1, p2, Lorg/telegram/tgnet/tl/TL_account$Password;->has_password:Z

    if-nez p1, :cond_1

    .line 4557
    iput-boolean v1, p0, Lorg/telegram/ui/PaymentFormActivity;->passwordOk:Z

    .line 4558
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->goToNextStep()V

    return-void

    .line 4560
    :cond_1
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->getStringBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 4562
    sget-object p3, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance p4, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda58;

    invoke-direct {p4, p0, p2, p1}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda58;-><init>(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/tl/TL_account$Password;[B)V

    invoke-virtual {p3, p4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void

    .line 4613
    :cond_2
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    new-array p3, v1, [Ljava/lang/Object;

    invoke-static {p2, p1, p0, p4, p3}, Lorg/telegram/ui/Components/AlertsCreator;->processError(ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    .line 4614
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    .line 4615
    invoke-direct {p0, v1}, Lorg/telegram/ui/PaymentFormActivity;->setDonePressed(Z)V

    return-void
.end method

.method private synthetic lambda$checkPassword$74(Ljava/lang/String;Lorg/telegram/tgnet/tl/TL_account$getPassword;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    .line 4549
    new-instance v0, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda57;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v3, p3

    move-object v2, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda57;-><init>(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/tgnet/tl/TL_account$getPassword;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$createGooglePayButton$32(Landroid/view/View;)V
    .locals 4

    .line 2940
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayButton:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 2942
    :try_start_0
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->getBaseRequest()Lorg/json/JSONObject;

    move-result-object p1

    .line 2944
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->getBaseCardPaymentMethod()Lorg/json/JSONObject;

    move-result-object v0

    .line 2945
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayPublicKey:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "tokenizationSpecification"

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayParameters:Lorg/json/JSONObject;

    if-nez v1, :cond_0

    .line 2946
    new-instance v1, Lorg/telegram/ui/PaymentFormActivity$23;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PaymentFormActivity$23;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_1

    .line 2954
    :cond_0
    new-instance v1, Lorg/telegram/ui/PaymentFormActivity$24;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PaymentFormActivity$24;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2968
    :goto_0
    const-string v1, "allowedPaymentMethods"

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2970
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2971
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_invoice;->prices:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2972
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    if-eqz v2, :cond_1

    .line 2973
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_shippingOption;->prices:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2975
    :cond_1
    const-string v2, "totalPrice"

    invoke-direct {p0, v1}, Lorg/telegram/ui/PaymentFormActivity;->getTotalPriceDecimalString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->totalPriceDecimal:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2976
    const-string v1, "totalPriceStatus"

    const-string v2, "FINAL"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2977
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayCountryCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2978
    const-string v1, "countryCode"

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2980
    :cond_2
    const-string v1, "currencyCode"

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_invoice;->currency:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2981
    const-string v1, "checkoutOption"

    const-string v2, "COMPLETE_IMMEDIATE_PURCHASE"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2982
    const-string v1, "transactionInfo"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2984
    const-string v0, "merchantInfo"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "merchantName"

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->currentBotName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2995
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/wallet/PaymentDataRequest;->fromJson(Ljava/lang/String;)Lcom/google/android/gms/wallet/PaymentDataRequest;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2997
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentsClient:Lcom/google/android/gms/wallet/PaymentsClient;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wallet/PaymentsClient;->loadPaymentData(Lcom/google/android/gms/wallet/PaymentDataRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x3df

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/wallet/AutoResolveHelper;->resolveTask(Lcom/google/android/gms/tasks/Task;Landroid/app/Activity;I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    return-void

    .line 3000
    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$createView$0(Lorg/telegram/ui/CountrySelectActivity$Country;)V
    .locals 2

    .line 802
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->country:Lorg/telegram/ui/CountrySelectActivity$Country;

    .line 803
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    iget-object v1, p1, Lorg/telegram/ui/CountrySelectActivity$Country;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 804
    iget-object p1, p1, Lorg/telegram/ui/CountrySelectActivity$Country;->shortname:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->countryName:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$createView$1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 795
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 798
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 799
    new-instance p1, Lorg/telegram/ui/CountrySelectActivity;

    invoke-direct {p1, v0}, Lorg/telegram/ui/CountrySelectActivity;-><init>(Z)V

    .line 800
    invoke-virtual {p1, p2}, Lorg/telegram/ui/CountrySelectActivity;->setDisableAnonymousNumbers(Z)V

    .line 801
    new-instance v0, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda42;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda42;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/CountrySelectActivity;->setCountrySelectActivityDelegate(Lorg/telegram/ui/CountrySelectActivity$CountrySelectActivityDelegate;)V

    .line 806
    invoke-virtual {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_1
    return p2
.end method

.method private synthetic lambda$createView$11(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    .line 1870
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$createView$12(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 1886
    iput-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->passwordOk:Z

    .line 1887
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->goToNextStep()V

    return-void
.end method

.method private synthetic lambda$createView$13(Landroid/view/View;)V
    .locals 1

    .line 1943
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 1944
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p1, p1, v0

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method private synthetic lambda$createView$15(Landroid/widget/TextView;JLandroid/view/View;)V
    .locals 7

    .line 2190
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 2191
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->tipAmount:Ljava/lang/Long;

    const/4 p4, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 2192
    iput-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->ignoreOnTextChange:Z

    .line 2193
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p1, p1, p4

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2194
    iput-boolean p4, p0, Lorg/telegram/ui/PaymentFormActivity;->ignoreOnTextChange:Z

    const-wide/16 p1, 0x0

    .line 2195
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->tipAmount:Ljava/lang/Long;

    .line 2196
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->updateTotalPrice()V

    goto :goto_0

    .line 2198
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p1, p1, p4

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$TL_invoice;->currency:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-wide v1, p2

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/LocaleController;->formatCurrencyString(JZZZLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2200
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p1, p1, p4

    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    return-void
.end method

.method private synthetic lambda$createView$16(Landroid/view/View;)V
    .locals 0

    .line 2232
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2235
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->showChoosePaymentMethod()V

    return-void
.end method

.method private synthetic lambda$createView$17(Landroid/view/View;)V
    .locals 17

    move-object/from16 v0, p0

    .line 2268
    new-instance v1, Lorg/telegram/ui/PaymentFormActivity;

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->invoiceInput:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->invoiceSlug:Ljava/lang/String;

    iget-object v7, v0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    iget-object v8, v0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    iget-object v9, v0, Lorg/telegram/ui/PaymentFormActivity;->tipAmount:Ljava/lang/Long;

    iget-object v11, v0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    iget-object v12, v0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-boolean v13, v0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    iget-object v15, v0, Lorg/telegram/ui/PaymentFormActivity;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-boolean v6, v0, Lorg/telegram/ui/PaymentFormActivity;->allowUnregistered:Z

    move/from16 v16, v6

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v1 .. v16}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$InputInvoice;Lorg/telegram/tgnet/TLRPC$PaymentForm;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    .line 2269
    new-instance v2, Lorg/telegram/ui/PaymentFormActivity$14;

    invoke-direct {v2, v0}, Lorg/telegram/ui/PaymentFormActivity$14;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-direct {v1, v2}, Lorg/telegram/ui/PaymentFormActivity;->setDelegate(Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;)V

    .line 2276
    invoke-virtual {v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$18(Landroid/view/View;)V
    .locals 17

    move-object/from16 v0, p0

    .line 2291
    new-instance v1, Lorg/telegram/ui/PaymentFormActivity;

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->invoiceInput:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->invoiceSlug:Ljava/lang/String;

    iget-object v7, v0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    iget-object v8, v0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    iget-object v9, v0, Lorg/telegram/ui/PaymentFormActivity;->tipAmount:Ljava/lang/Long;

    iget-object v11, v0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    iget-object v12, v0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-boolean v13, v0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    iget-object v15, v0, Lorg/telegram/ui/PaymentFormActivity;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-boolean v6, v0, Lorg/telegram/ui/PaymentFormActivity;->allowUnregistered:Z

    move/from16 v16, v6

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v1 .. v16}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$InputInvoice;Lorg/telegram/tgnet/TLRPC$PaymentForm;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    .line 2292
    new-instance v2, Lorg/telegram/ui/PaymentFormActivity$15;

    invoke-direct {v2, v0}, Lorg/telegram/ui/PaymentFormActivity$15;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-direct {v1, v2}, Lorg/telegram/ui/PaymentFormActivity;->setDelegate(Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;)V

    .line 2299
    invoke-virtual {v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$19(Landroid/view/View;)V
    .locals 17

    move-object/from16 v0, p0

    .line 2314
    new-instance v1, Lorg/telegram/ui/PaymentFormActivity;

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->invoiceInput:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->invoiceSlug:Ljava/lang/String;

    iget-object v7, v0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    iget-object v8, v0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    iget-object v9, v0, Lorg/telegram/ui/PaymentFormActivity;->tipAmount:Ljava/lang/Long;

    iget-object v11, v0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    iget-object v12, v0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-boolean v13, v0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    iget-object v15, v0, Lorg/telegram/ui/PaymentFormActivity;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-boolean v6, v0, Lorg/telegram/ui/PaymentFormActivity;->allowUnregistered:Z

    move/from16 v16, v6

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v1 .. v16}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$InputInvoice;Lorg/telegram/tgnet/TLRPC$PaymentForm;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    .line 2315
    new-instance v2, Lorg/telegram/ui/PaymentFormActivity$16;

    invoke-direct {v2, v0}, Lorg/telegram/ui/PaymentFormActivity$16;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-direct {v1, v2}, Lorg/telegram/ui/PaymentFormActivity;->setDelegate(Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;)V

    .line 2322
    invoke-virtual {v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$2(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 p3, 0x5

    const/4 v0, 0x1

    if-ne p2, p3, :cond_2

    .line 1045
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_0
    add-int/2addr p1, v0

    .line 1046
    iget-object p2, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    array-length p3, p2

    if-ge p1, p3, :cond_1

    const/4 p3, 0x4

    if-eq p1, p3, :cond_0

    .line 1048
    aget-object p2, p2, p1

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_0

    .line 1049
    iget-object p2, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p1, p2, p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_1
    return v0

    :cond_2
    const/4 p1, 0x6

    if-ne p2, p1, :cond_3

    .line 1055
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    return v0

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$createView$20(Landroid/view/View;)V
    .locals 17

    move-object/from16 v0, p0

    .line 2337
    new-instance v1, Lorg/telegram/ui/PaymentFormActivity;

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->invoiceInput:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->invoiceSlug:Ljava/lang/String;

    iget-object v7, v0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    iget-object v8, v0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    iget-object v9, v0, Lorg/telegram/ui/PaymentFormActivity;->tipAmount:Ljava/lang/Long;

    iget-object v11, v0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    iget-object v12, v0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-boolean v13, v0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    iget-object v15, v0, Lorg/telegram/ui/PaymentFormActivity;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-boolean v6, v0, Lorg/telegram/ui/PaymentFormActivity;->allowUnregistered:Z

    move/from16 v16, v6

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v1 .. v16}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$InputInvoice;Lorg/telegram/tgnet/TLRPC$PaymentForm;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    .line 2338
    new-instance v2, Lorg/telegram/ui/PaymentFormActivity$17;

    invoke-direct {v2, v0}, Lorg/telegram/ui/PaymentFormActivity$17;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-direct {v1, v2}, Lorg/telegram/ui/PaymentFormActivity;->setDelegate(Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;)V

    .line 2345
    invoke-virtual {v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$21(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 2386
    invoke-direct {p0, v0}, Lorg/telegram/ui/PaymentFormActivity;->setDonePressed(Z)V

    .line 2387
    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    return-void
.end method

.method private synthetic lambda$createView$22(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 2436
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->totalPrice:[Ljava/lang/String;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->showPayAlert(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$createView$23(Ljava/lang/String;Landroid/view/View;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 2372
    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->recurrentAcceptCell:Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;

    const/4 v3, 0x2

    if-eqz v2, :cond_0

    iget-boolean v4, v0, Lorg/telegram/ui/PaymentFormActivity;->recurrentAccepted:Z

    if-nez v4, :cond_0

    .line 2373
    iget v1, v0, Lorg/telegram/ui/PaymentFormActivity;->shiftDp:F

    neg-float v1, v1

    iput v1, v0, Lorg/telegram/ui/PaymentFormActivity;->shiftDp:F

    .line 2374
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    iget v2, v0, Lorg/telegram/ui/PaymentFormActivity;->shiftDp:F

    invoke-static {v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    .line 2375
    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->recurrentAcceptCell:Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;->getCheckBox()Lorg/telegram/ui/Components/CheckBoxSquare;

    move-result-object v1

    iget v2, v0, Lorg/telegram/ui/PaymentFormActivity;->shiftDp:F

    invoke-static {v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    .line 2377
    :try_start_0
    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->recurrentAcceptCell:Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    .line 2382
    :cond_0
    iget-boolean v2, v0, Lorg/telegram/ui/PaymentFormActivity;->isCheckoutPreview:Z

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$PaymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-eqz v5, :cond_1

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    if-nez v5, :cond_1

    .line 2383
    invoke-direct {v0, v4}, Lorg/telegram/ui/PaymentFormActivity;->setDonePressed(Z)V

    .line 2385
    new-instance v2, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda31;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/ui/PaymentFormActivity;Landroid/view/View;)V

    invoke-direct {v0, v2}, Lorg/telegram/ui/PaymentFormActivity;->sendSavedForm(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    const/4 v5, 0x0

    if-eqz v2, :cond_9

    .line 2392
    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$PaymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-nez v6, :cond_2

    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v8, v7, Lorg/telegram/tgnet/TLRPC$TL_invoice;->shipping_address_requested:Z

    if-nez v8, :cond_4

    iget-boolean v8, v7, Lorg/telegram/tgnet/TLRPC$TL_invoice;->email_requested:Z

    if-nez v8, :cond_4

    iget-boolean v8, v7, Lorg/telegram/tgnet/TLRPC$TL_invoice;->name_requested:Z

    if-nez v8, :cond_4

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_requested:Z

    if-nez v7, :cond_4

    :cond_2
    iget-object v7, v0, Lorg/telegram/ui/PaymentFormActivity;->savedCredentialsCard:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    if-nez v7, :cond_3

    iget-object v7, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentJson:Ljava/lang/String;

    if-nez v7, :cond_3

    iget-object v7, v0, Lorg/telegram/ui/PaymentFormActivity;->googlePayCredentials:Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;

    if-eqz v7, :cond_4

    :cond_3
    iget-object v7, v0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    if-nez v7, :cond_9

    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$TL_invoice;->flexible:Z

    if-eqz v7, :cond_9

    :cond_4
    if-nez v6, :cond_6

    .line 2394
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v7, v6, Lorg/telegram/tgnet/TLRPC$TL_invoice;->shipping_address_requested:Z

    if-nez v7, :cond_5

    iget-boolean v7, v6, Lorg/telegram/tgnet/TLRPC$TL_invoice;->email_requested:Z

    if-nez v7, :cond_5

    iget-boolean v7, v6, Lorg/telegram/tgnet/TLRPC$TL_invoice;->name_requested:Z

    if-nez v7, :cond_5

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_requested:Z

    if-eqz v6, :cond_6

    :cond_5
    move v11, v5

    goto :goto_0

    .line 2396
    :cond_6
    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->savedCredentialsCard:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    if-nez v5, :cond_7

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentJson:Ljava/lang/String;

    if-nez v5, :cond_7

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->googlePayCredentials:Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;

    if-nez v5, :cond_7

    move v11, v3

    goto :goto_0

    :cond_7
    move v11, v4

    :goto_0
    if-ne v11, v3, :cond_8

    .line 2401
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$PaymentForm;->additional_methods:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 2402
    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/telegram/ui/Components/EmbedBottomSheet$$ExternalSyntheticLambda6;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/EmbedBottomSheet$$ExternalSyntheticLambda6;-><init>(Landroid/view/View;)V

    invoke-direct {v0, v2}, Lorg/telegram/ui/PaymentFormActivity;->showChoosePaymentMethod(Ljava/lang/Runnable;)V

    return-void

    .line 2404
    :cond_8
    new-instance v6, Lorg/telegram/ui/PaymentFormActivity;

    iget-object v7, v0, Lorg/telegram/ui/PaymentFormActivity;->invoiceInput:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    iget-object v8, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v9, v0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v10, v0, Lorg/telegram/ui/PaymentFormActivity;->invoiceSlug:Ljava/lang/String;

    iget-object v12, v0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    iget-object v13, v0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    iget-object v14, v0, Lorg/telegram/ui/PaymentFormActivity;->tipAmount:Ljava/lang/Long;

    iget-object v15, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentJson:Ljava/lang/String;

    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-boolean v3, v0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-boolean v5, v0, Lorg/telegram/ui/PaymentFormActivity;->allowUnregistered:Z

    const/16 v19, 0x0

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move/from16 v18, v3

    move-object/from16 v20, v4

    move/from16 v21, v5

    invoke-direct/range {v6 .. v21}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$InputInvoice;Lorg/telegram/tgnet/TLRPC$PaymentForm;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    invoke-virtual {v0, v6}, Lorg/telegram/ui/PaymentFormActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 2409
    :cond_9
    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$PaymentForm;->password_missing:Z

    if-nez v1, :cond_c

    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->savedCredentialsCard:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    if-eqz v1, :cond_c

    .line 2410
    iget v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/tl/TL_account$tmpPassword;

    if-eqz v1, :cond_a

    .line 2411
    iget v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/tl/TL_account$tmpPassword;

    iget v1, v1, Lorg/telegram/tgnet/tl/TL_account$tmpPassword;->valid_until:I

    iget v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    add-int/lit8 v2, v2, 0x3c

    if-ge v1, v2, :cond_a

    .line 2412
    iget v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/tl/TL_account$tmpPassword;

    .line 2413
    iget v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1, v5}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 2417
    :cond_a
    iget v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/tl/TL_account$tmpPassword;

    if-nez v1, :cond_b

    .line 2418
    iput-boolean v4, v0, Lorg/telegram/ui/PaymentFormActivity;->needPayAfterTransition:Z

    .line 2419
    new-instance v6, Lorg/telegram/ui/PaymentFormActivity;

    iget-object v7, v0, Lorg/telegram/ui/PaymentFormActivity;->invoiceInput:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    iget-object v8, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v9, v0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v10, v0, Lorg/telegram/ui/PaymentFormActivity;->invoiceSlug:Ljava/lang/String;

    iget-object v12, v0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    iget-object v13, v0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    iget-object v14, v0, Lorg/telegram/ui/PaymentFormActivity;->tipAmount:Ljava/lang/Long;

    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-boolean v3, v0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-boolean v11, v0, Lorg/telegram/ui/PaymentFormActivity;->allowUnregistered:Z

    move/from16 v21, v11

    const/4 v11, 0x3

    const/4 v15, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move/from16 v18, v3

    move-object/from16 v20, v4

    invoke-direct/range {v6 .. v21}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$InputInvoice;Lorg/telegram/tgnet/TLRPC$PaymentForm;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    invoke-virtual {v0, v6}, Lorg/telegram/ui/PaymentFormActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 2420
    iput-boolean v5, v0, Lorg/telegram/ui/PaymentFormActivity;->needPayAfterTransition:Z

    return-void

    .line 2422
    :cond_b
    iget-boolean v1, v0, Lorg/telegram/ui/PaymentFormActivity;->isCheckoutPreview:Z

    if-eqz v1, :cond_c

    .line 2423
    iput-boolean v5, v0, Lorg/telegram/ui/PaymentFormActivity;->isCheckoutPreview:Z

    .line 2424
    iget v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->paymentFinished:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2428
    :cond_c
    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_e

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$User;->verified:Z

    if-nez v1, :cond_e

    .line 2429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "payment_warning_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2430
    iget v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2431
    invoke-interface {v2, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_d

    .line 2432
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2433
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2434
    sget v2, Lorg/telegram/messenger/R$string;->PaymentWarning:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2435
    sget v2, Lorg/telegram/messenger/R$string;->PaymentWarningText:I

    iget-object v6, v0, Lorg/telegram/ui/PaymentFormActivity;->currentBotName:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v6, v3, v5

    aput-object p1, v3, v4

    const-string v4, "PaymentWarningText"

    invoke-static {v4, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2436
    sget v2, Lorg/telegram/messenger/R$string;->Continue:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda32;

    invoke-direct {v3, v0}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2437
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    .line 2439
    :cond_d
    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->totalPrice:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-direct {v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->showPayAlert(Ljava/lang/String;)V

    return-void

    .line 2442
    :cond_e
    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->totalPrice:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-direct {v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->showPayAlert(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$createView$24(Landroid/view/View;)V
    .locals 2

    .line 2589
    iget-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->donePressed:Z

    if-eqz p1, :cond_0

    return-void

    .line 2593
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->recurrentAccepted:Z

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->recurrentAccepted:Z

    .line 2594
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->recurrentAcceptCell:Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;->setChecked(Z)V

    .line 2596
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomLayout:Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;

    iget-boolean v1, p0, Lorg/telegram/ui/PaymentFormActivity;->recurrentAccepted:Z

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;->setChecked(ZZ)V

    return-void
.end method

.method private synthetic lambda$createView$25(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    const/4 p3, 0x0

    if-ne p2, p1, :cond_0

    .line 2622
    invoke-direct {p0, p3}, Lorg/telegram/ui/PaymentFormActivity;->sendSavePassword(Z)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return p3
.end method

.method private synthetic lambda$createView$27(Landroid/view/View;)V
    .locals 3

    .line 2658
    new-instance p1, Lorg/telegram/tgnet/tl/TL_account$resendPasswordEmail;

    invoke-direct {p1}, Lorg/telegram/tgnet/tl/TL_account$resendPasswordEmail;-><init>()V

    .line 2659
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda41;

    invoke-direct {v1}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda41;-><init>()V

    .line 2661
    iget-boolean v2, p0, Lorg/telegram/ui/PaymentFormActivity;->allowUnregistered:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2659
    :goto_0
    invoke-virtual {v0, p1, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 2662
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2663
    sget v0, Lorg/telegram/messenger/R$string;->ResendCodeInfo:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2664
    sget v0, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2665
    sget v0, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2666
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private synthetic lambda$createView$28(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    const/4 p1, 0x1

    .line 2683
    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->sendSavePassword(Z)V

    return-void
.end method

.method private synthetic lambda$createView$29(Landroid/view/View;)V
    .locals 2

    .line 2676
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2677
    sget v0, Lorg/telegram/messenger/R$string;->TurnPasswordOffQuestion:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2678
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    iget-boolean v1, v1, Lorg/telegram/tgnet/tl/TL_account$Password;->has_secure_values:Z

    if-eqz v1, :cond_0

    .line 2679
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lorg/telegram/messenger/R$string;->TurnPasswordOffPassport:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2681
    :cond_0
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2682
    sget v0, Lorg/telegram/messenger/R$string;->TurnPasswordOffQuestionTitle:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2683
    sget v0, Lorg/telegram/messenger/R$string;->Disable:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda35;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda35;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2684
    sget v0, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2685
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 2686
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 v0, -0x1

    .line 2687
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 2689
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$createView$3(Landroid/view/View;)V
    .locals 1

    .line 1096
    iget-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->saveShippingInfo:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->saveShippingInfo:Z

    .line 1097
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    return-void
.end method

.method private synthetic lambda$createView$30(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 p3, 0x6

    const/4 v0, 0x1

    if-ne p2, p3, :cond_0

    .line 2762
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    return v0

    :cond_0
    const/4 p3, 0x5

    if-ne p2, p3, :cond_2

    .line 2765
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_1

    .line 2767
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_2

    .line 2769
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 p2, 0x2

    aget-object p1, p1, p2

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$createView$4(Landroid/view/View;)V
    .locals 1

    .line 1303
    iget-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    .line 1304
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    return-void
.end method

.method private synthetic lambda$createView$5(Lorg/telegram/ui/CountrySelectActivity$Country;)V
    .locals 2

    .line 1397
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->country:Lorg/telegram/ui/CountrySelectActivity$Country;

    .line 1398
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    iget-object p1, p1, Lorg/telegram/ui/CountrySelectActivity$Country;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$createView$6(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1390
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1393
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 1394
    new-instance p1, Lorg/telegram/ui/CountrySelectActivity;

    invoke-direct {p1, v0}, Lorg/telegram/ui/CountrySelectActivity;-><init>(Z)V

    .line 1395
    invoke-virtual {p1, p2}, Lorg/telegram/ui/CountrySelectActivity;->setDisableAnonymousNumbers(Z)V

    .line 1396
    new-instance v0, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda33;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda33;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/CountrySelectActivity;->setCountrySelectActivityDelegate(Lorg/telegram/ui/CountrySelectActivity$CountrySelectActivityDelegate;)V

    .line 1400
    invoke-virtual {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_1
    return p2
.end method

.method private synthetic lambda$createView$7(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 p3, 0x5

    const/4 v0, 0x1

    if-ne p2, p3, :cond_3

    .line 1713
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_0
    add-int/lit8 p2, p1, 0x1

    .line 1714
    iget-object p3, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    array-length v1, p3

    if-ge p2, v1, :cond_2

    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_1
    move p1, p2

    .line 1719
    :goto_0
    aget-object p2, p3, p1

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_0

    .line 1720
    iget-object p2, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p1, p2, p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_2
    return v0

    :cond_3
    const/4 p1, 0x6

    if-ne p2, p1, :cond_4

    .line 1726
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    return v0

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$createView$8(Landroid/view/View;)V
    .locals 1

    .line 1743
    iget-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    .line 1744
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    return-void
.end method

.method private synthetic lambda$createView$9(Landroid/view/View;)V
    .locals 5

    .line 1792
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    .line 1793
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 1794
    aget-object v2, v2, v1

    const/4 v3, 0x1

    if-ne p1, v1, :cond_0

    move v4, v3

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_1
    invoke-virtual {v2, v4, v3}, Lorg/telegram/ui/Cells/RadioCell;->setChecked(ZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic lambda$goToNextStep$40()V
    .locals 2

    .line 3538
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/telegram/messenger/MessagesController;->newMessageCallback:Lorg/telegram/messenger/MessagesController$NewMessageCallback;

    .line 3539
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->invoiceStatus:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    sget-object v1, Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;->PENDING:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3540
    sget-object v0, Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;->FAILED:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->invoiceStatus:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    .line 3541
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentFormCallback:Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;

    if-eqz v1, :cond_0

    .line 3542
    invoke-interface {v1, v0}, Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;->onInvoiceStatusChanged(Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;)V

    .line 3544
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void

    .line 3545
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->invoiceStatus:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    sget-object v1, Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;->PAID:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3546
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$initGooglePay$37(Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 3205
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3206
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 3207
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    .line 3210
    :cond_1
    const-string v0, "isReadyToPay failed"

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$loadPasswordInfo$33()V
    .locals 1

    .line 3108
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->shortPollRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    return-void

    .line 3111
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->loadPasswordInfo()V

    const/4 v0, 0x0

    .line 3112
    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->shortPollRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$loadPasswordInfo$34(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 2

    const/4 v0, 0x0

    .line 3090
    iput-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->loadingPasswordInfo:Z

    if-nez p1, :cond_3

    .line 3092
    check-cast p2, Lorg/telegram/tgnet/tl/TL_account$Password;

    iput-object p2, p0, Lorg/telegram/ui/PaymentFormActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    .line 3093
    invoke-static {p2, v0}, Lorg/telegram/ui/TwoStepVerificationActivity;->canHandleCurrentPassword(Lorg/telegram/tgnet/tl/TL_account$Password;Z)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 3094
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->UpdateAppAlert:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lorg/telegram/ui/Components/AlertsCreator;->showUpdateAppAlert(Landroid/content/Context;Ljava/lang/String;Z)Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void

    .line 3097
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    iget-boolean v1, v1, Lorg/telegram/tgnet/tl/TL_account$Password;->has_password:Z

    if-eqz v1, :cond_1

    .line 3098
    iput-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$PaymentForm;->password_missing:Z

    .line 3099
    iput-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$PaymentForm;->can_save_credentials:Z

    .line 3100
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->updateSavePaymentField()V

    .line 3102
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    invoke-static {p1}, Lorg/telegram/ui/TwoStepVerificationActivity;->initPasswordNewAlgo(Lorg/telegram/tgnet/tl/TL_account$Password;)V

    .line 3103
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->passwordFragment:Lorg/telegram/ui/PaymentFormActivity;

    if-eqz p1, :cond_2

    .line 3104
    iget-object p2, p0, Lorg/telegram/ui/PaymentFormActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    invoke-direct {p1, p2}, Lorg/telegram/ui/PaymentFormActivity;->setCurrentPassword(Lorg/telegram/tgnet/tl/TL_account$Password;)V

    .line 3106
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    iget-boolean p1, p1, Lorg/telegram/tgnet/tl/TL_account$Password;->has_password:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->shortPollRunnable:Ljava/lang/Runnable;

    if-nez p1, :cond_3

    .line 3107
    new-instance p1, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda49;

    invoke-direct {p1, p0}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda49;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->shortPollRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1388

    .line 3114
    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_3
    return-void
.end method

.method private synthetic lambda$loadPasswordInfo$35(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 3089
    new-instance v0, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda34;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda34;-><init>(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onActivityResultFragment$39(ILandroid/content/Intent;)V
    .locals 6

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_5

    .line 3373
    invoke-static {p2}, Lcom/google/android/gms/wallet/PaymentData;->getFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/wallet/PaymentData;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_5

    .line 3377
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/wallet/PaymentData;->toJson()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    goto/16 :goto_5

    .line 3382
    :cond_1
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "paymentMethodData"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 3383
    const-string p2, "tokenizationData"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 3384
    const-string v0, "type"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 3385
    const-string v0, "token"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3387
    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayPublicKey:Ljava/lang/String;

    if-nez v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayParameters:Lorg/json/JSONObject;

    if-eqz v3, :cond_2

    goto :goto_0

    .line 3398
    :cond_2
    invoke-static {v0}, Lcom/stripe/android/net/TokenParser;->parseToken(Ljava/lang/String;)Lcom/stripe/android/model/Token;

    move-result-object p1

    .line 3399
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v0, "{\"type\":\"%1$s\", \"id\":\"%2$s\"}"

    invoke-virtual {p1}, Lcom/stripe/android/model/Token;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/stripe/android/model/Token;->getId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v1

    aput-object v4, v5, v2

    invoke-static {p2, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentJson:Ljava/lang/String;

    .line 3400
    invoke-virtual {p1}, Lcom/stripe/android/model/Token;->getCard()Lcom/stripe/android/model/Card;

    move-result-object p1

    .line 3401
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/stripe/android/model/Card;->getBrand()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " *"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/stripe/android/model/Card;->getLast4()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    .line 3388
    :cond_3
    :goto_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayCredentials:Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;

    .line 3389
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;-><init>()V

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;->payment_token:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    .line 3390
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayCredentials:Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;->payment_token:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    .line 3391
    const-string p2, "description"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3392
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 3393
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    goto :goto_1

    .line 3395
    :cond_4
    const-string p1, "Android Pay"

    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    .line 3403
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->goToNextStep()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 3405
    :goto_2
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_5
    if-ne p1, v2, :cond_7

    .line 3409
    invoke-static {p2}, Lcom/google/android/gms/wallet/AutoResolveHelper;->getStatusFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 3410
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "android pay error "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_6
    const-string p1, ""

    :goto_3
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 3413
    :cond_7
    :goto_4
    invoke-direct {p0, v2, v1}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    .line 3414
    invoke-direct {p0, v1}, Lorg/telegram/ui/PaymentFormActivity;->setDonePressed(Z)V

    .line 3415
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayButton:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_8

    .line 3416
    invoke-virtual {p1, v2}, Landroid/view/View;->setClickable(Z)V

    :cond_8
    :goto_5
    return-void
.end method

.method private synthetic lambda$onTransitionAnimationEnd$38()V
    .locals 2

    .line 3332
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 3333
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method private synthetic lambda$sendData$57(Lorg/telegram/tgnet/TLObject;)V
    .locals 4

    .line 4318
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentReceiptStars;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4319
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentReceiptStars;

    invoke-virtual {p0}, Lorg/telegram/ui/PaymentFormActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-static {v0, v1, v2, p1, v3}, Lorg/telegram/ui/Stars/StarsIntroActivity;->showTransactionSheet(Landroid/content/Context;ZILorg/telegram/tgnet/TLRPC$TL_payments_paymentReceiptStars;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;

    return-void

    .line 4320
    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;

    if-eqz v0, :cond_1

    .line 4321
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4323
    new-instance v2, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;

    invoke-direct {v2}, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;-><init>()V

    const/4 v3, 0x1

    .line 4324
    iput-boolean v3, v2, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->transitionFromLeft:Z

    .line 4325
    iput-boolean v1, v2, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->allowNestedScroll:Z

    .line 4326
    new-instance v1, Lorg/telegram/ui/PaymentFormActivity;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;

    invoke-direct {v1, p1}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$PaymentReceipt;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;)[Lorg/telegram/ui/ActionBar/INavigationLayout;

    :cond_1
    return-void
.end method

.method private synthetic lambda$sendData$58(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 4317
    new-instance p2, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda75;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda75;-><init>(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$sendData$59(Lorg/telegram/ui/Components/Bulletin;Z[Lorg/telegram/tgnet/TLRPC$Message;Landroid/view/View;)V
    .locals 2

    .line 4307
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->hide()V

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    .line 4309
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 4311
    aget-object p4, p3, p1

    invoke-static {p4}, Lorg/telegram/messenger/MessageObject;->getDialogId(Lorg/telegram/tgnet/TLRPC$Message;)J

    move-result-wide v0

    aget-object p1, p3, p1

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/ChatActivity;->of(JI)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    return-void

    .line 4314
    :cond_1
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentReceipt;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentReceipt;-><init>()V

    .line 4315
    aget-object p4, p3, p1

    iget p4, p4, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iput p4, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentReceipt;->msg_id:I

    .line 4316
    iget p4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p4

    aget-object p1, p3, p1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {p4, p1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$Peer;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p1

    iput-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentReceipt;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 4317
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance p3, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda70;

    invoke-direct {p3, p0}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda70;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    const/4 p4, 0x2

    invoke-virtual {p1, p2, p3, p4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method private synthetic lambda$sendData$60([Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 4253
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    .line 4254
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    :cond_0
    if-nez v2, :cond_1

    .line 4255
    sget-object v2, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    :cond_1
    if-nez v2, :cond_2

    goto/16 :goto_b

    :cond_2
    const/4 v2, 0x1

    .line 4258
    iput-boolean v2, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentStatusSent:Z

    .line 4259
    sget-object v3, Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;->PAID:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    iput-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->invoiceStatus:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    .line 4260
    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->invoiceInput:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStars;

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    .line 4261
    move-object v7, v4

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStars;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStars;->purpose:Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGift;

    if-eqz v7, :cond_3

    move v7, v2

    goto :goto_0

    :cond_3
    move v7, v6

    :goto_0
    if-eqz v5, :cond_4

    .line 4262
    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStars;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStars;->purpose:Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;

    if-eqz v4, :cond_4

    move v4, v2

    goto :goto_1

    :cond_4
    move v4, v6

    :goto_1
    if-nez v5, :cond_5

    .line 4263
    iget-object v8, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentFormCallback:Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;

    if-eqz v8, :cond_5

    .line 4264
    invoke-interface {v8, v3}, Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;->onInvoiceStatusChanged(Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;)V

    .line 4267
    :cond_5
    invoke-direct {v0}, Lorg/telegram/ui/PaymentFormActivity;->goToNextStep()V

    if-eqz v5, :cond_6

    .line 4268
    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentFormCallback:Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;

    if-eqz v3, :cond_6

    .line 4269
    iget-object v8, v0, Lorg/telegram/ui/PaymentFormActivity;->invoiceStatus:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    invoke-interface {v3, v8}, Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;->onInvoiceStatusChanged(Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;)V

    .line 4271
    :cond_6
    invoke-direct {v0}, Lorg/telegram/ui/PaymentFormActivity;->getStarsGiftUserId()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-lez v3, :cond_7

    .line 4274
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v10

    invoke-static {v10}, Lorg/telegram/messenger/UserObject;->getForcedFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    .line 4275
    :cond_7
    const-string v10, ""

    if-gez v3, :cond_8

    .line 4276
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v11

    neg-long v12, v8

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v11

    if-eqz v11, :cond_8

    .line 4277
    iget-object v10, v11, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 4279
    :cond_8
    :goto_2
    invoke-direct {v0}, Lorg/telegram/ui/PaymentFormActivity;->getStars()J

    move-result-wide v11

    if-eqz v5, :cond_b

    if-nez v7, :cond_a

    if-eqz v4, :cond_9

    goto :goto_4

    .line 4280
    :cond_9
    sget v13, Lorg/telegram/messenger/R$raw;->stars_topup:I

    :goto_3
    move v15, v13

    goto :goto_5

    :cond_a
    :goto_4
    sget v13, Lorg/telegram/messenger/R$raw;->stars_send:I

    goto :goto_3

    :cond_b
    sget v13, Lorg/telegram/messenger/R$raw;->payment_success:I

    goto :goto_3

    :goto_5
    if-nez v5, :cond_c

    const/4 v13, 0x0

    :goto_6
    move-object/from16 v16, v13

    goto :goto_8

    :cond_c
    if-eqz v4, :cond_d

    .line 4281
    sget v13, Lorg/telegram/messenger/R$string;->StarsGiveawaySentPopup:I

    :goto_7
    invoke-static {v13}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_6

    :cond_d
    if-eqz v7, :cond_e

    sget v13, Lorg/telegram/messenger/R$string;->StarsGiftSentPopup:I

    goto :goto_7

    :cond_e
    sget v13, Lorg/telegram/messenger/R$string;->StarsAcquired:I

    goto :goto_7

    :goto_8
    if-eqz v5, :cond_11

    if-eqz v4, :cond_f

    .line 4284
    const-string v2, "StarsGiveawaySentPopupInfo"

    long-to-int v5, v11

    invoke-static {v2, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_a

    :cond_f
    if-eqz v7, :cond_10

    const-string v5, "StarsGiftSentPopupInfo"

    goto :goto_9

    :cond_10
    const-string v5, "StarsAcquiredInfo"

    :goto_9
    long-to-int v11, v11

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v10, v2, v6

    invoke-static {v5, v11, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_a

    .line 4285
    :cond_11
    sget v5, Lorg/telegram/messenger/R$string;->PaymentInfoHint:I

    iget-object v10, v0, Lorg/telegram/ui/PaymentFormActivity;->totalPrice:[Ljava/lang/String;

    aget-object v10, v10, v6

    iget-object v11, v0, Lorg/telegram/ui/PaymentFormActivity;->currentItemName:Ljava/lang/String;

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v10, v12, v6

    aput-object v11, v12, v2

    invoke-static {v5, v12}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 4282
    :goto_a
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v17

    .line 4287
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v2

    if-nez v2, :cond_12

    :goto_b
    return-void

    .line 4289
    :cond_12
    invoke-static {v2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v14

    if-eqz v3, :cond_13

    if-eqz v16, :cond_13

    if-nez v4, :cond_13

    .line 4292
    sget v2, Lorg/telegram/messenger/R$string;->ViewInChat:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v18

    new-instance v2, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda68;

    invoke-direct {v2, v8, v9}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda68;-><init>(J)V

    move-object/from16 v19, v2

    invoke-virtual/range {v14 .. v19}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v2

    goto :goto_c

    :cond_13
    move-object/from16 v13, v16

    move-object/from16 v2, v17

    if-eqz v13, :cond_14

    .line 4299
    invoke-virtual {v14, v15, v13, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v2

    goto :goto_c

    .line 4301
    :cond_14
    invoke-virtual {v14, v15, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v2

    .line 4303
    :goto_c
    iput-boolean v6, v2, Lorg/telegram/ui/Components/Bulletin;->hideAfterBottomSheet:Z

    const/16 v3, 0x1388

    .line 4304
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/Bulletin;->setDuration(I)Lorg/telegram/ui/Components/Bulletin;

    .line 4305
    aget-object v3, v1, v6

    if-eqz v3, :cond_15

    .line 4306
    new-instance v3, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda69;

    invoke-direct {v3, v0, v2, v7, v1}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda69;-><init>(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/ui/Components/Bulletin;Z[Lorg/telegram/tgnet/TLRPC$Message;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/Bulletin;->setOnClickListener(Landroid/view/View$OnClickListener;)Lorg/telegram/ui/Components/Bulletin;

    .line 4333
    :cond_15
    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$sendData$62(Lorg/telegram/tgnet/TLObject;)V
    .locals 4

    .line 4417
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentReceiptStars;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4418
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentReceiptStars;

    invoke-virtual {p0}, Lorg/telegram/ui/PaymentFormActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-static {v0, v1, v2, p1, v3}, Lorg/telegram/ui/Stars/StarsIntroActivity;->showTransactionSheet(Landroid/content/Context;ZILorg/telegram/tgnet/TLRPC$TL_payments_paymentReceiptStars;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;

    return-void

    .line 4419
    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;

    if-eqz v0, :cond_1

    .line 4420
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4422
    new-instance v2, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;

    invoke-direct {v2}, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;-><init>()V

    const/4 v3, 0x1

    .line 4423
    iput-boolean v3, v2, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->transitionFromLeft:Z

    .line 4424
    iput-boolean v1, v2, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->allowNestedScroll:Z

    .line 4425
    new-instance v1, Lorg/telegram/ui/PaymentFormActivity;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;

    invoke-direct {v1, p1}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$PaymentReceipt;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;)[Lorg/telegram/ui/ActionBar/INavigationLayout;

    :cond_1
    return-void
.end method

.method private synthetic lambda$sendData$63(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 4416
    new-instance p2, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$sendData$64(Lorg/telegram/ui/Components/Bulletin;ZLorg/telegram/tgnet/TLRPC$Message;Landroid/view/View;)V
    .locals 2

    .line 4406
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->hide()V

    if-eqz p2, :cond_1

    .line 4408
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4410
    invoke-static {p3}, Lorg/telegram/messenger/MessageObject;->getDialogId(Lorg/telegram/tgnet/TLRPC$Message;)J

    move-result-wide v0

    iget p2, p3, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v0, v1, p2}, Lorg/telegram/ui/ChatActivity;->of(JI)Lorg/telegram/ui/ChatActivity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    return-void

    .line 4413
    :cond_1
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentReceipt;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentReceipt;-><init>()V

    .line 4414
    iget p2, p3, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iput p2, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentReceipt;->msg_id:I

    .line 4415
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {p2, p3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$Peer;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p2

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentReceipt;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 4416
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    const/4 p4, 0x2

    invoke-virtual {p2, p1, p3, p4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method private synthetic lambda$sendData$65(Lorg/telegram/ui/ActionBar/INavigationLayout;Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const/4 v2, 0x1

    .line 4354
    iput-boolean v2, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentStatusSent:Z

    .line 4355
    sget-object v3, Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;->PAID:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    iput-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->invoiceStatus:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    .line 4357
    invoke-direct/range {p0 .. p2}, Lorg/telegram/ui/PaymentFormActivity;->onCheckoutSuccess(Lorg/telegram/ui/ActionBar/INavigationLayout;Landroid/app/Activity;)Z

    .line 4359
    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->invoiceInput:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStars;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 4360
    move-object v6, v3

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStars;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStars;->purpose:Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGift;

    if-eqz v6, :cond_0

    move v6, v2

    goto :goto_0

    :cond_0
    move v6, v5

    :goto_0
    if-eqz v4, :cond_1

    .line 4361
    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStars;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStars;->purpose:Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v5

    :goto_1
    if-nez v4, :cond_2

    .line 4362
    iget-object v7, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentFormCallback:Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;

    if-eqz v7, :cond_2

    .line 4363
    iget-object v8, v0, Lorg/telegram/ui/PaymentFormActivity;->invoiceStatus:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    invoke-interface {v7, v8}, Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;->onInvoiceStatusChanged(Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;)V

    .line 4366
    :cond_2
    invoke-direct {v0}, Lorg/telegram/ui/PaymentFormActivity;->goToNextStep()V

    if-eqz v4, :cond_3

    .line 4367
    iget-object v7, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentFormCallback:Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;

    if-eqz v7, :cond_3

    .line 4368
    iget-object v8, v0, Lorg/telegram/ui/PaymentFormActivity;->invoiceStatus:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    invoke-interface {v7, v8}, Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;->onInvoiceStatusChanged(Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;)V

    .line 4370
    :cond_3
    invoke-direct {v0}, Lorg/telegram/ui/PaymentFormActivity;->getStarsGiftUserId()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-lez v9, :cond_4

    .line 4373
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v10

    invoke-static {v10}, Lorg/telegram/messenger/UserObject;->getForcedFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    .line 4374
    :cond_4
    const-string v10, ""

    if-gez v9, :cond_5

    .line 4375
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v11

    neg-long v12, v7

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 4376
    iget-object v10, v11, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 4378
    :cond_5
    :goto_2
    invoke-direct {v0}, Lorg/telegram/ui/PaymentFormActivity;->getStars()J

    move-result-wide v11

    if-eqz v4, :cond_8

    if-nez v6, :cond_7

    if-eqz v3, :cond_6

    goto :goto_4

    .line 4379
    :cond_6
    sget v13, Lorg/telegram/messenger/R$raw;->stars_topup:I

    :goto_3
    move v15, v13

    goto :goto_5

    :cond_7
    :goto_4
    sget v13, Lorg/telegram/messenger/R$raw;->stars_send:I

    goto :goto_3

    :cond_8
    sget v13, Lorg/telegram/messenger/R$raw;->payment_success:I

    goto :goto_3

    :goto_5
    if-nez v4, :cond_9

    const/4 v13, 0x0

    :goto_6
    move-object/from16 v16, v13

    goto :goto_8

    :cond_9
    if-eqz v3, :cond_a

    .line 4380
    sget v13, Lorg/telegram/messenger/R$string;->StarsGiveawaySentPopup:I

    :goto_7
    invoke-static {v13}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_6

    :cond_a
    if-eqz v6, :cond_b

    sget v13, Lorg/telegram/messenger/R$string;->StarsGiftSentPopup:I

    goto :goto_7

    :cond_b
    sget v13, Lorg/telegram/messenger/R$string;->StarsAcquired:I

    goto :goto_7

    :goto_8
    if-eqz v4, :cond_e

    if-eqz v3, :cond_c

    .line 4383
    const-string v2, "StarsGiveawaySentPopupInfo"

    long-to-int v4, v11

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_a

    :cond_c
    if-eqz v6, :cond_d

    const-string v4, "StarsGiftSentPopupInfo"

    goto :goto_9

    :cond_d
    const-string v4, "StarsAcquiredInfo"

    :goto_9
    long-to-int v11, v11

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v10, v2, v5

    invoke-static {v4, v11, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_a

    .line 4384
    :cond_e
    sget v4, Lorg/telegram/messenger/R$string;->PaymentInfoHint:I

    iget-object v10, v0, Lorg/telegram/ui/PaymentFormActivity;->totalPrice:[Ljava/lang/String;

    aget-object v10, v10, v5

    iget-object v11, v0, Lorg/telegram/ui/PaymentFormActivity;->currentItemName:Ljava/lang/String;

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v10, v12, v5

    aput-object v11, v12, v2

    invoke-static {v4, v12}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 4381
    :goto_a
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v17

    .line 4386
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v2

    if-nez v2, :cond_f

    return-void

    .line 4388
    :cond_f
    invoke-static {v2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v14

    if-eqz v9, :cond_10

    if-eqz v16, :cond_10

    if-nez v3, :cond_10

    .line 4391
    sget v2, Lorg/telegram/messenger/R$string;->ViewInChat:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v18

    new-instance v2, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda73;

    invoke-direct {v2, v7, v8}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda73;-><init>(J)V

    move-object/from16 v19, v2

    invoke-virtual/range {v14 .. v19}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v2

    goto :goto_b

    :cond_10
    move-object/from16 v13, v16

    move-object/from16 v2, v17

    if-eqz v13, :cond_11

    .line 4398
    invoke-virtual {v14, v15, v13, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v2

    goto :goto_b

    .line 4400
    :cond_11
    invoke-virtual {v14, v15, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v2

    .line 4402
    :goto_b
    iput-boolean v5, v2, Lorg/telegram/ui/Components/Bulletin;->hideAfterBottomSheet:Z

    const/16 v4, 0x1388

    .line 4403
    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/Bulletin;->setDuration(I)Lorg/telegram/ui/Components/Bulletin;

    if-eqz v1, :cond_12

    .line 4405
    new-instance v4, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda74;

    invoke-direct {v4, v0, v2, v6, v1}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda74;-><init>(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/ui/Components/Bulletin;ZLorg/telegram/tgnet/TLRPC$Message;)V

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/Bulletin;->setOnClickListener(Landroid/view/View$OnClickListener;)Lorg/telegram/ui/Components/Bulletin;

    .line 4432
    :cond_12
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$sendData$66(Lorg/telegram/ui/ActionBar/INavigationLayout;Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$Message;)Z
    .locals 4

    .line 4351
    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPaymentSent;

    if-eqz v0, :cond_0

    .line 4352
    new-instance v0, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda71;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda71;-><init>(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/ui/ActionBar/INavigationLayout;Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$Message;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$sendData$67(Lorg/telegram/tgnet/TLObject;)V
    .locals 6

    const/4 v0, 0x0

    .line 4337
    invoke-direct {p0, v0}, Lorg/telegram/ui/PaymentFormActivity;->setDonePressed(Z)V

    const/4 v1, 0x1

    .line 4338
    iput-boolean v1, p0, Lorg/telegram/ui/PaymentFormActivity;->webviewLoading:Z

    .line 4339
    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    .line 4340
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    if-eqz v2, :cond_0

    .line 4341
    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/ContextProgressView;->setVisibility(I)V

    .line 4343
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v2, :cond_1

    .line 4344
    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 4345
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getContentView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4348
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v2

    .line 4349
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    .line 4350
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda65;

    invoke-direct {v5, p0, v2, v3}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda65;-><init>(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/ui/ActionBar/INavigationLayout;Landroid/app/Activity;)V

    iput-object v5, v4, Lorg/telegram/messenger/MessagesController;->newMessageCallback:Lorg/telegram/messenger/MessagesController$NewMessageCallback;

    .line 4439
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    if-eqz v2, :cond_2

    .line 4440
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4441
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentVerificationNeeded;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentVerificationNeeded;->url:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->webViewUrl:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 4444
    :cond_2
    iput-boolean v1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentStatusSent:Z

    .line 4445
    sget-object p1, Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;->PENDING:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->invoiceStatus:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    .line 4446
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentFormCallback:Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;

    if-eqz v0, :cond_3

    .line 4447
    invoke-interface {v0, p1}, Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;->onInvoiceStatusChanged(Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;)V

    :cond_3
    return-void
.end method

.method private synthetic lambda$sendData$68(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;)V
    .locals 3

    .line 4456
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, p0, p2, v2}, Lorg/telegram/ui/Components/AlertsCreator;->processError(ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    .line 4457
    invoke-direct {p0, v1}, Lorg/telegram/ui/PaymentFormActivity;->setDonePressed(Z)V

    .line 4458
    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    const/4 p1, 0x1

    .line 4460
    iput-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentStatusSent:Z

    .line 4461
    sget-object p1, Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;->FAILED:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->invoiceStatus:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    .line 4462
    iget-object p2, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentFormCallback:Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;

    if-eqz p2, :cond_0

    .line 4463
    invoke-interface {p2, p1}, Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;->onInvoiceStatusChanged(Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$sendData$69(Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 4

    if-eqz p2, :cond_5

    .line 4233
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;

    if-eqz p1, :cond_4

    .line 4234
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->customResultReceiver:Lorg/telegram/messenger/Utilities$Callback;

    if-eqz p1, :cond_0

    .line 4235
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;

    invoke-interface {p1, p2}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    .line 4239
    :cond_0
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;

    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;->updates:Lorg/telegram/tgnet/TLRPC$Updates;

    const/4 p2, 0x1

    .line 4240
    new-array p2, p2, [Lorg/telegram/tgnet/TLRPC$Message;

    .line 4241
    iget-object p3, p1, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_3

    .line 4242
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Update;

    .line 4243
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;

    if-eqz v3, :cond_1

    .line 4244
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;

    iget-object p3, v2, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    aput-object p3, p2, v0

    goto :goto_1

    .line 4246
    :cond_1
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    if-eqz v3, :cond_2

    .line 4247
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    iget-object p3, v2, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    aput-object p3, p2, v0

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4251
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    invoke-virtual {p3, p1, v0}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 4252
    new-instance p1, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda59;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda59;-><init>(Lorg/telegram/ui/PaymentFormActivity;[Lorg/telegram/tgnet/TLRPC$Message;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 4335
    :cond_4
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentVerificationNeeded;

    if-eqz p1, :cond_6

    .line 4336
    new-instance p1, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda60;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda60;-><init>(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 4452
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/PaymentFormActivity;->customErrorReceiver:Lorg/telegram/messenger/Utilities$CallbackReturn;

    if-eqz p2, :cond_7

    invoke-interface {p2, p3}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_7

    :cond_6
    return-void

    .line 4455
    :cond_7
    new-instance p2, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda61;

    invoke-direct {p2, p0, p3, p1}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda61;-><init>(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$sendForm$53(Lorg/telegram/tgnet/TLObject;)V
    .locals 5

    .line 4123
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    .line 4124
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$PaymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->saveShippingInfo:Z

    if-nez p1, :cond_1

    .line 4125
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_payments_clearSavedInfo;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_payments_clearSavedInfo;-><init>()V

    .line 4126
    iput-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_clearSavedInfo;->info:Z

    .line 4127
    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda62;

    invoke-direct {v3}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda62;-><init>()V

    .line 4129
    iget-boolean v4, p0, Lorg/telegram/ui/PaymentFormActivity;->allowUnregistered:Z

    if-eqz v4, :cond_0

    const/16 v4, 0x8

    goto :goto_0

    :cond_0
    move v4, v1

    .line 4127
    :goto_0
    invoke-virtual {v2, p1, v3, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 4131
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->goToNextStep()V

    .line 4132
    invoke-direct {p0, v1}, Lorg/telegram/ui/PaymentFormActivity;->setDonePressed(Z)V

    .line 4133
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    return-void
.end method

.method private synthetic lambda$sendForm$54(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 11

    const/4 v0, 0x0

    .line 4137
    invoke-direct {p0, v0}, Lorg/telegram/ui/PaymentFormActivity;->setDonePressed(Z)V

    const/4 v1, 0x1

    .line 4138
    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    if-eqz p1, :cond_9

    .line 4140
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x7

    const/4 v5, 0x6

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, -0x1

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v3, "REQ_INFO_EMAIL_INVALID"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v10, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string v3, "ADDRESS_STREET_LINE2_INVALID"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    :cond_1
    move v10, v4

    goto :goto_0

    :sswitch_2
    const-string v3, "REQ_INFO_PHONE_INVALID"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move v10, v5

    goto :goto_0

    :sswitch_3
    const-string v3, "ADDRESS_STATE_INVALID"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    move v10, v6

    goto :goto_0

    :sswitch_4
    const-string v3, "ADDRESS_POSTCODE_INVALID"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    move v10, v7

    goto :goto_0

    :sswitch_5
    const-string v3, "REQ_INFO_NAME_INVALID"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    move v10, v8

    goto :goto_0

    :sswitch_6
    const-string v3, "ADDRESS_COUNTRY_INVALID"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    move v10, v9

    goto :goto_0

    :sswitch_7
    const-string v3, "ADDRESS_STREET_LINE1_INVALID"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :cond_7
    move v10, v1

    goto :goto_0

    :sswitch_8
    const-string v3, "ADDRESS_CITY_INVALID"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_0

    :cond_8
    move v10, v0

    :goto_0
    packed-switch v10, :pswitch_data_0

    .line 4169
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, p0, p2, v0}, Lorg/telegram/ui/Components/AlertsCreator;->processError(ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    return-void

    .line 4148
    :pswitch_0
    invoke-direct {p0, v4}, Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V

    return-void

    .line 4166
    :pswitch_1
    invoke-direct {p0, v1}, Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V

    return-void

    :pswitch_2
    const/16 p1, 0x9

    .line 4145
    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V

    return-void

    .line 4160
    :pswitch_3
    invoke-direct {p0, v8}, Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V

    return-void

    .line 4157
    :pswitch_4
    invoke-direct {p0, v6}, Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V

    return-void

    .line 4142
    :pswitch_5
    invoke-direct {p0, v5}, Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V

    return-void

    .line 4151
    :pswitch_6
    invoke-direct {p0, v7}, Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V

    return-void

    .line 4163
    :pswitch_7
    invoke-direct {p0, v0}, Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V

    return-void

    .line 4154
    :pswitch_8
    invoke-direct {p0, v9}, Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V

    :cond_9
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7cbd4a72 -> :sswitch_8
        -0x60c55d5c -> :sswitch_7
        -0x48f7785d -> :sswitch_6
        -0x3d7f496d -> :sswitch_5
        -0x105574d0 -> :sswitch_4
        0x18e1a6de -> :sswitch_3
        0x2a39af76 -> :sswitch_2
        0x337f11a5 -> :sswitch_1
        0x34feafa4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic lambda$sendForm$55(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 4121
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    if-eqz v0, :cond_0

    .line 4122
    new-instance p1, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda52;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda52;-><init>(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 4136
    :cond_0
    new-instance p2, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda53;

    invoke-direct {p2, p0, p3, p1}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda53;-><init>(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$sendSavePassword$41(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3686
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    if-nez p1, :cond_2

    .line 3688
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 3691
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->shortPollRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 3692
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 3693
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->shortPollRunnable:Ljava/lang/Runnable;

    .line 3695
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->goToNextStep()V

    return-void

    .line 3697
    :cond_2
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v3, "CODE_INVALID"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3698
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->codeFieldCell:Lorg/telegram/ui/Cells/EditTextSettingsCell;

    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->shakeView(Landroid/view/View;)V

    .line 3699
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->codeFieldCell:Lorg/telegram/ui/Cells/EditTextSettingsCell;

    const-string v0, ""

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Cells/EditTextSettingsCell;->setText(Ljava/lang/String;Z)V

    return-void

    .line 3700
    :cond_3
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v3, "FLOOD_WAIT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3701
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v2, 0x3c

    if-ge p1, v2, :cond_4

    .line 3704
    const-string v2, "Seconds"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, p1, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 3706
    :cond_4
    div-int/2addr p1, v2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Minutes"

    invoke-static {v3, p1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 3708
    :goto_0
    sget v2, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->FloodWaitTime:I

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "FloodWaitTime"

    invoke-static {p1, v3, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lorg/telegram/ui/PaymentFormActivity;->showAlertWithText(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3710
    :cond_5
    sget v0, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/PaymentFormActivity;->showAlertWithText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$sendSavePassword$42(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 3685
    new-instance p1, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda45;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda45;-><init>(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$sendSavePassword$43(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 3770
    check-cast p2, Lorg/telegram/tgnet/tl/TL_account$Password;

    iput-object p2, p0, Lorg/telegram/ui/PaymentFormActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    .line 3771
    invoke-static {p2}, Lorg/telegram/ui/TwoStepVerificationActivity;->initPasswordNewAlgo(Lorg/telegram/tgnet/tl/TL_account$Password;)V

    .line 3772
    invoke-direct {p0, p3}, Lorg/telegram/ui/PaymentFormActivity;->sendSavePassword(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$sendSavePassword$44(ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 3768
    new-instance v0, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda66;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda66;-><init>(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Z)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$sendSavePassword$45(Ljava/lang/String;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    const/4 p2, 0x1

    .line 3794
    iput-boolean p2, p0, Lorg/telegram/ui/PaymentFormActivity;->waitingForEmail:Z

    .line 3795
    iget-object p2, p0, Lorg/telegram/ui/PaymentFormActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    iput-object p1, p2, Lorg/telegram/tgnet/tl/TL_account$Password;->email_unconfirmed_pattern:Ljava/lang/String;

    .line 3796
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->updatePasswordFields()V

    return-void
.end method

.method private synthetic lambda$sendSavePassword$46(Lorg/telegram/tgnet/TLRPC$TL_error;ZLorg/telegram/tgnet/TLObject;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 3766
    const-string v0, "SRP_ID_INVALID"

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3767
    new-instance p1, Lorg/telegram/tgnet/tl/TL_account$getPassword;

    invoke-direct {p1}, Lorg/telegram/tgnet/tl/TL_account$getPassword;-><init>()V

    .line 3768
    iget p3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p3

    new-instance p4, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda63;

    invoke-direct {p4, p0, p2}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda63;-><init>(Lorg/telegram/ui/PaymentFormActivity;Z)V

    const/16 p2, 0x8

    invoke-virtual {p3, p1, p4, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3777
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    if-eqz p2, :cond_1

    .line 3779
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    iput-boolean v1, p1, Lorg/telegram/tgnet/tl/TL_account$Password;->has_password:Z

    const/4 p2, 0x0

    .line 3780
    iput-object p2, p1, Lorg/telegram/tgnet/tl/TL_account$Password;->current_algo:Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;

    .line 3781
    iget-object p2, p0, Lorg/telegram/ui/PaymentFormActivity;->delegate:Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;

    invoke-interface {p2, p1}, Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;->currentPasswordUpdated(Lorg/telegram/tgnet/tl/TL_account$Password;)V

    .line 3782
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void

    :cond_1
    if-nez p1, :cond_3

    .line 3784
    instance-of p2, p3, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    if-eqz p2, :cond_3

    .line 3785
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_2

    goto/16 :goto_2

    .line 3788
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->goToNextStep()V

    return-void

    :cond_3
    if-eqz p1, :cond_9

    .line 3790
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "EMAIL_UNCONFIRMED"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "EMAIL_UNCONFIRMED_"

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_1

    .line 3806
    :cond_4
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "EMAIL_INVALID"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 3807
    sget p1, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->PasswordEmailInvalid:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PaymentFormActivity;->showAlertWithText(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3808
    :cond_5
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "FLOOD_WAIT"

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 3809
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 p2, 0x3c

    if-ge p1, p2, :cond_6

    .line 3812
    const-string p2, "Seconds"

    new-array p3, v1, [Ljava/lang/Object;

    invoke-static {p2, p1, p3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 3814
    :cond_6
    div-int/2addr p1, p2

    new-array p2, v1, [Ljava/lang/Object;

    const-string p3, "Minutes"

    invoke-static {p3, p1, p2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 3816
    :goto_0
    sget p2, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->FloodWaitTime:I

    new-array p4, v0, [Ljava/lang/Object;

    aput-object p1, p4, v1

    const-string p1, "FloodWaitTime"

    invoke-static {p1, p3, p4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/PaymentFormActivity;->showAlertWithText(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3818
    :cond_7
    sget p2, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/PaymentFormActivity;->showAlertWithText(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3791
    :cond_8
    :goto_1
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/PaymentFormActivity;->emailCodeLength:I

    .line 3792
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3793
    sget p2, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda64;

    invoke-direct {p3, p0, p4}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda64;-><init>(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3798
    sget p2, Lorg/telegram/messenger/R$string;->YourEmailAlmostThereText:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3799
    sget p2, Lorg/telegram/messenger/R$string;->YourEmailAlmostThere:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3800
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 3802
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 3803
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    :cond_9
    :goto_2
    return-void
.end method

.method private synthetic lambda$sendSavePassword$47(ZLjava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    .line 3765
    new-instance v0, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda51;

    move-object v1, p0

    move v3, p1

    move-object v5, p2

    move-object v4, p3

    move-object v2, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda51;-><init>(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_error;ZLorg/telegram/tgnet/TLObject;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$sendSavePassword$48(ZLjava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/tl/TL_account$updatePasswordSettings;)V
    .locals 3

    .line 3765
    new-instance v0, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda44;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda44;-><init>(Lorg/telegram/ui/PaymentFormActivity;ZLjava/lang/String;)V

    const/16 p2, 0xa

    if-nez p1, :cond_2

    .line 3826
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->getStringBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 3827
    iget-object p3, p0, Lorg/telegram/ui/PaymentFormActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    iget-object p3, p3, Lorg/telegram/tgnet/tl/TL_account$Password;->new_algo:Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;

    instance-of v1, p3, Lorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 3828
    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;

    .line 3829
    iget-object v1, p4, Lorg/telegram/tgnet/tl/TL_account$updatePasswordSettings;->new_settings:Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;

    invoke-static {p1, p3}, Lorg/telegram/messenger/SRPHelper;->getVBytes([BLorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;)[B

    move-result-object p1

    iput-object p1, v1, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;->new_password_hash:[B

    .line 3830
    iget-object p1, p4, Lorg/telegram/tgnet/tl/TL_account$updatePasswordSettings;->new_settings:Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;->new_password_hash:[B

    if-nez p1, :cond_0

    .line 3831
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_error;-><init>()V

    .line 3832
    const-string p3, "ALGO_INVALID"

    iput-object p3, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    .line 3833
    invoke-interface {v0, v2, p1}, Lorg/telegram/tgnet/RequestDelegate;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    .line 3835
    :cond_0
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    invoke-virtual {p1, p4, v0, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void

    .line 3837
    :cond_1
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_error;-><init>()V

    .line 3838
    const-string p2, "PASSWORD_HASH_INVALID"

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    .line 3839
    invoke-interface {v0, v2, p1}, Lorg/telegram/tgnet/RequestDelegate;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void

    .line 3842
    :cond_2
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    invoke-virtual {p1, p4, v0, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method private synthetic lambda$sendSavedForm$49(Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;)V
    .locals 0

    .line 4060
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    .line 4061
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 4062
    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->setDonePressed(Z)V

    const/4 p2, 0x1

    .line 4063
    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    return-void
.end method

.method private synthetic lambda$sendSavedForm$50(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 2

    const/4 v0, 0x0

    .line 4067
    invoke-direct {p0, v0}, Lorg/telegram/ui/PaymentFormActivity;->setDonePressed(Z)V

    const/4 v1, 0x1

    .line 4068
    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    if-eqz p1, :cond_0

    .line 4070
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, p0, p2, v0}, Lorg/telegram/ui/Components/AlertsCreator;->processError(ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method private synthetic lambda$sendSavedForm$51(Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 4058
    instance-of v0, p3, Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    if-eqz v0, :cond_0

    .line 4059
    new-instance p2, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda54;

    invoke-direct {p2, p0, p3, p1}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda54;-><init>(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 4066
    :cond_0
    new-instance p1, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda55;

    invoke-direct {p1, p0, p4, p2}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda55;-><init>(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$showChoosePaymentMethod$31(Ljava/lang/Runnable;Ljava/util/List;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p5

    .line 2827
    new-instance v2, Lorg/telegram/ui/PaymentFormActivity$22;

    move-object/from16 v3, p1

    invoke-direct {v2, v0, v3}, Lorg/telegram/ui/PaymentFormActivity$22;-><init>(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/Runnable;)V

    .line 2849
    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->savedCredentialsCard:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    const/4 v4, 0x1

    if-nez v3, :cond_1

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v4

    :goto_1
    if-nez v3, :cond_2

    .line 2850
    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    if-eqz v3, :cond_3

    :cond_2
    if-nez v1, :cond_3

    goto/16 :goto_2

    :cond_3
    if-lt v1, v5, :cond_4

    .line 2853
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v5

    if-ge v1, v3, :cond_4

    sub-int/2addr v1, v5

    move-object/from16 v3, p2

    .line 2854
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    iput-object v6, v0, Lorg/telegram/ui/PaymentFormActivity;->savedCredentialsCard:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    .line 2855
    iget-object v3, v6, Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;->title:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, v2

    const/4 v2, 0x0

    invoke-interface/range {v1 .. v6}, Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;->didSelectNewCard(Ljava/lang/String;Ljava/lang/String;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;)Z

    return-void

    :cond_4
    move-object/from16 v3, p2

    .line 2859
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v4

    if-ge v1, v6, :cond_5

    .line 2860
    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PaymentForm;->additional_methods:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v1, v3

    sub-int/2addr v1, v5

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_paymentFormMethod;

    .line 2862
    new-instance v3, Lorg/telegram/ui/PaymentFormActivity;

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->invoiceInput:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v6, v0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v7, v0, Lorg/telegram/ui/PaymentFormActivity;->invoiceSlug:Ljava/lang/String;

    iget-object v9, v0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    iget-object v10, v0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    iget-object v11, v0, Lorg/telegram/ui/PaymentFormActivity;->tipAmount:Ljava/lang/Long;

    iget-object v13, v0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    iget-object v14, v0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-boolean v15, v0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    iget-object v8, v0, Lorg/telegram/ui/PaymentFormActivity;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-boolean v12, v0, Lorg/telegram/ui/PaymentFormActivity;->allowUnregistered:Z

    move-object/from16 v17, v8

    const/4 v8, 0x2

    move/from16 v18, v12

    const/4 v12, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v3 .. v18}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$InputInvoice;Lorg/telegram/tgnet/TLRPC$PaymentForm;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    .line 2863
    invoke-direct {v3, v1}, Lorg/telegram/ui/PaymentFormActivity;->setPaymentMethod(Lorg/telegram/tgnet/TLRPC$TL_paymentFormMethod;)V

    .line 2864
    invoke-direct {v3, v2}, Lorg/telegram/ui/PaymentFormActivity;->setDelegate(Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;)V

    .line 2865
    invoke-virtual {v0, v3}, Lorg/telegram/ui/PaymentFormActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 2866
    :cond_5
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v4

    if-ne v1, v3, :cond_6

    .line 2867
    new-instance v4, Lorg/telegram/ui/PaymentFormActivity;

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->invoiceInput:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    iget-object v6, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v7, v0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v8, v0, Lorg/telegram/ui/PaymentFormActivity;->invoiceSlug:Ljava/lang/String;

    iget-object v10, v0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    iget-object v11, v0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    iget-object v12, v0, Lorg/telegram/ui/PaymentFormActivity;->tipAmount:Ljava/lang/Long;

    iget-object v14, v0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    iget-object v15, v0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-boolean v1, v0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-boolean v9, v0, Lorg/telegram/ui/PaymentFormActivity;->allowUnregistered:Z

    move/from16 v19, v9

    const/4 v9, 0x2

    const/4 v13, 0x0

    const/16 v17, 0x0

    move/from16 v16, v1

    move-object/from16 v18, v3

    invoke-direct/range {v4 .. v19}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$InputInvoice;Lorg/telegram/tgnet/TLRPC$PaymentForm;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    .line 2868
    invoke-direct {v4, v2}, Lorg/telegram/ui/PaymentFormActivity;->setDelegate(Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;)V

    .line 2869
    invoke-virtual {v0, v4}, Lorg/telegram/ui/PaymentFormActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_6
    :goto_2
    return-void
.end method

.method private synthetic lambda$showPayAlert$36(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    const/4 p1, 0x1

    .line 3136
    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->setDonePressed(Z)V

    .line 3137
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->sendData()V

    return-void
.end method

.method private loadPasswordInfo()V
    .locals 4

    .line 3084
    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->loadingPasswordInfo:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3087
    iput-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->loadingPasswordInfo:Z

    .line 3088
    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$getPassword;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$getPassword;-><init>()V

    .line 3089
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    const/16 v3, 0xa

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method private onCheckoutSuccess(Lorg/telegram/ui/ActionBar/INavigationLayout;Landroid/app/Activity;)Z
    .locals 6

    .line 3562
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->invoiceInput:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 3564
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    :cond_0
    :goto_0
    if-ge v1, p1, :cond_1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 3565
    instance-of v3, v0, Lorg/telegram/ui/PaymentFormActivity;

    if-eqz v3, :cond_0

    .line 3566
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    return v1

    .line 3573
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->premiumBotUsername:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->invoiceSlug:Ljava/lang/String;

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->invoiceSlug:Ljava/lang/String;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->premiumInvoiceSlug:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->invoiceSlug:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->premiumInvoiceSlug:Ljava/lang/String;

    invoke-static {v0, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_5
    if-eqz p1, :cond_a

    .line 3575
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :cond_6
    :goto_1
    if-ge v1, v3, :cond_8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v1, v1, 0x1

    check-cast v4, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 3576
    instance-of v5, v4, Lorg/telegram/ui/ChatActivity;

    if-nez v5, :cond_7

    instance-of v5, v4, Lorg/telegram/ui/PremiumPreviewFragment;

    if-eqz v5, :cond_6

    .line 3577
    :cond_7
    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V

    goto :goto_1

    .line 3581
    :cond_8
    new-instance v0, Lorg/telegram/ui/PremiumPreviewFragment;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/ui/PremiumPreviewFragment;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/telegram/ui/PremiumPreviewFragment;->setForcePremium()Lorg/telegram/ui/PremiumPreviewFragment;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->isFinishing()Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-interface {p1, v0, v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    .line 3582
    instance-of p1, p2, Lorg/telegram/ui/LaunchActivity;

    if-eqz p1, :cond_9

    .line 3584
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    const/4 v0, 0x3

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3587
    :catch_0
    check-cast p2, Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/LaunchActivity;->getFireworksOverlay()Lorg/telegram/ui/Components/FireworksOverlay;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/FireworksOverlay;->start()V

    :cond_9
    return v2

    :cond_a
    return v1
.end method

.method private onPresentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 4739
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 4740
    instance-of v0, p1, Lorg/telegram/ui/PaymentFormActivity;

    if-eqz v0, :cond_0

    .line 4741
    check-cast p1, Lorg/telegram/ui/PaymentFormActivity;

    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentFormCallback:Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;

    iput-object v0, p1, Lorg/telegram/ui/PaymentFormActivity;->paymentFormCallback:Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;

    .line 4742
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput-object v0, p1, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 4743
    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->needPayAfterTransition:Z

    iput-boolean v0, p1, Lorg/telegram/ui/PaymentFormActivity;->needPayAfterTransition:Z

    .line 4744
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->savedCredentialsCard:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    iput-object v0, p1, Lorg/telegram/ui/PaymentFormActivity;->savedCredentialsCard:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    :cond_0
    return-void
.end method

.method private sendCardData()Z
    .locals 21

    move-object/from16 v1, p0

    .line 3851
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3852
    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3853
    array-length v3, v0

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-ne v3, v6, :cond_0

    .line 3854
    aget-object v3, v0, v5

    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v3

    .line 3855
    aget-object v0, v0, v2

    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v0

    move-object v10, v0

    move-object v9, v3

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 3860
    :goto_0
    new-instance v7, Lcom/stripe/android/model/Card;

    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v5

    .line 3861
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v3, 0x3

    aget-object v0, v0, v3

    .line 3864
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v6

    .line 3865
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v13, 0x5

    aget-object v0, v0, v13

    .line 3867
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v14, 0x4

    aget-object v0, v0, v14

    .line 3868
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move v0, v13

    const/4 v13, 0x0

    move v15, v14

    const/4 v14, 0x0

    move/from16 v16, v15

    const/4 v15, 0x0

    move/from16 v20, v16

    const/16 v16, 0x0

    move v4, v0

    move/from16 v0, v20

    const/16 v20, 0x0

    invoke-direct/range {v7 .. v19}, Lcom/stripe/android/model/Card;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3870
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/stripe/android/model/Card;->getBrand()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " *"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/stripe/android/model/Card;->getLast4()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    .line 3873
    const-string v8, "smartglocal"

    if-eqz v9, :cond_2

    if-eqz v10, :cond_2

    .line 3874
    iget v11, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v11}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/messenger/UserConfig;->getClientPhone()Ljava/lang/String;

    move-result-object v11

    const-string v12, "7"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 3875
    iget-object v11, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$PaymentForm;->native_provider:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 3876
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/16 v12, 0x16

    if-gt v11, v12, :cond_1

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v12, :cond_2

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-le v9, v2, :cond_2

    :cond_1
    move v9, v2

    goto :goto_1

    :cond_2
    move v9, v5

    .line 3883
    :goto_1
    invoke-virtual {v7}, Lcom/stripe/android/model/Card;->validateNumber()Z

    move-result v10

    if-nez v10, :cond_3

    .line 3884
    invoke-direct {v1, v5}, Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V

    return v5

    :cond_3
    if-nez v9, :cond_5

    .line 3886
    invoke-virtual {v7}, Lcom/stripe/android/model/Card;->validateExpMonth()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v7}, Lcom/stripe/android/model/Card;->validateExpYear()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v7}, Lcom/stripe/android/model/Card;->validateExpiryDate()Z

    move-result v9

    if-nez v9, :cond_5

    .line 3887
    :cond_4
    invoke-direct {v1, v2}, Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V

    return v5

    .line 3889
    :cond_5
    iget-boolean v9, v1, Lorg/telegram/ui/PaymentFormActivity;->need_card_name:Z

    if-eqz v9, :cond_6

    iget-object v9, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v9, v9, v6

    invoke-virtual {v9}, Landroid/widget/TextView;->length()I

    move-result v9

    if-nez v9, :cond_6

    .line 3890
    invoke-direct {v1, v6}, Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V

    return v5

    .line 3892
    :cond_6
    invoke-virtual {v7}, Lcom/stripe/android/model/Card;->validateCVC()Z

    move-result v9

    if-nez v9, :cond_7

    .line 3893
    invoke-direct {v1, v3}, Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V

    return v5

    .line 3895
    :cond_7
    iget-boolean v9, v1, Lorg/telegram/ui/PaymentFormActivity;->need_card_country:Z

    if-eqz v9, :cond_8

    iget-object v9, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v9, v9, v0

    invoke-virtual {v9}, Landroid/widget/TextView;->length()I

    move-result v9

    if-nez v9, :cond_8

    .line 3896
    invoke-direct {v1, v0}, Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V

    return v5

    .line 3898
    :cond_8
    iget-boolean v0, v1, Lorg/telegram/ui/PaymentFormActivity;->need_card_postcode:Z

    if-eqz v0, :cond_9

    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-nez v0, :cond_9

    .line 3899
    invoke-direct {v1, v4}, Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V

    return v5

    .line 3902
    :cond_9
    invoke-direct {v1, v2, v2}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    .line 3904
    :try_start_0
    const-string v0, "stripe"

    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PaymentForm;->native_provider:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3905
    new-instance v0, Lcom/stripe/android/Stripe;

    iget-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->providerApiKey:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/stripe/android/Stripe;-><init>(Ljava/lang/String;)V

    .line 3906
    new-instance v3, Lorg/telegram/ui/PaymentFormActivity$26;

    invoke-direct {v3, v1}, Lorg/telegram/ui/PaymentFormActivity$26;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v0, v7, v3}, Lcom/stripe/android/Stripe;->createToken(Lcom/stripe/android/model/Card;Lcom/stripe/android/TokenCallback;)V

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    .line 3933
    :cond_a
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->native_provider:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3934
    new-instance v0, Lorg/telegram/ui/PaymentFormActivity$27;

    invoke-direct {v0, v1, v7}, Lorg/telegram/ui/PaymentFormActivity$27;-><init>(Lorg/telegram/ui/PaymentFormActivity;Lcom/stripe/android/model/Card;)V

    .line 4019
    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v20, v3, v5

    aput-object v20, v3, v2

    aput-object v20, v3, v6

    invoke-virtual {v0, v4, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 4022
    :goto_2
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_b
    :goto_3
    return v2
.end method

.method private sendData()V
    .locals 6

    .line 4188
    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->canceled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 4191
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    .line 4192
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;-><init>()V

    .line 4193
    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->invoiceInput:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    if-eqz v3, :cond_1

    .line 4194
    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    goto :goto_0

    .line 4195
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_2

    .line 4196
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceMessage;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceMessage;-><init>()V

    .line 4197
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$Peer;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v4

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceMessage;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 4198
    iget-object v4, p0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    iput v4, v3, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceMessage;->msg_id:I

    .line 4199
    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    goto :goto_0

    .line 4201
    :cond_2
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;-><init>()V

    .line 4202
    iget-object v4, p0, Lorg/telegram/ui/PaymentFormActivity;->invoiceSlug:Ljava/lang/String;

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;->slug:Ljava/lang/String;

    .line 4203
    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    .line 4206
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$PaymentForm;->form_id:J

    iput-wide v3, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->form_id:J

    .line 4207
    iget v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/tl/TL_account$tmpPassword;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->savedCredentialsCard:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    if-eqz v3, :cond_3

    .line 4208
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsSaved;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsSaved;-><init>()V

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->credentials:Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;

    .line 4209
    iget-object v4, p0, Lorg/telegram/ui/PaymentFormActivity;->savedCredentialsCard:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;->id:Ljava/lang/String;

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;->id:Ljava/lang/String;

    .line 4210
    iget v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/tl/TL_account$tmpPassword;

    iget-object v4, v4, Lorg/telegram/tgnet/tl/TL_account$tmpPassword;->tmp_password:[B

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;->tmp_password:[B

    goto :goto_1

    .line 4211
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayCredentials:Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;

    if-eqz v3, :cond_4

    .line 4212
    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->credentials:Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;

    goto :goto_1

    .line 4214
    :cond_4
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentials;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentials;-><init>()V

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->credentials:Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;

    .line 4215
    iget-boolean v4, p0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    iput-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;->save:Z

    .line 4216
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;->data:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    .line 4217
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->credentials:Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;->data:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    iget-object v4, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentJson:Ljava/lang/String;

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    .line 4219
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    if-eqz v3, :cond_5

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;->id:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 4220
    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->requested_info_id:Ljava/lang/String;

    .line 4221
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->flags:I

    or-int/2addr v1, v3

    iput v1, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->flags:I

    .line 4223
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    if-eqz v1, :cond_6

    .line 4224
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_shippingOption;->id:Ljava/lang/String;

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->shipping_option_id:Ljava/lang/String;

    .line 4225
    iget v1, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->flags:I

    .line 4227
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_invoice;->flags:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    .line 4228
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->tipAmount:Ljava/lang/Long;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_2

    :cond_7
    const-wide/16 v3, 0x0

    :goto_2
    iput-wide v3, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->tip_amount:J

    .line 4229
    iget v1, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->flags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->flags:I

    .line 4231
    :cond_8
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v3, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda56;

    invoke-direct {v3, p0, v2}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda56;-><init>(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;)V

    .line 4467
    iget-boolean v4, p0, Lorg/telegram/ui/PaymentFormActivity;->allowUnregistered:Z

    if-eqz v4, :cond_9

    const/16 v0, 0x8

    :cond_9
    or-int/lit8 v0, v0, 0x2

    .line 4231
    invoke-virtual {v1, v2, v3, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method private sendForm()V
    .locals 7

    .line 4078
    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->canceled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4081
    invoke-direct {p0, v0, v0}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    .line 4082
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    .line 4083
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->invoiceInput:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    if-eqz v2, :cond_1

    .line 4084
    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->invoice:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    goto :goto_0

    .line 4085
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_2

    .line 4086
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceMessage;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceMessage;-><init>()V

    .line 4087
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$Peer;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceMessage;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 4088
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceMessage;->msg_id:I

    .line 4089
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->invoice:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    goto :goto_0

    .line 4091
    :cond_2
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;-><init>()V

    .line 4092
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->invoiceSlug:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;->slug:Ljava/lang/String;

    .line 4093
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->invoice:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    .line 4095
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-boolean v2, p0, Lorg/telegram/ui/PaymentFormActivity;->saveShippingInfo:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->save:Z

    .line 4096
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    .line 4097
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_invoice;->name_requested:Z

    if-eqz v1, :cond_3

    .line 4098
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->name:Ljava/lang/String;

    .line 4099
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget v2, v1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->flags:I

    or-int/2addr v2, v0

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->flags:I

    .line 4101
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_requested:Z

    const/4 v2, 0x2

    const/16 v3, 0x8

    if-eqz v1, :cond_4

    .line 4102
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/16 v6, 0x9

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->phone:Ljava/lang/String;

    .line 4103
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget v4, v1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->flags:I

    or-int/2addr v4, v2

    iput v4, v1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->flags:I

    .line 4105
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_invoice;->email_requested:Z

    if-eqz v1, :cond_5

    .line 4106
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v4, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v5, 0x7

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->email:Ljava/lang/String;

    .line 4107
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget v4, v1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->flags:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->flags:I

    .line 4109
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_invoice;->shipping_address_requested:Z

    const/4 v4, 0x0

    if-eqz v1, :cond_7

    .line 4110
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_postAddress;-><init>()V

    iput-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    .line 4111
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->street_line1:Ljava/lang/String;

    .line 4112
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v5, v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->street_line2:Ljava/lang/String;

    .line 4113
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->city:Ljava/lang/String;

    .line 4114
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v5, 0x3

    aget-object v1, v1, v5

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->state:Ljava/lang/String;

    .line 4115
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->countryName:Ljava/lang/String;

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_6
    const-string v1, ""

    :goto_1
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->country_iso2:Ljava/lang/String;

    .line 4116
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v5, 0x5

    aget-object v1, v1, v5

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->post_code:Ljava/lang/String;

    .line 4117
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->flags:I

    or-int/2addr v1, v3

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->flags:I

    .line 4119
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    .line 4120
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    new-instance v6, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda48;

    invoke-direct {v6, p0, v0}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda48;-><init>(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLObject;)V

    .line 4175
    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->allowUnregistered:Z

    if-eqz v0, :cond_8

    goto :goto_2

    :cond_8
    move v3, v4

    :goto_2
    or-int/lit8 v0, v3, 0x2

    .line 4120
    invoke-virtual {v1, v5, v6, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method private sendSavePassword(Z)V
    .locals 9

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 3676
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->codeFieldCell:Lorg/telegram/ui/Cells/EditTextSettingsCell;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 3677
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->codeFieldCell:Lorg/telegram/ui/Cells/EditTextSettingsCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/EditTextSettingsCell;->getText()Ljava/lang/String;

    move-result-object p1

    .line 3678
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 3679
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->codeFieldCell:Lorg/telegram/ui/Cells/EditTextSettingsCell;

    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->shakeView(Landroid/view/View;)V

    return-void

    .line 3682
    :cond_0
    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    .line 3683
    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$confirmPasswordEmail;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$confirmPasswordEmail;-><init>()V

    .line 3684
    iput-object p1, v0, Lorg/telegram/tgnet/tl/TL_account$confirmPasswordEmail;->code:Ljava/lang/String;

    .line 3685
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v1, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda36;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda36;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    const/16 v2, 0xa

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void

    .line 3715
    :cond_1
    new-instance v8, Lorg/telegram/tgnet/tl/TL_account$updatePasswordSettings;

    invoke-direct {v8}, Lorg/telegram/tgnet/tl/TL_account$updatePasswordSettings;-><init>()V

    .line 3718
    const-string v0, ""

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    .line 3719
    iget-object v4, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3722
    new-instance v3, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;

    invoke-direct {v3}, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;-><init>()V

    iput-object v3, v8, Lorg/telegram/tgnet/tl/TL_account$updatePasswordSettings;->new_settings:Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;

    .line 3723
    iput v2, v3, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;->flags:I

    .line 3724
    iput-object v0, v3, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;->email:Ljava/lang/String;

    .line 3725
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputCheckPasswordEmpty;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputCheckPasswordEmpty;-><init>()V

    iput-object v0, v8, Lorg/telegram/tgnet/tl/TL_account$updatePasswordSettings;->password:Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;

    const/4 v0, 0x0

    move-object v6, v0

    move-object v7, v6

    goto/16 :goto_1

    .line 3727
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3728
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3729
    invoke-direct {p0, v3}, Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V

    return-void

    .line 3732
    :cond_3
    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3733
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 3735
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->PasswordDoNotMatch:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 3737
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3739
    :goto_0
    invoke-direct {p0, v1}, Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V

    return-void

    .line 3742
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3743
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-ge v5, v6, :cond_5

    .line 3744
    invoke-direct {p0, v2}, Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V

    return-void

    :cond_5
    const/16 v5, 0x2e

    .line 3747
    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    const/16 v7, 0x40

    .line 3748
    invoke-virtual {v3, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    if-ltz v7, :cond_6

    if-ge v5, v7, :cond_7

    :cond_6
    move-object v4, p0

    goto :goto_2

    .line 3754
    :cond_7
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputCheckPasswordEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputCheckPasswordEmpty;-><init>()V

    iput-object v2, v8, Lorg/telegram/tgnet/tl/TL_account$updatePasswordSettings;->password:Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;

    .line 3755
    new-instance v2, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;

    invoke-direct {v2}, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;-><init>()V

    iput-object v2, v8, Lorg/telegram/tgnet/tl/TL_account$updatePasswordSettings;->new_settings:Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;

    .line 3756
    iget v5, v2, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;->flags:I

    or-int/lit8 v7, v5, 0x1

    iput v7, v2, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;->flags:I

    .line 3757
    iput-object v0, v2, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;->hint:Ljava/lang/String;

    .line 3758
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_account$Password;->new_algo:Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;

    iput-object v0, v2, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;->new_algo:Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;

    or-int/lit8 v0, v5, 0x3

    .line 3760
    iput v0, v2, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;->flags:I

    .line 3761
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;->email:Ljava/lang/String;

    move-object v6, v3

    move-object v7, v4

    .line 3763
    :goto_1
    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    .line 3764
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda37;

    move-object v4, p0

    move v5, p1

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda37;-><init>(Lorg/telegram/ui/PaymentFormActivity;ZLjava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/tl/TL_account$updatePasswordSettings;)V

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void

    .line 3750
    :goto_2
    invoke-direct {p0, v2}, Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V

    return-void
.end method

.method private sendSavedForm(Ljava/lang/Runnable;)V
    .locals 4

    .line 4036
    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->canceled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4039
    invoke-direct {p0, v0, v0}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    .line 4040
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    .line 4041
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->invoiceInput:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    if-eqz v2, :cond_1

    .line 4042
    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->invoice:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    goto :goto_0

    .line 4043
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_2

    .line 4044
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceMessage;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceMessage;-><init>()V

    .line 4045
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$Peer;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceMessage;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 4046
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceMessage;->msg_id:I

    .line 4047
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->invoice:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    goto :goto_0

    .line 4049
    :cond_2
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;-><init>()V

    .line 4050
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->invoiceSlug:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;->slug:Ljava/lang/String;

    .line 4051
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->invoice:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    .line 4053
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->save:Z

    .line 4054
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    .line 4057
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda46;

    invoke-direct {v2, p0, p1, v1}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda46;-><init>(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;)V

    .line 4074
    iget-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->allowUnregistered:Z

    if-eqz p1, :cond_3

    const/16 p1, 0x8

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    or-int/lit8 p1, p1, 0x2

    .line 4057
    invoke-virtual {v0, v1, v2, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method private setAddressFields(Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;)V
    .locals 13

    .line 2880
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    .line 2881
    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->street_line1:Ljava/lang/String;

    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->street_line2:Ljava/lang/String;

    iget-object v9, v0, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->city:Ljava/lang/String;

    iget-object v10, v0, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->state:Ljava/lang/String;

    iget-object v11, v0, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->country_iso2:Ljava/lang/String;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->post_code:Ljava/lang/String;

    const/4 v12, 0x6

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v7, v12, v6

    aput-object v8, v12, v5

    aput-object v9, v12, v4

    aput-object v10, v12, v3

    aput-object v11, v12, v2

    aput-object v0, v12, v1

    const-string v0, "%s %s, %s, %s, %s, %s"

    invoke-static {v0, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2882
    iget-object v7, p0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v7, v7, v4

    sget v8, Lorg/telegram/messenger/R$string;->PaymentShippingAddress:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$drawable;->msg_payment_address:I

    invoke-virtual {v7, v0, v8, v9, v5}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/CharSequence;IZ)V

    .line 2884
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v0, v0, v4

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    const/16 v7, 0x8

    if-eqz v4, :cond_1

    move v4, v6

    goto :goto_0

    :cond_1
    move v4, v7

    :goto_0
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2886
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2887
    iget-object v4, p0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v4, v4, v3

    sget v8, Lorg/telegram/messenger/R$string;->PaymentCheckoutName:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$drawable;->msg_contacts:I

    invoke-virtual {v4, v0, v8, v9, v5}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/CharSequence;IZ)V

    .line 2889
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v0, v0, v3

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->name:Ljava/lang/String;

    if-eqz v3, :cond_3

    move v3, v6

    goto :goto_1

    :cond_3
    move v3, v7

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2891
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->phone:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 2892
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v0, v0, v2

    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v3

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->phone:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->PaymentCheckoutPhoneNumber:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v8, Lorg/telegram/messenger/R$drawable;->msg_calls:I

    iget-object v9, p1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->email:Ljava/lang/String;

    if-nez v9, :cond_5

    iget-object v9, p0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    if-eqz v9, :cond_4

    goto :goto_2

    :cond_4
    move v9, v6

    goto :goto_3

    :cond_5
    :goto_2
    move v9, v5

    :goto_3
    invoke-virtual {v0, v3, v4, v8, v9}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/CharSequence;IZ)V

    .line 2894
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v0, v0, v2

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->phone:Ljava/lang/String;

    if-eqz v2, :cond_7

    move v2, v6

    goto :goto_4

    :cond_7
    move v2, v7

    :goto_4
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2896
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->email:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 2897
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v2, v2, v1

    sget v3, Lorg/telegram/messenger/R$string;->PaymentCheckoutEmail:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_mention:I

    iget-object v8, p0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    if-eqz v8, :cond_8

    goto :goto_5

    :cond_8
    move v5, v6

    :goto_5
    invoke-virtual {v2, v0, v3, v4, v5}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/CharSequence;IZ)V

    .line 2899
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v0, v0, v1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->email:Ljava/lang/String;

    if-eqz p1, :cond_a

    goto :goto_6

    :cond_a
    move v6, v7

    :goto_6
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setCurrentPassword(Lorg/telegram/tgnet/tl/TL_account$Password;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 486
    iget-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_account$Password;->has_password:Z

    if-eqz v0, :cond_1

    .line 487
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 490
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->goToNextStep()V

    return-void

    .line 492
    :cond_1
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    if-eqz p1, :cond_2

    .line 493
    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_account$Password;->email_unconfirmed_pattern:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->waitingForEmail:Z

    .line 494
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->updatePasswordFields()V

    return-void
.end method

.method private setDelegate(Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;)V
    .locals 0

    .line 499
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->delegate:Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;

    return-void
.end method

.method private setDonePressed(Z)V
    .locals 1

    .line 4512
    iput-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->donePressed:Z

    xor-int/lit8 p1, p1, 0x1

    .line 4513
    iput-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->swipeBackEnabled:Z

    .line 4514
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->getBackButton()Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4515
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->getBackButton()Landroid/widget/ImageView;

    move-result-object p1

    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->donePressed:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 4517
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    if-eqz p1, :cond_1

    .line 4518
    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->donePressed:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method private setPaymentMethod(Lorg/telegram/tgnet/TLRPC$TL_paymentFormMethod;)V
    .locals 0

    .line 2876
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentFormMethod:Lorg/telegram/tgnet/TLRPC$TL_paymentFormMethod;

    return-void
.end method

.method private shakeField(I)V
    .locals 1

    .line 4501
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p1, v0, p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->shakeView(Landroid/view/View;)V

    return-void
.end method

.method private shakeView(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x2

    .line 4506
    :try_start_0
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/high16 v0, 0x40200000    # 2.5f

    .line 4508
    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    return-void
.end method

.method private showAlertWithText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 3121
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3122
    sget v1, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3123
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3124
    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3125
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private showChoosePaymentMethod()V
    .locals 1

    const/4 v0, 0x0

    .line 2792
    invoke-direct {p0, v0}, Lorg/telegram/ui/PaymentFormActivity;->showChoosePaymentMethod(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showChoosePaymentMethod(Ljava/lang/Runnable;)V
    .locals 11

    .line 2796
    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lorg/telegram/messenger/R$string;->PaymentCheckoutMethod:I

    .line 2797
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setTitle(Ljava/lang/CharSequence;Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    move-result-object v0

    .line 2798
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2799
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2800
    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->savedCredentialsCard:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    if-eqz v3, :cond_0

    .line 2801
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;->title:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2802
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_payment_card:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2803
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 2804
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2805
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_payment_card:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2807
    :cond_1
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2808
    iget-object v4, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PaymentForm;->saved_credentials:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    :cond_2
    :goto_1
    if-ge v7, v5, :cond_4

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    .line 2809
    iget-object v9, p0, Lorg/telegram/ui/PaymentFormActivity;->savedCredentialsCard:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    if-eqz v9, :cond_3

    iget-object v10, v8, Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;->id:Ljava/lang/String;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;->id:Ljava/lang/String;

    invoke-static {v10, v9}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 2810
    :cond_3
    iget-object v9, v8, Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;->title:Ljava/lang/String;

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2811
    sget v9, Lorg/telegram/messenger/R$drawable;->msg_payment_card:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2812
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2815
    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PaymentForm;->additional_methods:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v7, v6

    :goto_2
    if-ge v7, v5, :cond_5

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_paymentFormMethod;

    .line 2816
    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$TL_paymentFormMethod;->title:Ljava/lang/String;

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2817
    sget v8, Lorg/telegram/messenger/R$drawable;->msg_payment_provider:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2819
    :cond_5
    sget v4, Lorg/telegram/messenger/R$string;->PaymentCheckoutMethodNewCard:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2820
    sget v4, Lorg/telegram/messenger/R$drawable;->msg_addbot:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2822
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [I

    move v5, v6

    .line 2823
    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_6

    .line 2824
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 2826
    :cond_6
    new-array v2, v6, [Ljava/lang/CharSequence;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    new-instance v5, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda43;

    invoke-direct {v5, p0, p1, v3, v1}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda43;-><init>(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/Runnable;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0, v2, v4, v5}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 2872
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private showEditDoneProgress(ZZ)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 4621
    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    .line 4622
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const/4 v4, 0x6

    const/4 v5, 0x3

    const/4 v9, 0x1

    const/4 v11, 0x0

    const v12, 0x3dcccccd    # 0.1f

    if-eqz p1, :cond_4

    .line 4624
    iget-object v14, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v14, :cond_4

    .line 4625
    new-instance v14, Landroid/animation/AnimatorSet;

    invoke-direct {v14}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v14, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_1

    .line 4627
    iget-object v14, v0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    invoke-virtual {v14, v11}, Lorg/telegram/ui/Components/ContextProgressView;->setVisibility(I)V

    .line 4628
    iget-object v14, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v14, v11}, Landroid/view/View;->setEnabled(Z)V

    .line 4629
    iget-object v14, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    iget-object v15, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 4630
    invoke-virtual {v15}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getContentView()Landroid/view/View;

    move-result-object v15

    const/16 v16, 0x5

    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/16 v17, 0x4

    new-array v3, v9, [F

    aput v12, v3, v11

    invoke-static {v15, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v15, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 4631
    invoke-virtual {v15}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getContentView()Landroid/view/View;

    move-result-object v15

    const/16 v18, 0x2

    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/16 v19, 0x0

    new-array v10, v9, [F

    aput v12, v10, v11

    invoke-static {v15, v6, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    iget-object v12, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 4632
    invoke-virtual {v12}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getContentView()Landroid/view/View;

    move-result-object v12

    sget-object v15, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/high16 v20, 0x3f800000    # 1.0f

    new-array v13, v9, [F

    aput v19, v13, v11

    invoke-static {v12, v15, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    iget-object v13, v0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    new-array v7, v9, [F

    aput v20, v7, v11

    .line 4633
    invoke-static {v13, v2, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v7, v0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    new-array v8, v9, [F

    aput v20, v8, v11

    .line 4634
    invoke-static {v7, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    new-array v8, v9, [F

    aput v20, v8, v11

    .line 4635
    invoke-static {v7, v15, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v3, v4, v11

    aput-object v10, v4, v9

    aput-object v12, v4, v18

    aput-object v2, v4, v5

    aput-object v6, v4, v17

    aput-object v7, v4, v16

    .line 4629
    invoke-virtual {v14, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_0

    :cond_1
    const/16 v18, 0x2

    const/16 v19, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    .line 4637
    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    if-eqz v2, :cond_2

    .line 4638
    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v4, v9, [F

    aput v12, v4, v11

    .line 4639
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v9, [F

    aput v12, v6, v11

    .line 4640
    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v9, [F

    aput v19, v7, v11

    .line 4641
    invoke-static {v4, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v2, v5, v11

    aput-object v3, v5, v9

    aput-object v4, v5, v18

    .line 4638
    invoke-virtual {v14, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_0

    .line 4643
    :cond_2
    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 4644
    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v2, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 4645
    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v9, [F

    aput v12, v6, v11

    .line 4646
    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v6, v0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v8, v9, [F

    aput v12, v8, v11

    .line 4647
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget-object v8, v0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    sget-object v10, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v12, v9, [F

    aput v19, v12, v11

    .line 4648
    invoke-static {v8, v10, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    new-array v12, v5, [Landroid/animation/Animator;

    aput-object v3, v12, v11

    aput-object v6, v12, v9

    aput-object v8, v12, v18

    .line 4645
    invoke-virtual {v2, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 4650
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_3

    .line 4651
    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getContentView()Landroid/view/View;

    move-result-object v3

    new-array v6, v9, [F

    aput v20, v6, v11

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 4652
    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getContentView()Landroid/view/View;

    move-result-object v4

    new-array v6, v9, [F

    aput v20, v6, v11

    invoke-static {v4, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v6, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 4653
    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getContentView()Landroid/view/View;

    move-result-object v6

    new-array v7, v9, [F

    aput v20, v7, v11

    invoke-static {v6, v10, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v3, v5, v11

    aput-object v4, v5, v9

    aput-object v6, v5, v18

    .line 4651
    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 4657
    :cond_3
    :goto_0
    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Lorg/telegram/ui/PaymentFormActivity$28;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/PaymentFormActivity$28;-><init>(Lorg/telegram/ui/PaymentFormActivity;Z)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4676
    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 4677
    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_4
    const/16 v16, 0x5

    const/16 v17, 0x4

    const/16 v18, 0x2

    const/16 v19, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    .line 4678
    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_6

    .line 4679
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_5

    .line 4681
    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->progressViewButton:Lorg/telegram/ui/Components/ContextProgressView;

    invoke-virtual {v2, v11}, Lorg/telegram/ui/Components/ContextProgressView;->setVisibility(I)V

    .line 4682
    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomLayout:Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;

    invoke-virtual {v2, v11}, Landroid/view/View;->setEnabled(Z)V

    .line 4683
    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v7, v9, [F

    aput v12, v7, v11

    .line 4684
    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v7, v0, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    sget-object v8, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v10, v9, [F

    aput v12, v10, v11

    .line 4685
    invoke-static {v7, v8, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    iget-object v10, v0, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    sget-object v12, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v13, v9, [F

    aput v19, v13, v11

    .line 4686
    invoke-static {v10, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    iget-object v13, v0, Lorg/telegram/ui/PaymentFormActivity;->progressViewButton:Lorg/telegram/ui/Components/ContextProgressView;

    new-array v14, v9, [F

    aput v20, v14, v11

    .line 4687
    invoke-static {v13, v6, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget-object v13, v0, Lorg/telegram/ui/PaymentFormActivity;->progressViewButton:Lorg/telegram/ui/Components/ContextProgressView;

    new-array v14, v9, [F

    aput v20, v14, v11

    .line 4688
    invoke-static {v13, v8, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    iget-object v13, v0, Lorg/telegram/ui/PaymentFormActivity;->progressViewButton:Lorg/telegram/ui/Components/ContextProgressView;

    new-array v14, v9, [F

    aput v20, v14, v11

    .line 4689
    invoke-static {v13, v12, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v3, v4, v11

    aput-object v7, v4, v9

    aput-object v10, v4, v18

    aput-object v6, v4, v5

    aput-object v8, v4, v17

    aput-object v12, v4, v16

    .line 4683
    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_1

    .line 4691
    :cond_5
    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 4692
    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomLayout:Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;

    invoke-virtual {v2, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 4693
    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->progressViewButton:Lorg/telegram/ui/Components/ContextProgressView;

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v7, v9, [F

    aput v12, v7, v11

    .line 4694
    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v7, v0, Lorg/telegram/ui/PaymentFormActivity;->progressViewButton:Lorg/telegram/ui/Components/ContextProgressView;

    sget-object v8, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v10, v9, [F

    aput v12, v10, v11

    .line 4695
    invoke-static {v7, v8, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    iget-object v10, v0, Lorg/telegram/ui/PaymentFormActivity;->progressViewButton:Lorg/telegram/ui/Components/ContextProgressView;

    sget-object v12, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v13, v9, [F

    aput v19, v13, v11

    .line 4696
    invoke-static {v10, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    iget-object v13, v0, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    new-array v14, v9, [F

    aput v20, v14, v11

    .line 4697
    invoke-static {v13, v6, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget-object v13, v0, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    new-array v14, v9, [F

    aput v20, v14, v11

    .line 4698
    invoke-static {v13, v8, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    iget-object v13, v0, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    new-array v14, v9, [F

    aput v20, v14, v11

    .line 4699
    invoke-static {v13, v12, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v3, v4, v11

    aput-object v7, v4, v9

    aput-object v10, v4, v18

    aput-object v6, v4, v5

    aput-object v8, v4, v17

    aput-object v12, v4, v16

    .line 4693
    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 4702
    :goto_1
    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Lorg/telegram/ui/PaymentFormActivity$29;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/PaymentFormActivity$29;-><init>(Lorg/telegram/ui/PaymentFormActivity;Z)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4721
    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 4722
    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :cond_6
    return-void
.end method

.method private showPayAlert(Ljava/lang/String;)V
    .locals 6

    .line 3129
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3132
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3133
    sget v1, Lorg/telegram/messenger/R$string;->PaymentTransactionReview:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3134
    sget v1, Lorg/telegram/messenger/R$string;->PaymentTransactionMessage2:I

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->currentBotName:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->currentItemName:Ljava/lang/String;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 p1, 0x1

    aput-object v2, v4, p1

    const/4 p1, 0x2

    aput-object v3, v4, p1

    const-string p1, "PaymentTransactionMessage2"

    invoke-static {p1, v1, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3135
    sget p1, Lorg/telegram/messenger/R$string;->Continue:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda47;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda47;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3139
    sget p1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3140
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private updatePasswordFields()V
    .locals 10

    .line 3025
    iget v0, p0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    goto/16 :goto_7

    .line 3028
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3029
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/16 v5, 0x8

    if-nez v0, :cond_2

    .line 3030
    invoke-direct {p0, v4, v4}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    .line 3031
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v0, v0, v1

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3032
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v0, v0, v2

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3033
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v0, v0, v4

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3034
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->codeFieldCell:Lorg/telegram/ui/Cells/EditTextSettingsCell;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3035
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v0, v0, v2

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3036
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v0, v0, v4

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3037
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v0, v0, v2

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    move v0, v2

    :goto_0
    if-ge v0, v3, :cond_1

    .line 3039
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3041
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->dividers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    .line 3042
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->dividers:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3045
    :cond_2
    invoke-direct {p0, v4, v2}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    .line 3046
    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->waitingForEmail:Z

    if-eqz v0, :cond_5

    .line 3047
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v0, v0, v1

    sget v6, Lorg/telegram/messenger/R$string;->EmailPasswordConfirmText2:I

    iget-object v7, p0, Lorg/telegram/ui/PaymentFormActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    iget-object v7, v7, Lorg/telegram/tgnet/tl/TL_account$Password;->email_unconfirmed_pattern:Ljava/lang/String;

    const-string v8, ""

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    move-object v7, v8

    :goto_2
    new-array v9, v4, [Ljava/lang/Object;

    aput-object v7, v9, v2

    const-string v7, "EmailPasswordConfirmText2"

    invoke-static {v7, v6, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 3048
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3049
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3050
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v0, v0, v4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3051
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->codeFieldCell:Lorg/telegram/ui/Cells/EditTextSettingsCell;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3052
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v0, v0, v4

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 3054
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v0, v0, v2

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3055
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v0, v0, v4

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3056
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v0, v0, v2

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    move v0, v2

    :goto_3
    if-ge v0, v3, :cond_4

    .line 3058
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 3060
    :cond_4
    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->dividers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    .line 3061
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->dividers:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 3064
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v0, v0, v1

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3065
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v0, v0, v2

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3066
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v0, v0, v4

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3067
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v0, v0, v4

    sget v1, Lorg/telegram/messenger/R$string;->PaymentPasswordEmailInfo:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 3068
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->codeFieldCell:Lorg/telegram/ui/Cells/EditTextSettingsCell;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3070
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3071
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v0, v0, v4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3072
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    move v0, v2

    :goto_5
    if-ge v0, v3, :cond_6

    .line 3074
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    move v0, v2

    .line 3076
    :goto_6
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->dividers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 3077
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->dividers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_7
    :goto_7
    return-void
.end method

.method private updateSavePaymentField()V
    .locals 8

    .line 3596
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 3599
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->password_missing:Z

    if-nez v3, :cond_1

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->can_save_credentials:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->webviewLoading:Z

    if-nez v0, :cond_2

    goto :goto_0

    .line 3624
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3625
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3626
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 3600
    :cond_3
    :goto_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    sget v3, Lorg/telegram/messenger/R$string;->PaymentCardSavePaymentInformationInfoLine1:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3601
    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$PaymentForm;->password_missing:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    .line 3602
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->loadPasswordInfo()V

    .line 3603
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3604
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 3605
    sget v5, Lorg/telegram/messenger/R$string;->PaymentCardSavePaymentInformationInfoLine2:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2a

    .line 3606
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 3607
    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 3608
    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/4 v5, -0x1

    if-eq v7, v5, :cond_4

    if-eq v6, v5, :cond_4

    add-int/2addr v7, v3

    add-int/2addr v6, v3

    .line 3612
    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->getTextView()Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    move-result-object v3

    new-instance v5, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;

    invoke-direct {v5}, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;-><init>()V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    add-int/lit8 v3, v6, 0x1

    .line 3613
    const-string v5, ""

    invoke-virtual {v0, v6, v3, v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v3, v7, 0x1

    .line 3614
    invoke-virtual {v0, v7, v3, v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3615
    new-instance v3, Lorg/telegram/ui/PaymentFormActivity$LinkSpan;

    invoke-direct {v3, p0}, Lorg/telegram/ui/PaymentFormActivity$LinkSpan;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    sub-int/2addr v6, v4

    const/16 v5, 0x21

    invoke-virtual {v0, v3, v7, v6, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3618
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setEnabled(Z)V

    .line 3619
    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v3, v3, v1

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 3620
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3621
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3622
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private updateTotalPrice()V
    .locals 6

    .line 2903
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->totalPrice:[Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->prices:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lorg/telegram/ui/PaymentFormActivity;->getTotalPriceString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2904
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->totalCell:Lorg/telegram/ui/Cells/TextPriceCell;

    sget v1, Lorg/telegram/messenger/R$string;->PaymentTransactionTotal:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->totalPrice:[Ljava/lang/String;

    aget-object v3, v3, v2

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v3, v4}, Lorg/telegram/ui/Cells/TextPriceCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2905
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2906
    sget v1, Lorg/telegram/messenger/R$string;->PaymentCheckoutPay:I

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->totalPrice:[Ljava/lang/String;

    aget-object v3, v3, v2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v2

    const-string v3, "PaymentCheckoutPay"

    invoke-static {v3, v1, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2908
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->tipLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 2909
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_contacts_inviteBackground:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    .line 2910
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->tipLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v2, v1, :cond_2

    .line 2911
    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->tipLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 2912
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity;->tipAmount:Ljava/lang/Long;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2913
    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v4, v0}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    .line 2914
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_contacts_inviteText:I

    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 2916
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x1fffffff

    and-int/2addr v5, v0

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    .line 2917
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chats_secretName:I

    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2919
    :goto_1
    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 37

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 591
    const-string v3, "public_token"

    iget v0, v1, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const-string v4, "Test "

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 621
    :pswitch_0
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/messenger/R$string;->PaymentPassword:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 614
    :pswitch_1
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->test:Z

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lorg/telegram/messenger/R$string;->PaymentReceipt:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 617
    :cond_0
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/messenger/R$string;->PaymentReceipt:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 607
    :pswitch_2
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->test:Z

    if-eqz v0, :cond_1

    .line 608
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lorg/telegram/messenger/R$string;->PaymentCheckout:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 610
    :cond_1
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/messenger/R$string;->PaymentCheckout:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 600
    :pswitch_3
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentFormMethod:Lorg/telegram/tgnet/TLRPC$TL_paymentFormMethod;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentFormMethod;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 601
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentFormMethod:Lorg/telegram/tgnet/TLRPC$TL_paymentFormMethod;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_paymentFormMethod;->title:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 603
    :cond_2
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/messenger/R$string;->PaymentCardInfo:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 596
    :pswitch_4
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/messenger/R$string;->PaymentShippingMethod:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 593
    :pswitch_5
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/messenger/R$string;->PaymentShippingInfo:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 625
    :goto_0
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 626
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 628
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v4, Lorg/telegram/ui/PaymentFormActivity$1;

    invoke-direct {v4, v1}, Lorg/telegram/ui/PaymentFormActivity$1;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 671
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 673
    iget v4, v1, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v5, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    const/4 v8, 0x6

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, -0x1

    if-eqz v4, :cond_3

    if-eq v4, v6, :cond_3

    if-eq v4, v11, :cond_3

    if-eq v4, v10, :cond_3

    if-eq v4, v9, :cond_3

    if-eq v4, v8, :cond_3

    goto :goto_1

    .line 680
    :cond_3
    sget v4, Lorg/telegram/messenger/R$drawable;->ic_ab_done:I

    const/high16 v13, 0x42600000    # 56.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    sget v14, Lorg/telegram/messenger/R$string;->Done:I

    invoke-static {v14}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v6, v4, v13, v14}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(IIILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 681
    new-instance v0, Lorg/telegram/ui/Components/ContextProgressView;

    invoke-direct {v0, v2, v6}, Lorg/telegram/ui/Components/ContextProgressView;-><init>(Landroid/content/Context;I)V

    iput-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    .line 682
    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 683
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const v4, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v4}, Landroid/view/View;->setScaleX(F)V

    .line 684
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setScaleY(F)V

    .line 685
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    invoke-virtual {v0, v9}, Lorg/telegram/ui/Components/ContextProgressView;->setVisibility(I)V

    .line 686
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    invoke-static {v12, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v0, v4, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 690
    :goto_1
    new-instance v13, Landroid/widget/FrameLayout;

    invoke-direct {v13, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v13, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 692
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    invoke-virtual {v13, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 694
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, v2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->scrollView:Landroid/widget/ScrollView;

    .line 695
    invoke-virtual {v0, v6}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 696
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->scrollView:Landroid/widget/ScrollView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-static {v0, v4}, Lorg/telegram/messenger/AndroidUtilities;->setScrollViewEdgeEffectColor(Landroid/widget/ScrollView;I)V

    .line 697
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->scrollView:Landroid/widget/ScrollView;

    iget v4, v1, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    if-ne v4, v9, :cond_4

    const/high16 v5, 0x42400000    # 48.0f

    :cond_4
    move/from16 v20, v5

    const/4 v14, -0x1

    const/high16 v15, -0x40800000    # -1.0f

    const/16 v16, 0x33

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v13, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 699
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    .line 700
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 701
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 702
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->scrollView:Landroid/widget/ScrollView;

    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v15, -0x2

    invoke-direct {v5, v12, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4, v5}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 704
    iget v0, v1, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/high16 v17, 0x40c00000    # 6.0f

    move/from16 v18, v11

    const/high16 v19, 0x41a00000    # 20.0f

    const-string v11, ""

    move/from16 v23, v6

    const/16 v7, 0x8

    if-nez v0, :cond_35

    .line 705
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 706
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 708
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string v4, "countries.txt"

    invoke-virtual {v6, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 710
    :goto_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 711
    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 712
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->countriesArray:Ljava/util/ArrayList;

    aget-object v6, v4, v18

    invoke-virtual {v5, v14, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 713
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->countriesMap:Ljava/util/HashMap;

    aget-object v6, v4, v18

    aget-object v9, v4, v14

    invoke-virtual {v5, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->codesMap:Ljava/util/HashMap;

    aget-object v6, v4, v14

    aget-object v9, v4, v18

    invoke-virtual {v5, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    aget-object v5, v4, v23

    aget-object v6, v4, v18

    invoke-virtual {v13, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    array-length v5, v4

    if-le v5, v10, :cond_5

    .line 717
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->phoneFormatMap:Ljava/util/HashMap;

    aget-object v6, v4, v14

    aget-object v9, v4, v10

    invoke-virtual {v5, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_4

    .line 719
    :cond_5
    :goto_3
    aget-object v5, v4, v23

    aget-object v4, v4, v18

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 721
    :cond_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 723
    :goto_4
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 726
    :goto_5
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->countriesArray:Ljava/util/ArrayList;

    new-instance v4, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda35;

    invoke-direct {v4}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda35;-><init>()V

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/16 v0, 0xa

    .line 728
    new-array v4, v0, [Lorg/telegram/ui/Components/EditTextBoldCursor;

    iput-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    move v4, v14

    :goto_6
    if-ge v4, v0, :cond_22

    if-nez v4, :cond_7

    .line 731
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    new-instance v6, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v9, v1, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v6, v2, v9}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v6, v5, v14

    .line 732
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v5, v5, v14

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v1, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 733
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v5, v5, v14

    sget v6, Lorg/telegram/messenger/R$string;->PaymentShippingAddress:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    .line 734
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v6, v1, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v6, v6, v14

    invoke-static {v12, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v5, v6, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_7

    :cond_7
    if-ne v4, v8, :cond_8

    .line 736
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    new-instance v6, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object v9, v1, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v6, v2, v9}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v6, v5, v14

    .line 737
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v6, v1, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    aget-object v6, v6, v14

    invoke-static {v12, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v5, v6, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 739
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    new-instance v6, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v9, v1, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v6, v2, v9}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v6, v5, v23

    .line 740
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v5, v5, v23

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v1, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 741
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v5, v5, v23

    sget v6, Lorg/telegram/messenger/R$string;->PaymentShippingReceiver:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    .line 742
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v6, v1, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v6, v6, v23

    invoke-static {v12, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v5, v6, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    :goto_7
    if-ne v4, v7, :cond_a

    .line 746
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 747
    invoke-virtual {v5, v14}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 748
    invoke-virtual {v5, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 749
    iget-object v6, v1, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    const/16 v9, 0x32

    invoke-static {v12, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v6, v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 750
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_8
    move/from16 v27, v8

    :cond_9
    :goto_9
    const/16 v6, 0x9

    goto/16 :goto_d

    :cond_a
    const/16 v5, 0x9

    if-ne v4, v5, :cond_b

    .line 752
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v7

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/view/ViewGroup;

    goto :goto_8

    .line 754
    :cond_b
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 755
    invoke-virtual {v5, v14}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 756
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    const/16 v9, 0x32

    invoke-static {v12, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 757
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 v6, 0x5

    if-eq v4, v6, :cond_c

    move/from16 v6, v23

    goto :goto_a

    :cond_c
    move v6, v14

    :goto_a
    if-eqz v6, :cond_e

    const/4 v9, 0x7

    if-ne v4, v9, :cond_d

    .line 761
    iget-object v9, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v9, v9, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_requested:Z

    if-nez v9, :cond_d

    move/from16 v27, v8

    :goto_b
    move v6, v14

    goto :goto_c

    :cond_d
    if-ne v4, v8, :cond_e

    .line 763
    iget-object v9, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    move/from16 v27, v8

    iget-boolean v8, v9, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_requested:Z

    if-nez v8, :cond_f

    iget-boolean v8, v9, Lorg/telegram/tgnet/TLRPC$TL_invoice;->email_requested:Z

    if-nez v8, :cond_f

    goto :goto_b

    :cond_e
    move/from16 v27, v8

    :cond_f
    :goto_c
    if-eqz v6, :cond_9

    .line 768
    new-instance v6, Lorg/telegram/ui/PaymentFormActivity$2;

    invoke-direct {v6, v1, v2}, Lorg/telegram/ui/PaymentFormActivity$2;-><init>(Lorg/telegram/ui/PaymentFormActivity;Landroid/content/Context;)V

    .line 774
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 775
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->dividers:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 776
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    move/from16 v9, v23

    const/16 v8, 0x53

    invoke-direct {v0, v12, v9, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v5, v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_9

    :goto_d
    if-ne v4, v6, :cond_10

    .line 781
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v6, Lorg/telegram/ui/Components/HintEditText;

    invoke-direct {v6, v2}, Lorg/telegram/ui/Components/HintEditText;-><init>(Landroid/content/Context;)V

    aput-object v6, v0, v4

    goto :goto_e

    .line 783
    :cond_10
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v6, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {v6, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    aput-object v6, v0, v4

    .line 785
    :goto_e
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 786
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v4

    const/high16 v6, 0x41800000    # 16.0f

    const/4 v9, 0x1

    invoke-virtual {v0, v9, v6}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    .line 787
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v4

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    invoke-virtual {v1, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 788
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v4

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {v1, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v8

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 789
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v4

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 790
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v4

    invoke-virtual {v1, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v8

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 791
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v4

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    .line 792
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v4

    const/high16 v8, 0x3fc00000    # 1.5f

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    const/4 v8, 0x4

    if-ne v4, v8, :cond_11

    .line 794
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v4

    new-instance v8, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda15;

    invoke-direct {v8, v1}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v0, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 810
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v4

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setInputType(I)V

    :cond_11
    const/16 v8, 0x9

    if-eq v4, v8, :cond_14

    if-ne v4, v7, :cond_12

    goto :goto_f

    :cond_12
    const/4 v9, 0x7

    if-ne v4, v9, :cond_13

    .line 815
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v4

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setInputType(I)V

    goto :goto_10

    .line 817
    :cond_13
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v4

    const/16 v8, 0x4001

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setInputType(I)V

    goto :goto_10

    .line 813
    :cond_14
    :goto_f
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v4

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setInputType(I)V

    .line 819
    :goto_10
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v4

    const v8, 0x10000005

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setImeOptions(I)V

    packed-switch v4, :pswitch_data_1

    goto/16 :goto_12

    .line 828
    :pswitch_6
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v4

    sget v8, Lorg/telegram/messenger/R$string;->PaymentShippingEmailPlaceholder:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 829
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-eqz v0, :cond_16

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->email:Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 830
    iget-object v8, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v8, v8, v4

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_12

    .line 822
    :pswitch_7
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v4

    sget v8, Lorg/telegram/messenger/R$string;->PaymentShippingName:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 823
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-eqz v0, :cond_16

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 824
    iget-object v8, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v8, v8, v4

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_12

    .line 866
    :pswitch_8
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v4

    sget v8, Lorg/telegram/messenger/R$string;->PaymentShippingZipPlaceholder:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 867
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-eqz v0, :cond_16

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    if-eqz v0, :cond_16

    .line 868
    iget-object v8, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v8, v8, v4

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->post_code:Ljava/lang/String;

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_12

    .line 858
    :pswitch_9
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v4

    sget v8, Lorg/telegram/messenger/R$string;->PaymentShippingCountry:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 859
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-eqz v0, :cond_16

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    if-eqz v0, :cond_16

    .line 860
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->country_iso2:Ljava/lang/String;

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 861
    iget-object v8, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$PaymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->country_iso2:Ljava/lang/String;

    iput-object v8, v1, Lorg/telegram/ui/PaymentFormActivity;->countryName:Ljava/lang/String;

    .line 862
    iget-object v9, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v9, v9, v4

    if-eqz v0, :cond_15

    goto :goto_11

    :cond_15
    move-object v0, v8

    :goto_11
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_12

    .line 852
    :pswitch_a
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v4

    sget v8, Lorg/telegram/messenger/R$string;->PaymentShippingStatePlaceholder:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 853
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-eqz v0, :cond_16

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    if-eqz v0, :cond_16

    .line 854
    iget-object v8, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v8, v8, v4

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->state:Ljava/lang/String;

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_12

    .line 846
    :pswitch_b
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v4

    sget v8, Lorg/telegram/messenger/R$string;->PaymentShippingCityPlaceholder:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 847
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-eqz v0, :cond_16

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    if-eqz v0, :cond_16

    .line 848
    iget-object v8, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v8, v8, v4

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->city:Ljava/lang/String;

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_12

    .line 840
    :pswitch_c
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v4

    sget v8, Lorg/telegram/messenger/R$string;->PaymentShippingAddress2Placeholder:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 841
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-eqz v0, :cond_16

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    if-eqz v0, :cond_16

    .line 842
    iget-object v8, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v8, v8, v4

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->street_line2:Ljava/lang/String;

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_12

    .line 834
    :pswitch_d
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v4

    sget v8, Lorg/telegram/messenger/R$string;->PaymentShippingAddress1Placeholder:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 835
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-eqz v0, :cond_16

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    if-eqz v0, :cond_16

    .line 836
    iget-object v8, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v8, v8, v4

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->street_line1:Ljava/lang/String;

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 872
    :cond_16
    :goto_12
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v8

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    const/16 v0, 0x13

    if-ne v4, v7, :cond_17

    .line 875
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v8, v1, Lorg/telegram/ui/PaymentFormActivity;->textView:Landroid/widget/TextView;

    .line 876
    const-string v9, "+"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 877
    iget-object v8, v1, Lorg/telegram/ui/PaymentFormActivity;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v6

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 878
    iget-object v6, v1, Lorg/telegram/ui/PaymentFormActivity;->textView:Landroid/widget/TextView;

    const/high16 v8, 0x41800000    # 16.0f

    const/4 v9, 0x1

    invoke-virtual {v6, v9, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 879
    iget-object v6, v1, Lorg/telegram/ui/PaymentFormActivity;->textView:Landroid/widget/TextView;

    const/16 v32, 0x0

    const/high16 v33, 0x40c00000    # 6.0f

    const/16 v28, -0x2

    const/16 v29, -0x2

    const/high16 v30, 0x41a80000    # 21.0f

    const/high16 v31, 0x41400000    # 12.0f

    invoke-static/range {v28 .. v33}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 881
    iget-object v6, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v6, v6, v4

    const/high16 v8, 0x41200000    # 10.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v6, v8, v14, v14, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 882
    iget-object v6, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v6, v6, v4

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 884
    new-instance v0, Landroid/text/InputFilter$LengthFilter;

    const/4 v6, 0x5

    invoke-direct {v0, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v9, 0x1

    new-array v6, v9, [Landroid/text/InputFilter;

    aput-object v0, v6, v14

    .line 885
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v4

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 886
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v4

    const/high16 v32, 0x41a80000    # 21.0f

    const/16 v28, 0x37

    const/16 v30, 0x0

    invoke-static/range {v28 .. v33}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 887
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v4

    new-instance v5, Lorg/telegram/ui/PaymentFormActivity$3;

    invoke-direct {v5, v1}, Lorg/telegram/ui/PaymentFormActivity$3;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_14

    :cond_17
    const/16 v6, 0x9

    if-ne v4, v6, :cond_18

    .line 960
    iget-object v6, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v6, v6, v4

    invoke-virtual {v6, v14, v14, v14, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 961
    iget-object v6, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v6, v6, v4

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 962
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v4

    const/high16 v32, 0x41a80000    # 21.0f

    const/high16 v33, 0x40c00000    # 6.0f

    const/16 v28, -0x1

    const/16 v29, -0x2

    const/16 v30, 0x0

    const/high16 v31, 0x41400000    # 12.0f

    invoke-static/range {v28 .. v33}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 963
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v4

    new-instance v5, Lorg/telegram/ui/PaymentFormActivity$4;

    invoke-direct {v5, v1}, Lorg/telegram/ui/PaymentFormActivity$4;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_14

    .line 1038
    :cond_18
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v4

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v0, v14, v14, v14, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 1039
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v4

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_19

    const/4 v6, 0x5

    goto :goto_13

    :cond_19
    move v6, v10

    :goto_13
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 1040
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v4

    const/high16 v33, 0x41a80000    # 21.0f

    const/high16 v34, 0x40c00000    # 6.0f

    const/16 v28, -0x1

    const/high16 v29, -0x40000000    # -2.0f

    const/16 v30, 0x33

    const/high16 v31, 0x41a80000    # 21.0f

    const/high16 v32, 0x41400000    # 12.0f

    invoke-static/range {v28 .. v34}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1043
    :goto_14
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v4

    new-instance v5, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda22;

    invoke-direct {v5, v1}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const/16 v6, 0x9

    if-ne v4, v6, :cond_21

    .line 1061
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v5, v0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->email_to_provider:Z

    if-nez v5, :cond_1b

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_to_provider:Z

    if-eqz v0, :cond_1a

    goto :goto_15

    .line 1087
    :cond_1a
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    new-instance v5, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object v6, v1, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v5, v2, v6}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/16 v23, 0x1

    aput-object v5, v0, v23

    .line 1088
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    aget-object v5, v5, v23

    invoke-static {v12, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move/from16 v28, v10

    const/4 v9, 0x1

    goto/16 :goto_18

    :cond_1b
    :goto_15
    move v5, v14

    const/4 v0, 0x0

    .line 1063
    :goto_16
    iget-object v6, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$PaymentForm;->users:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1d

    .line 1064
    iget-object v6, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$PaymentForm;->users:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$User;

    .line 1065
    iget-wide v8, v6, Lorg/telegram/tgnet/TLRPC$User;->id:J

    move/from16 v28, v10

    iget-object v10, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    move-wide/from16 v30, v8

    iget-wide v7, v10, Lorg/telegram/tgnet/TLRPC$PaymentForm;->provider_id:J

    cmp-long v7, v30, v7

    if-nez v7, :cond_1c

    move-object v0, v6

    :cond_1c
    add-int/lit8 v5, v5, 0x1

    move/from16 v10, v28

    const/16 v7, 0x8

    goto :goto_16

    :cond_1d
    move/from16 v28, v10

    if-eqz v0, :cond_1e

    .line 1071
    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v5, v0}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :cond_1e
    move-object v0, v11

    .line 1076
    :goto_17
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    new-instance v6, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v7, v1, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v6, v2, v7}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v9, 0x1

    aput-object v6, v5, v9

    .line 1077
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v5, v5, v9

    sget v6, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v2, v6, v7}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1078
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v6, v1, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v6, v6, v9

    invoke-static {v12, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1079
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$TL_invoice;->email_to_provider:Z

    if-eqz v6, :cond_1f

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_to_provider:Z

    if-eqz v5, :cond_1f

    .line 1080
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v5, v5, v9

    sget v6, Lorg/telegram/messenger/R$string;->PaymentPhoneEmailToProvider:I

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v0, v7, v14

    const-string v0, "PaymentPhoneEmailToProvider"

    invoke-static {v0, v6, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_18

    :cond_1f
    if-eqz v6, :cond_20

    .line 1082
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v5, v5, v9

    sget v6, Lorg/telegram/messenger/R$string;->PaymentEmailToProvider:I

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v0, v7, v14

    const-string v0, "PaymentEmailToProvider"

    invoke-static {v0, v6, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_18

    .line 1084
    :cond_20
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v5, v5, v9

    sget v6, Lorg/telegram/messenger/R$string;->PaymentPhoneToProvider:I

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v0, v7, v14

    const-string v0, "PaymentPhoneToProvider"

    invoke-static {v0, v6, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 1091
    :goto_18
    new-instance v0, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v2, v5}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    .line 1092
    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1093
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    sget v5, Lorg/telegram/messenger/R$string;->PaymentShippingSave:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, v1, Lorg/telegram/ui/PaymentFormActivity;->saveShippingInfo:Z

    invoke-virtual {v0, v5, v6, v14}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    .line 1094
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-static {v12, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1095
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    new-instance v5, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda23;

    invoke-direct {v5, v1}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1100
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    new-instance v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v6, v1, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v5, v2, v6}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v5, v0, v14

    .line 1101
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v0, v0, v14

    sget v5, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v2, v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1102
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v0, v0, v14

    sget v5, Lorg/telegram/messenger/R$string;->PaymentShippingSaveInfo:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 1103
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v5, v5, v14

    invoke-static {v12, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_19

    :cond_21
    move/from16 v28, v10

    :goto_19
    add-int/lit8 v4, v4, 0x1

    move/from16 v8, v27

    move/from16 v10, v28

    const/16 v0, 0xa

    const/16 v7, 0x8

    const/16 v23, 0x1

    goto/16 :goto_6

    :cond_22
    move/from16 v27, v8

    move/from16 v28, v10

    .line 1107
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->name_requested:Z

    if-nez v0, :cond_23

    .line 1108
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v27

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1a

    :cond_23
    const/16 v2, 0x8

    .line 1110
    :goto_1a
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_requested:Z

    if-nez v0, :cond_24

    .line 1111
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1113
    :cond_24
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->email_requested:Z

    if-nez v0, :cond_25

    .line 1114
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/16 v24, 0x7

    aget-object v0, v0, v24

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1117
    :cond_25
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_requested:Z

    if-eqz v2, :cond_26

    .line 1118
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/16 v26, 0x9

    aget-object v0, v0, v26

    const v2, 0x10000006

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setImeOptions(I)V

    goto :goto_1b

    :cond_26
    const v2, 0x10000006

    .line 1119
    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->email_requested:Z

    if-eqz v4, :cond_27

    .line 1120
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/16 v24, 0x7

    aget-object v0, v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setImeOptions(I)V

    goto :goto_1b

    .line 1121
    :cond_27
    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->name_requested:Z

    if-eqz v0, :cond_28

    .line 1122
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v27

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setImeOptions(I)V

    goto :goto_1b

    .line 1124
    :cond_28
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/16 v25, 0x5

    aget-object v0, v0, v25

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 1127
    :goto_1b
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/16 v23, 0x1

    aget-object v0, v0, v23

    if-eqz v0, :cond_2b

    .line 1128
    iget-object v2, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_invoice;->name_requested:Z

    if-nez v4, :cond_2a

    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_requested:Z

    if-nez v4, :cond_2a

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_invoice;->email_requested:Z

    if-eqz v2, :cond_29

    goto :goto_1c

    :cond_29
    const/16 v2, 0x8

    goto :goto_1d

    :cond_2a
    :goto_1c
    move v2, v14

    :goto_1d
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_20

    .line 1129
    :cond_2b
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/16 v23, 0x1

    aget-object v0, v0, v23

    if-eqz v0, :cond_2e

    .line 1130
    iget-object v2, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_invoice;->name_requested:Z

    if-nez v4, :cond_2d

    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_requested:Z

    if-nez v4, :cond_2d

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_invoice;->email_requested:Z

    if-eqz v2, :cond_2c

    goto :goto_1e

    :cond_2c
    const/16 v2, 0x8

    goto :goto_1f

    :cond_2d
    :goto_1e
    move v2, v14

    :goto_1f
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1132
    :cond_2e
    :goto_20
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    const/16 v23, 0x1

    aget-object v0, v0, v23

    iget-object v2, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_invoice;->name_requested:Z

    if-nez v4, :cond_30

    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_requested:Z

    if-nez v4, :cond_30

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_invoice;->email_requested:Z

    if-eqz v2, :cond_2f

    goto :goto_21

    :cond_2f
    const/16 v2, 0x8

    goto :goto_22

    :cond_30
    :goto_21
    move v2, v14

    :goto_22
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1133
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->shipping_address_requested:Z

    if-nez v0, :cond_31

    .line 1134
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v0, v0, v14

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1135
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    aget-object v0, v0, v14

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1136
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v14

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1137
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/16 v23, 0x1

    aget-object v0, v0, v23

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1138
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v18

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1139
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v28

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1140
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/16 v21, 0x4

    aget-object v0, v0, v21

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1141
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/16 v25, 0x5

    aget-object v0, v0, v25

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1144
    :cond_31
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-eqz v0, :cond_32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->phone:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 1145
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->phone:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/PaymentFormActivity;->fillNumber(Ljava/lang/String;)V

    goto :goto_23

    :cond_32
    const/4 v8, 0x0

    .line 1147
    invoke-virtual {v1, v8}, Lorg/telegram/ui/PaymentFormActivity;->fillNumber(Ljava/lang/String;)V

    .line 1150
    :goto_23
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/16 v29, 0x8

    aget-object v0, v0, v29

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-nez v0, :cond_ae

    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_requested:Z

    if-eqz v2, :cond_ae

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-eqz v0, :cond_33

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->phone:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 1154
    :cond_33
    :try_start_1
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_34

    .line 1156
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_24

    :catch_1
    move-exception v0

    .line 1159
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_34
    const/4 v6, 0x0

    :goto_24
    if-eqz v6, :cond_ae

    .line 1163
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_ae

    .line 1165
    iget-object v2, v1, Lorg/telegram/ui/PaymentFormActivity;->countriesArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-eq v2, v12, :cond_ae

    .line 1167
    iget-object v2, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/16 v29, 0x8

    aget-object v2, v2, v29

    iget-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->countriesMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6d

    :cond_35
    move/from16 v27, v8

    move/from16 v28, v10

    move/from16 v4, v18

    const/16 v26, 0x9

    if-ne v0, v4, :cond_5f

    .line 1173
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->native_params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    if-eqz v0, :cond_37

    .line 1175
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PaymentForm;->native_params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1176
    const-string v4, "google_pay_public_key"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1177
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_36

    .line 1178
    iput-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->googlePayPublicKey:Ljava/lang/String;

    goto :goto_25

    :catch_2
    move-exception v0

    goto :goto_26

    .line 1180
    :cond_36
    :goto_25
    const-string v4, "acquirer_bank_country"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->googlePayCountryCode:Ljava/lang/String;

    .line 1181
    const-string v4, "gpay_parameters"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->googlePayParameters:Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_27

    .line 1183
    :goto_26
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1186
    :cond_37
    :goto_27
    iget-boolean v0, v1, Lorg/telegram/ui/PaymentFormActivity;->isWebView:Z

    if-nez v0, :cond_5c

    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentFormMethod:Lorg/telegram/tgnet/TLRPC$TL_paymentFormMethod;

    if-eqz v0, :cond_38

    goto/16 :goto_3c

    .line 1312
    :cond_38
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->native_params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    if-eqz v0, :cond_3a

    .line 1314
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PaymentForm;->native_params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    .line 1316
    :try_start_4
    const-string v4, "need_country"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v1, Lorg/telegram/ui/PaymentFormActivity;->need_card_country:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_28

    .line 1318
    :catch_3
    :try_start_5
    iput-boolean v14, v1, Lorg/telegram/ui/PaymentFormActivity;->need_card_country:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 1321
    :goto_28
    :try_start_6
    const-string v4, "need_zip"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v1, Lorg/telegram/ui/PaymentFormActivity;->need_card_postcode:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_29

    .line 1323
    :catch_4
    :try_start_7
    iput-boolean v14, v1, Lorg/telegram/ui/PaymentFormActivity;->need_card_postcode:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 1326
    :goto_29
    :try_start_8
    const-string v4, "need_cardholder_name"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v1, Lorg/telegram/ui/PaymentFormActivity;->need_card_name:Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_2a

    .line 1328
    :catch_5
    :try_start_9
    iput-boolean v14, v1, Lorg/telegram/ui/PaymentFormActivity;->need_card_name:Z

    .line 1330
    :goto_2a
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 1331
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->providerApiKey:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_2b

    :catch_6
    move-exception v0

    goto :goto_2c

    .line 1334
    :cond_39
    :try_start_a
    const-string v3, "publishable_key"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->providerApiKey:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_2b

    .line 1336
    :catch_7
    :try_start_b
    iput-object v11, v1, Lorg/telegram/ui/PaymentFormActivity;->providerApiKey:Ljava/lang/String;

    .line 1339
    :goto_2b
    const-string v3, "google_pay_hidden"

    invoke-virtual {v0, v3, v14}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/16 v23, 0x1

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, v1, Lorg/telegram/ui/PaymentFormActivity;->initGooglePay:Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_2d

    .line 1341
    :goto_2c
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1345
    :cond_3a
    :goto_2d
    iget-boolean v0, v1, Lorg/telegram/ui/PaymentFormActivity;->initGooglePay:Z

    if-eqz v0, :cond_3d

    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->providerApiKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3b

    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->native_provider:Ljava/lang/String;

    const-string v3, "stripe"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    :cond_3b
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->googlePayParameters:Lorg/json/JSONObject;

    if-eqz v0, :cond_3d

    .line 1346
    :cond_3c
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/PaymentFormActivity;->initGooglePay(Landroid/content/Context;)V

    :cond_3d
    move/from16 v3, v27

    .line 1349
    new-array v0, v3, [Lorg/telegram/ui/Components/EditTextBoldCursor;

    iput-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    move v0, v14

    :goto_2e
    if-ge v0, v3, :cond_59

    if-nez v0, :cond_3f

    .line 1352
    iget-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    new-instance v4, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v4, v2, v5}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v4, v3, v14

    .line 1353
    iget-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v3, v3, v14

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1354
    iget-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v3, v3, v14

    sget v4, Lorg/telegram/messenger/R$string;->PaymentCardTitle:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    .line 1355
    iget-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v4, v4, v14

    invoke-static {v12, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3e
    :goto_2f
    move/from16 v3, v28

    goto :goto_30

    :cond_3f
    const/4 v8, 0x4

    if-ne v0, v8, :cond_3e

    .line 1357
    iget-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    new-instance v4, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v4, v2, v5}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/16 v23, 0x1

    aput-object v4, v3, v23

    .line 1358
    iget-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v3, v3, v23

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1359
    iget-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v3, v3, v23

    sget v4, Lorg/telegram/messenger/R$string;->PaymentBillingAddress:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    .line 1360
    iget-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v4, v4, v23

    invoke-static {v12, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2f

    :goto_30
    if-eq v0, v3, :cond_41

    const/4 v6, 0x5

    if-eq v0, v6, :cond_41

    const/4 v8, 0x4

    if-ne v0, v8, :cond_40

    .line 1363
    iget-boolean v3, v1, Lorg/telegram/ui/PaymentFormActivity;->need_card_postcode:Z

    if-eqz v3, :cond_41

    :cond_40
    const/4 v3, 0x1

    goto :goto_31

    :cond_41
    move v3, v14

    .line 1364
    :goto_31
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1365
    invoke-virtual {v4, v14}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 1366
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1367
    iget-object v6, v1, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    const/16 v9, 0x32

    invoke-static {v12, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1370
    iget-object v6, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v7, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {v7, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    aput-object v7, v6, v0

    .line 1371
    iget-object v6, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v6, v6, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1372
    iget-object v6, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v6, v6, v0

    const/high16 v8, 0x41800000    # 16.0f

    const/4 v9, 0x1

    invoke-virtual {v6, v9, v8}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    .line 1373
    iget-object v6, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v6, v6, v0

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    invoke-virtual {v1, v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 1374
    iget-object v6, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v6, v6, v0

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {v1, v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v8

    invoke-virtual {v6, v8}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 1375
    iget-object v6, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v6, v6, v0

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1376
    iget-object v6, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v6, v6, v0

    invoke-virtual {v1, v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 1377
    iget-object v6, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v6, v6, v0

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    .line 1378
    iget-object v6, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v6, v6, v0

    const/high16 v8, 0x3fc00000    # 1.5f

    invoke-virtual {v6, v8}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    const/4 v6, 0x3

    if-ne v0, v6, :cond_42

    .line 1381
    new-instance v7, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v7, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v9, 0x1

    new-array v6, v9, [Landroid/text/InputFilter;

    aput-object v7, v6, v14

    .line 1382
    iget-object v7, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v7, v7, v0

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 1383
    iget-object v6, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v6, v6, v0

    const/16 v7, 0x82

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setInputType(I)V

    .line 1384
    iget-object v6, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v6, v6, v0

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1385
    iget-object v6, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v6, v6, v0

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :goto_32
    const/16 v8, 0x4001

    goto :goto_33

    :cond_42
    if-nez v0, :cond_43

    .line 1387
    iget-object v6, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v6, v6, v0

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setInputType(I)V

    goto :goto_32

    :cond_43
    const/4 v8, 0x4

    if-ne v0, v8, :cond_44

    .line 1389
    iget-object v6, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v6, v6, v0

    new-instance v7, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda25;

    invoke-direct {v7, v1}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1404
    iget-object v6, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v6, v6, v0

    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setInputType(I)V

    goto :goto_32

    :cond_44
    const/4 v9, 0x1

    if-ne v0, v9, :cond_45

    .line 1406
    iget-object v6, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v6, v6, v0

    const/16 v7, 0x4002

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setInputType(I)V

    goto :goto_32

    :cond_45
    const/4 v6, 0x2

    if-ne v0, v6, :cond_46

    .line 1408
    iget-object v6, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v6, v6, v0

    const/16 v7, 0x1001

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setInputType(I)V

    goto :goto_32

    .line 1410
    :cond_46
    iget-object v6, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v6, v6, v0

    const/16 v8, 0x4001

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setInputType(I)V

    .line 1412
    :goto_33
    iget-object v6, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v6, v6, v0

    const v7, 0x10000005

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setImeOptions(I)V

    if-eqz v0, :cond_4c

    const/4 v9, 0x1

    if-eq v0, v9, :cond_4b

    const/4 v6, 0x2

    if-eq v0, v6, :cond_4a

    const/4 v6, 0x3

    if-eq v0, v6, :cond_49

    const/4 v6, 0x4

    if-eq v0, v6, :cond_48

    const/4 v6, 0x5

    if-eq v0, v6, :cond_47

    goto :goto_34

    .line 1427
    :cond_47
    iget-object v6, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v6, v6, v0

    sget v7, Lorg/telegram/messenger/R$string;->PaymentShippingZipPlaceholder:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_34

    .line 1430
    :cond_48
    iget-object v6, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v6, v6, v0

    sget v7, Lorg/telegram/messenger/R$string;->PaymentShippingCountry:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_34

    .line 1418
    :cond_49
    iget-object v6, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v6, v6, v0

    sget v7, Lorg/telegram/messenger/R$string;->PaymentCardCvv:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_34

    .line 1424
    :cond_4a
    iget-object v6, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v6, v6, v0

    sget v7, Lorg/telegram/messenger/R$string;->PaymentCardName:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_34

    .line 1421
    :cond_4b
    iget-object v6, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v6, v6, v0

    sget v7, Lorg/telegram/messenger/R$string;->PaymentCardExpireDate:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_34

    .line 1415
    :cond_4c
    iget-object v6, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v6, v6, v0

    sget v7, Lorg/telegram/messenger/R$string;->PaymentCardNumber:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    :goto_34
    if-nez v0, :cond_4d

    .line 1435
    iget-object v6, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v6, v6, v0

    new-instance v7, Lorg/telegram/ui/PaymentFormActivity$7;

    invoke-direct {v7, v1}, Lorg/telegram/ui/PaymentFormActivity$7;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_35

    :cond_4d
    const/4 v9, 0x1

    if-ne v0, v9, :cond_4e

    .line 1589
    iget-object v6, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v6, v6, v0

    new-instance v7, Lorg/telegram/ui/PaymentFormActivity$8;

    invoke-direct {v7, v1}, Lorg/telegram/ui/PaymentFormActivity$8;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1707
    :cond_4e
    :goto_35
    iget-object v6, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v6, v6, v0

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v6, v14, v14, v14, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 1708
    iget-object v6, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v6, v6, v0

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_4f

    const/4 v7, 0x5

    goto :goto_36

    :cond_4f
    const/4 v7, 0x3

    :goto_36
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 1709
    iget-object v6, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v6, v6, v0

    const/high16 v35, 0x41a80000    # 21.0f

    const/high16 v36, 0x40c00000    # 6.0f

    const/16 v30, -0x1

    const/high16 v31, -0x40000000    # -2.0f

    const/16 v32, 0x33

    const/high16 v33, 0x41a80000    # 21.0f

    const/high16 v34, 0x41400000    # 12.0f

    invoke-static/range {v30 .. v36}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1711
    iget-object v6, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v6, v6, v0

    new-instance v7, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda26;

    invoke-direct {v7, v1}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const/4 v6, 0x3

    if-ne v0, v6, :cond_50

    .line 1732
    iget-object v6, v1, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    new-instance v7, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object v9, v1, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v7, v2, v9}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v7, v6, v14

    .line 1733
    iget-object v6, v1, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v7, v1, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    aget-object v7, v7, v14

    invoke-static {v12, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_38

    :cond_50
    const/4 v6, 0x5

    if-ne v0, v6, :cond_51

    .line 1735
    iget-object v6, v1, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    new-instance v7, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object v9, v1, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v7, v2, v9}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/16 v18, 0x2

    aput-object v7, v6, v18

    .line 1736
    iget-object v6, v1, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v7, v1, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    aget-object v7, v7, v18

    invoke-static {v12, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1738
    new-instance v6, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object v7, v1, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v6, v2, v7}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v6, v1, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    const/16 v23, 0x1

    .line 1739
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1740
    iget-object v6, v1, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    sget v7, Lorg/telegram/messenger/R$string;->PaymentCardSavePaymentInformation:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-boolean v9, v1, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    invoke-virtual {v6, v7, v9, v14}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    .line 1741
    iget-object v6, v1, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v7, v1, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-static {v12, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1742
    iget-object v6, v1, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    new-instance v7, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda27;

    invoke-direct {v7, v1}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1747
    iget-object v6, v1, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    new-instance v7, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v9, v1, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v7, v2, v9}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v7, v6, v14

    .line 1748
    iget-object v6, v1, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v6, v6, v14

    sget v7, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v2, v7, v9}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1749
    invoke-direct {v1}, Lorg/telegram/ui/PaymentFormActivity;->updateSavePaymentField()V

    .line 1750
    iget-object v6, v1, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v7, v1, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v7, v7, v14

    invoke-static {v12, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_38

    :cond_51
    if-nez v0, :cond_53

    .line 1752
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/PaymentFormActivity;->createGooglePayButton(Landroid/content/Context;)V

    .line 1753
    iget-object v6, v1, Lorg/telegram/ui/PaymentFormActivity;->googlePayContainer:Landroid/widget/FrameLayout;

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_52

    const/4 v7, 0x3

    goto :goto_37

    :cond_52
    const/4 v7, 0x5

    :goto_37
    or-int/lit8 v32, v7, 0x10

    const/high16 v35, 0x40800000    # 4.0f

    const/16 v36, 0x0

    const/16 v30, -0x2

    const/high16 v31, -0x40000000    # -2.0f

    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-static/range {v30 .. v36}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_53
    :goto_38
    if-eqz v3, :cond_54

    .line 1757
    new-instance v3, Lorg/telegram/ui/PaymentFormActivity$9;

    invoke-direct {v3, v1, v2}, Lorg/telegram/ui/PaymentFormActivity$9;-><init>(Lorg/telegram/ui/PaymentFormActivity;Landroid/content/Context;)V

    .line 1763
    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1764
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->dividers:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1765
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v6, 0x53

    const/4 v9, 0x1

    invoke-direct {v5, v12, v9, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_54
    const/4 v6, 0x4

    if-ne v0, v6, :cond_55

    .line 1768
    iget-boolean v3, v1, Lorg/telegram/ui/PaymentFormActivity;->need_card_country:Z

    if-eqz v3, :cond_56

    :cond_55
    const/4 v6, 0x5

    goto :goto_3a

    :cond_56
    :goto_39
    const/16 v3, 0x8

    goto :goto_3b

    :goto_3a
    if-ne v0, v6, :cond_57

    iget-boolean v3, v1, Lorg/telegram/ui/PaymentFormActivity;->need_card_postcode:Z

    if-eqz v3, :cond_56

    :cond_57
    const/4 v6, 0x2

    if-ne v0, v6, :cond_58

    iget-boolean v3, v1, Lorg/telegram/ui/PaymentFormActivity;->need_card_name:Z

    if-nez v3, :cond_58

    goto :goto_39

    .line 1769
    :goto_3b
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_58
    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x6

    const/16 v28, 0x3

    goto/16 :goto_2e

    .line 1772
    :cond_59
    iget-boolean v0, v1, Lorg/telegram/ui/PaymentFormActivity;->need_card_country:Z

    if-nez v0, :cond_5a

    iget-boolean v0, v1, Lorg/telegram/ui/PaymentFormActivity;->need_card_postcode:Z

    if-nez v0, :cond_5a

    .line 1773
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    const/16 v23, 0x1

    aget-object v0, v0, v23

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1774
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    aget-object v0, v0, v14

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1776
    :cond_5a
    iget-boolean v0, v1, Lorg/telegram/ui/PaymentFormActivity;->need_card_postcode:Z

    if-eqz v0, :cond_5b

    .line 1777
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/16 v25, 0x5

    aget-object v0, v0, v25

    const v2, 0x10000006

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setImeOptions(I)V

    goto/16 :goto_6d

    :cond_5b
    const v2, 0x10000006

    .line 1779
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/16 v28, 0x3

    aget-object v0, v0, v28

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setImeOptions(I)V

    goto/16 :goto_6d

    .line 1187
    :cond_5c
    :goto_3c
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->googlePayPublicKey:Ljava/lang/String;

    if-nez v0, :cond_5d

    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->googlePayParameters:Lorg/json/JSONObject;

    if-eqz v0, :cond_5e

    .line 1188
    :cond_5d
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/PaymentFormActivity;->initGooglePay(Landroid/content/Context;)V

    .line 1190
    :cond_5e
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/PaymentFormActivity;->createGooglePayButton(Landroid/content/Context;)V

    .line 1191
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->googlePayContainer:Landroid/widget/FrameLayout;

    const/16 v9, 0x32

    invoke-static {v12, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v9, 0x1

    .line 1193
    iput-boolean v9, v1, Lorg/telegram/ui/PaymentFormActivity;->webviewLoading:Z

    .line 1194
    invoke-direct {v1, v9, v9}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    .line 1195
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    invoke-virtual {v0, v14}, Lorg/telegram/ui/Components/ContextProgressView;->setVisibility(I)V

    .line 1196
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v14}, Landroid/view/View;->setEnabled(Z)V

    .line 1197
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v8, 0x4

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1198
    invoke-static {v2, v9}, Lorg/telegram/messenger/AndroidUtilities;->checkAndroidTheme(Landroid/content/Context;Z)V

    .line 1199
    new-instance v0, Lorg/telegram/ui/PaymentFormActivity$5;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PaymentFormActivity$5;-><init>(Lorg/telegram/ui/PaymentFormActivity;Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    .line 1211
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1212
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 1214
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 1215
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 1216
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 1217
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 1220
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 1221
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 1222
    iget-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v3, v9}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 1225
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    new-instance v3, Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy;

    const/4 v8, 0x0

    invoke-direct {v3, v1, v8}, Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy;-><init>(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/ui/PaymentFormActivity-IA;)V

    const-string v4, "TelegramWebviewProxy"

    invoke-virtual {v0, v3, v4}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1227
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    new-instance v3, Lorg/telegram/ui/PaymentFormActivity$6;

    invoke-direct {v3, v1, v2}, Lorg/telegram/ui/PaymentFormActivity$6;-><init>(Lorg/telegram/ui/PaymentFormActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1293
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    const/high16 v4, -0x40000000    # -2.0f

    invoke-static {v12, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1295
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    new-instance v3, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v3, v2, v4}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/16 v18, 0x2

    aput-object v3, v0, v18

    .line 1296
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    aget-object v3, v3, v18

    invoke-static {v12, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1298
    new-instance v0, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    const/16 v23, 0x1

    .line 1299
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1300
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    sget v3, Lorg/telegram/messenger/R$string;->PaymentCardSavePaymentInformation:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, v1, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    invoke-virtual {v0, v3, v4, v14}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    .line 1301
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-static {v12, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1302
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    new-instance v3, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda24;

    invoke-direct {v3, v1}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1307
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    new-instance v3, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v3, v2, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v3, v0, v14

    .line 1308
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v0, v0, v14

    sget v3, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1309
    invoke-direct {v1}, Lorg/telegram/ui/PaymentFormActivity;->updateSavePaymentField()V

    .line 1310
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v2, v1, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v2, v2, v14

    invoke-static {v12, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_6d

    :cond_5f
    const/4 v9, 0x1

    if-ne v0, v9, :cond_64

    .line 1783
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;->shipping_options:Ljava/util/ArrayList;

    if-nez v0, :cond_60

    move v0, v14

    goto :goto_3d

    :cond_60
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1784
    :goto_3d
    new-array v3, v0, [Lorg/telegram/ui/Cells/RadioCell;

    iput-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    move v3, v14

    :goto_3e
    if-ge v3, v0, :cond_63

    .line 1786
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;->shipping_options:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    .line 1787
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    new-instance v6, Lorg/telegram/ui/Cells/RadioCell;

    invoke-direct {v6, v2}, Lorg/telegram/ui/Cells/RadioCell;-><init>(Landroid/content/Context;)V

    aput-object v6, v5, v3

    .line 1788
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    aget-object v5, v5, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1789
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    aget-object v5, v5, v3

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1790
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    aget-object v5, v5, v3

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_shippingOption;->prices:Ljava/util/ArrayList;

    invoke-direct {v1, v6}, Lorg/telegram/ui/PaymentFormActivity;->getTotalPriceString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v6

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_shippingOption;->title:Ljava/lang/String;

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    aput-object v6, v8, v14

    aput-object v4, v8, v23

    const-string v4, "%s - %s"

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_61

    const/4 v6, 0x1

    goto :goto_3f

    :cond_61
    move v6, v14

    :goto_3f
    add-int/lit8 v7, v0, -0x1

    if-eq v3, v7, :cond_62

    const/4 v7, 0x1

    goto :goto_40

    :cond_62
    move v7, v14

    :goto_40
    invoke-virtual {v5, v4, v6, v7}, Lorg/telegram/ui/Cells/RadioCell;->setText(Ljava/lang/CharSequence;ZZ)V

    .line 1791
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    aget-object v4, v4, v3

    new-instance v5, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda28;

    invoke-direct {v5, v1}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1797
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    .line 1799
    :cond_63
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    new-instance v3, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v3, v2, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v3, v0, v14

    .line 1800
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v0, v0, v14

    sget v3, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1801
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v2, v1, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v2, v2, v14

    invoke-static {v12, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_6d

    :cond_64
    const/16 v3, 0x81

    const/4 v6, 0x3

    if-ne v0, v6, :cond_71

    const/4 v6, 0x2

    .line 1803
    new-array v0, v6, [Lorg/telegram/ui/Components/EditTextBoldCursor;

    iput-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    move v0, v14

    :goto_41
    if-ge v0, v6, :cond_ae

    if-nez v0, :cond_65

    .line 1806
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    new-instance v5, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v6, v1, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v5, v2, v6}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v5, v4, v14

    .line 1807
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v4, v4, v14

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1808
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v4, v4, v14

    sget v5, Lorg/telegram/messenger/R$string;->PaymentCardTitle:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    .line 1809
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v5, v5, v14

    invoke-static {v12, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1812
    :cond_65
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1813
    invoke-virtual {v4, v14}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 1814
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    const/16 v9, 0x32

    invoke-static {v12, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1815
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 v9, 0x1

    if-eq v0, v9, :cond_66

    const/4 v6, 0x1

    goto :goto_42

    :cond_66
    move v6, v14

    :goto_42
    const/4 v9, 0x7

    if-eqz v6, :cond_68

    if-ne v0, v9, :cond_67

    .line 1819
    iget-object v7, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_requested:Z

    if-nez v7, :cond_67

    :goto_43
    move v6, v14

    goto :goto_44

    :cond_67
    const/4 v7, 0x6

    if-ne v0, v7, :cond_68

    .line 1821
    iget-object v7, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v8, v7, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_requested:Z

    if-nez v8, :cond_68

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$TL_invoice;->email_requested:Z

    if-nez v7, :cond_68

    goto :goto_43

    :cond_68
    :goto_44
    if-eqz v6, :cond_69

    .line 1826
    new-instance v6, Lorg/telegram/ui/PaymentFormActivity$10;

    invoke-direct {v6, v1, v2}, Lorg/telegram/ui/PaymentFormActivity$10;-><init>(Lorg/telegram/ui/PaymentFormActivity;Landroid/content/Context;)V

    .line 1832
    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1833
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->dividers:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1834
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, 0x1

    const/16 v8, 0x53

    invoke-direct {v5, v12, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1837
    :cond_69
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v6, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {v6, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    aput-object v6, v5, v0

    .line 1838
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1839
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v0

    const/4 v7, 0x1

    const/high16 v8, 0x41800000    # 16.0f

    invoke-virtual {v5, v7, v8}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    .line 1840
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v0

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    invoke-virtual {v1, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 1841
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v0

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {v1, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v7

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 1842
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v0

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1843
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v0

    invoke-virtual {v1, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 1844
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v0

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    .line 1845
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v0

    const/high16 v8, 0x3fc00000    # 1.5f

    invoke-virtual {v5, v8}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    if-nez v0, :cond_6a

    .line 1847
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v0

    new-instance v6, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda29;

    invoke-direct {v6}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda29;-><init>()V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1848
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v0

    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setInputType(I)V

    goto :goto_45

    .line 1850
    :cond_6a
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v0

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setInputType(I)V

    .line 1851
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v0

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1853
    :goto_45
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v0

    const v6, 0x10000006

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setImeOptions(I)V

    if-eqz v0, :cond_6c

    const/4 v7, 0x1

    if-eq v0, v7, :cond_6b

    goto :goto_47

    .line 1859
    :cond_6b
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v0

    sget v6, Lorg/telegram/messenger/R$string;->LoginPassword:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 1860
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto :goto_47

    .line 1856
    :cond_6c
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v0

    iget-object v6, v1, Lorg/telegram/ui/PaymentFormActivity;->savedCredentialsCard:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    if-nez v6, :cond_6d

    move-object v6, v11

    goto :goto_46

    :cond_6d
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;->title:Ljava/lang/String;

    :goto_46
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1864
    :goto_47
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v0

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v5, v14, v14, v14, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 1865
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v0

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_6e

    const/4 v6, 0x5

    goto :goto_48

    :cond_6e
    const/4 v6, 0x3

    :goto_48
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 1866
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v0

    const/high16 v34, 0x41a80000    # 21.0f

    const/high16 v35, 0x40c00000    # 6.0f

    const/16 v29, -0x1

    const/high16 v30, -0x40000000    # -2.0f

    const/16 v31, 0x33

    const/high16 v32, 0x41a80000    # 21.0f

    const/high16 v33, 0x41400000    # 12.0f

    invoke-static/range {v29 .. v35}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1868
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v0

    new-instance v5, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda5;

    invoke-direct {v5, v1}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const/4 v7, 0x1

    if-ne v0, v7, :cond_70

    .line 1876
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    new-instance v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v6, v1, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v5, v2, v6}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v5, v4, v14

    .line 1877
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v4, v4, v14

    sget v5, Lorg/telegram/messenger/R$string;->PaymentConfirmationMessage:I

    iget-object v6, v1, Lorg/telegram/ui/PaymentFormActivity;->savedCredentialsCard:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    if-nez v6, :cond_6f

    move-object v6, v11

    :goto_49
    const/4 v7, 0x1

    goto :goto_4a

    :cond_6f
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;->title:Ljava/lang/String;

    goto :goto_49

    :goto_4a
    new-array v8, v7, [Ljava/lang/Object;

    aput-object v6, v8, v14

    const-string v6, "PaymentConfirmationMessage"

    invoke-static {v6, v5, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 1878
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v4, v4, v14

    sget v5, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v2, v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1879
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v5, v5, v14

    invoke-static {v12, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1881
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    new-instance v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object v7, v1, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v5, v2, v7}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v5, v4, v14

    .line 1882
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v4, v4, v14

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1883
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v4, v4, v14

    sget v5, Lorg/telegram/messenger/R$string;->PaymentConfirmationNewCard:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v14}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    .line 1884
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v5, v5, v14

    invoke-static {v12, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1885
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v4, v4, v14

    new-instance v5, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda6;

    invoke-direct {v5, v1}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1890
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    new-instance v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v7, v1, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v5, v2, v7}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/16 v23, 0x1

    aput-object v5, v4, v23

    .line 1891
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v4, v4, v23

    sget v5, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    invoke-static {v2, v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1892
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v5, v5, v23

    invoke-static {v12, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_70
    add-int/lit8 v0, v0, 0x1

    const/4 v6, 0x2

    goto/16 :goto_41

    :cond_71
    const/16 v6, 0x21

    const/4 v8, 0x4

    if-eq v0, v8, :cond_7f

    const/4 v4, 0x5

    if-ne v0, v4, :cond_72

    goto/16 :goto_53

    :cond_72
    const/4 v7, 0x6

    if-ne v0, v7, :cond_ae

    .line 2614
    new-instance v0, Lorg/telegram/ui/Cells/EditTextSettingsCell;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/EditTextSettingsCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->codeFieldCell:Lorg/telegram/ui/Cells/EditTextSettingsCell;

    .line 2615
    sget v4, Lorg/telegram/messenger/R$string;->PasswordCode:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v11, v4, v14}, Lorg/telegram/ui/Cells/EditTextSettingsCell;->setTextAndHint(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2616
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->codeFieldCell:Lorg/telegram/ui/Cells/EditTextSettingsCell;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2617
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->codeFieldCell:Lorg/telegram/ui/Cells/EditTextSettingsCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/EditTextSettingsCell;->getTextView()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    const/4 v7, 0x3

    .line 2618
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setInputType(I)V

    const/4 v7, 0x6

    .line 2619
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 2620
    new-instance v4, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda18;

    invoke-direct {v4, v1}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 2627
    new-instance v4, Lorg/telegram/ui/PaymentFormActivity$20;

    invoke-direct {v4, v1}, Lorg/telegram/ui/PaymentFormActivity$20;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2645
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->codeFieldCell:Lorg/telegram/ui/Cells/EditTextSettingsCell;

    invoke-static {v12, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2647
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    new-instance v4, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v4, v2, v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/16 v18, 0x2

    aput-object v4, v0, v18

    .line 2648
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v0, v0, v18

    sget v4, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v2, v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2649
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v4, v4, v18

    invoke-static {v12, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2651
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    new-instance v4, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v4, v2, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v9, 0x1

    aput-object v4, v0, v9

    .line 2652
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v0, v0, v9

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2653
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v0, v0, v9

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2654
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v0, v0, v9

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    .line 2655
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v0, v0, v9

    sget v4, Lorg/telegram/messenger/R$string;->ResendCode:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v9}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    .line 2656
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v4, v4, v9

    invoke-static {v12, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2657
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v0, v0, v9

    new-instance v4, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda19;

    invoke-direct {v4, v1}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2669
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    new-instance v4, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v4, v2, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v4, v0, v14

    .line 2670
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v0, v0, v14

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2671
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v0, v0, v14

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2672
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v0, v0, v14

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    .line 2673
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v0, v0, v14

    sget v4, Lorg/telegram/messenger/R$string;->AbortPassword:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v14}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    .line 2674
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v4, v4, v14

    invoke-static {v12, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2675
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v0, v0, v14

    new-instance v4, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda20;

    invoke-direct {v4, v1}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v7, 0x3

    .line 2693
    new-array v0, v7, [Lorg/telegram/ui/Components/EditTextBoldCursor;

    iput-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    move v0, v14

    :goto_4b
    if-ge v0, v7, :cond_7e

    if-nez v0, :cond_73

    .line 2696
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    new-instance v5, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v7, v1, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v5, v2, v7}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v5, v4, v14

    .line 2697
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v4, v4, v14

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2698
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v4, v4, v14

    sget v5, Lorg/telegram/messenger/R$string;->PaymentPasswordTitle:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    .line 2699
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v5, v5, v14

    invoke-static {v12, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4c

    :cond_73
    const/4 v4, 0x2

    if-ne v0, v4, :cond_74

    .line 2701
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    new-instance v5, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v7, v1, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v5, v2, v7}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/16 v23, 0x1

    aput-object v5, v4, v23

    .line 2702
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v4, v4, v23

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2703
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v4, v4, v23

    sget v5, Lorg/telegram/messenger/R$string;->PaymentPasswordEmailTitle:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    .line 2704
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v5, v5, v23

    invoke-static {v12, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2707
    :cond_74
    :goto_4c
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2708
    invoke-virtual {v4, v14}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 2709
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    const/16 v9, 0x32

    invoke-static {v12, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2710
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/view/View;->setBackgroundColor(I)V

    if-nez v0, :cond_75

    .line 2713
    new-instance v7, Lorg/telegram/ui/PaymentFormActivity$21;

    invoke-direct {v7, v1, v2}, Lorg/telegram/ui/PaymentFormActivity$21;-><init>(Lorg/telegram/ui/PaymentFormActivity;Landroid/content/Context;)V

    .line 2719
    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2720
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->dividers:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2721
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v8, 0x53

    const/4 v10, 0x1

    invoke-direct {v5, v12, v10, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4d

    :cond_75
    const/16 v8, 0x53

    .line 2724
    :goto_4d
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v7, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {v7, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    aput-object v7, v5, v0

    .line 2725
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2726
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v0

    const/high16 v7, 0x41800000    # 16.0f

    const/4 v10, 0x1

    invoke-virtual {v5, v10, v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    .line 2727
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v0

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    invoke-virtual {v1, v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 2728
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v0

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {v1, v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v10

    invoke-virtual {v5, v10}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 2729
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v0

    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2730
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v0

    invoke-virtual {v1, v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v7

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 2731
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v0

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    .line 2732
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v0

    const/high16 v7, 0x3fc00000    # 1.5f

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    if-eqz v0, :cond_77

    const/4 v7, 0x1

    if-ne v0, v7, :cond_76

    goto :goto_4e

    .line 2739
    :cond_76
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setInputType(I)V

    .line 2740
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v0

    const v7, 0x10000006

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setImeOptions(I)V

    const v7, 0x10000005

    goto :goto_4f

    .line 2735
    :cond_77
    :goto_4e
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v0

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setInputType(I)V

    .line 2736
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v0

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2737
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v0

    const v7, 0x10000005

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setImeOptions(I)V

    :goto_4f
    if-eqz v0, :cond_7a

    const/4 v10, 0x1

    if-eq v0, v10, :cond_79

    const/4 v5, 0x2

    if-eq v0, v5, :cond_78

    goto :goto_50

    .line 2752
    :cond_78
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v0

    sget v10, Lorg/telegram/messenger/R$string;->PaymentPasswordEmail:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_50

    .line 2749
    :cond_79
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v0

    sget v10, Lorg/telegram/messenger/R$string;->PaymentPasswordReEnter:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_50

    .line 2745
    :cond_7a
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v0

    sget v10, Lorg/telegram/messenger/R$string;->PaymentPasswordEnter:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 2746
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 2756
    :goto_50
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v0

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-virtual {v5, v14, v14, v14, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 2757
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v0

    sget-boolean v10, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v10, :cond_7b

    const/4 v10, 0x5

    goto :goto_51

    :cond_7b
    const/4 v10, 0x3

    :goto_51
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 2758
    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v0

    const/high16 v34, 0x41a80000    # 21.0f

    const/high16 v35, 0x40c00000    # 6.0f

    const/16 v29, -0x1

    const/high16 v30, -0x40000000    # -2.0f

    const/16 v31, 0x33

    const/high16 v32, 0x41a80000    # 21.0f

    const/high16 v33, 0x41400000    # 12.0f

    invoke-static/range {v29 .. v35}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v4, v5, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2760
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v0

    new-instance v5, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda21;

    invoke-direct {v5, v1}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const/4 v10, 0x1

    if-ne v0, v10, :cond_7c

    .line 2775
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    new-instance v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v10, v1, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v5, v2, v10}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v5, v4, v14

    .line 2776
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v4, v4, v14

    sget v5, Lorg/telegram/messenger/R$string;->PaymentPasswordInfo:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 2777
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v4, v4, v14

    sget v5, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v2, v5, v10}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2778
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v5, v5, v14

    invoke-static {v12, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v4, v5, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_52

    :cond_7c
    const/4 v4, 0x2

    if-ne v0, v4, :cond_7d

    .line 2780
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    new-instance v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v10, v1, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v5, v2, v10}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/16 v23, 0x1

    aput-object v5, v4, v23

    .line 2781
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v4, v4, v23

    sget v5, Lorg/telegram/messenger/R$string;->PaymentPasswordEmailInfo:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 2782
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v4, v4, v23

    sget v5, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v2, v5, v10}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2783
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v5, v5, v23

    invoke-static {v12, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v4, v5, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7d
    :goto_52
    add-int/lit8 v0, v0, 0x1

    const/4 v7, 0x3

    goto/16 :goto_4b

    .line 2786
    :cond_7e
    invoke-direct {v1}, Lorg/telegram/ui/PaymentFormActivity;->updatePasswordFields()V

    goto/16 :goto_6d

    .line 1896
    :cond_7f
    :goto_53
    new-instance v0, Lorg/telegram/ui/Cells/PaymentInfoCell;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/PaymentInfoCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentInfoCell:Lorg/telegram/ui/Cells/PaymentInfoCell;

    .line 1897
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1898
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_80

    .line 1899
    iget-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentInfoCell:Lorg/telegram/ui/Cells/PaymentInfoCell;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->currentBotName:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/telegram/ui/Cells/PaymentInfoCell;->setInvoice(Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;Ljava/lang/String;)V

    goto :goto_54

    .line 1900
    :cond_80
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentReceipt:Lorg/telegram/tgnet/TLRPC$PaymentReceipt;

    if-eqz v0, :cond_81

    .line 1901
    iget-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentInfoCell:Lorg/telegram/ui/Cells/PaymentInfoCell;

    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->currentBotName:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/telegram/ui/Cells/PaymentInfoCell;->setReceipt(Lorg/telegram/tgnet/TLRPC$PaymentReceipt;Ljava/lang/String;)V

    goto :goto_54

    .line 1902
    :cond_81
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->invoiceSlug:Ljava/lang/String;

    if-nez v0, :cond_82

    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->invoiceInput:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    if-eqz v0, :cond_83

    .line 1903
    :cond_82
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentInfoCell:Lorg/telegram/ui/Cells/PaymentInfoCell;

    iget-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$PaymentForm;->title:Ljava/lang/String;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$PaymentForm;->description:Ljava/lang/String;

    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$PaymentForm;->photo:Lorg/telegram/tgnet/TLRPC$WebDocument;

    iget-object v8, v1, Lorg/telegram/ui/PaymentFormActivity;->currentBotName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v35, v3

    move-object/from16 v31, v4

    move-object/from16 v32, v5

    move-object/from16 v33, v7

    move-object/from16 v34, v8

    invoke-virtual/range {v30 .. v35}, Lorg/telegram/ui/Cells/PaymentInfoCell;->setInfo(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$WebDocument;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1905
    :cond_83
    :goto_54
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentInfoCell:Lorg/telegram/ui/Cells/PaymentInfoCell;

    invoke-static {v12, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1907
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    new-instance v3, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v3, v2, v4}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v3, v0, v14

    .line 1908
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    aget-object v3, v3, v14

    invoke-static {v12, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1910
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_invoice;->prices:Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->prices:Ljava/util/ArrayList;

    .line 1911
    iget-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    if-eqz v3, :cond_84

    .line 1912
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_shippingOption;->prices:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_84
    const/4 v9, 0x1

    .line 1914
    new-array v0, v9, [Ljava/lang/String;

    iput-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->totalPrice:[Ljava/lang/String;

    move v0, v14

    .line 1916
    :goto_55
    iget-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->prices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_85

    .line 1917
    iget-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->prices:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;

    .line 1919
    new-instance v4, Lorg/telegram/ui/Cells/TextPriceCell;

    invoke-direct {v4, v2}, Lorg/telegram/ui/Cells/TextPriceCell;-><init>(Landroid/content/Context;)V

    .line 1920
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1921
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;->label:Ljava/lang/String;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v7

    iget-wide v8, v3, Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;->amount:J

    iget-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_invoice;->currency:Ljava/lang/String;

    invoke-virtual {v7, v8, v9, v3}, Lorg/telegram/messenger/LocaleController;->formatCurrencyString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3, v14}, Lorg/telegram/ui/Cells/TextPriceCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1922
    iget-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    .line 1925
    :cond_85
    iget v0, v1, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v4, 0x5

    if-ne v0, v4, :cond_86

    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->tipAmount:Ljava/lang/Long;

    if-eqz v0, :cond_86

    .line 1926
    new-instance v0, Lorg/telegram/ui/Cells/TextPriceCell;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/TextPriceCell;-><init>(Landroid/content/Context;)V

    .line 1927
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1928
    sget v3, Lorg/telegram/messenger/R$string;->PaymentTip:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->tipAmount:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_invoice;->currency:Ljava/lang/String;

    invoke-virtual {v4, v7, v8, v5}, Lorg/telegram/messenger/LocaleController;->formatCurrencyString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v14}, Lorg/telegram/ui/Cells/TextPriceCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1929
    iget-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1932
    :cond_86
    new-instance v0, Lorg/telegram/ui/Cells/TextPriceCell;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/TextPriceCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->totalCell:Lorg/telegram/ui/Cells/TextPriceCell;

    .line 1933
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1934
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->totalPrice:[Ljava/lang/String;

    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->prices:Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Lorg/telegram/ui/PaymentFormActivity;->getTotalPriceString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v14

    .line 1935
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->totalCell:Lorg/telegram/ui/Cells/TextPriceCell;

    sget v4, Lorg/telegram/messenger/R$string;->PaymentTransactionTotal:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->totalPrice:[Ljava/lang/String;

    aget-object v5, v5, v14

    const/4 v9, 0x1

    invoke-virtual {v0, v4, v5, v9}, Lorg/telegram/ui/Cells/TextPriceCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1937
    iget v0, v1, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/high16 v8, 0x41600000    # 14.0f

    const/4 v4, 0x4

    if-ne v0, v4, :cond_8b

    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8b

    .line 1938
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1939
    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 1940
    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1941
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_invoice;->suggested_tip_amounts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_87

    const/16 v5, 0x28

    goto :goto_56

    :cond_87
    const/16 v5, 0x4e

    :goto_56
    invoke-static {v12, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1942
    new-instance v4, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda7;

    invoke-direct {v4, v1}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1947
    new-instance v4, Lorg/telegram/ui/Cells/TextPriceCell;

    invoke-direct {v4, v2}, Lorg/telegram/ui/Cells/TextPriceCell;-><init>(Landroid/content/Context;)V

    .line 1948
    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1949
    sget v3, Lorg/telegram/messenger/R$string;->PaymentTipOptional:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3, v11, v14}, Lorg/telegram/ui/Cells/TextPriceCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1950
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v9, 0x1

    .line 1952
    new-array v3, v9, [Lorg/telegram/ui/Components/EditTextBoldCursor;

    iput-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    .line 1953
    new-instance v4, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {v4, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    aput-object v4, v3, v14

    .line 1954
    iget-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1955
    iget-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v14

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v3, v9, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    .line 1956
    iget-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v14

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 1957
    iget-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v14

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 1958
    iget-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v14

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1959
    iget-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v14

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 1960
    iget-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v14

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    .line 1961
    iget-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v14

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    .line 1962
    iget-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v14

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setInputType(I)V

    .line 1963
    iget-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v14

    const v4, 0x10000006

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 1964
    iget-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v14

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_invoice;->currency:Ljava/lang/String;

    const-wide/16 v9, 0x0

    invoke-virtual {v4, v9, v10, v5}, Lorg/telegram/messenger/LocaleController;->formatCurrencyString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 1965
    iget-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v14

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v3, v14, v14, v14, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 1966
    iget-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v14

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_88

    const/4 v4, 0x3

    goto :goto_57

    :cond_88
    const/4 v4, 0x5

    :goto_57
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 1967
    iget-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v14

    const/high16 v35, 0x41a80000    # 21.0f

    const/high16 v36, 0x3f800000    # 1.0f

    const/16 v30, -0x1

    const/high16 v31, -0x40000000    # -2.0f

    const/16 v32, 0x33

    const/high16 v33, 0x41a80000    # 21.0f

    const/high16 v34, 0x41100000    # 9.0f

    invoke-static/range {v30 .. v36}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1968
    iget-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v14

    new-instance v4, Lorg/telegram/ui/PaymentFormActivity$11;

    invoke-direct {v4, v1}, Lorg/telegram/ui/PaymentFormActivity$11;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2087
    iget-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v14

    new-instance v4, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda8;

    invoke-direct {v4}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 2094
    iget-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v14

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 2096
    iget-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_invoice;->suggested_tip_amounts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8b

    .line 2097
    new-instance v9, Landroid/widget/HorizontalScrollView;

    invoke-direct {v9, v2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 2098
    invoke-virtual {v9, v14}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 2099
    invoke-virtual {v9, v14}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 2100
    invoke-virtual {v9, v14}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    const/high16 v3, 0x41a80000    # 21.0f

    .line 2101
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v9, v4, v14, v3, v14}, Landroid/view/View;->setPadding(IIII)V

    const/4 v10, 0x1

    .line 2102
    invoke-virtual {v9, v10}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v30, -0x1

    const/high16 v31, 0x41f00000    # 30.0f

    const/16 v32, 0x33

    const/16 v33, 0x0

    const/high16 v34, 0x42300000    # 44.0f

    .line 2103
    invoke-static/range {v30 .. v36}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v9, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2104
    new-array v4, v10, [I

    .line 2105
    new-array v5, v10, [I

    .line 2106
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->suggested_tip_amounts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2108
    new-instance v0, Lorg/telegram/ui/PaymentFormActivity$12;

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/PaymentFormActivity$12;-><init>(Lorg/telegram/ui/PaymentFormActivity;Landroid/content/Context;I[I[I)V

    iput-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->tipLayout:Landroid/widget/LinearLayout;

    .line 2165
    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2166
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->tipLayout:Landroid/widget/LinearLayout;

    const/16 v10, 0x1e

    const/16 v6, 0x33

    invoke-static {v12, v10, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createScroll(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v9, v0, v6}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2167
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_contacts_inviteBackground:I

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    move v6, v14

    :goto_58
    if-ge v6, v3, :cond_8b

    .line 2170
    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_89

    .line 2171
    iget-object v9, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$TL_invoice;->suggested_tip_amounts:Ljava/util/ArrayList;

    sub-int v10, v3, v6

    const/16 v23, 0x1

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    goto :goto_59

    .line 2173
    :cond_89
    iget-object v9, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$TL_invoice;->suggested_tip_amounts:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 2175
    :goto_59
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v12

    iget-object v15, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v15, v15, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-object v15, v15, Lorg/telegram/tgnet/TLRPC$TL_invoice;->currency:Ljava/lang/String;

    invoke-virtual {v12, v9, v10, v15}, Lorg/telegram/messenger/LocaleController;->formatCurrencyString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2176
    new-instance v15, Landroid/widget/TextView;

    invoke-direct {v15, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x1

    .line 2177
    invoke-virtual {v15, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2178
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v15, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2179
    invoke-virtual {v15, v7}, Landroid/widget/TextView;->setLines(I)V

    .line 2180
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v15, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2181
    invoke-virtual {v15, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 2182
    invoke-virtual {v15, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v7, 0x41700000    # 15.0f

    .line 2183
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    move/from16 v22, v7

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v15, v8, v14, v7, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2184
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chats_secretName:I

    invoke-virtual {v1, v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v7

    invoke-virtual {v15, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2185
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    const v8, 0x1fffffff

    and-int/2addr v8, v0

    invoke-static {v7, v8}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v7

    invoke-virtual {v15, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v7, 0x1

    .line 2186
    invoke-virtual {v15, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/16 v7, 0x11

    .line 2187
    invoke-virtual {v15, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 2188
    iget-object v7, v1, Lorg/telegram/ui/PaymentFormActivity;->tipLayout:Landroid/widget/LinearLayout;

    add-int/lit8 v8, v3, -0x1

    if-eq v6, v8, :cond_8a

    move/from16 v35, v26

    goto :goto_5a

    :cond_8a
    move/from16 v35, v14

    :goto_5a
    const/16 v36, 0x0

    const/16 v30, -0x2

    const/16 v31, -0x1

    const/16 v32, 0x13

    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-static/range {v30 .. v36}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v7, v15, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2189
    new-instance v7, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda9;

    invoke-direct {v7, v1, v15, v9, v10}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/PaymentFormActivity;Landroid/widget/TextView;J)V

    invoke-virtual {v15, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2202
    invoke-virtual {v15}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    const/high16 v8, 0x41f00000    # 30.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v7, v8

    .line 2203
    sget v8, Lorg/telegram/messenger/R$id;->width_tag:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v15, v8, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 2204
    aget v8, v4, v14

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v4, v14

    .line 2205
    aget v8, v5, v14

    add-int/2addr v8, v7

    aput v8, v5, v14

    add-int/lit8 v6, v6, 0x1

    const/high16 v8, 0x41600000    # 14.0f

    const/4 v12, -0x1

    const/4 v15, -0x2

    goto/16 :goto_58

    .line 2210
    :cond_8b
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->totalCell:Lorg/telegram/ui/Cells/TextPriceCell;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2212
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    new-instance v3, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v3, v2, v4}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/16 v18, 0x2

    aput-object v3, v0, v18

    .line 2213
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    aget-object v0, v0, v18

    sget v3, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2214
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    aget-object v3, v3, v18

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-static {v5, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2216
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    new-instance v3, Lorg/telegram/ui/PaymentFormActivity$13;

    invoke-direct {v3, v1, v2}, Lorg/telegram/ui/PaymentFormActivity$13;-><init>(Lorg/telegram/ui/PaymentFormActivity;Landroid/content/Context;)V

    aput-object v3, v0, v14

    .line 2222
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v0, v0, v14

    const/4 v9, 0x1

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2223
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v0, v0, v14

    iget-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    if-eqz v3, :cond_8c

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v9, :cond_8c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    invoke-virtual {v4, v14, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5b

    :cond_8c
    iget-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    :goto_5b
    sget v4, Lorg/telegram/messenger/R$string;->PaymentCheckoutMethod:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_payment_card:I

    invoke-virtual {v0, v3, v4, v5, v9}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/CharSequence;IZ)V

    .line 2225
    iget-boolean v0, v1, Lorg/telegram/ui/PaymentFormActivity;->isCheckoutPreview:Z

    if-nez v0, :cond_8e

    iget-boolean v0, v1, Lorg/telegram/ui/PaymentFormActivity;->allowUnregistered:Z

    if-eqz v0, :cond_8d

    goto :goto_5c

    :cond_8d
    move v3, v14

    goto :goto_5e

    .line 2226
    :cond_8e
    :goto_5c
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    if-eqz v0, :cond_8f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v9, :cond_8f

    move v0, v14

    goto :goto_5d

    :cond_8f
    const/16 v0, 0x8

    :goto_5d
    move v3, v0

    .line 2228
    :goto_5e
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v0, v0, v14

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2229
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v4, v4, v14

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2230
    iget v0, v1, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v8, 0x4

    if-ne v0, v8, :cond_90

    .line 2231
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v0, v0, v14

    new-instance v4, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda10;

    invoke-direct {v4, v1}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_90
    move v0, v14

    const/4 v8, 0x0

    .line 2240
    :goto_5f
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PaymentForm;->users:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_92

    .line 2241
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PaymentForm;->users:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    .line 2242
    iget-wide v5, v4, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-object v7, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-wide v9, v7, Lorg/telegram/tgnet/TLRPC$PaymentForm;->provider_id:J

    cmp-long v5, v5, v9

    if-nez v5, :cond_91

    move-object v8, v4

    :cond_91
    add-int/lit8 v0, v0, 0x1

    goto :goto_5f

    .line 2246
    :cond_92
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    new-instance v4, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    invoke-direct {v4, v2}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;-><init>(Landroid/content/Context;)V

    const/16 v23, 0x1

    aput-object v4, v0, v23

    .line 2247
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v0, v0, v23

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-eqz v8, :cond_97

    .line 2250
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v0, v0, v23

    iget-object v4, v8, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v5, v8, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v4, v5}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget v4, Lorg/telegram/messenger/R$string;->PaymentCheckoutProvider:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_payment_provider:I

    iget-object v6, v1, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    if-eqz v6, :cond_94

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-eqz v6, :cond_93

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    if-nez v6, :cond_95

    :cond_93
    iget-object v6, v1, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    if-nez v6, :cond_95

    :cond_94
    iget-object v6, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$PaymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-eqz v6, :cond_96

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    if-eqz v6, :cond_96

    :cond_95
    const/4 v6, 0x1

    goto :goto_60

    :cond_96
    move v6, v14

    :goto_60
    invoke-virtual {v0, v11, v4, v5, v6}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/CharSequence;IZ)V

    .line 2251
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/16 v23, 0x1

    aget-object v4, v4, v23

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2255
    :cond_97
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v0, v0, v23

    if-eqz v8, :cond_98

    move v4, v3

    goto :goto_61

    :cond_98
    const/16 v4, 0x8

    :goto_61
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2257
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    if-nez v0, :cond_99

    iget-boolean v4, v1, Lorg/telegram/ui/PaymentFormActivity;->isCheckoutPreview:Z

    if-eqz v4, :cond_a4

    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    if-eqz v4, :cond_a4

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PaymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-eqz v4, :cond_a4

    :cond_99
    if-eqz v0, :cond_9a

    .line 2258
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    goto :goto_62

    :cond_9a
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    .line 2260
    :goto_62
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    new-instance v5, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    invoke-direct {v5, v2}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;-><init>(Landroid/content/Context;)V

    const/16 v18, 0x2

    aput-object v5, v4, v18

    .line 2261
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v4, v4, v18

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2262
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v5, v5, v18

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2263
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    if-eqz v4, :cond_9c

    .line 2264
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v4, v4, v18

    invoke-virtual {v4, v14}, Landroid/view/View;->setVisibility(I)V

    .line 2265
    iget v4, v1, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v8, 0x4

    if-ne v4, v8, :cond_9b

    .line 2266
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v4, v4, v18

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2267
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v4, v4, v18

    new-instance v5, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda11;

    invoke-direct {v5, v1}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_63

    .line 2279
    :cond_9b
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v4, v4, v18

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2283
    :cond_9c
    :goto_63
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    new-instance v5, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    invoke-direct {v5, v2}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;-><init>(Landroid/content/Context;)V

    const/16 v28, 0x3

    aput-object v5, v4, v28

    .line 2284
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v4, v4, v28

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2285
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v5, v5, v28

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2286
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->name:Ljava/lang/String;

    if-eqz v4, :cond_9e

    .line 2287
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v4, v4, v28

    invoke-virtual {v4, v14}, Landroid/view/View;->setVisibility(I)V

    .line 2288
    iget v4, v1, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v8, 0x4

    if-ne v4, v8, :cond_9d

    .line 2289
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v4, v4, v28

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2290
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v4, v4, v28

    new-instance v5, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda12;

    invoke-direct {v5, v1}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_64

    .line 2302
    :cond_9d
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v4, v4, v28

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2306
    :cond_9e
    :goto_64
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    new-instance v5, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    invoke-direct {v5, v2}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;-><init>(Landroid/content/Context;)V

    const/4 v8, 0x4

    aput-object v5, v4, v8

    .line 2307
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v4, v4, v8

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2308
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v5, v5, v8

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2309
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->phone:Ljava/lang/String;

    if-eqz v4, :cond_a0

    .line 2310
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v4, v4, v8

    invoke-virtual {v4, v14}, Landroid/view/View;->setVisibility(I)V

    .line 2311
    iget v4, v1, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    if-ne v4, v8, :cond_9f

    .line 2312
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v4, v4, v8

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2313
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v4, v4, v8

    new-instance v5, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda13;

    invoke-direct {v5, v1}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_65

    .line 2325
    :cond_9f
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v4, v4, v8

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2329
    :cond_a0
    :goto_65
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    new-instance v5, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    invoke-direct {v5, v2}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;-><init>(Landroid/content/Context;)V

    const/16 v25, 0x5

    aput-object v5, v4, v25

    .line 2330
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v4, v4, v25

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2331
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v5, v5, v25

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2332
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->email:Ljava/lang/String;

    if-eqz v4, :cond_a2

    .line 2333
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v4, v4, v25

    invoke-virtual {v4, v14}, Landroid/view/View;->setVisibility(I)V

    .line 2334
    iget v4, v1, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v8, 0x4

    if-ne v4, v8, :cond_a1

    .line 2335
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v4, v4, v25

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2336
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v4, v4, v25

    new-instance v5, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda14;

    invoke-direct {v5, v1}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_66

    .line 2348
    :cond_a1
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v4, v4, v25

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2352
    :cond_a2
    :goto_66
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    if-eqz v4, :cond_a3

    .line 2353
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    new-instance v5, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    invoke-direct {v5, v2}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;-><init>(Landroid/content/Context;)V

    const/16 v27, 0x6

    aput-object v5, v4, v27

    .line 2354
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v4, v4, v27

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2355
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v4, v4, v27

    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_shippingOption;->title:Ljava/lang/String;

    sget v6, Lorg/telegram/messenger/R$string;->PaymentCheckoutShippingMethod:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/R$drawable;->msg_payment_delivery:I

    invoke-virtual {v4, v5, v6, v7, v14}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/CharSequence;IZ)V

    .line 2356
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v5, v5, v27

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2358
    :cond_a3
    invoke-direct {v1, v0}, Lorg/telegram/ui/PaymentFormActivity;->setAddressFields(Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;)V

    .line 2361
    :cond_a4
    iget v0, v1, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v8, 0x4

    if-ne v0, v8, :cond_ab

    .line 2362
    iget-boolean v0, v1, Lorg/telegram/ui/PaymentFormActivity;->isCheckoutPreview:Z

    const/4 v9, 0x1

    xor-int/2addr v0, v9

    iput-boolean v0, v1, Lorg/telegram/ui/PaymentFormActivity;->recurrentAccepted:Z

    .line 2363
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->invoiceInput:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStars;

    if-eqz v0, :cond_a5

    .line 2364
    iput-boolean v9, v1, Lorg/telegram/ui/PaymentFormActivity;->recurrentAccepted:Z

    .line 2366
    :cond_a5
    new-instance v0, Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;

    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    invoke-direct {v0, v1, v2, v4}, Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;-><init>(Lorg/telegram/ui/PaymentFormActivity;Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$PaymentForm;)V

    iput-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->bottomLayout:Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;

    .line 2367
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2368
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-static {v4, v14}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2369
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->bottomLayout:Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, -0x1

    invoke-static {v6, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v4, v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2370
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->bottomLayout:Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;

    const/16 v4, 0x30

    const/16 v5, 0x50

    invoke-static {v6, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v13, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2371
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->bottomLayout:Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;

    new-instance v4, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda16;

    invoke-direct {v4, v1, v11}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2445
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    .line 2446
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_contacts_inviteText:I

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2447
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    sget v5, Lorg/telegram/messenger/R$string;->PaymentCheckoutPay:I

    iget-object v6, v1, Lorg/telegram/ui/PaymentFormActivity;->totalPrice:[Ljava/lang/String;

    aget-object v6, v6, v14

    const/4 v9, 0x1

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v6, v7, v14

    invoke-static {v5, v7}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2448
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    const/high16 v5, 0x41600000    # 14.0f

    invoke-virtual {v0, v9, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2449
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    const/16 v7, 0x11

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 2450
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2451
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->bottomLayout:Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;

    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v7, -0x1

    invoke-static {v7, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v0, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2453
    new-instance v0, Lorg/telegram/ui/Components/ContextProgressView;

    invoke-direct {v0, v2, v14}, Lorg/telegram/ui/Components/ContextProgressView;-><init>(Landroid/content/Context;I)V

    iput-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->progressViewButton:Lorg/telegram/ui/Components/ContextProgressView;

    const/4 v8, 0x4

    .line 2454
    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/ContextProgressView;->setVisibility(I)V

    .line 2455
    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    .line 2456
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->progressViewButton:Lorg/telegram/ui/Components/ContextProgressView;

    const v5, 0x2fffffff

    and-int/2addr v5, v0

    invoke-virtual {v4, v5, v0}, Lorg/telegram/ui/Components/ContextProgressView;->setColors(II)V

    .line 2457
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->bottomLayout:Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;

    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->progressViewButton:Lorg/telegram/ui/Components/ContextProgressView;

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, -0x1

    invoke-static {v6, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2459
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->bottomLayout:Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;

    iget-boolean v4, v1, Lorg/telegram/ui/PaymentFormActivity;->recurrentAccepted:Z

    invoke-virtual {v0, v4, v14}, Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;->setChecked(ZZ)V

    .line 2460
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    iget-boolean v4, v1, Lorg/telegram/ui/PaymentFormActivity;->recurrentAccepted:Z

    if-nez v4, :cond_a6

    const v4, 0x3f4ccccd    # 0.8f

    goto :goto_67

    :cond_a6
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_67
    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 2462
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v14}, Landroid/view/View;->setEnabled(Z)V

    .line 2463
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v8, 0x4

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    const/4 v9, 0x1

    .line 2465
    invoke-static {v2, v9}, Lorg/telegram/messenger/AndroidUtilities;->checkAndroidTheme(Landroid/content/Context;Z)V

    .line 2467
    :try_start_c
    new-instance v0, Lorg/telegram/ui/PaymentFormActivity$18;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PaymentFormActivity$18;-><init>(Lorg/telegram/ui/PaymentFormActivity;Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    const/4 v6, -0x1

    .line 2474
    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 2475
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 2476
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 2478
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 2479
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 2480
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 2481
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 2484
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 2485
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 2486
    iget-object v4, v1, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    const/4 v9, 0x1

    invoke-virtual {v0, v4, v9}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 2489
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    new-instance v4, Lorg/telegram/ui/PaymentFormActivity$19;

    invoke-direct {v4, v1, v2}, Lorg/telegram/ui/PaymentFormActivity$19;-><init>(Lorg/telegram/ui/PaymentFormActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    :goto_68
    const/4 v8, 0x0

    goto :goto_69

    :catch_8
    move-exception v0

    .line 2549
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_68

    .line 2552
    :goto_69
    iput-object v8, v1, Lorg/telegram/ui/PaymentFormActivity;->recurrentAcceptCell:Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;

    .line 2553
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->terms_url:Ljava/lang/String;

    if-eqz v0, :cond_aa

    .line 2554
    new-instance v0, Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;

    invoke-virtual {v1}, Lorg/telegram/ui/PaymentFormActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->recurrentAcceptCell:Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;

    .line 2555
    iget-boolean v4, v1, Lorg/telegram/ui/PaymentFormActivity;->recurrentAccepted:Z

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;->setChecked(Z)V

    .line 2557
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->currentBotName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v4, 0x2a

    if-eqz v0, :cond_a7

    .line 2558
    sget v0, Lorg/telegram/messenger/R$string;->PaymentCheckoutAcceptRecurrentFee:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2559
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2560
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    const/4 v7, -0x1

    if-eq v6, v7, :cond_a9

    if-eq v4, v7, :cond_a9

    .line 2562
    new-instance v7, Landroid/text/SpannableString;

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v0, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2563
    new-instance v8, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    iget-object v9, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$TL_invoice;->terms_url:Ljava/lang/String;

    invoke-direct {v8, v9}, Lorg/telegram/ui/Components/URLSpanNoUnderline;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/text/SpannableString;->length()I

    move-result v9

    const/16 v10, 0x21

    invoke-virtual {v7, v8, v14, v9, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const/16 v23, 0x1

    add-int/lit8 v4, v4, 0x1

    .line 2564
    invoke-virtual {v5, v6, v4, v7}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2565
    invoke-virtual {v0, v14, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    goto/16 :goto_6a

    .line 2568
    :cond_a7
    sget v0, Lorg/telegram/messenger/R$string;->PaymentCheckoutAcceptRecurrent:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2569
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2570
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    const/4 v7, -0x1

    if-eq v6, v7, :cond_a8

    if-eq v4, v7, :cond_a8

    .line 2572
    new-instance v7, Landroid/text/SpannableString;

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v0, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2573
    new-instance v8, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    iget-object v9, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$TL_invoice;->terms_url:Ljava/lang/String;

    invoke-direct {v8, v9}, Lorg/telegram/ui/Components/URLSpanNoUnderline;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/text/SpannableString;->length()I

    move-result v9

    const/16 v10, 0x21

    invoke-virtual {v7, v8, v14, v9, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const/16 v23, 0x1

    add-int/lit8 v4, v4, 0x1

    .line 2574
    invoke-virtual {v5, v6, v4, v7}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2575
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2577
    :cond_a8
    const-string v4, "%1$s"

    .line 2578
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v6, -0x1

    if-eq v0, v6, :cond_a9

    add-int/lit8 v4, v0, 0x4

    .line 2580
    iget-object v6, v1, Lorg/telegram/ui/PaymentFormActivity;->currentBotName:Ljava/lang/String;

    invoke-virtual {v5, v0, v4, v6}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2581
    new-instance v4, Lorg/telegram/ui/Components/TypefaceSpan;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    iget-object v6, v1, Lorg/telegram/ui/PaymentFormActivity;->currentBotName:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v0

    const/16 v10, 0x21

    invoke-virtual {v5, v4, v0, v6, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2585
    :cond_a9
    :goto_6a
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->recurrentAcceptCell:Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;->setText(Ljava/lang/CharSequence;)V

    .line 2587
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->recurrentAcceptCell:Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorWithBackgroundDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2588
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->recurrentAcceptCell:Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;

    new-instance v4, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda17;

    invoke-direct {v4, v1}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2598
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->recurrentAcceptCell:Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;

    const/4 v9, 0x0

    const/high16 v10, 0x42400000    # 48.0f

    const/4 v4, -0x1

    const/high16 v5, -0x40000000    # -2.0f

    const/16 v6, 0x50

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v13, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2601
    :cond_aa
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_ab

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, -0x1

    .line 2602
    invoke-static {v6, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v13, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2603
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2607
    :cond_ab
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    new-instance v4, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object v5, v1, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v4, v2, v5}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/16 v23, 0x1

    aput-object v4, v0, v23

    .line 2608
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    aget-object v0, v0, v23

    sget v4, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v2, v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v3, :cond_ac

    .line 2609
    iget v0, v1, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v8, 0x4

    if-ne v0, v8, :cond_ac

    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    if-nez v0, :cond_ac

    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    if-eqz v0, :cond_ad

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-nez v0, :cond_ac

    goto :goto_6b

    :cond_ac
    const/16 v23, 0x1

    goto :goto_6c

    .line 2610
    :cond_ad
    :goto_6b
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/16 v23, 0x1

    aget-object v0, v0, v23

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2612
    :goto_6c
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v2, v1, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    aget-object v2, v2, v23

    const/4 v4, -0x2

    const/4 v6, -0x1

    invoke-static {v6, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2788
    :cond_ae
    :goto_6d
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 1

    .line 3353
    sget p2, Lorg/telegram/messenger/NotificationCenter;->twoStepPasswordChanged:I

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    .line 3354
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iput-boolean p3, p1, Lorg/telegram/tgnet/TLRPC$PaymentForm;->password_missing:Z

    .line 3355
    iput-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$PaymentForm;->can_save_credentials:Z

    .line 3356
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->updateSavePaymentField()V

    return-void

    .line 3357
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didRemoveTwoStepPassword:I

    if-ne p1, p2, :cond_1

    .line 3358
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iput-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$PaymentForm;->password_missing:Z

    .line 3359
    iput-boolean p3, p1, Lorg/telegram/tgnet/TLRPC$PaymentForm;->can_save_credentials:Z

    .line 3360
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->updateSavePaymentField()V

    return-void

    .line 3361
    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->paymentFinished:I

    if-ne p1, p2, :cond_2

    .line 3362
    iput-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentStatusSent:Z

    .line 3363
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V

    :cond_2
    return-void
.end method

.method public fillNumber(Ljava/lang/String;)V
    .locals 7

    .line 3633
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 3636
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-eq v2, v1, :cond_7

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_4

    .line 3638
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    if-nez p1, :cond_2

    if-eqz v2, :cond_7

    :cond_2
    if-nez p1, :cond_3

    .line 3642
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3646
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 3647
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x4

    const/4 v4, 0x0

    if-le v0, v2, :cond_6

    :goto_2
    const/16 v0, 0x8

    if-lt v2, v1, :cond_5

    .line 3649
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 3650
    iget-object v6, p0, Lorg/telegram/ui/PaymentFormActivity;->codesMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 3653
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 3654
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v0

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v2, v1

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_5
    move v2, v3

    :goto_3
    if-nez v2, :cond_6

    .line 3659
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 3660
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v2, v0

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    if-eqz v4, :cond_7

    .line 3664
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/16 v0, 0x9

    aget-object p1, p1, v0

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3665
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    return-void

    .line 3671
    :goto_4
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public getIsReadyToPayRequest()Lj$/util/Optional;
    .locals 4

    .line 3173
    :try_start_0
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->getBaseRequest()Lorg/json/JSONObject;

    move-result-object v0

    .line 3174
    const-string v1, "allowedPaymentMethods"

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 3175
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->getBaseCardPaymentMethod()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v2

    .line 3174
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3177
    invoke-static {v0}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3179
    :catch_0
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getOtherSameFragmentDiff()I
    .locals 3

    .line 3245
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 3248
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 3250
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 3253
    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 3254
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 3255
    instance-of v2, v2, Lorg/telegram/ui/PaymentFormActivity;

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v0

    :goto_1
    sub-int/2addr v1, v0

    :cond_4
    :goto_2
    return v1
.end method

.method public getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 1

    .line 508
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object v0
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 35

    move-object/from16 v0, p0

    .line 4762
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4764
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v8, 0x0

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4765
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4766
    new-instance v6, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v0, Lorg/telegram/ui/PaymentFormActivity;->scrollView:Landroid/widget/ScrollView;

    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v13, v10

    const/4 v10, 0x0

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4767
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v13, 0x0

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    invoke-direct/range {v7 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4768
    new-instance v8, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v9, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v10, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/4 v14, 0x0

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    invoke-direct/range {v8 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4769
    new-instance v9, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v11, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v15, 0x0

    sget v16, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4770
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v12, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCH:I

    const/16 v16, 0x0

    sget v17, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSearch:I

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4771
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCHPLACEHOLDER:I

    const/4 v8, 0x0

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSearchPlaceholder:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4772
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/Class;

    const-class v5, Landroid/view/View;

    const/4 v11, 0x0

    aput-object v5, v6, v11

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v9, 0x0

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    const/4 v5, 0x0

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4773
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_contextProgressInner2:I

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4774
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_contextProgressOuter2:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move/from16 v27, v10

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4775
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->progressViewButton:Lorg/telegram/ui/Components/ContextProgressView;

    move/from16 v10, v19

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4776
    new-instance v20, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->progressViewButton:Lorg/telegram/ui/Components/ContextProgressView;

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v21, v3

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v20

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4778
    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v3, :cond_0

    move v3, v11

    .line 4779
    :goto_0
    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 4780
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Landroid/view/View;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/16 v18, 0x0

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4781
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v14, v4, v3

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/16 v19, 0x0

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4782
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v15, v4, v3

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    const/16 v20, 0x0

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4785
    :cond_0
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/16 v18, 0x0

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4786
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    const/4 v9, 0x0

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4788
    :cond_1
    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    const-string v4, "radioButton"

    const-class v5, Lorg/telegram/ui/Cells/RadioCell;

    const-string v6, "textView"

    if-eqz v3, :cond_2

    move v3, v11

    .line 4789
    :goto_1
    iget-object v7, v0, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    array-length v7, v7

    if-ge v3, v7, :cond_3

    .line 4790
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v0, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    aget-object v13, v7, v3

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTORWHITE:I

    const/16 v18, 0x0

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4791
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v0, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    aget-object v14, v7, v3

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTORWHITE:I

    const/16 v19, 0x0

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4792
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v0, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    aget-object v15, v7, v3

    new-array v7, v2, [Ljava/lang/Class;

    aput-object v5, v7, v11

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v18

    const/16 v21, 0x0

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/16 v16, 0x0

    const/16 v20, 0x0

    move-object/from16 v17, v7

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4793
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v0, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    aget-object v16, v7, v3

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    new-array v7, v2, [Ljava/lang/Class;

    aput-object v5, v7, v11

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v19

    const/16 v22, 0x0

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackground:I

    move-object/from16 v18, v7

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4794
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v0, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    aget-object v17, v7, v3

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    new-array v7, v2, [Ljava/lang/Class;

    aput-object v5, v7, v11

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v20

    const/16 v23, 0x0

    sget v24, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackgroundChecked:I

    move-object/from16 v19, v7

    invoke-direct/range {v16 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v7, v16

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 4797
    :cond_2
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    new-array v15, v2, [Ljava/lang/Class;

    aput-object v5, v15, v11

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v16

    const/16 v19, 0x0

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v12 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4798
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    new-array v3, v2, [Ljava/lang/Class;

    aput-object v5, v3, v11

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x0

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackground:I

    const/4 v14, 0x0

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4799
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    new-array v3, v2, [Ljava/lang/Class;

    aput-object v5, v3, v11

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v18

    const/16 v21, 0x0

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackgroundChecked:I

    const/4 v15, 0x0

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    move v3, v11

    .line 4801
    :goto_2
    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    array-length v4, v4

    if-ge v3, v4, :cond_4

    .line 4802
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v13, v4, v3

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/16 v18, 0x0

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4803
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v14, v4, v3

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v5, v4, v11

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x0

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    const/4 v15, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, v4

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    move v3, v11

    .line 4805
    :goto_3
    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    array-length v4, v4

    if-ge v3, v4, :cond_5

    .line 4806
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    aget-object v13, v4, v3

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v15, v2, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v4, v15, v11

    const/16 v18, 0x0

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    move v3, v11

    .line 4808
    :goto_4
    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    array-length v4, v4

    if-ge v3, v4, :cond_6

    .line 4809
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v13, v4, v3

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v15, v2, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v4, v15, v11

    const/16 v18, 0x0

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4810
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v14, v5, v3

    new-array v5, v2, [Ljava/lang/Class;

    aput-object v4, v5, v11

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x0

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    const/4 v15, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, v5

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4811
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v15, v5, v3

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LINKCOLOR:I

    new-array v5, v2, [Ljava/lang/Class;

    aput-object v4, v5, v11

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v18

    const/16 v21, 0x0

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteLinkText:I

    move-object/from16 v17, v5

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    move v3, v11

    .line 4813
    :goto_5
    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->dividers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 4814
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->dividers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Landroid/view/View;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/16 v18, 0x0

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 4817
    :cond_7
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/PaymentFormActivity;->codeFieldCell:Lorg/telegram/ui/Cells/EditTextSettingsCell;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4818
    new-instance v20, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->codeFieldCell:Lorg/telegram/ui/Cells/EditTextSettingsCell;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/EditTextSettingsCell;

    aput-object v5, v4, v11

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v24

    sget v32, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v21, v3

    move-object/from16 v23, v4

    move/from16 v28, v32

    invoke-direct/range {v20 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v20

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4819
    new-instance v20, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->codeFieldCell:Lorg/telegram/ui/Cells/EditTextSettingsCell;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    new-array v4, v2, [Ljava/lang/Class;

    aput-object v5, v4, v11

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v24

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    move-object/from16 v21, v3

    move-object/from16 v23, v4

    invoke-direct/range {v20 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v20

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4821
    new-instance v25, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->textView:Landroid/widget/TextView;

    sget v27, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v26, v3

    invoke-direct/range {v25 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v25

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4823
    new-instance v25, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v4, v11

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v29

    move/from16 v33, v32

    const/16 v32, 0x0

    const/16 v27, 0x0

    move-object/from16 v26, v3

    move-object/from16 v28, v4

    invoke-direct/range {v25 .. v33}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v25

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4824
    new-instance v20, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    new-array v4, v2, [Ljava/lang/Class;

    aput-object v5, v4, v11

    const-string v7, "checkBox"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v24

    const/16 v27, 0x0

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrack:I

    const/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v21, v3

    move-object/from16 v23, v4

    invoke-direct/range {v20 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v20

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4825
    new-instance v20, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    new-array v4, v2, [Ljava/lang/Class;

    aput-object v5, v4, v11

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v24

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    move-object/from16 v21, v3

    move-object/from16 v23, v4

    invoke-direct/range {v20 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v20

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4826
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTORWHITE:I

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v22, v19

    const/16 v19, 0x0

    move-object/from16 v16, v3

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4827
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTORWHITE:I

    const/16 v22, 0x0

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    move-object/from16 v17, v3

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v16

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v11

    .line 4829
    :goto_6
    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    array-length v4, v4

    if-ge v3, v4, :cond_8

    .line 4830
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v13, v4, v3

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTORWHITE:I

    const/16 v18, 0x0

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4831
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v14, v4, v3

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTORWHITE:I

    const/16 v19, 0x0

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4832
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v15, v4, v3

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v4, v11

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v18

    const/16 v21, 0x0

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/16 v16, 0x0

    const/16 v20, 0x0

    move-object/from16 v17, v4

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 4835
    :cond_8
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/16 v18, 0x0

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText6:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4837
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/TextPriceCell;

    aput-object v4, v3, v11

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/16 v19, 0x0

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4838
    new-instance v21, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    sget v23, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v5, v2, [Ljava/lang/Class;

    aput-object v4, v5, v11

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v25

    sget v34, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v22, v3

    move-object/from16 v24, v5

    move/from16 v29, v34

    invoke-direct/range {v21 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v21

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4839
    new-instance v26, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    sget v28, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v5, v2, [Ljava/lang/Class;

    aput-object v4, v5, v11

    const-string v7, "valueTextView"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v30

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v31, 0x0

    move-object/from16 v27, v3

    move-object/from16 v29, v5

    invoke-direct/range {v26 .. v34}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v26

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4840
    new-instance v21, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    sget v23, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v5, v2, [Ljava/lang/Class;

    aput-object v4, v5, v11

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v25

    sget v34, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v22, v3

    move-object/from16 v24, v5

    move/from16 v29, v34

    invoke-direct/range {v21 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v21

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4841
    new-instance v26, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    sget v28, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v5, v2, [Ljava/lang/Class;

    aput-object v4, v5, v11

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v30

    move-object/from16 v27, v3

    move-object/from16 v29, v5

    invoke-direct/range {v26 .. v34}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v26

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4843
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v17, v3, v11

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTORWHITE:I

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v23, v20

    const/16 v20, 0x0

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v16

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4844
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v13, v3, v11

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTORWHITE:I

    const/16 v18, 0x0

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v2

    .line 4846
    :goto_7
    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    array-length v4, v4

    if-ge v3, v4, :cond_9

    .line 4847
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v13, v4, v3

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/16 v18, 0x0

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4848
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v14, v4, v3

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aput-object v5, v4, v11

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x0

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/4 v15, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, v4

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4849
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v15, v4, v3

    new-array v4, v2, [Ljava/lang/Class;

    aput-object v5, v4, v11

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v18

    const/16 v21, 0x0

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    const/16 v16, 0x0

    move-object/from16 v17, v4

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 4852
    :cond_9
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentInfoCell:Lorg/telegram/ui/Cells/PaymentInfoCell;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4853
    new-instance v20, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentInfoCell:Lorg/telegram/ui/Cells/PaymentInfoCell;

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/PaymentInfoCell;

    aput-object v5, v4, v11

    const-string v6, "nameTextView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v24

    sget v33, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v21, v3

    move-object/from16 v23, v4

    move/from16 v28, v33

    invoke-direct/range {v20 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v20

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4854
    new-instance v25, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentInfoCell:Lorg/telegram/ui/Cells/PaymentInfoCell;

    new-array v4, v2, [Ljava/lang/Class;

    aput-object v5, v4, v11

    const-string v6, "detailTextView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v29

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v27, 0x0

    const/16 v30, 0x0

    move-object/from16 v26, v3

    move-object/from16 v28, v4

    invoke-direct/range {v25 .. v33}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v25

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4855
    new-instance v20, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentInfoCell:Lorg/telegram/ui/Cells/PaymentInfoCell;

    new-array v2, v2, [Ljava/lang/Class;

    aput-object v5, v2, v11

    const-string v4, "detailExTextView"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v24

    const/16 v27, 0x0

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v23, v2

    move-object/from16 v21, v3

    invoke-direct/range {v20 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v20

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4857
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomLayout:Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTORWHITE:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v10, v19

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4858
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomLayout:Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTORWHITE:I

    const/4 v10, 0x0

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public isSwipeBackEnabled(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 4524
    iget-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->swipeBackEnabled:Z

    return p1
.end method

.method public onActivityResultFragment(IILandroid/content/Intent;)V
    .locals 1

    .line 3369
    invoke-super {p0, p1, p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onActivityResultFragment(IILandroid/content/Intent;)V

    const/16 v0, 0x3df

    if-ne p1, v0, :cond_0

    .line 3371
    new-instance p1, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, p2, p3}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/PaymentFormActivity;ILandroid/content/Intent;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onBackPressed(Z)Z
    .locals 2

    .line 4750
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lorg/telegram/ui/PaymentFormActivity;->shouldNavigateBack:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 4752
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->webViewUrl:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 4753
    iput-boolean v1, p0, Lorg/telegram/ui/PaymentFormActivity;->shouldNavigateBack:Z

    :cond_0
    return v1

    .line 4757
    :cond_1
    iget-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->donePressed:Z

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public onBecomeFullyVisible()V
    .locals 2

    .line 3309
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBecomeFullyVisible()V

    .line 3311
    iget v0, p0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 3312
    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->needPayAfterTransition:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3313
    iput-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->needPayAfterTransition:Z

    .line 3314
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomLayout:Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->callOnClick()Z

    :cond_0
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 2

    .line 3236
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->twoStepPasswordChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3237
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didRemoveTwoStepPassword:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3238
    iget v0, p0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->isCheckoutPreview:Z

    if-eqz v0, :cond_1

    .line 3239
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->paymentFinished:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3241
    :cond_1
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 3265
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->delegate:Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;

    if-eqz v0, :cond_0

    .line 3266
    invoke-interface {v0}, Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;->onFragmentDestroyed()V

    .line 3268
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->checkAndroidTheme(Landroid/content/Context;Z)V

    .line 3269
    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentStatusSent:Z

    if-nez v0, :cond_1

    .line 3270
    sget-object v0, Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;->CANCELLED:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->invoiceStatus:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    .line 3271
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentFormCallback:Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/PaymentFormActivity;->getOtherSameFragmentDiff()I

    move-result v0

    if-nez v0, :cond_1

    .line 3272
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentFormCallback:Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->invoiceStatus:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    invoke-interface {v0, v1}, Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;->onInvoiceStatusChanged(Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;)V

    .line 3275
    :cond_1
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->twoStepPasswordChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3276
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didRemoveTwoStepPassword:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3277
    iget v0, p0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->isCheckoutPreview:Z

    if-eqz v0, :cond_3

    .line 3278
    :cond_2
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->paymentFinished:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3280
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_5

    .line 3282
    :try_start_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3284
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 3286
    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 3287
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3288
    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->webViewUrl:Ljava/lang/String;

    .line 3289
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V

    .line 3290
    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 3292
    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3296
    :cond_5
    :goto_2
    :try_start_1
    iget v0, p0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x6

    if-ne v0, v1, :cond_8

    :cond_6
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_7

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->allowScreenCapture:Z

    if-eqz v0, :cond_8

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    .line 3297
    :cond_7
    :goto_3
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 3298
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->logFlagSecure()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 3301
    :goto_4
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3303
    :cond_8
    :goto_5
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    const/4 v0, 0x1

    .line 3304
    iput-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->canceled:Z

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 571
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 572
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    .line 575
    :try_start_0
    iget v0, p0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v1, 0x2

    const/16 v2, 0x2000

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->test:Z

    if-nez v0, :cond_1

    .line 576
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 577
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->logFlagSecure()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 578
    :cond_1
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->allowScreenCapture:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return-void

    .line 579
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 580
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->logFlagSecure()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 583
    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 2

    if-eqz p1, :cond_5

    if-nez p2, :cond_5

    .line 3322
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    const/4 p2, 0x4

    if-eqz p1, :cond_1

    .line 3323
    iget v0, p0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    if-eq v0, p2, :cond_5

    .line 3324
    iget-object p2, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentFormMethod:Lorg/telegram/tgnet/TLRPC$TL_paymentFormMethod;

    if-eqz p2, :cond_0

    .line 3325
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_paymentFormMethod;->url:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/ui/PaymentFormActivity;->webViewUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void

    .line 3327
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$PaymentForm;->url:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/ui/PaymentFormActivity;->webViewUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void

    .line 3330
    :cond_1
    iget p1, p0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 3331
    new-instance p1, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    const-wide/16 v0, 0x64

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 3336
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 p2, 0x1

    aget-object p1, p1, p2

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 3337
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p1, p1, p2

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    return-void

    :cond_3
    const/4 v0, 0x0

    if-ne p1, p2, :cond_4

    .line 3339
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz p1, :cond_5

    .line 3340
    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void

    :cond_4
    const/4 p2, 0x6

    if-ne p1, p2, :cond_5

    .line 3343
    iget-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->waitingForEmail:Z

    if-nez p1, :cond_5

    .line 3344
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 3345
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p1, p1, v0

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    :cond_5
    return-void
.end method

.method public presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z
    .locals 0

    .line 4728
    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->onPresentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 4729
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p1

    return p1
.end method

.method public presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z
    .locals 0

    .line 4734
    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->onPresentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 4735
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    move-result p1

    return p1
.end method

.method public setPaymentFormCallback(Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;)V
    .locals 0

    .line 482
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentFormCallback:Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;

    return-void
.end method

.method public setResourcesProvider(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 503
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void
.end method
