.class public Lorg/telegram/ui/LoginActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/LoginActivity$PhoneView;,
        Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;,
        Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;,
        Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;,
        Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;,
        Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;,
        Lorg/telegram/ui/LoginActivity$LoginActivityNewPasswordView;,
        Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;,
        Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;,
        Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;,
        Lorg/telegram/ui/LoginActivity$LoginActivityQrView;,
        Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;,
        Lorg/telegram/ui/LoginActivity$PhoneInputData;,
        Lorg/telegram/ui/LoginActivity$LoadingTextView;,
        Lorg/telegram/ui/LoginActivity$ProgressView;
    }
.end annotation


# static fields
.field private static final SHOW_DELAY:I


# instance fields
.field private activityMode:I

.field private animationFinishCallback:Ljava/lang/Runnable;

.field private backButtonView:Landroid/widget/ImageView;

.field private cachedFragmentView:Landroid/view/View;

.field private cancelDeleteProgressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

.field private cancelDeletionCode:Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;

.field private cancelDeletionParams:Landroid/os/Bundle;

.field private cancelDeletionPhone:Ljava/lang/String;

.field private checkPermissions:Z

.field private checkShowPermissions:Z

.field private currentConnectionState:I

.field private currentDoneType:I

.field private currentTermsOfService:Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;

.field private currentViewNum:I

.field private customKeyboardWasVisible:Z

.field private doneButtonVisible:[Z

.field private doneItemAnimation:Landroid/animation/AnimatorSet;

.field private doneProgressVisible:[Z

.field private editDoneCallback:[Ljava/lang/Runnable;

.field private emailChangeFinishCallback:Ljava/lang/Runnable;

.field private emailChangeIsSuggestion:Z

.field private emailChangeNonSkippable:Z

.field private emailChangeSkipButton:Landroid/widget/TextView;

.field private emailChangeSkipCallback:Ljava/lang/Runnable;

.field private floatingAutoAnimator:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

.field private floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

.field private floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

.field private forceDisableSafetyNet:Z

.field private introView:Landroid/view/View;

.field private isAnimatingIntro:Z

.field private isRequestingFirebaseSms:Z

.field private keyboardAnimator:Landroid/animation/ValueAnimator;

.field private keyboardHideCallback:Ljava/lang/Runnable;

.field private keyboardLinearLayout:Landroid/widget/LinearLayout;

.field private keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

.field private loginOptionsMenu:Lorg/telegram/ui/Components/ItemOptions;

.field private loginOptionsProxyDrawable:Lorg/telegram/ui/Components/ProxyDrawable;

.field private loginOptionsProxyItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private needRequestPermissions:Z

.field private newAccount:Z

.field private paid:Z

.field private pendingSwitchingAccount:Z

.field private permissionsDialog:Landroid/app/Dialog;

.field private permissionsItems:Ljava/util/ArrayList;

.field private permissionsShowDialog:Landroid/app/Dialog;

.field private permissionsShowItems:Ljava/util/ArrayList;

.field private phoneNumberConfirmView:Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;

.field private postedEditDoneCallback:[Z

.field private progressRequestId:I

.field private proxyButtonView:Landroid/widget/ImageView;

.field private proxyButtonVisible:Z

.field private proxyDrawable:Lorg/telegram/ui/Components/ProxyDrawable;

.field private radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

.field private restoringState:Z

.field private showDoneAnimation:[Landroid/animation/AnimatorSet;

.field private showProxyButtonDelayed:Ljava/lang/Runnable;

.field private sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

.field private slideViewsContainer:Landroid/widget/FrameLayout;

.field private startMessagingButton:Landroid/widget/TextView;

.field private syncContacts:Z

.field private testBackend:Z

.field private final views:[Lorg/telegram/ui/Components/SlideView;


# direct methods
.method public static synthetic $r8$lambda$-gU9rEyWY6N_lr6CyIOlocaLlko(Lorg/telegram/ui/LoginActivity;ZZZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->lambda$showEditDoneProgress$16(ZZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$04BKd-eq0wYrPAqFhRsJ3llNq5c(Lorg/telegram/ui/LoginActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/LoginActivity;->lambda$tryResetAccount$21(Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$06M9NW-_zzoEyOzINErXB09IQ58(Lorg/telegram/ui/LoginActivity;Lorg/telegram/ui/Components/ItemOptions;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity;->lambda$showLoginOptionsMenu$24(Lorg/telegram/ui/Components/ItemOptions;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3iwsCet7nhA9rx5J7LXErbpHxbs(Lorg/telegram/ui/LoginActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->lambda$showProxyButtonDelayed$26()V

    return-void
.end method

.method public static synthetic $r8$lambda$AltoIPUdTxjExV7-t3G5vVpiUfw(Lorg/telegram/ui/LoginActivity;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity;->lambda$showProxyButton$27(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$J3QsjpvLP9Gw5tKtwbqVKeRbayg(Lorg/telegram/ui/LoginActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity;->lambda$createView$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$J3zhdeYQBMKg3KtIeCSwIBhRLGo(Lorg/telegram/ui/LoginActivity;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity;->lambda$showDoneButton$14(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NEA2cL-pdJBDTcnTMniC1pbQLJI(ZLjava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 7

    .line 1258
    :try_start_0
    sget-object p3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    sget-object p4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p4

    const/4 v0, 0x0

    invoke-virtual {p3, p4, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p3

    .line 1259
    sget-object p4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s (%d)"

    iget-object v2, p3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget p3, p3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v0

    const/4 v0, 0x1

    aput-object p3, v3, v0

    invoke-static {p4, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 1261
    new-instance p4, Landroid/content/Intent;

    const-string v0, "android.intent.action.SENDTO"

    invoke-direct {p4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1262
    const-string v0, "mailto:"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1263
    const-string v0, "android.intent.extra.EMAIL"

    if-eqz p0, :cond_0

    const-string v1, "recover@telegram.org"

    goto :goto_0

    :cond_0
    const-string v1, "login@stel.com"

    :goto_0
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1264
    const-string v0, "\nLocale: "

    const-string v1, "\nDevice Name: "

    const-string v2, "\nOS version: SDK "

    const-string v3, "I\'m trying to use my mobile phone number: "

    const-string v4, "android.intent.extra.TEXT"

    const-string v5, "android.intent.extra.SUBJECT"

    if-eqz p0, :cond_1

    .line 1265
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Banned phone number: "

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v5, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1266
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\nBut Telegram says it\'s banned. Please help.\n\nApp version: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v4, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1268
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid phone number: "

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v5, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1269
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\nBut Telegram says it\'s invalid. Please help.\n\nApp version: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v4, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1271
    :goto_1
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p0

    const-string p1, "Send email..."

    invoke-static {p4, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 1273
    :catch_0
    new-instance p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1274
    sget p1, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1275
    const-string p1, "NoMailInstalled"

    sget p3, Lorg/telegram/messenger/R$string;->NoMailInstalled:I

    invoke-static {p1, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1276
    const-string p1, "OK"

    sget p3, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {p1, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1277
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public static synthetic $r8$lambda$Q6A9KXbCCv9eN5RGiAuvKxNklYw(Lorg/telegram/ui/Components/OutlineTextContainerView;Landroid/view/View;Landroid/widget/EditText;Landroid/text/TextWatcher;)V
    .locals 1

    const/4 v0, 0x0

    .line 1206
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/OutlineTextContainerView;->animateError(F)V

    .line 1207
    sget p0, Lorg/telegram/messenger/R$id;->timeout_callback:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    if-eqz p2, :cond_0

    .line 1209
    new-instance p0, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda25;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda25;-><init>(Landroid/widget/EditText;Landroid/text/TextWatcher;)V

    invoke-virtual {p2, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$QN1m_-KryFM-0l8xSlSP4uWdBdg(Lorg/telegram/ui/LoginActivity;Lorg/telegram/ui/Components/ItemOptions;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity;->lambda$showLoginOptionsMenu$25(Lorg/telegram/ui/Components/ItemOptions;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QovbkozwXydZCvN3f2h_v_GF-Eg(Landroid/widget/EditText;Landroid/text/TextWatcher;)V
    .locals 0

    .line 1209
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Suiwul-0E58aAo6T2Aj7EmdYmSM(Lorg/telegram/ui/LoginActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity;->lambda$createView$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TCtIRHRyGwuYn5NrCkvFe3Fhego(Lorg/telegram/ui/LoginActivity;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity;->lambda$setCustomKeyboardVisible$6(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UFJu8Eao4GnWTL9o8W65eWFlPXw(Lorg/telegram/ui/LoginActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity;->lambda$createView$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WnWaI2Cppv3rJhp126C7IHFRo6o(Lorg/telegram/ui/LoginActivity;IZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity;->lambda$createView$0(IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$WqLDQ107gzHe6-dAGI4-FMh7DvQ(Lorg/telegram/ui/LoginActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->clearLoginOptionsMenuReferences()V

    return-void
.end method

.method public static synthetic $r8$lambda$XNhZ82P3vvrdRDmpnk9o1vCjndQ(Lorg/telegram/ui/LoginActivity;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->lambda$createView$2(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$Yh0rgMiuEBKGZGywX_wGILegKmY(Lorg/telegram/ui/LoginActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity;->lambda$onDoneButtonPressed$15(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZTd6y4G40FhyKEgGtKI-kyYldnw(Lorg/telegram/ui/LoginActivity;IZZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->lambda$showEditDoneProgress$17(IZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$_vAg-KBWpe3PP0OEewwdqwi73ZE(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/LoginActivity;->lambda$tryResetAccount$22(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$d6XJ09ujoD2eDFXUK4kLQ0c4kqk(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/LoginActivity;->lambda$tryResetAccount$23(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$e5AqjMHidq0bRU3igVtVGEBUh3k(Lorg/telegram/ui/LoginActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity;->lambda$createView$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$g0Gd9s9b4bh4gCD3LXfbjnj5Q64(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)V
    .locals 0

    .line 990
    invoke-static {p0}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->-$$Nest$fgetimageUpdater(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)Lorg/telegram/ui/Components/ImageUpdater;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ImageUpdater;->openGallery()V

    return-void
.end method

.method public static synthetic $r8$lambda$kCf6I8bLIoS2w-L3bJ3_osSqGF8(Lorg/telegram/ui/LoginActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->lambda$onDialogDismiss$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$rt6BpR_TgAECIIAr6dc40Kicoaw(Lorg/telegram/ui/LoginActivity;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity;->lambda$setCustomKeyboardVisible$7(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$t34XbskbvkTYImJWe6S5Q5-2abc(Lorg/telegram/ui/LoginActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->updateColors()V

    return-void
.end method

.method public static synthetic $r8$lambda$tNczW9JiyyPm9Vjf6r8apOUypro(Lorg/telegram/ui/LoginActivity;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity;->lambda$showDoneButton$13(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tz8LW737_gNDktLAw1KpXObbEE0(ZLjava/lang/Void;)Lorg/telegram/ui/MainTabsActivity;
    .locals 1

    .line 1649
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1650
    const-string v0, "afterSignup"

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1651
    new-instance p0, Lorg/telegram/ui/MainTabsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/MainTabsActivity;-><init>()V

    .line 1652
    invoke-virtual {p0, p1}, Lorg/telegram/ui/MainTabsActivity;->prepareDialogsActivity(Landroid/os/Bundle;)Lorg/telegram/ui/DialogsActivity;

    return-object p0
.end method

.method public static synthetic $r8$lambda$woHZWwM-5XYsFYIV2_Dl6AnkKbk(Lorg/telegram/ui/LoginActivity;IILandroid/view/ViewGroup$MarginLayoutParams;IIILorg/telegram/ui/Components/TransformableLoginButtonView;FIFILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p12}, Lorg/telegram/ui/LoginActivity;->lambda$onCustomTransitionAnimation$20(IILandroid/view/ViewGroup$MarginLayoutParams;IIILorg/telegram/ui/Components/TransformableLoginButtonView;FIFILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yktBXHykUwDxy_NNFAh8qB8CNro(Lorg/telegram/ui/LoginActivity;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity;->lambda$showEditDoneProgress$18(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetactivityMode(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/LoginActivity;->activityMode:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetanimationFinishCallback(Lorg/telegram/ui/LoginActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->animationFinishCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbackButtonView(Lorg/telegram/ui/LoginActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->backButtonView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcancelDeletionPhone(Lorg/telegram/ui/LoginActivity;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->cancelDeletionPhone:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcheckShowPermissions(Lorg/telegram/ui/LoginActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/LoginActivity;->checkShowPermissions:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentDoneType(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentTermsOfService(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->currentTermsOfService:Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentViewNum(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcustomKeyboardWasVisible(Lorg/telegram/ui/LoginActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/LoginActivity;->customKeyboardWasVisible:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdoneItemAnimation(Lorg/telegram/ui/LoginActivity;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetemailChangeFinishCallback(Lorg/telegram/ui/LoginActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->emailChangeFinishCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetemailChangeIsSuggestion(Lorg/telegram/ui/LoginActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/LoginActivity;->emailChangeIsSuggestion:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetemailChangeSkipButton(Lorg/telegram/ui/LoginActivity;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->emailChangeSkipButton:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfloatingButton(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/FragmentFloatingButton;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfloatingButtonIcon(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/TransformableLoginButtonView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetforceDisableSafetyNet(Lorg/telegram/ui/LoginActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/LoginActivity;->forceDisableSafetyNet:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisAnimatingIntro(Lorg/telegram/ui/LoginActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/LoginActivity;->isAnimatingIntro:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisRequestingFirebaseSms(Lorg/telegram/ui/LoginActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/LoginActivity;->isRequestingFirebaseSms:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetkeyboardAnimator(Lorg/telegram/ui/LoginActivity;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->keyboardAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetkeyboardLinearLayout(Lorg/telegram/ui/LoginActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->keyboardLinearLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetkeyboardView(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/CustomPhoneKeyboardView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetneedRequestPermissions(Lorg/telegram/ui/LoginActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/LoginActivity;->needRequestPermissions:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetnewAccount(Lorg/telegram/ui/LoginActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/LoginActivity;->newAccount:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpaid(Lorg/telegram/ui/LoginActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/LoginActivity;->paid:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpermissionsShowItems(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->permissionsShowItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetphoneNumberConfirmView(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->phoneNumberConfirmView:Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetproxyButtonView(Lorg/telegram/ui/LoginActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->proxyButtonView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetradialProgressView(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/RadialProgressView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrestoringState(Lorg/telegram/ui/LoginActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/LoginActivity;->restoringState:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetshowDoneAnimation(Lorg/telegram/ui/LoginActivity;)[Landroid/animation/AnimatorSet;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->showDoneAnimation:[Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsizeNotifierFrameLayout(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetslideViewsContainer(Lorg/telegram/ui/LoginActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->slideViewsContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstartMessagingButton(Lorg/telegram/ui/LoginActivity;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->startMessagingButton:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsyncContacts(Lorg/telegram/ui/LoginActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/LoginActivity;->syncContacts:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettestBackend(Lorg/telegram/ui/LoginActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/LoginActivity;->testBackend:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetviews(Lorg/telegram/ui/LoginActivity;)[Lorg/telegram/ui/Components/SlideView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputanimationFinishCallback(Lorg/telegram/ui/LoginActivity;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->animationFinishCallback:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcurrentDoneType(Lorg/telegram/ui/LoginActivity;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcurrentTermsOfService(Lorg/telegram/ui/LoginActivity;Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->currentTermsOfService:Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputdoneItemAnimation(Lorg/telegram/ui/LoginActivity;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisAnimatingIntro(Lorg/telegram/ui/LoginActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity;->isAnimatingIntro:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisRequestingFirebaseSms(Lorg/telegram/ui/LoginActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity;->isRequestingFirebaseSms:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputkeyboardAnimator(Lorg/telegram/ui/LoginActivity;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->keyboardAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputkeyboardHideCallback(Lorg/telegram/ui/LoginActivity;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->keyboardHideCallback:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputneedRequestPermissions(Lorg/telegram/ui/LoginActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity;->needRequestPermissions:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpermissionsShowDialog(Lorg/telegram/ui/LoginActivity;Landroid/app/Dialog;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->permissionsShowDialog:Landroid/app/Dialog;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputphoneNumberConfirmView(Lorg/telegram/ui/LoginActivity;Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->phoneNumberConfirmView:Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsyncContacts(Lorg/telegram/ui/LoginActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity;->syncContacts:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtestBackend(Lorg/telegram/ui/LoginActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity;->testBackend:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mfillNextCodeParams(Lorg/telegram/ui/LoginActivity;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity;->fillNextCodeParams(Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfillNextCodeParams(Lorg/telegram/ui/LoginActivity;Landroid/os/Bundle;Lorg/telegram/tgnet/tl/TL_account$sentEmailCode;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity;->fillNextCodeParams(Landroid/os/Bundle;Lorg/telegram/tgnet/tl/TL_account$sentEmailCode;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetUserPhoneNumbers(Lorg/telegram/ui/LoginActivity;Z)Ljava/util/HashSet;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity;->getUserPhoneNumbers(Z)Ljava/util/HashSet;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misCustomKeyboardForceDisabled(Lorg/telegram/ui/LoginActivity;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->isCustomKeyboardForceDisabled()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misCustomKeyboardVisible(Lorg/telegram/ui/LoginActivity;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->isCustomKeyboardVisible()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misInCancelAccountDeletionMode(Lorg/telegram/ui/LoginActivity;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->isInCancelAccountDeletionMode()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mneedHideProgress(Lorg/telegram/ui/LoginActivity;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity;->needHideProgress(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mneedHideProgress(Lorg/telegram/ui/LoginActivity;ZZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity;->needHideProgress(ZZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mneedShowAlert(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity;->needShowAlert(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mneedShowProgress(Lorg/telegram/ui/LoginActivity;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity;->needShowProgress(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mneedShowProgress(Lorg/telegram/ui/LoginActivity;IZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity;->needShowProgress(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monAuthSuccess(Lorg/telegram/ui/LoginActivity;Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity;->onAuthSuccess(Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monAuthSuccess(Lorg/telegram/ui/LoginActivity;Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity;->onAuthSuccess(Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monDoneButtonPressed(Lorg/telegram/ui/LoginActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->onDoneButtonPressed()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monFieldError(Lorg/telegram/ui/LoginActivity;Landroid/view/View;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity;->onFieldError(Landroid/view/View;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowDoneButton(Lorg/telegram/ui/LoginActivity;ZZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity;->showDoneButton(ZZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowKeyboard(Lorg/telegram/ui/LoginActivity;Landroid/view/View;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity;->showKeyboard(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mtryResetAccount(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->tryResetAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetSHOW_DELAY()I
    .locals 1

    .line 0
    sget v0, Lorg/telegram/ui/LoginActivity;->SHOW_DELAY:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 205
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    const/16 v0, 0x96

    goto :goto_0

    :cond_0
    const/16 v0, 0x64

    :goto_0
    sput v0, Lorg/telegram/ui/LoginActivity;->SHOW_DELAY:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 447
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    const/16 v0, 0x13

    .line 302
    new-array v0, v0, [Lorg/telegram/ui/Components/SlideView;

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    .line 311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity;->permissionsItems:Ljava/util/ArrayList;

    .line 312
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity;->permissionsShowItems:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 313
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity;->checkPermissions:Z

    .line 314
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity;->checkShowPermissions:Z

    const/4 v0, 0x0

    .line 316
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity;->syncContacts:Z

    .line 317
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity;->testBackend:Z

    .line 319
    iput v0, p0, Lorg/telegram/ui/LoginActivity;->activityMode:I

    const/4 v1, 0x2

    .line 327
    new-array v2, v1, [Landroid/animation/AnimatorSet;

    iput-object v2, p0, Lorg/telegram/ui/LoginActivity;->showDoneAnimation:[Landroid/animation/AnimatorSet;

    .line 333
    new-array v2, v1, [Z

    fill-array-data v2, :array_0

    iput-object v2, p0, Lorg/telegram/ui/LoginActivity;->doneButtonVisible:[Z

    .line 352
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity;->customKeyboardWasVisible:Z

    .line 373
    new-array v0, v1, [Z

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity;->doneProgressVisible:[Z

    .line 374
    new-array v0, v1, [Ljava/lang/Runnable;

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity;->editDoneCallback:[Ljava/lang/Runnable;

    .line 375
    new-array v0, v1, [Z

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity;->postedEditDoneCallback:[Z

    return-void

    :array_0
    .array-data 1
        0x1t
        0x0t
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 4

    .line 451
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    const/16 v0, 0x13

    .line 302
    new-array v0, v0, [Lorg/telegram/ui/Components/SlideView;

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    .line 311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity;->permissionsItems:Ljava/util/ArrayList;

    .line 312
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity;->permissionsShowItems:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 313
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity;->checkPermissions:Z

    .line 314
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity;->checkShowPermissions:Z

    const/4 v1, 0x0

    .line 316
    iput-boolean v1, p0, Lorg/telegram/ui/LoginActivity;->syncContacts:Z

    .line 317
    iput-boolean v1, p0, Lorg/telegram/ui/LoginActivity;->testBackend:Z

    .line 319
    iput v1, p0, Lorg/telegram/ui/LoginActivity;->activityMode:I

    const/4 v2, 0x2

    .line 327
    new-array v3, v2, [Landroid/animation/AnimatorSet;

    iput-object v3, p0, Lorg/telegram/ui/LoginActivity;->showDoneAnimation:[Landroid/animation/AnimatorSet;

    .line 333
    new-array v3, v2, [Z

    fill-array-data v3, :array_0

    iput-object v3, p0, Lorg/telegram/ui/LoginActivity;->doneButtonVisible:[Z

    .line 352
    iput-boolean v1, p0, Lorg/telegram/ui/LoginActivity;->customKeyboardWasVisible:Z

    .line 373
    new-array v1, v2, [Z

    iput-object v1, p0, Lorg/telegram/ui/LoginActivity;->doneProgressVisible:[Z

    .line 374
    new-array v1, v2, [Ljava/lang/Runnable;

    iput-object v1, p0, Lorg/telegram/ui/LoginActivity;->editDoneCallback:[Ljava/lang/Runnable;

    .line 375
    new-array v1, v2, [Z

    iput-object v1, p0, Lorg/telegram/ui/LoginActivity;->postedEditDoneCallback:[Z

    .line 452
    iput p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    .line 453
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity;->newAccount:Z

    return-void

    :array_0
    .array-data 1
        0x1t
        0x0t
    .end array-data
.end method

.method static synthetic access$000(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 203
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 203
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 203
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 203
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 203
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 203
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 203
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 203
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 203
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 203
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 203
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 203
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 203
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 203
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 203
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 203
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 203
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 203
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 203
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 203
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 203
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 203
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 203
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 203
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 203
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 203
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 203
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 203
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 203
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 203
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 203
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 203
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 203
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 203
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 203
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 203
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 203
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 203
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 203
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 203
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 203
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 203
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 203
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 203
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method private clearCurrentState()V
    .locals 4

    .line 1035
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logininfo2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lorg/telegram/ui/LoginActivity;->newAccount:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1036
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1037
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 1038
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private clearLoginOptionsMenuReferences()V
    .locals 1

    const/4 v0, 0x0

    .line 9063
    iput-object v0, p0, Lorg/telegram/ui/LoginActivity;->loginOptionsMenu:Lorg/telegram/ui/Components/ItemOptions;

    .line 9064
    iput-object v0, p0, Lorg/telegram/ui/LoginActivity;->loginOptionsProxyItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 9065
    iput-object v0, p0, Lorg/telegram/ui/LoginActivity;->loginOptionsProxyDrawable:Lorg/telegram/ui/Components/ProxyDrawable;

    return-void
.end method

.method private fillNextCodeParams(Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;)V
    .locals 1

    const/4 v0, 0x1

    .line 1732
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/LoginActivity;->fillNextCodeParams(Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;Z)V

    return-void
.end method

.method private fillNextCodeParams(Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;Z)V
    .locals 10

    .line 1760
    const-string v0, "phoneHash"

    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->phone_code_hash:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1761
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->next_type:Lorg/telegram/tgnet/TLRPC$auth_CodeType;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_codeTypeCall;

    const/16 v2, 0xf

    const/16 v3, 0xb

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x4

    const-string v7, "nextType"

    if-eqz v1, :cond_0

    .line 1762
    invoke-virtual {p1, v7, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1763
    :cond_0
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_codeTypeFlashCall;

    if-eqz v1, :cond_1

    .line 1764
    invoke-virtual {p1, v7, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1765
    :cond_1
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_codeTypeSms;

    if-eqz v1, :cond_2

    .line 1766
    invoke-virtual {p1, v7, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1767
    :cond_2
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_codeTypeMissedCall;

    if-eqz v1, :cond_3

    .line 1768
    invoke-virtual {p1, v7, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1769
    :cond_3
    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_codeTypeFragmentSms;

    if-eqz v0, :cond_4

    .line 1770
    invoke-virtual {p1, v7, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1772
    :cond_4
    :goto_0
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeApp;

    const-string v1, "length"

    const-string v7, "type"

    const/4 v8, 0x0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    .line 1773
    invoke-virtual {p1, v7, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1774
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->length:I

    invoke-virtual {p1, v1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1775
    invoke-virtual {p0, v0, p3, p1, v8}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    return-void

    .line 1777
    :cond_5
    iget v0, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->timeout:I

    if-nez v0, :cond_7

    .line 1778
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x5

    goto :goto_1

    :cond_6
    const/16 v0, 0x3c

    :goto_1
    iput v0, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->timeout:I

    .line 1780
    :cond_7
    iget v0, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->timeout:I

    mul-int/lit16 v0, v0, 0x3e8

    const-string v9, "timeout"

    invoke-virtual {p1, v9, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1781
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    instance-of v9, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeCall;

    if-eqz v9, :cond_8

    .line 1782
    invoke-virtual {p1, v7, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1783
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->length:I

    invoke-virtual {p1, v1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1784
    invoke-virtual {p0, v6, p3, p1, v8}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    return-void

    .line 1785
    :cond_8
    instance-of v6, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeFlashCall;

    if-eqz v6, :cond_9

    .line 1786
    invoke-virtual {p1, v7, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1787
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->pattern:Ljava/lang/String;

    const-string v0, "pattern"

    invoke-virtual {p1, v0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1788
    invoke-virtual {p0, v5, p3, p1, v8}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    return-void

    .line 1789
    :cond_9
    instance-of v5, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeSms;

    if-nez v5, :cond_13

    instance-of v5, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeFirebaseSms;

    if-eqz v5, :cond_a

    goto/16 :goto_2

    .line 1794
    :cond_a
    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeFragmentSms;

    if-eqz v4, :cond_b

    .line 1795
    invoke-virtual {p1, v7, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1796
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->url:Ljava/lang/String;

    const-string v3, "url"

    invoke-virtual {p1, v3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1797
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->length:I

    invoke-virtual {p1, v1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1798
    invoke-virtual {p0, v2, p3, p1, v8}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    return-void

    .line 1799
    :cond_b
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeMissedCall;

    if-eqz v2, :cond_c

    .line 1800
    invoke-virtual {p1, v7, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1801
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->length:I

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1802
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->prefix:Ljava/lang/String;

    const-string v0, "prefix"

    invoke-virtual {p1, v0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1803
    invoke-virtual {p0, v3, p3, p1, v8}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    return-void

    .line 1804
    :cond_c
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeSetUpEmailRequired;

    const-string v3, "googleSignInAllowed"

    if-eqz v2, :cond_d

    .line 1805
    iget-boolean p2, v0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->google_signin_allowed:Z

    invoke-virtual {p1, v3, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 p2, 0xc

    .line 1806
    invoke-virtual {p0, p2, p3, p1, v8}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    return-void

    .line 1807
    :cond_d
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeEmailCode;

    if-eqz v2, :cond_e

    .line 1808
    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->google_signin_allowed:Z

    invoke-virtual {p1, v3, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1809
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->email_pattern:Ljava/lang/String;

    const-string v2, "emailPattern"

    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1810
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->length:I

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1811
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->next_phone_login_date:I

    const-string v1, "nextPhoneLoginDate"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1812
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->reset_available_period:I

    const-string v1, "resetAvailablePeriod"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1813
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->reset_pending_date:I

    const-string v0, "resetPendingDate"

    invoke-virtual {p1, v0, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 p2, 0xe

    .line 1814
    invoke-virtual {p0, p2, p3, p1, v8}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    return-void

    .line 1815
    :cond_e
    instance-of p2, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeSmsWord;

    const-string v1, "beginning"

    if-eqz p2, :cond_10

    .line 1816
    iget-object p2, v0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->beginning:Ljava/lang/String;

    if-eqz p2, :cond_f

    .line 1817
    invoke-virtual {p1, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    const/16 p2, 0x10

    .line 1819
    invoke-virtual {p0, p2, p3, p1, v8}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    return-void

    .line 1820
    :cond_10
    instance-of p2, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeSmsPhrase;

    if-eqz p2, :cond_12

    .line 1821
    iget-object p2, v0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->beginning:Ljava/lang/String;

    if-eqz p2, :cond_11

    .line 1822
    invoke-virtual {p1, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    const/16 p2, 0x11

    .line 1824
    invoke-virtual {p0, p2, p3, p1, v8}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    :cond_12
    return-void

    .line 1790
    :cond_13
    :goto_2
    invoke-virtual {p1, v7, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1791
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->length:I

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1792
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    instance-of p2, p2, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeFirebaseSms;

    const-string v0, "firebase"

    invoke-virtual {p1, v0, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1793
    invoke-virtual {p0, v4, p3, p1, v8}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    return-void
.end method

.method private fillNextCodeParams(Landroid/os/Bundle;Lorg/telegram/tgnet/tl/TL_account$sentEmailCode;)V
    .locals 2

    .line 1726
    const-string v0, "emailPattern"

    iget-object v1, p2, Lorg/telegram/tgnet/tl/TL_account$sentEmailCode;->email_pattern:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1727
    const-string v0, "length"

    iget p2, p2, Lorg/telegram/tgnet/tl/TL_account$sentEmailCode;->length:I

    invoke-virtual {p1, v0, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/4 p2, 0x1

    const/4 v0, 0x0

    const/16 v1, 0xd

    .line 1728
    invoke-virtual {p0, v1, p2, p1, v0}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    return-void
.end method

.method private getUserPhoneNumbers(Z)Ljava/util/HashSet;
    .locals 5

    .line 3510
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 3512
    :try_start_0
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 3513
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 3514
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p1, :cond_0

    .line 3515
    invoke-static {v1}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 3518
    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3521
    :cond_1
    :goto_2
    :try_start_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3522
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    const/16 v3, 0x1e

    if-lt v1, v3, :cond_2

    .line 3525
    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getCompleteActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_5

    :cond_2
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_3

    .line 3527
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    const/16 v4, 0x1c

    if-lt v1, v4, :cond_4

    .line 3528
    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getAccessibleSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    :cond_4
    if-eqz v3, :cond_5

    .line 3530
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3531
    :cond_5
    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    :cond_6
    if-eqz v3, :cond_9

    const/4 v1, 0x0

    .line 3534
    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    .line 3535
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v2

    .line 3536
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    if-eqz p1, :cond_7

    .line 3537
    invoke-static {v2}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_7
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 3543
    :goto_5
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_9
    return-object v0
.end method

.method private isCustomKeyboardForceDisabled()Z
    .locals 2

    .line 841
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-gt v1, v0, :cond_1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isAccessibilityTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private isCustomKeyboardVisible()Z
    .locals 2

    .line 845
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    iget v1, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SlideView;->hasCustomKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->isCustomKeyboardForceDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isInCancelAccountDeletionMode()Z
    .locals 2

    .line 487
    iget v0, p0, Lorg/telegram/ui/LoginActivity;->activityMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private synthetic lambda$createView$0(IZ)V
    .locals 1

    const/high16 p2, 0x41a00000    # 20.0f

    .line 603
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    if-le p1, v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->isCustomKeyboardVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 606
    :cond_0
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    if-gt p1, p2, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->keyboardHideCallback:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 607
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 608
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->keyboardHideCallback:Ljava/lang/Runnable;

    :cond_1
    return-void
.end method

.method private synthetic lambda$createView$1(Landroid/view/View;)V
    .locals 0

    .line 733
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->onDoneButtonPressed()V

    return-void
.end method

.method private synthetic lambda$createView$2(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 735
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->phoneNumberConfirmView:Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;

    if-eqz p1, :cond_0

    .line 736
    invoke-static {p1}, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->-$$Nest$mupdateFabPosition(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$3(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 743
    invoke-virtual {p0, p1}, Lorg/telegram/ui/LoginActivity;->onBackPressed(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 744
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$4(Landroid/view/View;)V
    .locals 0

    .line 762
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->emailChangeSkipCallback:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 763
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 765
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$createView$5(Landroid/view/View;)V
    .locals 0

    .line 771
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->showLoginOptionsMenu()V

    return-void
.end method

.method private synthetic lambda$onCustomTransitionAnimation$20(IILandroid/view/ViewGroup$MarginLayoutParams;IIILorg/telegram/ui/Components/TransformableLoginButtonView;FIFILandroid/animation/ValueAnimator;)V
    .locals 2

    .line 8421
    invoke-virtual {p12}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p12

    check-cast p12, Ljava/lang/Float;

    invoke-virtual {p12}, Ljava/lang/Float;->floatValue()F

    move-result p12

    .line 8422
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->keyboardLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p12}, Landroid/view/View;->setAlpha(F)V

    .line 8423
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    int-to-float p2, p2

    mul-float/2addr p2, p12

    float-to-int p2, p2

    invoke-static {p1, p2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, p12

    .line 8426
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->slideViewsContainer:Landroid/widget/FrameLayout;

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-virtual {p2, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 8427
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->isCustomKeyboardForceDisabled()Z

    move-result p2

    if-nez p2, :cond_0

    .line 8428
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-virtual {p2, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 8429
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/FragmentFloatingButton;->setTranslationY(F)V

    .line 8432
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->introView:Landroid/view/View;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    mul-float/2addr v0, p12

    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationY(F)V

    const p2, 0x3d4ccccd    # 0.05f

    mul-float/2addr p1, p2

    const p2, 0x3f733333    # 0.95f

    add-float/2addr p1, p2

    .line 8434
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->introView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setScaleX(F)V

    .line 8435
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->introView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setScaleY(F)V

    int-to-float p1, p4

    sub-int p2, p5, p4

    int-to-float p2, p2

    mul-float/2addr p2, p12

    add-float/2addr p1, p2

    float-to-int p1, p1

    .line 8437
    iput p1, p3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    int-to-float p1, p6

    sub-int/2addr p5, p6

    int-to-float p2, p5

    mul-float/2addr p2, p12

    add-float/2addr p1, p2

    float-to-int p1, p1

    .line 8438
    iput p1, p3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 8439
    invoke-virtual {p7}, Landroid/view/View;->requestLayout()V

    .line 8441
    invoke-virtual {p7, p12}, Lorg/telegram/ui/Components/TransformableLoginButtonView;->setProgress(F)V

    int-to-float p1, p9

    sub-float/2addr p1, p8

    mul-float/2addr p1, p12

    add-float/2addr p8, p1

    .line 8442
    invoke-virtual {p7, p8}, Landroid/view/View;->setTranslationX(F)V

    int-to-float p1, p11

    sub-float/2addr p1, p10

    mul-float/2addr p1, p12

    add-float/2addr p10, p1

    .line 8443
    invoke-virtual {p7, p10}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private synthetic lambda$onDialogDismiss$9()V
    .locals 1

    const/4 v0, 0x0

    .line 1079
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity;->needRequestPermissions:Z

    return-void
.end method

.method private synthetic lambda$onDoneButtonPressed$15(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 1392
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    iget p2, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SlideView;->onCancelPressed()V

    const/4 p1, 0x1

    .line 1393
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity;->needHideProgress(Z)V

    return-void
.end method

.method private synthetic lambda$setCustomKeyboardVisible$6(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 863
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 864
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 865
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    const/high16 p1, 0x43660000    # 230.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private synthetic lambda$setCustomKeyboardVisible$7(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 890
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 891
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 892
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    const/high16 p1, 0x43660000    # 230.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private synthetic lambda$showDoneButton$13(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1307
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 1308
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->floatingAutoAnimator:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->setOffsetY(F)V

    .line 1309
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    const/high16 v1, 0x428c0000    # 70.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    div-float/2addr p1, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$showDoneButton$14(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1317
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 1318
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->floatingAutoAnimator:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->setOffsetY(F)V

    .line 1319
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    const/high16 v1, 0x428c0000    # 70.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    div-float/2addr p1, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$showEditDoneProgress$16(ZZZ)V
    .locals 0

    .line 1410
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->showEditDoneProgress(ZZZ)V

    return-void
.end method

.method private synthetic lambda$showEditDoneProgress$17(IZZ)V
    .locals 1

    .line 1425
    iget v0, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    .line 1426
    iput p1, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    const/4 p1, 0x1

    .line 1427
    invoke-direct {p0, p2, p3, p1}, Lorg/telegram/ui/LoginActivity;->showEditDoneProgress(ZZZ)V

    .line 1428
    iput v0, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    return-void
.end method

.method private synthetic lambda$showEditDoneProgress$18(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1471
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const v0, 0x3f666666    # 0.9f

    mul-float/2addr v0, p1

    const v1, 0x3dcccccd    # 0.1f

    add-float/2addr v0, v1

    .line 1473
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 1474
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 1475
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$showLoginOptionsMenu$24(Lorg/telegram/ui/Components/ItemOptions;Landroid/view/View;)V
    .locals 0

    .line 9037
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    .line 9038
    new-instance p1, Lorg/telegram/ui/ProxyListActivity;

    invoke-direct {p1}, Lorg/telegram/ui/ProxyListActivity;-><init>()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$showLoginOptionsMenu$25(Lorg/telegram/ui/Components/ItemOptions;Landroid/view/View;)V
    .locals 2

    .line 9046
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->proxyButtonView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->clearAnimation()V

    .line 9047
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->proxyButtonView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 9048
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->proxyButtonView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9049
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    const/4 p1, 0x0

    const/4 p2, 0x0

    const/16 v0, 0x12

    const/4 v1, 0x1

    .line 9050
    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    return-void
.end method

.method private synthetic lambda$showProxyButton$27(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 9149
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->proxyButtonView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showProxyButtonDelayed$26()V
    .locals 1

    const/4 v0, 0x0

    .line 9130
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity;->proxyButtonVisible:Z

    const/4 v0, 0x1

    .line 9131
    invoke-direct {p0, v0, v0}, Lorg/telegram/ui/LoginActivity;->showProxyButton(ZZ)V

    return-void
.end method

.method private synthetic lambda$tryResetAccount$21(Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    .line 8510
    invoke-direct {p0, v0}, Lorg/telegram/ui/LoginActivity;->needHideProgress(Z)V

    .line 8511
    const-string v1, "code"

    const-string v2, "phoneHash"

    const-string v3, "phoneFormated"

    const/4 v4, 0x1

    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    .line 8516
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 8517
    invoke-virtual {p1, v3, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8518
    invoke-virtual {p1, v2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8519
    invoke-virtual {p1, v1, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x5

    .line 8520
    invoke-virtual {p0, p2, v4, p1, v0}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 8513
    invoke-virtual {p0, v0, v4, p1, v4}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    return-void

    .line 8522
    :cond_2
    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v6, "2FA_RECENT_CONFIRM"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 8523
    sget p1, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ResetAccountCancelledAlert"

    sget p3, Lorg/telegram/messenger/R$string;->ResetAccountCancelledAlert:I

    invoke-static {p2, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity;->needShowAlert(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 8524
    :cond_3
    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v6, "2FA_CONFIRM_WAIT_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 8525
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 8526
    invoke-virtual {v5, v3, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8527
    invoke-virtual {v5, v2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8528
    invoke-virtual {v5, v1, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8529
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result p2

    const-string p3, "startTime"

    invoke-virtual {v5, p3, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 8530
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p2, ""

    invoke-virtual {p1, v6, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p2, "waitTime"

    invoke-virtual {v5, p2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 p1, 0x8

    .line 8531
    invoke-virtual {p0, p1, v4, v5, v0}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    return-void

    .line 8533
    :cond_4
    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/LoginActivity;->needShowAlert(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$tryResetAccount$22(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    .line 8509
    new-instance v0, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda29;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v2, p5

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/LoginActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$tryResetAccount$23(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 1

    const/4 p4, 0x0

    .line 8506
    invoke-direct {p0, p4}, Lorg/telegram/ui/LoginActivity;->needShowProgress(I)V

    .line 8507
    new-instance p4, Lorg/telegram/tgnet/tl/TL_account$deleteAccount;

    invoke-direct {p4}, Lorg/telegram/tgnet/tl/TL_account$deleteAccount;-><init>()V

    .line 8508
    const-string p5, "Forgot password"

    iput-object p5, p4, Lorg/telegram/tgnet/tl/TL_account$deleteAccount;->reason:Ljava/lang/String;

    .line 8509
    iget p5, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p5}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p5

    new-instance v0, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda28;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xa

    invoke-virtual {p5, p4, v0, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method public static loadCurrentState(ZI)Landroid/os/Bundle;
    .locals 6

    .line 997
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 998
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "logininfo2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {v1, p0, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 999
    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    .line 1000
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1001
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1002
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 1003
    const-string v3, "_\\|_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1004
    array-length v4, v3

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 1005
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 1006
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1007
    :cond_2
    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_3

    .line 1008
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 1009
    :cond_3
    instance-of v3, v1, Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    .line 1010
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 1012
    :cond_4
    array-length v2, v3

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    .line 1013
    aget-object v2, v3, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_5

    .line 1015
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1016
    aget-object v4, v3, p1

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1018
    :cond_5
    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 1019
    aget-object v3, v3, v5

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1020
    :cond_6
    instance-of v4, v1, Ljava/lang/Integer;

    if-eqz v4, :cond_7

    .line 1021
    aget-object v3, v3, v5

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 1022
    :cond_7
    instance-of v4, v1, Ljava/lang/Boolean;

    if-eqz v4, :cond_1

    .line 1023
    aget-object v3, v3, v5

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :cond_8
    return-object v0

    :catch_0
    move-exception p0

    .line 1029
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private needFinishActivity(ZZI)V
    .locals 3

    .line 1640
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1641
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->setLightStatusBar(Landroid/view/Window;Z)V

    .line 1643
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->clearCurrentState()V

    .line 1644
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/LaunchActivity;

    if-eqz v0, :cond_3

    .line 1645
    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity;->newAccount:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1646
    iput-boolean v1, p0, Lorg/telegram/ui/LoginActivity;->newAccount:Z

    .line 1647
    iput-boolean v2, p0, Lorg/telegram/ui/LoginActivity;->pendingSwitchingAccount:Z

    .line 1648
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/LaunchActivity;

    iget p3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    new-instance v0, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda26;

    invoke-direct {v0, p1}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda26;-><init>(Z)V

    invoke-virtual {p2, p3, v2, v0}, Lorg/telegram/ui/LaunchActivity;->switchToAccount(IZLorg/telegram/messenger/GenericProvider;)V

    .line 1655
    iput-boolean v1, p0, Lorg/telegram/ui/LoginActivity;->pendingSwitchingAccount:Z

    .line 1656
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 1659
    new-instance p1, Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    const/4 p2, 0x6

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;-><init>(ILorg/telegram/tgnet/tl/TL_account$Password;)V

    .line 1660
    invoke-virtual {p1, p3}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->setBlockingAlert(I)V

    .line 1661
    invoke-virtual {p1, v2}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->setFromRegistration(Z)V

    .line 1662
    invoke-virtual {p0, p1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto :goto_0

    .line 1664
    :cond_2
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 1665
    const-string p3, "afterSignup"

    invoke-virtual {p2, p3, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1666
    new-instance p1, Lorg/telegram/ui/MainTabsActivity;

    invoke-direct {p1}, Lorg/telegram/ui/MainTabsActivity;-><init>()V

    .line 1667
    invoke-virtual {p1, p2}, Lorg/telegram/ui/MainTabsActivity;->prepareDialogsActivity(Landroid/os/Bundle;)Lorg/telegram/ui/DialogsActivity;

    .line 1668
    invoke-virtual {p0, p1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    .line 1671
    :goto_0
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    new-array p3, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1672
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p1

    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/LocaleController;->loadRemoteLanguages(I)V

    .line 1673
    invoke-static {v2}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->checkRestrictedLanguages(Z)V

    return-void

    .line 1675
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/ExternalActionActivity;

    if-eqz p1, :cond_4

    .line 1676
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ExternalActionActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ExternalActionActivity;->onFinishLogin()V

    :cond_4
    return-void
.end method

.method private needHideProgress(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 1517
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/LoginActivity;->needHideProgress(ZZ)V

    return-void
.end method

.method private needHideProgress(ZZ)V
    .locals 3

    .line 1521
    iget v0, p0, Lorg/telegram/ui/LoginActivity;->progressRequestId:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 1523
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/LoginActivity;->progressRequestId:I

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 1525
    :cond_0
    iput v1, p0, Lorg/telegram/ui/LoginActivity;->progressRequestId:I

    .line 1528
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->isInCancelAccountDeletionMode()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->cancelDeleteProgressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz p1, :cond_2

    .line 1529
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    const/4 p1, 0x0

    .line 1530
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->cancelDeleteProgressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 1533
    :cond_2
    invoke-direct {p0, v1, p2}, Lorg/telegram/ui/LoginActivity;->showEditDoneProgress(ZZ)V

    return-void
.end method

.method private needShowAlert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 1161
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1164
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1165
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1166
    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1167
    const-string p1, "OK"

    sget p2, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {p1, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1168
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_1
    :goto_0
    return-void
.end method

.method public static needShowInvalidAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Lorg/telegram/ui/LoginActivity$PhoneInputData;Z)V
    .locals 6

    if-eqz p0, :cond_6

    .line 1228
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 1231
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p3, :cond_1

    .line 1233
    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1234
    const-string p2, "BannedPhoneNumber"

    sget v1, Lorg/telegram/messenger/R$string;->BannedPhoneNumber:I

    invoke-static {p2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_1

    :cond_1
    if-eqz p2, :cond_5

    .line 1236
    invoke-static {p2}, Lorg/telegram/ui/LoginActivity$PhoneInputData;->-$$Nest$fgetpatterns(Lorg/telegram/ui/LoginActivity$PhoneInputData;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {p2}, Lorg/telegram/ui/LoginActivity$PhoneInputData;->-$$Nest$fgetpatterns(Lorg/telegram/ui/LoginActivity$PhoneInputData;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {p2}, Lorg/telegram/ui/LoginActivity$PhoneInputData;->-$$Nest$fgetcountry(Lorg/telegram/ui/LoginActivity$PhoneInputData;)Lorg/telegram/ui/CountrySelectActivity$Country;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1238
    invoke-static {p2}, Lorg/telegram/ui/LoginActivity$PhoneInputData;->-$$Nest$fgetpatterns(Lorg/telegram/ui/LoginActivity$PhoneInputData;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const v2, 0x7fffffff

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1239
    const-string v4, " "

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v2, :cond_2

    move v2, v3

    goto :goto_0

    .line 1244
    :cond_3
    invoke-static {p1}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p2}, Lorg/telegram/ui/LoginActivity$PhoneInputData;->-$$Nest$fgetcountry(Lorg/telegram/ui/LoginActivity$PhoneInputData;)Lorg/telegram/ui/CountrySelectActivity$Country;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/ui/CountrySelectActivity$Country;->code:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v1, v3

    if-ge v1, v2, :cond_4

    .line 1245
    sget v1, Lorg/telegram/messenger/R$string;->WrongNumberFormat:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1246
    sget v1, Lorg/telegram/messenger/R$string;->ShortNumberInfo:I

    invoke-static {p2}, Lorg/telegram/ui/LoginActivity$PhoneInputData;->-$$Nest$fgetcountry(Lorg/telegram/ui/LoginActivity$PhoneInputData;)Lorg/telegram/ui/CountrySelectActivity$Country;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/CountrySelectActivity$Country;->name:Ljava/lang/String;

    invoke-static {p2}, Lorg/telegram/ui/LoginActivity$PhoneInputData;->-$$Nest$fgetphoneNumber(Lorg/telegram/ui/LoginActivity$PhoneInputData;)Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    aput-object p2, v3, v2

    const-string p2, "ShortNumberInfo"

    invoke-static {p2, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_1

    .line 1248
    :cond_4
    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1249
    sget p2, Lorg/telegram/messenger/R$string;->InvalidPhoneNumber:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_1

    .line 1252
    :cond_5
    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1253
    sget p2, Lorg/telegram/messenger/R$string;->InvalidPhoneNumber:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1256
    :goto_1
    const-string p2, "BotHelp"

    sget v1, Lorg/telegram/messenger/R$string;->BotHelp:I

    invoke-static {p2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda22;

    invoke-direct {v1, p3, p1, p0}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda22;-><init>(ZLjava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v0, p2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1280
    const-string p1, "OK"

    sget p2, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {p1, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1281
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_6
    :goto_2
    return-void
.end method

.method public static needShowInvalidAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1224
    invoke-static {p0, p1, v0, p2}, Lorg/telegram/ui/LoginActivity;->needShowInvalidAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Lorg/telegram/ui/LoginActivity$PhoneInputData;Z)V

    return-void
.end method

.method private needShowProgress(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1497
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/LoginActivity;->needShowProgress(IZ)V

    return-void
.end method

.method private needShowProgress(IZ)V
    .locals 1

    .line 1501
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->isInCancelAccountDeletionMode()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    .line 1502
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->cancelDeleteProgressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1506
    :cond_0
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    const/4 v0, 0x3

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->cancelDeleteProgressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 p2, 0x0

    .line 1507
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanCancel(Z)V

    .line 1508
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->cancelDeleteProgressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    :cond_1
    :goto_0
    return-void

    .line 1512
    :cond_2
    iput p1, p0, Lorg/telegram/ui/LoginActivity;->progressRequestId:I

    const/4 p1, 0x1

    .line 1513
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity;->showEditDoneProgress(ZZ)V

    return-void
.end method

.method private onAuthSuccess(Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;)V
    .locals 1

    const/4 v0, 0x0

    .line 1687
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/LoginActivity;->onAuthSuccess(Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;Z)V

    return-void
.end method

.method private onAuthSuccess(Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;Z)V
    .locals 4

    .line 1693
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->cleanup()V

    .line 1694
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->setUserId(J)V

    .line 1695
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->clearConfig()V

    .line 1696
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->cleanup()V

    .line 1697
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/ui/LoginActivity;->syncContacts:Z

    iput-boolean v1, v0, Lorg/telegram/messenger/UserConfig;->syncContacts:Z

    .line 1698
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/UserConfig;->setCurrentUser(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 1699
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 1700
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesStorage;->cleanup(Z)V

    .line 1701
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1702
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1703
    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1, v1}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    .line 1704
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;->user:Lorg/telegram/tgnet/TLRPC$User;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 1705
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ContactsController;->checkAppAccount()V

    .line 1706
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->checkPromoInfo(Z)V

    .line 1707
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->updateDcSettings()V

    .line 1708
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->loadAppConfig()V

    .line 1709
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MessagesController;->checkPeerColors(Z)V

    .line 1711
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;->future_auth_token:[B

    if-eqz v0, :cond_0

    .line 1712
    invoke-static {p1}, Lorg/telegram/messenger/AuthTokensHelper;->saveLogInToken(Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;)V

    goto :goto_0

    .line 1714
    :cond_0
    const-string v0, "onAuthSuccess future_auth_token is empty"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :goto_0
    if-eqz p2, :cond_1

    .line 1718
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->putDialogsEndReachedAfterRegistration()V

    .line 1720
    :cond_1
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const-string v2, "tg_placeholders_android"

    invoke-virtual {v0, v2, v3, v1}, Lorg/telegram/messenger/MediaDataController;->loadStickersByEmojiOrName(Ljava/lang/String;ZZ)V

    .line 1722
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;->setup_password_required:Z

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;->otherwise_relogin_days:I

    invoke-direct {p0, p2, v0, p1}, Lorg/telegram/ui/LoginActivity;->needFinishActivity(ZZI)V

    return-void
.end method

.method private onDoneButtonPressed()V
    .locals 4

    .line 1380
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->doneButtonVisible:[Z

    iget v1, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    aget-boolean v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    .line 1383
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1384
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 1387
    :cond_1
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1388
    const-string v2, "StopLoadingTitle"

    sget v3, Lorg/telegram/messenger/R$string;->StopLoadingTitle:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1389
    const-string v2, "StopLoading"

    sget v3, Lorg/telegram/messenger/R$string;->StopLoading:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1390
    const-string v2, "WaitMore"

    sget v3, Lorg/telegram/messenger/R$string;->WaitMore:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1391
    const-string v1, "Stop"

    sget v2, Lorg/telegram/messenger/R$string;->Stop:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda23;

    invoke-direct {v2, p0}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1395
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    .line 1397
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    iget v2, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    aget-object v0, v0, v2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SlideView;->onNextPressed(Ljava/lang/String;)V

    return-void
.end method

.method private onFieldError(Landroid/view/View;Z)V
    .locals 6

    const/4 v0, 0x3

    const/4 v1, 0x2

    .line 1173
    :try_start_0
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/high16 v0, 0x40600000    # 3.5f

    .line 1175
    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    if-eqz p2, :cond_1

    .line 1178
    instance-of p2, p1, Lorg/telegram/ui/Components/OutlineTextContainerView;

    if-eqz p2, :cond_1

    .line 1179
    sget p2, Lorg/telegram/messenger/R$id;->timeout_callback:I

    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Runnable;

    if-eqz p2, :cond_0

    .line 1181
    invoke-virtual {p1, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1184
    :cond_0
    move-object p2, p1

    check-cast p2, Lorg/telegram/ui/Components/OutlineTextContainerView;

    .line 1185
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 1186
    invoke-virtual {p2}, Lorg/telegram/ui/Components/OutlineTextContainerView;->getAttachedEditText()Landroid/widget/EditText;

    move-result-object v1

    .line 1187
    new-instance v2, Lorg/telegram/ui/LoginActivity$7;

    invoke-direct {v2, p0, v1, v0}, Lorg/telegram/ui/LoginActivity$7;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/widget/EditText;Ljava/util/concurrent/atomic/AtomicReference;)V

    const/high16 v3, 0x3f800000    # 1.0f

    .line 1204
    invoke-virtual {p2, v3}, Lorg/telegram/ui/Components/OutlineTextContainerView;->animateError(F)V

    .line 1205
    new-instance v3, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda24;

    invoke-direct {v3, p2, p1, v1, v2}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/Components/OutlineTextContainerView;Landroid/view/View;Landroid/widget/EditText;Landroid/text/TextWatcher;)V

    .line 1212
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    const-wide/16 v4, 0x7d0

    .line 1213
    invoke-virtual {p1, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1214
    sget p2, Lorg/telegram/messenger/R$id;->timeout_callback:I

    invoke-virtual {p1, p2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    if-eqz v1, :cond_1

    .line 1217
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    return-void
.end method

.method private putBundleToEditor(Landroid/os/Bundle;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
    .locals 5

    .line 1042
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1043
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1044
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1045
    instance-of v3, v2, Ljava/lang/String;

    const-string v4, "_|_"

    if-eqz v3, :cond_2

    if-eqz p3, :cond_1

    .line 1047
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v2, Ljava/lang/String;

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 1049
    :cond_1
    check-cast v2, Ljava/lang/String;

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 1051
    :cond_2
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_4

    if-eqz p3, :cond_3

    .line 1053
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 1055
    :cond_3
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 1057
    :cond_4
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_6

    if-eqz p3, :cond_5

    .line 1059
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 1061
    :cond_5
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 1063
    :cond_6
    instance-of v3, v2, Landroid/os/Bundle;

    if-eqz v3, :cond_0

    .line 1064
    check-cast v2, Landroid/os/Bundle;

    invoke-direct {p0, v2, p2, v1}, Lorg/telegram/ui/LoginActivity;->putBundleToEditor(Landroid/os/Bundle;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method private setCustomKeyboardVisible(ZZ)V
    .locals 5

    .line 849
    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity;->customKeyboardWasVisible:Z

    if-ne v0, p1, :cond_0

    if-eqz p2, :cond_0

    return-void

    .line 850
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity;->customKeyboardWasVisible:Z

    .line 852
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->isCustomKeyboardForceDisabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move p1, v1

    :cond_1
    const/4 v0, 0x2

    const-wide/16 v2, 0x12c

    if-eqz p1, :cond_3

    .line 857
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 858
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    iget v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {p1, v4}, Lorg/telegram/messenger/AndroidUtilities;->requestAltFocusable(Landroid/app/Activity;I)V

    if-eqz p2, :cond_2

    .line 860
    new-array p1, v0, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->keyboardAnimator:Landroid/animation/ValueAnimator;

    .line 861
    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 862
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->keyboardAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda9;

    invoke-direct {p2, p0}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 867
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->keyboardAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/LoginActivity$5;

    invoke-direct {p2, p0}, Lorg/telegram/ui/LoginActivity$5;-><init>(Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 880
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->keyboardAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 882
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 885
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {p1, v1}, Lorg/telegram/messenger/AndroidUtilities;->removeAltFocusable(Landroid/app/Activity;I)V

    if-eqz p2, :cond_4

    .line 887
    new-array p1, v0, [F

    fill-array-data p1, :array_1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->keyboardAnimator:Landroid/animation/ValueAnimator;

    .line 888
    sget-object p2, Lorg/telegram/ui/Components/Easings;->easeInOutQuad:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 889
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->keyboardAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda10;

    invoke-direct {p2, p0}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 894
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->keyboardAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/LoginActivity$6;

    invoke-direct {p2, p0}, Lorg/telegram/ui/LoginActivity$6;-><init>(Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 904
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->keyboardAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 906
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private showDoneButton(ZZ)V
    .locals 7

    .line 1285
    iget v0, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 1286
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity;->doneButtonVisible:[Z

    aget-boolean v4, v4, v0

    if-ne v4, p1, :cond_1

    return-void

    .line 1290
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity;->showDoneAnimation:[Landroid/animation/AnimatorSet;

    aget-object v0, v4, v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    .line 1292
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 1294
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->showDoneAnimation:[Landroid/animation/AnimatorSet;

    iget v4, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1296
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->doneButtonVisible:[Z

    iget v4, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    aput-boolean p1, v0, v4

    const/4 v0, 0x0

    const/high16 v5, 0x428c0000    # 70.0f

    if-eqz p2, :cond_9

    .line 1298
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->showDoneAnimation:[Landroid/animation/AnimatorSet;

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    aput-object v6, p2, v4

    const/4 p2, 0x2

    if-eqz p1, :cond_5

    if-eqz v3, :cond_6

    .line 1301
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity;->floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_4

    .line 1302
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity;->floatingAutoAnimator:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->setOffsetY(F)V

    .line 1303
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity;->floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1305
    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity;->floatingAutoAnimator:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->getOffsetY()F

    move-result v4

    new-array p2, p2, [F

    aput v4, p2, v2

    aput v0, p2, v1

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 1306
    new-instance v0, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1311
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->showDoneAnimation:[Landroid/animation/AnimatorSet;

    iget v1, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_6

    .line 1315
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->floatingAutoAnimator:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->getOffsetY()F

    move-result v0

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    new-array p2, p2, [F

    aput v0, p2, v2

    aput v4, p2, v1

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 1316
    new-instance v0, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1321
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->showDoneAnimation:[Landroid/animation/AnimatorSet;

    iget v1, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1324
    :cond_6
    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->showDoneAnimation:[Landroid/animation/AnimatorSet;

    iget v0, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    aget-object p2, p2, v0

    new-instance v0, Lorg/telegram/ui/LoginActivity$8;

    invoke-direct {v0, p0, v3, p1}, Lorg/telegram/ui/LoginActivity$8;-><init>(Lorg/telegram/ui/LoginActivity;ZZ)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/16 p2, 0x96

    if-eqz v3, :cond_8

    if-eqz p1, :cond_7

    .line 1354
    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    const/16 p2, 0xc8

    goto :goto_2

    .line 1357
    :cond_7
    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    goto :goto_2

    :cond_8
    const/4 p1, 0x0

    .line 1363
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->showDoneAnimation:[Landroid/animation/AnimatorSet;

    iget v1, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    aget-object v0, v0, v1

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1364
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->showDoneAnimation:[Landroid/animation/AnimatorSet;

    iget v0, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    aget-object p2, p2, v0

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1365
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->showDoneAnimation:[Landroid/animation/AnimatorSet;

    iget p2, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    aget-object p1, p1, p2

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_9
    if-eqz p1, :cond_a

    .line 1368
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingAutoAnimator:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->setOffsetY(F)V

    .line 1369
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 1370
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 1372
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingAutoAnimator:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->setOffsetY(F)V

    .line 1373
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1374
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showEditDoneProgress(ZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 1402
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/LoginActivity;->showEditDoneProgress(ZZZ)V

    return-void
.end method

.method private showEditDoneProgress(ZZZ)V
    .locals 4

    if-eqz p2, :cond_0

    .line 1406
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->doneProgressVisible:[Z

    iget v1, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    aget-boolean v0, v0, v1

    if-ne v0, p1, :cond_0

    if-nez p3, :cond_0

    return-void

    .line 1409
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 1410
    new-instance v0, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/LoginActivity;ZZZ)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 1413
    :cond_1
    iget v0, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    if-nez p3, :cond_4

    if-nez v3, :cond_4

    .line 1416
    iget-object p3, p0, Lorg/telegram/ui/LoginActivity;->doneProgressVisible:[Z

    aput-boolean p1, p3, v0

    if-eqz p2, :cond_5

    .line 1419
    iget-object p3, p0, Lorg/telegram/ui/LoginActivity;->postedEditDoneCallback:[Z

    aget-boolean p3, p3, v0

    if-eqz p3, :cond_3

    .line 1420
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->editDoneCallback:[Ljava/lang/Runnable;

    aget-object p1, p1, v0

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1421
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->postedEditDoneCallback:[Z

    iget p2, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    aput-boolean v2, p1, p2

    return-void

    :cond_3
    if-eqz p1, :cond_5

    .line 1424
    iget-object p3, p0, Lorg/telegram/ui/LoginActivity;->editDoneCallback:[Ljava/lang/Runnable;

    new-instance v2, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda17;

    invoke-direct {v2, p0, v0, p1, p2}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/LoginActivity;IZZ)V

    aput-object v2, p3, v0

    const-wide/16 p1, 0x7d0

    invoke-static {v2, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1430
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->postedEditDoneCallback:[Z

    iget p2, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    aput-boolean v1, p1, p2

    return-void

    .line 1435
    :cond_4
    iget-object p3, p0, Lorg/telegram/ui/LoginActivity;->postedEditDoneCallback:[Z

    aput-boolean v2, p3, v0

    .line 1436
    iget-object p3, p0, Lorg/telegram/ui/LoginActivity;->doneProgressVisible:[Z

    aput-boolean p1, p3, v0

    .line 1439
    :cond_5
    iget-object p3, p0, Lorg/telegram/ui/LoginActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    if-eqz p3, :cond_6

    .line 1440
    invoke-virtual {p3}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_6
    if-eqz v3, :cond_7

    .line 1444
    iget-object p3, p0, Lorg/telegram/ui/LoginActivity;->floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    invoke-virtual {p3, p1, p2}, Lorg/telegram/ui/Components/FragmentFloatingButton;->setProgressVisible(ZZ)V

    return-void

    :cond_7
    const/4 p3, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_a

    .line 1449
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_8

    move p2, p3

    goto :goto_1

    :cond_8
    move p2, v0

    :goto_1
    if-eqz p1, :cond_9

    move p3, v0

    :cond_9
    const/4 v0, 0x2

    .line 1450
    new-array v0, v0, [F

    aput p2, v0, v2

    aput p3, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 1451
    new-instance p3, Lorg/telegram/ui/LoginActivity$9;

    invoke-direct {p3, p0, p1}, Lorg/telegram/ui/LoginActivity$9;-><init>(Lorg/telegram/ui/LoginActivity;Z)V

    invoke-virtual {p2, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1470
    new-instance p1, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda18;

    invoke-direct {p1, p0}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1477
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    new-array p3, v1, [Landroid/animation/Animator;

    aput-object p2, p3, v2

    invoke-virtual {p1, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1478
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 p2, 0x96

    invoke-virtual {p1, p2, p3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1479
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_a
    if-eqz p1, :cond_b

    .line 1482
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1483
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 1484
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 1485
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    return-void

    .line 1487
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1488
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 1489
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const p2, 0x3dcccccd    # 0.1f

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 1490
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    .line 1491
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    return-void
.end method

.method private showKeyboard(Landroid/view/View;)Z
    .locals 1

    .line 8345
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->isCustomKeyboardVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8346
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private showLoginOptionsMenu()V
    .locals 12

    .line 9005
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->proxyButtonView:Landroid/widget/ImageView;

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_9

    .line 9008
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->loginOptionsMenu:Lorg/telegram/ui/Components/ItemOptions;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9009
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->loginOptionsMenu:Lorg/telegram/ui/Components/ItemOptions;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    .line 9011
    :cond_1
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "mainconfig"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 9012
    const-string v1, "proxy_ip"

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9013
    const-string v3, "proxy_enabled"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    if-nez v0, :cond_4

    .line 9014
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/messenger/MessagesController;->blockedCountry:Z

    if-eqz v1, :cond_3

    sget-object v1, Lorg/telegram/messenger/SharedConfig;->proxyList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2

    :cond_4
    :goto_1
    move v1, v3

    .line 9015
    :goto_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getConnectionState()I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x5

    if-eq v4, v5, :cond_6

    if-ne v4, v6, :cond_5

    goto :goto_3

    :cond_5
    move v5, v2

    goto :goto_4

    :cond_6
    :goto_3
    move v5, v3

    :goto_4
    if-eq v4, v3, :cond_8

    const/4 v7, 0x2

    if-eq v4, v7, :cond_8

    const/4 v7, 0x4

    if-ne v4, v7, :cond_7

    goto :goto_5

    :cond_7
    move v3, v2

    .line 9019
    :cond_8
    :goto_5
    new-instance v4, Lorg/telegram/ui/Components/ProxyDrawable;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Lorg/telegram/ui/Components/ProxyDrawable;-><init>(Landroid/content/Context;)V

    .line 9020
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    invoke-virtual {p0, v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v8

    .line 9021
    new-instance v9, Landroid/graphics/PorterDuffColorFilter;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v8, v10}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v9}, Lorg/telegram/ui/Components/ProxyDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 9022
    invoke-virtual {v4, v0, v5, v2}, Lorg/telegram/ui/Components/ProxyDrawable;->setConnected(ZZZ)V

    .line 9024
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->proxyButtonView:Landroid/widget/ImageView;

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    .line 9025
    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/ItemOptions;->setGravity(I)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    .line 9026
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->setOnTopOfScrim()Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    const/high16 v6, 0x40c00000    # 6.0f

    .line 9027
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    const/high16 v9, 0x41400000    # 12.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    invoke-virtual {v0, v6, v9}, Lorg/telegram/ui/Components/ItemOptions;->translate(FF)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    .line 9028
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    invoke-virtual {p0, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v9

    invoke-virtual {p0, v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v11

    invoke-virtual {v0, v9, v11}, Lorg/telegram/ui/Components/ItemOptions;->setColors(II)Lorg/telegram/ui/Components/ItemOptions;

    .line 9030
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->add()Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v9

    .line 9031
    sget v11, Lorg/telegram/messenger/R$string;->ProxySettings:I

    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11, v2, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;)V

    .line 9032
    invoke-virtual {p0, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v11

    invoke-virtual {v9, v11}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextColor(I)V

    .line 9033
    invoke-virtual {v9, v8, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setIconColor(ILandroid/graphics/PorterDuff$Mode;)V

    const/4 v8, 0x0

    if-eqz v1, :cond_a

    if-eqz v5, :cond_9

    .line 9034
    sget v3, Lorg/telegram/messenger/R$string;->MenuProxyConnected:I

    :goto_6
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_7

    :cond_9
    if-eqz v3, :cond_a

    sget v3, Lorg/telegram/messenger/R$string;->MenuProxyConnecting:I

    goto :goto_6

    :cond_a
    :goto_7
    invoke-virtual {v9, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSubtext(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_b

    const/16 v1, 0x38

    goto :goto_8

    :cond_b
    const/16 v1, 0x30

    .line 9035
    :goto_8
    invoke-virtual {v9, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setItemHeight(I)V

    .line 9036
    new-instance v1, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/LoginActivity;Lorg/telegram/ui/Components/ItemOptions;)V

    invoke-virtual {v9, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9041
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->add()Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v1

    .line 9042
    sget v3, Lorg/telegram/messenger/R$string;->LoginQrTitle:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_qrcode:I

    invoke-virtual {v1, v3, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 9043
    invoke-virtual {p0, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextColor(I)V

    .line 9044
    invoke-virtual {p0, v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v1, v3, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setIconColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 9045
    new-instance v3, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda20;

    invoke-direct {v3, p0, v0}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/LoginActivity;Lorg/telegram/ui/Components/ItemOptions;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9053
    iput-object v0, p0, Lorg/telegram/ui/LoginActivity;->loginOptionsMenu:Lorg/telegram/ui/Components/ItemOptions;

    .line 9054
    iput-object v9, p0, Lorg/telegram/ui/LoginActivity;->loginOptionsProxyItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 9055
    iput-object v4, p0, Lorg/telegram/ui/LoginActivity;->loginOptionsProxyDrawable:Lorg/telegram/ui/Components/ProxyDrawable;

    .line 9056
    new-instance v1, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ItemOptions;->setOnDismiss(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 9057
    invoke-direct {p0, v2}, Lorg/telegram/ui/LoginActivity;->updateLoginOptionsProxyItem(Z)V

    .line 9059
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    :cond_c
    :goto_9
    return-void
.end method

.method private showProxyButton(ZZ)V
    .locals 3

    .line 9136
    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity;->proxyButtonVisible:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 9139
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->showProxyButtonDelayed:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 9140
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 9141
    iput-object v0, p0, Lorg/telegram/ui/LoginActivity;->showProxyButtonDelayed:Ljava/lang/Runnable;

    .line 9143
    :cond_1
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity;->proxyButtonVisible:Z

    .line 9144
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->proxyButtonView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    .line 9146
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->proxyButtonView:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9147
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->proxyButtonView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/LoginActivity;Z)V

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 9151
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    .line 9153
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->proxyButtonView:Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9154
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->proxyButtonView:Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    move v0, v1

    :cond_5
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private showProxyButtonDelayed()V
    .locals 3

    .line 9122
    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity;->proxyButtonVisible:Z

    if-eqz v0, :cond_0

    return-void

    .line 9125
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->showProxyButtonDelayed:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 9126
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    const/4 v0, 0x1

    .line 9128
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity;->proxyButtonVisible:Z

    .line 9129
    new-instance v0, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/LoginActivity;)V

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity;->showProxyButtonDelayed:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private tryResetAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 8499
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 8502
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 8503
    const-string v1, "ResetMyAccountWarningText"

    sget v2, Lorg/telegram/messenger/R$string;->ResetMyAccountWarningText:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 8504
    const-string v1, "ResetMyAccountWarning"

    sget v2, Lorg/telegram/messenger/R$string;->ResetMyAccountWarning:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 8505
    const-string v1, "ResetMyAccountWarningReset"

    sget v2, Lorg/telegram/messenger/R$string;->ResetMyAccountWarningReset:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda27;

    invoke-direct {v2, p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 8538
    const-string p1, "Cancel"

    sget p2, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {p1, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 8539
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private updateColors()V
    .locals 5

    .line 8457
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 8459
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->backButtonView:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 8460
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->backButtonView:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 8462
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->proxyButtonView:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 8463
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->proxyButtonView:Landroid/widget/ImageView;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 8465
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    .line 8467
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FragmentFloatingButton;->updateColors()V

    .line 8468
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    .line 8469
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButtonPressed:I

    .line 8470
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    const/16 v4, 0x38

    .line 8468
    invoke-static {v4, v2, v3}, Lcom/exteragram/messenger/utils/ui/UIUtil;->createFabBackground(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 8471
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    sget-boolean v2, Lcom/exteragram/messenger/ExteraConfig;->squareFab:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/high16 v2, 0x41800000    # 16.0f

    .line 8472
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v3, v2}, Lorg/telegram/messenger/utils/ViewOutlineProviderImpl;->boundsWithPaddingRoundRect(IF)Landroid/view/ViewOutlineProvider;

    move-result-object v2

    goto :goto_0

    .line 8473
    :cond_0
    sget-object v2, Lorg/telegram/messenger/utils/ViewOutlineProviderImpl;->BOUNDS_OVAL:Landroid/view/ViewOutlineProvider;

    .line 8471
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 8474
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionIcon:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/TransformableLoginButtonView;->setColor(I)V

    .line 8475
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/TransformableLoginButtonView;->setBackgroundColor(I)V

    .line 8477
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    array-length v1, v0

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v2, v0, v3

    .line 8478
    invoke-virtual {v2}, Lorg/telegram/ui/Components/SlideView;->updateColors()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 8481
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CustomPhoneKeyboardView;->updateColors()V

    .line 8482
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->phoneNumberConfirmView:Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;

    if-eqz v0, :cond_2

    .line 8483
    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->-$$Nest$mupdateColors(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)V

    :cond_2
    return-void
.end method

.method private updateLoginOptionsProxyItem(Z)V
    .locals 8

    .line 9069
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->loginOptionsMenu:Lorg/telegram/ui/Components/ItemOptions;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->isShown()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->loginOptionsProxyItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->loginOptionsProxyDrawable:Lorg/telegram/ui/Components/ProxyDrawable;

    if-nez v0, :cond_0

    goto/16 :goto_8

    .line 9073
    :cond_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "mainconfig"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 9074
    const-string v1, "proxy_ip"

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9075
    const-string v3, "proxy_enabled"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-nez v0, :cond_3

    .line 9076
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/messenger/MessagesController;->blockedCountry:Z

    if-eqz v1, :cond_2

    sget-object v1, Lorg/telegram/messenger/SharedConfig;->proxyList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2

    :cond_3
    :goto_1
    move v1, v3

    .line 9078
    :goto_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getConnectionState()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_5

    const/4 v5, 0x5

    if-ne v4, v5, :cond_4

    goto :goto_3

    :cond_4
    move v5, v2

    goto :goto_4

    :cond_5
    :goto_3
    move v5, v3

    :goto_4
    if-eq v4, v3, :cond_6

    const/4 v6, 0x2

    if-eq v4, v6, :cond_6

    const/4 v6, 0x4

    if-ne v4, v6, :cond_7

    :cond_6
    move v2, v3

    .line 9082
    :cond_7
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    .line 9083
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity;->loginOptionsProxyDrawable:Lorg/telegram/ui/Components/ProxyDrawable;

    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v3, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/ProxyDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 9084
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity;->loginOptionsProxyDrawable:Lorg/telegram/ui/Components/ProxyDrawable;

    invoke-virtual {v4, v0, v5, p1}, Lorg/telegram/ui/Components/ProxyDrawable;->setConnected(ZZZ)V

    .line 9086
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->loginOptionsProxyItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextColor(I)V

    .line 9087
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->loginOptionsProxyItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p1, v3, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setIconColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 9088
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->loginOptionsProxyItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v0, 0x0

    if-eqz v1, :cond_9

    if-eqz v5, :cond_8

    sget v0, Lorg/telegram/messenger/R$string;->MenuProxyConnected:I

    :goto_5
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_8
    if-eqz v2, :cond_9

    sget v0, Lorg/telegram/messenger/R$string;->MenuProxyConnecting:I

    goto :goto_5

    :cond_9
    :goto_6
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSubtext(Ljava/lang/CharSequence;)V

    .line 9089
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->loginOptionsProxyItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v1, :cond_a

    const/16 v0, 0x38

    goto :goto_7

    :cond_a
    const/16 v0, 0x30

    :goto_7
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setItemHeight(I)V

    .line 9090
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->loginOptionsProxyItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 9091
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->loginOptionsProxyItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_b
    :goto_8
    return-void
.end method

.method private updateProxyButton(ZZ)V
    .locals 5

    .line 9095
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->proxyDrawable:Lorg/telegram/ui/Components/ProxyDrawable;

    if-nez v0, :cond_0

    goto :goto_0

    .line 9098
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getConnectionState()I

    move-result v0

    .line 9099
    iget v1, p0, Lorg/telegram/ui/LoginActivity;->currentConnectionState:I

    if-ne v1, v0, :cond_1

    if-nez p2, :cond_1

    :goto_0
    return-void

    .line 9102
    :cond_1
    iput v0, p0, Lorg/telegram/ui/LoginActivity;->currentConnectionState:I

    .line 9103
    sget-object p2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v0, "mainconfig"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 9104
    const-string v0, "proxy_ip"

    const-string v2, ""

    invoke-interface {p2, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9105
    const-string v2, "proxy_enabled"

    invoke-interface {p2, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    const/4 v2, 0x1

    if-eqz p2, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    move p2, v2

    goto :goto_1

    :cond_2
    move p2, v1

    .line 9106
    :goto_1
    iget v0, p0, Lorg/telegram/ui/LoginActivity;->currentConnectionState:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    const/4 v3, 0x5

    if-ne v0, v3, :cond_3

    goto :goto_2

    :cond_3
    move v3, v1

    goto :goto_3

    :cond_4
    :goto_2
    move v3, v2

    :goto_3
    if-eq v0, v2, :cond_6

    const/4 v4, 0x2

    if-eq v0, v4, :cond_6

    const/4 v4, 0x4

    if-ne v0, v4, :cond_5

    goto :goto_4

    :cond_5
    move v0, v1

    goto :goto_5

    :cond_6
    :goto_4
    move v0, v2

    :goto_5
    if-eqz p2, :cond_7

    .line 9109
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->proxyDrawable:Lorg/telegram/ui/Components/ProxyDrawable;

    invoke-virtual {p2, v2, v3, p1}, Lorg/telegram/ui/Components/ProxyDrawable;->setConnected(ZZZ)V

    .line 9110
    invoke-direct {p0, v2, p1}, Lorg/telegram/ui/LoginActivity;->showProxyButton(ZZ)V

    return-void

    .line 9111
    :cond_7
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/messenger/MessagesController;->blockedCountry:Z

    if-eqz p2, :cond_8

    sget-object p2, Lorg/telegram/messenger/SharedConfig;->proxyList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_9

    :cond_8
    if-eqz v0, :cond_a

    .line 9112
    :cond_9
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->proxyDrawable:Lorg/telegram/ui/Components/ProxyDrawable;

    invoke-virtual {p2, v2, v3, p1}, Lorg/telegram/ui/Components/ProxyDrawable;->setConnected(ZZZ)V

    .line 9113
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->showProxyButtonDelayed()V

    return-void

    .line 9115
    :cond_a
    invoke-direct {p0, v1, p1}, Lorg/telegram/ui/LoginActivity;->showProxyButton(ZZ)V

    return-void
.end method


# virtual methods
.method public cancelAccountDeletion(Ljava/lang/String;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;)Lorg/telegram/ui/LoginActivity;
    .locals 0

    .line 474
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->cancelDeletionPhone:Ljava/lang/String;

    .line 475
    iput-object p2, p0, Lorg/telegram/ui/LoginActivity;->cancelDeletionParams:Landroid/os/Bundle;

    .line 476
    iput-object p3, p0, Lorg/telegram/ui/LoginActivity;->cancelDeletionCode:Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;

    const/4 p1, 0x1

    .line 477
    iput p1, p0, Lorg/telegram/ui/LoginActivity;->activityMode:I

    return-object p0
.end method

.method public changeEmail(Ljava/lang/Runnable;)Lorg/telegram/ui/LoginActivity;
    .locals 1

    const/4 v0, 0x3

    .line 457
    iput v0, p0, Lorg/telegram/ui/LoginActivity;->activityMode:I

    const/16 v0, 0xc

    .line 458
    iput v0, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    .line 459
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->emailChangeFinishCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method public changeEmail(Ljava/lang/Runnable;Ljava/lang/Runnable;Z)Lorg/telegram/ui/LoginActivity;
    .locals 1

    const/4 v0, 0x3

    .line 464
    iput v0, p0, Lorg/telegram/ui/LoginActivity;->activityMode:I

    const/16 v0, 0xc

    .line 465
    iput v0, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    .line 466
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->emailChangeFinishCallback:Ljava/lang/Runnable;

    .line 467
    iput-object p2, p0, Lorg/telegram/ui/LoginActivity;->emailChangeSkipCallback:Ljava/lang/Runnable;

    .line 468
    iput-boolean p3, p0, Lorg/telegram/ui/LoginActivity;->emailChangeNonSkippable:Z

    const/4 p1, 0x1

    .line 469
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity;->emailChangeIsSuggestion:Z

    return-object p0
.end method

.method public changePhoneNumber()Lorg/telegram/ui/LoginActivity;
    .locals 1

    const/4 v0, 0x2

    .line 482
    iput v0, p0, Lorg/telegram/ui/LoginActivity;->activityMode:I

    return-object p0
.end method

.method public clearViews()V
    .locals 3

    .line 10079
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 10080
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 10083
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onRemoveFromParent()V

    .line 10084
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10086
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 10089
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity;->pendingSwitchingAccount:Z

    if-eqz v0, :cond_1

    .line 10090
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity;->cachedFragmentView:Landroid/view/View;

    .line 10092
    :cond_1
    iput-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 10094
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_4

    iget-boolean v2, p0, Lorg/telegram/ui/LoginActivity;->pendingSwitchingAccount:Z

    if-nez v2, :cond_4

    .line 10095
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 10098
    :try_start_1
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 10100
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 10103
    :cond_3
    :goto_1
    iput-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 10105
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->clearSheets()V

    .line 10106
    iput-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-void
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 538
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->cachedFragmentView:Landroid/view/View;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 539
    iput-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 540
    iput-object v3, v0, Lorg/telegram/ui/LoginActivity;->cachedFragmentView:Landroid/view/View;

    return-object v2

    .line 544
    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setAddToContainer(Z)V

    .line 545
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v5, Lorg/telegram/ui/LoginActivity$1;

    invoke-direct {v5, v0}, Lorg/telegram/ui/LoginActivity$1;-><init>(Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 558
    iput v4, v0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    .line 559
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->doneButtonVisible:[Z

    const/4 v5, 0x1

    aput-boolean v5, v2, v4

    .line 560
    aput-boolean v4, v2, v5

    .line 562
    new-instance v2, Lorg/telegram/ui/LoginActivity$2;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/LoginActivity$2;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/LoginActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    .line 602
    new-instance v6, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda2;

    invoke-direct {v6, v0}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setDelegate(Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;)V

    .line 611
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iput-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 613
    new-instance v2, Lorg/telegram/ui/LoginActivity$3;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/LoginActivity$3;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V

    .line 622
    invoke-virtual {v2, v5}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 623
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    const/high16 v7, -0x40800000    # -1.0f

    const/4 v8, -0x1

    invoke-static {v8, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 625
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/LoginActivity;->keyboardLinearLayout:Landroid/widget/LinearLayout;

    .line 626
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 627
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity;->keyboardLinearLayout:Landroid/widget/LinearLayout;

    const/4 v7, -0x2

    const/16 v9, 0x33

    invoke-static {v8, v7, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createScroll(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 629
    new-instance v2, Landroid/widget/Space;

    invoke-direct {v2, v1}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    .line 630
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v4

    goto :goto_0

    :cond_1
    sget v6, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_0
    invoke-virtual {v2, v6}, Landroid/view/View;->setMinimumHeight(I)V

    .line 631
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity;->keyboardLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 632
    new-instance v2, Lorg/telegram/ui/LoginActivity$4;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/LoginActivity$4;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/LoginActivity;->slideViewsContainer:Landroid/widget/FrameLayout;

    .line 661
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity;->keyboardLinearLayout:Landroid/widget/LinearLayout;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v8, v4, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v6, v2, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 662
    new-instance v2, Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/CustomPhoneKeyboardView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/LoginActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    .line 663
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity;->slideViewsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/CustomPhoneKeyboardView;->setViewToFindFocus(Landroid/view/View;)V

    .line 664
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->keyboardLinearLayout:Landroid/widget/LinearLayout;

    iget-object v6, v0, Lorg/telegram/ui/LoginActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    const/16 v9, 0xe6

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v2, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 666
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    new-instance v6, Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-direct {v6, v0, v1}, Lorg/telegram/ui/LoginActivity$PhoneView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V

    aput-object v6, v2, v4

    .line 667
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    new-instance v6, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-direct {v6, v0, v1, v5}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;I)V

    aput-object v6, v2, v5

    .line 668
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    new-instance v6, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    const/4 v8, 0x2

    invoke-direct {v6, v0, v1, v8}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;I)V

    aput-object v6, v2, v8

    .line 669
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    new-instance v6, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    const/4 v9, 0x3

    invoke-direct {v6, v0, v1, v9}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;I)V

    aput-object v6, v2, v9

    .line 670
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    new-instance v6, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    const/4 v10, 0x4

    invoke-direct {v6, v0, v1, v10}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;I)V

    aput-object v6, v2, v10

    .line 671
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    new-instance v6, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;

    invoke-direct {v6, v0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V

    const/4 v11, 0x5

    aput-object v6, v2, v11

    .line 672
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    new-instance v6, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;

    invoke-direct {v6, v0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V

    const/4 v12, 0x6

    aput-object v6, v2, v12

    .line 673
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    new-instance v6, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;

    invoke-direct {v6, v0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V

    const/4 v13, 0x7

    aput-object v6, v2, v13

    .line 674
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    new-instance v6, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;

    invoke-direct {v6, v0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V

    const/16 v14, 0x8

    aput-object v6, v2, v14

    .line 675
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    new-instance v6, Lorg/telegram/ui/LoginActivity$LoginActivityNewPasswordView;

    invoke-direct {v6, v0, v1, v4}, Lorg/telegram/ui/LoginActivity$LoginActivityNewPasswordView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;I)V

    const/16 v15, 0x9

    aput-object v6, v2, v15

    .line 676
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    new-instance v6, Lorg/telegram/ui/LoginActivity$LoginActivityNewPasswordView;

    invoke-direct {v6, v0, v1, v5}, Lorg/telegram/ui/LoginActivity$LoginActivityNewPasswordView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;I)V

    const/16 v3, 0xa

    aput-object v6, v2, v3

    .line 677
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    new-instance v6, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    const/16 v14, 0xb

    invoke-direct {v6, v0, v1, v14}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;I)V

    aput-object v6, v2, v14

    .line 678
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    new-instance v6, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;

    invoke-direct {v6, v0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V

    const/16 v14, 0xc

    aput-object v6, v2, v14

    .line 679
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    new-instance v6, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;

    invoke-direct {v6, v0, v1, v5}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;Z)V

    const/16 v16, 0xd

    aput-object v6, v2, v16

    .line 680
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    new-instance v6, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;

    invoke-direct {v6, v0, v1, v4}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;Z)V

    const/16 v16, 0xe

    aput-object v6, v2, v16

    .line 681
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    new-instance v6, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    const/16 v9, 0xf

    invoke-direct {v6, v0, v1, v9}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;I)V

    aput-object v6, v2, v9

    .line 682
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    new-instance v6, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;

    const/16 v9, 0x10

    invoke-direct {v6, v0, v1, v9}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;I)V

    aput-object v6, v2, v9

    .line 683
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    new-instance v6, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;

    const/16 v9, 0x11

    invoke-direct {v6, v0, v1, v9}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;I)V

    aput-object v6, v2, v9

    .line 684
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    new-instance v6, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;

    invoke-direct {v6, v0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V

    const/16 v14, 0x12

    aput-object v6, v2, v14

    move v2, v4

    .line 686
    :goto_1
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    array-length v3, v6

    if-ge v2, v3, :cond_5

    .line 687
    aget-object v3, v6, v2

    if-nez v2, :cond_2

    move v6, v4

    goto :goto_2

    :cond_2
    const/16 v6, 0x8

    :goto_2
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 689
    iget-object v3, v0, Lorg/telegram/ui/LoginActivity;->slideViewsContainer:Landroid/widget/FrameLayout;

    iget-object v6, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v6, v6, v2

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v17

    const/high16 v18, 0x41900000    # 18.0f

    const/high16 v19, 0x41d00000    # 26.0f

    if-eqz v17, :cond_3

    move/from16 v23, v19

    goto :goto_3

    :cond_3
    move/from16 v23, v18

    :goto_3
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v17

    if-eqz v17, :cond_4

    move/from16 v25, v19

    goto :goto_4

    :cond_4
    move/from16 v25, v18

    :goto_4
    const/16 v26, 0x0

    const/16 v20, -0x1

    const/high16 v21, -0x40800000    # -1.0f

    const/16 v22, 0x11

    const/high16 v24, 0x41f00000    # 30.0f

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v3, v6, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0xa

    const/16 v15, 0x9

    goto :goto_1

    .line 692
    :cond_5
    iget v2, v0, Lorg/telegram/ui/LoginActivity;->activityMode:I

    if-nez v2, :cond_6

    iget-boolean v2, v0, Lorg/telegram/ui/LoginActivity;->newAccount:Z

    iget v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2, v3}, Lorg/telegram/ui/LoginActivity;->loadCurrentState(ZI)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_5

    :cond_6
    const/4 v2, 0x0

    :goto_5
    if-eqz v2, :cond_8

    .line 694
    const-string v3, "currentViewNum"

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ltz v3, :cond_7

    .line 695
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    array-length v6, v6

    if-lt v3, v6, :cond_8

    :cond_7
    const/4 v2, 0x0

    :cond_8
    if-eqz v2, :cond_d

    .line 699
    const-string v3, "currentViewNum"

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    .line 700
    const-string v3, "syncContacts"

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_9

    move v3, v5

    goto :goto_6

    :cond_9
    move v3, v4

    :goto_6
    iput-boolean v3, v0, Lorg/telegram/ui/LoginActivity;->syncContacts:Z

    .line 701
    iget v3, v0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    if-lt v3, v5, :cond_a

    if-gt v3, v10, :cond_a

    .line 702
    const-string v3, "open"

    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_d

    .line 703
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const-wide/16 v18, 0x3e8

    div-long v13, v13, v18

    int-to-long v10, v3

    sub-long/2addr v13, v10

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/32 v13, 0x15180

    cmp-long v3, v10, v13

    if-ltz v3, :cond_d

    .line 704
    iput v4, v0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    .line 706
    invoke-direct {v0}, Lorg/telegram/ui/LoginActivity;->clearCurrentState()V

    goto :goto_7

    :cond_a
    if-ne v3, v12, :cond_b

    .line 709
    iget-object v3, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v3, v3, v12

    check-cast v3, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;

    .line 710
    invoke-static {v3}, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->-$$Nest$fgetcurrentPassword(Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;)Lorg/telegram/tgnet/tl/TL_account$Password;

    move-result-object v3

    if-nez v3, :cond_d

    .line 711
    iput v4, v0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    .line 713
    invoke-direct {v0}, Lorg/telegram/ui/LoginActivity;->clearCurrentState()V

    goto :goto_7

    :cond_b
    if-ne v3, v13, :cond_c

    .line 716
    iget-object v3, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v3, v3, v13

    check-cast v3, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;

    .line 717
    invoke-static {v3}, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->-$$Nest$fgetpasswordString(Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_d

    .line 718
    iput v4, v0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    .line 720
    invoke-direct {v0}, Lorg/telegram/ui/LoginActivity;->clearCurrentState()V

    goto :goto_7

    :cond_c
    if-ne v3, v14, :cond_d

    .line 723
    iput v4, v0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    .line 725
    invoke-direct {v0}, Lorg/telegram/ui/LoginActivity;->clearCurrentState()V

    :goto_7
    const/4 v3, 0x0

    goto :goto_8

    :cond_d
    move-object v3, v2

    .line 729
    :goto_8
    new-instance v2, Lorg/telegram/ui/Components/FragmentFloatingButton;

    iget-object v10, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, v1, v10}, Lorg/telegram/ui/Components/FragmentFloatingButton;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, v0, Lorg/telegram/ui/LoginActivity;->floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    .line 730
    iget-object v10, v0, Lorg/telegram/ui/LoginActivity;->doneButtonVisible:[Z

    aget-boolean v10, v10, v4

    invoke-virtual {v2, v10, v4}, Lorg/telegram/ui/Components/FragmentFloatingButton;->setButtonVisible(ZZ)V

    .line 731
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    invoke-static {v2}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->attach(Landroid/view/View;)Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/LoginActivity;->floatingAutoAnimator:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    .line 732
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v10, v0, Lorg/telegram/ui/LoginActivity;->floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    invoke-static {}, Lorg/telegram/ui/Components/FragmentFloatingButton;->createDefaultLayoutParamsBig()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 733
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    new-instance v10, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda3;

    invoke-direct {v10, v0}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v2, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 734
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->floatingAutoAnimator:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    new-instance v10, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda4;

    invoke-direct {v10, v0}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v2, v10}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V

    .line 740
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/LoginActivity;->backButtonView:Landroid/widget/ImageView;

    .line 741
    sget v10, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 742
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->backButtonView:Landroid/widget/ImageView;

    new-instance v10, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda5;

    invoke-direct {v10, v0}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v2, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 747
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->backButtonView:Landroid/widget/ImageView;

    sget v10, Lorg/telegram/messenger/R$string;->Back:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x40800000    # 4.0f

    .line 748
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    .line 749
    iget-object v10, v0, Lorg/telegram/ui/LoginActivity;->backButtonView:Landroid/widget/ImageView;

    invoke-virtual {v10, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 750
    iget-object v10, v0, Lorg/telegram/ui/LoginActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v11, v0, Lorg/telegram/ui/LoginActivity;->backButtonView:Landroid/widget/ImageView;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v18, 0x20

    const/high16 v19, 0x42000000    # 32.0f

    const/16 v20, 0x33

    const/high16 v21, 0x41800000    # 16.0f

    const/high16 v22, 0x41800000    # 16.0f

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v10, v11, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 752
    iget-object v10, v0, Lorg/telegram/ui/LoginActivity;->emailChangeSkipCallback:Ljava/lang/Runnable;

    if-eqz v10, :cond_e

    iget-boolean v10, v0, Lorg/telegram/ui/LoginActivity;->emailChangeNonSkippable:Z

    if-nez v10, :cond_e

    iget-boolean v10, v0, Lorg/telegram/ui/LoginActivity;->emailChangeIsSuggestion:Z

    if-eqz v10, :cond_e

    .line 753
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v10, v0, Lorg/telegram/ui/LoginActivity;->emailChangeSkipButton:Landroid/widget/TextView;

    const/16 v11, 0x13

    .line 754
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 755
    iget-object v10, v0, Lorg/telegram/ui/LoginActivity;->emailChangeSkipButton:Landroid/widget/TextView;

    const/high16 v11, 0x41700000    # 15.0f

    invoke-virtual {v10, v5, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 756
    iget-object v10, v0, Lorg/telegram/ui/LoginActivity;->emailChangeSkipButton:Landroid/widget/TextView;

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v10, v11, v7}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 757
    iget-object v10, v0, Lorg/telegram/ui/LoginActivity;->emailChangeSkipButton:Landroid/widget/TextView;

    const/high16 v11, 0x41800000    # 16.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    const/high16 v13, 0x41800000    # 16.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    invoke-virtual {v10, v11, v4, v13, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 758
    iget-object v10, v0, Lorg/telegram/ui/LoginActivity;->emailChangeSkipButton:Landroid/widget/TextView;

    sget v11, Lorg/telegram/messenger/R$string;->YourEmailSkip:I

    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 759
    iget-object v10, v0, Lorg/telegram/ui/LoginActivity;->emailChangeSkipButton:Landroid/widget/TextView;

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 760
    iget-object v10, v0, Lorg/telegram/ui/LoginActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v11, v0, Lorg/telegram/ui/LoginActivity;->emailChangeSkipButton:Landroid/widget/TextView;

    const/high16 v23, 0x41800000    # 16.0f

    const/16 v24, 0x0

    const/16 v18, -0x2

    const/high16 v19, 0x41f00000    # 30.0f

    const/16 v20, 0x35

    const/16 v21, 0x0

    const/high16 v22, 0x41800000    # 16.0f

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v10, v11, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 761
    iget-object v10, v0, Lorg/telegram/ui/LoginActivity;->emailChangeSkipButton:Landroid/widget/TextView;

    new-instance v11, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda6;

    invoke-direct {v11, v0}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 769
    :cond_e
    new-instance v10, Landroid/widget/ImageView;

    invoke-direct {v10, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v10, v0, Lorg/telegram/ui/LoginActivity;->proxyButtonView:Landroid/widget/ImageView;

    .line 770
    sget v11, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 771
    iget-object v10, v0, Lorg/telegram/ui/LoginActivity;->proxyButtonView:Landroid/widget/ImageView;

    new-instance v11, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda7;

    invoke-direct {v11, v0}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 772
    iget-object v10, v0, Lorg/telegram/ui/LoginActivity;->proxyButtonView:Landroid/widget/ImageView;

    sget v11, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 773
    iget-object v10, v0, Lorg/telegram/ui/LoginActivity;->proxyButtonView:Landroid/widget/ImageView;

    invoke-virtual {v10, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 774
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->proxyButtonView:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/view/View;->setAlpha(F)V

    .line 775
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->proxyButtonView:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 776
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v10, v0, Lorg/telegram/ui/LoginActivity;->proxyButtonView:Landroid/widget/ImageView;

    const/high16 v23, 0x41800000    # 16.0f

    const/high16 v24, 0x41800000    # 16.0f

    const/16 v18, 0x20

    const/high16 v19, 0x42000000    # 32.0f

    const/16 v20, 0x35

    const/high16 v21, 0x41800000    # 16.0f

    const/high16 v22, 0x41800000    # 16.0f

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 778
    new-instance v2, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/high16 v10, 0x41a00000    # 20.0f

    .line 779
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-virtual {v2, v10}, Lorg/telegram/ui/Components/RadialProgressView;->setSize(I)V

    .line 780
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    .line 781
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const v10, 0x3dcccccd    # 0.1f

    invoke-virtual {v2, v10}, Landroid/view/View;->setScaleX(F)V

    .line 782
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v2, v10}, Landroid/view/View;->setScaleY(F)V

    .line 783
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v10, v0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v24, 0x0

    const/16 v21, 0x0

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 785
    new-instance v2, Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/TransformableLoginButtonView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    .line 786
    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/TransformableLoginButtonView;->setTransformType(I)V

    .line 787
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/TransformableLoginButtonView;->setProgress(F)V

    .line 788
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/TransformableLoginButtonView;->setDrawBackground(Z)V

    .line 789
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity;->floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    sget v2, Lorg/telegram/messenger/R$string;->Done:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 790
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity;->floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    const/16 v7, 0x38

    const/16 v10, 0x38

    invoke-static {v7, v10, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 791
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity;->floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/FragmentFloatingButton;->addAdditionalView(Landroid/view/View;)V

    if-eqz v3, :cond_f

    .line 794
    iput-boolean v5, v0, Lorg/telegram/ui/LoginActivity;->restoringState:Z

    :cond_f
    move v1, v4

    .line 796
    :goto_9
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    array-length v7, v2

    if-ge v1, v7, :cond_1e

    .line 797
    aget-object v2, v2, v1

    if-eqz v3, :cond_11

    if-lt v1, v5, :cond_10

    const/4 v6, 0x4

    if-gt v1, v6, :cond_10

    .line 800
    iget v7, v0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    if-ne v1, v7, :cond_11

    .line 801
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/SlideView;->restoreStateParams(Landroid/os/Bundle;)V

    goto :goto_a

    .line 804
    :cond_10
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/SlideView;->restoreStateParams(Landroid/os/Bundle;)V

    .line 807
    :cond_11
    :goto_a
    iget v7, v0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    if-ne v7, v1, :cond_1c

    .line 808
    iget-object v7, v0, Lorg/telegram/ui/LoginActivity;->backButtonView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SlideView;->needBackButton()Z

    move-result v9

    if-nez v9, :cond_13

    iget-boolean v9, v0, Lorg/telegram/ui/LoginActivity;->newAccount:Z

    if-nez v9, :cond_13

    iget v9, v0, Lorg/telegram/ui/LoginActivity;->activityMode:I

    if-ne v9, v8, :cond_12

    goto :goto_b

    :cond_12
    const/16 v9, 0x8

    goto :goto_c

    :cond_13
    :goto_b
    move v9, v4

    :goto_c
    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 809
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 810
    invoke-virtual {v2}, Lorg/telegram/ui/Components/SlideView;->onShow()V

    .line 812
    invoke-virtual {v2}, Lorg/telegram/ui/Components/SlideView;->hasCustomKeyboard()Z

    move-result v2

    invoke-direct {v0, v2, v4}, Lorg/telegram/ui/LoginActivity;->setCustomKeyboardVisible(ZZ)V

    .line 814
    iput v4, v0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    if-eqz v1, :cond_17

    const/4 v15, 0x5

    if-eq v1, v15, :cond_16

    if-eq v1, v12, :cond_16

    const/16 v7, 0x9

    const/16 v9, 0xa

    if-eq v1, v7, :cond_15

    const/16 v10, 0xc

    if-eq v1, v9, :cond_18

    if-ne v1, v10, :cond_14

    goto :goto_e

    :cond_14
    move v2, v4

    goto :goto_f

    :cond_15
    :goto_d
    const/16 v10, 0xc

    goto :goto_e

    :cond_16
    const/16 v7, 0x9

    const/16 v9, 0xa

    goto :goto_d

    :cond_17
    const/16 v7, 0x9

    const/16 v9, 0xa

    const/16 v10, 0xc

    const/4 v15, 0x5

    :cond_18
    :goto_e
    move v2, v5

    .line 818
    :goto_f
    invoke-direct {v0, v2, v4}, Lorg/telegram/ui/LoginActivity;->showDoneButton(ZZ)V

    if-eq v1, v5, :cond_19

    if-eq v1, v8, :cond_19

    const/4 v11, 0x3

    const/4 v6, 0x4

    if-eq v1, v11, :cond_1a

    if-ne v1, v6, :cond_1b

    goto :goto_10

    :cond_19
    const/4 v6, 0x4

    const/4 v11, 0x3

    .line 820
    :cond_1a
    :goto_10
    iput v5, v0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    :cond_1b
    const/16 v14, 0x8

    goto :goto_11

    :cond_1c
    const/4 v6, 0x4

    const/16 v7, 0x9

    const/16 v9, 0xa

    const/16 v10, 0xc

    const/4 v11, 0x3

    const/4 v15, 0x5

    .line 823
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-eq v13, v14, :cond_1d

    .line 824
    invoke-virtual {v2, v14}, Landroid/view/View;->setVisibility(I)V

    .line 825
    invoke-virtual {v2}, Lorg/telegram/ui/Components/SlideView;->onHide()V

    :cond_1d
    :goto_11
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_9

    .line 829
    :cond_1e
    iput-boolean v4, v0, Lorg/telegram/ui/LoginActivity;->restoringState:Z

    .line 831
    invoke-direct {v0}, Lorg/telegram/ui/LoginActivity;->updateColors()V

    .line 833
    invoke-direct {v0}, Lorg/telegram/ui/LoginActivity;->isInCancelAccountDeletionMode()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 834
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity;->cancelDeletionParams:Landroid/os/Bundle;

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->cancelDeletionCode:Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;

    invoke-direct {v0, v1, v2, v4}, Lorg/telegram/ui/LoginActivity;->fillNextCodeParams(Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;Z)V

    .line 837
    :cond_1f
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 1

    .line 9160
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didUpdateConnectionState:I

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    .line 9161
    invoke-direct {p0, v0, p3}, Lorg/telegram/ui/LoginActivity;->updateProxyButton(ZZ)V

    .line 9162
    invoke-direct {p0, v0}, Lorg/telegram/ui/LoginActivity;->updateLoginOptionsProxyItem(Z)V

    return-void

    .line 9163
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->proxySettingsChanged:I

    if-ne p1, p2, :cond_1

    .line 9164
    invoke-direct {p0, p3, v0}, Lorg/telegram/ui/LoginActivity;->updateProxyButton(ZZ)V

    .line 9165
    invoke-direct {p0, p3}, Lorg/telegram/ui/LoginActivity;->updateLoginOptionsProxyItem(Z)V

    return-void

    .line 9166
    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->newSuggestionsAvailable:I

    if-ne p1, p2, :cond_2

    .line 9167
    iget-boolean p1, p0, Lorg/telegram/ui/LoginActivity;->emailChangeIsSuggestion:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->hasSetupEmailSuggestion()Z

    move-result p1

    if-nez p1, :cond_2

    .line 9168
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :cond_2
    return-void
.end method

.method public getNavigationBarColor()I
    .locals 1

    .line 492
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    return v0
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 28

    .line 8489
    new-instance v0, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda1;

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/LoginActivity;)V

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText6:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionIcon:I

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputField:I

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputFieldActivated:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteValueText:I

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_checkbox:I

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_changephoneinfo_image2:I

    sget v16, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionPressedBackground:I

    sget v17, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteLinkText:I

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxSquareUnchecked:I

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxSquareBackground:I

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxSquareCheck:I

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray2:I

    sget v24, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    sget v25, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    sget v26, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    sget v27, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButtonPressed:I

    filled-new-array/range {v2 .. v27}, [I

    move-result-object v2

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/SimpleThemeDescription;->createThemeDescriptions(Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;[I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public isLightStatusBar()Z
    .locals 5

    .line 8759
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I[ZZ)I

    move-result v0

    .line 8760
    invoke-static {v0}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v0

    const-wide v3, 0x3fe6666660000000L    # 0.699999988079071

    cmpl-double v0, v0, v3

    if-lez v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSwipeBackEnabled(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1091
    iget-boolean p1, p0, Lorg/telegram/ui/LoginActivity;->emailChangeIsSuggestion:Z

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public onActivityResultFragment(IILandroid/content/Intent;)V
    .locals 2

    .line 1153
    invoke-super {p0, p1, p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onActivityResultFragment(IILandroid/content/Intent;)V

    .line 1154
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    check-cast v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;

    if-eqz v0, :cond_0

    .line 1156
    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->-$$Nest$fgetimageUpdater(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)Lorg/telegram/ui/Components/ImageUpdater;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/ImageUpdater;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onBackPressed(Z)Z
    .locals 8

    .line 1096
    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity;->emailChangeIsSuggestion:Z

    const/16 v1, 0xc

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    if-ne v0, v1, :cond_0

    return v2

    .line 1100
    :cond_0
    iget v0, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    const/4 v3, 0x1

    if-eqz v0, :cond_d

    iget v4, p0, Lorg/telegram/ui/LoginActivity;->activityMode:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    if-ne v0, v1, :cond_1

    goto/16 :goto_3

    :cond_1
    const/4 v4, 0x6

    const/4 v5, 0x0

    if-ne v0, v4, :cond_2

    if-eqz p1, :cond_c

    .line 1112
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object p1, p1, v0

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/SlideView;->onBackPressed(Z)Z

    .line 1113
    invoke-virtual {p0, v2, v3, v5, v3}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    goto/16 :goto_2

    :cond_2
    const/4 v6, 0x7

    if-eq v0, v6, :cond_b

    const/16 v7, 0x8

    if-ne v0, v7, :cond_3

    goto/16 :goto_1

    :cond_3
    if-lt v0, v3, :cond_4

    const/4 v4, 0x4

    if-le v0, v4, :cond_a

    :cond_4
    const/16 v4, 0xb

    if-eq v0, v4, :cond_a

    const/16 v4, 0xf

    if-ne v0, v4, :cond_5

    goto :goto_0

    :cond_5
    const/4 v4, 0x5

    if-ne v0, v4, :cond_6

    if-eqz p1, :cond_c

    .line 1126
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object p1, p1, v0

    check-cast p1, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->-$$Nest$fgetwrongNumber(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    goto :goto_2

    :cond_6
    const/16 v4, 0x9

    if-ne v0, v4, :cond_7

    if-eqz p1, :cond_c

    .line 1130
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object p1, p1, v0

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/SlideView;->onBackPressed(Z)Z

    .line 1131
    invoke-virtual {p0, v6, v3, v5, v3}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    goto :goto_2

    :cond_7
    const/16 v6, 0xa

    if-ne v0, v6, :cond_8

    if-eqz p1, :cond_c

    .line 1135
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object p1, p1, v0

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/SlideView;->onBackPressed(Z)Z

    .line 1136
    invoke-virtual {p0, v4, v3, v5, v3}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    goto :goto_2

    :cond_8
    const/16 v4, 0xd

    if-ne v0, v4, :cond_9

    if-eqz p1, :cond_c

    .line 1140
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object p1, p1, v0

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/SlideView;->onBackPressed(Z)Z

    .line 1141
    invoke-virtual {p0, v1, v3, v5, v3}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    goto :goto_2

    :cond_9
    if-eqz p1, :cond_c

    .line 1144
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object p1, p1, v0

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/SlideView;->onBackPressed(Z)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 1145
    invoke-virtual {p0, v2, v3, v5, v3}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    goto :goto_2

    :cond_a
    :goto_0
    if-eqz p1, :cond_c

    .line 1121
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object p1, p1, v0

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/SlideView;->onBackPressed(Z)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 1122
    invoke-virtual {p0, v2, v3, v5, v3}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    goto :goto_2

    :cond_b
    :goto_1
    if-eqz p1, :cond_c

    .line 1117
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object p1, p1, v0

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/SlideView;->onBackPressed(Z)Z

    .line 1118
    invoke-virtual {p0, v4, v3, v5, v3}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    :cond_c
    :goto_2
    return v2

    :cond_d
    :goto_3
    if-eqz p1, :cond_10

    .line 1102
    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    array-length v0, p1

    if-ge v2, v0, :cond_f

    .line 1103
    aget-object p1, p1, v2

    if-eqz p1, :cond_e

    .line 1104
    invoke-virtual {p1}, Lorg/telegram/ui/Components/SlideView;->onDestroyActivity()V

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1107
    :cond_f
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->clearCurrentState()V

    :cond_10
    return v3
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 960
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    iget v0, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SlideView;->hasCustomKeyboard()Z

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/LoginActivity;->setCustomKeyboardVisible(ZZ)V

    .line 961
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->phoneNumberConfirmView:Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;

    if-eqz p1, :cond_0

    .line 962
    invoke-static {p1}, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->-$$Nest$mdismiss(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)V

    :cond_0
    return-void
.end method

.method public onCustomTransitionAnimation(ZLjava/lang/Runnable;)Landroid/animation/AnimatorSet;
    .locals 16

    move-object/from16 v1, p0

    if-eqz p1, :cond_2

    .line 8360
    iget-object v0, v1, Lorg/telegram/ui/LoginActivity;->introView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 8361
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 8362
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 8365
    :cond_0
    new-instance v8, Lorg/telegram/ui/Components/TransformableLoginButtonView;

    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v8, v0}, Lorg/telegram/ui/Components/TransformableLoginButtonView;-><init>(Landroid/content/Context;)V

    .line 8366
    iget-object v0, v1, Lorg/telegram/ui/LoginActivity;->startMessagingButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/LoginActivity;->startMessagingButton:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Lorg/telegram/ui/Components/TransformableLoginButtonView;->setButtonText(Landroid/text/TextPaint;Ljava/lang/String;)V

    .line 8368
    iget-object v0, v1, Lorg/telegram/ui/LoginActivity;->startMessagingButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    iget-object v0, v1, Lorg/telegram/ui/LoginActivity;->startMessagingButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 8369
    iget-object v0, v1, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 8370
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v5, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 8371
    invoke-virtual {v8, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x2

    .line 8373
    new-array v2, v0, [I

    .line 8374
    iget-object v3, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v13, 0x0

    .line 8375
    aget v3, v2, v13

    const/4 v14, 0x1

    aget v9, v2, v14

    .line 8377
    iget-object v10, v1, Lorg/telegram/ui/LoginActivity;->startMessagingButton:Landroid/widget/TextView;

    invoke-virtual {v10, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 8378
    aget v10, v2, v13

    sub-int/2addr v10, v3

    int-to-float v3, v10

    aget v2, v2, v14

    sub-int/2addr v2, v9

    int-to-float v11, v2

    .line 8379
    invoke-virtual {v8, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 8380
    invoke-virtual {v8, v11}, Landroid/view/View;->setTranslationY(F)V

    .line 8382
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v2

    invoke-interface {v2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v9, v1, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v2, v9

    const/high16 v9, 0x41a00000    # 20.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int/2addr v2, v9

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v9

    invoke-interface {v9}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getPaddingLeft()I

    move-result v9

    sub-int/2addr v2, v9

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v9

    invoke-interface {v9}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    sub-int v10, v2, v9

    .line 8383
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v2

    invoke-interface {v2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v9, v1, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v2, v9

    const/high16 v9, 0x41600000    # 14.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int/2addr v2, v9

    .line 8384
    invoke-direct {v1}, Lorg/telegram/ui/LoginActivity;->isCustomKeyboardVisible()Z

    move-result v9

    if-eqz v9, :cond_1

    const/high16 v9, 0x43660000    # 230.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    goto :goto_0

    :cond_1
    move v9, v13

    :goto_0
    sub-int/2addr v2, v9

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v9

    invoke-interface {v9}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    sub-int/2addr v2, v9

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v9

    invoke-interface {v9}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    sub-int v12, v2, v9

    .line 8386
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v15

    .line 8387
    new-instance v0, Lorg/telegram/ui/LoginActivity$11;

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v8, v2}, Lorg/telegram/ui/LoginActivity$11;-><init>(Lorg/telegram/ui/LoginActivity;Lorg/telegram/ui/Components/TransformableLoginButtonView;Ljava/lang/Runnable;)V

    invoke-virtual {v15, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 8418
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    move v9, v3

    .line 8419
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    .line 8420
    new-instance v0, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda12;

    invoke-direct/range {v0 .. v12}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/LoginActivity;IILandroid/view/ViewGroup$MarginLayoutParams;IIILorg/telegram/ui/Components/TransformableLoginButtonView;FIFI)V

    invoke-virtual {v15, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 8445
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v15, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 8447
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v1, 0x12c

    .line 8448
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 8449
    new-array v1, v14, [Landroid/animation/Animator;

    aput-object v15, v1, v13

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 8450
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected onDialogDismiss(Landroid/app/Dialog;)V
    .locals 4

    .line 1072
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->permissionsDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->permissionsItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1074
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->permissionsItems:Ljava/util/ArrayList;

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1078
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->permissionsShowDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->permissionsShowItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1079
    new-instance p1, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/LoginActivity;)V

    const-wide/16 v2, 0xc8

    invoke-static {p1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1081
    :try_start_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->permissionsShowItems:Ljava/util/ArrayList;

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 2

    .line 529
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didUpdateConnectionState:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 530
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->newSuggestionsAvailable:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 531
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->proxySettingsChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 532
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 4

    .line 503
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    const/4 v0, 0x0

    move v1, v0

    .line 504
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 505
    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 506
    invoke-virtual {v2}, Lorg/telegram/ui/Components/SlideView;->onDestroyActivity()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 509
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity;->cancelDeleteProgressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v1, :cond_2

    .line 510
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    const/4 v1, 0x0

    .line 511
    iput-object v1, p0, Lorg/telegram/ui/LoginActivity;->cancelDeleteProgressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 513
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity;->editDoneCallback:[Ljava/lang/Runnable;

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_4

    aget-object v3, v1, v0

    if-eqz v3, :cond_3

    .line 515
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 518
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->loginOptionsMenu:Lorg/telegram/ui/Components/ItemOptions;

    if-eqz v0, :cond_5

    .line 519
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    .line 521
    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->clearLoginOptionsMenuReferences()V

    .line 522
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didUpdateConnectionState:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 523
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->newSuggestionsAvailable:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 524
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->proxySettingsChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 913
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 914
    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity;->newAccount:Z

    if-eqz v0, :cond_0

    .line 915
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->setAppPaused(ZZ)V

    .line 917
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->removeAltFocusable(Landroid/app/Activity;I)V

    return-void
.end method

.method public onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V
    .locals 2

    .line 968
    array-length p2, p2

    if-eqz p2, :cond_5

    array-length p2, p3

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    .line 970
    aget p3, p3, p2

    const/4 v0, 0x1

    if-nez p3, :cond_1

    move p3, v0

    goto :goto_0

    :cond_1
    move p3, p2

    :goto_0
    const/4 v1, 0x6

    if-ne p1, v1, :cond_2

    .line 972
    iput-boolean p2, p0, Lorg/telegram/ui/LoginActivity;->checkPermissions:Z

    .line 973
    iget p1, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    if-nez p1, :cond_5

    .line 974
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object p1, p2, p1

    check-cast p1, Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {p1, v0}, Lorg/telegram/ui/LoginActivity$PhoneView;->-$$Nest$fputconfirmedNumber(Lorg/telegram/ui/LoginActivity$PhoneView;Z)V

    .line 975
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    iget p2, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    aget-object p1, p1, p2

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/SlideView;->onNextPressed(Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v0, 0x7

    if-ne p1, v0, :cond_3

    .line 978
    iput-boolean p2, p0, Lorg/telegram/ui/LoginActivity;->checkShowPermissions:Z

    .line 979
    iget p1, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    if-nez p1, :cond_5

    .line 980
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object p1, p2, p1

    check-cast p1, Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-virtual {p1}, Lorg/telegram/ui/LoginActivity$PhoneView;->fillNumber()V

    return-void

    :cond_3
    const/16 p2, 0x14

    const/4 v0, 0x5

    if-ne p1, p2, :cond_4

    if-eqz p3, :cond_5

    .line 984
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object p1, p1, v0

    check-cast p1, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;

    .line 985
    invoke-static {p1}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->-$$Nest$fgetimageUpdater(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)Lorg/telegram/ui/Components/ImageUpdater;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ImageUpdater;->openCamera()V

    return-void

    :cond_4
    const/16 p2, 0x97

    if-ne p1, p2, :cond_5

    if-eqz p3, :cond_5

    .line 989
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object p1, p1, v0

    check-cast p1, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;

    .line 990
    new-instance p2, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda8;

    invoke-direct {p2, p1}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_5
    :goto_1
    return-void
.end method

.method public onResume()V
    .locals 7

    .line 922
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 923
    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity;->newAccount:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 924
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lorg/telegram/tgnet/ConnectionsManager;->setAppPaused(ZZ)V

    .line 926
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v2}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    .line 927
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 928
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 931
    :cond_1
    :try_start_0
    iget v0, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    const/4 v2, 0x1

    if-lt v0, v2, :cond_2

    const/4 v3, 0x4

    if-gt v0, v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v0, v3, v0

    instance-of v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    if-eqz v3, :cond_2

    .line 932
    check-cast v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->-$$Nest$fgetopenTime(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 933
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    int-to-long v5, v0

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/32 v5, 0x15180

    cmp-long v0, v3, v5

    if-ltz v0, :cond_2

    .line 934
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    iget v3, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/SlideView;->onBackPressed(Z)Z

    const/4 v0, 0x0

    .line 935
    invoke-virtual {p0, v1, v1, v0, v2}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 939
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 941
    :cond_2
    :goto_0
    iget v0, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    if-nez v0, :cond_3

    iget-boolean v1, p0, Lorg/telegram/ui/LoginActivity;->needRequestPermissions:Z

    if-nez v1, :cond_3

    .line 942
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v0, v1, v0

    if-eqz v0, :cond_3

    .line 944
    invoke-virtual {v0}, Lorg/telegram/ui/Components/SlideView;->onShow()V

    .line 948
    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->isCustomKeyboardVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 949
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 950
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->requestAltFocusable(Landroid/app/Activity;I)V

    .line 953
    :cond_4
    iget v0, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    if-ltz v0, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    array-length v2, v1

    if-ge v0, v2, :cond_5

    .line 954
    aget-object v0, v1, v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SlideView;->onResume()V

    :cond_5
    return-void
.end method

.method public open(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$auth_SentCode;)V
    .locals 5

    const/4 v0, 0x1

    .line 1750
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity;->paid:Z

    .line 1751
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1752
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "phone"

    invoke-virtual {v1, v4, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1753
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ephone"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1754
    const-string v2, "phoneFormated"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1755
    invoke-direct {p0, v1, p2, v0}, Lorg/telegram/ui/LoginActivity;->fillNextCodeParams(Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;Z)V

    return-void
.end method

.method public saveSelfArgs(Landroid/os/Bundle;)V
    .locals 5

    .line 1620
    :try_start_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1621
    const-string v0, "currentViewNum"

    iget v1, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1622
    const-string v0, "syncContacts"

    iget-boolean v1, p0, Lorg/telegram/ui/LoginActivity;->syncContacts:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/4 v0, 0x0

    move v1, v0

    .line 1623
    :goto_0
    iget v2, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    if-gt v1, v2, :cond_1

    .line 1624
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 1626
    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/SlideView;->saveStateParams(Landroid/os/Bundle;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1629
    :cond_1
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "logininfo2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lorg/telegram/ui/LoginActivity;->newAccount:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    const-string v3, ""

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1630
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1631
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    .line 1632
    invoke-direct {p0, p1, v0, v1}, Lorg/telegram/ui/LoginActivity;->putBundleToEditor(Landroid/os/Bundle;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    .line 1633
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1635
    :goto_3
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public setIntroView(Landroid/view/View;Landroid/widget/TextView;)Lorg/telegram/ui/LoginActivity;
    .locals 0

    return-object p0
.end method

.method public setNavigationBarColor(I)V
    .locals 0

    .line 497
    invoke-virtual {p0}, Lorg/telegram/ui/LoginActivity;->getNavigationBarColor()I

    move-result p1

    .line 498
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->setNavigationBarColor(I)V

    return-void
.end method

.method public setPage(IZLandroid/os/Bundle;Z)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    const/4 v2, 0x6

    if-eq p1, v2, :cond_1

    const/16 v2, 0x9

    if-eq p1, v2, :cond_1

    const/16 v2, 0xa

    if-eq p1, v2, :cond_1

    const/16 v2, 0xc

    if-eq p1, v2, :cond_1

    const/16 v2, 0x11

    if-eq p1, v2, :cond_1

    const/16 v2, 0x10

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v0

    .line 1539
    :goto_1
    iget v3, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    if-ne p1, v3, :cond_2

    move p2, v1

    :cond_2
    const/16 v3, 0x8

    if-eqz v2, :cond_4

    if-nez p1, :cond_3

    .line 1545
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity;->checkPermissions:Z

    .line 1546
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity;->checkShowPermissions:Z

    .line 1548
    :cond_3
    iput v0, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    .line 1549
    invoke-direct {p0, v1, p2}, Lorg/telegram/ui/LoginActivity;->showDoneButton(ZZ)V

    .line 1551
    invoke-direct {p0, v1, p2}, Lorg/telegram/ui/LoginActivity;->showEditDoneProgress(ZZ)V

    .line 1552
    iput v1, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    .line 1553
    invoke-direct {p0, v1, p2}, Lorg/telegram/ui/LoginActivity;->showEditDoneProgress(ZZ)V

    if-nez p2, :cond_5

    .line 1555
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/LoginActivity;->showDoneButton(ZZ)V

    goto :goto_2

    .line 1558
    :cond_4
    iput v1, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    .line 1559
    invoke-direct {p0, v1, p2}, Lorg/telegram/ui/LoginActivity;->showDoneButton(ZZ)V

    .line 1560
    invoke-direct {p0, v1, p2}, Lorg/telegram/ui/LoginActivity;->showEditDoneProgress(ZZ)V

    if-eq p1, v3, :cond_5

    .line 1562
    iput v0, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    :cond_5
    :goto_2
    if-eqz p2, :cond_c

    .line 1566
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    iget v4, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    aget-object v4, p2, v4

    .line 1567
    aget-object p2, p2, p1

    .line 1568
    iput p1, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    .line 1569
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->backButtonView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/SlideView;->needBackButton()Z

    move-result v5

    if-nez v5, :cond_7

    iget-boolean v5, p0, Lorg/telegram/ui/LoginActivity;->newAccount:Z

    if-eqz v5, :cond_6

    goto :goto_3

    :cond_6
    move v5, v3

    goto :goto_4

    :cond_7
    :goto_3
    move v5, v1

    :goto_4
    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1570
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->proxyButtonView:Landroid/widget/ImageView;

    iget v5, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    if-nez v5, :cond_8

    move v3, v1

    :cond_8
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1572
    invoke-virtual {p2, p3, v1}, Lorg/telegram/ui/Components/SlideView;->setParams(Landroid/os/Bundle;Z)V

    .line 1573
    invoke-virtual {p2}, Lorg/telegram/ui/Components/SlideView;->getHeaderName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->setParentActivityTitle(Ljava/lang/CharSequence;)V

    .line 1574
    invoke-virtual {p2}, Lorg/telegram/ui/Components/SlideView;->onShow()V

    .line 1575
    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    if-eqz p4, :cond_9

    neg-int p1, p1

    :cond_9
    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setX(F)V

    .line 1576
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1578
    iget p1, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    if-nez p1, :cond_a

    if-eqz v2, :cond_a

    .line 1579
    invoke-direct {p0, v0, v0}, Lorg/telegram/ui/LoginActivity;->showDoneButton(ZZ)V

    .line 1582
    :cond_a
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1583
    new-instance p3, Lorg/telegram/ui/LoginActivity$10;

    invoke-direct {p3, p0, v2, v4}, Lorg/telegram/ui/LoginActivity$10;-><init>(Lorg/telegram/ui/LoginActivity;ZLorg/telegram/ui/Components/SlideView;)V

    invoke-virtual {p1, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1594
    sget-object p3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    if-eqz p4, :cond_b

    .line 1595
    sget-object p4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p4, p4, Landroid/graphics/Point;->x:I

    :goto_5
    int-to-float p4, p4

    goto :goto_6

    :cond_b
    sget-object p4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p4, p4, Landroid/graphics/Point;->x:I

    neg-int p4, p4

    goto :goto_5

    :goto_6
    new-array v2, v0, [F

    aput p4, v2, v1

    invoke-static {v4, p3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    new-array v2, v0, [F

    const/4 v3, 0x0

    aput v3, v2, v1

    .line 1596
    invoke-static {p2, p3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object p4, v2, v1

    aput-object p3, v2, v0

    .line 1594
    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 p3, 0x12c

    .line 1597
    invoke-virtual {p1, p3, p4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1598
    new-instance p3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1599
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 1601
    invoke-virtual {p2}, Lorg/telegram/ui/Components/SlideView;->hasCustomKeyboard()Z

    move-result p1

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/LoginActivity;->setCustomKeyboardVisible(ZZ)V

    return-void

    .line 1603
    :cond_c
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->backButtonView:Landroid/widget/ImageView;

    iget-object p4, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object p4, p4, p1

    invoke-virtual {p4}, Lorg/telegram/ui/Components/SlideView;->needBackButton()Z

    move-result p4

    if-nez p4, :cond_e

    iget-boolean p4, p0, Lorg/telegram/ui/LoginActivity;->newAccount:Z

    if-eqz p4, :cond_d

    goto :goto_7

    :cond_d
    move p4, v3

    goto :goto_8

    :cond_e
    :goto_7
    move p4, v1

    :goto_8
    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1604
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->proxyButtonView:Landroid/widget/ImageView;

    if-nez p1, :cond_f

    move p4, v1

    goto :goto_9

    :cond_f
    move p4, v3

    :goto_9
    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1605
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    iget p4, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    aget-object p2, p2, p4

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1606
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    iget p4, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    aget-object p2, p2, p4

    invoke-virtual {p2}, Lorg/telegram/ui/Components/SlideView;->onHide()V

    .line 1607
    iput p1, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    .line 1608
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object p2, p2, p1

    invoke-virtual {p2, p3, v1}, Lorg/telegram/ui/Components/SlideView;->setParams(Landroid/os/Bundle;Z)V

    .line 1609
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object p2, p2, p1

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1610
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object p2, p2, p1

    invoke-virtual {p2}, Lorg/telegram/ui/Components/SlideView;->getHeaderName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->setParentActivityTitle(Ljava/lang/CharSequence;)V

    .line 1611
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object p2, p2, p1

    invoke-virtual {p2}, Lorg/telegram/ui/Components/SlideView;->onShow()V

    .line 1613
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object p1, p2, p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SlideView;->hasCustomKeyboard()Z

    move-result p1

    invoke-direct {p0, p1, v1}, Lorg/telegram/ui/LoginActivity;->setCustomKeyboardVisible(ZZ)V

    return-void
.end method
