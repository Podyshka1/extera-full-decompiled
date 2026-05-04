.class public Lorg/telegram/ui/web/WebBrowserSettings;
.super Lorg/telegram/ui/Components/UniversalFragment;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/web/WebBrowserSettings$WebsiteView;
    }
.end annotation


# instance fields
.field private addIcon:Landroid/graphics/drawable/Drawable;

.field private cacheSize:J

.field public clearCacheRow:I

.field public clearCookiesRow:I

.field public clearHistoryRow:I

.field public clearListRow:I

.field private cookiesSize:J

.field public enableRow:I

.field public historyRow:I

.field private historySize:J

.field public neverOpenRow:I

.field public searchRow:I

.field private whenHistoryClicked:Lorg/telegram/messenger/Utilities$Callback;


# direct methods
.method public static synthetic $r8$lambda$3q1xCp-5NmlN69BbLG-6uZoVo8Y(Lorg/telegram/ui/web/WebBrowserSettings;Lorg/telegram/ui/Components/EditTextBoldCursor;[Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/web/WebBrowserSettings;->lambda$onClick$11(Lorg/telegram/ui/Components/EditTextBoldCursor;[Lorg/telegram/ui/ActionBar/AlertDialog;)V

    return-void
.end method

.method public static synthetic $r8$lambda$45gN2i-SUMdtJERaxSQNvVxtdyQ(Lorg/telegram/ui/web/WebBrowserSettings;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/web/WebBrowserSettings;->lambda$onClick$5(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$GepSwmr4kQ43AzK81LMyTi6DmxE(Lorg/telegram/ui/web/WebBrowserSettings;[Lorg/telegram/ui/web/HistoryFragment;Lorg/telegram/ui/web/BrowserHistory$Entry;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/web/WebBrowserSettings;->lambda$onClick$6([Lorg/telegram/ui/web/HistoryFragment;Lorg/telegram/ui/web/BrowserHistory$Entry;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MdazX9itiz9h6f_GNZfaAiCZ2bc(Lorg/telegram/ui/web/WebBrowserSettings;[Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/web/WebBrowserSettings;->lambda$onClick$9([Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/ActionBar/AlertDialog;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Nq7xKZry4fMLkgCd_NBKU7nQu8w(Lorg/telegram/ui/web/WebBrowserSettings;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/web/WebBrowserSettings;->lambda$onClick$4(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$PEoFYtjd1f8SBVjTFtOK-_Bh2Zw(Lorg/telegram/ui/web/WebBrowserSettings;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/web/WebBrowserSettings;->lambda$onClick$10(Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QSGbbQLmD2SrEYN9V0Nl_qW1gDg(Lorg/telegram/ui/web/WebBrowserSettings;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/web/WebBrowserSettings;->lambda$loadSizes$0(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QiCirD_0CJqozSmjf21SMYh57ME(Lorg/telegram/ui/web/WebBrowserSettings;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/web/WebBrowserSettings;->lambda$onClick$7(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RTpnujINkXf3xoAr5TqC5WEAaQs(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;)V
    .locals 0

    .line 534
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 535
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$Z0O_h7keqXEgjsTwXt8MvJu9pV4(Lorg/telegram/ui/web/WebBrowserSettings;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/web/WebBrowserSettings;->lambda$onClick$3(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$dR4lhSdKjeYFGa1PQdp2leuX6FQ(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;)V
    .locals 0

    .line 531
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$j8lKl-_im6VnUMjGwoAtcQ4sg9Y(ILandroid/view/View;Ljava/util/concurrent/atomic/AtomicReference;Landroid/view/View;)V
    .locals 0

    .line 423
    invoke-static {p0}, Lorg/telegram/messenger/SharedConfig;->setSearchEngineType(I)V

    .line 424
    check-cast p1, Lorg/telegram/ui/Cells/TextCell;

    invoke-static {}, Lorg/telegram/ui/web/SearchEngine;->getCurrent()Lorg/telegram/ui/web/SearchEngine;

    move-result-object p0

    iget-object p0, p0, Lorg/telegram/ui/web/SearchEngine;->name:Ljava/lang/String;

    const/4 p3, 0x1

    invoke-virtual {p1, p0, p3}, Lorg/telegram/ui/Cells/TextCell;->setValue(Ljava/lang/CharSequence;Z)V

    .line 425
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$kV0AoX5rlmO7cYmRS5iPOUl7k2k(Lorg/telegram/ui/web/WebBrowserSettings;JJ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/web/WebBrowserSettings;->lambda$loadSizes$1(JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$ks02oTqC8cuwSm1GwDVt99sxl3A(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 526
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$w9IiSLaaHdnaA0eQ7WoBhm3AeBY(Lorg/telegram/ui/web/WebBrowserSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/web/WebBrowserSettings;->lambda$loadSizes$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$wVgT-xCm0LTcNQz3KLhOyo8Tp5I(Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 523
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lorg/telegram/ui/Components/UniversalFragment;-><init>()V

    .line 74
    iput-object p1, p0, Lorg/telegram/ui/web/WebBrowserSettings;->whenHistoryClicked:Lorg/telegram/messenger/Utilities$Callback;

    return-void
.end method

.method private static deleteDirectory(Ljava/io/File;Ljava/lang/Boolean;)Z
    .locals 10

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    .line 702
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_3

    .line 705
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    const-string v2, "Cookies"

    const/4 v3, 0x1

    if-eqz v1, :cond_5

    .line 707
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 709
    array-length v4, v1

    move v5, v0

    move v6, v3

    :goto_0
    if-ge v5, v4, :cond_4

    aget-object v7, v1, v5

    if-eqz p1, :cond_1

    .line 710
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eq v8, v9, :cond_1

    goto :goto_1

    .line 713
    :cond_1
    invoke-static {v7, p1}, Lorg/telegram/ui/web/WebBrowserSettings;->deleteDirectory(Ljava/io/File;Ljava/lang/Boolean;)Z

    move-result v7

    if-nez v7, :cond_2

    move v6, v0

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    move v6, v3

    :cond_4
    if-eqz v6, :cond_7

    .line 719
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_2

    :cond_5
    if-eqz p1, :cond_6

    .line 722
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eq p1, v1, :cond_6

    return v0

    .line 725
    :cond_6
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_7
    :goto_2
    return v3

    :cond_8
    :goto_3
    return v0
.end method

.method private static getDirectorySize(Ljava/io/File;Ljava/lang/Boolean;)J
    .locals 6

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_5

    .line 681
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 685
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 686
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 688
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p0, v3

    .line 689
    invoke-static {v4, p1}, Lorg/telegram/ui/web/WebBrowserSettings;->getDirectorySize(Ljava/io/File;Ljava/lang/Boolean;)J

    move-result-wide v4

    add-long/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-wide v0

    :cond_2
    if-eqz p1, :cond_4

    .line 693
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Cookies"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eq p1, v2, :cond_4

    :cond_3
    return-wide v0

    .line 696
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide p0

    return-wide p0

    :cond_5
    :goto_1
    return-wide v0
.end method

.method private synthetic lambda$loadSizes$0(Ljava/util/ArrayList;)V
    .locals 2

    .line 103
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lorg/telegram/ui/web/WebBrowserSettings;->historySize:J

    .line 104
    iget-object p1, p0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 105
    iget-object p1, p0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$loadSizes$1(JJ)V
    .locals 0

    .line 144
    iput-wide p1, p0, Lorg/telegram/ui/web/WebBrowserSettings;->cacheSize:J

    .line 145
    iput-wide p3, p0, Lorg/telegram/ui/web/WebBrowserSettings;->cookiesSize:J

    .line 146
    iget-object p1, p0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz p1, :cond_0

    iget-object p2, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 147
    iget-object p1, p0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$loadSizes$2()V
    .locals 13

    .line 117
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "webview.db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 119
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    .line 121
    :goto_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v5, "webviewCache.db"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 122
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 123
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long/2addr v3, v5

    .line 125
    :cond_1
    new-instance v0, Ljava/io/File;

    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v6, "app_webview"

    invoke-direct {v0, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 127
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v5}, Lorg/telegram/ui/web/WebBrowserSettings;->getDirectorySize(Ljava/io/File;Ljava/lang/Boolean;)J

    move-result-wide v7

    add-long/2addr v3, v7

    .line 129
    :cond_2
    new-instance v0, Ljava/io/File;

    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v7, "cache/WebView"

    invoke-direct {v0, v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    .line 131
    invoke-static {v0, v5}, Lorg/telegram/ui/web/WebBrowserSettings;->getDirectorySize(Ljava/io/File;Ljava/lang/Boolean;)J

    move-result-wide v7

    add-long/2addr v3, v7

    :cond_3
    move-wide v9, v3

    .line 135
    new-instance v0, Ljava/io/File;

    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v0, v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 137
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lorg/telegram/ui/web/WebBrowserSettings;->getDirectorySize(Ljava/io/File;Ljava/lang/Boolean;)J

    move-result-wide v1

    :cond_4
    move-wide v11, v1

    .line 143
    new-instance v7, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda13;

    move-object v8, p0

    invoke-direct/range {v7 .. v12}, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/web/WebBrowserSettings;JJ)V

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onClick$10(Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 486
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const-wide/16 p4, 0x320

    .line 487
    invoke-virtual {p2, p4, p5}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismissUnless(J)V

    .line 488
    invoke-static {}, Lorg/telegram/ui/web/WebMetadataCache;->getInstance()Lorg/telegram/ui/web/WebMetadataCache;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/telegram/ui/web/WebMetadataCache;->get(Ljava/lang/String;)Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 490
    iget-object p1, p0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onClick$11(Lorg/telegram/ui/Components/EditTextBoldCursor;[Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 6

    .line 457
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 458
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 459
    const-string v2, "https://"

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 460
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_6

    .line 462
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    goto/16 :goto_0

    .line 466
    :cond_2
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 467
    const-string v1, "www."

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 469
    :cond_3
    invoke-static {}, Lorg/telegram/ui/web/RestrictedDomainsList;->getInstance()Lorg/telegram/ui/web/RestrictedDomainsList;

    move-result-object v1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v3}, Lorg/telegram/ui/web/RestrictedDomainsList;->setRestricted(Z[Ljava/lang/String;)V

    .line 470
    invoke-static {}, Lorg/telegram/ui/web/WebMetadataCache;->getInstance()Lorg/telegram/ui/web/WebMetadataCache;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/web/WebMetadataCache;->get(Ljava/lang/String;)Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 471
    iget-object v3, v1, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;->sitename:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v1, v1, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;->favicon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    const/4 p1, 0x0

    .line 472
    aget-object p1, p2, p1

    if-eqz p1, :cond_4

    .line 473
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 475
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v4}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void

    .line 477
    :cond_5
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x3

    invoke-direct {v1, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 478
    new-instance v3, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda14;

    invoke-direct {v3, p0, p2, v1}, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/web/WebBrowserSettings;[Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/ActionBar/AlertDialog;)V

    const-wide/16 v4, 0x1388

    .line 483
    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    const-wide/16 v4, 0x12c

    .line 484
    invoke-virtual {v1, v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog;->showDelayed(J)V

    .line 485
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, v3, v1, p1}, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/web/WebBrowserSettings;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lorg/telegram/ui/web/WebMetadataCache;->retrieveFaviconAndSitename(Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback2;)V

    return-void

    .line 463
    :cond_6
    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onClick$3(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 1

    .line 303
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string p2, "webview.db"

    invoke-virtual {p1, p2}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 304
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string p2, "webviewCache.db"

    invoke-virtual {p1, p2}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 305
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebStorage;->deleteAllData()V

    .line 307
    :try_start_0
    new-instance p1, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    .line 308
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 309
    invoke-virtual {p1}, Landroid/webkit/WebView;->clearHistory()V

    .line 310
    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :catch_0
    :try_start_1
    new-instance p1, Ljava/io/File;

    sget-object p2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v0, "app_webview"

    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 315
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, p2}, Lorg/telegram/ui/web/WebBrowserSettings;->deleteDirectory(Ljava/io/File;Ljava/lang/Boolean;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 318
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 321
    :cond_0
    :goto_0
    :try_start_2
    new-instance p1, Ljava/io/File;

    sget-object p2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v0, "cache/WebView"

    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 323
    invoke-static {p1, p2}, Lorg/telegram/ui/web/WebBrowserSettings;->deleteDirectory(Ljava/io/File;Ljava/lang/Boolean;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    .line 326
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 328
    :cond_1
    :goto_1
    invoke-static {}, Lorg/telegram/ui/web/WebMetadataCache;->getInstance()Lorg/telegram/ui/web/WebMetadataCache;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/web/WebMetadataCache;->clear()V

    .line 329
    invoke-direct {p0}, Lorg/telegram/ui/web/WebBrowserSettings;->loadSizes()V

    return-void
.end method

.method private synthetic lambda$onClick$4(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 1

    .line 339
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1

    const/4 p2, 0x0

    .line 341
    invoke-virtual {p1, p2}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    .line 342
    invoke-virtual {p1}, Landroid/webkit/CookieManager;->flush()V

    .line 345
    :try_start_0
    new-instance p1, Ljava/io/File;

    sget-object p2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v0, "app_webview"

    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 347
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, p2}, Lorg/telegram/ui/web/WebBrowserSettings;->deleteDirectory(Ljava/io/File;Ljava/lang/Boolean;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 350
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 352
    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/web/WebBrowserSettings;->loadSizes()V

    return-void
.end method

.method private synthetic lambda$onClick$5(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 367
    invoke-static {}, Lorg/telegram/ui/web/BrowserHistory;->clearHistory()V

    const-wide/16 p1, 0x0

    .line 368
    iput-wide p1, p0, Lorg/telegram/ui/web/WebBrowserSettings;->historySize:J

    .line 369
    iget-object p1, p0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void
.end method

.method private synthetic lambda$onClick$6([Lorg/telegram/ui/web/HistoryFragment;Lorg/telegram/ui/web/BrowserHistory$Entry;)V
    .locals 1

    const/4 v0, 0x0

    .line 377
    aget-object p1, p1, v0

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    .line 378
    iget-object p1, p0, Lorg/telegram/ui/web/WebBrowserSettings;->whenHistoryClicked:Lorg/telegram/messenger/Utilities$Callback;

    if-eqz p1, :cond_0

    .line 379
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    .line 380
    iget-object p1, p0, Lorg/telegram/ui/web/WebBrowserSettings;->whenHistoryClicked:Lorg/telegram/messenger/Utilities$Callback;

    invoke-interface {p1, p2}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    .line 382
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p2, Lorg/telegram/ui/web/BrowserHistory$Entry;->url:Ljava/lang/String;

    invoke-static {p1, p2}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onClick$7(Ljava/util/ArrayList;)V
    .locals 3

    .line 395
    invoke-static {}, Lorg/telegram/ui/web/RestrictedDomainsList;->getInstance()Lorg/telegram/ui/web/RestrictedDomainsList;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/web/RestrictedDomainsList;->setRestricted(Z[Ljava/lang/String;)V

    .line 396
    iget-object p1, p0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void
.end method

.method private synthetic lambda$onClick$9([Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 2

    const/4 v0, 0x0

    .line 479
    aget-object p1, p1, v0

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    const-wide/16 v0, 0x320

    .line 480
    invoke-virtual {p2, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismissUnless(J)V

    .line 481
    iget-object p1, p0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void
.end method

.method private loadSizes()V
    .locals 2

    .line 102
    new-instance v0, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/web/WebBrowserSettings;)V

    invoke-static {v0}, Lorg/telegram/ui/web/BrowserHistory;->getHistory(Lorg/telegram/messenger/Utilities$Callback;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/telegram/ui/web/WebBrowserSettings;->historySize:J

    .line 110
    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 115
    :cond_0
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/web/WebBrowserSettings;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 5

    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->poll_add_circle:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 168
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->poll_add_plus:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 169
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 170
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 171
    new-instance v2, Lorg/telegram/ui/web/WebBrowserSettings$1;

    invoke-direct {v2, p0, v0, v1}, Lorg/telegram/ui/web/WebBrowserSettings$1;-><init>(Lorg/telegram/ui/web/WebBrowserSettings;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v2, p0, Lorg/telegram/ui/web/WebBrowserSettings;->addIcon:Landroid/graphics/drawable/Drawable;

    .line 179
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/UniversalFragment;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 181
    iget-object p1, p0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/UniversalRecyclerView;->setSections()V

    .line 182
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setAdaptiveBackground(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 184
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 94
    sget p2, Lorg/telegram/messenger/NotificationCenter;->webViewResolved:I

    if-ne p1, p2, :cond_0

    .line 95
    iget-object p1, p0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz p1, :cond_0

    .line 96
    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_0
    return-void
.end method

.method protected fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 10

    const/4 p2, -0x1

    .line 222
    iput p2, p0, Lorg/telegram/ui/web/WebBrowserSettings;->enableRow:I

    .line 223
    iput p2, p0, Lorg/telegram/ui/web/WebBrowserSettings;->clearCookiesRow:I

    .line 224
    iput p2, p0, Lorg/telegram/ui/web/WebBrowserSettings;->clearCacheRow:I

    .line 225
    iput p2, p0, Lorg/telegram/ui/web/WebBrowserSettings;->historyRow:I

    .line 226
    iput p2, p0, Lorg/telegram/ui/web/WebBrowserSettings;->clearHistoryRow:I

    .line 227
    iput p2, p0, Lorg/telegram/ui/web/WebBrowserSettings;->clearListRow:I

    .line 228
    iput p2, p0, Lorg/telegram/ui/web/WebBrowserSettings;->searchRow:I

    .line 230
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/web/WebBrowserSettings;->enableRow:I

    .line 231
    sget p2, Lorg/telegram/messenger/R$string;->BrowserSettingsEnable:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {v0, p2}, Lorg/telegram/ui/Components/UItem;->asRippleCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->inappBrowser:Z

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    sget p2, Lorg/telegram/messenger/R$string;->BrowserSettingsEnableInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->inappBrowser:Z

    if-nez p2, :cond_0

    .line 234
    sget p2, Lorg/telegram/messenger/R$string;->BrowserSettingsCustomTabsTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    sget p2, Lorg/telegram/messenger/R$string;->BrowserSettingsCustomTabs:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0xa

    invoke-static {v1, p2}, Lorg/telegram/ui/Components/UItem;->asRadio(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->customTabs:Z

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    sget p2, Lorg/telegram/messenger/R$string;->BrowserSettingsNoCustomTabs:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0xb

    invoke-static {v1, p2}, Lorg/telegram/ui/Components/UItem;->asRadio(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->customTabs:Z

    xor-int/2addr v0, v1

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    sget p2, Lorg/telegram/messenger/R$string;->BrowserSettingsNoCustomTabsInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 239
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/web/WebBrowserSettings;->clearCookiesRow:I

    .line 240
    sget p2, Lorg/telegram/messenger/R$drawable;->menu_clear_cookies:I

    sget v0, Lorg/telegram/messenger/R$string;->BrowserSettingsCookiesClear:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/web/WebBrowserSettings;->cookiesSize:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    const-string v6, ""

    if-lez v5, :cond_1

    invoke-static {v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v6

    :goto_0
    const/4 v2, 0x3

    invoke-static {v2, p2, v0, v1}, Lorg/telegram/ui/Components/UItem;->asButton(IILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/web/WebBrowserSettings;->clearCacheRow:I

    .line 242
    sget p2, Lorg/telegram/messenger/R$drawable;->menu_clear_cache:I

    sget v0, Lorg/telegram/messenger/R$string;->BrowserSettingsCacheClear:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/web/WebBrowserSettings;->cacheSize:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    invoke-static {v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v6

    :goto_1
    const/4 v2, 0x2

    invoke-static {v2, p2, v0, v1}, Lorg/telegram/ui/Components/UItem;->asButton(IILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    sget p2, Lorg/telegram/messenger/R$string;->BrowserSettingsCookiesInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    iget-wide v0, p0, Lorg/telegram/ui/web/WebBrowserSettings;->historySize:J

    cmp-long p2, v0, v3

    const/4 v0, 0x0

    if-lez p2, :cond_3

    .line 245
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/web/WebBrowserSettings;->historyRow:I

    .line 246
    sget p2, Lorg/telegram/messenger/R$drawable;->menu_clear_recent:I

    sget v1, Lorg/telegram/messenger/R$string;->BrowserSettingsHistoryShow:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2, p2, v1}, Lorg/telegram/ui/Components/UItem;->asButton(IILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/web/WebBrowserSettings;->clearHistoryRow:I

    .line 248
    sget p2, Lorg/telegram/messenger/R$drawable;->menu_clear_cache:I

    sget v1, Lorg/telegram/messenger/R$string;->BrowserSettingsHistoryClear:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/web/WebBrowserSettings;->historySize:J

    long-to-int v2, v2

    const/16 v3, 0x2c

    const-string v4, "BrowserSettingsHistoryPages"

    invoke-static {v4, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    invoke-static {v3, p2, v1, v2}, Lorg/telegram/ui/Components/UItem;->asButton(IILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    :cond_3
    sget p2, Lorg/telegram/messenger/R$string;->BrowserSettingsNeverOpenInTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/web/WebBrowserSettings;->neverOpenRow:I

    .line 253
    iget-object p2, p0, Lorg/telegram/ui/web/WebBrowserSettings;->addIcon:Landroid/graphics/drawable/Drawable;

    sget v1, Lorg/telegram/messenger/R$string;->BrowserSettingsNeverOpenInAdd:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2, p2, v1}, Lorg/telegram/ui/Components/UItem;->asButton(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->accent()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    invoke-static {}, Lorg/telegram/ui/web/RestrictedDomainsList;->getInstance()Lorg/telegram/ui/web/RestrictedDomainsList;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/web/RestrictedDomainsList;->load()V

    .line 255
    invoke-static {}, Lorg/telegram/ui/web/RestrictedDomainsList;->getInstance()Lorg/telegram/ui/web/RestrictedDomainsList;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/ui/web/RestrictedDomainsList;->restrictedDomains:Ljava/util/ArrayList;

    .line 256
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_2
    if-ge v3, v1, :cond_a

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Ljava/util/ArrayList;

    .line 258
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move-object v7, v0

    move v8, v2

    :cond_4
    if-ge v8, v5, :cond_5

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v8, v8, 0x1

    check-cast v7, Ljava/lang/String;

    .line 259
    invoke-static {}, Lorg/telegram/ui/web/WebMetadataCache;->getInstance()Lorg/telegram/ui/web/WebMetadataCache;

    move-result-object v9

    invoke-virtual {v9, v7}, Lorg/telegram/ui/web/WebMetadataCache;->get(Ljava/lang/String;)Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;

    move-result-object v7

    if-eqz v7, :cond_4

    :cond_5
    if-nez v7, :cond_6

    :goto_3
    move-object v5, v6

    goto :goto_4

    .line 262
    :cond_6
    iget-object v5, v7, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;->sitename:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, v7, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;->title:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_3

    :cond_7
    iget-object v5, v7, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;->title:Ljava/lang/String;

    goto :goto_4

    :cond_8
    iget-object v5, v7, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;->sitename:Ljava/lang/String;

    :goto_4
    if-nez v7, :cond_9

    move-object v7, v0

    goto :goto_5

    :cond_9
    iget-object v7, v7, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;->favicon:Landroid/graphics/Bitmap;

    :goto_5
    invoke-static {v4, v5, v7}, Lorg/telegram/ui/web/WebBrowserSettings$WebsiteView$Factory;->as(Ljava/util/ArrayList;Ljava/lang/String;Landroid/graphics/Bitmap;)Lorg/telegram/ui/Components/UItem;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 264
    :cond_a
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_b

    .line 265
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/web/WebBrowserSettings;->clearListRow:I

    .line 266
    sget p2, Lorg/telegram/messenger/R$drawable;->msg_clearcache:I

    sget v0, Lorg/telegram/messenger/R$string;->BrowserSettingsNeverOpenInClearList:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v1, p2, v0}, Lorg/telegram/ui/Components/UItem;->asButton(IILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->red()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    :cond_b
    sget p2, Lorg/telegram/messenger/R$string;->BrowserSettingsNeverOpenInInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/web/WebBrowserSettings;->searchRow:I

    .line 270
    sget p2, Lorg/telegram/messenger/R$drawable;->msg_search:I

    sget v0, Lorg/telegram/messenger/R$string;->SearchEngine:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lorg/telegram/ui/web/SearchEngine;->getCurrent()Lorg/telegram/ui/web/SearchEngine;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/web/SearchEngine;->name:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-static {v2, p2, v0, v1}, Lorg/telegram/ui/Components/UItem;->asButton(IILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    sget p2, Lorg/telegram/messenger/R$string;->BrowserSettingsSearchEngineInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    sget-boolean p2, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz p2, :cond_c

    const/16 p2, 0xc

    .line 273
    const-string v0, "adaptable colors"

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->adaptableColorInBrowser:Z

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 p2, 0xd

    .line 274
    const-string v0, "only local IV"

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->onlyLocalInstantView:Z

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    return-void
.end method

.method protected getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 197
    sget v0, Lorg/telegram/messenger/R$string;->BrowserSettingsTitle:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLightStatusBar()Z
    .locals 1

    .line 192
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->isLightStatusBar()Z

    move-result v0

    return v0
.end method

.method protected onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 281
    iget v3, v1, Lorg/telegram/ui/Components/UItem;->id:I

    const/16 v4, 0xc

    if-ne v3, v4, :cond_0

    .line 282
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleBrowserAdaptableColors()V

    .line 283
    move-object v1, v2

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->adaptableColorInBrowser:Z

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    return-void

    :cond_0
    const/16 v4, 0xd

    if-ne v3, v4, :cond_1

    .line 285
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleLocalInstantView()V

    .line 286
    move-object v1, v2

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->onlyLocalInstantView:Z

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    return-void

    :cond_1
    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 288
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleInappBrowser()V

    .line 289
    move-object v1, v2

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->inappBrowser:Z

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 290
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->inappBrowser:Z

    if-eqz v2, :cond_2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundChecked:I

    goto :goto_0

    :cond_2
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundUnchecked:I

    :goto_0
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setBackgroundColorAnimated(ZI)V

    .line 291
    iget-object v1, v0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v1, v1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void

    :cond_3
    const/16 v5, 0xa

    if-ne v3, v5, :cond_4

    .line 293
    invoke-static {v4}, Lorg/telegram/messenger/SharedConfig;->toggleCustomTabs(Z)V

    .line 294
    iget-object v1, v0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v1, v1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void

    :cond_4
    const/16 v5, 0xb

    const/4 v6, 0x0

    if-ne v3, v5, :cond_5

    .line 296
    invoke-static {v6}, Lorg/telegram/messenger/SharedConfig;->toggleCustomTabs(Z)V

    .line 297
    iget-object v1, v0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v1, v1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void

    .line 298
    :cond_5
    const-string v5, ")"

    const-string v7, " ("

    const-wide/16 v8, 0x0

    const/4 v10, 0x2

    const/4 v11, -0x1

    const-string v12, ""

    const/4 v13, 0x0

    if-ne v3, v10, :cond_7

    .line 299
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v2, Lorg/telegram/messenger/R$string;->BrowserSettingsCacheClear:I

    .line 300
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->BrowserSettingsCacheClearText:I

    .line 301
    iget-wide v14, v0, Lorg/telegram/ui/web/WebBrowserSettings;->cacheSize:J

    cmp-long v3, v14, v8

    if-nez v3, :cond_6

    goto :goto_1

    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v0, Lorg/telegram/ui/web/WebBrowserSettings;->cacheSize:J

    invoke-static {v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_1
    new-array v3, v4, [Ljava/lang/Object;

    aput-object v12, v3, v6

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->Clear:I

    .line 302
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/web/WebBrowserSettings;)V

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->Cancel:I

    .line 331
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v13}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    .line 332
    invoke-virtual {v1, v11}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->makeRed(I)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    .line 333
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void

    :cond_7
    const/4 v14, 0x3

    if-ne v3, v14, :cond_9

    .line 335
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v2, Lorg/telegram/messenger/R$string;->BrowserSettingsCookiesClear:I

    .line 336
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->BrowserSettingsCookiesClearText:I

    .line 337
    iget-wide v14, v0, Lorg/telegram/ui/web/WebBrowserSettings;->cookiesSize:J

    cmp-long v3, v14, v8

    if-nez v3, :cond_8

    goto :goto_2

    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v0, Lorg/telegram/ui/web/WebBrowserSettings;->cookiesSize:J

    invoke-static {v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_2
    new-array v3, v4, [Ljava/lang/Object;

    aput-object v12, v3, v6

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->Clear:I

    .line 338
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0}, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/web/WebBrowserSettings;)V

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->Cancel:I

    .line 354
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v13}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    .line 355
    invoke-virtual {v1, v11}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->makeRed(I)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    .line 356
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void

    :cond_9
    const/4 v5, 0x7

    if-ne v3, v5, :cond_b

    .line 359
    invoke-static {}, Lorg/telegram/ui/web/BrowserHistory;->getHistory()Ljava/util/ArrayList;

    move-result-object v1

    .line 360
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-wide v7, 0x7fffffffffffffffL

    move v3, v6

    :goto_3
    if-ge v3, v2, :cond_a

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, Lorg/telegram/ui/web/BrowserHistory$Entry;

    .line 361
    iget-wide v9, v5, Lorg/telegram/ui/web/BrowserHistory$Entry;->time:J

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    goto :goto_3

    .line 363
    :cond_a
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v2, Lorg/telegram/messenger/R$string;->BrowserSettingsHistoryClear:I

    .line 364
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->BrowserSettingsHistoryClearText:I

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    .line 365
    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->formatDateChat(J)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v6

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->Clear:I

    .line 366
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda3;

    invoke-direct {v3, v0}, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/web/WebBrowserSettings;)V

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->Cancel:I

    .line 371
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v13}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    .line 372
    invoke-virtual {v1, v11}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->makeRed(I)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    .line 373
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void

    :cond_b
    const/16 v5, 0x9

    if-ne v3, v5, :cond_c

    .line 375
    new-array v1, v4, [Lorg/telegram/ui/web/HistoryFragment;

    aput-object v13, v1, v6

    .line 376
    new-instance v2, Lorg/telegram/ui/web/HistoryFragment;

    new-instance v3, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda4;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/web/WebBrowserSettings;[Lorg/telegram/ui/web/HistoryFragment;)V

    invoke-direct {v2, v13, v3}, Lorg/telegram/ui/web/HistoryFragment;-><init>(Ljava/lang/Runnable;Lorg/telegram/messenger/Utilities$Callback;)V

    aput-object v2, v1, v6

    .line 385
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    :cond_c
    const/4 v5, 0x5

    if-ne v3, v5, :cond_d

    .line 387
    invoke-static {}, Lorg/telegram/ui/web/RestrictedDomainsList;->getInstance()Lorg/telegram/ui/web/RestrictedDomainsList;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/web/RestrictedDomainsList;->restrictedDomains:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 388
    invoke-static {}, Lorg/telegram/ui/web/RestrictedDomainsList;->getInstance()Lorg/telegram/ui/web/RestrictedDomainsList;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/web/RestrictedDomainsList;->scheduleSave()V

    .line 389
    iget-object v1, v0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v1, v1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void

    .line 390
    :cond_d
    const-class v3, Lorg/telegram/ui/web/WebBrowserSettings$WebsiteView$Factory;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/UItem;->instanceOf(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 391
    move-object v1, v2

    check-cast v1, Lorg/telegram/ui/web/WebBrowserSettings$WebsiteView;

    .line 392
    invoke-static {v1}, Lorg/telegram/ui/web/WebBrowserSettings$WebsiteView;->-$$Nest$fgetdomains(Lorg/telegram/ui/web/WebBrowserSettings$WebsiteView;)Ljava/util/ArrayList;

    move-result-object v2

    .line 393
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    invoke-static {v3, v1}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Landroid/view/ViewGroup;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$drawable;->menu_delete_old:I

    sget v4, Lorg/telegram/messenger/R$string;->Remove:I

    .line 394
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda5;

    invoke-direct {v5, v0, v2}, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/web/WebBrowserSettings;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v3, v4, v5}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    .line 398
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    return-void

    .line 399
    :cond_e
    iget v1, v1, Lorg/telegram/ui/Components/UItem;->id:I

    const/4 v3, 0x6

    if-ne v1, v3, :cond_12

    .line 400
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_f

    goto/16 :goto_6

    .line 403
    :cond_f
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 405
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 406
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 408
    invoke-static {}, Lorg/telegram/ui/web/SearchEngine;->getSearchEngines()Ljava/util/ArrayList;

    move-result-object v5

    .line 409
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v8, v7, [Ljava/lang/CharSequence;

    move v9, v6

    :goto_4
    if-ge v9, v7, :cond_11

    .line 412
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/ui/web/SearchEngine;

    .line 413
    iget-object v11, v11, Lorg/telegram/ui/web/SearchEngine;->name:Ljava/lang/String;

    aput-object v11, v8, v9

    .line 416
    new-instance v11, Lorg/telegram/ui/Cells/RadioColorCell;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/telegram/ui/Cells/RadioColorCell;-><init>(Landroid/content/Context;)V

    const/high16 v12, 0x40800000    # 4.0f

    .line 417
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-virtual {v11, v14, v6, v12, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 418
    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackground:I

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v12

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_dialogRadioBackgroundChecked:I

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v14

    invoke-virtual {v11, v12, v14}, Lorg/telegram/ui/Cells/RadioColorCell;->setCheckColor(II)V

    .line 419
    aget-object v12, v8, v9

    sget v14, Lorg/telegram/messenger/SharedConfig;->searchEngineType:I

    if-ne v9, v14, :cond_10

    move v14, v4

    goto :goto_5

    :cond_10
    move v14, v6

    :goto_5
    invoke-virtual {v11, v12, v14}, Lorg/telegram/ui/Cells/RadioColorCell;->setTextAndValue(Ljava/lang/CharSequence;Z)V

    .line 420
    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v12

    invoke-static {v12, v10}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 421
    invoke-virtual {v3, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 422
    new-instance v12, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda6;

    invoke-direct {v12, v9, v2, v1}, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda6;-><init>(ILandroid/view/View;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 429
    :cond_11
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v4, Lorg/telegram/messenger/R$string;->SearchEngine:I

    .line 430
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v2

    .line 431
    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Cancel"

    sget v4, Lorg/telegram/messenger/R$string;->Cancel:I

    .line 432
    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v13}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v2

    .line 433
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v2

    .line 434
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 435
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    :cond_12
    const/4 v2, 0x4

    if-ne v1, v2, :cond_13

    .line 437
    new-array v1, v4, [Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 438
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v7

    invoke-direct {v2, v5, v7}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 439
    sget v5, Lorg/telegram/messenger/R$string;->BrowserSettingsAddTitle:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 441
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 442
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 444
    new-instance v7, Landroid/widget/TextView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 445
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v9, 0x41800000    # 16.0f

    .line 446
    invoke-virtual {v7, v4, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 447
    sget v9, Lorg/telegram/messenger/R$string;->BrowserSettingsAddText:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v18, 0x41c00000    # 24.0f

    const/high16 v19, 0x41400000    # 12.0f

    const/4 v14, -0x1

    const/4 v15, -0x2

    const/high16 v16, 0x41c00000    # 24.0f

    const/high16 v17, 0x40a00000    # 5.0f

    .line 448
    invoke-static/range {v14 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 450
    new-instance v7, Lorg/telegram/ui/web/WebBrowserSettings$2;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v7, v0, v9}, Lorg/telegram/ui/web/WebBrowserSettings$2;-><init>(Lorg/telegram/ui/web/WebBrowserSettings;Landroid/content/Context;)V

    .line 456
    new-instance v9, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda7;

    invoke-direct {v9, v0, v7, v1}, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/web/WebBrowserSettings;Lorg/telegram/ui/Components/EditTextBoldCursor;[Lorg/telegram/ui/ActionBar/AlertDialog;)V

    .line 495
    new-instance v10, Lorg/telegram/ui/web/WebBrowserSettings$3;

    invoke-direct {v10, v0, v9}, Lorg/telegram/ui/web/WebBrowserSettings$3;-><init>(Lorg/telegram/ui/web/WebBrowserSettings;Ljava/lang/Runnable;)V

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const/high16 v10, 0x41900000    # 18.0f

    .line 505
    invoke-virtual {v7, v4, v10}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    .line 506
    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 507
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v10

    invoke-static {v8, v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 508
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_groupcreate_hintText:I

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v10

    invoke-static {v8, v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintColor(I)V

    .line 509
    sget v8, Lorg/telegram/messenger/R$string;->BrowserSettingsAddHint:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintText(Ljava/lang/CharSequence;)V

    .line 510
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 511
    invoke-virtual {v7, v4}, Landroid/view/View;->setFocusable(Z)V

    const/16 v4, 0x4000

    .line 512
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setInputType(I)V

    .line 513
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputField:I

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v8

    invoke-static {v4, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputFieldActivated:I

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v10

    invoke-static {v8, v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v11

    invoke-static {v10, v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v10

    invoke-virtual {v7, v4, v8, v10}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setLineColors(III)V

    .line 514
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 515
    invoke-virtual {v7, v13}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v3, 0x42280000    # 42.0f

    .line 516
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v7, v6, v6, v3, v6}, Landroid/view/View;->setPadding(IIII)V

    const/high16 v14, 0x41c00000    # 24.0f

    const/high16 v15, 0x41200000    # 10.0f

    const/4 v10, -0x1

    const/4 v11, -0x2

    const/high16 v12, 0x41c00000    # 24.0f

    const/4 v13, 0x0

    .line 517
    invoke-static/range {v10 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v5, v7, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 518
    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const/high16 v3, 0x43920000    # 292.0f

    .line 519
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setWidth(I)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 522
    sget v3, Lorg/telegram/messenger/R$string;->Done:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda8;

    invoke-direct {v4, v9}, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda8;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 525
    sget v3, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda9;

    invoke-direct {v4}, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 529
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v2

    aput-object v2, v1, v6

    .line 530
    new-instance v3, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda10;

    invoke-direct {v3, v7}, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 533
    aget-object v2, v1, v6

    new-instance v3, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda1;

    invoke-direct {v3, v7}, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 537
    aget-object v2, v1, v6

    invoke-virtual {v2, v6}, Lorg/telegram/ui/ActionBar/AlertDialog;->setDismissDialogByButtons(Z)V

    .line 538
    aget-object v1, v1, v6

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    :cond_13
    :goto_6
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 2

    .line 81
    invoke-direct {p0}, Lorg/telegram/ui/web/WebBrowserSettings;->loadSizes()V

    .line 82
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->webViewResolved:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 83
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 88
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 89
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->webViewResolved:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onLongClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
