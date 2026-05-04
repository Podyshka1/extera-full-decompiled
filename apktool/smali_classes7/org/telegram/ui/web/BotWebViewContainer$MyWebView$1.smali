.class Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;-><init>(Landroid/content/Context;ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;


# direct methods
.method public static synthetic $r8$lambda$73-hd_iVI5IAjXJaedb2WoBczJo(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$1;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$1;->lambda$onLongClick$2(Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$OAfUR3wMHe_qhLc5ArJRICEjo5s(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$1;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$1;->lambda$onLongClick$3(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$g8Vl9r8-QH1if2ftXYbdmMC1e2I(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$1;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$1;->lambda$onLongClick$0(Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$yaRgXkACiSscrCiJ18VmOqs1MkQ(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$1;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$1;->lambda$onLongClick$1(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V
    .locals 0

    .line 3563
    iput-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$1;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onLongClick$0(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 2

    if-nez p3, :cond_0

    .line 3594
    iget-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$1;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->loadUrl(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p2, 0x1

    if-ne p3, p2, :cond_1

    .line 3597
    :try_start_0
    new-instance p3, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p3, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3598
    const-string v0, "create_new_tab"

    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3599
    const-string p2, "com.android.browser.application_id"

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$1;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3600
    iget-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$1;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 3602
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3603
    iget-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$1;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->loadUrl(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 p2, 0x2

    if-ne p3, p2, :cond_2

    .line 3606
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    .line 3607
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$1;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3608
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$1;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/web/BotWebViewContainer;->showLinkCopiedBulletin()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$onLongClick$1(Ljava/lang/String;)V
    .locals 7

    .line 3571
    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    iget-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$1;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 3575
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3576
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v5, "data"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3577
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/browser/Browser;->IDN_toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v3}, Lorg/telegram/messenger/browser/Browser;->replaceHostname(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 3580
    :try_start_1
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_0
    move-object v1, p1

    .line 3582
    :goto_0
    :try_start_2
    const-string v3, "\\+"

    const-string v4, "%2b"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    goto :goto_1

    :catch_2
    move-exception v3

    move-object v1, p1

    .line 3584
    :goto_1
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_2
    const/4 v3, 0x1

    .line 3586
    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setTitleMultipleLines(Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 3587
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 3588
    sget v1, Lorg/telegram/messenger/R$string;->OpenInTelegramBrowser:I

    .line 3589
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v4, Lorg/telegram/messenger/R$string;->OpenInSystemBrowser:I

    .line 3590
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$string;->Copy:I

    .line 3591
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/CharSequence;

    aput-object v1, v6, v2

    aput-object v4, v6, v3

    const/4 v1, 0x2

    aput-object v5, v6, v1

    new-instance v1, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$1$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$1$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$1;Ljava/lang/String;)V

    .line 3588
    invoke-virtual {v0, v6, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 3612
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$1;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->show()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fputcurrentSheet(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;Lorg/telegram/ui/ActionBar/BottomSheet;)V

    return-void
.end method

.method private synthetic lambda$onLongClick$2(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 4

    .line 3641
    const-string p2, "image/*"

    const/4 v0, 0x1

    if-nez p3, :cond_0

    .line 3643
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p2, p3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3644
    const-string p3, "create_new_tab"

    invoke-virtual {p2, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3645
    const-string p3, "com.android.browser.application_id"

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$1;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3646
    iget-object p3, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$1;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 3648
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3649
    iget-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$1;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_0
    if-ne p3, v0, :cond_3

    const/4 p3, 0x0

    .line 3653
    :try_start_1
    invoke-static {p1, p3, p2}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    .line 3655
    const-string p3, "image.png"

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    .line 3658
    :cond_1
    :goto_0
    new-instance v1, Landroid/app/DownloadManager$Request;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 3659
    invoke-virtual {v1, p2}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 3660
    sget p1, Lorg/telegram/messenger/R$string;->WebDownloading:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 3661
    invoke-virtual {v1, v0}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 3662
    sget-object p1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v1, p1, p3}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 3663
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$1;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "download"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/DownloadManager;

    if-eqz p1, :cond_2

    .line 3665
    invoke-virtual {p1, v1}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    .line 3668
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$1;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 3669
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$1;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$1;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/web/BotWebViewContainer;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/web/BotWebViewContainer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->ic_download:I

    sget v1, Lorg/telegram/messenger/R$string;->WebDownloadingFile:I

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    .line 3670
    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 3671
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    .line 3674
    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    const/4 p2, 0x2

    if-ne p3, p2, :cond_4

    .line 3677
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    .line 3678
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$1;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 3679
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$1;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/web/BotWebViewContainer;->showLinkCopiedBulletin()V

    :cond_4
    :goto_2
    return-void
.end method

.method private synthetic lambda$onLongClick$3(Ljava/lang/String;)V
    .locals 7

    .line 3621
    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    iget-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$1;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 3625
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3626
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/browser/Browser;->IDN_toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v3}, Lorg/telegram/messenger/browser/Browser;->replaceHostname(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 3628
    :try_start_1
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v1, p1

    .line 3630
    :goto_0
    :try_start_2
    const-string v3, "\\+"

    const-string v4, "%2b"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    goto :goto_1

    :catch_2
    move-exception v3

    move-object v1, p1

    .line 3632
    :goto_1
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_2
    const/4 v3, 0x1

    .line 3634
    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setTitleMultipleLines(Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 3635
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 3636
    sget v1, Lorg/telegram/messenger/R$string;->OpenInSystemBrowser:I

    .line 3637
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v4, Lorg/telegram/messenger/R$string;->AccActionDownload:I

    .line 3638
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$string;->CopyLink:I

    .line 3639
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/CharSequence;

    aput-object v1, v6, v2

    aput-object v4, v6, v3

    const/4 v1, 0x2

    aput-object v5, v6, v1

    new-instance v1, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$1$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$1;Ljava/lang/String;)V

    .line 3636
    invoke-virtual {v0, v6, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 3683
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$1;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->show()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fputcurrentSheet(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;Lorg/telegram/ui/ActionBar/BottomSheet;)V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 3566
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$1;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object p1

    .line 3567
    invoke-virtual {p1}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 3568
    invoke-virtual {p1}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object p1

    .line 3569
    new-instance v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$1;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return v2

    .line 3616
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 3617
    invoke-virtual {p1}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object p1

    .line 3619
    new-instance v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$1$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$1;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return v2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
