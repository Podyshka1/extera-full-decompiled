.class public Lorg/telegram/ui/LoginActivity$PhoneView;
.super Lorg/telegram/ui/Components/SlideView;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PhoneView"
.end annotation


# instance fields
.field private cancelRequestingPasskey:Ljava/lang/Runnable;

.field private chevronRight:Landroid/widget/ImageView;

.field private codeDividerView:Landroid/view/View;

.field private codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

.field private codesMap:Ljava/util/HashMap;

.field private confirmedNumber:Z

.field private countriesArray:Ljava/util/ArrayList;

.field private countryButton:Lorg/telegram/ui/Components/TextViewSwitcher;

.field private countryCodeForHint:Ljava/lang/String;

.field private countryOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

.field private countryState:I

.field private currentCountry:Lorg/telegram/ui/CountrySelectActivity$Country;

.field private ignoreOnPhoneChange:Z

.field private ignoreOnPhoneChangePaste:Z

.field private ignoreOnTextChange:Z

.field private ignoreSelection:Z

.field private lastTitleClick:J

.field private lastTitleToast:Landroid/widget/Toast;

.field private nextPressed:Z

.field private numberFilled:Z

.field private phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

.field private phoneFormatMap:Ljava/util/HashMap;

.field private phoneOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

.field private plusTextView:Landroid/widget/TextView;

.field private requestedPasskey:Z

.field private requestingPasskey:Z

.field private subtitleView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

.field private syncContactsBox:Lorg/telegram/ui/Cells/CheckBoxCell;

.field private testBackendCheckBox:Lorg/telegram/ui/Cells/CheckBoxCell;

.field final synthetic this$0:Lorg/telegram/ui/LoginActivity;

.field private titleClickCount:I

.field private titleView:Landroid/widget/TextView;

.field private wasCountryHintIndex:I


# direct methods
.method public static synthetic $r8$lambda$3imEtfmg1CyCeZAT3O50jFvuub8(Lorg/telegram/ui/LoginActivity$PhoneView;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$fillNumber$24(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$47Xp5jL1EmbgwtfP4D7eFek6jJY(Lorg/telegram/ui/LoginActivity$PhoneView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$new$9(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4PBL40ib9glMW5X_lMyVnuDM__I(Lorg/telegram/ui/LoginActivity$PhoneView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$new$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9Z886kRjk8M0An8oNHEqCTJB5Mg(Lorg/telegram/ui/LoginActivity$PhoneView;Ljava/util/HashMap;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$new$13(Ljava/util/HashMap;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9cNRpOfaQIQR28Sko4FGbhaMAiI(Lorg/telegram/ui/LoginActivity$PhoneView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$loadCountries$14(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Bg22c220wv4Cm51eoKfUmPnfIj8(Lorg/telegram/ui/LoginActivity$PhoneView;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$new$7(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$D3BV9jJ6CJgJRn1wYjupq3AJH4Y(Lorg/telegram/ui/LoginActivity$PhoneView;Lorg/telegram/tgnet/TLObject;Ljava/util/HashMap;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$new$12(Lorg/telegram/tgnet/TLObject;Ljava/util/HashMap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DNM2L_V5JWf0A2Tn6-rG-inSgSA(Lorg/telegram/ui/LoginActivity$PhoneView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Landroid/os/Bundle;Ljava/lang/String;Lorg/telegram/ui/LoginActivity$PhoneInputData;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$onNextPressed$22(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Landroid/os/Bundle;Ljava/lang/String;Lorg/telegram/ui/LoginActivity$PhoneInputData;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DXFtf44wD2X3aEsVUh8_3fTniK8(Lorg/telegram/ui/LoginActivity$PhoneView;Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$auth_Authorization;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$requestPasskey$31(Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$auth_Authorization;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FQSIboosv3SUGSLtxqX3CiO7nwI(Lorg/telegram/ui/LoginActivity$PhoneView;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$onNextPressed$16(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GLnUak53IDGxqiTn5lK4ElurBhY(Lorg/telegram/ui/LoginActivity$PhoneView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$new$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$H3QknSvHpPSXjvO9NWPeRB8o_IM(Landroid/content/Context;)Landroid/view/View;
    .locals 5

    .line 1933
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 p0, 0x41800000    # 16.0f

    .line 1934
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v1, 0x1

    .line 1935
    invoke-virtual {v0, v1, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1936
    sget p0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1937
    sget p0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    invoke-static {p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 1938
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1939
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1940
    sget-object p0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1941
    sget-boolean p0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
    or-int/2addr p0, v1

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setGravity(I)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$JdA-m0qc_z776ciJM3OXrzXXvb4(Lorg/telegram/ui/CountrySelectActivity$Country;)Ljava/lang/String;
    .locals 0

    .line 2415
    iget-object p0, p0, Lorg/telegram/ui/CountrySelectActivity$Country;->name:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic $r8$lambda$Lyvl2xKemGDL6XrSKSSrViPiX-0(Lorg/telegram/ui/LoginActivity$PhoneView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$requestPasskey$28()V

    return-void
.end method

.method public static synthetic $r8$lambda$TdpJmE9PamE7IkKrqnmcxyp3mN8(Lorg/telegram/ui/LoginActivity$PhoneView;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$showDebugMenu$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$WT3LFoZp1t0EX6V7tjhf29L0z6Y(Lorg/telegram/ui/LoginActivity$PhoneView;Landroid/view/View;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$new$3(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$aGrAtG_Sa99pHgCUhqZzhM_HuPM(Lorg/telegram/ui/LoginActivity$PhoneView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$requestPasskey$29(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bZtzokIL_OsJ_XmIZMmID0qflYU(Lorg/telegram/ui/LoginActivity$PhoneView;ILorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$onNextPressed$18(ILorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$dLlV98U8WnpBZ0wJA5-3gC-fVq0(Lorg/telegram/ui/LoginActivity$PhoneView;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$fillNumber$26(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gXyUbPNwGwd51a_dlVOlt5Vm06Y(Lorg/telegram/ui/LoginActivity$PhoneView;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$new$8(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$jyEjiVLzy5ZGLBRbUQ2Z60oK5_0(Lorg/telegram/ui/LoginActivity$PhoneView;Lorg/telegram/ui/CountrySelectActivity$Country;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$new$5(Lorg/telegram/ui/CountrySelectActivity$Country;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kW5jI7HNGXLtol-hZcfNNi07IeM(Lorg/telegram/ui/LoginActivity$PhoneView;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$requestPasskey$30(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kgmgYOSu6se9vFUZ9V4U8tHAGpI(Lorg/telegram/ui/LoginActivity$PhoneView;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$loadCountries$15(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lyxwRQo6_j_vkq0qaIFK4SGrp1o(Lorg/telegram/ui/LoginActivity$PhoneView;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$onNextPressed$17(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$op8tdcyhoJdjb-n6TAnylPHyFMA(Lorg/telegram/ui/LoginActivity$PhoneView;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$new$1(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pU3kC7y0vOoWEFrTLMRPCS_1n14(Lorg/telegram/ui/LoginActivity$PhoneView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$new$10(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qSEcFu8ZC1elxiCS2t9Rkqb77_s(Lorg/telegram/ui/LoginActivity$PhoneView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$onShow$27()V

    return-void
.end method

.method public static synthetic $r8$lambda$rGeyHA6jHFncxDvO8G7Fg-aLJ78(Lorg/telegram/ui/LoginActivity$PhoneView;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$onNextPressed$21(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rZxAKLge4xkt46R1E-Tp82VffwY(Lorg/telegram/ui/LoginActivity$PhoneView;Landroid/os/Bundle;Ljava/lang/String;Lorg/telegram/ui/LoginActivity$PhoneInputData;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$onNextPressed$23(Landroid/os/Bundle;Ljava/lang/String;Lorg/telegram/ui/LoginActivity$PhoneInputData;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wXHdqSNL0_MGlD83LqhkYm1WaIQ(Lorg/telegram/ui/LoginActivity$PhoneView;Ljava/util/ArrayList;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$fillNumber$25(Ljava/util/ArrayList;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$xjIt2e7km9jtOdipQoHRzQfpp-g(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 3028
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$xxbcPfC0KXmMkgdeCHq55uxCZcc(Lorg/telegram/ui/LoginActivity$PhoneView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$onNextPressed$20(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetcodeField(Lorg/telegram/ui/LoginActivity$PhoneView;)Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcodesMap(Lorg/telegram/ui/LoginActivity$PhoneView;)Ljava/util/HashMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codesMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcountriesArray(Lorg/telegram/ui/LoginActivity$PhoneView;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcountryState(Lorg/telegram/ui/LoginActivity$PhoneView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetignoreOnPhoneChange(Lorg/telegram/ui/LoginActivity$PhoneView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreOnPhoneChange:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetignoreOnTextChange(Lorg/telegram/ui/LoginActivity$PhoneView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreOnTextChange:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetphoneField(Lorg/telegram/ui/LoginActivity$PhoneView;)Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetphoneOutlineView(Lorg/telegram/ui/LoginActivity$PhoneView;)Lorg/telegram/ui/Components/OutlineTextContainerView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputconfirmedNumber(Lorg/telegram/ui/LoginActivity$PhoneView;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->confirmedNumber:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcountryState(Lorg/telegram/ui/LoginActivity$PhoneView;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcurrentCountry(Lorg/telegram/ui/LoginActivity$PhoneView;Lorg/telegram/ui/CountrySelectActivity$Country;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->currentCountry:Lorg/telegram/ui/CountrySelectActivity$Country;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputignoreOnPhoneChange(Lorg/telegram/ui/LoginActivity$PhoneView;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreOnPhoneChange:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputignoreOnTextChange(Lorg/telegram/ui/LoginActivity$PhoneView;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreOnTextChange:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputignoreSelection(Lorg/telegram/ui/LoginActivity$PhoneView;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreSelection:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$minvalidateCountryHint(Lorg/telegram/ui/LoginActivity$PhoneView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$PhoneView;->invalidateCountryHint()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetCountryButtonText(Lorg/telegram/ui/LoginActivity$PhoneView;Ljava/lang/CharSequence;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$PhoneView;->setCountryButtonText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetCountryHint(Lorg/telegram/ui/LoginActivity$PhoneView;Ljava/lang/String;Lorg/telegram/ui/CountrySelectActivity$Country;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$PhoneView;->setCountryHint(Ljava/lang/String;Lorg/telegram/ui/CountrySelectActivity$Country;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    .line 1889
    iput-object v2, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    .line 1890
    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/SlideView;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    .line 1845
    iput v3, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->countryState:I

    .line 1849
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;

    .line 1850
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codesMap:Ljava/util/HashMap;

    .line 1851
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneFormatMap:Ljava/util/HashMap;

    .line 1853
    iput-boolean v3, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreSelection:Z

    .line 1854
    iput-boolean v3, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreOnTextChange:Z

    .line 1855
    iput-boolean v3, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreOnPhoneChange:Z

    .line 1856
    iput-boolean v3, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreOnPhoneChangePaste:Z

    .line 1857
    iput-boolean v3, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->nextPressed:Z

    .line 1858
    iput-boolean v3, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->confirmedNumber:Z

    .line 1860
    iput v3, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->titleClickCount:I

    const-wide/16 v4, 0x0

    .line 1861
    iput-wide v4, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->lastTitleClick:J

    const/4 v4, -0x1

    .line 2645
    iput v4, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->wasCountryHintIndex:I

    .line 3404
    iput-boolean v3, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->requestedPasskey:Z

    .line 3405
    iput-boolean v3, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->requestingPasskey:Z

    const/4 v5, 0x1

    .line 1892
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v6, 0x11

    .line 1893
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1895
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->titleView:Landroid/widget/TextView;

    const/high16 v8, 0x41900000    # 18.0f

    .line 1896
    invoke-virtual {v7, v5, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1897
    iget-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->titleView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1898
    iget-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->titleView:Landroid/widget/TextView;

    invoke-static {v2}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetactivityMode(Lorg/telegram/ui/LoginActivity;)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    sget v8, Lorg/telegram/messenger/R$string;->ChangePhoneNewNumber:I

    goto :goto_0

    :cond_0
    sget v8, Lorg/telegram/messenger/R$string;->YourNumber:I

    :goto_0
    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1899
    iget-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->titleView:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 1900
    iget-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->titleView:Landroid/widget/TextView;

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v7, v10, v11}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1901
    iget-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->titleView:Landroid/widget/TextView;

    const/high16 v17, 0x42000000    # 32.0f

    const/16 v18, 0x0

    const/4 v12, -0x1

    const/high16 v13, -0x40000000    # -2.0f

    const/4 v14, 0x1

    const/high16 v15, 0x42000000    # 32.0f

    const/16 v16, 0x0

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v1, v7, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1902
    iget-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->titleView:Landroid/widget/TextView;

    new-instance v10, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda5;

    invoke-direct {v10, v1, v0}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Landroid/content/Context;)V

    invoke-virtual {v7, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1924
    new-instance v7, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;)V

    iput-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->subtitleView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    .line 1925
    invoke-static {v2}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetactivityMode(Lorg/telegram/ui/LoginActivity;)I

    move-result v10

    if-ne v10, v9, :cond_1

    sget v10, Lorg/telegram/messenger/R$string;->ChangePhoneHelp:I

    goto :goto_1

    :cond_1
    sget v10, Lorg/telegram/messenger/R$string;->StartText:I

    :goto_1
    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1926
    iget-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->subtitleView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 v10, 0x41600000    # 14.0f

    invoke-virtual {v7, v5, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1927
    iget-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->subtitleView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 1928
    iget-object v6, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->subtitleView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v7, v11}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1929
    iget-object v6, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->subtitleView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/16 v15, 0x20

    const/16 v16, 0x0

    const/4 v10, -0x1

    const/4 v11, -0x2

    const/4 v12, 0x1

    const/16 v13, 0x20

    const/16 v14, 0x8

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1931
    new-instance v6, Lorg/telegram/ui/Components/TextViewSwitcher;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Components/TextViewSwitcher;-><init>(Landroid/content/Context;)V

    iput-object v6, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Lorg/telegram/ui/Components/TextViewSwitcher;

    .line 1932
    new-instance v7, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda6;

    invoke-direct {v7, v0}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda6;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v7}, Landroid/widget/ViewSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 1945
    sget v6, Lorg/telegram/messenger/R$anim;->text_in:I

    invoke-static {v0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    .line 1946
    sget-object v7, Lorg/telegram/ui/Components/Easings;->easeInOutQuad:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1947
    iget-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Lorg/telegram/ui/Components/TextViewSwitcher;

    invoke-virtual {v7, v6}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 1949
    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->chevronRight:Landroid/widget/ImageView;

    .line 1950
    sget v7, Lorg/telegram/messenger/R$drawable;->msg_inputarrow:I

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1952
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1953
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v7, 0x10

    .line 1954
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1955
    iget-object v8, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Lorg/telegram/ui/Components/TextViewSwitcher;

    const/4 v15, 0x0

    const/4 v10, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v6, v8, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1956
    iget-object v8, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->chevronRight:Landroid/widget/ImageView;

    const/high16 v15, 0x41600000    # 14.0f

    const/16 v16, 0x0

    const/high16 v10, 0x41c00000    # 24.0f

    const/high16 v11, 0x41c00000    # 24.0f

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinearRelatively(FFIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v6, v8, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1958
    new-instance v8, Lorg/telegram/ui/Components/OutlineTextContainerView;

    invoke-direct {v8, v0}, Lorg/telegram/ui/Components/OutlineTextContainerView;-><init>(Landroid/content/Context;)V

    iput-object v8, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->countryOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    .line 1959
    sget v10, Lorg/telegram/messenger/R$string;->Country:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lorg/telegram/ui/Components/OutlineTextContainerView;->setText(Ljava/lang/String;)V

    .line 1960
    iget-object v8, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->countryOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    const/4 v15, 0x0

    const/4 v10, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    const/16 v12, 0x30

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v8, v6, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1961
    iget-object v6, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->countryOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    invoke-virtual {v6, v5}, Lorg/telegram/ui/Components/OutlineTextContainerView;->setForceUseCenter(Z)V

    .line 1962
    iget-object v6, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->countryOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    invoke-virtual {v6, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 1963
    iget-object v6, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->countryOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    sget v8, Lorg/telegram/messenger/R$string;->Country:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1964
    iget-object v6, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->countryOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    new-instance v8, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda7;

    invoke-direct {v8, v1}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1965
    iget-object v6, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->countryOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    const/high16 v14, 0x41800000    # 16.0f

    const/high16 v15, 0x41600000    # 14.0f

    const/4 v10, -0x1

    const/16 v11, 0x3a

    const/high16 v12, 0x41800000    # 16.0f

    const/high16 v13, 0x41c00000    # 24.0f

    invoke-static/range {v10 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v1, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1966
    iget-object v6, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->countryOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    new-instance v8, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda8;

    invoke-direct {v8, v1}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1977
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1978
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1980
    new-instance v8, Lorg/telegram/ui/Components/OutlineTextContainerView;

    invoke-direct {v8, v0}, Lorg/telegram/ui/Components/OutlineTextContainerView;-><init>(Landroid/content/Context;)V

    iput-object v8, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    const/high16 v15, 0x41800000    # 16.0f

    const/high16 v16, 0x41000000    # 8.0f

    const/high16 v11, -0x40000000    # -2.0f

    const/16 v12, 0x10

    const/high16 v13, 0x41800000    # 16.0f

    const/high16 v14, 0x41000000    # 8.0f

    .line 1981
    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v8, v6, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1982
    iget-object v8, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    sget v10, Lorg/telegram/messenger/R$string;->PhoneNumber:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lorg/telegram/ui/Components/OutlineTextContainerView;->setText(Ljava/lang/String;)V

    .line 1983
    iget-object v8, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    const/high16 v14, 0x41800000    # 16.0f

    const/high16 v15, 0x41000000    # 8.0f

    const/4 v10, -0x1

    const/16 v11, 0x3a

    const/high16 v12, 0x41800000    # 16.0f

    const/high16 v13, 0x41000000    # 8.0f

    invoke-static/range {v10 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v1, v8, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1985
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v8, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->plusTextView:Landroid/widget/TextView;

    .line 1986
    const-string v10, "+"

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1987
    iget-object v8, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->plusTextView:Landroid/widget/TextView;

    const/high16 v10, 0x41800000    # 16.0f

    invoke-virtual {v8, v5, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1988
    iget-object v8, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->plusTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 1989
    iget-object v8, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->plusTextView:Landroid/widget/TextView;

    const/4 v11, -0x2

    invoke-static {v11, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v6, v8, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1991
    new-instance v8, Lorg/telegram/ui/LoginActivity$PhoneView$1;

    invoke-direct {v8, v1, v0, v2}, Lorg/telegram/ui/LoginActivity$PhoneView$1;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Landroid/content/Context;Lorg/telegram/ui/LoginActivity;)V

    iput-object v8, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    const/4 v12, 0x3

    .line 2002
    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setInputType(I)V

    .line 2003
    iget-object v8, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    const/high16 v13, 0x41a00000    # 20.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    invoke-virtual {v8, v14}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    .line 2004
    iget-object v8, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    const/high16 v14, 0x3fc00000    # 1.5f

    invoke-virtual {v8, v14}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    .line 2005
    iget-object v8, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    const/high16 v15, 0x41200000    # 10.0f

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    invoke-virtual {v8, v15, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 2006
    iget-object v8, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v8, v5, v10}, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->setTextSize(IF)V

    .line 2007
    iget-object v8, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 2008
    iget-object v8, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    const/16 v15, 0x13

    invoke-virtual {v8, v15}, Landroid/widget/TextView;->setGravity(I)V

    .line 2009
    iget-object v8, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    move/from16 v16, v7

    const v7, 0x10000005

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 2010
    iget-object v8, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    move/from16 v17, v13

    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2012
    iget-object v8, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v1}, Lorg/telegram/ui/LoginActivity$PhoneView;->hasCustomKeyboard()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-static {v2}, Lorg/telegram/ui/LoginActivity;->-$$Nest$misCustomKeyboardForceDisabled(Lorg/telegram/ui/LoginActivity;)Z

    move-result v18

    if-eqz v18, :cond_2

    goto :goto_2

    :cond_2
    move v11, v3

    goto :goto_3

    :cond_3
    :goto_2
    move v11, v5

    :goto_3
    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setShowSoftInputOnFocus(Z)V

    .line 2013
    iget-object v8, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    sget v11, Lorg/telegram/messenger/R$string;->LoginAccessibilityCountryCode:I

    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2014
    iget-object v8, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v19, 0x37

    const/16 v20, 0x24

    const/high16 v21, -0x3ef00000    # -9.0f

    const/16 v22, 0x0

    invoke-static/range {v19 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v6, v8, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2015
    iget-object v8, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    new-instance v11, Lorg/telegram/ui/LoginActivity$PhoneView$2;

    invoke-direct {v11, v1, v2}, Lorg/telegram/ui/LoginActivity$PhoneView$2;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v8, v11}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2139
    iget-object v8, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    new-instance v11, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda9;

    invoke-direct {v11, v1}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;)V

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 2147
    new-instance v8, Landroid/view/View;

    invoke-direct {v8, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v8, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codeDividerView:Landroid/view/View;

    const/high16 v23, 0x41400000    # 12.0f

    const/high16 v24, 0x41000000    # 8.0f

    const/16 v19, 0x0

    const/16 v20, -0x1

    const/high16 v21, 0x40800000    # 4.0f

    const/high16 v22, 0x41000000    # 8.0f

    .line 2148
    invoke-static/range {v19 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    const/high16 v11, 0x3f000000    # 0.5f

    .line 2149
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, v8, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 2150
    iget-object v11, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codeDividerView:Landroid/view/View;

    invoke-virtual {v6, v11, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2152
    new-instance v8, Lorg/telegram/ui/LoginActivity$PhoneView$3;

    invoke-direct {v8, v1, v0, v2}, Lorg/telegram/ui/LoginActivity$PhoneView$3;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Landroid/content/Context;Lorg/telegram/ui/LoginActivity;)V

    iput-object v8, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    .line 2195
    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setInputType(I)V

    .line 2196
    iget-object v8, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v8, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 2197
    iget-object v8, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-virtual {v8, v11}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    .line 2198
    iget-object v8, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v8, v14}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    .line 2199
    iget-object v8, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v8, v5, v10}, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->setTextSize(IF)V

    .line 2200
    iget-object v8, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 2201
    iget-object v8, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v8, v15}, Landroid/widget/TextView;->setGravity(I)V

    .line 2202
    iget-object v8, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 2203
    iget-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v7, v13}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2205
    iget-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v1}, Lorg/telegram/ui/LoginActivity$PhoneView;->hasCustomKeyboard()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {v2}, Lorg/telegram/ui/LoginActivity;->-$$Nest$misCustomKeyboardForceDisabled(Lorg/telegram/ui/LoginActivity;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_4

    :cond_4
    move v8, v3

    goto :goto_5

    :cond_5
    :goto_4
    move v8, v5

    :goto_5
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setShowSoftInputOnFocus(Z)V

    .line 2206
    iget-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    sget v8, Lorg/telegram/messenger/R$string;->PhoneNumber:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2207
    iget-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    const/high16 v8, 0x42100000    # 36.0f

    invoke-static {v4, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v6, v7, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2208
    iget-object v4, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    new-instance v6, Lorg/telegram/ui/LoginActivity$PhoneView$4;

    invoke-direct {v6, v1, v2}, Lorg/telegram/ui/LoginActivity$PhoneView$4;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2319
    iget-object v4, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    new-instance v6, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda10;

    invoke-direct {v6, v1}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 2332
    invoke-static {v2}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetnewAccount(Lorg/telegram/ui/LoginActivity;)Z

    move-result v4

    const/16 v6, 0x38

    const-string v7, ""

    if-eqz v4, :cond_7

    invoke-static {v2}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetactivityMode(Lorg/telegram/ui/LoginActivity;)I

    move-result v4

    if-nez v4, :cond_7

    .line 2333
    new-instance v4, Lorg/telegram/ui/Cells/CheckBoxCell;

    invoke-direct {v4, v0, v9}, Lorg/telegram/ui/Cells/CheckBoxCell;-><init>(Landroid/content/Context;I)V

    iput-object v4, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->syncContactsBox:Lorg/telegram/ui/Cells/CheckBoxCell;

    .line 2334
    const-string v8, "SyncContacts"

    sget v10, Lorg/telegram/messenger/R$string;->SyncContacts:I

    invoke-static {v8, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v2}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetsyncContacts(Lorg/telegram/ui/LoginActivity;)Z

    move-result v10

    invoke-virtual {v4, v8, v7, v10, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)V

    .line 2335
    iget-object v4, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->syncContactsBox:Lorg/telegram/ui/Cells/CheckBoxCell;

    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_6

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallScreen()Z

    move-result v8

    if-eqz v8, :cond_6

    move v8, v6

    goto :goto_6

    :cond_6
    move v8, v3

    :goto_6
    add-int v24, v16, v8

    const/16 v25, 0x0

    const/16 v19, -0x2

    const/16 v20, -0x1

    const/16 v21, 0x33

    const/16 v22, 0x10

    const/16 v23, 0x0

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v1, v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2337
    iget-object v4, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->syncContactsBox:Lorg/telegram/ui/Cells/CheckBoxCell;

    new-instance v8, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda11;

    invoke-direct {v8, v1}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;)V

    invoke-virtual {v4, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v4, 0x30

    goto :goto_7

    :cond_7
    const/16 v4, 0x48

    .line 2352
    :goto_7
    invoke-static {v2}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetactivityMode(Lorg/telegram/ui/LoginActivity;)I

    move-result v8

    if-nez v8, :cond_9

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getActivatedAccountsCount()I

    move-result v8

    if-lez v8, :cond_9

    .line 2353
    new-instance v8, Lorg/telegram/ui/Cells/CheckBoxCell;

    invoke-direct {v8, v0, v9}, Lorg/telegram/ui/Cells/CheckBoxCell;-><init>(Landroid/content/Context;I)V

    iput-object v8, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->testBackendCheckBox:Lorg/telegram/ui/Cells/CheckBoxCell;

    .line 2354
    sget v10, Lorg/telegram/messenger/R$string;->TestBackend:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/tgnet/ConnectionsManager;->isTestBackend()Z

    move-result v11

    invoke-static {v2, v11}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fputtestBackend(Lorg/telegram/ui/LoginActivity;Z)V

    invoke-virtual {v8, v10, v7, v11, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)V

    .line 2355
    iget-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->testBackendCheckBox:Lorg/telegram/ui/Cells/CheckBoxCell;

    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_8

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallScreen()Z

    move-result v8

    if-eqz v8, :cond_8

    goto :goto_8

    :cond_8
    move v6, v3

    :goto_8
    add-int v24, v16, v6

    const/16 v25, 0x0

    const/16 v19, -0x2

    const/16 v20, -0x1

    const/16 v21, 0x33

    const/16 v22, 0x10

    const/16 v23, 0x0

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v4, v4, -0x18

    .line 2357
    iget-object v6, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->testBackendCheckBox:Lorg/telegram/ui/Cells/CheckBoxCell;

    new-instance v7, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda12;

    invoke-direct {v7, v1}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    if-lez v4, :cond_a

    .line 2373
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallScreen()Z

    move-result v6

    if-nez v6, :cond_a

    .line 2374
    new-instance v6, Landroid/widget/Space;

    invoke-direct {v6, v0}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    int-to-float v0, v4

    .line 2375
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/view/View;->setMinimumHeight(I)V

    const/4 v0, -0x2

    .line 2376
    invoke-static {v0, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2379
    :cond_a
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 2382
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    const-string v8, "countries.txt"

    invoke-virtual {v7, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2384
    :goto_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_e

    .line 2385
    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 2386
    new-instance v7, Lorg/telegram/ui/CountrySelectActivity$Country;

    invoke-direct {v7}, Lorg/telegram/ui/CountrySelectActivity$Country;-><init>()V

    .line 2387
    aget-object v8, v6, v9

    iput-object v8, v7, Lorg/telegram/ui/CountrySelectActivity$Country;->name:Ljava/lang/String;

    .line 2388
    aget-object v8, v6, v3

    iput-object v8, v7, Lorg/telegram/ui/CountrySelectActivity$Country;->code:Ljava/lang/String;

    .line 2389
    aget-object v10, v6, v5

    iput-object v10, v7, Lorg/telegram/ui/CountrySelectActivity$Country;->shortname:Ljava/lang/String;

    .line 2390
    const-string v10, "FT"

    invoke-static {v8, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 2391
    iget-object v8, v7, Lorg/telegram/ui/CountrySelectActivity$Country;->shortname:Ljava/lang/String;

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getCountryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2392
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_b

    iget-object v10, v7, Lorg/telegram/ui/CountrySelectActivity$Country;->shortname:Ljava/lang/String;

    invoke-static {v10, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_b

    .line 2393
    iget-object v10, v7, Lorg/telegram/ui/CountrySelectActivity$Country;->name:Ljava/lang/String;

    iput-object v10, v7, Lorg/telegram/ui/CountrySelectActivity$Country;->defaultName:Ljava/lang/String;

    .line 2394
    iput-object v8, v7, Lorg/telegram/ui/CountrySelectActivity$Country;->name:Ljava/lang/String;

    goto :goto_a

    :catch_0
    move-exception v0

    goto :goto_b

    .line 2397
    :cond_b
    :goto_a
    iget-object v8, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;

    invoke-virtual {v8, v3, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2399
    iget-object v8, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codesMap:Ljava/util/HashMap;

    aget-object v10, v6, v3

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    if-nez v8, :cond_c

    .line 2401
    iget-object v8, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codesMap:Ljava/util/HashMap;

    aget-object v10, v6, v3

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v8, v11

    .line 2403
    :cond_c
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2405
    array-length v7, v6

    if-le v7, v12, :cond_d

    .line 2406
    iget-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneFormatMap:Ljava/util/HashMap;

    aget-object v8, v6, v3

    aget-object v10, v6, v12

    invoke-static {v10}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2408
    :cond_d
    aget-object v7, v6, v5

    aget-object v6, v6, v9

    invoke-virtual {v4, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 2410
    :cond_e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_c

    .line 2412
    :goto_b
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2415
    :goto_c
    iget-object v0, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda13;

    invoke-direct {v3}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda13;-><init>()V

    invoke-static {v3}, Lj$/util/Comparator$-CC;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2420
    :try_start_1
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_d

    :catch_1
    move-exception v0

    .line 2425
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2431
    :goto_d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_help_getNearestDc;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_help_getNearestDc;-><init>()V

    .line 2432
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/AccountInstance;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda14;

    invoke-direct {v3, v1, v4}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Ljava/util/HashMap;)V

    const/16 v4, 0xa

    invoke-virtual {v2, v0, v3, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 2442
    iget-object v0, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-nez v0, :cond_f

    .line 2443
    invoke-direct {v1, v13}, Lorg/telegram/ui/LoginActivity$PhoneView;->setCountryButtonText(Ljava/lang/CharSequence;)V

    .line 2444
    iget-object v0, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0, v13}, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->setHintText(Ljava/lang/String;)V

    .line 2445
    iput v5, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->countryState:I

    .line 2448
    :cond_f
    iget-object v0, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-eqz v0, :cond_10

    .line 2449
    iget-object v0, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 2450
    iget-object v0, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    goto :goto_e

    .line 2452
    :cond_10
    iget-object v0, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 2455
    :goto_e
    invoke-direct {v1}, Lorg/telegram/ui/LoginActivity$PhoneView;->loadCountries()V

    return-void
.end method

.method private fillNumberInternal(Ljava/lang/String;)V
    .locals 12

    .line 3219
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 3220
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 3224
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_7

    .line 3225
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-le v0, v3, :cond_6

    :goto_0
    if-lt v3, v1, :cond_5

    .line 3227
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3230
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codesMap:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-nez v5, :cond_0

    move-object v5, v4

    goto :goto_1

    .line 3233
    :cond_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v1, :cond_2

    .line 3234
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v6

    .line 3235
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "phone_code_last_matched_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3237
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v1

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/CountrySelectActivity$Country;

    if-eqz v6, :cond_3

    .line 3239
    iget-object v7, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v9, v2

    :cond_1
    if-ge v9, v8, :cond_3

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    check-cast v10, Lorg/telegram/ui/CountrySelectActivity$Country;

    .line 3240
    iget-object v11, v10, Lorg/telegram/ui/CountrySelectActivity$Country;->shortname:Ljava/lang/String;

    invoke-static {v11, v6}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    move-object v5, v10

    goto :goto_1

    .line 3247
    :cond_2
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/CountrySelectActivity$Country;

    :cond_3
    :goto_1
    if-eqz v5, :cond_4

    .line 3252
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 3253
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v0, v1

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_5
    move v0, v2

    :goto_2
    if-nez v0, :cond_6

    .line 3258
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 3259
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    if-eqz v4, :cond_7

    .line 3263
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 3264
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3265
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    .line 3269
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    if-lez p1, :cond_8

    .line 3270
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v3, 0x12c

    invoke-virtual {p1, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object p1

    .line 3271
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    new-array v4, v1, [F

    aput v0, v4, v2

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-static {v3, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    new-array v6, v1, [F

    aput v0, v6, v2

    .line 3272
    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v3, v4, v2

    aput-object v0, v4, v1

    .line 3271
    invoke-virtual {p1, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 3273
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 3275
    iput-boolean v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->confirmedNumber:Z

    return-void

    .line 3277
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 3278
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public static formatNumber(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    return-object p1

    .line 3203
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 3205
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length v2, p0

    move v3, v1

    :goto_0
    if-ge v1, v2, :cond_3

    aget-char v4, p0, v1

    const/16 v5, 0x58

    if-ne v4, v5, :cond_1

    .line 3207
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 3208
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3212
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3216
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getCodeAndNumber(Ljava/lang/String;)Landroid/util/Pair;
    .locals 11

    .line 3152
    const-string v0, "+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3153
    const-string v0, "\\+"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3155
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 3156
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x4

    if-le v0, v2, :cond_8

    :goto_0
    const/4 v0, 0x1

    const/4 v3, 0x0

    if-lt v2, v0, :cond_6

    .line 3158
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 3161
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codesMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-nez v5, :cond_1

    move-object v5, v1

    goto :goto_1

    .line 3164
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v0, :cond_3

    .line 3165
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v6

    .line 3166
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "phone_code_last_matched_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3168
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/CountrySelectActivity$Country;

    if-eqz v6, :cond_4

    .line 3170
    iget-object v7, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    :cond_2
    if-ge v3, v8, :cond_4

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v3, v3, 0x1

    check-cast v9, Lorg/telegram/ui/CountrySelectActivity$Country;

    .line 3171
    iget-object v10, v9, Lorg/telegram/ui/CountrySelectActivity$Country;->shortname:Ljava/lang/String;

    invoke-static {v10, v6}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v5, v9

    goto :goto_1

    .line 3178
    :cond_3
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lorg/telegram/ui/CountrySelectActivity$Country;

    :cond_4
    :goto_1
    if-eqz v5, :cond_5

    .line 3182
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move v3, v0

    goto :goto_2

    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_6
    move-object v4, v1

    :goto_2
    if-nez v3, :cond_7

    .line 3188
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_7
    move-object p1, v1

    move-object v1, v4

    goto :goto_3

    :cond_8
    move-object p1, v1

    .line 3192
    :goto_3
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private invalidateCountryHint()V
    .locals 12

    .line 2647
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryCodeForHint:Ljava/lang/String;

    .line 2648
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    const-string v2, " "

    const-string v3, ""

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    .line 2650
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneFormatMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-eqz v4, :cond_8

    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneFormatMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 2652
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneFormatMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2653
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    const-string v8, "0"

    const-string v9, "X"

    const/4 v10, 0x0

    if-nez v7, :cond_2

    move v7, v10

    .line 2654
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-ge v7, v11, :cond_2

    .line 2655
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 2656
    invoke-virtual {v11, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v9, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v8, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    move v7, v6

    :goto_2
    if-ne v7, v6, :cond_6

    move v1, v10

    .line 2663
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 2664
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2665
    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    move v7, v1

    :cond_5
    if-ne v7, v6, :cond_6

    move v7, v10

    .line 2675
    :cond_6
    iget v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->wasCountryHintIndex:I

    if-eq v1, v7, :cond_9

    .line 2676
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneFormatMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2677
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 2678
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    if-eqz v0, :cond_7

    const/16 v4, 0x58

    const/16 v5, 0x30

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    :cond_7
    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->setHintText(Ljava/lang/String;)V

    .line 2679
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    .line 2680
    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    .line 2681
    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2679
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(II)V

    .line 2683
    iput v7, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->wasCountryHintIndex:I

    return-void

    .line 2685
    :cond_8
    iget v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->wasCountryHintIndex:I

    if-eq v0, v6, :cond_9

    .line 2686
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 2687
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->setHintText(Ljava/lang/String;)V

    .line 2688
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(II)V

    .line 2689
    iput v6, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->wasCountryHintIndex:I

    :cond_9
    return-void
.end method

.method private synthetic lambda$fillNumber$24(Ljava/util/List;)V
    .locals 6

    .line 3306
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3307
    const-string v1, "firstloginshow"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v5, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v3, v5}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 3317
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const/4 v1, 0x7

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 3308
    :cond_1
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3309
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3311
    sget v0, Lorg/telegram/messenger/R$raw;->incoming_calls:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTopBackground:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    const/16 v3, 0x2e

    invoke-virtual {p1, v0, v3, v4, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTopAnimation(IIZI)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3312
    const-string v0, "Continue"

    sget v1, Lorg/telegram/messenger/R$string;->Continue:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3313
    const-string v0, "AllowFillNumber"

    sget v3, Lorg/telegram/messenger/R$string;->AllowFillNumber:I

    invoke-static {v0, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3314
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {v0, p1, v2, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;ZLandroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fputpermissionsShowDialog(Lorg/telegram/ui/LoginActivity;Landroid/app/Dialog;)V

    .line 3315
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1, v2}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fputneedRequestPermissions(Lorg/telegram/ui/LoginActivity;Z)V

    return-void
.end method

.method private synthetic lambda$fillNumber$25(Ljava/util/ArrayList;I)V
    .locals 0

    .line 3353
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3354
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$PhoneView;->fillNumberInternal(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$fillNumber$26(Ljava/util/ArrayList;)V
    .locals 3

    .line 3352
    sget v0, Lorg/telegram/messenger/R$string;->SelectNumber:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda17;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Ljava/util/ArrayList;)V

    invoke-static {p1, v0, v1, v2}, Lcom/exteragram/messenger/utils/ui/PopupUtils;->showDialogWithoutRadio(Ljava/util/ArrayList;Ljava/lang/String;Landroid/content/Context;Lcom/exteragram/messenger/utils/ui/PopupUtils$OnItemClickListener;)V

    return-void
.end method

.method private synthetic lambda$loadCountries$14(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 9

    if-nez p1, :cond_e

    .line 2464
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2465
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codesMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 2466
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneFormatMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 2468
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_help_countriesList;

    const/4 p1, 0x0

    move v0, p1

    .line 2469
    :goto_0
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_help_countriesList;->countries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 2470
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_help_countriesList;->countries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_help_country;

    move v2, p1

    .line 2471
    :goto_1
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_help_country;->country_codes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 2472
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_help_country;->country_codes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_help_countryCode;

    if-eqz v3, :cond_2

    .line 2474
    new-instance v4, Lorg/telegram/ui/CountrySelectActivity$Country;

    invoke-direct {v4}, Lorg/telegram/ui/CountrySelectActivity$Country;-><init>()V

    .line 2475
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_help_country;->name:Ljava/lang/String;

    iput-object v5, v4, Lorg/telegram/ui/CountrySelectActivity$Country;->name:Ljava/lang/String;

    .line 2476
    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$TL_help_country;->default_name:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/ui/CountrySelectActivity$Country;->defaultName:Ljava/lang/String;

    if-nez v5, :cond_0

    if-eqz v6, :cond_0

    .line 2478
    iput-object v6, v4, Lorg/telegram/ui/CountrySelectActivity$Country;->name:Ljava/lang/String;

    .line 2480
    :cond_0
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_help_countryCode;->country_code:Ljava/lang/String;

    iput-object v5, v4, Lorg/telegram/ui/CountrySelectActivity$Country;->code:Ljava/lang/String;

    .line 2481
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_help_country;->iso2:Ljava/lang/String;

    iput-object v5, v4, Lorg/telegram/ui/CountrySelectActivity$Country;->shortname:Ljava/lang/String;

    .line 2483
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2484
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codesMap:Ljava/util/HashMap;

    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_help_countryCode;->country_code:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-nez v5, :cond_1

    .line 2486
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codesMap:Ljava/util/HashMap;

    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_help_countryCode;->country_code:Ljava/lang/String;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v7

    .line 2488
    :cond_1
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2489
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_help_countryCode;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 2490
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneFormatMap:Ljava/util/HashMap;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_help_countryCode;->country_code:Ljava/lang/String;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_help_countryCode;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2496
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p2}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetactivityMode(Lorg/telegram/ui/LoginActivity;)I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_c

    .line 2497
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p2}, Lorg/telegram/ui/LoginActivity;->access$600(Lorg/telegram/ui/LoginActivity;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/UserConfig;->getClientPhone()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2499
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 2500
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_c

    :goto_2
    const/4 v0, 0x1

    if-lt v1, v0, :cond_b

    .line 2502
    invoke-virtual {p2, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2505
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codesMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x0

    if-nez v3, :cond_5

    goto :goto_4

    .line 2508
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v0, :cond_9

    .line 2509
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v5

    .line 2510
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "phone_code_last_matched_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 2513
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/CountrySelectActivity$Country;

    .line 2514
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, p1

    :cond_6
    if-ge v6, v5, :cond_7

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lorg/telegram/ui/CountrySelectActivity$Country;

    .line 2515
    iget-object v8, v7, Lorg/telegram/ui/CountrySelectActivity$Country;->shortname:Ljava/lang/String;

    invoke-static {v8, v4}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    move-object v0, v7

    :cond_7
    :goto_3
    move-object v4, v0

    goto :goto_4

    .line 2521
    :cond_8
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/CountrySelectActivity$Country;

    goto :goto_3

    .line 2524
    :cond_9
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lorg/telegram/ui/CountrySelectActivity$Country;

    :goto_4
    if-eqz v4, :cond_a

    .line 2529
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_a
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 2534
    :cond_b
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2539
    :cond_c
    :goto_5
    new-instance p1, Lorg/telegram/ui/CountrySelectActivity$Country;

    invoke-direct {p1}, Lorg/telegram/ui/CountrySelectActivity$Country;-><init>()V

    .line 2540
    const-string p2, "Test Backend"

    iput-object p2, p1, Lorg/telegram/ui/CountrySelectActivity$Country;->name:Ljava/lang/String;

    .line 2541
    const-string p2, "999"

    iput-object p2, p1, Lorg/telegram/ui/CountrySelectActivity$Country;->code:Ljava/lang/String;

    .line 2542
    const-string p2, "EX"

    iput-object p2, p1, Lorg/telegram/ui/CountrySelectActivity$Country;->shortname:Ljava/lang/String;

    .line 2543
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2544
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codesMap:Ljava/util/HashMap;

    iget-object v0, p1, Lorg/telegram/ui/CountrySelectActivity$Country;->code:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_d

    .line 2546
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codesMap:Ljava/util/HashMap;

    iget-object v0, p1, Lorg/telegram/ui/CountrySelectActivity$Country;->code:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p2, v1

    .line 2548
    :cond_d
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2549
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneFormatMap:Ljava/util/HashMap;

    iget-object p1, p1, Lorg/telegram/ui/CountrySelectActivity$Country;->code:Ljava/lang/String;

    const-string v0, "66 X XXXX"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    return-void
.end method

.method private synthetic lambda$loadCountries$15(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 2462
    new-instance v0, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda25;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/content/Context;Landroid/view/View;)V
    .locals 7

    .line 1903
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->lastTitleToast:Landroid/widget/Toast;

    if-eqz p2, :cond_0

    .line 1904
    invoke-virtual {p2}, Landroid/widget/Toast;->cancel()V

    const/4 p2, 0x0

    .line 1905
    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->lastTitleToast:Landroid/widget/Toast;

    .line 1907
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1908
    iget p2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->titleClickCount:I

    const/4 v2, 0x0

    if-lez p2, :cond_1

    iget-wide v3, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->lastTitleClick:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0x5dc

    cmp-long p2, v3, v5

    if-lez p2, :cond_1

    .line 1909
    iput v2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->titleClickCount:I

    .line 1911
    :cond_1
    iget p2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->titleClickCount:I

    const/4 v3, 0x1

    add-int/2addr p2, v3

    iput p2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->titleClickCount:I

    .line 1912
    iput-wide v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->lastTitleClick:J

    const/4 v0, 0x5

    if-lt p2, v0, :cond_2

    .line 1915
    iput v2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->titleClickCount:I

    const-wide/16 p1, 0x0

    .line 1916
    iput-wide p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->lastTitleClick:J

    .line 1917
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$PhoneView;->showDebugMenu()V

    return-void

    :cond_2
    if-le p2, v3, :cond_3

    sub-int/2addr v0, p2

    .line 1919
    new-array p2, v2, [Ljava/lang/Object;

    const-string v1, "DebugMenuLoginToast"

    invoke-static {v1, v0, p2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->lastTitleToast:Landroid/widget/Toast;

    .line 1920
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_3
    return-void
.end method

.method private synthetic lambda$new$10(Landroid/view/View;)V
    .locals 3

    .line 2358
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2361
    :cond_0
    check-cast p1, Lorg/telegram/ui/Cells/CheckBoxCell;

    .line 2362
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgettestBackend(Lorg/telegram/ui/LoginActivity;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {v0, v1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fputtestBackend(Lorg/telegram/ui/LoginActivity;Z)V

    .line 2363
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgettestBackend(Lorg/telegram/ui/LoginActivity;)Z

    move-result v0

    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    .line 2365
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/tgnet/ConnectionsManager;->isTestBackend()Z

    move-result p1

    .line 2366
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgettestBackend(Lorg/telegram/ui/LoginActivity;)Z

    move-result v0

    if-eq p1, v0, :cond_1

    .line 2367
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->switchBackend(Z)V

    .line 2369
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$PhoneView;->loadCountries()V

    return-void
.end method

.method private synthetic lambda$new$12(Lorg/telegram/tgnet/TLObject;Ljava/util/HashMap;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2436
    :cond_0
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_nearestDc;

    .line 2437
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 2438
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_nearestDc;->country:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/LoginActivity$PhoneView;->setCountry(Ljava/util/HashMap;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$13(Ljava/util/HashMap;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 2432
    new-instance p3, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda18;

    invoke-direct {p3, p0, p2, p1}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Lorg/telegram/tgnet/TLObject;Ljava/util/HashMap;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$3(Landroid/view/View;Z)V
    .locals 0

    .line 1964
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    if-eqz p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/OutlineTextContainerView;->animateSelection(F)V

    return-void
.end method

.method private synthetic lambda$new$4()V
    .locals 2

    .line 1970
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-static {v0, v1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mshowKeyboard(Lorg/telegram/ui/LoginActivity;Landroid/view/View;)Z

    return-void
.end method

.method private synthetic lambda$new$5(Lorg/telegram/ui/CountrySelectActivity$Country;)V
    .locals 2

    .line 1969
    invoke-virtual {p0, p1}, Lorg/telegram/ui/LoginActivity$PhoneView;->selectCountry(Lorg/telegram/ui/CountrySelectActivity$Country;)V

    .line 1970
    new-instance p1, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda24;

    invoke-direct {p1, p0}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;)V

    const-wide/16 v0, 0x12c

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1971
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 1972
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    return-void
.end method

.method private synthetic lambda$new$6(Landroid/view/View;)V
    .locals 2

    .line 1967
    new-instance p1, Lorg/telegram/ui/CountrySelectActivity;

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;

    invoke-direct {p1, v0, v1}, Lorg/telegram/ui/CountrySelectActivity;-><init>(ZLjava/util/ArrayList;)V

    .line 1968
    new-instance v0, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/CountrySelectActivity;->setCountrySelectActivityDelegate(Lorg/telegram/ui/CountrySelectActivity$CountrySelectActivityDelegate;)V

    .line 1974
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$new$7(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    .line 2141
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 2142
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$new$8(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x5

    if-ne p2, p1, :cond_1

    .line 2321
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetphoneNumberConfirmView(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 2322
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetphoneNumberConfirmView(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->-$$Nest$fgetfabButton(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)Lorg/telegram/ui/Components/FragmentFloatingButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    return p2

    :cond_0
    const/4 p1, 0x0

    .line 2325
    invoke-virtual {p0, p1}, Lorg/telegram/ui/LoginActivity$PhoneView;->onNextPressed(Ljava/lang/String;)V

    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$new$9(Landroid/view/View;)V
    .locals 3

    .line 2338
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2341
    :cond_0
    check-cast p1, Lorg/telegram/ui/Cells/CheckBoxCell;

    .line 2342
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetsyncContacts(Lorg/telegram/ui/LoginActivity;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {v0, v1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fputsyncContacts(Lorg/telegram/ui/LoginActivity;Z)V

    .line 2343
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetsyncContacts(Lorg/telegram/ui/LoginActivity;)Z

    move-result v0

    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    .line 2344
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetsyncContacts(Lorg/telegram/ui/LoginActivity;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2345
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetslideViewsContainer(Lorg/telegram/ui/LoginActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$raw;->contacts_sync_on:I

    const-string v1, "SyncContactsOn"

    sget v2, Lorg/telegram/messenger/R$string;->SyncContactsOn:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    .line 2347
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetslideViewsContainer(Lorg/telegram/ui/LoginActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$raw;->contacts_sync_off:I

    const-string v1, "SyncContactsOff"

    sget v2, Lorg/telegram/messenger/R$string;->SyncContactsOff:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$onNextPressed$16(Ljava/lang/String;)V
    .locals 0

    .line 2759
    invoke-virtual {p0, p1}, Lorg/telegram/ui/LoginActivity$PhoneView;->onNextPressed(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onNextPressed$17(Ljava/lang/String;)V
    .locals 3

    .line 2759
    new-instance v0, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Ljava/lang/String;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic lambda$onNextPressed$18(ILorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 2960
    sget p2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    if-eq p2, p1, :cond_0

    .line 2961
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/LaunchActivity;

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Lorg/telegram/ui/LaunchActivity;->switchToAccount(IZ)V

    .line 2963
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$onNextPressed$20(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 3099
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->nextPressed:Z

    .line 3100
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mshowDoneButton(Lorg/telegram/ui/LoginActivity;ZZ)V

    if-nez p1, :cond_1

    .line 3102
    check-cast p2, Lorg/telegram/tgnet/tl/TL_account$Password;

    .line 3103
    invoke-static {p2, v2}, Lorg/telegram/ui/TwoStepVerificationActivity;->canHandleCurrentPassword(Lorg/telegram/tgnet/tl/TL_account$Password;Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3104
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    const-string p2, "UpdateAppAlert"

    sget p3, Lorg/telegram/messenger/R$string;->UpdateAppAlert:I

    invoke-static {p2, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v2}, Lorg/telegram/ui/Components/AlertsCreator;->showUpdateAppAlert(Landroid/content/Context;Ljava/lang/String;Z)Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void

    .line 3107
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 3108
    new-instance v1, Lorg/telegram/tgnet/SerializedData;

    invoke-virtual {p2}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v3

    invoke-direct {v1, v3}, Lorg/telegram/tgnet/SerializedData;-><init>(I)V

    .line 3109
    invoke-virtual {p2, v1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 3110
    invoke-virtual {v1}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object p2

    const-string v1, "password"

    invoke-virtual {p1, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3111
    const-string p2, "phoneFormated"

    invoke-virtual {p1, p2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3112
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 p3, 0x6

    invoke-virtual {p2, p3, v2, p1, v0}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    return-void

    .line 3114
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p3, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {p2, p3, p1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mneedShowAlert(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onNextPressed$21(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 3098
    new-instance v0, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda28;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onNextPressed$22(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Landroid/os/Bundle;Ljava/lang/String;Lorg/telegram/ui/LoginActivity$PhoneInputData;Lorg/telegram/tgnet/TLObject;)V
    .locals 3

    const/4 v0, 0x0

    .line 3078
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->nextPressed:Z

    const/4 v1, 0x1

    if-nez p1, :cond_3

    .line 3080
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeSuccess;

    if-eqz p1, :cond_2

    .line 3081
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeSuccess;

    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->authorization:Lorg/telegram/tgnet/TLRPC$auth_Authorization;

    .line 3082
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_authorizationSignUpRequired;

    if-eqz p2, :cond_1

    .line 3083
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_auth_authorizationSignUpRequired;

    .line 3084
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_authorizationSignUpRequired;->terms_of_service:Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;

    if-eqz p1, :cond_0

    .line 3085
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p2, p1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fputcurrentTermsOfService(Lorg/telegram/ui/LoginActivity;Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;)V

    .line 3087
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, v1, p3, v0}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    goto/16 :goto_1

    .line 3089
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;

    invoke-static {p2, p1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$monAuthSuccess(Lorg/telegram/ui/LoginActivity;Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;)V

    goto/16 :goto_1

    .line 3092
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;

    invoke-static {p1, p3, p2}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mfillNextCodeParams(Lorg/telegram/ui/LoginActivity;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;)V

    goto/16 :goto_1

    .line 3095
    :cond_3
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    if-eqz p2, :cond_d

    .line 3096
    const-string p3, "SESSION_PASSWORD_NEEDED"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 3097
    new-instance p1, Lorg/telegram/tgnet/tl/TL_account$getPassword;

    invoke-direct {p1}, Lorg/telegram/tgnet/tl/TL_account$getPassword;-><init>()V

    .line 3098
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p2}, Lorg/telegram/ui/LoginActivity;->access$400(Lorg/telegram/ui/LoginActivity;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda27;

    invoke-direct {p3, p0, p4}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Ljava/lang/String;)V

    const/16 p4, 0xa

    invoke-virtual {p2, p1, p3, p4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto/16 :goto_1

    .line 3117
    :cond_4
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "PHONE_NUMBER_INVALID"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 3118
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1, p4, p5, v0}, Lorg/telegram/ui/LoginActivity;->needShowInvalidAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Lorg/telegram/ui/LoginActivity$PhoneInputData;Z)V

    goto/16 :goto_1

    .line 3119
    :cond_5
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "PHONE_PASSWORD_FLOOD"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string p3, "FloodWait"

    if-eqz p2, :cond_6

    .line 3120
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget p4, Lorg/telegram/messenger/R$string;->FloodWait:I

    invoke-static {p3, p4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mneedShowAlert(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3121
    :cond_6
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v2, "PHONE_NUMBER_FLOOD"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 3122
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "PhoneNumberFlood"

    sget p4, Lorg/telegram/messenger/R$string;->PhoneNumberFlood:I

    invoke-static {p3, p4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mneedShowAlert(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3123
    :cond_7
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v2, "PHONE_NUMBER_BANNED"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 3124
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1, p4, p5, v1}, Lorg/telegram/ui/LoginActivity;->needShowInvalidAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Lorg/telegram/ui/LoginActivity$PhoneInputData;Z)V

    goto/16 :goto_1

    .line 3125
    :cond_8
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p4, "PHONE_CODE_EMPTY"

    invoke-virtual {p2, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_c

    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p4, "PHONE_CODE_INVALID"

    invoke-virtual {p2, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_9

    goto :goto_0

    .line 3127
    :cond_9
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p4, "PHONE_CODE_EXPIRED"

    invoke-virtual {p2, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 3128
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/SlideView;->onBackPressed(Z)Z

    .line 3129
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 p2, 0x0

    invoke-virtual {p1, v0, v1, p2, v1}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    .line 3130
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "CodeExpired"

    sget p4, Lorg/telegram/messenger/R$string;->CodeExpired:I

    invoke-static {p3, p4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mneedShowAlert(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3131
    :cond_a
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p4, "FLOOD_WAIT"

    invoke-virtual {p2, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 3132
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget p4, Lorg/telegram/messenger/R$string;->FloodWait:I

    invoke-static {p3, p4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mneedShowAlert(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3133
    :cond_b
    iget p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->code:I

    const/16 p3, -0x3e8

    if-eq p2, p3, :cond_d

    .line 3134
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p2}, Lorg/telegram/ui/LoginActivity;->access$500(Lorg/telegram/ui/LoginActivity;)I

    move-result p2

    iget-object p3, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p5}, Lorg/telegram/ui/LoginActivity$PhoneInputData;->-$$Nest$fgetphoneNumber(Lorg/telegram/ui/LoginActivity$PhoneInputData;)Ljava/lang/String;

    move-result-object p4

    new-array p5, v1, [Ljava/lang/Object;

    aput-object p4, p5, v0

    invoke-static {p2, p1, p3, p6, p5}, Lorg/telegram/ui/Components/AlertsCreator;->processError(ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    goto :goto_1

    .line 3126
    :cond_c
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->InvalidCode:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mneedShowAlert(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 3138
    :cond_d
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetisRequestingFirebaseSms(Lorg/telegram/ui/LoginActivity;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 3139
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mneedHideProgress(Lorg/telegram/ui/LoginActivity;Z)V

    :cond_e
    return-void
.end method

.method private synthetic lambda$onNextPressed$23(Landroid/os/Bundle;Ljava/lang/String;Lorg/telegram/ui/LoginActivity$PhoneInputData;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 8

    .line 3077
    new-instance v0, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda19;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v3, p5

    move-object v2, p6

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Landroid/os/Bundle;Ljava/lang/String;Lorg/telegram/ui/LoginActivity$PhoneInputData;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onShow$27()V
    .locals 2

    .line 3372
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    if-eqz v0, :cond_3

    .line 3373
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetneedRequestPermissions(Lorg/telegram/ui/LoginActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3374
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 3375
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    goto :goto_0

    .line 3377
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 3378
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 3379
    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->numberFilled:Z

    if-nez v0, :cond_1

    .line 3380
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    .line 3382
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-static {v0, v1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mshowKeyboard(Lorg/telegram/ui/LoginActivity;Landroid/view/View;)Z

    goto :goto_0

    .line 3384
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 3385
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-static {v0, v1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mshowKeyboard(Lorg/telegram/ui/LoginActivity;Landroid/view/View;)Z

    .line 3389
    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetactivityMode(Lorg/telegram/ui/LoginActivity;)I

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    .line 3390
    invoke-direct {p0, v0}, Lorg/telegram/ui/LoginActivity$PhoneView;->requestPasskey(Z)V

    :cond_4
    return-void
.end method

.method private synthetic lambda$requestPasskey$28()V
    .locals 1

    const/4 v0, 0x1

    .line 3420
    invoke-direct {p0, v0}, Lorg/telegram/ui/LoginActivity$PhoneView;->requestPasskey(Z)V

    return-void
.end method

.method private synthetic lambda$requestPasskey$29(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 4

    const/4 v0, 0x0

    .line 3444
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->nextPressed:Z

    .line 3445
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mshowDoneButton(Lorg/telegram/ui/LoginActivity;ZZ)V

    if-nez p1, :cond_1

    .line 3447
    check-cast p2, Lorg/telegram/tgnet/tl/TL_account$Password;

    .line 3448
    invoke-static {p2, v2}, Lorg/telegram/ui/TwoStepVerificationActivity;->canHandleCurrentPassword(Lorg/telegram/tgnet/tl/TL_account$Password;Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3449
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    const-string p2, "UpdateAppAlert"

    sget v0, Lorg/telegram/messenger/R$string;->UpdateAppAlert:I

    invoke-static {p2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v2}, Lorg/telegram/ui/Components/AlertsCreator;->showUpdateAppAlert(Landroid/content/Context;Ljava/lang/String;Z)Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void

    .line 3452
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 3453
    new-instance v1, Lorg/telegram/tgnet/SerializedData;

    invoke-virtual {p2}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v3

    invoke-direct {v1, v3}, Lorg/telegram/tgnet/SerializedData;-><init>(I)V

    .line 3454
    invoke-virtual {p2, v1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 3455
    invoke-virtual {v1}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object p2

    const-string v1, "password"

    invoke-virtual {p1, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3456
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v1, 0x6

    invoke-virtual {p2, v1, v2, p1, v0}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    return-void

    .line 3458
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget v0, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mneedShowAlert(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$requestPasskey$30(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 3443
    new-instance v0, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda31;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$requestPasskey$31(Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$auth_Authorization;Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    .line 3415
    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->cancelRequestingPasskey:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 3416
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->requestingPasskey:Z

    const/4 v1, 0x1

    if-eqz p3, :cond_1

    .line 3417
    const-string v2, "EMPTY"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "CANCELLED"

    if-nez v2, :cond_0

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3418
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->subtitleView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    if-eqz p1, :cond_8

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 3419
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->subtitleView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget p2, Lorg/telegram/messenger/R$string;->StartTextPasskey:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda29;

    invoke-direct {p3, p0}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;)V

    invoke-static {p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-static {p2, v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceArrows(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 3425
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/LaunchActivity;

    if-eqz v2, :cond_5

    move v2, v0

    :goto_0
    const/16 v3, 0x10

    if-ge v2, v3, :cond_5

    .line 3427
    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    .line 3428
    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    .line 3431
    :cond_2
    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v3

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/tgnet/ConnectionsManager;->isTestBackend()Z

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v4}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgettestBackend(Lorg/telegram/ui/LoginActivity;)Z

    move-result v4

    if-ne v3, v4, :cond_4

    .line 3432
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    if-eq p1, v2, :cond_3

    .line 3433
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {p1, v2, v1}, Lorg/telegram/ui/LaunchActivity;->switchToAccount(IZ)V

    .line 3435
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    .line 3436
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mneedHideProgress(Lorg/telegram/ui/LoginActivity;Z)V

    return-void

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    if-eqz p3, :cond_6

    .line 3441
    const-string p1, "SESSION_PASSWORD_NEEDED"

    invoke-virtual {p3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 3442
    new-instance p1, Lorg/telegram/tgnet/tl/TL_account$getPassword;

    invoke-direct {p1}, Lorg/telegram/tgnet/tl/TL_account$getPassword;-><init>()V

    .line 3443
    iget-object p3, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p3}, Lorg/telegram/ui/LoginActivity;->access$300(Lorg/telegram/ui/LoginActivity;)I

    move-result p3

    invoke-static {p3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p3

    new-instance v0, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda30;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;)V

    const/16 v1, 0xa

    invoke-virtual {p3, p1, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto :goto_2

    :cond_6
    if-eqz p3, :cond_7

    .line 3462
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz p1, :cond_8

    .line 3463
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/BulletinFactory;->showForError(Ljava/lang/String;)V

    return-void

    .line 3466
    :cond_7
    :goto_2
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;

    if-eqz p1, :cond_8

    .line 3467
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;

    invoke-static {p1, p2}, Lorg/telegram/ui/LoginActivity;->-$$Nest$monAuthSuccess(Lorg/telegram/ui/LoginActivity;Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;)V

    :cond_8
    return-void
.end method

.method private synthetic lambda$showDebugMenu$0(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p1, 0x0

    if-nez p2, :cond_2

    .line 1871
    sget-boolean p2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    xor-int/lit8 p2, p2, 0x1

    sput-boolean p2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    .line 1872
    sget-object p2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v0, "systemConfig"

    invoke-virtual {p2, v0, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "logsEnabled"

    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1873
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$raw;->chats_infotip:I

    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_0

    const-string v1, "Logs enabled."

    goto :goto_0

    :cond_0
    const-string v1, "Logs disabled."

    :goto_0
    invoke-virtual {p2, v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 1874
    sget-boolean p2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p2, :cond_1

    .line 1875
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "app start time = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lorg/telegram/messenger/ApplicationLoader;->startTime:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1877
    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "buildVersion = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1879
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    return-void

    .line 1883
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2, p1}, Lorg/telegram/ui/ProfileActivity;->sendLogs(Landroid/app/Activity;Z)V

    return-void
.end method

.method private loadCountries()V
    .locals 4

    .line 2459
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_help_getCountriesList;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_help_getCountriesList;-><init>()V

    .line 2460
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/LocaleController;->getCurrentLocaleInfo()Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/LocaleController;->getCurrentLocaleInfo()Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getLangCode()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_help_getCountriesList;->lang_code:Ljava/lang/String;

    .line 2461
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda20;

    invoke-direct {v2, p0}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;)V

    const/16 v3, 0xa

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method private requestPasskey(Z)V
    .locals 3

    .line 3408
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetactivityMode(Lorg/telegram/ui/LoginActivity;)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3409
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_3

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->SUPPORTS_PASSKEYS:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 3410
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->requestingPasskey:Z

    if-nez v0, :cond_3

    if-nez p1, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->requestedPasskey:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 3412
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->requestingPasskey:Z

    .line 3413
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->requestedPasskey:Z

    .line 3414
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->access$200(Lorg/telegram/ui/LoginActivity;)I

    move-result v1

    new-instance v2, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda26;

    invoke-direct {v2, p0}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;)V

    invoke-static {v0, v1, p1, v2}, Lorg/telegram/messenger/PasskeysController;->login(Landroid/content/Context;IZLorg/telegram/messenger/Utilities$Callback3;)Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->cancelRequestingPasskey:Ljava/lang/Runnable;

    :cond_3
    :goto_0
    return-void
.end method

.method private setCountry(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 2

    .line 2704
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 2705
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    move v0, p1

    .line 2707
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2708
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/CountrySelectActivity$Country;

    iget-object v1, v1, Lorg/telegram/ui/CountrySelectActivity$Country;->name:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2709
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/CountrySelectActivity$Country;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_2

    .line 2714
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    iget-object p2, p2, Lorg/telegram/ui/CountrySelectActivity$Country;->code:Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2715
    iput p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryState:I

    :cond_2
    return-void
.end method

.method private setCountryButtonText(Ljava/lang/CharSequence;)V
    .locals 3

    .line 2694
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Lorg/telegram/ui/Components/TextViewSwitcher;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/TextViewSwitcher;->getCurrentView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    sget v1, Lorg/telegram/messenger/R$anim;->text_out_down:I

    goto :goto_0

    :cond_0
    sget v1, Lorg/telegram/messenger/R$anim;->text_out:I

    :goto_0
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2695
    sget-object v1, Lorg/telegram/ui/Components/Easings;->easeInOutQuad:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2696
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Lorg/telegram/ui/Components/TextViewSwitcher;

    invoke-virtual {v1, v0}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 2698
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Lorg/telegram/ui/Components/TextViewSwitcher;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/TextViewSwitcher;->getCurrentView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2699
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Lorg/telegram/ui/Components/TextViewSwitcher;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, p1, v0}, Lorg/telegram/ui/Components/TextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    .line 2700
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    if-eqz p1, :cond_3

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/OutlineTextContainerView;->animateSelection(F)V

    return-void
.end method

.method private setCountryHint(Ljava/lang/String;Lorg/telegram/ui/CountrySelectActivity$Country;)V
    .locals 5

    .line 2624
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2625
    iget-object v1, p2, Lorg/telegram/ui/CountrySelectActivity$Country;->shortname:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getLanguageFlag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2627
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2628
    new-instance v3, Lorg/telegram/ui/LoginActivity$PhoneView$5;

    invoke-direct {v3, p0}, Lorg/telegram/ui/LoginActivity$PhoneView$5;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;)V

    .line 2636
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 2628
    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2638
    :cond_0
    iget-object p2, p2, Lorg/telegram/ui/CountrySelectActivity$Country;->name:Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2639
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Lorg/telegram/ui/Components/TextViewSwitcher;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/TextViewSwitcher;->getCurrentView()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p2

    invoke-static {v0, p2, v2}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/telegram/ui/LoginActivity$PhoneView;->setCountryButtonText(Ljava/lang/CharSequence;)V

    .line 2640
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryCodeForHint:Ljava/lang/String;

    const/4 p1, -0x1

    .line 2641
    iput p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->wasCountryHintIndex:I

    .line 2642
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$PhoneView;->invalidateCountryHint()V

    return-void
.end method

.method private showDebugMenu()V
    .locals 3

    .line 1864
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lorg/telegram/messenger/R$string;->SettingsDebug:I

    .line 1865
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    .line 1867
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_0

    sget v1, Lorg/telegram/messenger/R$string;->DebugMenuDisableLogs:I

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    sget v1, Lorg/telegram/messenger/R$string;->DebugMenuEnableLogs:I

    goto :goto_0

    :goto_1
    sget v2, Lorg/telegram/messenger/R$string;->DebugSendLogs:I

    .line 1868
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda23;

    invoke-direct {v2, p0}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;)V

    .line 1866
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    .line 1886
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 3503
    sget p2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    if-ne p1, p2, :cond_0

    .line 3504
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Lorg/telegram/ui/Components/TextViewSwitcher;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/TextViewSwitcher;->getCurrentView()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public fillNumber()V
    .locals 8

    .line 3282
    const-string v0, "android.permission.READ_PHONE_STATE"

    iget-boolean v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->numberFilled:Z

    if-nez v1, :cond_d

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetactivityMode(Lorg/telegram/ui/LoginActivity;)I

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    .line 3286
    :cond_0
    :try_start_0
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 3287
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSimAvailable()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 3290
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3291
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    .line 3292
    :goto_0
    const-string v5, "android.permission.READ_PHONE_NUMBERS"

    const/16 v6, 0x1a

    if-lt v1, v6, :cond_2

    .line 3293
    :try_start_1
    iget-object v7, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_3

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :cond_2
    :goto_1
    move v3, v4

    .line 3295
    :cond_3
    iget-object v7, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v7}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetcheckShowPermissions(Lorg/telegram/ui/LoginActivity;)Z

    move-result v7

    if-eqz v7, :cond_8

    if-eqz v2, :cond_4

    if-nez v3, :cond_8

    .line 3296
    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v4}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetpermissionsShowItems(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    if-nez v2, :cond_5

    .line 3298
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v2}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetpermissionsShowItems(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    if-nez v3, :cond_6

    if-lt v1, v6, :cond_6

    .line 3301
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetpermissionsShowItems(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3303
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetpermissionsShowItems(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 3304
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetpermissionsShowItems(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3305
    new-instance v1, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Ljava/util/List;)V

    .line 3320
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetisAnimatingIntro(Lorg/telegram/ui/LoginActivity;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3321
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fputanimationFinishCallback(Lorg/telegram/ui/LoginActivity;Ljava/lang/Runnable;)V

    return-void

    .line 3323
    :cond_7
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 3329
    :cond_8
    iput-boolean v4, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->numberFilled:Z

    .line 3330
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetnewAccount(Lorg/telegram/ui/LoginActivity;)Z

    move-result v0

    if-nez v0, :cond_d

    if-eqz v2, :cond_d

    if-eqz v3, :cond_d

    .line 3331
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0, v4}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mgetUserPhoneNumbers(Lorg/telegram/ui/LoginActivity;Z)Ljava/util/HashSet;

    move-result-object v0

    .line 3332
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_4

    .line 3335
    :cond_9
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    if-ne v1, v4, :cond_a

    .line 3336
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/telegram/ui/LoginActivity$PhoneView;->fillNumberInternal(Ljava/lang/String;)V

    return-void

    .line 3339
    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3341
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3342
    invoke-direct {p0, v2}, Lorg/telegram/ui/LoginActivity$PhoneView;->getCodeAndNumber(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    .line 3344
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneFormatMap:Ljava/util/HashMap;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_b

    goto :goto_2

    .line 3349
    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v2}, Lorg/telegram/ui/LoginActivity$PhoneView;->formatNumber(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3352
    :cond_c
    new-instance v0, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Ljava/util/ArrayList;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 3360
    :goto_3
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_d
    :goto_4
    return-void
.end method

.method public getHeaderName()Ljava/lang/String;
    .locals 2

    .line 3474
    const-string v0, "YourPhone"

    sget v1, Lorg/telegram/messenger/R$string;->YourPhone:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasCustomKeyboard()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 2600
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 2601
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onCancelPressed()V
    .locals 1

    const/4 v0, 0x0

    .line 2722
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->nextPressed:Z

    return-void
.end method

.method public onDestroyActivity()V
    .locals 1

    .line 3397
    invoke-super {p0}, Lorg/telegram/ui/Components/SlideView;->onDestroyActivity()V

    .line 3398
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->cancelRequestingPasskey:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 3399
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 3400
    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->cancelRequestingPasskey:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 2606
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 2607
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 2727
    iget-boolean p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreSelection:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 2728
    iput-boolean p2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreSelection:Z

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 2731
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreOnTextChange:Z

    .line 2732
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/CountrySelectActivity$Country;

    .line 2733
    iget-object p3, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    iget-object p1, p1, Lorg/telegram/ui/CountrySelectActivity$Country;->code:Ljava/lang/String;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2734
    iput-boolean p2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreOnTextChange:Z

    return-void
.end method

.method public onNextPressed(Ljava/lang/String;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 2744
    const-string v2, "ephone"

    iget-object v3, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_20

    iget-boolean v3, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->nextPressed:Z

    if-nez v3, :cond_20

    iget-object v3, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v3}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetisRequestingFirebaseSms(Lorg/telegram/ui/LoginActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_e

    .line 2748
    :cond_0
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 2749
    sget-boolean v5, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v5, :cond_1

    .line 2750
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sim status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2752
    :cond_1
    iget-object v3, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_1f

    iget-object v3, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_d

    .line 2756
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2757
    iget-boolean v3, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->confirmedNumber:Z

    if-nez v3, :cond_4

    .line 2758
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-le v3, v2, :cond_3

    iget-object v2, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v2}, Lorg/telegram/ui/LoginActivity;->-$$Nest$misCustomKeyboardVisible(Lorg/telegram/ui/LoginActivity;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v2}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetsizeNotifierFrameLayout(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->measureKeyboardHeight()I

    move-result v2

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    if-le v2, v3, :cond_3

    .line 2759
    iget-object v2, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    new-instance v3, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1, v0}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fputkeyboardHideCallback(Lorg/telegram/ui/LoginActivity;Ljava/lang/Runnable;)V

    .line 2760
    iget-object v0, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    return-void

    .line 2764
    :cond_3
    iget-object v2, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    new-instance v9, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;

    iget-object v3, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    iget-object v3, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    iget-object v4, v3, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    move-object v11, v4

    check-cast v11, Landroid/view/ViewGroup;

    invoke-static {v3}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetfloatingButton(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/FragmentFloatingButton;

    move-result-object v12

    new-instance v14, Lorg/telegram/ui/LoginActivity$PhoneView$6;

    invoke-direct {v14, v1, v0}, Lorg/telegram/ui/LoginActivity$PhoneView$6;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Ljava/lang/String;)V

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v15}, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView$IConfirmDialogCallback;Lorg/telegram/ui/LoginActivity-IA;)V

    invoke-static {v2, v9}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fputphoneNumberConfirmView(Lorg/telegram/ui/LoginActivity;Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)V

    .line 2857
    iget-object v0, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetphoneNumberConfirmView(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->-$$Nest$mshow(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)V

    return-void

    .line 2859
    :cond_4
    iput-boolean v5, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->confirmedNumber:Z

    .line 2861
    iget-object v0, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetphoneNumberConfirmView(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2862
    iget-object v0, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetphoneNumberConfirmView(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->-$$Nest$mdismiss(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)V

    .line 2865
    :cond_5
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSimAvailable()Z

    move-result v0

    .line 2925
    iget v3, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->countryState:I

    const/4 v8, 0x1

    if-ne v3, v8, :cond_6

    .line 2926
    iget-object v0, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget v2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ChooseCountry"

    sget v4, Lorg/telegram/messenger/R$string;->ChooseCountry:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mneedShowAlert(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2927
    iget-object v0, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0, v5}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mneedHideProgress(Lorg/telegram/ui/LoginActivity;Z)V

    return-void

    :cond_6
    const/4 v9, 0x2

    if-ne v3, v9, :cond_7

    .line 2929
    iget-object v3, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v3}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgettestBackend(Lorg/telegram/ui/LoginActivity;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 2930
    iget-object v0, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget v2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "WrongCountry"

    sget v4, Lorg/telegram/messenger/R$string;->WrongCountry:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mneedShowAlert(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2931
    iget-object v0, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0, v5}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mneedHideProgress(Lorg/telegram/ui/LoginActivity;Z)V

    return-void

    .line 2934
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2935
    iget-object v10, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v10}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetactivityMode(Lorg/telegram/ui/LoginActivity;)I

    move-result v10

    const/4 v11, 0x0

    if-nez v10, :cond_c

    .line 2936
    iget-object v10, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v10}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgettestBackend(Lorg/telegram/ui/LoginActivity;)Z

    move-result v10

    if-nez v10, :cond_8

    iget-object v10, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v12, "999"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 2937
    iget-object v10, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v10, v8}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fputtestBackend(Lorg/telegram/ui/LoginActivity;Z)V

    .line 2938
    iget-object v10, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->testBackendCheckBox:Lorg/telegram/ui/Cells/CheckBoxCell;

    if-eqz v10, :cond_8

    .line 2939
    invoke-virtual {v10, v8, v8}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    .line 2942
    :cond_8
    iget-object v10, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v10}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/tgnet/ConnectionsManager;->isTestBackend()Z

    move-result v10

    .line 2943
    iget-object v12, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v12}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgettestBackend(Lorg/telegram/ui/LoginActivity;)Z

    move-result v12

    if-eq v10, v12, :cond_9

    .line 2944
    iget-object v10, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v10}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v10

    invoke-virtual {v10, v5}, Lorg/telegram/tgnet/ConnectionsManager;->switchBackend(Z)V

    .line 2945
    iget-object v10, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v10}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgettestBackend(Lorg/telegram/ui/LoginActivity;)Z

    move-result v10

    .line 2947
    :cond_9
    iget-object v12, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v12}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v12

    instance-of v12, v12, Lorg/telegram/ui/LaunchActivity;

    if-eqz v12, :cond_c

    move v12, v5

    :goto_0
    const/16 v13, 0x10

    if-ge v12, v13, :cond_c

    .line 2949
    invoke-static {v12}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v13

    .line 2950
    invoke-virtual {v13}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v14

    if-nez v14, :cond_a

    goto :goto_1

    .line 2953
    :cond_a
    invoke-virtual {v13}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v13

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    .line 2954
    invoke-static {v3, v13}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-static {v12}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/tgnet/ConnectionsManager;->isTestBackend()Z

    move-result v13

    if-ne v13, v10, :cond_b

    .line 2956
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v2, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2957
    sget v2, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2958
    const-string v2, "AccountAlreadyLoggedIn"

    sget v3, Lorg/telegram/messenger/R$string;->AccountAlreadyLoggedIn:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2959
    const-string v2, "AccountSwitch"

    sget v3, Lorg/telegram/messenger/R$string;->AccountSwitch:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda2;

    invoke-direct {v3, v1, v12}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;I)V

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2965
    const-string v2, "OK"

    sget v3, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v11}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2966
    iget-object v2, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 2967
    iget-object v0, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0, v5}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mneedHideProgress(Lorg/telegram/ui/LoginActivity;Z)V

    return-void

    :cond_b
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 2974
    :cond_c
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;-><init>()V

    .line 2975
    iput-boolean v0, v10, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->allow_flashcall:Z

    .line 2976
    iput-boolean v0, v10, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->allow_missed_call:Z

    .line 2977
    sget-object v0, Lorg/telegram/messenger/PushListenerController$GooglePushListenerServiceProvider;->INSTANCE:Lorg/telegram/messenger/PushListenerController$GooglePushListenerServiceProvider;

    invoke-virtual {v0}, Lorg/telegram/messenger/PushListenerController$GooglePushListenerServiceProvider;->hasServices()Z

    move-result v0

    iput-boolean v0, v10, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->allow_firebase:Z

    iput-boolean v0, v10, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->allow_app_hash:Z

    .line 2978
    iget-object v0, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetforceDisableSafetyNet(Lorg/telegram/ui/LoginActivity;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lorg/telegram/messenger/BuildVars;->SAFETYNET_KEY:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2979
    :cond_d
    iput-boolean v5, v10, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->allow_firebase:Z

    .line 2982
    :cond_e
    invoke-static {}, Lorg/telegram/messenger/AuthTokensHelper;->getSavedLogInTokens()Ljava/util/ArrayList;

    move-result-object v0

    const/16 v12, 0x14

    if-eqz v0, :cond_13

    move v13, v5

    .line 2984
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v13, v14, :cond_13

    .line 2985
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;->future_auth_token:[B

    if-nez v14, :cond_f

    goto :goto_3

    .line 2988
    :cond_f
    iget-object v14, v10, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->logout_tokens:Ljava/util/ArrayList;

    if-nez v14, :cond_10

    .line 2989
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v10, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->logout_tokens:Ljava/util/ArrayList;

    .line 2991
    :cond_10
    sget-boolean v14, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v14, :cond_11

    .line 2992
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "login token to check "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v15, Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v11, v16

    check-cast v11, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;->future_auth_token:[B

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v15, v11, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2994
    :cond_11
    iget-object v9, v10, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->logout_tokens:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;->future_auth_token:[B

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2995
    iget-object v9, v10, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->logout_tokens:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lt v9, v12, :cond_12

    goto :goto_4

    :cond_12
    :goto_3
    add-int/lit8 v13, v13, 0x1

    const/4 v9, 0x2

    const/4 v11, 0x0

    goto :goto_2

    .line 3000
    :cond_13
    :goto_4
    invoke-static {}, Lorg/telegram/messenger/AuthTokensHelper;->getSavedLogOutTokens()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_17

    move v9, v5

    .line 3002
    :goto_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v9, v11, :cond_16

    .line 3003
    iget-object v11, v10, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->logout_tokens:Ljava/util/ArrayList;

    if-nez v11, :cond_14

    .line 3004
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v10, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->logout_tokens:Ljava/util/ArrayList;

    .line 3006
    :cond_14
    iget-object v11, v10, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->logout_tokens:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/tgnet/TLRPC$TL_auth_loggedOut;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$TL_auth_loggedOut;->future_auth_token:[B

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3007
    iget-object v11, v10, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->logout_tokens:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lt v11, v12, :cond_15

    goto :goto_6

    :cond_15
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 3011
    :cond_16
    :goto_6
    invoke-static {v0}, Lorg/telegram/messenger/AuthTokensHelper;->saveLogOutTokens(Ljava/util/ArrayList;)V

    .line 3013
    :cond_17
    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->logout_tokens:Ljava/util/ArrayList;

    if-eqz v0, :cond_18

    .line 3014
    iget v0, v10, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->flags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, v10, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->flags:I

    .line 3016
    :cond_18
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v9, "mainconfig"

    invoke-virtual {v0, v9, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3017
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v11, "sms_hash_code"

    invoke-interface {v9, v11}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3018
    iget-boolean v9, v10, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->allow_app_hash:Z

    const-string v11, "sms_hash"

    if-eqz v9, :cond_19

    .line 3019
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/BuildVars;->getSmsHash()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v11, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_7

    .line 3021
    :cond_19
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v11}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3023
    :goto_7
    iget-boolean v0, v10, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->allow_flashcall:Z

    if-eqz v0, :cond_1c

    .line 3025
    :try_start_0
    iget-object v0, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0, v5}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mgetUserPhoneNumbers(Lorg/telegram/ui/LoginActivity;Z)Ljava/util/HashSet;

    move-result-object v0

    .line 3026
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1a

    .line 3027
    iput-boolean v5, v10, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->unknown_number:Z

    .line 3028
    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v9, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda3;

    invoke-direct {v9, v3}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v9}, Lj$/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    iput-boolean v0, v10, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->current_number:Z

    goto :goto_9

    :catch_0
    move-exception v0

    goto :goto_8

    .line 3030
    :cond_1a
    iput-boolean v8, v10, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->unknown_number:Z

    .line 3031
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getActivatedAccountsCount()I

    move-result v0

    if-lez v0, :cond_1b

    .line 3032
    iput-boolean v5, v10, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->allow_flashcall:Z

    goto :goto_9

    .line 3034
    :cond_1b
    iput-boolean v5, v10, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->current_number:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    .line 3038
    :goto_8
    iput-boolean v8, v10, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->unknown_number:Z

    .line 3039
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3044
    :cond_1c
    :goto_9
    iget-object v0, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetactivityMode(Lorg/telegram/ui/LoginActivity;)I

    move-result v0

    const/4 v9, 0x2

    if-ne v0, v9, :cond_1d

    .line 3045
    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$sendChangePhoneCode;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$sendChangePhoneCode;-><init>()V

    .line 3046
    iput-object v3, v0, Lorg/telegram/tgnet/tl/TL_account$sendChangePhoneCode;->phone_number:Ljava/lang/String;

    .line 3047
    iput-object v10, v0, Lorg/telegram/tgnet/tl/TL_account$sendChangePhoneCode;->settings:Lorg/telegram/tgnet/TLRPC$TL_codeSettings;

    :goto_a
    move-object v5, v0

    goto :goto_b

    .line 3050
    :cond_1d
    iget-object v0, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$000(Lorg/telegram/ui/LoginActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Lorg/telegram/tgnet/ConnectionsManager;->cleanup(Z)V

    .line 3052
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;-><init>()V

    .line 3053
    invoke-static {}, Lorg/telegram/messenger/BuildVars;->getExteraAppHash()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;->api_hash:Ljava/lang/String;

    .line 3054
    invoke-static {}, Lorg/telegram/messenger/BuildVars;->getExteraAppId()I

    move-result v5

    iput v5, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;->api_id:I

    .line 3055
    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;->phone_number:Ljava/lang/String;

    .line 3056
    iput-object v10, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;->settings:Lorg/telegram/tgnet/TLRPC$TL_codeSettings;

    goto :goto_a

    .line 3060
    :goto_b
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 3061
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v4, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3063
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_c

    :catch_1
    move-exception v0

    .line 3065
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3066
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3068
    :goto_c
    const-string v0, "phoneFormated"

    invoke-virtual {v9, v0, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3069
    iget-object v0, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->currentCountry:Lorg/telegram/ui/CountrySelectActivity$Country;

    if-eqz v0, :cond_1e

    .line 3070
    const-string v2, "country"

    iget-object v0, v0, Lorg/telegram/ui/CountrySelectActivity$Country;->code:Ljava/lang/String;

    invoke-virtual {v9, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3072
    :cond_1e
    iput-boolean v8, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->nextPressed:Z

    .line 3073
    new-instance v4, Lorg/telegram/ui/LoginActivity$PhoneInputData;

    const/4 v2, 0x0

    invoke-direct {v4, v2}, Lorg/telegram/ui/LoginActivity$PhoneInputData;-><init>(Lorg/telegram/ui/LoginActivity-IA;)V

    .line 3074
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lorg/telegram/ui/LoginActivity$PhoneInputData;->-$$Nest$fputphoneNumber(Lorg/telegram/ui/LoginActivity$PhoneInputData;Ljava/lang/String;)V

    .line 3075
    iget-object v0, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->currentCountry:Lorg/telegram/ui/CountrySelectActivity$Country;

    invoke-static {v4, v0}, Lorg/telegram/ui/LoginActivity$PhoneInputData;->-$$Nest$fputcountry(Lorg/telegram/ui/LoginActivity$PhoneInputData;Lorg/telegram/ui/CountrySelectActivity$Country;)V

    .line 3076
    iget-object v0, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneFormatMap:Ljava/util/HashMap;

    iget-object v2, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v4, v0}, Lorg/telegram/ui/LoginActivity$PhoneInputData;->-$$Nest$fputpatterns(Lorg/telegram/ui/LoginActivity$PhoneInputData;Ljava/util/List;)V

    .line 3077
    iget-object v0, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$100(Lorg/telegram/ui/LoginActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    new-instance v0, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda4;

    move-object v2, v9

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Landroid/os/Bundle;Ljava/lang/String;Lorg/telegram/ui/LoginActivity$PhoneInputData;Lorg/telegram/tgnet/TLObject;)V

    const/16 v2, 0x1b

    invoke-virtual {v6, v5, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v0

    .line 3142
    iget-object v2, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v2, v0}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mneedShowProgress(Lorg/telegram/ui/LoginActivity;I)V

    return-void

    .line 2753
    :cond_1f
    :goto_d
    iget-object v0, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    iget-object v2, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    invoke-static {v0, v2, v5}, Lorg/telegram/ui/LoginActivity;->-$$Nest$monFieldError(Lorg/telegram/ui/LoginActivity;Landroid/view/View;Z)V

    :cond_20
    :goto_e
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method

.method public onShow()V
    .locals 3

    .line 3366
    invoke-super {p0}, Lorg/telegram/ui/Components/SlideView;->onShow()V

    .line 3367
    invoke-virtual {p0}, Lorg/telegram/ui/LoginActivity$PhoneView;->fillNumber()V

    .line 3368
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->syncContactsBox:Lorg/telegram/ui/Cells/CheckBoxCell;

    if-eqz v0, :cond_0

    .line 3369
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetsyncContacts(Lorg/telegram/ui/LoginActivity;)Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    .line 3371
    :cond_0
    new-instance v0, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;)V

    invoke-static {}, Lorg/telegram/ui/LoginActivity;->-$$Nest$sfgetSHOW_DELAY()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public restoreStateParams(Landroid/os/Bundle;)V
    .locals 2

    .line 3491
    const-string v0, "phoneview_code"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3493
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3495
    :cond_0
    const-string v0, "phoneview_phone"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3497
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public saveStateParams(Landroid/os/Bundle;)V
    .locals 2

    .line 3479
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3480
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 3481
    const-string v1, "phoneview_code"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3483
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3484
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 3485
    const-string v1, "phoneview_phone"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public selectCountry(Lorg/telegram/ui/CountrySelectActivity$Country;)V
    .locals 3

    const/4 v0, 0x1

    .line 2611
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreOnTextChange:Z

    .line 2612
    iget-object v0, p1, Lorg/telegram/ui/CountrySelectActivity$Country;->code:Ljava/lang/String;

    .line 2613
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2614
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/LoginActivity$PhoneView;->setCountryHint(Ljava/lang/String;Lorg/telegram/ui/CountrySelectActivity$Country;)V

    .line 2615
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->currentCountry:Lorg/telegram/ui/CountrySelectActivity$Country;

    const/4 v0, 0x0

    .line 2616
    iput v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryState:I

    .line 2617
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreOnTextChange:Z

    .line 2619
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phone_code_last_matched_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lorg/telegram/ui/CountrySelectActivity$Country;->code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Lorg/telegram/ui/CountrySelectActivity$Country;->shortname:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public updateColors()V
    .locals 5

    .line 2557
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->titleView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2558
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->subtitleView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText6:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2559
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->subtitleView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/4 v0, 0x0

    .line 2560
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Lorg/telegram/ui/Components/TextViewSwitcher;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2561
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Lorg/telegram/ui/Components/TextViewSwitcher;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2562
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2563
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHintTextColor(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2566
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->chevronRight:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 2567
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->chevronRight:Landroid/widget/ImageView;

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2569
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->plusTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2571
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->setTextColor(I)V

    .line 2572
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputFieldActivated:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 2574
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeDividerView:Landroid/view/View;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputField:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2576
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->setTextColor(I)V

    .line 2577
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 2578
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 2580
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->syncContactsBox:Lorg/telegram/ui/Cells/CheckBoxCell;

    if-eqz v0, :cond_1

    .line 2581
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxSquareUnchecked:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxSquareBackground:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxSquareCheck:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setSquareCheckBoxColor(III)V

    .line 2582
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->syncContactsBox:Lorg/telegram/ui/Cells/CheckBoxCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->updateTextColor()V

    .line 2584
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->testBackendCheckBox:Lorg/telegram/ui/Cells/CheckBoxCell;

    if-eqz v0, :cond_2

    .line 2585
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxSquareUnchecked:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxSquareBackground:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxSquareCheck:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setSquareCheckBoxColor(III)V

    .line 2586
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->testBackendCheckBox:Lorg/telegram/ui/Cells/CheckBoxCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->updateTextColor()V

    .line 2589
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/OutlineTextContainerView;->updateColor()V

    .line 2590
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/OutlineTextContainerView;->updateColor()V

    return-void
.end method
