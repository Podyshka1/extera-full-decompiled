.class Lorg/telegram/ui/PaymentFormActivity$19;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PaymentFormActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PaymentFormActivity;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$QFzFtoq5PH3k8kW_ZVuScfjj-Es(Lorg/telegram/ui/PaymentFormActivity$19;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity$19;->lambda$onRenderProcessGone$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/PaymentFormActivity;Landroid/content/Context;)V
    .locals 0

    .line 2489
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$19;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    iput-object p2, p0, Lorg/telegram/ui/PaymentFormActivity$19;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method private synthetic lambda$onRenderProcessGone$0()V
    .locals 2

    .line 2498
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$19;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "https://play.google.com/store/apps/details?id=com.google.android.webview"

    invoke-static {v0, v1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 2510
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2511
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$19;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/telegram/ui/PaymentFormActivity;->-$$Nest$fputwebviewLoading(Lorg/telegram/ui/PaymentFormActivity;Z)V

    .line 2512
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$19;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0, p2}, Lorg/telegram/ui/PaymentFormActivity;->-$$Nest$mshowEditDoneProgress(Lorg/telegram/ui/PaymentFormActivity;ZZ)V

    .line 2513
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$19;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {p1}, Lorg/telegram/ui/PaymentFormActivity;->-$$Nest$mupdateSavePaymentField(Lorg/telegram/ui/PaymentFormActivity;)V

    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 2

    .line 2493
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$19;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->isSafeToShow(Landroid/content/Context;)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    return p2

    .line 2496
    :cond_0
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$19;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$19;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v1}, Lorg/telegram/ui/PaymentFormActivity;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v0, Lorg/telegram/messenger/R$string;->ChromeCrashTitle:I

    .line 2497
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->ChromeCrashMessage:I

    .line 2498
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/PaymentFormActivity$19$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PaymentFormActivity$19$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PaymentFormActivity$19;)V

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->OK:I

    .line 2499
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 2500
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p2

    :catch_0
    move-exception p1

    .line 2503
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .line 2519
    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 2520
    const-string p2, "t.me"

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 2521
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$19;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {p1}, Lorg/telegram/ui/PaymentFormActivity;->-$$Nest$mgoToNextStep(Lorg/telegram/ui/PaymentFormActivity;)V

    return v0

    .line 2525
    :cond_0
    invoke-static {}, Lorg/telegram/ui/PaymentFormActivity;->-$$Nest$sfgetBLACKLISTED_PROTOCOLS()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return v0

    .line 2528
    :cond_1
    invoke-static {}, Lorg/telegram/ui/PaymentFormActivity;->-$$Nest$sfgetWEBVIEW_PROTOCOLS()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p2, :cond_3

    .line 2530
    :try_start_1
    iget-object p2, p0, Lorg/telegram/ui/PaymentFormActivity$19;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    instance-of p2, p2, Landroid/app/Activity;

    if-eqz p2, :cond_2

    .line 2531
    iget-object p2, p0, Lorg/telegram/ui/PaymentFormActivity$19;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 p1, 0xd2

    invoke-virtual {p2, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2534
    :catch_0
    :try_start_2
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object p2, p0, Lorg/telegram/ui/PaymentFormActivity$19;->val$context:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object p2, p0, Lorg/telegram/ui/PaymentFormActivity$19;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {p2}, Lorg/telegram/ui/PaymentFormActivity;->-$$Nest$fgetcurrentBotName(Lorg/telegram/ui/PaymentFormActivity;)Ljava/lang/String;

    move-result-object p2

    .line 2535
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->PaymentAppNotFoundForDeeplink:I

    .line 2536
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->OK:I

    .line 2537
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 2538
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_0
    return v0

    :catch_1
    :cond_3
    const/4 p1, 0x0

    return p1
.end method
