.class public Lcom/exteragram/messenger/plugins/PythonPluginsEngine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;,
        Lcom/exteragram/messenger/plugins/PythonPluginsEngine$PyMethodCaller;
    }
.end annotation


# static fields
.field public static SDK_BETA:Z

.field private static SDK_DIR:Ljava/io/File;

.field public static SDK_VERSION:Ljava/lang/String;

.field private static final VERSION_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field public basePluginClass:Lcom/chaquo/python/PyObject;

.field public debuggerListener:Lcom/chaquo/python/PyObject;

.field private devServerClass:Lcom/chaquo/python/PyObject;

.field public final pluginInstances:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/chaquo/python/PyObject;",
            ">;"
        }
    .end annotation
.end field

.field private volatile python:Lcom/chaquo/python/Python;

.field private final settingsCache:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$1eG-CLV6QQPrV-DnVdvD9FBkDik(Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/Throwable;)V
    .locals 0

    .line 645
    invoke-static {p1}, Lcom/exteragram/messenger/utils/AppUtils;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1xTTpe9mU223IdqQV5HiinDDrjs(Ljava/lang/String;)Z
    .locals 0

    .line 886
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$3H5IpftDXZReamd924GgRyI19iw(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 1

    const/4 v0, 0x0

    .line 790
    invoke-interface {p0, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4j2fw_INrdFoznqrlwBO-ixlX7s(Lcom/exteragram/messenger/plugins/PythonPluginsEngine;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->lambda$loadPlugins$2(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$58hVkzk-j9sKVPRRdHKq1HHycaE(Ljava/lang/String;)Lj$/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 1260
    new-instance p0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object p0
.end method

.method public static synthetic $r8$lambda$5IA8wJtp7oMKZ1UB4bO1olCm-4I(ILcom/chaquo/python/PyObject;Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)Lcom/chaquo/python/PyObject;
    .locals 3

    const-wide v0, -0x53131ba51c0974dbL    # -2.7701872404862758E-92

    .line 1171
    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p2, v1, p0

    invoke-virtual {p1, v0, v1}, Lcom/chaquo/python/PyObject;->callAttr(Ljava/lang/String;[Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$6H3MprOPxNT12AoOSsEv_S86IZQ(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;)V
    .locals 5

    .line 1317
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$raw;->error:I

    sget v2, Lorg/telegram/messenger/R$string;->PluginInstallError:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lcom/exteragram/messenger/utils/text/LocaleUtils;->createCopySpan(Lorg/telegram/ui/ActionBar/BaseFragment;)Landroid/text/Spannable;

    move-result-object v2

    new-instance v3, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$$ExternalSyntheticLambda13;

    invoke-direct {v3, p2, p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$$ExternalSyntheticLambda13;-><init>(Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v0, v1, p1, v2, v3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    .line 1321
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method public static synthetic $r8$lambda$6W5fXYKQUDMRoT_45HRNATPyWXk(Ljava/lang/String;Lcom/chaquo/python/PyException;)V
    .locals 3

    .line 1148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x53131bf11c0974dbL    # -2.770076050672852E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8dU_agcMSswgsS3LqmxpSeyACpA(Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .line 1318
    iget-object p0, p0, Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;->error:Ljava/lang/String;

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1319
    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    sget p1, Lorg/telegram/messenger/R$string;->TextCopied:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyBulletin(Ljava/lang/String;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$9UEKvgEe0R1kdst7zH7EJ7wR2aU(Lcom/exteragram/messenger/plugins/PythonPluginsEngine;Lcom/exteragram/messenger/plugins/Plugin;Ljava/lang/String;Lcom/exteragram/messenger/plugins/pip/PipController$InstallerDelegate;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->lambda$loadPluginFromFile$8(Lcom/exteragram/messenger/plugins/Plugin;Ljava/lang/String;Lcom/exteragram/messenger/plugins/pip/PipController$InstallerDelegate;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Bt4vrveGxG1-fziFQ_hKs0335b4(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;)V
    .locals 0

    .line 1380
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$F28TY3wPayH1vFW9lF9kxzFNpL0(Ljava/lang/String;ILcom/chaquo/python/PyObject;Lorg/telegram/tgnet/TLRPC$Update;)Lcom/chaquo/python/PyObject;
    .locals 3

    const-wide v0, -0x53131c171c0974dbL    # -2.77002045576614E-92

    .line 1147
    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p3, v1, p0

    invoke-virtual {p2, v0, v1}, Lcom/chaquo/python/PyObject;->callAttr(Ljava/lang/String;[Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Hm8Sc2Lun_5hy4O6UL1WOvthXAU(Ljava/lang/String;)Lj$/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 1250
    new-instance p0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object p0
.end method

.method public static synthetic $r8$lambda$O4i-7Job-LR8V8CLv3YYStjWdOM(Ljava/lang/String;Ljava/lang/String;Lcom/chaquo/python/PyException;)V
    .locals 3

    .line 1095
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x53131c261c0974dbL    # -2.7699985104082273E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v1, -0x53131c4d1c0974dbL    # -2.7699414524776544E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QAoTYgRvwQvYgh2qpniCyuYNTDU(Ljava/lang/String;ILcom/chaquo/python/PyObject;Lorg/telegram/tgnet/TLObject;)Lcom/chaquo/python/PyObject;
    .locals 3

    const-wide v0, -0x53131c531c0974dbL    # -2.7699326743344894E-92

    .line 1094
    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p3, v1, p0

    invoke-virtual {p2, v0, v1}, Lcom/chaquo/python/PyObject;->callAttr(Ljava/lang/String;[Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Qoq8K6Pf0qg6Go6zg4818NrllQw(Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/Throwable;)V
    .locals 0

    .line 833
    invoke-static {p1}, Lcom/exteragram/messenger/utils/AppUtils;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$T1SkuxQ1S23N32cjWiFzZnvp9Ok(Ljava/io/File;Ljava/lang/String;)Z
    .locals 2

    .line 394
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-wide v0, -0x53131dd71c0974dbL    # -2.769365021076483E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$UAXvmoB80q_ZE6w5DU2CuJGeh08(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 1

    const/4 v0, 0x0

    .line 675
    invoke-interface {p0, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VvQ6Tr3bULe91kshg9QPBLt7pfk(Lcom/exteragram/messenger/plugins/Plugin;)Z
    .locals 1

    .line 433
    invoke-virtual {p0}, Lcom/exteragram/messenger/plugins/Plugin;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/exteragram/messenger/plugins/Plugin;->hasError()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$b0XtuuH0Nu_mtZv7bCFSmt5XYQM(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/exteragram/messenger/plugins/Plugin;)V
    .locals 1

    .line 1337
    new-instance v0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;

    invoke-direct {v0, p1}, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;-><init>(Lcom/exteragram/messenger/plugins/Plugin;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$dMpqm4J-k6SDcMiMJvRewNw1kso(Lcom/exteragram/messenger/plugins/PythonPluginsEngine;Lcom/exteragram/messenger/plugins/Plugin;Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->lambda$openPluginSetting$24(Lcom/exteragram/messenger/plugins/Plugin;Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kjHidZlCvI4jGOyjrTk4mFphU6c(Ljava/lang/String;ILcom/chaquo/python/PyObject;Lorg/telegram/tgnet/TLRPC$Updates;)Lcom/chaquo/python/PyObject;
    .locals 3

    const-wide v0, -0x53131be11c0974dbL    # -2.7700994590546253E-92

    .line 1159
    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p3, v1, p0

    invoke-virtual {p2, v0, v1}, Lcom/chaquo/python/PyObject;->callAttr(Ljava/lang/String;[Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$mfPIU5rJzOt6bqVTYlGTt26B_FE(Ljava/lang/String;Lcom/chaquo/python/PyException;)V
    .locals 3

    .line 1160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x53131bba1c0974dbL    # -2.770156516985198E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mrkOZ9RCfjjO1H-TJ8DxAXYBl-A(Ljava/lang/String;Lcom/chaquo/python/PyException;)V
    .locals 3

    .line 1172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x53131b791c0974dbL    # -2.7702516135361528E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qEfi4Kt9pXg0iGv8G24ukZYBPVE(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 1

    const/4 v0, 0x0

    .line 626
    invoke-interface {p0, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-wide v0, -0x53131ddb1c0974dbL    # -2.7693591689810396E-92

    .line 106
    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->VERSION_PATTERN:Ljava/util/regex/Pattern;

    const-wide v0, -0x53131df01c0974dbL    # -2.769328445479962E-92

    .line 107
    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->SDK_VERSION:Ljava/lang/String;

    const/4 v0, 0x0

    .line 108
    sput-boolean v0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->SDK_BETA:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->pluginInstances:Lj$/util/concurrent/ConcurrentHashMap;

    .line 113
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->settingsCache:Lj$/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private static deleteRecursive(Ljava/io/File;Z)V
    .locals 5

    .line 157
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    const/4 v4, 0x1

    .line 160
    invoke-static {v3, v4}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->deleteRecursive(Ljava/io/File;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 163
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_1
    return-void
.end method

.method private executeHook(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Lcom/exteragram/messenger/plugins/PythonPluginsEngine$PyMethodCaller;Lorg/telegram/messenger/Utilities$Callback;)Lcom/exteragram/messenger/plugins/PluginsController$HookResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Lcom/exteragram/messenger/plugins/PythonPluginsEngine$PyMethodCaller<",
            "TT;>;",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Lcom/chaquo/python/PyException;",
            ">;)",
            "Lcom/exteragram/messenger/plugins/PluginsController$HookResult<",
            "TT;>;"
        }
    .end annotation

    .line 1079
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPluginsController()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v0

    iget-object v0, v0, Lcom/exteragram/messenger/plugins/PluginsController;->watchdog:Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;

    invoke-virtual {v0, p1}, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;->onPluginExecutionStarted(Ljava/lang/String;)V

    .line 1081
    :try_start_0
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->pluginInstances:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/chaquo/python/PyObject;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->executeHook(Lcom/chaquo/python/PyObject;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Lcom/exteragram/messenger/plugins/PythonPluginsEngine$PyMethodCaller;Lorg/telegram/messenger/Utilities$Callback;)Lcom/exteragram/messenger/plugins/PluginsController$HookResult;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1083
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPluginsController()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object p3

    iget-object p3, p3, Lcom/exteragram/messenger/plugins/PluginsController;->watchdog:Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;

    invoke-virtual {p3, p1}, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;->onPluginExecutionFinished(Ljava/lang/String;)V

    return-object p2

    :catchall_0
    move-exception v0

    move-object p2, v0

    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPluginsController()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object p3

    iget-object p3, p3, Lcom/exteragram/messenger/plugins/PluginsController;->watchdog:Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;

    invoke-virtual {p3, p1}, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;->onPluginExecutionFinished(Ljava/lang/String;)V

    .line 1084
    throw p2
.end method

.method private findPluginClass(Lcom/chaquo/python/PyObject;)Lcom/chaquo/python/PyObject;
    .locals 10

    .line 523
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->basePluginClass:Lcom/chaquo/python/PyObject;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v2, -0x531311fa1c0974dbL    # -2.773808224541858E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v2, -0x531312371c0974dbL    # -2.7737189800863467E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/chaquo/python/PyObject;->get(Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    return-object v1

    .line 528
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPython()Lcom/chaquo/python/Python;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chaquo/python/Python;->getBuiltins()Lcom/chaquo/python/PyObject;

    move-result-object v0

    const-wide v2, -0x531312401c0974dbL    # -2.773705812871599E-92

    .line 529
    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/chaquo/python/PyObject;->get(Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v1

    .line 533
    :cond_1
    invoke-virtual {v2}, Lcom/chaquo/python/PyObject;->asMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/chaquo/python/PyObject;

    const-wide v4, -0x531312491c0974dbL    # -2.7736926456568516E-92

    .line 534
    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v4

    const-wide v5, -0x531312541c0974dbL    # -2.7736765523943823E-92

    invoke-static {v5, v6}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/chaquo/python/PyObject;->get(Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    move-result-object v5

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v9, 0x1

    aput-object v5, v7, v9

    invoke-virtual {v0, v4, v7}, Lcom/chaquo/python/PyObject;->callAttr(Ljava/lang/String;[Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/chaquo/python/PyObject;->toBoolean()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->basePluginClass:Lcom/chaquo/python/PyObject;

    .line 535
    invoke-virtual {v3, v4}, Lcom/chaquo/python/PyObject;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-wide v4, -0x531312591c0974dbL    # -2.773669237275078E-92

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->basePluginClass:Lcom/chaquo/python/PyObject;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v8

    aput-object v5, v6, v9

    .line 536
    invoke-virtual {v0, v4, v6}, Lcom/chaquo/python/PyObject;->callAttr(Ljava/lang/String;[Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/chaquo/python/PyObject;->toBoolean()Z

    move-result v4
    :try_end_0
    .catch Lcom/chaquo/python/PyException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_2

    return-object v3

    :catch_0
    move-exception v0

    .line 541
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v3, -0x531312641c0974dbL    # -2.773653144012609E-92

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v3, -0x5313129f1c0974dbL    # -2.7735668256048192E-92

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/chaquo/python/PyObject;->get(Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    return-object v1
.end method

.method private getPluginsController()Lcom/exteragram/messenger/plugins/PluginsController;
    .locals 1

    .line 121
    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->getInstance()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getPython()Lcom/chaquo/python/Python;
    .locals 2

    monitor-enter p0

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->python:Lcom/chaquo/python/Python;

    if-nez v0, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->initPython()V

    .line 127
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->python:Lcom/chaquo/python/Python;

    if-nez v0, :cond_0

    const-wide v0, -0x53130dcd1c0974dbL    # -2.7753721970490974E-92

    .line 128
    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 132
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->python:Lcom/chaquo/python/Python;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private initPython()V
    .locals 3

    .line 137
    :try_start_0
    invoke-static {}, Lcom/chaquo/python/Python;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Lcom/chaquo/python/android/AndroidPlatform;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/chaquo/python/android/AndroidPlatform;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/chaquo/python/Python;->start(Lcom/chaquo/python/Python$Platform;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 140
    :cond_0
    :goto_0
    invoke-static {}, Lcom/chaquo/python/Python;->getInstance()Lcom/chaquo/python/Python;

    move-result-object v0

    iput-object v0, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->python:Lcom/chaquo/python/Python;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    const-wide v1, -0x53130dfe1c0974dbL    # -2.775300508879916E-92

    .line 142
    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private initSdk()V
    .locals 5

    .line 167
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->python:Lcom/chaquo/python/Python;

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 169
    :cond_0
    sget-object v0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->SDK_DIR:Ljava/io/File;

    if-nez v0, :cond_1

    .line 170
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v2

    const-wide v3, -0x53130e221c0974dbL    # -2.775247840020926E-92

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide v2, -0x53130e2b1c0974dbL    # -2.7752346728061783E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->SDK_DIR:Ljava/io/File;

    .line 171
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->SDK_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 174
    :cond_1
    invoke-static {}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->getPythonSdkUpdateFile()Ljava/io/File;

    move-result-object v0

    .line 175
    invoke-static {}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->getPythonCurrentSdkFile()Ljava/io/File;

    move-result-object v1

    .line 176
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->requestSdkFromApkFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 177
    sget-object v2, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->SDK_DIR:Ljava/io/File;

    invoke-static {v2, v4}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->deleteRecursive(Ljava/io/File;Z)V

    .line 178
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 180
    :cond_2
    :try_start_0
    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->copyFile(Ljava/io/File;Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 181
    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    :try_start_2
    sget-object v1, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->SDK_DIR:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/exteragram/messenger/plugins/pip/PipController;->unzip(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 183
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 184
    :catch_0
    :try_start_4
    invoke-static {v4}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->setBuildFromApk(Z)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v1

    .line 181
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_6
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 184
    :goto_1
    :try_start_7
    invoke-static {v4}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->setBuildFromApk(Z)V

    .line 185
    throw v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 188
    :cond_3
    invoke-static {}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->requestSdkFromApkFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 189
    sget-object v0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->SDK_DIR:Ljava/io/File;

    invoke-static {v0, v4}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->deleteRecursive(Ljava/io/File;Z)V

    .line 190
    invoke-static {}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->requestSdkFromApkFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 192
    :cond_4
    sget-object v0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->SDK_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 193
    array-length v0, v0

    if-nez v0, :cond_8

    .line 194
    :cond_5
    :try_start_8
    invoke-static {}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->sdkFromApk()Ljava/io/InputStream;

    move-result-object v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 195
    :try_start_9
    sget-object v2, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->SDK_DIR:Ljava/io/File;

    invoke-static {v0, v2}, Lcom/exteragram/messenger/plugins/pip/PipController;->unzip(Ljava/io/InputStream;Ljava/io/File;)V

    .line 196
    invoke-static {v3}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->setBuildFromApk(Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    if-eqz v0, :cond_6

    .line 197
    :try_start_a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto/16 :goto_a

    .line 200
    :cond_6
    :goto_2
    :try_start_b
    invoke-static {}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->sdkFromApk()Ljava/io/InputStream;

    move-result-object v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    .line 201
    :try_start_c
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_3

    :catchall_3
    move-exception v1

    goto/16 :goto_6

    .line 202
    :cond_7
    :goto_3
    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->copyFile(Ljava/io/InputStream;Ljava/io/File;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    if-eqz v0, :cond_8

    .line 203
    :try_start_d
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    goto/16 :goto_8

    .line 208
    :catch_3
    :cond_8
    :goto_4
    invoke-static {}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->deleteSdkUpdateFile()V

    .line 210
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->python:Lcom/chaquo/python/Python;

    const-wide v1, -0x53130e371c0974dbL    # -2.7752171165198482E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chaquo/python/Python;->getModule(Ljava/lang/String;)Lcom/chaquo/python/PyObject;

    move-result-object v0

    const-wide v1, -0x53130e3b1c0974dbL    # -2.775211264424405E-92

    .line 211
    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chaquo/python/PyObject;->get(Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v1, -0x53130e401c0974dbL    # -2.7752039493051006E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->SDK_DIR:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v4

    invoke-virtual {v0, v1, v3}, Lcom/chaquo/python/PyObject;->callAttr(Ljava/lang/String;[Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    .line 213
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->python:Lcom/chaquo/python/Python;

    const-wide v1, -0x53130e471c0974dbL    # -2.7751937081380748E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chaquo/python/Python;->getModule(Ljava/lang/String;)Lcom/chaquo/python/PyObject;

    move-result-object v0

    const-wide v1, -0x53130e541c0974dbL    # -2.7751746888278838E-92

    .line 214
    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/chaquo/python/PyObject;->callAttr(Ljava/lang/String;[Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    .line 216
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->basePluginClass:Lcom/chaquo/python/PyObject;

    if-nez v0, :cond_9

    .line 218
    :try_start_e
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->python:Lcom/chaquo/python/Python;

    const-wide v1, -0x53130e5e1c0974dbL    # -2.7751600585892754E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chaquo/python/Python;->getModule(Ljava/lang/String;)Lcom/chaquo/python/PyObject;

    move-result-object v0

    const-wide v1, -0x53130e6a1c0974dbL    # -2.7751425023029453E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chaquo/python/PyObject;->get(Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    move-result-object v0

    iput-object v0, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->basePluginClass:Lcom/chaquo/python/PyObject;
    :try_end_e
    .catch Lcom/chaquo/python/PyException; {:try_start_e .. :try_end_e} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    const-wide v1, -0x53130e751c0974dbL    # -2.775126409040476E-92

    .line 220
    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    :goto_5
    return-void

    :goto_6
    if-eqz v0, :cond_a

    .line 200
    :try_start_f
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    goto :goto_7

    :catchall_4
    move-exception v0

    :try_start_10
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a
    :goto_7
    throw v1
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_2

    .line 204
    :goto_8
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catchall_5
    move-exception v1

    if-eqz v0, :cond_b

    .line 194
    :try_start_11
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    goto :goto_9

    :catchall_6
    move-exception v0

    :try_start_12
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b
    :goto_9
    throw v1
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_1

    .line 198
    :goto_a
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private synthetic lambda$loadPluginFromFile$8(Lcom/exteragram/messenger/plugins/Plugin;Ljava/lang/String;Lcom/exteragram/messenger/plugins/pip/PipController$InstallerDelegate;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 750
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->validatePluginFromFile(Ljava/lang/String;)Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;

    move-result-object p1

    .line 751
    iget-object v2, p1, Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;->error:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 754
    iget-object p1, p1, Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v3, v0

    move-object v5, v3

    goto/16 :goto_a

    .line 752
    :cond_0
    new-instance p3, Ljava/lang/Exception;

    iget-object p1, p1, Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;->error:Ljava/lang/String;

    invoke-direct {p3, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p3

    .line 759
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/exteragram/messenger/plugins/Plugin;->getId()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 760
    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPluginsController()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v4

    iget-object v4, v4, Lcom/exteragram/messenger/plugins/PluginsController;->pluginsDir:Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v6, -0x53131c641c0974dbL    # -2.769907802928855E-92

    invoke-static {v6, v7}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    .line 761
    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    if-eqz v4, :cond_4

    .line 764
    :try_start_3
    invoke-virtual {p0, v2}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->unloadPlugin(Ljava/lang/String;)V

    .line 765
    new-instance v5, Ljava/io/File;

    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPluginsController()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v6

    iget-object v6, v6, Lcom/exteragram/messenger/plugins/PluginsController;->pluginsDir:Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v8, -0x53131c681c0974dbL    # -2.7699019508334117E-92

    invoke-static {v8, v9}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 766
    :try_start_4
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 767
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto :goto_2

    :catchall_1
    move-exception p1

    :goto_1
    move-object v0, v2

    move v1, v4

    goto/16 :goto_a

    .line 769
    :cond_2
    :goto_2
    invoke-virtual {v3, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v5

    goto :goto_3

    .line 770
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-wide v0, -0x53131c701c0974dbL    # -2.769890246642525E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_2
    move-exception p1

    move-object v5, v0

    goto :goto_1

    .line 774
    :cond_4
    :goto_3
    :try_start_5
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    const/16 v7, 0x400

    .line 775
    :try_start_7
    new-array v7, v7, [B

    .line 777
    :goto_4
    invoke-virtual {v5, v7}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_5

    .line 778
    invoke-virtual {v6, v7, v1, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p1

    goto :goto_5

    .line 780
    :cond_5
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 782
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1, p1, p3}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->loadPlugin(Ljava/lang/String;Ljava/lang/String;Lcom/exteragram/messenger/plugins/Plugin;Lcom/exteragram/messenger/plugins/pip/PipController$InstallerDelegate;)V

    if-eqz v0, :cond_6

    .line 784
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 785
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 788
    :cond_6
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPluginsController()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/exteragram/messenger/plugins/PluginsController;->notifyPluginsChanged()V

    if-eqz p4, :cond_c

    .line 790
    new-instance p1, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$$ExternalSyntheticLambda14;

    invoke-direct {p1, p4}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    return-void

    :catchall_4
    move-exception p1

    goto :goto_7

    .line 774
    :goto_5
    :try_start_a
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception p3

    :try_start_b
    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :goto_7
    :try_start_c
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    goto :goto_8

    :catchall_6
    move-exception p3

    :try_start_d
    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8
    throw p1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :catchall_7
    move-exception p1

    move-object v5, v0

    :goto_9
    move-object v0, v2

    goto :goto_a

    :catchall_8
    move-exception p1

    move-object v3, v0

    move-object v5, v3

    goto :goto_9

    .line 793
    :goto_a
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v6, -0x53131c971c0974dbL    # -2.7698331887119522E-92

    invoke-static {v6, v7}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v0, :cond_b

    if-eqz v3, :cond_7

    .line 795
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 796
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_7
    if-eqz v1, :cond_9

    if-eqz v5, :cond_9

    .line 800
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 801
    invoke-virtual {v5, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 803
    :try_start_e
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->loadPlugin(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    goto :goto_d

    :catch_0
    move-exception p2

    .line 806
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x53131cc31c0974dbL    # -2.769768815662075E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    .line 809
    :cond_8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x53131cfe1c0974dbL    # -2.7696824972542855E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 814
    :cond_9
    :goto_b
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPluginsController()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/exteragram/messenger/plugins/PluginsController;->cleanupPlugin(Ljava/lang/String;)V

    .line 816
    :try_start_f
    sget-object p2, Lcom/exteragram/messenger/plugins/pip/PipController;->INSTANCE:Lcom/exteragram/messenger/plugins/pip/PipController;

    invoke-virtual {p2, v0}, Lcom/exteragram/messenger/plugins/pip/PipController;->uninstallDependencies(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    goto :goto_c

    :catch_1
    move-exception p2

    .line 818
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 820
    :goto_c
    iget-object p2, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->pluginInstances:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, v0}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/chaquo/python/PyObject;

    if-eqz p2, :cond_a

    .line 822
    invoke-virtual {p2}, Lcom/chaquo/python/PyObject;->close()V

    .line 824
    :cond_a
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPluginsController()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/exteragram/messenger/plugins/PluginsController;->clearPluginSettingsPreferences(Ljava/lang/String;)V

    .line 825
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPluginsController()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object p2

    iget-object p2, p2, Lcom/exteragram/messenger/plugins/PluginsController;->plugins:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, v0}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v3, :cond_b

    .line 826
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 827
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 831
    :cond_b
    :goto_d
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPluginsController()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/exteragram/messenger/plugins/PluginsController;->notifyPluginsChanged()V

    if-eqz p4, :cond_c

    .line 833
    new-instance p2, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$$ExternalSyntheticLambda15;

    invoke-direct {p2, p4, p1}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/Throwable;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_c
    return-void
.end method

.method private synthetic lambda$loadPlugins$2(Ljava/lang/Runnable;)V
    .locals 11

    .line 374
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPython()Lcom/chaquo/python/Python;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_9

    .line 376
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 381
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPython()Lcom/chaquo/python/Python;

    move-result-object v0

    const-wide v1, -0x53131d231c0974dbL    # -2.7696283653714344E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chaquo/python/Python;->getModule(Ljava/lang/String;)Lcom/chaquo/python/PyObject;

    move-result-object v0
    :try_end_0
    .catch Lcom/chaquo/python/PyException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide v1, -0x53131d271c0974dbL    # -2.769622513275991E-92

    :try_start_1
    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chaquo/python/PyObject;->get(Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const-wide v4, -0x53131d2c1c0974dbL    # -2.769615198156687E-92

    .line 383
    :try_start_2
    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPluginsController()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v5

    iget-object v5, v5, Lcom/exteragram/messenger/plugins/PluginsController;->pluginsDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v5, v6, v3

    invoke-virtual {v1, v4, v6}, Lcom/chaquo/python/PyObject;->callAttr(Ljava/lang/String;[Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    goto :goto_0

    :catchall_0
    move-exception v2

    goto/16 :goto_6

    :cond_1
    :goto_0
    const-wide v4, -0x53131d331c0974dbL    # -2.769604956989661E-92

    .line 385
    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v4

    const-wide v5, 0x3f50624dd2f1a9fcL    # 0.001

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v5, v2, v3

    invoke-virtual {v0, v4, v2}, Lcom/chaquo/python/PyObject;->callAttr(Ljava/lang/String;[Ljava/lang/Object;)Lcom/chaquo/python/PyObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_2

    .line 386
    :try_start_3
    invoke-virtual {v1}, Lcom/chaquo/python/PyObject;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    goto/16 :goto_8

    :cond_2
    :goto_1
    :try_start_4
    invoke-virtual {v0}, Lcom/chaquo/python/PyObject;->close()V
    :try_end_4
    .catch Lcom/chaquo/python/PyException; {:try_start_4 .. :try_end_4} :catch_0

    .line 394
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPluginsController()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v0

    iget-object v0, v0, Lcom/exteragram/messenger/plugins/PluginsController;->pluginsDir:Ljava/io/File;

    new-instance v1, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_3

    .line 396
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPluginsController()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/exteragram/messenger/plugins/PluginsController;->notifyPluginsChanged()V

    if-eqz p1, :cond_9

    .line 398
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 403
    :cond_3
    array-length v1, v0

    move v2, v3

    :goto_2
    if-ge v2, v1, :cond_6

    aget-object v4, v0, v2

    .line 404
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x3

    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 407
    :try_start_5
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->validatePluginFromFile(Ljava/lang/String;)Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;

    move-result-object v6

    .line 408
    iget-object v7, v6, Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;->error:Ljava/lang/String;

    if-nez v7, :cond_4

    .line 411
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v6, Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    invoke-virtual {p0, v5, v7, v8}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->loadPlugin(Ljava/lang/String;Ljava/lang/String;Lcom/exteragram/messenger/plugins/Plugin;)V

    goto/16 :goto_5

    :catchall_2
    move-exception v7

    goto :goto_3

    .line 409
    :cond_4
    new-instance v7, Ljava/lang/Exception;

    iget-object v8, v6, Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;->error:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 413
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v9, -0x53131d741c0974dbL    # -2.7695098604387063E-92

    invoke-static {v9, v10}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v9, -0x53131d8b1c0974dbL    # -2.769476210889907E-92

    invoke-static {v9, v10}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v6, :cond_5

    .line 416
    iget-object v4, v6, Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    if-eqz v4, :cond_5

    goto :goto_4

    .line 419
    :cond_5
    new-instance v4, Lcom/exteragram/messenger/plugins/Plugin;

    invoke-direct {v4, v5, v5}, Lcom/exteragram/messenger/plugins/Plugin;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    sget v6, Lorg/telegram/messenger/R$string;->PluginNoAuthor:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/exteragram/messenger/plugins/Plugin;->setAuthor(Ljava/lang/String;)V

    const-wide v8, -0x53131d961c0974dbL    # -2.7694601176274377E-92

    .line 421
    invoke-static {v8, v9}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/exteragram/messenger/plugins/Plugin;->setVersion(Ljava/lang/String;)V

    const-wide v8, -0x53131d9a1c0974dbL    # -2.7694542655319943E-92

    .line 422
    invoke-static {v8, v9}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/exteragram/messenger/plugins/Plugin;->setEngine(Ljava/lang/String;)V

    .line 425
    :goto_4
    invoke-virtual {v4, v7}, Lcom/exteragram/messenger/plugins/Plugin;->setError(Ljava/lang/Throwable;)V

    .line 426
    invoke-virtual {v4, v3}, Lcom/exteragram/messenger/plugins/Plugin;->setEnabled(Z)V

    .line 427
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPluginsController()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v6

    iget-object v6, v6, Lcom/exteragram/messenger/plugins/PluginsController;->plugins:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v5, v4}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 431
    :cond_6
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPluginsController()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/exteragram/messenger/plugins/PluginsController;->notifyPluginsChanged()V

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x53131da11c0974dbL    # -2.7694440243649684E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPluginsController()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v1

    iget-object v1, v1, Lcom/exteragram/messenger/plugins/PluginsController;->plugins:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lj$/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-wide v1, -0x53131dcb1c0974dbL    # -2.769382577362813E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPluginsController()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v1

    iget-object v1, v1, Lcom/exteragram/messenger/plugins/PluginsController;->plugins:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$$ExternalSyntheticLambda8;

    invoke-direct {v2}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$$ExternalSyntheticLambda8;-><init>()V

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Lj$/util/stream/Stream;->count()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    if-eqz p1, :cond_9

    .line 435
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_b

    :catch_0
    move-exception v0

    goto :goto_a

    :goto_6
    if-eqz v1, :cond_7

    .line 381
    :try_start_6
    invoke-virtual {v1}, Lcom/chaquo/python/PyObject;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v1

    :try_start_7
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_8
    if-eqz v0, :cond_8

    :try_start_8
    invoke-virtual {v0}, Lcom/chaquo/python/PyObject;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_9

    :catchall_4
    move-exception v0

    :try_start_9
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_9
    throw v1
    :try_end_9
    .catch Lcom/chaquo/python/PyException; {:try_start_9 .. :try_end_9} :catch_0

    :goto_a
    const-wide v1, -0x53131d451c0974dbL    # -2.7695786225601658E-92

    .line 387
    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p1, :cond_9

    .line 389
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_9
    :goto_b
    return-void
.end method

.method private synthetic lambda$openPluginSetting$24(Lcom/exteragram/messenger/plugins/Plugin;Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 9

    .line 1346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x53131b581c0974dbL    # -2.7702998933235606E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/exteragram/messenger/plugins/Plugin;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v1, -0x53131b711c0974dbL    # -2.7702633177270395E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-wide v0, -0x53131b731c0974dbL    # -2.770260391679318E-92

    .line 1347
    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v4, p1

    goto/16 :goto_2

    .line 1350
    :cond_1
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPluginsController()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v0

    iget-object v0, v0, Lcom/exteragram/messenger/plugins/PluginsController;->settings:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/exteragram/messenger/plugins/Plugin;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const-wide v1, -0x53131b751c0974dbL    # -2.770257465631596E-92

    .line 1355
    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v6, v0

    move v0, v1

    .line 1356
    :goto_0
    array-length v3, p2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_7

    .line 1357
    aget-object v3, p2, v0

    .line 1358
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/exteragram/messenger/plugins/models/SettingItem;

    .line 1359
    instance-of v7, v5, Lcom/exteragram/messenger/plugins/models/TextSetting;

    if-eqz v7, :cond_3

    check-cast v5, Lcom/exteragram/messenger/plugins/models/TextSetting;

    iget-object v7, v5, Lcom/exteragram/messenger/plugins/models/SettingItem;->linkAlias:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1362
    :try_start_0
    iget-object v2, v5, Lcom/exteragram/messenger/plugins/models/TextSetting;->createSubFragmentCallback:Lcom/chaquo/python/PyObject;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/chaquo/python/PyObject;->call([Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1364
    invoke-virtual {v2}, Lcom/chaquo/python/PyObject;->asList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->parsePySettingDefinitions(Ljava/util/List;)Ljava/util/List;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    move-object v2, v5

    :cond_5
    if-nez v2, :cond_6

    .line 1370
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1371
    invoke-static {}, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry;->getInstance()Lcom/exteragram/messenger/preferences/utils/SettingsRegistry;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry;->onSettingNotFound(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    if-nez v2, :cond_8

    :goto_1
    return-void

    .line 1377
    :cond_8
    new-instance v3, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;

    iget-object v5, v2, Lcom/exteragram/messenger/plugins/models/TextSetting;->text:Ljava/lang/String;

    iget-object v7, v2, Lcom/exteragram/messenger/plugins/models/TextSetting;->createSubFragmentCallback:Lcom/chaquo/python/PyObject;

    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    aget-object v8, p2, v0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;-><init>(Lcom/exteragram/messenger/plugins/Plugin;Ljava/lang/String;Ljava/util/List;Lcom/chaquo/python/PyObject;Ljava/lang/String;)V

    const-wide v0, -0x53131b771c0974dbL    # -2.7702545395838745E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p1

    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    .line 1378
    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/CharSequence;

    invoke-static {p1, p2}, Lcom/exteragram/messenger/adblock/AdBlockClient$$ExternalSyntheticBackport0;->m(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->setSettingsLinkPrefix(Ljava/lang/String;)Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;

    move-result-object p1

    goto :goto_3

    .line 1348
    :goto_2
    new-instance p1, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;

    invoke-direct {p1, v4, p2}, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;-><init>(Lcom/exteragram/messenger/plugins/Plugin;Ljava/lang/String;)V

    .line 1380
    :goto_3
    new-instance p2, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$$ExternalSyntheticLambda6;

    invoke-direct {p2, p3, p1}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private removeModulesRecursive(Lcom/chaquo/python/PyObject;Ljava/io/File;Ljava/lang/String;)V
    .locals 9

    const-wide v0, -0x53130ed11c0974dbL    # -2.7749918108452787E-92

    .line 241
    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide v0, -0x53130ede1c0974dbL    # -2.7749727915350877E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p3

    .line 242
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-wide v3, -0x53130edf1c0974dbL    # -2.774971328511227E-92

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v3, v4, v2

    invoke-virtual {p1, v0, v4}, Lcom/chaquo/python/PyObject;->callAttr(Ljava/lang/String;[Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chaquo/python/PyObject;->toBoolean()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide v3, -0x53130eec1c0974dbL    # -2.774952309201036E-92

    .line 243
    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v3, v4, v2

    invoke-virtual {p1, v0, v4}, Lcom/chaquo/python/PyObject;->callAttr(Ljava/lang/String;[Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    .line 245
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 246
    array-length v3, v0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    .line 247
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v7, -0x53130ef01c0974dbL    # -2.7749464571055926E-92

    invoke-static {v7, v8}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v5, v6}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->removeModulesRecursive(Lcom/chaquo/python/PyObject;Ljava/io/File;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 250
    :cond_2
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_3

    const-wide v3, -0x53130ef21c0974dbL    # -2.774943531057871E-92

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-wide v5, -0x53130eff1c0974dbL    # -2.77492451174768E-92

    invoke-static {v5, v6}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v3, v4, v2

    invoke-virtual {p1, v0, v4}, Lcom/chaquo/python/PyObject;->callAttr(Ljava/lang/String;[Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chaquo/python/PyObject;->toBoolean()Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide v3, -0x53130f021c0974dbL    # -2.7749201226760974E-92

    .line 251
    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    const-wide v4, -0x53130f061c0974dbL    # -2.774914270580654E-92

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, v2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v1, [Ljava/lang/Object;

    aput-object p2, p3, v2

    invoke-virtual {p1, v0, p3}, Lcom/chaquo/python/PyObject;->callAttr(Ljava/lang/String;[Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    :cond_3
    return-void
.end method

.method private runDevServer()V
    .locals 3

    .line 304
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPython()Lcom/chaquo/python/Python;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->devServerClass:Lcom/chaquo/python/PyObject;

    if-eqz v0, :cond_1

    .line 309
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->stopDevServer()V

    .line 313
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPython()Lcom/chaquo/python/Python;

    move-result-object v0

    const-wide v1, -0x53130fa71c0974dbL    # -2.7746787237390586E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chaquo/python/Python;->getModule(Ljava/lang/String;)Lcom/chaquo/python/PyObject;

    move-result-object v0

    const-wide v1, -0x53130fb21c0974dbL    # -2.7746626304765894E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chaquo/python/PyObject;->get(Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    move-result-object v0

    iput-object v0, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->devServerClass:Lcom/chaquo/python/PyObject;

    if-nez v0, :cond_2

    :goto_0
    return-void

    :cond_2
    const-wide v1, -0x53130fbc1c0974dbL    # -2.774648000237981E-92

    .line 317
    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/chaquo/python/PyObject;->callAttrThrows(Ljava/lang/String;[Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    const-wide v0, -0x53130fc91c0974dbL    # -2.77462898092779E-92

    .line 318
    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-wide v1, -0x53130fea1c0974dbL    # -2.7745807011403822E-92

    .line 320
    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 321
    iput-object v0, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->devServerClass:Lcom/chaquo/python/PyObject;

    return-void
.end method

.method private stopAndUnloadSdk()V
    .locals 7

    .line 226
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->python:Lcom/chaquo/python/Python;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->python:Lcom/chaquo/python/Python;

    const-wide v1, -0x53130e951c0974dbL    # -2.775079592276929E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chaquo/python/Python;->getModule(Ljava/lang/String;)Lcom/chaquo/python/PyObject;

    move-result-object v0

    const-wide v1, -0x53130ea21c0974dbL    # -2.7750605729667382E-92

    .line 229
    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/chaquo/python/PyObject;->callAttr(Ljava/lang/String;[Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    .line 231
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->python:Lcom/chaquo/python/Python;

    const-wide v3, -0x53130eab1c0974dbL    # -2.7750474057519906E-92

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chaquo/python/Python;->getModule(Ljava/lang/String;)Lcom/chaquo/python/PyObject;

    move-result-object v0

    const-wide v3, -0x53130eaf1c0974dbL    # -2.7750415536565473E-92

    .line 232
    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chaquo/python/PyObject;->get(Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    move-result-object v1

    if-eqz v1, :cond_1

    const-wide v3, -0x53130eb41c0974dbL    # -2.775034238537243E-92

    .line 233
    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->SDK_DIR:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v4, v6, v2

    invoke-virtual {v1, v3, v6}, Lcom/chaquo/python/PyObject;->callAttr(Ljava/lang/String;[Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/chaquo/python/PyObject;->toBoolean()Z

    move-result v3

    if-eqz v3, :cond_1

    const-wide v3, -0x53130ec11c0974dbL    # -2.775015219227052E-92

    .line 234
    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->SDK_DIR:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v2

    invoke-virtual {v1, v3, v5}, Lcom/chaquo/python/PyObject;->callAttr(Ljava/lang/String;[Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    :cond_1
    const-wide v1, -0x53130ec81c0974dbL    # -2.7750049780600262E-92

    .line 236
    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chaquo/python/PyObject;->get(Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 237
    sget-object v1, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->SDK_DIR:Ljava/io/File;

    const-wide v2, -0x53130ed01c0974dbL    # -2.7749932738691395E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->removeModulesRecursive(Lcom/chaquo/python/PyObject;Ljava/io/File;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private stopDevServer()V
    .locals 4

    .line 326
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->devServerClass:Lcom/chaquo/python/PyObject;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide v1, -0x5313100a1c0974dbL    # -2.7745338843768353E-92

    const/4 v3, 0x0

    .line 330
    :try_start_0
    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/chaquo/python/PyObject;->callAttrThrows(Ljava/lang/String;[Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    const-wide v0, -0x531310161c0974dbL    # -2.7745163280905052E-92

    .line 331
    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    iput-object v3, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->devServerClass:Lcom/chaquo/python/PyObject;

    return-void

    :catchall_0
    move-exception v0

    const-wide v1, -0x531310371c0974dbL    # -2.7744680483030975E-92

    .line 333
    :try_start_1
    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 335
    iput-object v3, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->devServerClass:Lcom/chaquo/python/PyObject;

    return-void

    :catchall_1
    move-exception v0

    iput-object v3, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->devServerClass:Lcom/chaquo/python/PyObject;

    .line 336
    throw v0
.end method


# virtual methods
.method public canOpenInExternalApp()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public checkDevServer()V
    .locals 1

    .line 296
    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->pluginsDevMode:Z

    if-eqz v0, :cond_0

    .line 297
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->runDevServer()V

    return-void

    .line 299
    :cond_0
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->stopDevServer()V

    return-void
.end method

.method public clearPluginSettings(Ljava/lang/String;)V
    .locals 4

    .line 1272
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->settingsCache:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1273
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPython()Lcom/chaquo/python/Python;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1275
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPython()Lcom/chaquo/python/Python;

    move-result-object v0

    const-wide v1, -0x53131ac71c0974dbL    # -2.7705120317833826E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chaquo/python/Python;->getModule(Ljava/lang/String;)Lcom/chaquo/python/PyObject;

    move-result-object v0

    const-wide v1, -0x53131ad71c0974dbL    # -2.770488623401609E-92

    .line 1276
    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/chaquo/python/PyObject;->callAttr(Ljava/lang/String;[Ljava/lang/Object;)Lcom/chaquo/python/PyObject;
    :try_end_0
    .catch Lcom/chaquo/python/PyException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v2, -0x53131ae61c0974dbL    # -2.7704666780436965E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public deletePlugin(Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 652
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->pluginInstances:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 653
    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->unloadPlugin(Ljava/lang/String;)V

    .line 657
    :cond_0
    :try_start_0
    sget-object v0, Lcom/exteragram/messenger/plugins/pip/PipController;->INSTANCE:Lcom/exteragram/messenger/plugins/pip/PipController;

    invoke-virtual {v0, p1}, Lcom/exteragram/messenger/plugins/pip/PipController;->uninstallDependencies(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 659
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v2, -0x531314251c0974dbL    # -2.772996246299091E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 662
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPluginsController()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v1

    iget-object v1, v1, Lcom/exteragram/messenger/plugins/PluginsController;->pluginsDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v3, -0x5313144b1c0974dbL    # -2.772940651392379E-92

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 663
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 664
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 667
    :cond_1
    invoke-static {p1}, Lcom/exteragram/messenger/plugins/PluginsController;->isPluginPinned(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 668
    invoke-static {p1, v0}, Lcom/exteragram/messenger/plugins/PluginsController;->setPluginPinned(Ljava/lang/String;Z)V

    .line 670
    :cond_2
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPluginsController()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/exteragram/messenger/plugins/PluginsController;->clearPluginSettingsPreferences(Ljava/lang/String;)V

    .line 671
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPluginsController()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v0

    iget-object v0, v0, Lcom/exteragram/messenger/plugins/PluginsController;->plugins:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPluginsController()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/exteragram/messenger/plugins/PluginsController;->notifyPluginsChanged()V

    if-eqz p2, :cond_3

    .line 675
    new-instance p1, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$$ExternalSyntheticLambda17;

    invoke-direct {p1, p2}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method public executeHook(Lcom/chaquo/python/PyObject;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Lcom/exteragram/messenger/plugins/PythonPluginsEngine$PyMethodCaller;Lorg/telegram/messenger/Utilities$Callback;)Lcom/exteragram/messenger/plugins/PluginsController$HookResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/chaquo/python/PyObject;",
            "TT;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Lcom/exteragram/messenger/plugins/PythonPluginsEngine$PyMethodCaller<",
            "TT;>;",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Lcom/chaquo/python/PyException;",
            ">;)",
            "Lcom/exteragram/messenger/plugins/PluginsController$HookResult<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 1055
    :try_start_0
    invoke-interface {p5, p1, p2}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$PyMethodCaller;->call(Lcom/chaquo/python/PyObject;Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    move-result-object p1

    if-eqz p1, :cond_3

    const-wide v1, -0x531318f61c0974dbL    # -2.7711923378786738E-92

    .line 1057
    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p5

    const-wide v1, -0x531318ff1c0974dbL    # -2.7711791706639262E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p5, v1}, Lcom/exteragram/messenger/plugins/utils/PyObjectUtils;->getString(Lcom/chaquo/python/PyObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    const-wide v1, -0x531319071c0974dbL    # -2.7711674664730395E-92

    .line 1058
    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 1059
    new-instance p1, Lcom/exteragram/messenger/plugins/PluginsController$HookResult;

    const/4 p3, 0x0

    invoke-direct {p1, p3, v2, v0}, Lcom/exteragram/messenger/plugins/PluginsController$HookResult;-><init>(Ljava/lang/Object;ZZ)V

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    const-wide v3, -0x5313190e1c0974dbL    # -2.7711572253060136E-92

    .line 1060
    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-wide v3, -0x531319151c0974dbL    # -2.7711469841389877E-92

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1061
    :cond_1
    invoke-virtual {p1, p4}, Lcom/chaquo/python/PyObject;->get(Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1063
    invoke-virtual {p1, p3}, Lcom/chaquo/python/PyObject;->toJava(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    :cond_2
    const-wide p3, -0x531319221c0974dbL    # -2.7711279648287967E-92

    .line 1065
    invoke-static {p3, p4}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1066
    new-instance p1, Lcom/exteragram/messenger/plugins/PluginsController$HookResult;

    invoke-direct {p1, p2, v0, v2}, Lcom/exteragram/messenger/plugins/PluginsController$HookResult;-><init>(Ljava/lang/Object;ZZ)V
    :try_end_0
    .catch Lcom/chaquo/python/PyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 1071
    :goto_0
    invoke-interface {p6, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    .line 1075
    :cond_3
    new-instance p1, Lcom/exteragram/messenger/plugins/PluginsController$HookResult;

    invoke-direct {p1, p2, v0, v0}, Lcom/exteragram/messenger/plugins/PluginsController$HookResult;-><init>(Ljava/lang/Object;ZZ)V

    return-object p1
.end method

.method public executeOnAppEvent(Ljava/lang/String;)V
    .locals 9

    .line 1017
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPython()Lcom/chaquo/python/Python;

    move-result-object v0

    const-wide v1, -0x531318621c0974dbL    # -2.7714088654100783E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chaquo/python/Python;->getModule(Ljava/lang/String;)Lcom/chaquo/python/PyObject;

    move-result-object v0

    const-wide v1, -0x5313186e1c0974dbL    # -2.7713913091237482E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chaquo/python/PyObject;->get(Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v1, 0x1

    .line 1020
    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v2}, Lcom/chaquo/python/PyObject;->call([Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    move-result-object v0

    .line 1021
    :try_start_0
    iget-object v2, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->debuggerListener:Lcom/chaquo/python/PyObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    const-wide v4, -0x531318771c0974dbL    # -2.7713781419090006E-92

    .line 1023
    :try_start_1
    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v0, v5, v3

    invoke-virtual {v2, v4, v5}, Lcom/chaquo/python/PyObject;->callAttr(Ljava/lang/String;[Ljava/lang/Object;)Lcom/chaquo/python/PyObject;
    :try_end_1
    .catch Lcom/chaquo/python/PyException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :catch_0
    move-exception v2

    const-wide v4, -0x531318841c0974dbL    # -2.7713591225988097E-92

    .line 1025
    :try_start_2
    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1029
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->pluginInstances:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Lj$/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1030
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1031
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/chaquo/python/PyObject;

    const-wide v6, -0x531318b61c0974dbL    # -2.7712859714057676E-92

    .line 1032
    invoke-static {v6, v7}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v3}, Lcom/exteragram/messenger/plugins/utils/PyObjectUtils;->getBoolean(Lcom/chaquo/python/PyObject;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    const-wide v6, -0x531318be1c0974dbL    # -2.771274267214881E-92

    invoke-static {v6, v7}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Lcom/exteragram/messenger/plugins/utils/PyObjectUtils;->getString(Lcom/chaquo/python/PyObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    .line 1033
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPluginsController()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v6

    iget-object v6, v6, Lcom/exteragram/messenger/plugins/PluginsController;->watchdog:Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;

    invoke-virtual {v6, v5}, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;->onPluginExecutionStarted(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide v6, -0x531318cc1c0974dbL    # -2.771253784880829E-92

    .line 1035
    :try_start_3
    invoke-static {v6, v7}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v0, v7, v3

    invoke-virtual {v4, v6, v7}, Lcom/chaquo/python/PyObject;->callAttr(Ljava/lang/String;[Ljava/lang/Object;)Lcom/chaquo/python/PyObject;
    :try_end_3
    .catch Lcom/chaquo/python/PyException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1039
    :try_start_4
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPluginsController()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v4

    :goto_2
    iget-object v4, v4, Lcom/exteragram/messenger/plugins/PluginsController;->watchdog:Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception v4

    .line 1037
    :try_start_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v7, -0x531318d91c0974dbL    # -2.771234765570638E-92

    invoke-static {v7, v8}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v7, -0x531318f01c0974dbL    # -2.7712011160218388E-92

    invoke-static {v7, v8}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1039
    :try_start_6
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPluginsController()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v4

    goto :goto_2

    :goto_3
    invoke-virtual {v4, v5}, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;->onPluginExecutionFinished(Ljava/lang/String;)V

    goto/16 :goto_1

    :goto_4
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPluginsController()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v1

    iget-object v1, v1, Lcom/exteragram/messenger/plugins/PluginsController;->watchdog:Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;

    invoke-virtual {v1, v5}, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;->onPluginExecutionFinished(Ljava/lang/String;)V

    .line 1040
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_3
    if-eqz v0, :cond_4

    .line 1043
    invoke-virtual {v0}, Lcom/chaquo/python/PyObject;->close()V

    :cond_4
    :goto_5
    return-void

    :goto_6
    if-eqz v0, :cond_5

    .line 1020
    :try_start_7
    invoke-virtual {v0}, Lcom/chaquo/python/PyObject;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_7
    throw p1
.end method

.method public executePostRequestHook(Ljava/lang/String;ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Lcom/chaquo/python/PyObject;)Lcom/exteragram/messenger/plugins/PluginsController$HookResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lorg/telegram/tgnet/TLObject;",
            "Lorg/telegram/tgnet/TLRPC$TL_error;",
            "Lcom/chaquo/python/PyObject;",
            ")",
            "Lcom/exteragram/messenger/plugins/PluginsController$HookResult<",
            "Lcom/exteragram/messenger/plugins/hooks/PluginsHooks$PostRequestResult;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p5, :cond_3

    const-wide v1, -0x531319371c0974dbL    # -2.771097241327719E-92

    .line 1105
    :try_start_0
    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 p2, 0x2

    aput-object p3, v2, p2

    const/4 p2, 0x3

    aput-object p4, v2, p2

    invoke-virtual {p5, v1, v2}, Lcom/chaquo/python/PyObject;->callAttr(Ljava/lang/String;[Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    move-result-object p2

    if-eqz p2, :cond_3

    const-wide v1, -0x531319491c0974dbL    # -2.771070906898224E-92

    .line 1107
    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p5

    const-wide v1, -0x531319521c0974dbL    # -2.7710577396834764E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p5, v1}, Lcom/exteragram/messenger/plugins/utils/PyObjectUtils;->getString(Lcom/chaquo/python/PyObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    const-wide v1, -0x531319531c0974dbL    # -2.7710562766596155E-92

    .line 1108
    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-wide v1, -0x5313195a1c0974dbL    # -2.7710460354925896E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_0
    :goto_0
    const-wide v1, -0x531319671c0974dbL    # -2.7710270161823987E-92

    .line 1109
    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/chaquo/python/PyObject;->get(Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1111
    const-class v2, Lorg/telegram/tgnet/TLObject;

    invoke-virtual {v1, v2}, Lcom/chaquo/python/PyObject;->toJava(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLObject;

    move-object p3, v1

    :cond_1
    const-wide v1, -0x531319701c0974dbL    # -2.771013848967651E-92

    .line 1113
    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/chaquo/python/PyObject;->get(Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 1115
    const-class v1, Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-virtual {p2, v1}, Lcom/chaquo/python/PyObject;->toJava(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_error;

    move-object p4, p2

    :cond_2
    const-wide v1, -0x531319761c0974dbL    # -2.771005070824486E-92

    .line 1117
    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1118
    new-instance p2, Lcom/exteragram/messenger/plugins/PluginsController$HookResult;

    new-instance p5, Lcom/exteragram/messenger/plugins/hooks/PluginsHooks$PostRequestResult;

    invoke-direct {p5, p3, p4}, Lcom/exteragram/messenger/plugins/hooks/PluginsHooks$PostRequestResult;-><init>(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-direct {p2, p5, v0, v3}, Lcom/exteragram/messenger/plugins/PluginsController$HookResult;-><init>(Ljava/lang/Object;ZZ)V
    :try_end_0
    .catch Lcom/chaquo/python/PyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    .line 1123
    :goto_1
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x531319831c0974dbL    # -2.770986051514295E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1127
    :cond_3
    new-instance p1, Lcom/exteragram/messenger/plugins/PluginsController$HookResult;

    new-instance p2, Lcom/exteragram/messenger/plugins/hooks/PluginsHooks$PostRequestResult;

    invoke-direct {p2, p3, p4}, Lcom/exteragram/messenger/plugins/hooks/PluginsHooks$PostRequestResult;-><init>(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-direct {p1, p2, v0, v0}, Lcom/exteragram/messenger/plugins/PluginsController$HookResult;-><init>(Ljava/lang/Object;ZZ)V

    return-object p1
.end method

.method public executePostRequestHook(Ljava/lang/String;ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;)Lcom/exteragram/messenger/plugins/PluginsController$HookResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lorg/telegram/tgnet/TLObject;",
            "Lorg/telegram/tgnet/TLRPC$TL_error;",
            "Ljava/lang/String;",
            ")",
            "Lcom/exteragram/messenger/plugins/PluginsController$HookResult<",
            "Lcom/exteragram/messenger/plugins/hooks/PluginsHooks$PostRequestResult;",
            ">;"
        }
    .end annotation

    .line 1132
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPluginsController()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v0

    iget-object v0, v0, Lcom/exteragram/messenger/plugins/PluginsController;->watchdog:Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;

    invoke-virtual {v0, p5}, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;->onPluginExecutionStarted(Ljava/lang/String;)V

    .line 1134
    :try_start_0
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->pluginInstances:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p5}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/chaquo/python/PyObject;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->executePostRequestHook(Ljava/lang/String;ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Lcom/chaquo/python/PyObject;)Lcom/exteragram/messenger/plugins/PluginsController$HookResult;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1136
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPluginsController()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object p2

    iget-object p2, p2, Lcom/exteragram/messenger/plugins/PluginsController;->watchdog:Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;

    invoke-virtual {p2, p5}, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;->onPluginExecutionFinished(Ljava/lang/String;)V

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPluginsController()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object p2

    iget-object p2, p2, Lcom/exteragram/messenger/plugins/PluginsController;->watchdog:Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;

    invoke-virtual {p2, p5}, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;->onPluginExecutionFinished(Ljava/lang/String;)V

    .line 1137
    throw p1
.end method

.method public executePreRequestHook(Ljava/lang/String;ILorg/telegram/tgnet/TLObject;Ljava/lang/String;)Lcom/exteragram/messenger/plugins/PluginsController$HookResult;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lorg/telegram/tgnet/TLObject;",
            "Ljava/lang/String;",
            ")",
            "Lcom/exteragram/messenger/plugins/PluginsController$HookResult<",
            "Lorg/telegram/tgnet/TLObject;",
            ">;"
        }
    .end annotation

    const-wide v0, -0x5313192f1c0974dbL    # -2.7711089455186058E-92

    .line 1089
    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$$ExternalSyntheticLambda24;

    invoke-direct {v7, p1, p2}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$$ExternalSyntheticLambda24;-><init>(Ljava/lang/String;I)V

    new-instance v8, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$$ExternalSyntheticLambda25;

    invoke-direct {v8, p4, p1}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$$ExternalSyntheticLambda25;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-class v5, Lorg/telegram/tgnet/TLObject;

    move-object v2, p0

    move-object v4, p3

    move-object v3, p4

    invoke-direct/range {v2 .. v8}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->executeHook(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Lcom/exteragram/messenger/plugins/PythonPluginsEngine$PyMethodCaller;Lorg/telegram/messenger/Utilities$Callback;)Lcom/exteragram/messenger/plugins/PluginsController$HookResult;

    move-result-object p1

    return-object p1
.end method

.method public executeSendMessageHook(ILorg/telegram/messenger/SendMessagesHelper$SendMessageParams;Ljava/lang/String;)Lcom/exteragram/messenger/plugins/PluginsController$HookResult;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;",
            "Ljava/lang/String;",
            ")",
            "Lcom/exteragram/messenger/plugins/PluginsController$HookResult<",
            "Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;",
            ">;"
        }
    .end annotation

    const-wide v0, -0x531319bb1c0974dbL    # -2.770904122178088E-92

    .line 1166
    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$$ExternalSyntheticLambda21;

    invoke-direct {v7, p1}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$$ExternalSyntheticLambda21;-><init>(I)V

    new-instance v8, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$$ExternalSyntheticLambda22;

    invoke-direct {v8, p3}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$$ExternalSyntheticLambda22;-><init>(Ljava/lang/String;)V

    const-class v5, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-object v2, p0

    move-object v4, p2

    move-object v3, p3

    invoke-direct/range {v2 .. v8}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->executeHook(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Lcom/exteragram/messenger/plugins/PythonPluginsEngine$PyMethodCaller;Lorg/telegram/messenger/Utilities$Callback;)Lcom/exteragram/messenger/plugins/PluginsController$HookResult;

    move-result-object p1

    return-object p1
.end method

.method public executeUpdateHook(Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$Update;Ljava/lang/String;)Lcom/exteragram/messenger/plugins/PluginsController$HookResult;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lorg/telegram/tgnet/TLRPC$Update;",
            "Ljava/lang/String;",
            ")",
            "Lcom/exteragram/messenger/plugins/PluginsController$HookResult<",
            "Lorg/telegram/tgnet/TLRPC$Update;",
            ">;"
        }
    .end annotation

    const-wide v0, -0x531319ac1c0974dbL    # -2.7709260675360006E-92

    .line 1142
    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$$ExternalSyntheticLambda3;

    invoke-direct {v7, p1, p2}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;I)V

    new-instance v8, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$$ExternalSyntheticLambda4;

    invoke-direct {v8, p1}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    const-class v5, Lorg/telegram/tgnet/TLRPC$Update;

    move-object v2, p0

    move-object v4, p3

    move-object v3, p4

    invoke-direct/range {v2 .. v8}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->executeHook(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Lcom/exteragram/messenger/plugins/PythonPluginsEngine$PyMethodCaller;Lorg/telegram/messenger/Utilities$Callback;)Lcom/exteragram/messenger/plugins/PluginsController$HookResult;

    move-result-object p1

    return-object p1
.end method

.method public executeUpdatesHook(Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$Updates;Ljava/lang/String;)Lcom/exteragram/messenger/plugins/PluginsController$HookResult;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lorg/telegram/tgnet/TLRPC$Updates;",
            "Ljava/lang/String;",
            ")",
            "Lcom/exteragram/messenger/plugins/PluginsController$HookResult<",
            "Lorg/telegram/tgnet/TLRPC$Updates;",
            ">;"
        }
    .end annotation

    const-wide v0, -0x531319b31c0974dbL    # -2.7709158263689748E-92

    .line 1154
    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$$ExternalSyntheticLambda11;

    invoke-direct {v7, p1, p2}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$$ExternalSyntheticLambda11;-><init>(Ljava/lang/String;I)V

    new-instance v8, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$$ExternalSyntheticLambda12;

    invoke-direct {v8, p1}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$$ExternalSyntheticLambda12;-><init>(Ljava/lang/String;)V

    const-class v5, Lorg/telegram/tgnet/TLRPC$Updates;

    move-object v2, p0

    move-object v4, p3

    move-object v3, p4

    invoke-direct/range {v2 .. v8}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->executeHook(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Lcom/exteragram/messenger/plugins/PythonPluginsEngine$PyMethodCaller;Lorg/telegram/messenger/Utilities$Callback;)Lcom/exteragram/messenger/plugins/PluginsController$HookResult;

    move-result-object p1

    return-object p1
.end method

.method public fetchParameterValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1179
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1180
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 1184
    :cond_1
    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->parsePluginMetadata(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_2
    :goto_0
    return-object v0
.end method

.method public getAllPluginSettings(Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 1284
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPython()Lcom/chaquo/python/Python;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1286
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPython()Lcom/chaquo/python/Python;

    move-result-object v0

    const-wide v2, -0x53131b0b1c0974dbL    # -2.7704125461608453E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/chaquo/python/Python;->getModule(Ljava/lang/String;)Lcom/chaquo/python/PyObject;

    move-result-object v0

    const-wide v2, -0x53131b1b1c0974dbL    # -2.770389137779072E-92

    .line 1287
    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/chaquo/python/PyObject;->callAttr(Ljava/lang/String;[Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1289
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1290
    invoke-virtual {v0}, Lcom/chaquo/python/PyObject;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1291
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1292
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/chaquo/python/PyObject;

    invoke-virtual {v4}, Lcom/chaquo/python/PyObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/chaquo/python/PyObject;

    const-class v5, Ljava/lang/Object;

    invoke-virtual {v3, v5}, Lcom/chaquo/python/PyObject;->toJava(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_2
    move-object v3, v1

    :goto_1
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1295
    :cond_3
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->settingsCache:Lj$/util/concurrent/ConcurrentHashMap;

    new-instance v3, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3, v2}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, p1, v3}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/chaquo/python/PyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1299
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v3, -0x53131b2c1c0974dbL    # -2.7703642663734376E-92

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    return-object v1
.end method

.method public getPluginPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPluginsController()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v1

    iget-object v1, v1, Lcom/exteragram/messenger/plugins/PluginsController;->pluginsDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v1, -0x5313144f1c0974dbL    # -2.7729347992969358E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPluginSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1224
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->settingsCache:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    .line 1225
    invoke-virtual {v0, p2}, Lj$/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1226
    invoke-virtual {v0, p2}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1229
    :cond_0
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPython()Lcom/chaquo/python/Python;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1231
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPython()Lcom/chaquo/python/Python;

    move-result-object v0

    const-wide v1, -0x53131a4f1c0974dbL    # -2.7706875946466835E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chaquo/python/Python;->getModule(Ljava/lang/String;)Lcom/chaquo/python/PyObject;

    move-result-object v0

    const-wide v1, -0x53131a5f1c0974dbL    # -2.77066418626491E-92

    .line 1232
    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/chaquo/python/PyObject;->callAttr(Ljava/lang/String;[Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_0
    return-object p3

    .line 1237
    :cond_2
    instance-of v1, p3, Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 1238
    invoke-virtual {v0}, Lcom/chaquo/python/PyObject;->toBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    .line 1239
    :cond_3
    instance-of v1, p3, Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 1240
    invoke-virtual {v0}, Lcom/chaquo/python/PyObject;->toInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 1241
    :cond_4
    instance-of v1, p3, Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 1242
    invoke-virtual {v0}, Lcom/chaquo/python/PyObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1243
    :cond_5
    instance-of v1, p3, Ljava/lang/Float;

    if-eqz v1, :cond_6

    .line 1244
    invoke-virtual {v0}, Lcom/chaquo/python/PyObject;->toFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_1

    .line 1245
    :cond_6
    instance-of v1, p3, Ljava/lang/Long;

    if-eqz v1, :cond_7

    .line 1246
    invoke-virtual {v0}, Lcom/chaquo/python/PyObject;->toLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1

    .line 1248
    :cond_7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chaquo/python/PyObject;->toJava(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 1250
    :goto_1
    iget-object v1, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->settingsCache:Lj$/util/concurrent/ConcurrentHashMap;

    new-instance v2, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$$ExternalSyntheticLambda26;

    invoke-direct {v2}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$$ExternalSyntheticLambda26;-><init>()V

    invoke-static {v1, p1, v2}, Lj$/util/concurrent/ConcurrentMap$-EL;->computeIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2, v0}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/chaquo/python/PyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1253
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v2, -0x53131a6b1c0974dbL    # -2.77064662997858E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v2, -0x53131a891c0974dbL    # -2.7706027392627547E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p3
.end method

.method public init(Ljava/lang/Runnable;)V
    .locals 6

    .line 256
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPython()Lcom/chaquo/python/Python;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 258
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void

    .line 262
    :cond_1
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->initSdk()V

    .line 263
    new-instance v0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$$ExternalSyntheticLambda9;-><init>()V

    const-wide/16 v1, 0x1388

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 265
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->python:Lcom/chaquo/python/Python;

    const-wide v1, -0x53130f091c0974dbL    # -2.7749098815090715E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chaquo/python/Python;->getModule(Ljava/lang/String;)Lcom/chaquo/python/PyObject;

    move-result-object v0

    const-wide v1, -0x53130f161c0974dbL    # -2.7748908621988806E-92

    .line 266
    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chaquo/python/PyObject;->get(Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 267
    const-class v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/chaquo/python/PyObject;->toJava(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->SDK_VERSION:Ljava/lang/String;

    :goto_0
    sput-object v1, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->SDK_VERSION:Ljava/lang/String;

    const-wide v1, -0x53130f221c0974dbL    # -2.7748733059125505E-92

    .line 268
    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chaquo/python/PyObject;->get(Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 269
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/chaquo/python/PyObject;->toJava(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_3
    sget-boolean v0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->SDK_BETA:Z

    :goto_1
    sput-boolean v0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->SDK_BETA:Z

    .line 272
    :try_start_0
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->python:Lcom/chaquo/python/Python;

    const-wide v1, -0x53130f2b1c0974dbL    # -2.774860138697803E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chaquo/python/Python;->getModule(Ljava/lang/String;)Lcom/chaquo/python/PyObject;

    move-result-object v0

    .line 273
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPluginsController()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v1

    iget-object v1, v1, Lcom/exteragram/messenger/plugins/PluginsController;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    const-wide v2, -0x53130f3b1c0974dbL    # -2.7748367303160295E-92

    .line 274
    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPluginsController()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v3

    iget-object v3, v3, Lcom/exteragram/messenger/plugins/PluginsController;->pluginsDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v3, 0x1

    aput-object v1, v4, v3

    invoke-virtual {v0, v2, v4}, Lcom/chaquo/python/PyObject;->callAttr(Ljava/lang/String;[Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    move-result-object v0

    .line 276
    const-class v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/chaquo/python/PyObject;->toJava(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 277
    array-length v1, v0

    if-lez v1, :cond_5

    .line 278
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPluginsController()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v1

    iget-object v1, v1, Lcom/exteragram/messenger/plugins/PluginsController;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 279
    array-length v2, v0

    :goto_2
    if-ge v5, v2, :cond_4

    aget-object v3, v0, v5

    .line 280
    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    .line 282
    :cond_4
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v2, -0x53130f401c0974dbL    # -2.7748294151967253E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-wide v2, -0x53130f4a1c0974dbL    # -2.774814784958117E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/chaquo/python/PyException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    const-wide v1, -0x53130f7b1c0974dbL    # -2.7747430967889356E-92

    .line 286
    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 289
    :cond_5
    :goto_4
    sget-object v0, Lcom/exteragram/messenger/plugins/pip/PipController;->INSTANCE:Lcom/exteragram/messenger/plugins/pip/PipController;

    invoke-virtual {v0}, Lcom/exteragram/messenger/plugins/pip/PipController;->cleanup()V

    .line 290
    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->loadPlugins(Ljava/lang/Runnable;)V

    .line 291
    invoke-virtual {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->checkDevServer()V

    return-void
.end method

.method public isEngineAvailable()Z
    .locals 1

    .line 153
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPython()Lcom/chaquo/python/Python;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/chaquo/python/Python;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPlugin(Ljava/io/File;Lorg/telegram/messenger/MessageObject;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 148
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-wide v0, -0x53130e1a1c0974dbL    # -2.7752595442118126E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public loadPlugin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 441
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->loadPlugin(Ljava/lang/String;Ljava/lang/String;Lcom/exteragram/messenger/plugins/Plugin;Lcom/exteragram/messenger/plugins/pip/PipController$InstallerDelegate;)V

    return-void
.end method

.method public loadPlugin(Ljava/lang/String;Ljava/lang/String;Lcom/exteragram/messenger/plugins/Plugin;)V
    .locals 1

    const/4 v0, 0x0

    .line 445
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->loadPlugin(Ljava/lang/String;Ljava/lang/String;Lcom/exteragram/messenger/plugins/Plugin;Lcom/exteragram/messenger/plugins/pip/PipController$InstallerDelegate;)V

    return-void
.end method

.method public loadPlugin(Ljava/lang/String;Ljava/lang/String;Lcom/exteragram/messenger/plugins/Plugin;Lcom/exteragram/messenger/plugins/pip/PipController$InstallerDelegate;)V
    .locals 9

    .line 449
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPluginsController()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v0

    iget-object v0, v0, Lcom/exteragram/messenger/plugins/PluginsController;->preferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v2, -0x531310711c0974dbL    # -2.7743831929191687E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 451
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 452
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_8

    if-nez p3, :cond_1

    .line 457
    invoke-virtual {p0, p2}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->validatePluginFromFile(Ljava/lang/String;)Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;

    move-result-object p2

    .line 458
    iget-object p3, p2, Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;->error:Ljava/lang/String;

    if-nez p3, :cond_0

    .line 461
    iget-object p3, p2, Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    goto :goto_0

    .line 459
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    iget-object p2, p2, Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;->error:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 464
    :cond_1
    :goto_0
    invoke-virtual {p3}, Lcom/exteragram/messenger/plugins/Plugin;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x2

    const/4 v3, 0x1

    if-eqz p2, :cond_7

    .line 468
    iget-object p2, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->pluginInstances:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Lj$/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 469
    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->unloadPlugin(Ljava/lang/String;)V

    .line 472
    :cond_2
    invoke-virtual {p3}, Lcom/exteragram/messenger/plugins/Plugin;->getRequirements()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p3}, Lcom/exteragram/messenger/plugins/Plugin;->getRequirements()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    .line 473
    sget-object p2, Lcom/exteragram/messenger/plugins/pip/PipController;->INSTANCE:Lcom/exteragram/messenger/plugins/pip/PipController;

    invoke-virtual {p3}, Lcom/exteragram/messenger/plugins/Plugin;->getRequirements()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p2, v4, p1, p4}, Lcom/exteragram/messenger/plugins/pip/PipController;->installDependencies(Ljava/util/List;Ljava/lang/String;Lcom/exteragram/messenger/plugins/pip/PipController$InstallerDelegate;)Ljava/util/List;

    move-result-object p2

    .line 474
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPython()Lcom/chaquo/python/Python;

    move-result-object p4

    const-wide v4, -0x531310d61c0974dbL    # -2.7742354275092237E-92

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v4}, Lcom/chaquo/python/Python;->getModule(Ljava/lang/String;)Lcom/chaquo/python/PyObject;

    move-result-object p4

    const-wide v4, -0x531310da1c0974dbL    # -2.7742295754137803E-92

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v4}, Lcom/chaquo/python/PyObject;->get(Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    move-result-object p4

    if-eqz p4, :cond_4

    .line 476
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    :goto_1
    if-ltz v4, :cond_4

    .line 477
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-wide v6, -0x531310df1c0974dbL    # -2.774222260294476E-92

    .line 478
    invoke-static {v6, v7}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v5, v7, v2

    invoke-virtual {p4, v6, v7}, Lcom/chaquo/python/PyObject;->callAttr(Ljava/lang/String;[Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/chaquo/python/PyObject;->toBoolean()Z

    move-result v6

    if-eqz v6, :cond_3

    const-wide v6, -0x531310ec1c0974dbL    # -2.7742032409842852E-92

    .line 479
    invoke-static {v6, v7}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v5, v7, v2

    invoke-virtual {p4, v6, v7}, Lcom/chaquo/python/PyObject;->callAttr(Ljava/lang/String;[Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    :cond_3
    const-wide v6, -0x531310f31c0974dbL    # -2.7741929998172593E-92

    .line 481
    invoke-static {v6, v7}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v8, v1, [Ljava/lang/Object;

    aput-object v7, v8, v2

    aput-object v5, v8, v3

    invoke-virtual {p4, v6, v8}, Lcom/chaquo/python/PyObject;->callAttr(Ljava/lang/String;[Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 490
    :cond_4
    :try_start_0
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPython()Lcom/chaquo/python/Python;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/chaquo/python/Python;->getModule(Ljava/lang/String;)Lcom/chaquo/python/PyObject;

    move-result-object p2
    :try_end_0
    .catch Lcom/chaquo/python/PyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    invoke-direct {p0, p2}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->findPluginClass(Lcom/chaquo/python/PyObject;)Lcom/chaquo/python/PyObject;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 500
    new-array p4, v2, [Ljava/lang/Object;

    invoke-virtual {p2, p4}, Lcom/chaquo/python/PyObject;->call([Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    move-result-object p2

    const-wide v1, -0x5313118b1c0974dbL    # -2.7739706201904114E-92

    .line 501
    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3}, Lcom/exteragram/messenger/plugins/Plugin;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p4, v1}, Lcom/chaquo/python/PyObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    const-wide v1, -0x5313118e1c0974dbL    # -2.773966231118829E-92

    .line 502
    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3}, Lcom/exteragram/messenger/plugins/Plugin;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p4, v1}, Lcom/chaquo/python/PyObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    const-wide v1, -0x531311931c0974dbL    # -2.7739589159995247E-92

    .line 503
    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3}, Lcom/exteragram/messenger/plugins/Plugin;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p4, v1}, Lcom/chaquo/python/PyObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    const-wide v1, -0x5313119f1c0974dbL    # -2.7739413597131946E-92

    .line 504
    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3}, Lcom/exteragram/messenger/plugins/Plugin;->getAuthor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p4, v1}, Lcom/chaquo/python/PyObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    const-wide v1, -0x531311a61c0974dbL    # -2.7739311185461687E-92

    .line 505
    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3}, Lcom/exteragram/messenger/plugins/Plugin;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p4, v1}, Lcom/chaquo/python/PyObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    const-wide v1, -0x531311ae1c0974dbL    # -2.773919414355282E-92

    .line 506
    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3}, Lcom/exteragram/messenger/plugins/Plugin;->getIcon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p4, v1}, Lcom/chaquo/python/PyObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    const-wide v1, -0x531311b31c0974dbL    # -2.7739120992359778E-92

    .line 507
    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3}, Lcom/exteragram/messenger/plugins/Plugin;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p4, v1}, Lcom/chaquo/python/PyObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    const-wide v1, -0x531311bf1c0974dbL    # -2.7738945429496477E-92

    .line 508
    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3}, Lcom/exteragram/messenger/plugins/Plugin;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p4, v1}, Lcom/chaquo/python/PyObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    const-wide v1, -0x531311cb1c0974dbL    # -2.7738769866633176E-92

    .line 509
    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3}, Lcom/exteragram/messenger/plugins/Plugin;->getRequirements()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2, p4, v1}, Lcom/chaquo/python/PyObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    const-wide v1, -0x531311d81c0974dbL    # -2.7738579673531266E-92

    .line 510
    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p4

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, p4, v1}, Lcom/chaquo/python/PyObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    const-wide v4, -0x531311e01c0974dbL    # -2.77384626316224E-92

    .line 511
    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4, v1}, Lcom/chaquo/python/PyObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    const-wide v1, -0x531311ec1c0974dbL    # -2.7738287068759098E-92

    .line 512
    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p4

    const/4 v1, 0x0

    invoke-virtual {p2, p4, v1}, Lcom/chaquo/python/PyObject;->put(Ljava/lang/String;Lcom/chaquo/python/PyObject;)Lcom/chaquo/python/PyObject;

    .line 514
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPluginsController()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object p4

    iget-object p4, p4, Lcom/exteragram/messenger/plugins/PluginsController;->plugins:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p4, p1, p3}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    iget-object p3, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->pluginInstances:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3, p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_5

    .line 518
    invoke-virtual {p0, p1, v3, v1}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->setPluginEnabled(Ljava/lang/String;ZLorg/telegram/messenger/Utilities$Callback;)V

    :cond_5
    return-void

    .line 497
    :cond_6
    new-instance p2, Ljava/lang/Exception;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v0, -0x5313111b1c0974dbL    # -2.7741344788628256E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v0, -0x531311511c0974dbL    # -2.7740554755743402E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_0
    move-exception p1

    .line 492
    new-instance p2, Ljava/lang/Exception;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v0, -0x531310fa1c0974dbL    # -2.7741827586502334E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 465
    :cond_7
    new-instance p2, Ljava/lang/Exception;

    const-wide v4, -0x531310991c0974dbL    # -2.774324671964735E-92

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3}, Lcom/exteragram/messenger/plugins/Plugin;->getId()Ljava/lang/String;

    move-result-object p3

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object p3, v0, v3

    invoke-static {p4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p2

    .line 453
    :cond_8
    new-instance p1, Ljava/lang/Exception;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v0, -0x531310811c0974dbL    # -2.7743597845373952E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public loadPluginFromFile(Ljava/lang/String;Lcom/exteragram/messenger/plugins/Plugin;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/exteragram/messenger/plugins/Plugin;",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 737
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->loadPluginFromFile(Ljava/lang/String;Lcom/exteragram/messenger/plugins/Plugin;Lorg/telegram/messenger/Utilities$Callback;Lcom/exteragram/messenger/plugins/pip/PipController$InstallerDelegate;)V

    return-void
.end method

.method public loadPluginFromFile(Ljava/lang/String;Lcom/exteragram/messenger/plugins/Plugin;Lorg/telegram/messenger/Utilities$Callback;Lcom/exteragram/messenger/plugins/pip/PipController$InstallerDelegate;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/exteragram/messenger/plugins/Plugin;",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/exteragram/messenger/plugins/pip/PipController$InstallerDelegate;",
            ")V"
        }
    .end annotation

    .line 741
    new-instance v0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$$ExternalSyntheticLambda10;

    move-object v1, p0

    move-object v3, p1

    move-object v2, p2

    move-object v5, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$$ExternalSyntheticLambda10;-><init>(Lcom/exteragram/messenger/plugins/PythonPluginsEngine;Lcom/exteragram/messenger/plugins/Plugin;Ljava/lang/String;Lcom/exteragram/messenger/plugins/pip/PipController$InstallerDelegate;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-static {v0}, Lcom/exteragram/messenger/plugins/PluginsController;->runOnPluginsQueue(Ljava/lang/Runnable;)V

    return-void
.end method

.method public loadPluginSettings(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/exteragram/messenger/plugins/models/SettingItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 990
    :try_start_0
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPluginsController()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v1

    iget-object v1, v1, Lcom/exteragram/messenger/plugins/PluginsController;->plugins:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/exteragram/messenger/plugins/Plugin;

    .line 991
    iget-object v2, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->pluginInstances:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chaquo/python/PyObject;

    if-eqz v1, :cond_3

    .line 992
    invoke-virtual {v1}, Lcom/exteragram/messenger/plugins/Plugin;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lcom/exteragram/messenger/plugins/Plugin;->hasError()Z

    move-result v1

    if-nez v1, :cond_3

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide v3, -0x531318331c0974dbL    # -2.7714776275315378E-92

    .line 997
    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v1}, Lcom/chaquo/python/PyObject;->callAttr(Ljava/lang/String;[Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    .line 1003
    :cond_1
    invoke-virtual {p1}, Lcom/chaquo/python/PyObject;->asList()Ljava/util/List;

    move-result-object p1

    .line 1004
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    .line 1008
    :cond_2
    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->parsePySettingDefinitions(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_1

    .line 993
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPluginsController()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/exteragram/messenger/plugins/PluginsController;->invalidatePluginSettings(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_1
    const-wide v1, -0x531318431c0974dbL    # -2.7714542191497644E-92

    .line 1010
    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public loadPlugins(Ljava/lang/Runnable;)V
    .locals 1

    .line 373
    new-instance v0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0, p1}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$$ExternalSyntheticLambda23;-><init>(Lcom/exteragram/messenger/plugins/PythonPluginsEngine;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcom/exteragram/messenger/plugins/PluginsController;->runOnPluginsQueue(Ljava/lang/Runnable;)V

    return-void
.end method

.method public openInExternalApp(Ljava/lang/String;)V
    .locals 7

    .line 691
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 693
    :cond_0
    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPluginPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 694
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 695
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 696
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-wide v3, -0x531314531c0974dbL    # -2.7729289472014924E-92

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lorg/telegram/messenger/AndroidUtilities;->openForView(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public openPluginSetting(Lcom/exteragram/messenger/plugins/Plugin;Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1344
    :cond_0
    new-instance v0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$$ExternalSyntheticLambda16;-><init>(Lcom/exteragram/messenger/plugins/PythonPluginsEngine;Lcom/exteragram/messenger/plugins/Plugin;Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-static {v0}, Lcom/exteragram/messenger/plugins/PluginsController;->runOnPluginsQueue(Ljava/lang/Runnable;)V

    return-void
.end method

.method public openPluginSetting(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 1386
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPluginsController()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v0

    iget-object v0, v0, Lcom/exteragram/messenger/plugins/PluginsController;->plugins:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/exteragram/messenger/plugins/Plugin;

    if-eqz p1, :cond_0

    .line 1388
    invoke-virtual {p0, p1, p2, p3}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->openPluginSetting(Lcom/exteragram/messenger/plugins/Plugin;Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    :cond_0
    return-void
.end method

.method public openPluginSettings(Lcom/exteragram/messenger/plugins/Plugin;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1337
    :cond_0
    new-instance v0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$$ExternalSyntheticLambda5;

    invoke-direct {v0, p2, p1}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/exteragram/messenger/plugins/Plugin;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public openPluginSettings(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 1327
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPluginsController()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v0

    iget-object v0, v0, Lcom/exteragram/messenger/plugins/PluginsController;->plugins:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/exteragram/messenger/plugins/Plugin;

    if-eqz p1, :cond_0

    .line 1329
    invoke-virtual {p0, p1, p2}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->openPluginSettings(Lcom/exteragram/messenger/plugins/Plugin;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    :cond_0
    return-void
.end method

.method public parsePluginMetadata(Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1191
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 1196
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1197
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_1

    .line 1201
    :cond_1
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPython()Lcom/chaquo/python/Python;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v2, -0x531319c21c0974dbL    # -2.770893881011062E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    return-object v0

    .line 1207
    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPython()Lcom/chaquo/python/Python;

    move-result-object v1

    const-wide v2, -0x531319fc1c0974dbL    # -2.7708090256271333E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/chaquo/python/Python;->getModule(Ljava/lang/String;)Lcom/chaquo/python/PyObject;

    move-result-object v1

    const-wide v2, -0x53131a191c0974dbL    # -2.770766597935169E-92

    .line 1208
    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/chaquo/python/PyObject;->callAttr(Ljava/lang/String;[Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1211
    invoke-virtual {v1}, Lcom/chaquo/python/PyObject;->asMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1212
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/chaquo/python/PyObject;

    invoke-virtual {v3}, Lcom/chaquo/python/PyObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chaquo/python/PyObject;

    invoke-virtual {v2}, Lcom/chaquo/python/PyObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/chaquo/python/PyException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v2, -0x53131a261c0974dbL    # -2.770747578624978E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v2, -0x53131a451c0974dbL    # -2.770702224885292E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1217
    throw v0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public parsePySettingDefinitions(Ljava/util/List;)Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chaquo/python/PyObject;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/exteragram/messenger/plugins/models/SettingItem;",
            ">;"
        }
    .end annotation

    .line 902
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 904
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chaquo/python/PyObject;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const-wide v3, -0x531317081c0974dbL    # -2.7719150716659294E-92

    .line 907
    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/exteragram/messenger/plugins/utils/PyObjectUtils;->getString(Lcom/chaquo/python/PyObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const-wide v2, -0x5313170d1c0974dbL    # -2.771907756546625E-92

    .line 909
    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-wide v5, -0x531317491c0974dbL    # -2.7718199751149747E-92

    .line 913
    invoke-static {v5, v6}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v4}, Lcom/exteragram/messenger/plugins/utils/PyObjectUtils;->getString(Lcom/chaquo/python/PyObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-wide v5, -0x5313174d1c0974dbL    # -2.7718141230195313E-92

    .line 914
    invoke-static {v5, v6}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v4}, Lcom/exteragram/messenger/plugins/utils/PyObjectUtils;->getString(Lcom/chaquo/python/PyObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-wide v5, -0x531317521c0974dbL    # -2.771806807900227E-92

    .line 915
    invoke-static {v5, v6}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v4}, Lcom/exteragram/messenger/plugins/utils/PyObjectUtils;->getString(Lcom/chaquo/python/PyObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-wide v5, -0x5313175a1c0974dbL    # -2.7717951037093404E-92

    .line 916
    invoke-static {v5, v6}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v4}, Lcom/exteragram/messenger/plugins/utils/PyObjectUtils;->getString(Lcom/chaquo/python/PyObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-wide v5, -0x5313175f1c0974dbL    # -2.7717877885900362E-92

    .line 917
    invoke-static {v5, v6}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/chaquo/python/PyObject;->get(Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    move-result-object v12

    const-wide v5, -0x531317691c0974dbL    # -2.7717731583514278E-92

    .line 918
    invoke-static {v5, v6}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/chaquo/python/PyObject;->get(Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    move-result-object v17

    const-wide v5, -0x531317771c0974dbL    # -2.771752676017376E-92

    .line 919
    invoke-static {v5, v6}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v4}, Lcom/exteragram/messenger/plugins/utils/PyObjectUtils;->getString(Lcom/chaquo/python/PyObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-wide v5, -0x531317821c0974dbL    # -2.7717365827549067E-92

    .line 920
    invoke-static {v5, v6}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/chaquo/python/PyObject;->get(Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    move-result-object v5

    const-wide v15, -0x5313178a1c0974dbL    # -2.77172487856402E-92

    .line 921
    invoke-static/range {v15 .. v16}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/chaquo/python/PyObject;->get(Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    move-result-object v15

    const-wide v18, -0x531317931c0974dbL    # -2.7717117113492724E-92

    .line 922
    invoke-static/range {v18 .. v19}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/chaquo/python/PyObject;->get(Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    move-result-object v16

    .line 924
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v9, 0x0

    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_7

    :sswitch_0
    const-wide v5, -0x531317d31c0974dbL    # -2.7716180778221786E-92

    invoke-static {v5, v6}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 963
    new-instance v4, Lcom/exteragram/messenger/plugins/models/DividerSetting;

    invoke-direct {v4, v8}, Lcom/exteragram/messenger/plugins/models/DividerSetting;-><init>(Ljava/lang/String;)V

    goto/16 :goto_7

    :sswitch_1
    const-wide v9, -0x531317b51c0974dbL    # -2.7716619685380038E-92

    .line 924
    invoke-static {v9, v10}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-wide v9, -0x531317e21c0974dbL    # -2.771596132464266E-92

    .line 935
    invoke-static {v9, v10}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lcom/exteragram/messenger/plugins/utils/PyObjectUtils;->getStringArray(Lcom/chaquo/python/PyObject;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    if-eqz v7, :cond_8

    if-eqz v8, :cond_8

    if-eqz v10, :cond_8

    .line 936
    array-length v2, v10

    if-eqz v2, :cond_8

    if-eqz v5, :cond_8

    .line 937
    new-instance v6, Lcom/exteragram/messenger/plugins/models/SelectorSetting;

    invoke-virtual {v5}, Lcom/chaquo/python/PyObject;->toInt()I

    move-result v9

    move-object/from16 v13, v17

    invoke-direct/range {v6 .. v14}, Lcom/exteragram/messenger/plugins/models/SelectorSetting;-><init>(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Lcom/chaquo/python/PyObject;Lcom/chaquo/python/PyObject;Ljava/lang/String;)V

    :goto_1
    move-object v4, v6

    goto/16 :goto_7

    :sswitch_2
    const-wide v15, -0x531317be1c0974dbL    # -2.7716488013232563E-92

    .line 924
    invoke-static/range {v15 .. v16}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v7, :cond_8

    if-eqz v8, :cond_8

    .line 943
    new-instance v6, Lcom/exteragram/messenger/plugins/models/InputSetting;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/chaquo/python/PyObject;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    move-object v9, v2

    move-object/from16 v13, v17

    goto :goto_3

    :cond_3
    const-wide v2, -0x531317e81c0974dbL    # -2.771587354321101E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :goto_3
    invoke-direct/range {v6 .. v14}, Lcom/exteragram/messenger/plugins/models/InputSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/chaquo/python/PyObject;Lcom/chaquo/python/PyObject;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_3
    const-wide v5, -0x531317ce1c0974dbL    # -2.7716253929414828E-92

    .line 924
    invoke-static {v5, v6}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-wide v5, -0x531318091c0974dbL    # -2.771539074533693E-92

    .line 958
    invoke-static {v5, v6}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v9}, Lcom/exteragram/messenger/plugins/utils/PyObjectUtils;->getBoolean(Lcom/chaquo/python/PyObject;Ljava/lang/String;Z)Z

    move-result v12

    const-wide v5, -0x531318101c0974dbL    # -2.7715288333666673E-92

    .line 959
    invoke-static {v5, v6}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v9}, Lcom/exteragram/messenger/plugins/utils/PyObjectUtils;->getBoolean(Lcom/chaquo/python/PyObject;Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v8, :cond_8

    move-object v9, v8

    .line 960
    new-instance v8, Lcom/exteragram/messenger/plugins/models/TextSetting;

    move-object/from16 v20, v17

    move-object/from16 v17, v14

    move-object v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v20

    invoke-direct/range {v8 .. v17}, Lcom/exteragram/messenger/plugins/models/TextSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/chaquo/python/PyObject;Lcom/chaquo/python/PyObject;Lcom/chaquo/python/PyObject;Ljava/lang/String;)V

    move-object v4, v8

    goto/16 :goto_7

    :sswitch_4
    const-wide v15, -0x531317ae1c0974dbL    # -2.7716722097050297E-92

    .line 924
    invoke-static/range {v15 .. v16}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v7, :cond_8

    if-eqz v8, :cond_8

    if-eqz v5, :cond_8

    .line 930
    new-instance v6, Lcom/exteragram/messenger/plugins/models/SwitchSetting;

    invoke-virtual {v5}, Lcom/chaquo/python/PyObject;->toBoolean()Z

    move-result v9

    move-object/from16 v13, v17

    invoke-direct/range {v6 .. v14}, Lcom/exteragram/messenger/plugins/models/SwitchSetting;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/chaquo/python/PyObject;Lcom/chaquo/python/PyObject;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_5
    const-wide v5, -0x531317a71c0974dbL    # -2.7716824508720556E-92

    .line 924
    invoke-static {v5, v6}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v8, :cond_8

    .line 926
    new-instance v4, Lcom/exteragram/messenger/plugins/models/HeaderSetting;

    invoke-direct {v4, v8}, Lcom/exteragram/messenger/plugins/models/HeaderSetting;-><init>(Ljava/lang/String;)V

    goto/16 :goto_7

    :sswitch_6
    const-wide v5, -0x531317db1c0974dbL    # -2.771606373631292E-92

    .line 924
    invoke-static {v5, v6}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-wide v5, -0x531318141c0974dbL    # -2.771522981271224E-92

    .line 965
    invoke-static {v5, v6}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/chaquo/python/PyObject;->get(Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    move-result-object v3

    const-wide v5, -0x531318191c0974dbL    # -2.7715156661519197E-92

    .line 966
    invoke-static {v5, v6}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/chaquo/python/PyObject;->get(Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    move-result-object v5

    const-wide v6, -0x5313181e1c0974dbL    # -2.7715083510326155E-92

    .line 967
    invoke-static {v6, v7}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/chaquo/python/PyObject;->get(Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    move-result-object v6

    const-wide v7, -0x531318261c0974dbL    # -2.7714966468417288E-92

    .line 968
    invoke-static {v7, v8}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/chaquo/python/PyObject;->get(Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    move-result-object v2

    if-eqz v6, :cond_5

    .line 970
    const-class v3, Lcom/exteragram/messenger/plugins/models/CustomSetting$Factory;

    if-nez v2, :cond_4

    new-instance v13, Lcom/exteragram/messenger/plugins/models/CustomSetting;

    invoke-virtual {v6, v3}, Lcom/chaquo/python/PyObject;->toJava(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/exteragram/messenger/plugins/models/CustomSetting$Factory;

    move-object/from16 v18, v14

    move-object v14, v2

    invoke-direct/range {v13 .. v18}, Lcom/exteragram/messenger/plugins/models/CustomSetting;-><init>(Lcom/exteragram/messenger/plugins/models/CustomSetting$Factory;Lcom/chaquo/python/PyObject;Lcom/chaquo/python/PyObject;Lcom/chaquo/python/PyObject;Ljava/lang/String;)V

    :goto_4
    move-object v4, v13

    goto/16 :goto_7

    .line 971
    :cond_4
    new-instance v13, Lcom/exteragram/messenger/plugins/models/CustomSetting;

    invoke-virtual {v6, v3}, Lcom/chaquo/python/PyObject;->toJava(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/exteragram/messenger/plugins/models/CustomSetting$Factory;

    move-object/from16 v19, v14

    move-object/from16 v18, v17

    move-object v14, v3

    move-object/from16 v17, v16

    move-object/from16 v16, v15

    move-object v15, v2

    invoke-direct/range {v13 .. v19}, Lcom/exteragram/messenger/plugins/models/CustomSetting;-><init>(Lcom/exteragram/messenger/plugins/models/CustomSetting$Factory;Lcom/chaquo/python/PyObject;Lcom/chaquo/python/PyObject;Lcom/chaquo/python/PyObject;Lcom/chaquo/python/PyObject;Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    if-eqz v5, :cond_6

    .line 973
    new-instance v13, Lcom/exteragram/messenger/plugins/models/CustomSetting;

    const-class v2, Lorg/telegram/ui/Components/UItem;

    invoke-virtual {v5, v2}, Lcom/chaquo/python/PyObject;->toJava(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/UItem;

    move-object/from16 v18, v14

    move-object v14, v2

    invoke-direct/range {v13 .. v18}, Lcom/exteragram/messenger/plugins/models/CustomSetting;-><init>(Lorg/telegram/ui/Components/UItem;Lcom/chaquo/python/PyObject;Lcom/chaquo/python/PyObject;Lcom/chaquo/python/PyObject;Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    if-eqz v3, :cond_8

    .line 974
    new-instance v13, Lcom/exteragram/messenger/plugins/models/CustomSetting;

    const-class v2, Landroid/view/View;

    invoke-virtual {v3, v2}, Lcom/chaquo/python/PyObject;->toJava(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object/from16 v18, v14

    move-object v14, v2

    invoke-direct/range {v13 .. v18}, Lcom/exteragram/messenger/plugins/models/CustomSetting;-><init>(Landroid/view/View;Lcom/chaquo/python/PyObject;Lcom/chaquo/python/PyObject;Lcom/chaquo/python/PyObject;Ljava/lang/String;)V

    goto :goto_4

    :sswitch_7
    const-wide v10, -0x531317c41c0974dbL    # -2.7716400231800912E-92

    .line 924
    invoke-static {v10, v11}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-wide v10, -0x531317e91c0974dbL    # -2.77158589129724E-92

    .line 948
    invoke-static {v10, v11}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lcom/exteragram/messenger/plugins/utils/PyObjectUtils;->getString(Lcom/chaquo/python/PyObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-wide v10, -0x531317ee1c0974dbL    # -2.771578576177936E-92

    .line 949
    invoke-static {v10, v11}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v9}, Lcom/exteragram/messenger/plugins/utils/PyObjectUtils;->getBoolean(Lcom/chaquo/python/PyObject;Ljava/lang/String;Z)Z

    move-result v10

    const-wide v13, -0x531317f81c0974dbL    # -2.7715639459393275E-92

    .line 950
    invoke-static {v13, v14}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x100

    invoke-static {v2, v3, v6}, Lcom/exteragram/messenger/plugins/utils/PyObjectUtils;->getInt(Lcom/chaquo/python/PyObject;Ljava/lang/String;I)I

    move-result v11

    const-wide v13, -0x531318031c0974dbL    # -2.7715478526768582E-92

    .line 951
    invoke-static {v13, v14}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lcom/exteragram/messenger/plugins/utils/PyObjectUtils;->getString(Lcom/chaquo/python/PyObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v7, :cond_8

    if-eqz v8, :cond_8

    .line 953
    new-instance v6, Lcom/exteragram/messenger/plugins/models/EditTextSetting;

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lcom/chaquo/python/PyObject;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_5
    move-object v9, v3

    move-object v13, v12

    move-object v12, v2

    goto :goto_6

    :cond_7
    const-wide v3, -0x531318081c0974dbL    # -2.771540537557554E-92

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :goto_6
    invoke-direct/range {v6 .. v13}, Lcom/exteragram/messenger/plugins/models/EditTextSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Lcom/chaquo/python/PyObject;)V

    goto/16 :goto_1

    :cond_8
    :goto_7
    if-eqz v4, :cond_0

    .line 980
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x6f3939be -> :sswitch_7
        -0x5069748f -> :sswitch_6
        -0x48cb1d73 -> :sswitch_5
        -0x350448cc -> :sswitch_4
        0x36452d -> :sswitch_3
        0x5fb57ca -> :sswitch_2
        0x4705f3df -> :sswitch_1
        0x63cc1319 -> :sswitch_0
    .end sparse-switch
.end method

.method public setDebuggerListener(Lcom/chaquo/python/PyObject;)V
    .locals 0

    .line 1393
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->debuggerListener:Lcom/chaquo/python/PyObject;

    return-void
.end method

.method public setPluginEnabled(Ljava/lang/String;ZLorg/telegram/messenger/Utilities$Callback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 575
    :try_start_0
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPluginsController()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v1

    iget-object v1, v1, Lcom/exteragram/messenger/plugins/PluginsController;->plugins:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/exteragram/messenger/plugins/Plugin;

    .line 576
    iget-object v2, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->pluginInstances:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chaquo/python/PyObject;

    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    const-wide v3, -0x5313133a1c0974dbL    # -2.7733400569063888E-92

    .line 582
    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/exteragram/messenger/plugins/utils/PyObjectUtils;->getBoolean(Lcom/chaquo/python/PyObject;Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x0

    if-ne v3, p2, :cond_0

    .line 583
    invoke-virtual {v1}, Lcom/exteragram/messenger/plugins/Plugin;->hasError()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p3, :cond_8

    .line 584
    invoke-interface {p3, v4}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v1

    goto/16 :goto_5

    :cond_0
    if-eqz p2, :cond_1

    .line 589
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPluginsController()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/exteragram/messenger/plugins/PluginsController;->cleanupPlugin(Ljava/lang/String;)V

    .line 590
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPluginsController()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v3

    iget-object v3, v3, Lcom/exteragram/messenger/plugins/PluginsController;->watchdog:Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;

    invoke-virtual {v3, p1}, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;->onPluginExecutionStarted(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide v5, -0x531313461c0974dbL    # -2.7733225006200587E-92

    .line 592
    :try_start_1
    invoke-static {v5, v6}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v5}, Lcom/chaquo/python/PyObject;->callAttr(Ljava/lang/String;[Ljava/lang/Object;)Lcom/chaquo/python/PyObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 594
    :try_start_2
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPluginsController()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v3

    iget-object v3, v3, Lcom/exteragram/messenger/plugins/PluginsController;->watchdog:Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;

    invoke-virtual {v3, p1}, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;->onPluginExecutionFinished(Ljava/lang/String;)V

    const-wide v5, -0x531313551c0974dbL    # -2.773300555262146E-92

    .line 596
    invoke-static {v5, v6}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v5}, Lcom/chaquo/python/PyObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    const-wide v5, -0x531313611c0974dbL    # -2.773282998975816E-92

    .line 597
    invoke-static {v5, v6}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/chaquo/python/PyObject;->put(Ljava/lang/String;Lcom/chaquo/python/PyObject;)Lcom/chaquo/python/PyObject;

    .line 598
    invoke-virtual {v1, v4}, Lcom/exteragram/messenger/plugins/Plugin;->setError(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :catchall_1
    move-exception v1

    .line 594
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPluginsController()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v2

    iget-object v2, v2, Lcom/exteragram/messenger/plugins/PluginsController;->watchdog:Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;

    invoke-virtual {v2, p1}, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;->onPluginExecutionFinished(Ljava/lang/String;)V

    .line 595
    throw v1

    :cond_1
    const-wide v3, -0x5313136f1c0974dbL    # -2.7732625166417642E-92

    .line 600
    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/exteragram/messenger/plugins/utils/PyObjectUtils;->getBoolean(Lcom/chaquo/python/PyObject;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 601
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPluginsController()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v3

    iget-object v3, v3, Lcom/exteragram/messenger/plugins/PluginsController;->watchdog:Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;

    invoke-virtual {v3, p1}, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;->onPluginExecutionStarted(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide v3, -0x5313137b1c0974dbL    # -2.773244960355434E-92

    .line 603
    :try_start_3
    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/chaquo/python/PyObject;->callAttr(Ljava/lang/String;[Ljava/lang/Object;)Lcom/chaquo/python/PyObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 607
    :try_start_4
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPluginsController()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v3

    :goto_0
    iget-object v3, v3, Lcom/exteragram/messenger/plugins/PluginsController;->watchdog:Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_2
    move-exception v3

    .line 605
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v5, -0x5313138c1c0974dbL    # -2.7732200889497998E-92

    invoke-static {v5, v6}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 607
    :try_start_6
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPluginsController()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v3

    goto :goto_0

    :goto_1
    invoke-virtual {v3, p1}, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;->onPluginExecutionFinished(Ljava/lang/String;)V

    goto :goto_2

    :catchall_3
    move-exception v1

    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPluginsController()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v2

    iget-object v2, v2, Lcom/exteragram/messenger/plugins/PluginsController;->watchdog:Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;

    invoke-virtual {v2, p1}, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;->onPluginExecutionFinished(Ljava/lang/String;)V

    .line 608
    throw v1

    :cond_2
    :goto_2
    const-wide v3, -0x531313af1c0974dbL    # -2.7731688831146704E-92

    .line 610
    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4}, Lcom/chaquo/python/PyObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    .line 611
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPluginsController()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/exteragram/messenger/plugins/PluginsController;->cleanupPlugin(Ljava/lang/String;)V

    .line 614
    :goto_3
    invoke-virtual {v1, p2}, Lcom/exteragram/messenger/plugins/Plugin;->setEnabled(Z)V

    const-wide v3, -0x531313bb1c0974dbL    # -2.7731513268283403E-92

    .line 615
    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/chaquo/python/PyObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    .line 616
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPluginsController()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v1

    iget-object v1, v1, Lcom/exteragram/messenger/plugins/PluginsController;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v3, -0x531313c31c0974dbL    # -2.7731396226374536E-92

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz p2, :cond_3

    .line 619
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPluginsController()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/exteragram/messenger/plugins/PluginsController;->loadPluginSettings(Ljava/lang/String;)V

    goto :goto_4

    .line 621
    :cond_3
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPluginsController()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/exteragram/messenger/plugins/PluginsController;->invalidatePluginSettings(Ljava/lang/String;)V

    .line 624
    :goto_4
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPluginsController()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/exteragram/messenger/plugins/PluginsController;->notifyPluginsChanged()V

    if-eqz p3, :cond_8

    .line 626
    new-instance v1, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$$ExternalSyntheticLambda18;

    invoke-direct {v1, p3}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_6

    .line 579
    :cond_4
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v3, -0x531313271c0974dbL    # -2.7733678543597448E-92

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 629
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v3, -0x531313d31c0974dbL    # -2.77311621425568E-92

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p2, :cond_7

    .line 631
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPluginsController()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object p2

    iget-object p2, p2, Lcom/exteragram/messenger/plugins/PluginsController;->plugins:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/exteragram/messenger/plugins/Plugin;

    if-eqz p2, :cond_5

    .line 633
    invoke-virtual {p2, v0}, Lcom/exteragram/messenger/plugins/Plugin;->setEnabled(Z)V

    .line 634
    invoke-virtual {p2, v1}, Lcom/exteragram/messenger/plugins/Plugin;->setError(Ljava/lang/Throwable;)V

    .line 636
    :cond_5
    iget-object p2, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->pluginInstances:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/chaquo/python/PyObject;

    if-eqz p2, :cond_6

    const-wide v2, -0x531313ff1c0974dbL    # -2.773051841205803E-92

    .line 638
    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, v2, v3}, Lcom/chaquo/python/PyObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    const-wide v2, -0x531314071c0974dbL    # -2.7730401370149163E-92

    .line 639
    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lcom/chaquo/python/PyObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    .line 641
    :cond_6
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPluginsController()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object p2

    iget-object p2, p2, Lcom/exteragram/messenger/plugins/PluginsController;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v3, -0x531314151c0974dbL    # -2.7730196546808646E-92

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 642
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPluginsController()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/exteragram/messenger/plugins/PluginsController;->cleanupPlugin(Ljava/lang/String;)V

    :cond_7
    if-eqz p3, :cond_8

    .line 645
    new-instance p1, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$$ExternalSyntheticLambda19;

    invoke-direct {p1, p3, v1}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/Throwable;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_8
    :goto_6
    return-void
.end method

.method public setPluginSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .line 1260
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->settingsCache:Lj$/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, p1, v1}, Lj$/util/concurrent/ConcurrentMap$-EL;->computeIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2, p3}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1261
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPython()Lcom/chaquo/python/Python;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1263
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPython()Lcom/chaquo/python/Python;

    move-result-object v0

    const-wide v1, -0x53131a8b1c0974dbL    # -2.770599813215033E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chaquo/python/Python;->getModule(Ljava/lang/String;)Lcom/chaquo/python/PyObject;

    move-result-object v0

    const-wide v1, -0x53131a9b1c0974dbL    # -2.7705764048332596E-92

    .line 1264
    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/chaquo/python/PyObject;->callAttr(Ljava/lang/String;[Ljava/lang/Object;)Lcom/chaquo/python/PyObject;
    :try_end_0
    .catch Lcom/chaquo/python/PyException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p3

    .line 1266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x53131aa71c0974dbL    # -2.7705588485469295E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v1, -0x53131ac51c0974dbL    # -2.7705149578311042E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public sharePlugin(Ljava/lang/String;)V
    .locals 10

    .line 702
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 705
    :cond_0
    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPluginPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 706
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v3

    const-wide v4, -0x5313145e1c0974dbL    # -2.772912853939023E-92

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 707
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 708
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 711
    :cond_1
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v5, -0x531314631c0974dbL    # -2.772905538819719E-92

    invoke-static {v5, v6}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 715
    :try_start_0
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 716
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 717
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    invoke-virtual {p1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v8

    const-wide/16 v6, 0x0

    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 718
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    .line 720
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v4, -0x5313146b1c0974dbL    # -2.7728938346288322E-92

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v3}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0

    .line 726
    new-instance v1, Landroid/content/Intent;

    const-wide v4, -0x531314751c0974dbL    # -2.7728792043902238E-92

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 727
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-wide v4, -0x531314901c0974dbL    # -2.772839702745981E-92

    .line 728
    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-wide v4, -0x531314ac1c0974dbL    # -2.7727987380778775E-92

    .line 729
    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 731
    sget p1, Lorg/telegram/messenger/R$string;->ShareFile:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    const/16 v1, 0x1f4

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 733
    invoke-virtual {v3}, Ljava/io/File;->deleteOnExit()V

    return-void

    :catch_0
    move-exception v0

    :goto_0
    move-object p1, v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, v0

    .line 715
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_6
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_2
    :try_start_7
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object p1, v0

    :try_start_8
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_0

    .line 722
    :goto_4
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public showInstallDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$PluginInstallParams;)V
    .locals 4

    .line 1305
    new-instance v0, Ljava/io/File;

    iget-object v1, p2, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$PluginInstallParams;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1306
    iget-object v1, p2, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$PluginInstallParams;->filePath:Ljava/lang/String;

    const-wide v2, -0x53131b531c0974dbL    # -2.7703072084428648E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->fetchParameterValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1307
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1308
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1311
    :cond_0
    iget-object v0, p2, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$PluginInstallParams;->filePath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->validatePluginFromFile(Ljava/lang/String;)Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;

    move-result-object v0

    .line 1313
    iget-object v2, v0, Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    if-eqz v2, :cond_1

    .line 1314
    new-instance v1, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;

    invoke-direct {v1, p1, v0, p2}, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$PluginInstallParams;)V

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-void

    .line 1317
    :cond_1
    new-instance p2, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$$ExternalSyntheticLambda20;

    invoke-direct {p2, p1, v1, v0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public shutdown(Ljava/lang/Runnable;)V
    .locals 2

    .line 341
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPython()Lcom/chaquo/python/Python;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_3

    .line 343
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 349
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->pluginInstances:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 350
    invoke-virtual {p0, v1}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->unloadPlugin(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 353
    :cond_1
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->debuggerListener:Lcom/chaquo/python/PyObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 354
    invoke-virtual {v0}, Lcom/chaquo/python/PyObject;->close()V

    .line 355
    iput-object v1, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->debuggerListener:Lcom/chaquo/python/PyObject;

    .line 357
    :cond_2
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->pluginInstances:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->clear()V

    .line 358
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    :try_start_1
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->stopAndUnloadSdk()V

    .line 360
    iput-object v1, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->python:Lcom/chaquo/python/Python;

    .line 361
    iput-object v1, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->basePluginClass:Lcom/chaquo/python/PyObject;

    .line 362
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide v0, -0x531310511c0974dbL    # -2.7744300096827156E-92

    .line 363
    :try_start_2
    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 362
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 365
    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_2
    if-eqz p1, :cond_3

    .line 368
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method

.method public unloadPlugin(Ljava/lang/String;)V
    .locals 7

    .line 547
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->settingsCache:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    :try_start_0
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->pluginInstances:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chaquo/python/PyObject;

    if-nez v0, :cond_0

    if-eqz v0, :cond_3

    .line 567
    invoke-virtual {v0}, Lcom/chaquo/python/PyObject;->close()V
    :try_end_0
    .catch Lcom/chaquo/python/PyException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto/16 :goto_4

    :cond_0
    const-wide v1, -0x531312a81c0974dbL    # -2.7735536583900716E-92

    .line 552
    :try_start_1
    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/exteragram/messenger/plugins/utils/PyObjectUtils;->getBoolean(Lcom/chaquo/python/PyObject;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 553
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPluginsController()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v1

    iget-object v1, v1, Lcom/exteragram/messenger/plugins/PluginsController;->watchdog:Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;

    invoke-virtual {v1, p1}, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;->onPluginExecutionStarted(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide v3, -0x531312b41c0974dbL    # -2.7735361021037415E-92

    .line 555
    :try_start_2
    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/chaquo/python/PyObject;->callAttr(Ljava/lang/String;[Ljava/lang/Object;)Lcom/chaquo/python/PyObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 559
    :try_start_3
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPluginsController()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v1

    :goto_0
    iget-object v1, v1, Lcom/exteragram/messenger/plugins/PluginsController;->watchdog:Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;

    invoke-virtual {v1, p1}, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;->onPluginExecutionFinished(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto/16 :goto_2

    :catchall_1
    move-exception v1

    .line 557
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v4, -0x531312c51c0974dbL    # -2.7735112306981072E-92

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 559
    :try_start_5
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPluginsController()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v1

    goto :goto_0

    :catchall_2
    move-exception v1

    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPluginsController()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v2

    iget-object v2, v2, Lcom/exteragram/messenger/plugins/PluginsController;->watchdog:Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;

    invoke-virtual {v2, p1}, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;->onPluginExecutionFinished(Ljava/lang/String;)V

    .line 560
    throw v1

    .line 562
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPluginsController()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/exteragram/messenger/plugins/PluginsController;->cleanupPlugin(Ljava/lang/String;)V

    .line 563
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPython()Lcom/chaquo/python/Python;

    move-result-object v1

    const-wide v3, -0x531312e81c0974dbL    # -2.7734600248629778E-92

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/chaquo/python/Python;->getModule(Ljava/lang/String;)Lcom/chaquo/python/PyObject;

    move-result-object v1

    const-wide v3, -0x531312ec1c0974dbL    # -2.7734541727675344E-92

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/chaquo/python/PyObject;->get(Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    move-result-object v1

    if-eqz v1, :cond_2

    const-wide v3, -0x531312f41c0974dbL    # -2.7734424685766477E-92

    .line 564
    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    aput-object p1, v5, v2

    invoke-virtual {v1, v3, v5}, Lcom/chaquo/python/PyObject;->callAttr(Ljava/lang/String;[Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    move-result-object v3

    if-eqz v3, :cond_2

    const-wide v5, -0x531312f81c0974dbL    # -2.7734366164812043E-92

    .line 565
    invoke-static {v5, v6}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-virtual {v1, v3, v4}, Lcom/chaquo/python/PyObject;->callAttr(Ljava/lang/String;[Ljava/lang/Object;)Lcom/chaquo/python/PyObject;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 567
    :cond_2
    :try_start_6
    invoke-virtual {v0}, Lcom/chaquo/python/PyObject;->close()V
    :try_end_6
    .catch Lcom/chaquo/python/PyException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_5

    .line 548
    :goto_2
    :try_start_7
    invoke-virtual {v0}, Lcom/chaquo/python/PyObject;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    :try_start_8
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v1
    :try_end_8
    .catch Lcom/chaquo/python/PyException; {:try_start_8 .. :try_end_8} :catch_0

    .line 568
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v2, -0x531312fc1c0974dbL    # -2.773430764385761E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v2, -0x531313151c0974dbL    # -2.77339418878924E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_5
    return-void
.end method

.method public validatePluginFromFile(Ljava/lang/String;)Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;
    .locals 10

    .line 840
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 841
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 842
    new-instance p1, Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;

    const-wide v2, -0x531314c11c0974dbL    # -2.7727680145768E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;-><init>(Lcom/exteragram/messenger/plugins/Plugin;Ljava/lang/String;)V

    return-object p1

    .line 846
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->parsePluginMetadata(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const-wide v2, -0x531314d81c0974dbL    # -2.7727343650280005E-92

    .line 847
    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-wide v3, -0x531314db1c0974dbL    # -2.772729975956418E-92

    .line 848
    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 850
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_0

    :cond_1
    const-wide v4, -0x531315201c0974dbL    # -2.77262902731002E-92

    .line 854
    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 855
    new-instance v0, Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;

    const-wide v2, -0x5313153e1c0974dbL    # -2.7725851365941947E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;-><init>(Lcom/exteragram/messenger/plugins/Plugin;Ljava/lang/String;)V

    return-object v0

    :catchall_0
    move-exception v0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :cond_2
    const-wide v4, -0x531315c21c0974dbL    # -2.7723920174445636E-92

    .line 858
    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_4

    .line 860
    sget-object v7, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->VERSION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 861
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-nez v8, :cond_3

    new-instance v0, Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v5, -0x531315ce1c0974dbL    # -2.7723744611582335E-92

    invoke-static {v5, v6}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;-><init>(Lcom/exteragram/messenger/plugins/Plugin;Ljava/lang/String;)V

    return-object v0

    .line 862
    :cond_3
    invoke-virtual {v7, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lorg/telegram/messenger/BuildVars;->BUILD_VERSION_STRING:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v9, v7}, Lcom/exteragram/messenger/utils/AppUtils;->compareVersions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 863
    new-instance v0, Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v5, -0x531315e31c0974dbL    # -2.772343737657156E-92

    invoke-static {v5, v6}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v3, -0x531316001c0974dbL    # -2.7723013099651915E-92

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lorg/telegram/messenger/BuildVars;->BUILD_VERSION_STRING:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;-><init>(Lcom/exteragram/messenger/plugins/Plugin;Ljava/lang/String;)V

    return-object v0

    :cond_4
    const-wide v7, -0x531316121c0974dbL    # -2.7722749755356963E-92

    .line 866
    invoke-static {v7, v8}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_6

    .line 868
    sget-object v8, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->VERSION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 869
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-nez v9, :cond_5

    new-instance v0, Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v3, -0x5313161e1c0974dbL    # -2.7722574192493662E-92

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;-><init>(Lcom/exteragram/messenger/plugins/Plugin;Ljava/lang/String;)V

    return-object v0

    .line 870
    :cond_5
    invoke-virtual {v8, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    sget-object v9, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->SDK_VERSION:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v9, v5}, Lcom/exteragram/messenger/utils/AppUtils;->compareVersions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 871
    new-instance v0, Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v3, -0x531316331c0974dbL    # -2.7722266957482886E-92

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v3, -0x531316501c0974dbL    # -2.7721842680563242E-92

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->SDK_VERSION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;-><init>(Lcom/exteragram/messenger/plugins/Plugin;Ljava/lang/String;)V

    return-object v0

    .line 874
    :cond_6
    new-instance v5, Lcom/exteragram/messenger/plugins/Plugin;

    invoke-direct {v5, v2, v3}, Lcom/exteragram/messenger/plugins/Plugin;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-wide v8, -0x531316621c0974dbL    # -2.772157933626829E-92

    .line 875
    invoke-static {v8, v9}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/exteragram/messenger/plugins/Plugin;->setEngine(Ljava/lang/String;)V

    const-wide v8, -0x531316691c0974dbL    # -2.772147692459803E-92

    .line 876
    invoke-static {v8, v9}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    sget v6, Lorg/telegram/messenger/R$string;->PluginNoAuthor:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v3, v6}, Lj$/util/Map$-EL;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Lcom/exteragram/messenger/plugins/Plugin;->setAuthor(Ljava/lang/String;)V

    const-wide v8, -0x531316701c0974dbL    # -2.7721374512927773E-92

    .line 877
    invoke-static {v8, v9}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    sget v6, Lorg/telegram/messenger/R$string;->PluginNoDescription:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v3, v6}, Lj$/util/Map$-EL;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Lcom/exteragram/messenger/plugins/Plugin;->setDescription(Ljava/lang/String;)V

    const-wide v8, -0x5313167c1c0974dbL    # -2.772119895006447E-92

    .line 878
    invoke-static {v8, v9}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Lcom/exteragram/messenger/plugins/Plugin;->setIcon(Ljava/lang/String;)V

    const-wide v8, -0x531316811c0974dbL    # -2.772112579887143E-92

    .line 879
    invoke-static {v8, v9}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    const-wide v8, -0x531316891c0974dbL    # -2.7721008756962562E-92

    invoke-static {v8, v9}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v3, v6}, Lj$/util/Map$-EL;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Lcom/exteragram/messenger/plugins/Plugin;->setVersion(Ljava/lang/String;)V

    .line 880
    invoke-virtual {v5, v4}, Lcom/exteragram/messenger/plugins/Plugin;->setAppVersion(Ljava/lang/String;)V

    .line 881
    invoke-virtual {v5, v7}, Lcom/exteragram/messenger/plugins/Plugin;->setSdkVersion(Ljava/lang/String;)V

    const-wide v3, -0x5313168d1c0974dbL    # -2.772095023600813E-92

    .line 882
    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 883
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    const-wide v3, -0x5313169a1c0974dbL    # -2.772076004290622E-92

    .line 884
    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj$/util/DesugarArrays;->stream([Ljava/lang/Object;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$$ExternalSyntheticLambda1;-><init>()V

    .line 885
    invoke-interface {v0, v3}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$$ExternalSyntheticLambda2;-><init>()V

    .line 886
    invoke-interface {v0, v3}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 887
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v3

    invoke-interface {v0, v3}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 884
    invoke-virtual {v5, v0}, Lcom/exteragram/messenger/plugins/Plugin;->setRequirements(Ljava/util/List;)V

    .line 889
    :cond_7
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->getPluginsController()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v0

    iget-object v0, v0, Lcom/exteragram/messenger/plugins/PluginsController;->preferences:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v6, -0x531316ab1c0974dbL    # -2.7720511328849876E-92

    invoke-static {v6, v7}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v5, v0}, Lcom/exteragram/messenger/plugins/Plugin;->setEnabled(Z)V

    .line 891
    new-instance v0, Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;

    invoke-direct {v0, v5, v1}, Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;-><init>(Lcom/exteragram/messenger/plugins/Plugin;Ljava/lang/String;)V

    return-object v0

    .line 851
    :cond_8
    :goto_0
    new-instance v0, Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;

    const-wide v2, -0x531314e01c0974dbL    # -2.7727226608371138E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;-><init>(Lcom/exteragram/messenger/plugins/Plugin;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/chaquo/python/PyException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 896
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v3, -0x531316e41c0974dbL    # -2.7719677405249197E-92

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 897
    new-instance p1, Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;-><init>(Lcom/exteragram/messenger/plugins/Plugin;Ljava/lang/String;)V

    return-object p1

    .line 893
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v3, -0x531316bb1c0974dbL    # -2.772027724503214E-92

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v3, -0x531316da1c0974dbL    # -2.771982370763528E-92

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 894
    new-instance p1, Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;-><init>(Lcom/exteragram/messenger/plugins/Plugin;Ljava/lang/String;)V

    return-object p1
.end method
