.class Lorg/telegram/messenger/MediaController$MediaLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaLoader"
.end annotation


# instance fields
.field private cancelled:Z

.field private copiedFiles:I

.field private currentAccount:Lorg/telegram/messenger/AccountInstance;

.field private finished:Z

.field private finishedProgress:F

.field private isMusic:Z

.field private loadingMessageObjects:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private messageObjects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private onFinishRunnable:Lorg/telegram/messenger/MessagesStorage$IntCallback;

.field private progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

.field private waitingForFile:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public static synthetic $r8$lambda$9OsHS30S80wJRekNsYnxmCgU7oY(Lorg/telegram/messenger/MediaController$MediaLoader;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController$MediaLoader;->lambda$checkIfFinished$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$GdMw7Mx-U7KtxkZahq6x5T5zqag(Lorg/telegram/messenger/MediaController$MediaLoader;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController$MediaLoader;->lambda$didReceivedNotification$9(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$V5MGDxUC9eAiCc1AK6BTie577zg(Lorg/telegram/messenger/MediaController$MediaLoader;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController$MediaLoader;->lambda$new$0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$X1Vz9lN0eSUtRdh7xpd_PTLHeJk(Lorg/telegram/messenger/MediaController$MediaLoader;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController$MediaLoader;->lambda$copyFile$7(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$XzMQxojrNcSBW1wrHdt-k4vGcdw(Lorg/telegram/messenger/MediaController$MediaLoader;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController$MediaLoader;->lambda$addMessageToLoad$5(Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y3on9DKKkwwaTx0jU7VUcuYzMvs(Lorg/telegram/messenger/MediaController$MediaLoader;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController$MediaLoader;->lambda$start$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$hKSm6jYUXc8QlnmbEO-hDSIV1yQ(Lorg/telegram/messenger/MediaController$MediaLoader;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController$MediaLoader;->lambda$start$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$k8J8sjAGTU89m1NNaVMTTwJyrW0(Lorg/telegram/messenger/MediaController$MediaLoader;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController$MediaLoader;->lambda$checkIfFinished$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$r1q_f-SE82EfU2D3MH47SdUKzUI(Lorg/telegram/messenger/MediaController$MediaLoader;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController$MediaLoader;->lambda$copyFile$8(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$yF2jQxUr-B2koKZhsPMWz0-KWdI(Lorg/telegram/messenger/MediaController$MediaLoader;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController$MediaLoader;->lambda$copyFile$6()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/messenger/AccountInstance;Ljava/util/ArrayList;Lorg/telegram/messenger/MessagesStorage$IntCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/telegram/messenger/AccountInstance;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;",
            "Lorg/telegram/messenger/MessagesStorage$IntCallback;",
            ")V"
        }
    .end annotation

    .line 4967
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4958
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->loadingMessageObjects:Ljava/util/HashMap;

    .line 4968
    iput-object p2, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    .line 4969
    iput-object p3, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->messageObjects:Ljava/util/ArrayList;

    .line 4970
    iput-object p4, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->onFinishRunnable:Lorg/telegram/messenger/MessagesStorage$IntCallback;

    const/4 p2, 0x0

    .line 4971
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result p2

    iput-boolean p2, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->isMusic:Z

    .line 4972
    iget-object p2, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {p2}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    invoke-virtual {p2, p0, p3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4973
    iget-object p2, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {p2}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/NotificationCenter;->fileLoadProgressChanged:I

    invoke-virtual {p2, p0, p3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4974
    iget-object p2, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {p2}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/NotificationCenter;->fileLoadFailed:I

    invoke-virtual {p2, p0, p3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4975
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/PhotoViewer;->isVisible()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;

    invoke-direct {p2}, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 4976
    :goto_0
    new-instance p3, Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 p4, 0x2

    invoke-direct {p3, p1, p4, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p3, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 4977
    sget p1, Lorg/telegram/messenger/R$string;->Loading:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 4978
    iget-object p1, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 4979
    iget-object p1, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCancelDialog(Z)V

    .line 4980
    iget-object p1, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    new-instance p2, Lorg/telegram/messenger/MediaController$MediaLoader$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0}, Lorg/telegram/messenger/MediaController$MediaLoader$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/messenger/MediaController$MediaLoader;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method private addMessageToLoad(Lorg/telegram/messenger/MessageObject;)V
    .locals 1

    .line 5141
    new-instance v0, Lorg/telegram/messenger/MediaController$MediaLoader$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/MediaController$MediaLoader$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/messenger/MediaController$MediaLoader;Lorg/telegram/messenger/MessageObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private checkIfFinished()V
    .locals 1

    .line 5118
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->loadingMessageObjects:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5121
    :cond_0
    new-instance v0, Lorg/telegram/messenger/MediaController$MediaLoader$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/MediaController$MediaLoader$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/messenger/MediaController$MediaLoader;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private copyFile(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z
    .locals 27

    move-object/from16 v1, p0

    .line 5156
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isInternalUri(Landroid/net/Uri;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return v2

    .line 5159
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_a

    :try_start_2
    new-instance v0, Ljava/io/FileOutputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    move-object/from16 v10, p2

    :try_start_3
    invoke-direct {v0, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 5160
    :try_start_4
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 5162
    :try_start_5
    const-class v0, Ljava/io/FileDescriptor;

    const-string v6, "getInt$"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 5163
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 5164
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isInternalUri(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5165
    iget-object v0, v1, Lorg/telegram/messenger/MediaController$MediaLoader;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v0, :cond_1

    .line 5166
    new-instance v0, Lorg/telegram/messenger/MediaController$MediaLoader$$ExternalSyntheticLambda1;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MediaController$MediaLoader$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/MediaController$MediaLoader;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_7

    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    .line 5230
    :try_start_6
    invoke-virtual {v4}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    :goto_1
    move/from16 v16, v2

    move-object/from16 v17, v3

    :goto_2
    move-object v2, v0

    goto/16 :goto_11

    :cond_2
    :goto_3
    :try_start_7
    invoke-virtual {v5}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    return v2

    :catch_0
    move-exception v0

    :goto_4
    move/from16 v16, v2

    goto/16 :goto_15

    :catchall_2
    move-exception v0

    :goto_5
    move/from16 v16, v2

    move-object/from16 v17, v3

    :goto_6
    move-object v2, v0

    goto/16 :goto_13

    .line 5177
    :goto_7
    :try_start_9
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_3
    const-wide/16 v6, 0x0

    move-wide v13, v6

    :goto_8
    cmp-long v0, v6, v11

    const/high16 v15, 0x42c80000    # 100.0f

    if-gez v0, :cond_4

    .line 5181
    iget-boolean v0, v1, Lorg/telegram/messenger/MediaController$MediaLoader;->cancelled:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    if-eqz v0, :cond_5

    :cond_4
    move/from16 v16, v2

    move-object/from16 v17, v3

    goto :goto_b

    :cond_5
    sub-long v8, v11, v6

    move/from16 v16, v2

    move-object/from16 v17, v3

    const-wide/16 v2, 0x1000

    .line 5184
    :try_start_a
    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    add-long/2addr v2, v6

    cmp-long v0, v2, v11

    if-gez v0, :cond_6

    .line 5185
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const-wide/16 v18, 0x1f4

    sub-long v8, v8, v18

    cmp-long v0, v13, v8

    if-gtz v0, :cond_7

    goto :goto_a

    :catchall_3
    move-exception v0

    :goto_9
    move-object v2, v0

    goto/16 :goto_f

    .line 5186
    :cond_6
    :goto_a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 5187
    iget v0, v1, Lorg/telegram/messenger/MediaController$MediaLoader;->finishedProgress:F

    iget-object v13, v1, Lorg/telegram/messenger/MediaController$MediaLoader;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v15, v13

    long-to-float v6, v6

    mul-float/2addr v15, v6

    long-to-float v6, v11

    div-float/2addr v15, v6

    add-float/2addr v0, v15

    float-to-int v0, v0

    .line 5188
    new-instance v6, Lorg/telegram/messenger/MediaController$MediaLoader$$ExternalSyntheticLambda2;

    invoke-direct {v6, v1, v0}, Lorg/telegram/messenger/MediaController$MediaLoader$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/MediaController$MediaLoader;I)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    move-wide v13, v8

    :cond_7
    move-wide v6, v2

    move/from16 v2, v16

    move-object/from16 v3, v17

    goto :goto_8

    :catchall_4
    move-exception v0

    move/from16 v16, v2

    move-object/from16 v17, v3

    goto :goto_9

    .line 5197
    :goto_b
    iget-boolean v0, v1, Lorg/telegram/messenger/MediaController$MediaLoader;->cancelled:Z

    if-nez v0, :cond_d

    .line 5198
    iget-boolean v0, v1, Lorg/telegram/messenger/MediaController$MediaLoader;->isMusic:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    .line 5199
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->addMediaToGallery(Ljava/io/File;)V

    goto :goto_d

    .line 5201
    :cond_8
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "download"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/app/DownloadManager;

    .line 5203
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 5204
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    .line 5205
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x2e

    .line 5206
    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    const/4 v7, -0x1

    .line 5207
    const-string v8, "text/plain"

    if-eq v6, v7, :cond_a

    add-int/2addr v6, v2

    .line 5208
    :try_start_b
    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 5209
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5210
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    move-object v0, v8

    :cond_9
    move-object/from16 v22, v0

    goto :goto_c

    :cond_a
    move-object/from16 v22, v8

    goto :goto_c

    :cond_b
    move-object/from16 v22, p3

    .line 5217
    :goto_c
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v24

    const/16 v26, 0x1

    const/16 v21, 0x0

    invoke-virtual/range {v18 .. v26}, Landroid/app/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZ)J

    .line 5219
    :goto_d
    iget v0, v1, Lorg/telegram/messenger/MediaController$MediaLoader;->finishedProgress:F

    iget-object v3, v1, Lorg/telegram/messenger/MediaController$MediaLoader;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v15, v3

    add-float/2addr v0, v15

    iput v0, v1, Lorg/telegram/messenger/MediaController$MediaLoader;->finishedProgress:F

    float-to-int v0, v0

    .line 5221
    new-instance v3, Lorg/telegram/messenger/MediaController$MediaLoader$$ExternalSyntheticLambda3;

    invoke-direct {v3, v1, v0}, Lorg/telegram/messenger/MediaController$MediaLoader$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/MediaController$MediaLoader;I)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    if-eqz v4, :cond_c

    .line 5230
    :try_start_c
    invoke-virtual {v4}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto :goto_e

    :catchall_5
    move-exception v0

    goto/16 :goto_2

    :cond_c
    :goto_e
    :try_start_d
    invoke-virtual {v5}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    :try_start_e
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    return v2

    :catch_1
    move-exception v0

    goto :goto_15

    :catchall_6
    move-exception v0

    goto/16 :goto_6

    :cond_d
    if-eqz v4, :cond_e

    :try_start_f
    invoke-virtual {v4}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    :cond_e
    :try_start_10
    invoke-virtual {v5}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    :try_start_11
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1

    goto :goto_16

    :goto_f
    if-eqz v4, :cond_f

    .line 5159
    :try_start_12
    invoke-virtual {v4}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    goto :goto_10

    :catchall_7
    move-exception v0

    :try_start_13
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_f
    :goto_10
    throw v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    :catchall_8
    move-exception v0

    move-object/from16 v10, p2

    goto/16 :goto_1

    :goto_11
    if-eqz v5, :cond_10

    :try_start_14
    invoke-virtual {v5}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    goto :goto_12

    :catchall_9
    move-exception v0

    :try_start_15
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_10
    :goto_12
    throw v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    :catchall_a
    move-exception v0

    move-object/from16 v10, p2

    goto/16 :goto_5

    :goto_13
    :try_start_16
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_b

    goto :goto_14

    :catchall_b
    move-exception v0

    :try_start_17
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_14
    throw v2
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_1

    :catch_2
    move-exception v0

    move-object/from16 v10, p2

    goto/16 :goto_4

    .line 5231
    :goto_15
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 5233
    :goto_16
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    return v16
.end method

.method private synthetic lambda$addMessageToLoad$5(Lorg/telegram/messenger/MessageObject;)V
    .locals 4

    .line 5142
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    .line 5143
    iget-object v1, p1, Lorg/telegram/messenger/MessageObject;->qualityToSave:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v1, :cond_0

    move-object v0, v1

    :cond_0
    if-nez v0, :cond_1

    return-void

    .line 5149
    :cond_1
    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v1

    .line 5150
    iget-object v2, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->loadingMessageObjects:Ljava/util/HashMap;

    invoke-virtual {v2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5151
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v1}, Lorg/telegram/messenger/AccountInstance;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->shouldEncryptPhotoOrVideo()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    invoke-virtual {v1, v0, p1, v3, v2}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;II)V

    return-void
.end method

.method private synthetic lambda$checkIfFinished$3()V
    .locals 2

    .line 5129
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->onFinishRunnable:Lorg/telegram/messenger/MessagesStorage$IntCallback;

    iget v1, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->copiedFiles:I

    invoke-interface {v0, v1}, Lorg/telegram/messenger/MessagesStorage$IntCallback;->run(I)V

    return-void
.end method

.method private synthetic lambda$checkIfFinished$4()V
    .locals 2

    .line 5123
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5124
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 5126
    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->finished:Z

    .line 5128
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->onFinishRunnable:Lorg/telegram/messenger/MessagesStorage$IntCallback;

    if-eqz v0, :cond_1

    .line 5129
    new-instance v0, Lorg/telegram/messenger/MediaController$MediaLoader$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/MediaController$MediaLoader$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/MediaController$MediaLoader;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 5132
    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 5134
    :cond_1
    :goto_2
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 5135
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileLoadProgressChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 5136
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileLoadFailed:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method private synthetic lambda$copyFile$6()V
    .locals 1

    .line 5168
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 5170
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$copyFile$7(I)V
    .locals 1

    .line 5190
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 5192
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$copyFile$8(I)V
    .locals 1

    .line 5223
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 5225
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$didReceivedNotification$9(I)V
    .locals 1

    .line 5253
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 5255
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x1

    .line 4981
    iput-boolean p1, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->cancelled:Z

    return-void
.end method

.method private synthetic lambda$start$1()V
    .locals 1

    .line 4987
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->finished:Z

    if-nez v0, :cond_0

    .line 4988
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$start$2()V
    .locals 14

    .line 4994
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v0, v1, :cond_b

    .line 4995
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v3

    :goto_0
    if-ge v1, v0, :cond_19

    .line 4996
    iget-object v5, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    .line 4997
    iget-object v6, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 4998
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v7

    .line 4999
    iget-object v8, v5, Lorg/telegram/messenger/MessageObject;->qualityToSave:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v8, :cond_0

    move-object v6, v2

    move-object v7, v8

    .line 5003
    :cond_0
    invoke-static {v7}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v7

    if-eqz v6, :cond_1

    .line 5004
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 5005
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5006
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    move-object v6, v2

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_c

    .line 5010
    :cond_1
    :goto_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 5011
    iget-object v6, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v6}, Lorg/telegram/messenger/AccountInstance;->getCurrentAccount()I

    move-result v6

    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v6

    .line 5012
    invoke-static {v5}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v8

    .line 5014
    iget-object v9, v5, Lorg/telegram/messenger/MessageObject;->qualityToSave:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v9, :cond_2

    .line 5015
    invoke-virtual {v6, v9, v2, v3, v4}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;ZZ)Ljava/io/File;

    move-result-object v6

    goto :goto_2

    .line 5017
    :cond_2
    iget-object v9, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v6, v9, v4}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;Z)Ljava/io/File;

    move-result-object v9

    .line 5018
    instance-of v10, v8, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v10, :cond_3

    .line 5019
    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    .line 5020
    iget-object v10, v8, Lorg/telegram/tgnet/TLRPC$MessageMedia;->alt_documents:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    .line 5021
    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$MessageMedia;->alt_documents:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLObject;

    invoke-virtual {v6, v8, v2, v3, v4}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;ZZ)Ljava/io/File;

    move-result-object v6

    goto :goto_2

    :cond_3
    move-object v6, v9

    .line 5025
    :goto_2
    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    .line 5027
    :cond_4
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5028
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_5

    .line 5029
    new-instance v9, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v9, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->waitingForFile:Ljava/util/concurrent/CountDownLatch;

    .line 5030
    invoke-direct {p0, v5}, Lorg/telegram/messenger/MediaController$MediaLoader;->addMessageToLoad(Lorg/telegram/messenger/MessageObject;)V

    .line 5031
    iget-object v9, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->waitingForFile:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v9}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 5033
    :cond_5
    iget-boolean v9, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->cancelled:Z

    if-eqz v9, :cond_6

    goto/16 :goto_b

    .line 5036
    :cond_6
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_8

    .line 5037
    iget-object v8, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v8}, Lorg/telegram/messenger/AccountInstance;->getCurrentAccount()I

    move-result v8

    invoke-static {v8}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v8

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v8, v5, v4}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v8

    .line 5038
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "saving file: correcting path from "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v8, :cond_7

    move-object v6, v2

    goto :goto_3

    :cond_7
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    :goto_3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_8
    if-eqz v8, :cond_a

    .line 5040
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 5041
    iget-boolean v5, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->isMusic:Z

    if-eqz v5, :cond_9

    const/4 v5, 0x3

    goto :goto_4

    :cond_9
    const/4 v5, 0x2

    :goto_4
    invoke-static {v5, v8, v7}, Lorg/telegram/messenger/MediaController;->-$$Nest$smsaveFileInternal(ILjava/io/File;Ljava/lang/String;)Landroid/net/Uri;

    .line 5042
    iget v5, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->copiedFiles:I

    add-int/2addr v5, v4

    iput v5, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->copiedFiles:I

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 5047
    :cond_b
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->isMusic:Z

    if-eqz v0, :cond_c

    .line 5048
    sget-object v0, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_5

    .line 5050
    :cond_c
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 5052
    :goto_5
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 5053
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v5, v3

    :goto_6
    if-ge v5, v1, :cond_19

    .line 5054
    iget-object v6, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject;

    .line 5055
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v7

    .line 5056
    iget-object v8, v6, Lorg/telegram/messenger/MessageObject;->qualityToSave:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v8, :cond_d

    move-object v7, v8

    .line 5059
    :cond_d
    invoke-static {v7}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v7

    .line 5060
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5061
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_10

    const/16 v9, 0x2e

    .line 5062
    invoke-virtual {v7, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v10, v3

    :goto_7
    const/16 v11, 0xa

    if-ge v10, v11, :cond_10

    const/4 v8, -0x1

    .line 5065
    const-string v11, ")"

    const-string v12, "("

    if-eq v9, v8, :cond_e

    .line 5066
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_8

    .line 5068
    :cond_e
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 5070
    :goto_8
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5071
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_f

    move-object v8, v11

    goto :goto_9

    :cond_f
    add-int/lit8 v10, v10, 0x1

    move-object v8, v11

    goto :goto_7

    .line 5076
    :cond_10
    :goto_9
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_11

    .line 5077
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    .line 5079
    :cond_11
    iget-object v7, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 5080
    iget-object v9, v6, Lorg/telegram/messenger/MessageObject;->qualityToSave:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v9, :cond_12

    move-object v7, v2

    :cond_12
    if-eqz v7, :cond_13

    .line 5083
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_13

    .line 5084
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5085
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_13

    move-object v7, v2

    .line 5090
    :cond_13
    iget-object v9, v6, Lorg/telegram/messenger/MessageObject;->qualityToSave:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v9, :cond_14

    .line 5091
    iget-object v7, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v7}, Lorg/telegram/messenger/AccountInstance;->getCurrentAccount()I

    move-result v7

    invoke-static {v7}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v7

    iget-object v9, v6, Lorg/telegram/messenger/MessageObject;->qualityToSave:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v7, v9, v2, v3, v4}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;ZZ)Ljava/io/File;

    move-result-object v7

    goto :goto_a

    :cond_14
    if-eqz v7, :cond_15

    .line 5093
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_16

    .line 5094
    :cond_15
    iget-object v7, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v7}, Lorg/telegram/messenger/AccountInstance;->getCurrentAccount()I

    move-result v7

    invoke-static {v7}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v7

    iget-object v9, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v7, v9}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    .line 5096
    :cond_16
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v7, v9

    .line 5098
    :goto_a
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_17

    .line 5099
    new-instance v9, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v9, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->waitingForFile:Ljava/util/concurrent/CountDownLatch;

    .line 5100
    invoke-direct {p0, v6}, Lorg/telegram/messenger/MediaController$MediaLoader;->addMessageToLoad(Lorg/telegram/messenger/MessageObject;)V

    .line 5101
    iget-object v9, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->waitingForFile:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v9}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 5103
    :cond_17
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_18

    .line 5104
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v7, v8, v6}, Lorg/telegram/messenger/MediaController$MediaLoader;->copyFile(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z

    .line 5105
    iget v6, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->copiedFiles:I

    add-int/2addr v6, v4

    iput v6, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->copiedFiles:I

    :cond_18
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_6

    .line 5109
    :cond_19
    :goto_b
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController$MediaLoader;->checkIfFinished()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 5111
    :goto_c
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 2

    .line 5239
    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    const/4 v0, 0x0

    if-eq p1, p2, :cond_1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileLoadFailed:I

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 5244
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileLoadProgressChanged:I

    if-ne p1, p2, :cond_2

    .line 5245
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/String;

    .line 5246
    iget-object p2, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->loadingMessageObjects:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 5247
    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Long;

    const/4 p2, 0x2

    .line 5248
    aget-object p2, p3, p2

    check-cast p2, Ljava/lang/Long;

    .line 5249
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-float p1, v0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    long-to-float p2, p2

    div-float/2addr p1, p2

    .line 5250
    iget p2, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->finishedProgress:F

    iget-object p3, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p1, p3

    const/high16 p3, 0x42c80000    # 100.0f

    mul-float/2addr p1, p3

    add-float/2addr p2, p1

    float-to-int p1, p2

    .line 5251
    new-instance p2, Lorg/telegram/messenger/MediaController$MediaLoader$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lorg/telegram/messenger/MediaController$MediaLoader$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/MediaController$MediaLoader;I)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 5240
    :cond_1
    :goto_0
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/String;

    .line 5241
    iget-object p2, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->loadingMessageObjects:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 5242
    iget-object p1, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->waitingForFile:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_2
    return-void
.end method

.method public start()V
    .locals 3

    .line 4986
    new-instance v0, Lorg/telegram/messenger/MediaController$MediaLoader$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/MediaController$MediaLoader$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/messenger/MediaController$MediaLoader;)V

    const-wide/16 v1, 0xfa

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 4992
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/telegram/messenger/MediaController$MediaLoader$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MediaController$MediaLoader$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/messenger/MediaController$MediaLoader;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 5114
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
