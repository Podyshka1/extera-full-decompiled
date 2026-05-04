.class public Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/exteragram/messenger/plugins/PythonPluginsEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Updater"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$PythonSdkUpdateInfo;
    }
.end annotation


# static fields
.field private static final PYTHON_SDK_APP_VERSION_CODE_PATTERN:Ljava/util/regex/Pattern;

.field private static final PYTHON_SDK_APP_VERSION_PATTERN:Ljava/util/regex/Pattern;

.field private static TAG:I = 0x0

.field private static isLoading:Z = false

.field private static lastCheckUpdateTime:J = 0x0L

.field private static final notifyRunnable:Ljava/lang/Runnable;

.field public static notifyWhenChangeStatus:Z = false

.field public static status:I


# direct methods
.method public static synthetic $r8$lambda$biBaSY19y99Ajd-Sst0kQVhQjH8()V
    .locals 3

    .line 1613
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->pluginsPySdkInfoChanged:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vmAdHIRud4DIzodi0eDlJGuUNAo(Lorg/telegram/tgnet/TLRPC$messages_Messages;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    if-nez p1, :cond_2

    if-eqz p0, :cond_3

    .line 1519
    invoke-static {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->parsePythonSdkUpdateResponse(Lorg/telegram/tgnet/TLRPC$messages_Messages;)Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$PythonSdkUpdateInfo;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 1521
    sget-boolean p1, Lcom/exteragram/messenger/ExteraConfig;->pluginsPySdkAutoUpdate:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->can_not_skip:Z

    if-nez p1, :cond_1

    .line 1522
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1524
    new-instance v0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$PythonSdkUpdateInfo;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    .line 1595
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$PythonSdkUpdateInfo;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {p1, v0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->savePythonSdkArchive(Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$Document;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x53131fe41c0974dbL    # -2.7685969335495413E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$PythonSdkUpdateInfo;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v1, -0x5313200d1c0974dbL    # -2.7685369495712468E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$PythonSdkUpdateInfo;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iget p0, p0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-wide v1, -0x5313201d1c0974dbL    # -2.7685135411894733E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1603
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v0, -0x5313201f1c0974dbL    # -2.7685106151417516E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_3
    :goto_0
    const/4 p0, 0x2

    .line 1605
    invoke-static {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->setStatus(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$z2V5jQr1rz5nG28sFG1Ezho4pPI(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$PythonSdkUpdateInfo;)V
    .locals 3

    .line 1524
    new-instance v0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$1;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v2

    invoke-direct {v0, v1, p1, v2, p1}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$1;-><init>(Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;ILcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$PythonSdkUpdateInfo;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()I
    .locals 1

    .line 0
    sget v0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->TAG:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetnotifyRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 0
    sget-object v0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->notifyRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputisLoading(Z)V
    .locals 0

    .line 0
    sput-boolean p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->isLoading:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$smcopyArchiveToPluginsDirectory(Lorg/telegram/tgnet/TLRPC$Document;Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->copyArchiveToPluginsDirectory(Lorg/telegram/tgnet/TLRPC$Document;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smsetStatus(I)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->setStatus(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-wide v0, -0x5313204c1c0974dbL    # -2.7684447790680138E-92

    .line 1448
    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->PYTHON_SDK_APP_VERSION_PATTERN:Ljava/util/regex/Pattern;

    const-wide v0, -0x531320681c0974dbL    # -2.7684038143999102E-92

    .line 1449
    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->PYTHON_SDK_APP_VERSION_CODE_PATTERN:Ljava/util/regex/Pattern;

    .line 1613
    new-instance v0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->notifyRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkUpdates()V
    .locals 1

    const/4 v0, 0x0

    .line 1503
    invoke-static {v0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->checkUpdates(Z)V

    return-void
.end method

.method public static checkUpdates(Z)V
    .locals 6

    .line 1509
    sget v0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->lastCheckUpdateTime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x6

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-ltz v0, :cond_2

    :cond_0
    sget v0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->status:I

    const/4 v2, 0x2

    if-le v0, v2, :cond_1

    goto :goto_0

    .line 1510
    :cond_1
    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->pluginsPySdkAutoUpdate:Z

    if-nez v0, :cond_3

    if-nez p0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/exteragram/messenger/ExteraConfig;->sdkUpdateScheduleTimestamp:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    sget-object p0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {p0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    cmp-long p0, v2, v4

    if-gez p0, :cond_3

    :cond_2
    :goto_0
    return-void

    .line 1513
    :cond_3
    invoke-static {v1}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->setStatus(I)V

    .line 1515
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->lastCheckUpdateTime:J

    const-wide v0, -0x53131f371c0974dbL    # -2.7688500366774668E-92

    .line 1516
    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterDocument;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterDocument;-><init>()V

    new-instance v1, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$$ExternalSyntheticLambda0;-><init>()V

    const/16 v2, 0xbb8

    invoke-static {p0, v0, v1, v2}, Lcom/exteragram/messenger/utils/network/RemoteUtils;->searchMessages(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$MessagesFilter;Lorg/telegram/messenger/Utilities$Callback2;I)V

    return-void
.end method

.method private static copyArchiveToPluginsDirectory(Lorg/telegram/tgnet/TLRPC$Document;Z)V
    .locals 4

    .line 1747
    invoke-static {}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->getPythonSdkUpdateFile()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x2

    .line 1749
    :try_start_0
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    invoke-virtual {v2, p0}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, v0}, Lorg/telegram/messenger/AndroidUtilities;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 1750
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v2, -0x53131f9e1c0974dbL    # -2.7686993452198E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1751
    invoke-static {v1}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->setStatus(I)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 1753
    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->getInstance()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/exteragram/messenger/plugins/PluginsController;->restart()V

    goto :goto_1

    :cond_1
    const/4 p0, 0x4

    .line 1754
    invoke-static {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->setStatus(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    const-wide v2, -0x53131fc41c0974dbL    # -2.7686437503130882E-92

    .line 1757
    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1758
    invoke-static {v1}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->setStatus(I)V

    :goto_1
    const/4 p0, 0x0

    .line 1760
    sput-boolean p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->isLoading:Z

    return-void
.end method

.method static deleteSdkUpdateFile()V
    .locals 2

    .line 1495
    invoke-static {}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->getPythonSdkUpdateFile()Ljava/io/File;

    move-result-object v0

    .line 1496
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1497
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v0, 0x0

    .line 1498
    invoke-static {v0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->setStatus(I)V

    :cond_0
    return-void
.end method

.method public static getPythonCurrentSdkFile()Ljava/io/File;
    .locals 5

    .line 1487
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v2

    const-wide v3, -0x53131f0e1c0974dbL    # -2.7689100206557613E-92

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide v2, -0x53131f171c0974dbL    # -2.7688968534410137E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getPythonSdkUpdateFile()Ljava/io/File;
    .locals 5

    .line 1482
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v2

    const-wide v3, -0x53131efe1c0974dbL    # -2.7689334290375348E-92

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide v2, -0x53131f071c0974dbL    # -2.7689202618227872E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getStateString()Ljava/lang/CharSequence;
    .locals 3

    .line 1406
    sget v0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->status:I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->getVersion()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1407
    sget v0, Lorg/telegram/messenger/R$string;->CheckingForUpdates:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 1408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lorg/telegram/messenger/R$string;->LatestVersionInstalled:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v1, -0x53131e9d1c0974dbL    # -2.7690753423520364E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->SDK_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->SDK_BETA:Z

    if-eqz v1, :cond_2

    const-wide v1, -0x53131ea11c0974dbL    # -2.769069490256593E-92

    :goto_0
    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-wide v1, -0x53131ea71c0974dbL    # -2.769060712113428E-92

    goto :goto_0

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v1, -0x53131ea81c0974dbL    # -2.769059249089567E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 1409
    sget v0, Lorg/telegram/messenger/R$string;->LoadingUpdate:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 1410
    sget v0, Lorg/telegram/messenger/R$string;->RestartPluginSystemToApplyUpdate:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getVersion()Ljava/lang/CharSequence;
    .locals 3

    .line 1402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x53131e941c0974dbL    # -2.769088509566784E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->SDK_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->SDK_BETA:Z

    if-eqz v1, :cond_0

    const-wide v1, -0x53131e961c0974dbL    # -2.7690855835190623E-92

    :goto_0
    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    const-wide v1, -0x53131e9c1c0974dbL    # -2.7690768053758972E-92

    goto :goto_0

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hashBytes(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 8

    const-wide v0, -0x53131ef31c0974dbL    # -2.768949522300004E-92

    .line 1467
    :try_start_0
    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const/high16 v1, 0x100000

    .line 1468
    new-array v1, v1, [B

    .line 1470
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_0

    invoke-virtual {v0, v1, v3, v2}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 1472
    :cond_0
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 1473
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1474
    array-length v2, v0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_1

    aget-byte v5, v0, v4

    const-wide v6, -0x53131ef91c0974dbL    # -2.768940744156839E-92

    .line 1475
    invoke-static {v6, v7}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1477
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1478
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :goto_2
    if-eqz p0, :cond_2

    .line 1466
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    :try_start_3
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception p0

    .line 1478
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static isAppVersionCodeCompatible(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1707
    sget v0, Lorg/telegram/messenger/BuildVars;->BUILD_VERSION:I

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, v0, p1}, Lcom/exteragram/messenger/utils/AppUtils;->compareVersions(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public static isAppVersionCompatible(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1703
    sget-object v0, Lorg/telegram/messenger/BuildVars;->BUILD_VERSION_STRING:Ljava/lang/String;

    invoke-static {p0, v0, p1}, Lcom/exteragram/messenger/utils/AppUtils;->compareVersions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isSdkFromApk()Z
    .locals 5

    .line 1456
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v2

    const-wide v3, -0x53131ebb1c0974dbL    # -2.769031451636211E-92

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide v2, -0x53131ec41c0974dbL    # -2.7690182844214636E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->requestSdkFromApkFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

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

.method public static isSdkVersionNewer(Ljava/lang/String;Z)Z
    .locals 2

    .line 1698
    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->pluginsPySdkBetaVersions:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->SDK_BETA:Z

    if-eqz v0, :cond_0

    xor-int/lit8 p0, p1, 0x1

    return p0

    :cond_0
    const-wide v0, -0x53131f971c0974dbL    # -2.768709586386826E-92

    .line 1699
    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->SDK_VERSION:Ljava/lang/String;

    invoke-static {p1, p0, v0}, Lcom/exteragram/messenger/utils/AppUtils;->compareVersions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static parsePythonSdkUpdateResponse(Lorg/telegram/tgnet/TLRPC$messages_Messages;)Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$PythonSdkUpdateInfo;
    .locals 16

    .line 1624
    new-instance v0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$PythonSdkUpdateInfo;

    invoke-direct {v0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$PythonSdkUpdateInfo;-><init>()V

    move-object/from16 v1, p0

    .line 1626
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    :cond_0
    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_12

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Message;

    .line 1627
    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_message;

    if-eqz v7, :cond_0

    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-nez v7, :cond_1

    goto :goto_0

    .line 1629
    :cond_1
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    const-wide v8, -0x53131f421c0974dbL    # -2.7688339434149976E-92

    invoke-static {v8, v9}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    .line 1630
    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    const-wide v9, -0x53131f541c0974dbL    # -2.7688076089855024E-92

    invoke-static {v9, v10}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v7, :cond_2

    if-nez v8, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v8, :cond_3

    .line 1632
    sget-boolean v7, Lcom/exteragram/messenger/ExteraConfig;->pluginsPySdkBetaVersions:Z

    if-nez v7, :cond_3

    goto :goto_0

    .line 1634
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1637
    iget-object v9, v6, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    const-wide v10, -0x53131f641c0974dbL    # -2.768784200603729E-92

    invoke-static {v10, v11}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1638
    array-length v10, v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_1
    if-ge v11, v10, :cond_e

    aget-object v13, v9, v11

    .line 1639
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 1640
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_4

    if-eqz v12, :cond_4

    goto :goto_4

    :cond_4
    const-wide v14, -0x53131f661c0974dbL    # -2.7687812745560073E-92

    .line 1641
    invoke-static {v14, v15}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    if-eqz v8, :cond_5

    const-wide v12, -0x53131f721c0974dbL    # -2.7687637182696772E-92

    .line 1643
    :goto_2
    invoke-static {v12, v13}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    :cond_5
    const-wide v12, -0x53131f771c0974dbL    # -2.768756403150373E-92

    goto :goto_2

    :goto_3
    iput-object v12, v0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$PythonSdkUpdateInfo;->channel:Ljava/lang/String;

    move v12, v5

    :goto_4
    const/16 p0, 0x0

    goto/16 :goto_5

    :cond_6
    if-nez v12, :cond_7

    .line 1646
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v13, -0x53131f7e1c0974dbL    # -2.768746161983347E-92

    invoke-static {v13, v14}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1650
    :cond_7
    sget-object v14, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->PYTHON_SDK_APP_VERSION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v14, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 1651
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->matches()Z

    move-result v15

    const/16 p0, 0x0

    const/4 v3, 0x2

    if-eqz v15, :cond_8

    .line 1652
    invoke-virtual {v14, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$PythonSdkUpdateInfo;->appVersionOperator:Ljava/lang/String;

    .line 1653
    invoke-virtual {v14, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$PythonSdkUpdateInfo;->appVersion:Ljava/lang/String;

    goto/16 :goto_5

    .line 1657
    :cond_8
    sget-object v14, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->PYTHON_SDK_APP_VERSION_CODE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v14, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 1658
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->matches()Z

    move-result v15

    if-eqz v15, :cond_9

    .line 1659
    invoke-virtual {v14, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$PythonSdkUpdateInfo;->appVersionCodeOperator:Ljava/lang/String;

    .line 1660
    invoke-virtual {v14, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$PythonSdkUpdateInfo;->appVersionCode:Ljava/lang/String;

    goto :goto_5

    :cond_9
    const-wide v14, -0x53131f801c0974dbL    # -2.7687432359356254E-92

    .line 1664
    invoke-static {v14, v15}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v13

    .line 1665
    array-length v14, v13

    if-eq v14, v3, :cond_a

    goto :goto_5

    .line 1669
    :cond_a
    aget-object v3, v13, p0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1670
    aget-object v13, v13, v5

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 1671
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v14

    const v15, -0x40b9c506

    if-eq v14, v15, :cond_c

    const v15, 0x14f51cd8

    if-eq v14, v15, :cond_b

    goto :goto_5

    :cond_b
    const-wide v14, -0x53131f8f1c0974dbL    # -2.7687212905777128E-92

    invoke-static {v14, v15}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1673
    iput-object v13, v0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->version:Ljava/lang/String;

    goto :goto_5

    :cond_c
    const-wide v14, -0x53131f821c0974dbL    # -2.7687403098879037E-92

    .line 1671
    invoke-static {v14, v15}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1672
    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->can_not_skip:Z

    :cond_d
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    :cond_e
    const/16 p0, 0x0

    .line 1676
    iget-object v3, v6, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-virtual {v3}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 1677
    invoke-virtual {v0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$PythonSdkUpdateInfo;->canInstall()Z

    move-result v3

    if-nez v3, :cond_f

    .line 1678
    invoke-virtual {v0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$PythonSdkUpdateInfo;->clear()V

    goto/16 :goto_0

    .line 1682
    :cond_f
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->text:Ljava/lang/String;

    .line 1683
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1684
    iget-object v2, v6, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v4, p0

    :cond_10
    :goto_6
    if-ge v4, v3, :cond_11

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v4, v4, 0x1

    check-cast v7, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    .line 1685
    instance-of v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messageEntityPre;

    if-nez v8, :cond_10

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1686
    :cond_11
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->entities:Ljava/util/ArrayList;

    .line 1687
    iput-object v6, v0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$PythonSdkUpdateInfo;->message:Lorg/telegram/tgnet/TLRPC$Message;

    goto :goto_7

    :cond_12
    const/16 p0, 0x0

    .line 1691
    :goto_7
    iget-object v1, v0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$PythonSdkUpdateInfo;->message:Lorg/telegram/tgnet/TLRPC$Message;

    if-nez v1, :cond_13

    const/4 v0, 0x0

    return-object v0

    .line 1693
    :cond_13
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v1, :cond_14

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->version:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    move v3, v5

    goto :goto_8

    :cond_14
    move/from16 v3, p0

    :goto_8
    iput-boolean v3, v0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$PythonSdkUpdateInfo;->available:Z

    return-object v0
.end method

.method static requestSdkFromApkFile()Ljava/io/File;
    .locals 5

    .line 1491
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v2

    const-wide v3, -0x53131f221c0974dbL    # -2.7688807601785445E-92

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide v2, -0x53131f2b1c0974dbL    # -2.768867592963797E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static restoreSdkFromApk()V
    .locals 1

    .line 1610
    invoke-static {}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->requestSdkFromApkFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->createEmptyFile(Ljava/io/File;)V

    return-void
.end method

.method public static savePythonSdkArchive(Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 1

    const/4 v0, 0x0

    .line 1764
    invoke-static {p0, p1, v0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->savePythonSdkArchive(Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$Document;Z)V

    return-void
.end method

.method public static savePythonSdkArchive(Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$Document;Z)V
    .locals 4

    .line 1768
    sget-boolean v0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->isLoading:Z

    if-nez v0, :cond_2

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 1770
    :cond_0
    new-instance v0, Lorg/telegram/messenger/MessageObject;

    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, p0, v2, v3}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 1771
    sput-boolean v3, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->isLoading:Z

    const/4 p0, 0x3

    .line 1772
    invoke-static {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->setStatus(I)V

    .line 1774
    iget-boolean p0, v0, Lorg/telegram/messenger/MessageObject;->mediaExists:Z

    if-eqz p0, :cond_1

    .line 1775
    invoke-static {p1, p2}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->copyArchiveToPluginsDirectory(Lorg/telegram/tgnet/TLRPC$Document;Z)V

    return-void

    .line 1779
    :cond_1
    sget p0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/DownloadController;->generateObserverTag()I

    move-result p0

    sput p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->TAG:I

    .line 1780
    sget p0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p0

    invoke-virtual {p0, p1, v0, v3, v2}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;II)V

    .line 1781
    sget p0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object p0

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$2;

    invoke-direct {v2, p1, p2}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$2;-><init>(Lorg/telegram/tgnet/TLRPC$Document;Z)V

    invoke-virtual {p0, v1, v0, v2}, Lorg/telegram/messenger/DownloadController;->addLoadingFileObserver(Ljava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method static sdkFromApk()Ljava/io/InputStream;
    .locals 3

    .line 1452
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-wide v1, -0x53131eaa1c0974dbL    # -2.7690563230418455E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method static setBuildFromApk(Z)V
    .locals 5

    .line 1460
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v2

    const-wide v3, -0x53131ed71c0974dbL    # -2.7689904869681076E-92

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide v2, -0x53131ee01c0974dbL    # -2.76897731975336E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1461
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1462
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p0, :cond_1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->createEmptyFile(Ljava/io/File;)V

    :cond_1
    return-void
.end method

.method private static setStatus(I)V
    .locals 3

    .line 1616
    sput p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->status:I

    .line 1617
    sget-boolean v0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->notifyWhenChangeStatus:Z

    if-eqz v0, :cond_1

    .line 1618
    sget-object v0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->notifyRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x258

    .line 1619
    :goto_0
    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method

.method public static zipFolder(Ljava/io/File;Ljava/io/File;)V
    .locals 3

    .line 1711
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 1712
    :cond_0
    new-instance v0, Ljava/util/zip/ZipOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1713
    :try_start_0
    invoke-static {p0, p0, v0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->zipRecursive(Ljava/io/File;Ljava/io/File;Ljava/util/zip/ZipOutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1714
    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    .line 1712
    :try_start_1
    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method private static zipRecursive(Ljava/io/File;Ljava/io/File;Ljava/util/zip/ZipOutputStream;)V
    .locals 9

    .line 1718
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_7

    .line 1721
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    aget-object v3, p1, v2

    .line 1722
    invoke-virtual {p0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/net/URI;->relativize(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 1724
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1725
    new-instance v5, Ljava/util/zip/ZipEntry;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v7, -0x53131f991c0974dbL    # -2.7687066603391044E-92

    invoke-static {v7, v8}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-wide v7, -0x53131f9b1c0974dbL    # -2.7687037342913827E-92

    :goto_1
    invoke-static {v7, v8}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_1
    const-wide v7, -0x53131f9c1c0974dbL    # -2.768702271267522E-92

    goto :goto_1

    :goto_2
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 1726
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 1727
    invoke-static {p0, v3, p2}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->zipRecursive(Ljava/io/File;Ljava/io/File;Ljava/util/zip/ZipOutputStream;)V

    goto :goto_4

    .line 1729
    :cond_2
    new-instance v5, Ljava/util/zip/ZipEntry;

    invoke-direct {v5, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 1730
    invoke-virtual {p2, v5}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 1732
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v3, 0x2000

    .line 1733
    :try_start_0
    new-array v3, v3, [B

    .line 1735
    :goto_3
    invoke-virtual {v4, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_3

    .line 1736
    invoke-virtual {p2, v3, v1, v5}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_5

    .line 1738
    :cond_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 1739
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1732
    :goto_5
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw p0

    :cond_4
    :goto_7
    return-void
.end method
