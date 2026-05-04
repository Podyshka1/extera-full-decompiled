.class Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/DownloadListener;


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
.method public static synthetic $r8$lambda$eZOJDSSLSO__mrdHJyr8bLXUG0E(Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 4693
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic $r8$lambda$h1GC787vAtrinjmEnjq8FO8QRvQ(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$5;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$5;->lambda$onDownloadStart$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V
    .locals 0

    .line 4641
    iput-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$5;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 4644
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 4645
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4646
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 4648
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 4649
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    return-object v0

    .line 4653
    :catch_0
    :cond_0
    invoke-static {p1, p2, p3}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$onDownloadStart$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 4668
    :try_start_0
    new-instance v0, Landroid/app/DownloadManager$Request;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 4669
    invoke-virtual {v0, p2}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 4670
    const-string p1, "User-Agent"

    invoke-virtual {v0, p1, p3}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 4671
    sget p1, Lorg/telegram/messenger/R$string;->WebDownloading:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 4672
    invoke-virtual {v0, p4}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    const/4 p1, 0x1

    .line 4673
    invoke-virtual {v0, p1}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 4674
    sget-object p2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v0, p2, p4}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 4675
    iget-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$5;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "download"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/DownloadManager;

    if-eqz p2, :cond_0

    .line 4677
    invoke-virtual {p2, v0}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 4680
    :cond_0
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$5;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 4681
    iget-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$5;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$5;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p3}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p3

    invoke-static {p3}, Lorg/telegram/ui/web/BotWebViewContainer;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/web/BotWebViewContainer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p3

    invoke-static {p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$raw;->ic_download:I

    sget v0, Lorg/telegram/messenger/R$string;->WebDownloadingFile:I

    new-array v1, p1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p4, v1, v2

    .line 4682
    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p2

    .line 4683
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    .line 4686
    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6

    .line 4658
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$5;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDownloadStart "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->d(Ljava/lang/String;)V

    .line 4660
    :try_start_0
    const-string v0, "blob:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v1, p0

    goto/16 :goto_2

    .line 4664
    :cond_0
    invoke-direct {p0, p1, p3, p4}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$5;->getFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4666
    new-instance v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$5$$ExternalSyntheticLambda0;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v3, p4

    :try_start_1
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$5$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$5;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4689
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2, p5, p6}, Lorg/telegram/messenger/DownloadController;->canDownloadMedia(IJ)Z

    move-result p1

    if-nez p1, :cond_3

    .line 4690
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object p2, v1, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$5;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4691
    sget p2, Lorg/telegram/messenger/R$string;->WebDownloadAlertTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-wide/16 p2, 0x0

    cmp-long p2, p5, p2

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-lez p2, :cond_1

    .line 4692
    sget p2, Lorg/telegram/messenger/R$string;->WebDownloadAlertInfoWithSize:I

    invoke-static {p5, p6}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object p5

    const/4 p6, 0x2

    new-array p6, p6, [Ljava/lang/Object;

    aput-object v5, p6, p4

    aput-object p5, p6, p3

    invoke-static {p2, p6}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_0
    move-object p1, v0

    goto :goto_3

    :cond_1
    sget p2, Lorg/telegram/messenger/R$string;->WebDownloadAlertInfo:I

    new-array p3, p3, [Ljava/lang/Object;

    aput-object v5, p3, p4

    invoke-static {p2, p3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 4693
    sget p2, Lorg/telegram/messenger/R$string;->WebDownloadAlertYes:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$5$$ExternalSyntheticLambda1;

    invoke-direct {p3, v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$5$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 4694
    sget p2, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 4695
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    const/4 p2, -0x2

    .line 4696
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_2

    .line 4698
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    :goto_2
    return-void

    .line 4701
    :cond_3
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_1
    move-exception v0

    move-object v1, p0

    goto :goto_0

    .line 4705
    :goto_3
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method
