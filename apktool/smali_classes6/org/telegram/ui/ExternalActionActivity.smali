.class public Lorg/telegram/ui/ExternalActionActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;


# static fields
.field private static final layerFragmentsStack:Ljava/util/ArrayList;

.field private static final mainFragmentsStack:Ljava/util/ArrayList;


# instance fields
.field protected actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

.field protected backgroundTablet:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

.field protected drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

.field private finished:Z

.field protected layersActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

.field private lockRunnable:Ljava/lang/Runnable;

.field private passcodeSaveIntent:Landroid/content/Intent;

.field private passcodeSaveIntentAccount:I

.field private passcodeSaveIntentIsNew:Z

.field private passcodeSaveIntentIsRestore:Z

.field private passcodeSaveIntentState:I

.field private passcodeView:Lorg/telegram/ui/Components/PasscodeView;


# direct methods
.method public static synthetic $r8$lambda$-vEiGJdehqhNiEbmsZQFdSM9D8A(Lorg/telegram/ui/ExternalActionActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ExternalActionActivity;->lambda$handleIntent$9(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3CtMwE-uSz4c9KzCuH8jYOeZgRE(Lorg/telegram/ui/ExternalActionActivity;[IILorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/tl/TL_account$getAuthorizationForm;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Lorg/telegram/ui/ExternalActionActivity;->lambda$handleIntent$10([IILorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/tl/TL_account$getAuthorizationForm;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LDj9HEe3j4dqi3zd6W-7RCPN7a4(I[ILandroid/content/DialogInterface;)V
    .locals 0

    .line 330
    invoke-static {p0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p0

    const/4 p2, 0x0

    aget p1, p1, p2

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$Otucmk6IWQ8o503mS__gLl1wHgc(Lorg/telegram/ui/ExternalActionActivity;Lorg/telegram/ui/ActionBar/AlertDialog;ILorg/telegram/tgnet/tl/TL_account$authorizationForm;Lorg/telegram/tgnet/tl/TL_account$getAuthorizationForm;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Lorg/telegram/ui/ExternalActionActivity;->lambda$handleIntent$7(Lorg/telegram/ui/ActionBar/AlertDialog;ILorg/telegram/tgnet/tl/TL_account$authorizationForm;Lorg/telegram/tgnet/tl/TL_account$getAuthorizationForm;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PmdW3HQSTw_MOFZ8vQScoHSmQQ0(Lorg/telegram/ui/ExternalActionActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ExternalActionActivity;->lambda$onCreate$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$VG4kU19YlTW2WiomVuwzo0XsGXM(Lorg/telegram/ui/ExternalActionActivity;Lorg/telegram/ui/Components/PasscodeView;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ExternalActionActivity;->lambda$showPasscodeActivity$2(Lorg/telegram/ui/Components/PasscodeView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WvNkhdkbd45JtgQFy3lhB2jcDiY(Lorg/telegram/ui/ExternalActionActivity;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ExternalActionActivity;->lambda$handleIntent$4(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ztv40Vl1oPLFTV2TDZbNcJA7kQY(Landroid/view/View;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$hfUCy1DSFusA_MCYjDmMSMq8B_g(Lorg/telegram/ui/ExternalActionActivity;ILandroid/content/Intent;ZZZI)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/ExternalActionActivity;->lambda$handleIntent$3(ILandroid/content/Intent;ZZZI)V

    return-void
.end method

.method public static synthetic $r8$lambda$iwzjgAaZfDVMOo8i9695m4pX3v4(Lorg/telegram/ui/ExternalActionActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;ILorg/telegram/tgnet/tl/TL_account$authorizationForm;Lorg/telegram/tgnet/tl/TL_account$getAuthorizationForm;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/ExternalActionActivity;->lambda$handleIntent$6(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;ILorg/telegram/tgnet/tl/TL_account$authorizationForm;Lorg/telegram/tgnet/tl/TL_account$getAuthorizationForm;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yPHF6DaYfMtRV_2Sdlpg6i0SSOA(Lorg/telegram/ui/ExternalActionActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ExternalActionActivity;->lambda$handleIntent$8(Lorg/telegram/tgnet/TLRPC$TL_error;Landroid/content/DialogInterface;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetlockRunnable(Lorg/telegram/ui/ExternalActionActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ExternalActionActivity;->lockRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputlockRunnable(Lorg/telegram/ui/ExternalActionActivity;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ExternalActionActivity;->lockRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowPasscodeActivity(Lorg/telegram/ui/ExternalActionActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ExternalActionActivity;->showPasscodeActivity()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/ui/ExternalActionActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/ui/ExternalActionActivity;->layerFragmentsStack:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private synthetic lambda$handleIntent$10([IILorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/tl/TL_account$getAuthorizationForm;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 10

    .line 334
    move-object/from16 v4, p7

    check-cast v4, Lorg/telegram/tgnet/tl/TL_account$authorizationForm;

    if-eqz v4, :cond_0

    .line 336
    new-instance v8, Lorg/telegram/tgnet/tl/TL_account$getPassword;

    invoke-direct {v8}, Lorg/telegram/tgnet/tl/TL_account$getPassword;-><init>()V

    .line 337
    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v9

    new-instance v0, Lorg/telegram/ui/ExternalActionActivity$$ExternalSyntheticLambda7;

    move-object v1, p0

    move v3, p2

    move-object v2, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ExternalActionActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/ExternalActionActivity;Lorg/telegram/ui/ActionBar/AlertDialog;ILorg/telegram/tgnet/tl/TL_account$authorizationForm;Lorg/telegram/tgnet/tl/TL_account$getAuthorizationForm;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v8, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p2

    const/4 p3, 0x0

    aput p2, p1, p3

    return-void

    .line 363
    :cond_0
    new-instance p1, Lorg/telegram/ui/ExternalActionActivity$$ExternalSyntheticLambda8;

    move-object/from16 p2, p8

    invoke-direct {p1, p0, p3, p2}, Lorg/telegram/ui/ExternalActionActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/ExternalActionActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$handleIntent$3(ILandroid/content/Intent;ZZZI)V
    .locals 7

    if-eq p6, p1, :cond_0

    .line 300
    invoke-virtual {p0, p6}, Lorg/telegram/ui/ExternalActionActivity;->switchToAccount(I)V

    :cond_0
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 302
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/ExternalActionActivity;->handleIntent(Landroid/content/Intent;ZZZII)Z

    return-void
.end method

.method private synthetic lambda$handleIntent$4(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 307
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 308
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$handleIntent$6(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;ILorg/telegram/tgnet/tl/TL_account$authorizationForm;Lorg/telegram/tgnet/tl/TL_account$getAuthorizationForm;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    move-object/from16 v1, p5

    .line 339
    :try_start_0
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 341
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    if-eqz p2, :cond_2

    .line 344
    move-object v10, p2

    check-cast v10, Lorg/telegram/tgnet/tl/TL_account$Password;

    .line 345
    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p2, p4, Lorg/telegram/tgnet/tl/TL_account$authorizationForm;->users:Ljava/util/ArrayList;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 346
    new-instance v0, Lorg/telegram/ui/PassportActivity;

    iget-wide v2, v1, Lorg/telegram/tgnet/tl/TL_account$getAuthorizationForm;->bot_id:J

    iget-object v4, v1, Lorg/telegram/tgnet/tl/TL_account$getAuthorizationForm;->scope:Ljava/lang/String;

    iget-object v5, v1, Lorg/telegram/tgnet/tl/TL_account$getAuthorizationForm;->public_key:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v1, 0x5

    move-object v9, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v10}, Lorg/telegram/ui/PassportActivity;-><init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/tl/TL_account$authorizationForm;Lorg/telegram/tgnet/tl/TL_account$Password;)V

    const/4 p1, 0x1

    .line 347
    invoke-virtual {v0, p1}, Lorg/telegram/ui/PassportActivity;->setNeedActivityResult(Z)V

    .line 348
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 349
    iget-object p1, p0, Lorg/telegram/ui/ExternalActionActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {p1, v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_1

    .line 351
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ExternalActionActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {p1, v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 353
    :goto_1
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p1

    if-nez p1, :cond_1

    .line 354
    iget-object p1, p0, Lorg/telegram/ui/ExternalActionActivity;->backgroundTablet:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 356
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ExternalActionActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->showLastFragment()V

    .line 357
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 358
    iget-object p1, p0, Lorg/telegram/ui/ExternalActionActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->showLastFragment()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$handleIntent$7(Lorg/telegram/ui/ActionBar/AlertDialog;ILorg/telegram/tgnet/tl/TL_account$authorizationForm;Lorg/telegram/tgnet/tl/TL_account$getAuthorizationForm;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 9

    .line 337
    new-instance v0, Lorg/telegram/ui/ExternalActionActivity$$ExternalSyntheticLambda9;

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    move-object/from16 v3, p7

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ExternalActionActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/ExternalActionActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;ILorg/telegram/tgnet/tl/TL_account$authorizationForm;Lorg/telegram/tgnet/tl/TL_account$getAuthorizationForm;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$handleIntent$8(Lorg/telegram/tgnet/TLRPC$TL_error;Landroid/content/DialogInterface;)V
    .locals 1

    .line 370
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v0, "error"

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 371
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$handleIntent$9(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    .line 365
    :try_start_0
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 366
    const-string p1, "APP_VERSION_OUTDATED"

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "error"

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 367
    :try_start_1
    sget p1, Lorg/telegram/messenger/R$string;->UpdateAppAlert:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lorg/telegram/ui/Components/AlertsCreator;->showUpdateAppAlert(Landroid/content/Context;Ljava/lang/String;Z)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 369
    new-instance v0, Lorg/telegram/ui/ExternalActionActivity$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p2}, Lorg/telegram/ui/ExternalActionActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/ExternalActionActivity;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    .line 374
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 375
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 377
    :cond_1
    const-string p1, "BOT_INVALID"

    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "PUBLIC_KEY_REQUIRED"

    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    .line 378
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "PUBLIC_KEY_INVALID"

    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    .line 379
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "SCOPE_EMPTY"

    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    .line 380
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "PAYLOAD_EMPTY"

    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    .line 381
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 385
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 386
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 382
    :cond_3
    :goto_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 383
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 389
    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 129
    iget-object p1, p0, Lorg/telegram/ui/ExternalActionActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 130
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 131
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    const/4 v2, 0x2

    .line 132
    new-array v2, v2, [I

    .line 133
    iget-object v3, p0, Lorg/telegram/ui/ExternalActionActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v3}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 134
    aget v3, v2, v0

    .line 135
    aget v2, v2, v1

    .line 137
    iget-object v4, p0, Lorg/telegram/ui/ExternalActionActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v4}, Lorg/telegram/ui/ActionBar/INavigationLayout;->checkTransitionAnimation()Z

    move-result v4

    if-nez v4, :cond_3

    int-to-float v4, v3

    cmpl-float v4, p1, v4

    if-lez v4, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/ExternalActionActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v4}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float p1, p1, v3

    if-gez p1, :cond_0

    int-to-float p1, v2

    cmpl-float p1, p2, p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/ExternalActionActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v2, p1

    int-to-float p1, v2

    cmpg-float p1, p2, p1

    if-gez p1, :cond_0

    goto :goto_1

    .line 140
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ExternalActionActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 141
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ExternalActionActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v1

    if-lez p1, :cond_1

    .line 142
    iget-object p1, p0, Lorg/telegram/ui/ExternalActionActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-interface {p1, p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    goto :goto_0

    .line 145
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ExternalActionActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {p1, v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->closeLastFragment(Z)V

    :cond_2
    return v1

    :cond_3
    :goto_1
    return v0
.end method

.method private synthetic lambda$showPasscodeActivity$2(Lorg/telegram/ui/Components/PasscodeView;)V
    .locals 8

    const/4 v0, 0x0

    .line 221
    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->isWaitingForPasscodeEnter:Z

    .line 222
    iget-object v2, p0, Lorg/telegram/ui/ExternalActionActivity;->passcodeSaveIntent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    .line 223
    iget-boolean v3, p0, Lorg/telegram/ui/ExternalActionActivity;->passcodeSaveIntentIsNew:Z

    iget-boolean v4, p0, Lorg/telegram/ui/ExternalActionActivity;->passcodeSaveIntentIsRestore:Z

    iget v6, p0, Lorg/telegram/ui/ExternalActionActivity;->passcodeSaveIntentAccount:I

    iget v7, p0, Lorg/telegram/ui/ExternalActionActivity;->passcodeSaveIntentState:I

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/ExternalActionActivity;->handleIntent(Landroid/content/Intent;ZZZII)Z

    const/4 v2, 0x0

    .line 224
    iput-object v2, v1, Lorg/telegram/ui/ExternalActionActivity;->passcodeSaveIntent:Landroid/content/Intent;

    goto :goto_0

    :cond_0
    move-object v1, p0

    .line 226
    :goto_0
    iget-object v2, v1, Lorg/telegram/ui/ExternalActionActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->showLastFragment()V

    .line 227
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 228
    iget-object v2, v1, Lorg/telegram/ui/ExternalActionActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->showLastFragment()V

    .line 231
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->passcodeDismissed:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private onFinish()V
    .locals 1

    .line 440
    iget-boolean v0, p0, Lorg/telegram/ui/ExternalActionActivity;->finished:Z

    if-eqz v0, :cond_0

    return-void

    .line 443
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ExternalActionActivity;->lockRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 444
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 445
    iput-object v0, p0, Lorg/telegram/ui/ExternalActionActivity;->lockRunnable:Ljava/lang/Runnable;

    :cond_1
    const/4 v0, 0x1

    .line 447
    iput-boolean v0, p0, Lorg/telegram/ui/ExternalActionActivity;->finished:Z

    return-void
.end method

.method private onPasscodePause()V
    .locals 6

    .line 555
    iget-object v0, p0, Lorg/telegram/ui/ExternalActionActivity;->lockRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 556
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 557
    iput-object v0, p0, Lorg/telegram/ui/ExternalActionActivity;->lockRunnable:Ljava/lang/Runnable;

    .line 559
    :cond_0
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 560
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    sput v0, Lorg/telegram/messenger/SharedConfig;->lastPauseTime:I

    .line 561
    new-instance v0, Lorg/telegram/ui/ExternalActionActivity$4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ExternalActionActivity$4;-><init>(Lorg/telegram/ui/ExternalActionActivity;)V

    iput-object v0, p0, Lorg/telegram/ui/ExternalActionActivity;->lockRunnable:Ljava/lang/Runnable;

    .line 579
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->appLocked:Z

    if-nez v1, :cond_2

    sget v1, Lorg/telegram/messenger/SharedConfig;->autoLockIn:I

    const v4, 0x7fffffff

    if-ne v1, v4, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_4

    int-to-long v4, v1

    mul-long/2addr v4, v2

    add-long/2addr v4, v2

    .line 582
    invoke-static {v0, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_1

    .line 580
    :cond_2
    :goto_0
    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 585
    sput v0, Lorg/telegram/messenger/SharedConfig;->lastPauseTime:I

    .line 587
    :cond_4
    :goto_1
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    return-void
.end method

.method private onPasscodeResume()V
    .locals 1

    .line 591
    iget-object v0, p0, Lorg/telegram/ui/ExternalActionActivity;->lockRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 592
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 593
    iput-object v0, p0, Lorg/telegram/ui/ExternalActionActivity;->lockRunnable:Ljava/lang/Runnable;

    :cond_0
    const/4 v0, 0x1

    .line 595
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->needShowPasscode(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 596
    invoke-direct {p0}, Lorg/telegram/ui/ExternalActionActivity;->showPasscodeActivity()V

    .line 598
    :cond_1
    sget v0, Lorg/telegram/messenger/SharedConfig;->lastPauseTime:I

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 599
    sput v0, Lorg/telegram/messenger/SharedConfig;->lastPauseTime:I

    .line 600
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    :cond_2
    return-void
.end method

.method private showPasscodeActivity()V
    .locals 3

    .line 207
    iget-object v0, p0, Lorg/telegram/ui/ExternalActionActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 210
    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->appLocked:Z

    .line 211
    invoke-static {}, Lorg/telegram/ui/SecretMediaViewer;->hasInstance()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-static {}, Lorg/telegram/ui/SecretMediaViewer;->getInstance()Lorg/telegram/ui/SecretMediaViewer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/SecretMediaViewer;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 212
    invoke-static {}, Lorg/telegram/ui/SecretMediaViewer;->getInstance()Lorg/telegram/ui/SecretMediaViewer;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Lorg/telegram/ui/SecretMediaViewer;->closePhoto(ZZ)Z

    goto :goto_0

    .line 213
    :cond_1
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->hasInstance()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/PhotoViewer;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 214
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    goto :goto_0

    .line 215
    :cond_2
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->hasInstance()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 216
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/ArticleViewer;->close(ZZ)V

    .line 218
    :cond_3
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ExternalActionActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Components/PasscodeView;->onShow(ZZ)V

    .line 219
    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->isWaitingForPasscodeEnter:Z

    .line 220
    iget-object v0, p0, Lorg/telegram/ui/ExternalActionActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    new-instance v1, Lorg/telegram/ui/ExternalActionActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ExternalActionActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ExternalActionActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PasscodeView;->setDelegate(Lorg/telegram/ui/Components/PasscodeView$PasscodeViewDelegate;)V

    return-void
.end method


# virtual methods
.method protected checkPasscode(Landroid/content/Intent;ZZZII)Z
    .locals 1

    const/4 v0, 0x1

    if-nez p4, :cond_1

    .line 249
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->needShowPasscode(Z)Z

    move-result p4

    if-nez p4, :cond_0

    sget-boolean p4, Lorg/telegram/messenger/SharedConfig;->isWaitingForPasscodeEnter:Z

    if-eqz p4, :cond_1

    .line 250
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/ExternalActionActivity;->showPasscodeActivity()V

    .line 251
    iput-object p1, p0, Lorg/telegram/ui/ExternalActionActivity;->passcodeSaveIntent:Landroid/content/Intent;

    .line 252
    iput-boolean p2, p0, Lorg/telegram/ui/ExternalActionActivity;->passcodeSaveIntentIsNew:Z

    .line 253
    iput-boolean p3, p0, Lorg/telegram/ui/ExternalActionActivity;->passcodeSaveIntentIsRestore:Z

    .line 254
    iput p5, p0, Lorg/telegram/ui/ExternalActionActivity;->passcodeSaveIntentAccount:I

    .line 255
    iput p6, p0, Lorg/telegram/ui/ExternalActionActivity;->passcodeSaveIntentState:I

    .line 256
    invoke-static {p5}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    return p2

    :cond_1
    return v0
.end method

.method public fixLayout()V
    .locals 2

    .line 494
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 497
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ExternalActionActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 500
    :cond_1
    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ExternalActionActivity$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ExternalActionActivity$3;-><init>(Lorg/telegram/ui/ExternalActionActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method protected handleIntent(Landroid/content/Intent;ZZZII)Z
    .locals 9

    .line 263
    invoke-virtual/range {p0 .. p6}, Lorg/telegram/ui/ExternalActionActivity;->checkPasscode(Landroid/content/Intent;ZZZII)Z

    move-result v0

    move-object v1, p0

    const/4 v8, 0x0

    if-nez v0, :cond_0

    return v8

    .line 266
    :cond_0
    const-string v0, "org.telegram.passport.AUTHORIZE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v0, :cond_9

    const/4 v7, 0x1

    if-nez p6, :cond_5

    .line 268
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getActivatedAccountsCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 270
    iput-object p1, v1, Lorg/telegram/ui/ExternalActionActivity;->passcodeSaveIntent:Landroid/content/Intent;

    .line 271
    iput-boolean p2, v1, Lorg/telegram/ui/ExternalActionActivity;->passcodeSaveIntentIsNew:Z

    .line 272
    iput-boolean p3, v1, Lorg/telegram/ui/ExternalActionActivity;->passcodeSaveIntentIsRestore:Z

    .line 273
    iput p5, v1, Lorg/telegram/ui/ExternalActionActivity;->passcodeSaveIntentAccount:I

    .line 274
    iput p6, v1, Lorg/telegram/ui/ExternalActionActivity;->passcodeSaveIntentState:I

    .line 276
    new-instance p1, Lorg/telegram/ui/LoginActivity;

    invoke-direct {p1}, Lorg/telegram/ui/LoginActivity;-><init>()V

    .line 277
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 278
    iget-object p2, v1, Lorg/telegram/ui/ExternalActionActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {p2, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    .line 280
    :cond_1
    iget-object p2, v1, Lorg/telegram/ui/ExternalActionActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {p2, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 282
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p1

    if-nez p1, :cond_2

    .line 283
    iget-object p1, v1, Lorg/telegram/ui/ExternalActionActivity;->backgroundTablet:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 285
    :cond_2
    iget-object p1, v1, Lorg/telegram/ui/ExternalActionActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->showLastFragment()V

    .line 286
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 287
    iget-object p1, v1, Lorg/telegram/ui/ExternalActionActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->showLastFragment()V

    .line 290
    :cond_3
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 291
    sget p2, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 292
    sget p2, Lorg/telegram/messenger/R$string;->PleaseLoginPassport:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 293
    sget p2, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 294
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return v7

    :cond_4
    const/4 p6, 0x2

    if-lt v0, p6, :cond_5

    .line 298
    new-instance v0, Lorg/telegram/ui/ExternalActionActivity$$ExternalSyntheticLambda3;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v2, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ExternalActionActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ExternalActionActivity;ILandroid/content/Intent;ZZZ)V

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/AlertsCreator;->createAccountSelectDialog(Landroid/app/Activity;Lorg/telegram/ui/Components/AlertsCreator$AccountSelectDelegate;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 304
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    .line 305
    invoke-virtual {p1, v8}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 306
    new-instance p2, Lorg/telegram/ui/ExternalActionActivity$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lorg/telegram/ui/ExternalActionActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ExternalActionActivity;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return v7

    .line 314
    :cond_5
    const-string p2, "bot_id"

    invoke-virtual {p1, p2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p3

    int-to-long p3, p3

    invoke-virtual {p1, p2, p3, p4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p2

    .line 315
    const-string p4, "nonce"

    invoke-virtual {p1, p4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 316
    const-string p6, "payload"

    invoke-virtual {p1, p6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 317
    new-instance v5, Lorg/telegram/tgnet/tl/TL_account$getAuthorizationForm;

    invoke-direct {v5}, Lorg/telegram/tgnet/tl/TL_account$getAuthorizationForm;-><init>()V

    .line 318
    iput-wide p2, v5, Lorg/telegram/tgnet/tl/TL_account$getAuthorizationForm;->bot_id:J

    .line 319
    const-string p6, "scope"

    invoke-virtual {p1, p6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    iput-object p6, v5, Lorg/telegram/tgnet/tl/TL_account$getAuthorizationForm;->scope:Ljava/lang/String;

    .line 320
    const-string p6, "public_key"

    invoke-virtual {p1, p6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v5, Lorg/telegram/tgnet/tl/TL_account$getAuthorizationForm;->public_key:Ljava/lang/String;

    const-wide/16 v2, 0x0

    cmp-long p1, p2, v2

    if-eqz p1, :cond_8

    .line 322
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    :cond_6
    iget-object p1, v5, Lorg/telegram/tgnet/tl/TL_account$getAuthorizationForm;->scope:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, v5, Lorg/telegram/tgnet/tl/TL_account$getAuthorizationForm;->public_key:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_1

    .line 327
    :cond_7
    new-array v2, v7, [I

    aput v8, v2, v8

    .line 329
    new-instance v4, Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 p1, 0x3

    invoke-direct {v4, p0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 330
    new-instance p1, Lorg/telegram/ui/ExternalActionActivity$$ExternalSyntheticLambda5;

    invoke-direct {p1, p5, v2}, Lorg/telegram/ui/ExternalActionActivity$$ExternalSyntheticLambda5;-><init>(I[I)V

    invoke-virtual {v4, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 332
    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    .line 333
    invoke-static {p5}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/ExternalActionActivity$$ExternalSyntheticLambda6;

    move-object v7, p4

    move v3, p5

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ExternalActionActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/ExternalActionActivity;[IILorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/tl/TL_account$getAuthorizationForm;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0xa

    invoke-virtual {p1, v5, v0, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result p1

    aput p1, v2, v8

    goto :goto_3

    .line 323
    :cond_8
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v8

    .line 395
    :cond_9
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 396
    iget-object p2, v1, Lorg/telegram/ui/ExternalActionActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 397
    iget-object p2, v1, Lorg/telegram/ui/ExternalActionActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    new-instance p3, Lorg/telegram/ui/CacheControlActivity;

    invoke-direct {p3}, Lorg/telegram/ui/CacheControlActivity;-><init>()V

    invoke-interface {p2, p3}, Lorg/telegram/ui/ActionBar/INavigationLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_2

    .line 400
    :cond_a
    iget-object p2, v1, Lorg/telegram/ui/ExternalActionActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 401
    iget-object p2, v1, Lorg/telegram/ui/ExternalActionActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    new-instance p3, Lorg/telegram/ui/CacheControlActivity;

    invoke-direct {p3}, Lorg/telegram/ui/CacheControlActivity;-><init>()V

    invoke-interface {p2, p3}, Lorg/telegram/ui/ActionBar/INavigationLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 404
    :cond_b
    :goto_2
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p2

    if-nez p2, :cond_c

    .line 405
    iget-object p2, v1, Lorg/telegram/ui/ExternalActionActivity;->backgroundTablet:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 407
    :cond_c
    iget-object p2, v1, Lorg/telegram/ui/ExternalActionActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->showLastFragment()V

    .line 408
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p2

    if-eqz p2, :cond_d

    .line 409
    iget-object p2, v1, Lorg/telegram/ui/ExternalActionActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->showLastFragment()V

    .line 411
    :cond_d
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_3
    return v8
.end method

.method public needAddFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/INavigationLayout;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public needCloseLastFragment(Lorg/telegram/ui/ActionBar/INavigationLayout;)Z
    .locals 3

    .line 652
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 653
    iget-object v0, p0, Lorg/telegram/ui/ExternalActionActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-ne p1, v0, :cond_0

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v2, :cond_0

    .line 654
    invoke-direct {p0}, Lorg/telegram/ui/ExternalActionActivity;->onFinish()V

    .line 655
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v1

    .line 657
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ExternalActionActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/ExternalActionActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/ExternalActionActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v2, :cond_2

    .line 658
    invoke-direct {p0}, Lorg/telegram/ui/ExternalActionActivity;->onFinish()V

    .line 659
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v1

    .line 663
    :cond_1
    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gt p1, v2, :cond_2

    .line 664
    invoke-direct {p0}, Lorg/telegram/ui/ExternalActionActivity;->onFinish()V

    .line 665
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v1

    :cond_2
    return v2
.end method

.method public needLayout()V
    .locals 5

    .line 459
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 460
    iget-object v0, p0, Lorg/telegram/ui/ExternalActionActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 461
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sub-int/2addr v1, v2

    const/4 v2, 0x2

    div-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 462
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    .line 463
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v1

    div-int/2addr v3, v2

    add-int/2addr v1, v3

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 464
    iget-object v1, p0, Lorg/telegram/ui/ExternalActionActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 467
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallTablet()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 485
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ExternalActionActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 486
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 487
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 488
    iget-object v1, p0, Lorg/telegram/ui/ExternalActionActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 468
    :cond_1
    :goto_0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    div-int/lit8 v0, v0, 0x64

    mul-int/lit8 v0, v0, 0x23

    const/high16 v3, 0x43a00000    # 320.0f

    .line 469
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 470
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 473
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/ExternalActionActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v3}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 474
    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 475
    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 476
    iget-object v0, p0, Lorg/telegram/ui/ExternalActionActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 478
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ExternalActionActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 479
    iget-object v0, p0, Lorg/telegram/ui/ExternalActionActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 480
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 481
    iget-object v0, p0, Lorg/telegram/ui/ExternalActionActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 482
    iget-object v0, p0, Lorg/telegram/ui/ExternalActionActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->showLastFragment()V

    :cond_3
    return-void
.end method

.method public needPresentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZLorg/telegram/ui/ActionBar/INavigationLayout;)Z
    .locals 0

    .line 0
    const/4 p1, 0x1

    return p1
.end method

.method public synthetic needPresentFragment(Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate$-CC;->$default$needPresentFragment(Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;)Z

    move-result p1

    return p1
.end method

.method public onBackPressed()V
    .locals 3

    .line 614
    iget-object v0, p0, Lorg/telegram/ui/ExternalActionActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 615
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 618
    :cond_0
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 619
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    return-void

    .line 620
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 621
    iget-object v0, p0, Lorg/telegram/ui/ExternalActionActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 622
    iget-object v0, p0, Lorg/telegram/ui/ExternalActionActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->onBackPressed()V

    return-void

    .line 624
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ExternalActionActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->onBackPressed()V

    return-void

    .line 627
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ExternalActionActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 606
    invoke-static {p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->checkDisplaySize(Landroid/content/Context;Landroid/content/res/Configuration;)V

    .line 607
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->setPreferredMaxRefreshRate(Landroid/view/Window;)V

    .line 608
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 609
    invoke-virtual {p0}, Lorg/telegram/ui/ExternalActionActivity;->fixLayout()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 74
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->postInitApplication()V

    const/4 v1, 0x1

    .line 76
    invoke-virtual {p0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 77
    sget v0, Lorg/telegram/messenger/R$style;->Theme_TMessages:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->setTheme(I)V

    .line 78
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$drawable;->transparent:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 79
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->allowScreenCapture:Z

    if-nez v0, :cond_0

    .line 81
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x2000

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 82
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->logFlagSecure()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 84
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 88
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->appLocked:Z

    if-eqz v0, :cond_1

    .line 91
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v0, v2

    sput v0, Lorg/telegram/messenger/SharedConfig;->lastPauseTime:I

    :cond_1
    const/4 v0, 0x0

    .line 94
    invoke-static {p0, v0}, Lorg/telegram/messenger/AndroidUtilities;->fillStatusBarHeight(Landroid/content/Context;Z)V

    .line 95
    invoke-static {p0}, Lorg/telegram/ui/ActionBar/Theme;->createDialogsResources(Landroid/content/Context;)V

    .line 96
    invoke-static {p0, v0}, Lorg/telegram/ui/ActionBar/Theme;->createChatResources(Landroid/content/Context;Z)V

    .line 98
    invoke-static {p0, v0}, Lorg/telegram/ui/ActionBar/INavigationLayout$-CC;->newLayout(Landroid/content/Context;Z)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/ExternalActionActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    .line 100
    new-instance v2, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/ExternalActionActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    .line 101
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    const/high16 v3, -0x40800000    # -1.0f

    if-eqz v2, :cond_3

    .line 104
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v5, 0x10

    invoke-virtual {v2, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 106
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 107
    iget-object v5, p0, Lorg/telegram/ui/ExternalActionActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 108
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 109
    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 110
    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 111
    invoke-virtual {v2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    new-instance v5, Lorg/telegram/ui/ExternalActionActivity$1;

    invoke-direct {v5, p0, p0}, Lorg/telegram/ui/ExternalActionActivity$1;-><init>(Lorg/telegram/ui/ExternalActionActivity;Landroid/content/Context;)V

    iput-object v5, p0, Lorg/telegram/ui/ExternalActionActivity;->backgroundTablet:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    .line 119
    invoke-virtual {v5, v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setOccupyStatusBar(Z)V

    .line 120
    iget-object v5, p0, Lorg/telegram/ui/ExternalActionActivity;->backgroundTablet:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCachedWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isWallpaperMotion()Z

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setBackgroundImage(Landroid/graphics/drawable/Drawable;Z)V

    .line 121
    iget-object v5, p0, Lorg/telegram/ui/ExternalActionActivity;->backgroundTablet:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createRelative(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    iget-object v5, p0, Lorg/telegram/ui/ExternalActionActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v5}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-static {v4, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createRelative(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v6, 0x7f000000

    .line 126
    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 127
    invoke-static {v4, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createRelative(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    new-instance v6, Lorg/telegram/ui/ExternalActionActivity$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lorg/telegram/ui/ExternalActionActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ExternalActionActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 153
    new-instance v6, Lorg/telegram/ui/ExternalActionActivity$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Lorg/telegram/ui/ExternalActionActivity$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    invoke-static {p0, v0}, Lorg/telegram/ui/ActionBar/INavigationLayout$-CC;->newLayout(Landroid/content/Context;Z)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/ui/ExternalActionActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    .line 158
    invoke-interface {v6, v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->setRemoveActionBarExtraHeight(Z)V

    .line 159
    iget-object v6, p0, Lorg/telegram/ui/ExternalActionActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v6, v5}, Lorg/telegram/ui/ActionBar/INavigationLayout;->setBackgroundView(Landroid/view/View;)V

    .line 160
    iget-object v5, p0, Lorg/telegram/ui/ExternalActionActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v5, v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->setUseAlphaAnimations(Z)V

    .line 161
    iget-object v5, p0, Lorg/telegram/ui/ExternalActionActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v5}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/R$drawable;->boxshadow:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 162
    iget-object v5, p0, Lorg/telegram/ui/ExternalActionActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v5}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallTablet()Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x210

    goto :goto_1

    :cond_2
    const/16 v6, 0x2bc

    :goto_1
    const/16 v7, 0x212

    invoke-static {v7, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createRelative(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    iget-object v2, p0, Lorg/telegram/ui/ExternalActionActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    sget-object v5, Lorg/telegram/ui/ExternalActionActivity;->layerFragmentsStack:Ljava/util/ArrayList;

    invoke-interface {v2, v5}, Lorg/telegram/ui/ActionBar/INavigationLayout;->setFragmentStack(Ljava/util/List;)V

    .line 164
    iget-object v2, p0, Lorg/telegram/ui/ExternalActionActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v2, p0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->setDelegate(Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;)V

    .line 165
    iget-object v2, p0, Lorg/telegram/ui/ExternalActionActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    iget-object v5, p0, Lorg/telegram/ui/ExternalActionActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-interface {v2, v5}, Lorg/telegram/ui/ActionBar/INavigationLayout;->setDrawerLayoutContainer(Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;)V

    goto :goto_2

    .line 167
    :cond_3
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 168
    iget-object v5, p0, Lorg/telegram/ui/ExternalActionActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-static {v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    new-instance v5, Lorg/telegram/ui/ExternalActionActivity$2;

    invoke-direct {v5, p0, p0}, Lorg/telegram/ui/ExternalActionActivity$2;-><init>(Lorg/telegram/ui/ExternalActionActivity;Landroid/content/Context;)V

    iput-object v5, p0, Lorg/telegram/ui/ExternalActionActivity;->backgroundTablet:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    .line 176
    invoke-virtual {v5, v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setOccupyStatusBar(Z)V

    .line 177
    iget-object v5, p0, Lorg/telegram/ui/ExternalActionActivity;->backgroundTablet:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCachedWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isWallpaperMotion()Z

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setBackgroundImage(Landroid/graphics/drawable/Drawable;Z)V

    .line 178
    iget-object v5, p0, Lorg/telegram/ui/ExternalActionActivity;->backgroundTablet:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createRelative(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    iget-object v5, p0, Lorg/telegram/ui/ExternalActionActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v5}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-static {v4, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createRelative(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/ExternalActionActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    iget-object v5, p0, Lorg/telegram/ui/ExternalActionActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setParentActionBarLayout(Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    .line 186
    iget-object v2, p0, Lorg/telegram/ui/ExternalActionActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    iget-object v5, p0, Lorg/telegram/ui/ExternalActionActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-interface {v2, v5}, Lorg/telegram/ui/ActionBar/INavigationLayout;->setDrawerLayoutContainer(Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;)V

    .line 187
    iget-object v2, p0, Lorg/telegram/ui/ExternalActionActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    sget-object v5, Lorg/telegram/ui/ExternalActionActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    invoke-interface {v2, v5}, Lorg/telegram/ui/ActionBar/INavigationLayout;->setFragmentStack(Ljava/util/List;)V

    .line 188
    iget-object v2, p0, Lorg/telegram/ui/ExternalActionActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v2, p0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->setDelegate(Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;)V

    .line 190
    new-instance v2, Lorg/telegram/ui/Components/PasscodeView;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/PasscodeView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/ExternalActionActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    .line 191
    iget-object v5, p0, Lorg/telegram/ui/ExternalActionActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-static {v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->closeOtherAppActivities:I

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p0, v4, v0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 195
    iget-object v2, p0, Lorg/telegram/ui/ExternalActionActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz v2, :cond_4

    .line 196
    invoke-interface {v2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->removeAllFragments()V

    .line 198
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/ExternalActionActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz v2, :cond_5

    .line 199
    invoke-interface {v2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->removeAllFragments()V

    .line 202
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz p1, :cond_6

    move v6, v1

    goto :goto_3

    :cond_6
    move v6, v0

    :goto_3
    sget v8, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lorg/telegram/ui/ExternalActionActivity;->handleIntent(Landroid/content/Intent;ZZZII)Z

    .line 203
    invoke-virtual {p0}, Lorg/telegram/ui/ExternalActionActivity;->needLayout()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 527
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 528
    invoke-direct {p0}, Lorg/telegram/ui/ExternalActionActivity;->onFinish()V

    return-void
.end method

.method public onFinishLogin()V
    .locals 7

    .line 236
    iget-object v1, p0, Lorg/telegram/ui/ExternalActionActivity;->passcodeSaveIntent:Landroid/content/Intent;

    iget-boolean v2, p0, Lorg/telegram/ui/ExternalActionActivity;->passcodeSaveIntentIsNew:Z

    iget-boolean v3, p0, Lorg/telegram/ui/ExternalActionActivity;->passcodeSaveIntentIsRestore:Z

    iget v5, p0, Lorg/telegram/ui/ExternalActionActivity;->passcodeSaveIntentAccount:I

    iget v6, p0, Lorg/telegram/ui/ExternalActionActivity;->passcodeSaveIntentState:I

    const/4 v4, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/ExternalActionActivity;->handleIntent(Landroid/content/Intent;ZZZII)Z

    .line 237
    iget-object v1, v0, Lorg/telegram/ui/ExternalActionActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz v1, :cond_0

    .line 238
    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->removeAllFragments()V

    .line 240
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/ExternalActionActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz v1, :cond_1

    .line 241
    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->removeAllFragments()V

    .line 243
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/ExternalActionActivity;->backgroundTablet:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    .line 244
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 633
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 634
    iget-object v0, p0, Lorg/telegram/ui/ExternalActionActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->onLowMemory()V

    .line 635
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lorg/telegram/ui/ExternalActionActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->onLowMemory()V

    :cond_0
    return-void
.end method

.method public synthetic onMeasureOverride([I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate$-CC;->$default$onMeasureOverride(Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;[I)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 7

    .line 435
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 436
    sget v5, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/ExternalActionActivity;->handleIntent(Landroid/content/Intent;ZZZII)Z

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 513
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 514
    iget-object v0, p0, Lorg/telegram/ui/ExternalActionActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->onPause()V

    .line 515
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lorg/telegram/ui/ExternalActionActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->onPause()V

    :cond_0
    const/4 v0, 0x1

    .line 518
    sput-boolean v0, Lorg/telegram/messenger/ApplicationLoader;->externalInterfacePaused:Z

    .line 519
    invoke-direct {p0}, Lorg/telegram/ui/ExternalActionActivity;->onPasscodePause()V

    .line 520
    iget-object v0, p0, Lorg/telegram/ui/ExternalActionActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    if-eqz v0, :cond_1

    .line 521
    invoke-virtual {v0}, Lorg/telegram/ui/Components/PasscodeView;->onPause()V

    :cond_1
    return-void
.end method

.method public onPreIme()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onRebuildAllFragments(Lorg/telegram/ui/ActionBar/INavigationLayout;Z)V
    .locals 1

    .line 674
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lorg/telegram/ui/ExternalActionActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-ne p1, v0, :cond_0

    .line 676
    iget-object p1, p0, Lorg/telegram/ui/ExternalActionActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {p1, p2, p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->rebuildAllFragmentViews(ZZ)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 533
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 534
    iget-object v0, p0, Lorg/telegram/ui/ExternalActionActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->onResume()V

    .line 535
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lorg/telegram/ui/ExternalActionActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->onResume()V

    :cond_0
    const/4 v0, 0x0

    .line 538
    sput-boolean v0, Lorg/telegram/messenger/ApplicationLoader;->externalInterfacePaused:Z

    .line 539
    invoke-direct {p0}, Lorg/telegram/ui/ExternalActionActivity;->onPasscodeResume()V

    .line 540
    iget-object v0, p0, Lorg/telegram/ui/ExternalActionActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 541
    iget-object v0, p0, Lorg/telegram/ui/ExternalActionActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->onResume()V

    .line 542
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 543
    iget-object v0, p0, Lorg/telegram/ui/ExternalActionActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->onResume()V

    :cond_1
    return-void

    .line 546
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ExternalActionActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->dismissDialogs()V

    .line 547
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 548
    iget-object v0, p0, Lorg/telegram/ui/ExternalActionActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->dismissDialogs()V

    .line 550
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ExternalActionActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PasscodeView;->onResume()V

    return-void
.end method

.method public synthetic onThemeProgress(F)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate$-CC;->$default$onThemeProgress(Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;F)V

    return-void
.end method

.method public switchToAccount(I)V
    .locals 3

    .line 417
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 420
    :cond_0
    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->setAppPaused(ZZ)V

    .line 421
    sput p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    .line 422
    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 423
    sget-boolean p1, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePaused:Z

    if-nez p1, :cond_1

    .line 424
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    invoke-virtual {p1, v2, v2}, Lorg/telegram/tgnet/ConnectionsManager;->setAppPaused(ZZ)V

    :cond_1
    :goto_0
    return-void
.end method
