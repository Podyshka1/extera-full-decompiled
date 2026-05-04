.class public final Lcom/exteragram/messenger/plugins/pip/PipController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/exteragram/messenger/plugins/pip/PipController$InstallerDelegate;,
        Lcom/exteragram/messenger/plugins/pip/PipController$VersionComparator;
    }
.end annotation


# static fields
.field private static final ENV_OS_NAME:Ljava/lang/String;

.field private static final ENV_PLATFORM_SYSTEM:Ljava/lang/String;

.field private static final ENV_SYS_PLATFORM:Ljava/lang/String;

.field public static final INSTANCE:Lcom/exteragram/messenger/plugins/pip/PipController;

.field private static final PREINSTALLED_PACKAGES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final REGEX_MARKER_EXTRA:Lkotlin/text/Regex;

.field private static final REGEX_MARKER_OS_NAME:Lkotlin/text/Regex;

.field private static final REGEX_MARKER_PLATFORM_SYSTEM:Lkotlin/text/Regex;

.field private static final REGEX_MARKER_PYTHON_VERSION:Lkotlin/text/Regex;

.field private static final REGEX_MARKER_SYS_PLATFORM:Lkotlin/text/Regex;

.field private static final REGEX_NORMALIZE:Lkotlin/text/Regex;

.field private static final REGEX_REQ_EXTRA:Lkotlin/text/Regex;

.field private static final REGEX_REQ_PAREN:Lkotlin/text/Regex;

.field private static final REGEX_REQ_PARSE:Lkotlin/text/Regex;

.field private static final REGEX_REQ_SPECS:Lkotlin/text/Regex;

.field private static final REGEX_VERSION_SPLIT:Lkotlin/text/Regex;

.field private static final client:Lokhttp3/OkHttpClient;

.field private static final gson:Lcom/google/gson/Gson;

.field private static final installLocks:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static pythonVersion:Ljava/lang/String;

.field private static final registry:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$0b944YH8IHOHBDjqBfyypxyMYQY(Lkotlin/Pair;)Ljava/lang/CharSequence;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/exteragram/messenger/plugins/pip/PipController;->resolveAndInstall$lambda$2$1(Lkotlin/Pair;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$3qb6Nezx6TG2Tac-1y7Xa35y3cA(Ljava/lang/String;Ljava/io/File;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/exteragram/messenger/plugins/pip/PipController;->findVersionOnDisk$lambda$0(Ljava/lang/String;Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$4GaAqKHHkDxhUEp6Ixv2955-PQ8(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lj$/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/exteragram/messenger/plugins/pip/PipController;->resolveAndInstall$lambda$5(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lj$/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$7CZkhP2Pq3JYvkGUBl8vqtaliPk(B)Ljava/lang/CharSequence;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/exteragram/messenger/plugins/pip/PipController;->calculateSha256$lambda$1(B)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$7fQSbdOArrMhW8kt3ingGSkskuA(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/exteragram/messenger/plugins/pip/PipController;->findMetadataFile$lambda$0(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$GBc-8aKnKaBWkdqFW6gQZ9PEPeQ(Ljava/util/List;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/exteragram/messenger/plugins/pip/PipController;->findVersionOnDisk$lambda$2(Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$L50rme_dqJ9iEe2zTVoax7CppBo(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/exteragram/messenger/plugins/pip/PipController;->resolveAndInstall$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Lm-FvS3nVC4K08Dx0OuVVeARUQM(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/exteragram/messenger/plugins/pip/PipController;->findVersionOnDisk$lambda$1(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$XFN9dt32lYY3xCJ9NHZLBcosePw(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/exteragram/messenger/plugins/pip/PipController;->resolveAndInstall$lambda$7(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ba_CzsM0FMRcDjro_ht7norbT1M(Ljava/lang/String;)Ljava/util/Set;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/exteragram/messenger/plugins/pip/PipController;->resolveAndInstall$lambda$6(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$cKu7WIfB65dGzoot-wJY-_PzblQ(Ljava/lang/String;)Lj$/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/exteragram/messenger/plugins/pip/PipController;->resolveAndInstall$lambda$4(Ljava/lang/String;)Lj$/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$iez_jk-cSyBPRjplKRoDAzlgN2I(Lkotlin/Pair;)Ljava/lang/CharSequence;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/exteragram/messenger/plugins/pip/PipController;->installPackage$lambda$0(Lkotlin/Pair;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$nM3N8RYnbiCU76VyVnmjZ3F9qY8(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/exteragram/messenger/plugins/pip/PipController;->resolveAndInstall$lambda$0(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 9

    const-wide v0, -0x531307a11c0974dbL    # -2.7776837747492267E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/pip/PipController;->ENV_SYS_PLATFORM:Ljava/lang/String;

    const-wide v0, -0x531307a71c0974dbL    # -2.7776749966060616E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/pip/PipController;->ENV_PLATFORM_SYSTEM:Ljava/lang/String;

    const-wide v0, -0x531307ad1c0974dbL    # -2.7776662184628966E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/pip/PipController;->ENV_OS_NAME:Ljava/lang/String;

    new-instance v0, Lcom/exteragram/messenger/plugins/pip/PipController;

    invoke-direct {v0}, Lcom/exteragram/messenger/plugins/pip/PipController;-><init>()V

    sput-object v0, Lcom/exteragram/messenger/plugins/pip/PipController;->INSTANCE:Lcom/exteragram/messenger/plugins/pip/PipController;

    .line 44
    sget-object v1, Lcom/exteragram/messenger/utils/network/ExteraHttpClient;->INSTANCE:Lcom/exteragram/messenger/utils/network/ExteraHttpClient;

    invoke-virtual {v1}, Lcom/exteragram/messenger/utils/network/ExteraHttpClient;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    sput-object v1, Lcom/exteragram/messenger/plugins/pip/PipController;->client:Lokhttp3/OkHttpClient;

    .line 45
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    sput-object v1, Lcom/exteragram/messenger/plugins/pip/PipController;->gson:Lcom/google/gson/Gson;

    .line 53
    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcom/exteragram/messenger/plugins/pip/PipController;->registry:Lj$/util/concurrent/ConcurrentHashMap;

    .line 54
    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcom/exteragram/messenger/plugins/pip/PipController;->installLocks:Lj$/util/concurrent/ConcurrentHashMap;

    const-wide v1, -0x531307b31c0974dbL    # -2.7776574403197315E-92

    .line 56
    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/exteragram/messenger/plugins/pip/PipController;->pythonVersion:Ljava/lang/String;

    .line 62
    new-instance v1, Lkotlin/text/Regex;

    const-wide v2, -0x531307bb1c0974dbL    # -2.7776457361288448E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/exteragram/messenger/plugins/pip/PipController;->REGEX_NORMALIZE:Lkotlin/text/Regex;

    .line 63
    new-instance v1, Lkotlin/text/Regex;

    const-wide v2, -0x531307c21c0974dbL    # -2.777635494961819E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/exteragram/messenger/plugins/pip/PipController;->REGEX_REQ_PARSE:Lkotlin/text/Regex;

    .line 64
    new-instance v1, Lkotlin/text/Regex;

    const-wide v2, -0x531307d91c0974dbL    # -2.7776018454130196E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/exteragram/messenger/plugins/pip/PipController;->REGEX_REQ_SPECS:Lkotlin/text/Regex;

    .line 65
    new-instance v1, Lkotlin/text/Regex;

    const-wide v2, -0x531307fa1c0974dbL    # -2.7775535656256118E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/exteragram/messenger/plugins/pip/PipController;->REGEX_REQ_EXTRA:Lkotlin/text/Regex;

    .line 66
    new-instance v1, Lkotlin/text/Regex;

    const-wide v2, -0x531308011c0974dbL    # -2.777543324458586E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/exteragram/messenger/plugins/pip/PipController;->REGEX_REQ_PAREN:Lkotlin/text/Regex;

    .line 67
    new-instance v1, Lkotlin/text/Regex;

    const-wide v2, -0x531308061c0974dbL    # -2.7775360093392817E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/exteragram/messenger/plugins/pip/PipController;->REGEX_VERSION_SPLIT:Lkotlin/text/Regex;

    .line 69
    new-instance v1, Lkotlin/text/Regex;

    const-wide v2, -0x5313081b1c0974dbL    # -2.777505285838204E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/exteragram/messenger/plugins/pip/PipController;->REGEX_MARKER_SYS_PLATFORM:Lkotlin/text/Regex;

    .line 70
    new-instance v1, Lkotlin/text/Regex;

    const-wide v2, -0x531308451c0974dbL    # -2.7774438388360487E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/exteragram/messenger/plugins/pip/PipController;->REGEX_MARKER_PLATFORM_SYSTEM:Lkotlin/text/Regex;

    .line 71
    new-instance v1, Lkotlin/text/Regex;

    const-wide v2, -0x531308721c0974dbL    # -2.777378002762311E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/exteragram/messenger/plugins/pip/PipController;->REGEX_MARKER_OS_NAME:Lkotlin/text/Regex;

    .line 72
    new-instance v1, Lkotlin/text/Regex;

    const-wide v2, -0x531308971c0974dbL    # -2.7773238708794597E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/exteragram/messenger/plugins/pip/PipController;->REGEX_MARKER_PYTHON_VERSION:Lkotlin/text/Regex;

    .line 73
    new-instance v1, Lkotlin/text/Regex;

    const-wide v2, -0x531308d41c0974dbL    # -2.7772346264239484E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/exteragram/messenger/plugins/pip/PipController;->REGEX_MARKER_EXTRA:Lkotlin/text/Regex;

    .line 76
    invoke-direct {v0}, Lcom/exteragram/messenger/plugins/pip/PipController;->loadRegistry()V

    const-wide v0, -0x531308e21c0974dbL    # -2.7772141440898966E-92

    .line 135
    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    const-wide v0, -0x531308f11c0974dbL    # -2.777192198731984E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    const-wide v0, -0x531308f91c0974dbL    # -2.7771804945410973E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v4

    const-wide v0, -0x531308fe1c0974dbL    # -2.777173179421793E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v5

    const-wide v0, -0x531309081c0974dbL    # -2.7771585491831846E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v6

    const-wide v0, -0x5313090f1c0974dbL    # -2.7771483080161587E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v7

    const-wide v0, -0x531309181c0974dbL    # -2.7771351408014112E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v8

    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 1563
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1635
    check-cast v2, Ljava/lang/String;

    .line 136
    sget-object v3, Lcom/exteragram/messenger/plugins/pip/PipController;->INSTANCE:Lcom/exteragram/messenger/plugins/pip/PipController;

    invoke-direct {v3, v2}, Lcom/exteragram/messenger/plugins/pip/PipController;->normalizePackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1635
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 136
    :cond_0
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/pip/PipController;->PREINSTALLED_PACKAGES:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getREGEX_VERSION_SPLIT$p()Lkotlin/text/Regex;
    .locals 1

    .line 36
    sget-object v0, Lcom/exteragram/messenger/plugins/pip/PipController;->REGEX_VERSION_SPLIT:Lkotlin/text/Regex;

    return-object v0
.end method

.method private final calculateSha256(Ljava/io/File;)Ljava/lang/String;
    .locals 11

    const-wide v0, -0x531307301c0974dbL    # -2.7778490964455017E-92

    .line 649
    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    new-instance v1, Ljava/io/FileInputStream;

    .line 650
    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 p1, 0x2000

    .line 651
    :try_start_0
    new-array p1, p1, [B

    .line 653
    :goto_0
    invoke-virtual {v1, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    .line 654
    invoke-virtual {v0, p1, v3, v2}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .line 656
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 650
    invoke-static {v1, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 657
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    const-wide v0, -0x531307381c0974dbL    # -2.777837392254615E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide v0, -0x531307441c0974dbL    # -2.777819835968285E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    new-instance v8, Lcom/exteragram/messenger/plugins/pip/PipController$$ExternalSyntheticLambda9;

    invoke-direct {v8}, Lcom/exteragram/messenger/plugins/pip/PipController$$ExternalSyntheticLambda9;-><init>()V

    const/16 v9, 0x1e

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/ArraysKt;->joinToString$default([BLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 650
    :goto_1
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v1, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static final calculateSha256$lambda$1(B)Ljava/lang/CharSequence;
    .locals 4

    const-wide v0, -0x531307901c0974dbL    # -2.777708646154861E-92

    .line 657
    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-wide v0, -0x531307951c0974dbL    # -2.7777013310355568E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final checkMarker(Ljava/lang/String;Lkotlin/text/Regex;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 586
    invoke-static {p2, p1, v1, v2, v0}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    return p2

    .line 587
    :cond_0
    invoke-interface {p1}, Lkotlin/text/MatchResult;->getDestructured()Lkotlin/text/MatchResult$Destructured;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/text/MatchResult$Destructured;->getMatch()Lkotlin/text/MatchResult;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Lkotlin/text/MatchResult$Destructured;->getMatch()Lkotlin/text/MatchResult;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 588
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p3, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    const-wide v3, -0x531306e81c0974dbL    # -2.7779544341634823E-92

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 589
    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-wide v2, -0x531306f91c0974dbL    # -2.777929562757848E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide v2, -0x5313070a1c0974dbL    # -2.7779046913522137E-92

    .line 592
    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const-wide v2, -0x5313070d1c0974dbL    # -2.7779003022806312E-92

    .line 593
    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return p2

    :cond_2
    return v1

    :cond_3
    return p2
.end method

.method private final checkVersionSatisfies(Ljava/lang/String;Ljava/util/List;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lkotlin/Pair;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 606
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 607
    :cond_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Pair;

    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    .line 608
    sget-object v3, Lcom/exteragram/messenger/plugins/pip/PipController$VersionComparator;->INSTANCE:Lcom/exteragram/messenger/plugins/pip/PipController$VersionComparator;

    invoke-virtual {v3, v0, v5}, Lcom/exteragram/messenger/plugins/pip/PipController$VersionComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 609
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/16 v8, 0x3c

    if-eq v7, v8, :cond_f

    const/16 v8, 0x3e

    if-eq v7, v8, :cond_d

    const/16 v8, 0x43c

    if-eq v7, v8, :cond_b

    const/16 v8, 0x781

    if-eq v7, v8, :cond_9

    const/16 v8, 0x7a0

    if-eq v7, v8, :cond_7

    const/16 v8, 0x7bf

    if-eq v7, v8, :cond_5

    const/16 v8, 0xf7f

    if-eq v7, v8, :cond_2

    goto :goto_0

    :cond_2
    const-wide v7, -0x531307291c0974dbL    # -2.7778593376125276E-92

    invoke-static {v7, v8}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    if-gez v6, :cond_4

    goto/16 :goto_1

    :cond_4
    const-wide v6, -0x5313072c1c0974dbL    # -2.777854948540945E-92

    .line 618
    invoke-static {v6, v7}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v4

    .line 620
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_1

    .line 621
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 623
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v5

    .line 624
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 626
    invoke-static {v6}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 629
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v6, v2

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 630
    move-object v7, v4

    check-cast v7, Ljava/lang/Iterable;

    const-wide v4, -0x5313072e1c0974dbL    # -2.7778520224932234E-92

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v8

    const/16 v14, 0x3e

    const/4 v15, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v7 .. v15}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 631
    invoke-virtual {v3, v0, v4}, Lcom/exteragram/messenger/plugins/pip/PipController$VersionComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_11

    goto/16 :goto_0

    :cond_5
    const-wide v7, -0x531307261c0974dbL    # -2.77786372668411E-92

    .line 609
    invoke-static {v7, v8}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto/16 :goto_0

    :cond_6
    if-ltz v6, :cond_11

    goto/16 :goto_0

    :cond_7
    const-wide v7, -0x531307191c0974dbL    # -2.777882745994301E-92

    invoke-static {v7, v8}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto/16 :goto_0

    :cond_8
    if-nez v6, :cond_11

    goto/16 :goto_0

    :cond_9
    const-wide v7, -0x5313071c1c0974dbL    # -2.7778783569227186E-92

    invoke-static {v7, v8}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto/16 :goto_0

    :cond_a
    if-gtz v6, :cond_11

    goto/16 :goto_0

    :cond_b
    const-wide v7, -0x531307211c0974dbL    # -2.7778710418034144E-92

    invoke-static {v7, v8}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    goto/16 :goto_0

    :cond_c
    if-eqz v6, :cond_11

    goto/16 :goto_0

    :cond_d
    const-wide v7, -0x531307241c0974dbL    # -2.777866652731832E-92

    invoke-static {v7, v8}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    goto/16 :goto_0

    :cond_e
    if-lez v6, :cond_11

    goto/16 :goto_0

    :cond_f
    const-wide v7, -0x5313071f1c0974dbL    # -2.777873967851136E-92

    invoke-static {v7, v8}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    goto/16 :goto_0

    :cond_10
    if-gez v6, :cond_11

    goto/16 :goto_0

    :cond_11
    :goto_1
    const/4 v0, 0x0

    return v0

    :cond_12
    return v2
.end method

.method private final cleanupInternal()V
    .locals 8

    .line 259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 261
    sget-object v1, Lcom/exteragram/messenger/plugins/pip/PipController;->registry:Lj$/util/concurrent/ConcurrentHashMap;

    .line 216
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj$/util/concurrent/ConcurrentHashMap;

    .line 216
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 263
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 264
    invoke-static {v3, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1869
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lkotlin/Pair;

    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 270
    sget-object v5, Lcom/exteragram/messenger/plugins/pip/PipController;->registry:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v4}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lj$/util/concurrent/ConcurrentHashMap;

    if-eqz v6, :cond_3

    invoke-virtual {v6, v3}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 271
    :cond_3
    invoke-virtual {v5, v4}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lj$/util/concurrent/ConcurrentHashMap;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lj$/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 272
    invoke-virtual {v5, v4}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    :cond_4
    sget-object v5, Lcom/exteragram/messenger/plugins/pip/PipController;->INSTANCE:Lcom/exteragram/messenger/plugins/pip/PipController;

    invoke-direct {v5, v4, v3}, Lcom/exteragram/messenger/plugins/pip/PipController;->deletePackage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 277
    :cond_5
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/pip/PipController;->removeOrphanedDirectories()V

    return-void
.end method

.method private final deletePackage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 507
    invoke-direct {p0, p1, p2}, Lcom/exteragram/messenger/plugins/pip/PipController;->getLibPath(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 508
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 509
    invoke-static {p1}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    .line 510
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v0, -0x531306551c0974dbL    # -2.778169498671026E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final executeWithRetry(Lokhttp3/Request;Lcom/exteragram/messenger/plugins/pip/PipController$InstallerDelegate;)Lokhttp3/Response;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :catch_0
    :goto_0
    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ge v0, v2, :cond_2

    if-eqz p2, :cond_1

    .line 443
    invoke-interface {p2}, Lcom/exteragram/messenger/plugins/pip/PipController$InstallerDelegate;->isCancelled()Z

    move-result v1

    if-eq v1, v3, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-wide v0, -0x5313056b1c0974dbL    # -2.778511846254463E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 445
    :cond_1
    :goto_1
    :try_start_0
    sget-object v1, Lcom/exteragram/messenger/plugins/pip/PipController;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    invoke-interface {v1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    return-object p1

    :catch_1
    move-exception v1

    add-int/lit8 v0, v0, 0x1

    .line 449
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v3, -0x531305821c0974dbL    # -2.7784781967056635E-92

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-wide v3, -0x531305ab1c0974dbL    # -2.778418212727369E-92

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    const-wide/16 v2, 0x3e8

    int-to-long v4, v0

    mul-long/2addr v4, v2

    .line 450
    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_4

    .line 453
    invoke-interface {p2}, Lcom/exteragram/messenger/plugins/pip/PipController$InstallerDelegate;->isCancelled()Z

    move-result p1

    if-eq p1, v3, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-wide v0, -0x531305b11c0974dbL    # -2.778409434584204E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_2
    if-eqz v1, :cond_5

    goto :goto_3

    .line 454
    :cond_5
    new-instance v1, Ljava/io/IOException;

    const-wide p1, -0x531305c81c0974dbL    # -2.7783757850354046E-92

    invoke-static {p1, p2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    :goto_3
    throw v1
.end method

.method private final findInstalledVersion(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lkotlin/Pair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 494
    sget-object v0, Lcom/exteragram/messenger/plugins/pip/PipController;->registry:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/concurrent/ConcurrentHashMap;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 495
    :cond_0
    invoke-virtual {p1}, Lj$/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    const-wide v0, -0x5313062c1c0974dbL    # -2.7782294826493205E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 774
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 865
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    .line 495
    sget-object v3, Lcom/exteragram/messenger/plugins/pip/PipController;->INSTANCE:Lcom/exteragram/messenger/plugins/pip/PipController;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v3, v2, p2}, Lcom/exteragram/messenger/plugins/pip/PipController;->checkVersionSatisfies(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 865
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 496
    :cond_2
    sget-object p1, Lcom/exteragram/messenger/plugins/pip/PipController$VersionComparator;->INSTANCE:Lcom/exteragram/messenger/plugins/pip/PipController$VersionComparator;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->maxWithOrNull(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method private final findMetadataFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 599
    invoke-direct {p0, p1, p2}, Lcom/exteragram/messenger/plugins/pip/PipController;->getLibPath(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 600
    new-instance p2, Lcom/exteragram/messenger/plugins/pip/PipController$$ExternalSyntheticLambda8;

    invoke-direct {p2}, Lcom/exteragram/messenger/plugins/pip/PipController$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {p1, p2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    if-eqz p1, :cond_1

    .line 601
    new-instance p2, Ljava/io/File;

    const-wide v0, -0x531307101c0974dbL    # -2.7778959132090487E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :cond_1
    return-object p2
.end method

.method private static final findMetadataFile$lambda$0(Ljava/io/File;Ljava/lang/String;)Z
    .locals 3

    .line 600
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-wide v0, -0x531307851c0974dbL    # -2.7777247394173302E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, p0, v2, v0, v1}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final findVersionOnDisk(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lkotlin/Pair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2d

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 484
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/pip/PipController;->getLibsDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->asSequence([Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 485
    new-instance v1, Lcom/exteragram/messenger/plugins/pip/PipController$$ExternalSyntheticLambda10;

    invoke-direct {v1, p1}, Lcom/exteragram/messenger/plugins/pip/PipController$$ExternalSyntheticLambda10;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 486
    new-instance v1, Lcom/exteragram/messenger/plugins/pip/PipController$$ExternalSyntheticLambda11;

    invoke-direct {v1, p1}, Lcom/exteragram/messenger/plugins/pip/PipController$$ExternalSyntheticLambda11;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 487
    new-instance v0, Lcom/exteragram/messenger/plugins/pip/PipController$$ExternalSyntheticLambda12;

    invoke-direct {v0, p2}, Lcom/exteragram/messenger/plugins/pip/PipController$$ExternalSyntheticLambda12;-><init>(Ljava/util/List;)V

    invoke-static {p1, v0}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 490
    sget-object p2, Lcom/exteragram/messenger/plugins/pip/PipController$VersionComparator;->INSTANCE:Lcom/exteragram/messenger/plugins/pip/PipController$VersionComparator;

    invoke-static {p1, p2}, Lkotlin/sequences/SequencesKt;->maxWithOrNull(Lkotlin/sequences/Sequence;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private static final findVersionOnDisk$lambda$0(Ljava/lang/String;Ljava/io/File;)Z
    .locals 4

    .line 485
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-wide v2, -0x531307541c0974dbL    # -2.7777964275865114E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v2, 0x0

    invoke-static {p1, p0, v1, v0, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method private static final findVersionOnDisk$lambda$1(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    .locals 2

    .line 486
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-wide v0, -0x531307611c0974dbL    # -2.7777774082763205E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-wide v0, -0x5313076e1c0974dbL    # -2.7777583889661296E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final findVersionOnDisk$lambda$2(Ljava/util/List;Ljava/lang/String;)Z
    .locals 2

    const-wide v0, -0x5313077d1c0974dbL    # -2.777736443608217E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 488
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/exteragram/messenger/plugins/pip/PipController;->INSTANCE:Lcom/exteragram/messenger/plugins/pip/PipController;

    invoke-direct {v0, p1, p0}, Lcom/exteragram/messenger/plugins/pip/PipController;->checkVersionSatisfies(Ljava/lang/String;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final getLibPath(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 6

    const-wide v0, -0x5313063c1c0974dbL    # -2.778206074267547E-92

    .line 500
    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p2, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide v4, -0x5313063e1c0974dbL    # -2.7782031482198253E-92

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide v4, -0x531306401c0974dbL    # -2.7782002221721036E-92

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 503
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/pip/PipController;->getLibsDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2d

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    .line 501
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x531306431c0974dbL    # -2.778195833100521E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final getLibsDir()Ljava/io/File;
    .locals 4

    .line 48
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->getInstance()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v1

    iget-object v1, v1, Lcom/exteragram/messenger/plugins/PluginsController;->pluginsDir:Ljava/io/File;

    const-wide v2, -0x5313002c1c0974dbL    # -2.7804766872995727E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    return-object v0
.end method

.method private final getRegistryFile()Ljava/io/File;
    .locals 4

    .line 51
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/pip/PipController;->getLibsDir()Ljava/io/File;

    move-result-object v1

    const-wide v2, -0x531300311c0974dbL    # -2.7804693721802685E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic installDependencies$default(Lcom/exteragram/messenger/plugins/pip/PipController;Ljava/util/List;Ljava/lang/String;Lcom/exteragram/messenger/plugins/pip/PipController$InstallerDelegate;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 138
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/exteragram/messenger/plugins/pip/PipController;->installDependencies(Ljava/util/List;Ljava/lang/String;Lcom/exteragram/messenger/plugins/pip/PipController$InstallerDelegate;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final installPackage(Ljava/lang/String;Ljava/util/List;Lcom/exteragram/messenger/plugins/pip/PipController$InstallerDelegate;)Ljava/lang/String;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lkotlin/Pair;",
            ">;",
            "Lcom/exteragram/messenger/plugins/pip/PipController$InstallerDelegate;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    move-object/from16 v3, p3

    .line 333
    move-object v4, v0

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v5, v0

    check-cast v5, Ljava/lang/Iterable;

    const-wide v6, -0x5313033d1c0974dbL    # -2.7793282135688123E-92

    invoke-static {v6, v7}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v6

    new-instance v11, Lcom/exteragram/messenger/plugins/pip/PipController$$ExternalSyntheticLambda0;

    invoke-direct {v11}, Lcom/exteragram/messenger/plugins/pip/PipController$$ExternalSyntheticLambda0;-><init>()V

    const/16 v12, 0x1e

    const/4 v13, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v5 .. v13}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-wide v4, -0x5313033f1c0974dbL    # -2.7793252875210906E-92

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v4

    .line 335
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v6, -0x531303481c0974dbL    # -2.779312120306343E-92

    invoke-static {v6, v7}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    if-eqz v3, :cond_1

    .line 336
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v7, -0x531303631c0974dbL    # -2.7792726186621003E-92

    invoke-static {v7, v8}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v7, -0x5313036e1c0974dbL    # -2.779256525399631E-92

    invoke-static {v7, v8}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/exteragram/messenger/plugins/pip/PipController$InstallerDelegate;->onProgress(Ljava/lang/String;)V

    .line 338
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v7, -0x531303721c0974dbL    # -2.7792506733041877E-92

    invoke-static {v7, v8}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v7, -0x531303891c0974dbL    # -2.7792170237553884E-92

    invoke-static {v7, v8}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 339
    new-instance v7, Lokhttp3/Request$Builder;

    invoke-direct {v7}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v7, v5}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v5

    .line 345
    invoke-direct {v1, v5, v3}, Lcom/exteragram/messenger/plugins/pip/PipController;->executeWithRetry(Lokhttp3/Request;Lcom/exteragram/messenger/plugins/pip/PipController$InstallerDelegate;)Lokhttp3/Response;

    move-result-object v5

    .line 346
    :try_start_0
    invoke-virtual {v5}, Lokhttp3/Response;->isSuccessful()Z

    move-result v7

    if-nez v7, :cond_3

    .line 347
    invoke-virtual {v5}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v3, 0x194

    if-ne v0, v3, :cond_2

    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v6, -0x5313038f1c0974dbL    # -2.7792082456122233E-92

    invoke-static {v6, v7}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v6, -0x531303981c0974dbL    # -2.7791950783974757E-92

    invoke-static {v6, v7}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_9

    .line 348
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v6, -0x531303ab1c0974dbL    # -2.7791672809441198E-92

    invoke-static {v6, v7}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v6, -0x531303c91c0974dbL    # -2.7791233902282945E-92

    invoke-static {v6, v7}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lokhttp3/Response;->code()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    :cond_3
    invoke-virtual {v5}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v7

    .line 352
    sget-object v8, Lcom/exteragram/messenger/plugins/pip/PipController;->gson:Lcom/google/gson/Gson;

    const-class v9, Lcom/google/gson/JsonObject;

    invoke-virtual {v8, v7, v9}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/gson/JsonObject;

    const-wide v8, -0x531303cc1c0974dbL    # -2.779119001156712E-92

    .line 354
    invoke-static {v8, v9}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v8

    const-wide v9, -0x531303d11c0974dbL    # -2.7791116860374078E-92

    .line 355
    invoke-static {v9, v10}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    const-wide v9, -0x531303e11c0974dbL    # -2.7790882776556343E-92

    invoke-static {v9, v10}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v9

    if-nez v9, :cond_5

    const-wide v9, -0x531303f11c0974dbL    # -2.779064869273861E-92

    .line 356
    invoke-static {v9, v10}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v8

    .line 357
    sget-object v9, Lcom/exteragram/messenger/plugins/pip/PipController;->INSTANCE:Lcom/exteragram/messenger/plugins/pip/PipController;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v9, v8}, Lcom/exteragram/messenger/plugins/pip/PipController;->parseSpecs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 358
    sget-object v11, Lcom/exteragram/messenger/plugins/pip/PipController;->pythonVersion:Ljava/lang/String;

    invoke-direct {v9, v11, v10}, Lcom/exteragram/messenger/plugins/pip/PipController;->checkVersionSatisfies(Ljava/lang/String;Ljava/util/List;)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_1

    .line 359
    :cond_4
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v6, -0x531304011c0974dbL    # -2.7790414608920874E-92

    invoke-static {v6, v7}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v6, -0x5313040a1c0974dbL    # -2.77902829367734E-92

    invoke-static {v6, v7}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v6, -0x5313041c1c0974dbL    # -2.7790019592478447E-92

    invoke-static {v6, v7}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/exteragram/messenger/plugins/pip/PipController;->pythonVersion:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    const-wide v8, -0x5313042e1c0974dbL    # -2.7789756248183495E-92

    .line 363
    invoke-static {v8, v9}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v7

    .line 365
    invoke-virtual {v7}, Lcom/google/gson/JsonObject;->keySet()Ljava/util/Set;

    move-result-object v8

    const-wide v9, -0x531304371c0974dbL    # -2.778962457603602E-92

    invoke-static {v9, v10}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v8

    .line 366
    check-cast v8, Ljava/lang/Iterable;

    .line 774
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 865
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Ljava/lang/String;

    .line 366
    sget-object v12, Lcom/exteragram/messenger/plugins/pip/PipController;->INSTANCE:Lcom/exteragram/messenger/plugins/pip/PipController;

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v12, v11, v0}, Lcom/exteragram/messenger/plugins/pip/PipController;->checkVersionSatisfies(Ljava/lang/String;Ljava/util/List;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 865
    invoke-interface {v9, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 368
    :cond_7
    sget-object v0, Lcom/exteragram/messenger/plugins/pip/PipController$VersionComparator;->INSTANCE:Lcom/exteragram/messenger/plugins/pip/PipController$VersionComparator;

    invoke-static {v9, v0}, Lkotlin/collections/CollectionsKt;->maxWithOrNull(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 371
    invoke-virtual {v7, v0}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v4

    .line 373
    invoke-virtual {v4}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const-wide v7, -0x531304621c0974dbL    # -2.7788995475775858E-92

    invoke-static {v7, v8}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eqz v7, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/gson/JsonElement;

    .line 374
    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v7

    const-wide v11, -0x531304701c0974dbL    # -2.778879065243534E-92

    .line 375
    invoke-static {v11, v12}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v11

    const-wide v12, -0x531304791c0974dbL    # -2.7788658980287864E-92

    .line 376
    invoke-static {v12, v13}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v12

    const-wide v13, -0x531304851c0974dbL    # -2.7788483417424564E-92

    .line 378
    invoke-static {v13, v14}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-wide v12, -0x531304911c0974dbL    # -2.7788307854561263E-92

    invoke-static {v12, v13}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v9, v8, v10}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    const-wide v11, -0x5313049b1c0974dbL    # -2.778816155217518E-92

    .line 379
    invoke-static {v11, v12}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    const-wide v11, -0x5313049f1c0974dbL    # -2.7788103031220745E-92

    .line 380
    invoke-static {v11, v12}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v7

    if-eqz v7, :cond_9

    const-wide v11, -0x531304a71c0974dbL    # -2.7787985989311877E-92

    .line 381
    invoke-static {v11, v12}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    const-wide v11, -0x531304ae1c0974dbL    # -2.778788357764162E-92

    .line 382
    invoke-static {v11, v12}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_9
    move-object v7, v10

    goto :goto_3

    :cond_a
    move-object v4, v10

    move-object v7, v4

    .line 387
    :goto_3
    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    invoke-static {v5, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    if-eqz v4, :cond_11

    .line 393
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, v2, v0}, Lcom/exteragram/messenger/plugins/pip/PipController;->getLibPath(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v13

    .line 394
    new-instance v12, Ljava/io/File;

    invoke-direct {v1}, Lcom/exteragram/messenger/plugins/pip/PipController;->getLibsDir()Ljava/io/File;

    move-result-object v5

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v14, -0x531304fa1c0974dbL    # -2.778677167950738E-92

    invoke-static {v14, v15}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v14, 0x5f

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v12, v5, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 395
    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    if-eqz v3, :cond_b

    .line 398
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v14, -0x531304ff1c0974dbL    # -2.7786698528314337E-92

    invoke-static {v14, v15}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v14, -0x5313050c1c0974dbL    # -2.7786508335212428E-92

    invoke-static {v14, v15}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/exteragram/messenger/plugins/pip/PipController$InstallerDelegate;->onProgress(Ljava/lang/String;)V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto/16 :goto_8

    :catch_0
    move-exception v0

    goto/16 :goto_7

    .line 400
    :cond_b
    :goto_4
    new-instance v5, Ljava/io/File;

    const-wide v14, -0x531305101c0974dbL    # -2.7786449814257994E-92

    invoke-static {v14, v15}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v12, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 402
    new-instance v6, Lokhttp3/Request$Builder;

    invoke-direct {v6}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v6, v4}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v4

    .line 403
    invoke-direct {v1, v4, v3}, Lcom/exteragram/messenger/plugins/pip/PipController;->executeWithRetry(Lokhttp3/Request;Lcom/exteragram/messenger/plugins/pip/PipController$InstallerDelegate;)Lokhttp3/Response;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 404
    :try_start_2
    invoke-virtual {v3}, Lokhttp3/Response;->isSuccessful()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 406
    invoke-virtual {v3}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v4

    .line 407
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 408
    :try_start_3
    invoke-static {v4, v6, v9, v8, v10}, Lkotlin/io/ByteStreamsKt;->copyTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 407
    :try_start_4
    invoke-static {v6, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 403
    :try_start_5
    invoke-static {v3, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    if-eqz v7, :cond_d

    .line 413
    invoke-direct {v1, v5}, Lcom/exteragram/messenger/plugins/pip/PipController;->calculateSha256(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 414
    invoke-static {v3, v7, v4}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_5

    .line 415
    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-wide v3, -0x5313052e1c0974dbL    # -2.778601090709974E-92

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 419
    :cond_d
    :goto_5
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 420
    :try_start_6
    invoke-static {v3, v12}, Lcom/exteragram/messenger/plugins/pip/PipController;->unzip(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 419
    :try_start_7
    invoke-static {v3, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 422
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 424
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-static {v13}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    .line 425
    :cond_e
    invoke-virtual {v12, v13}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_f

    const/16 v16, 0x4

    const/16 v17, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    .line 426
    invoke-static/range {v12 .. v17}, Lkotlin/io/FilesKt;->copyRecursively$default(Ljava/io/File;Ljava/io/File;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 433
    :cond_f
    invoke-static {v12}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    return-object v0

    :catchall_2
    move-exception v0

    move-object v4, v0

    .line 419
    :try_start_8
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v0

    :try_start_9
    invoke-static {v3, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_4
    move-exception v0

    move-object v4, v0

    goto :goto_6

    :catchall_5
    move-exception v0

    move-object v4, v0

    .line 407
    :try_start_a
    throw v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :catchall_6
    move-exception v0

    :try_start_b
    invoke-static {v6, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 404
    :cond_10
    new-instance v0, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v5, -0x5313051c1c0974dbL    # -2.7786274251394693E-92

    invoke-static {v5, v6}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lokhttp3/Response;->code()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 403
    :goto_6
    :try_start_c
    throw v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    :catchall_7
    move-exception v0

    :try_start_d
    invoke-static {v3, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 430
    :goto_7
    :try_start_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v4, -0x531305401c0974dbL    # -2.778574756280479E-92

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 431
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 433
    :goto_8
    invoke-static {v12}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    throw v0

    .line 390
    :cond_11
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v4, -0x531304b51c0974dbL    # -2.778778116597136E-92

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v4, -0x531304d51c0974dbL    # -2.778731299833589E-92

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 369
    :cond_12
    :try_start_f
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v7, -0x531304431c0974dbL    # -2.778944901317272E-92

    invoke-static {v7, v8}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 345
    :goto_9
    :try_start_10
    throw v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    :catchall_8
    move-exception v0

    invoke-static {v5, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static final installPackage$lambda$0(Lkotlin/Pair;)Ljava/lang/CharSequence;
    .locals 2

    const-wide v0, -0x531307511c0974dbL    # -2.777800816658094E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final isMarkerCompatible(Ljava/lang/String;)Z
    .locals 4

    .line 568
    sget-object v0, Lcom/exteragram/messenger/plugins/pip/PipController;->REGEX_MARKER_EXTRA:Lkotlin/text/Regex;

    invoke-virtual {v0, p1}, Lkotlin/text/Regex;->containsMatchIn(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 570
    :cond_0
    sget-object v0, Lcom/exteragram/messenger/plugins/pip/PipController;->REGEX_MARKER_SYS_PLATFORM:Lkotlin/text/Regex;

    const-wide v2, -0x531306d61c0974dbL    # -2.7779807685929775E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v2}, Lcom/exteragram/messenger/plugins/pip/PipController;->checkMarker(Ljava/lang/String;Lkotlin/text/Regex;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 571
    :cond_1
    sget-object v0, Lcom/exteragram/messenger/plugins/pip/PipController;->REGEX_MARKER_PLATFORM_SYSTEM:Lkotlin/text/Regex;

    const-wide v2, -0x531306dc1c0974dbL    # -2.7779719904498124E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v2}, Lcom/exteragram/messenger/plugins/pip/PipController;->checkMarker(Ljava/lang/String;Lkotlin/text/Regex;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 572
    :cond_2
    sget-object v0, Lcom/exteragram/messenger/plugins/pip/PipController;->REGEX_MARKER_OS_NAME:Lkotlin/text/Regex;

    const-wide v2, -0x531306e21c0974dbL    # -2.7779632123066474E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v2}, Lcom/exteragram/messenger/plugins/pip/PipController;->checkMarker(Ljava/lang/String;Lkotlin/text/Regex;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 574
    :cond_3
    sget-object v0, Lcom/exteragram/messenger/plugins/pip/PipController;->REGEX_MARKER_PYTHON_VERSION:Lkotlin/text/Regex;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, p1, v1, v3, v2}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 576
    invoke-interface {p1}, Lkotlin/text/MatchResult;->getDestructured()Lkotlin/text/MatchResult$Destructured;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/text/MatchResult$Destructured;->getMatch()Lkotlin/text/MatchResult;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1}, Lkotlin/text/MatchResult$Destructured;->getMatch()Lkotlin/text/MatchResult;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 577
    sget-object v3, Lcom/exteragram/messenger/plugins/pip/PipController;->pythonVersion:Ljava/lang/String;

    invoke-static {v2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/exteragram/messenger/plugins/pip/PipController;->checkVersionSatisfies(Ljava/lang/String;Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method private final declared-synchronized loadRegistry()V
    .locals 9

    monitor-enter p0

    .line 85
    :try_start_0
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/pip/PipController;->getRegistryFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 88
    :cond_0
    :try_start_1
    new-instance v0, Lcom/exteragram/messenger/plugins/pip/PipController$loadRegistry$type$1;

    invoke-direct {v0}, Lcom/exteragram/messenger/plugins/pip/PipController$loadRegistry$type$1;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 89
    sget-object v1, Lcom/exteragram/messenger/plugins/pip/PipController;->gson:Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/pip/PipController;->getRegistryFile()Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v4}, Lkotlin/io/FilesKt;->readText$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    const-wide v1, -0x5313005a1c0974dbL    # -2.780409388201974E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Map;

    .line 91
    sget-object v1, Lcom/exteragram/messenger/plugins/pip/PipController;->registry:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lj$/util/concurrent/ConcurrentHashMap;->clear()V

    .line 216
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 93
    sget-object v3, Lcom/exteragram/messenger/plugins/pip/PipController;->INSTANCE:Lcom/exteragram/messenger/plugins/pip/PipController;

    invoke-direct {v3, v2}, Lcom/exteragram/messenger/plugins/pip/PipController;->normalizePackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 94
    new-instance v3, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 216
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 96
    new-instance v6, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v6}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 1869
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 97
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v7, v8}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    .line 96
    :cond_1
    invoke-static {v6}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 100
    :cond_2
    sget-object v1, Lcom/exteragram/messenger/plugins/pip/PipController;->registry:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_3
    const-wide v1, -0x531300681c0974dbL    # -2.7803889058679223E-92

    .line 103
    :try_start_2
    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/pip/PipController;->getRegistryFile()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/pip/PipController;->getLibsDir()Ljava/io/File;

    move-result-object v2

    const-wide v3, -0x5313008f1c0974dbL    # -2.7803318479373494E-92

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 106
    :cond_3
    monitor-exit p0

    return-void

    :goto_4
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method private final normalizePackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 80
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-wide v0, -0x531300471c0974dbL    # -2.78043718565533E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/exteragram/messenger/plugins/pip/PipController;->REGEX_NORMALIZE:Lkotlin/text/Regex;

    const-wide v1, -0x531300581c0974dbL    # -2.7804123142496957E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final parseDependenciesFromMetadata(Ljava/io/File;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 542
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 544
    :try_start_0
    invoke-static {p1, v2, v0, v2}, Lkotlin/io/FilesKt;->readLines$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 1869
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-wide v4, -0x5313067b1c0974dbL    # -2.778113903764314E-92

    .line 545
    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v3, v4, v6, v5, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0xe

    .line 546
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-wide v7, -0x5313068a1c0974dbL    # -2.7780919584064014E-92

    invoke-static {v7, v8}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-wide v3, -0x531306991c0974dbL    # -2.7780700130484888E-92

    .line 548
    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3, v6, v5, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-wide v3, -0x5313069b1c0974dbL    # -2.778067087000767E-92

    .line 549
    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 550
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-wide v7, -0x5313069d1c0974dbL    # -2.7780641609530454E-92

    invoke-static {v7, v8}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 552
    sget-object v5, Lcom/exteragram/messenger/plugins/pip/PipController;->INSTANCE:Lcom/exteragram/messenger/plugins/pip/PipController;

    invoke-direct {v5, v4}, Lcom/exteragram/messenger/plugins/pip/PipController;->isMarkerCompatible(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 555
    :cond_1
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .line 557
    :cond_2
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :cond_3
    return-object v1

    :goto_1
    const-wide v2, -0x531306ae1c0974dbL    # -2.778039289547411E-92

    .line 562
    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private final parseRequirement(Ljava/lang/String;)Lkotlin/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/Pair;"
        }
    .end annotation

    const-wide v0, -0x531306751c0974dbL    # -2.778122681907479E-92

    .line 515
    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 516
    sget-object v1, Lcom/exteragram/messenger/plugins/pip/PipController;->REGEX_REQ_EXTRA:Lkotlin/text/Regex;

    const-wide v2, -0x531306771c0974dbL    # -2.7781197558597574E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 517
    sget-object v1, Lcom/exteragram/messenger/plugins/pip/PipController;->REGEX_REQ_PAREN:Lkotlin/text/Regex;

    const-wide v2, -0x531306781c0974dbL    # -2.7781182928358965E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 519
    sget-object v1, Lcom/exteragram/messenger/plugins/pip/PipController;->REGEX_REQ_PARSE:Lkotlin/text/Regex;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v1, p1, v0, v3, v2}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1

    .line 520
    :cond_0
    invoke-interface {v0}, Lkotlin/text/MatchResult;->getDestructured()Lkotlin/text/MatchResult$Destructured;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/text/MatchResult$Destructured;->getMatch()Lkotlin/text/MatchResult;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Lkotlin/text/MatchResult$Destructured;->getMatch()Lkotlin/text/MatchResult;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 522
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/plugins/pip/PipController;->parseSpecs(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

.method private final parseSpecs(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lkotlin/Pair;",
            ">;"
        }
    .end annotation

    .line 526
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 527
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-wide v1, -0x531306791c0974dbL    # -2.7781168298120357E-92

    .line 528
    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 529
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 530
    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 531
    sget-object v2, Lcom/exteragram/messenger/plugins/pip/PipController;->REGEX_REQ_SPECS:Lkotlin/text/Regex;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v2, v1, v3, v5, v4}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 533
    invoke-interface {v1}, Lkotlin/text/MatchResult;->getDestructured()Lkotlin/text/MatchResult$Destructured;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/text/MatchResult$Destructured;->getMatch()Lkotlin/text/MatchResult;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1}, Lkotlin/text/MatchResult$Destructured;->getMatch()Lkotlin/text/MatchResult;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 534
    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private final removeOrphanedDirectories()V
    .locals 8

    .line 281
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 282
    sget-object v1, Lcom/exteragram/messenger/plugins/pip/PipController;->registry:Lj$/util/concurrent/ConcurrentHashMap;

    .line 216
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj$/util/concurrent/ConcurrentHashMap;

    .line 283
    invoke-virtual {v2}, Lj$/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    const-wide v4, -0x531302e31c0974dbL    # -2.779459885716288E-92

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1869
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :catch_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 285
    :try_start_0
    sget-object v5, Lcom/exteragram/messenger/plugins/pip/PipController;->INSTANCE:Lcom/exteragram/messenger/plugins/pip/PipController;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v5, v3, v4}, Lcom/exteragram/messenger/plugins/pip/PipController;->getLibPath(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    const-wide v5, -0x531302f31c0974dbL    # -2.7794364773345146E-92

    invoke-static {v5, v6}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 290
    :cond_1
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/pip/PipController;->getLibsDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 13805
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 291
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 293
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 294
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v6, -0x531303091c0974dbL    # -2.779404290809576E-92

    invoke-static {v6, v7}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 295
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v4}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v4

    .line 298
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private final resolveAndInstall(Ljava/lang/String;Ljava/util/List;Ljava/util/Set;Ljava/lang/String;Lcom/exteragram/messenger/plugins/pip/PipController$InstallerDelegate;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lkotlin/Pair;",
            ">;",
            "Ljava/util/Set<",
            "Lkotlin/Pair;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/exteragram/messenger/plugins/pip/PipController$InstallerDelegate;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    const/4 v7, 0x1

    if-eqz v6, :cond_1

    .line 184
    invoke-interface {v6}, Lcom/exteragram/messenger/plugins/pip/PipController$InstallerDelegate;->isCancelled()Z

    move-result v3

    if-eq v3, v7, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-wide v2, -0x5313015a1c0974dbL    # -2.7800348540935987E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_1
    :goto_0
    sget-object v3, Lcom/exteragram/messenger/plugins/pip/PipController;->installLocks:Lj$/util/concurrent/ConcurrentHashMap;

    new-instance v8, Lcom/exteragram/messenger/plugins/pip/PipController$$ExternalSyntheticLambda1;

    invoke-direct {v8}, Lcom/exteragram/messenger/plugins/pip/PipController$$ExternalSyntheticLambda1;-><init>()V

    new-instance v9, Lcom/exteragram/messenger/plugins/pip/PipController$$ExternalSyntheticLambda2;

    invoke-direct {v9, v8}, Lcom/exteragram/messenger/plugins/pip/PipController$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-static {v3, v0, v9}, Lj$/util/concurrent/ConcurrentMap$-EL;->computeIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v3

    const-wide v8, -0x531301711c0974dbL    # -2.7800012045447993E-92

    invoke-static {v8, v9}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    monitor-enter v3

    if-eqz v6, :cond_3

    .line 189
    :try_start_0
    invoke-interface {v6}, Lcom/exteragram/messenger/plugins/pip/PipController$InstallerDelegate;->isCancelled()Z

    move-result v8

    if-eq v8, v7, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-wide v4, -0x531301861c0974dbL    # -2.7799704810437216E-92

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    .line 191
    :cond_3
    :goto_1
    sget-object v8, Lcom/exteragram/messenger/plugins/pip/PipController;->registry:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v0}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lj$/util/concurrent/ConcurrentHashMap;

    const/4 v9, 0x0

    if-eqz v8, :cond_6

    invoke-virtual {v8}, Lj$/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 295
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Ljava/util/Map$Entry;

    .line 191
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    const-wide v12, -0x5313019d1c0974dbL    # -2.7799368314949223E-92

    invoke-static {v12, v13}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_4

    goto :goto_2

    :cond_5
    move-object v10, v9

    .line 296
    :goto_2
    check-cast v10, Ljava/util/Map$Entry;

    goto :goto_3

    :cond_6
    move-object v10, v9

    :goto_3
    if-eqz v10, :cond_9

    .line 193
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    const-wide v11, -0x531301ae1c0974dbL    # -2.779911960089288E-92

    invoke-static {v11, v12}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Ljava/lang/String;

    .line 194
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    const-wide v11, -0x531301bd1c0974dbL    # -2.7798900147313754E-92

    invoke-static {v11, v12}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v12, v10

    check-cast v12, Ljava/lang/Iterable;

    const-wide v10, -0x531301ce1c0974dbL    # -2.779865143325741E-92

    invoke-static {v10, v11}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v13

    const/16 v19, 0x3e

    const/16 v20, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v12 .. v20}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 196
    sget-object v11, Lcom/exteragram/messenger/plugins/pip/PipController;->INSTANCE:Lcom/exteragram/messenger/plugins/pip/PipController;

    invoke-direct {v11, v8, v2}, Lcom/exteragram/messenger/plugins/pip/PipController;->checkVersionSatisfies(Ljava/lang/String;Ljava/util/List;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v11, -0x531301d11c0974dbL    # -2.7798607542541585E-92

    invoke-static {v11, v12}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v11, -0x531301f81c0974dbL    # -2.7798036963235857E-92

    invoke-static {v11, v12}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v11, -0x531301fd1c0974dbL    # -2.7797963812042815E-92

    invoke-static {v11, v12}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v10, -0x531302081c0974dbL    # -2.7797802879418123E-92

    invoke-static {v10, v11}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 200
    :cond_7
    move-object v4, v2

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    move-object v11, v2

    check-cast v11, Ljava/lang/Iterable;

    const-wide v4, -0x5313020f1c0974dbL    # -2.7797700467747864E-92

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v12

    new-instance v17, Lcom/exteragram/messenger/plugins/pip/PipController$$ExternalSyntheticLambda3;

    invoke-direct/range {v17 .. v17}, Lcom/exteragram/messenger/plugins/pip/PipController$$ExternalSyntheticLambda3;-><init>()V

    const/16 v18, 0x1e

    const/16 v19, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v11 .. v19}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_8
    const-wide v4, -0x531302111c0974dbL    # -2.7797671207270647E-92

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    .line 201
    :goto_4
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v6, -0x5313021a1c0974dbL    # -2.779753953512317E-92

    invoke-static {v6, v7}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v6, -0x531302341c0974dbL    # -2.7797159148919352E-92

    invoke-static {v6, v7}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v6, -0x531302471c0974dbL    # -2.7796881174385793E-92

    invoke-static {v6, v7}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v6, -0x531302521c0974dbL    # -2.77967202417611E-92

    invoke-static {v6, v7}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v6, -0x531302731c0974dbL    # -2.7796237443887022E-92

    invoke-static {v6, v7}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 205
    :cond_9
    sget-object v8, Lcom/exteragram/messenger/plugins/pip/PipController;->INSTANCE:Lcom/exteragram/messenger/plugins/pip/PipController;

    invoke-direct {v8, v0, v2}, Lcom/exteragram/messenger/plugins/pip/PipController;->findInstalledVersion(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_a

    .line 208
    invoke-direct {v8, v0, v2}, Lcom/exteragram/messenger/plugins/pip/PipController;->findVersionOnDisk(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_b

    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v11, -0x531302761c0974dbL    # -2.7796193553171197E-92

    invoke-static {v11, v12}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x20

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v11, -0x5313028c1c0974dbL    # -2.7795871687921812E-92

    invoke-static {v11, v12}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_a
    move-object v8, v10

    goto :goto_5

    .line 213
    :cond_b
    invoke-direct {v8, v0, v2, v6}, Lcom/exteragram/messenger/plugins/pip/PipController;->installPackage(Ljava/lang/String;Ljava/util/List;Lcom/exteragram/messenger/plugins/pip/PipController$InstallerDelegate;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v2

    .line 188
    :goto_5
    monitor-exit v3

    .line 219
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lkotlin/Pair;

    invoke-virtual {v10}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    move-object v9, v3

    :cond_d
    check-cast v9, Lkotlin/Pair;

    if-eqz v9, :cond_e

    .line 221
    invoke-virtual {v9}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 222
    sget-object v3, Lcom/exteragram/messenger/plugins/pip/PipController$VersionComparator;->INSTANCE:Lcom/exteragram/messenger/plugins/pip/PipController$VersionComparator;

    invoke-virtual {v3, v8, v2}, Lcom/exteragram/messenger/plugins/pip/PipController$VersionComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_11

    .line 223
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v10, -0x531302a01c0974dbL    # -2.7795579083149644E-92

    invoke-static {v10, v11}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v10, -0x531302ba1c0974dbL    # -2.7795198696945825E-92

    invoke-static {v10, v11}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v10, -0x531302c11c0974dbL    # -2.7795096285275566E-92

    invoke-static {v10, v11}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v10, -0x531302c61c0974dbL    # -2.7795023134082524E-92

    invoke-static {v10, v11}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 224
    invoke-interface {v4, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 230
    :cond_e
    sget-object v2, Lcom/exteragram/messenger/plugins/pip/PipController;->registry:Lj$/util/concurrent/ConcurrentHashMap;

    new-instance v3, Lcom/exteragram/messenger/plugins/pip/PipController$$ExternalSyntheticLambda4;

    invoke-direct {v3}, Lcom/exteragram/messenger/plugins/pip/PipController$$ExternalSyntheticLambda4;-><init>()V

    new-instance v9, Lcom/exteragram/messenger/plugins/pip/PipController$$ExternalSyntheticLambda5;

    invoke-direct {v9, v3}, Lcom/exteragram/messenger/plugins/pip/PipController$$ExternalSyntheticLambda5;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-static {v2, v0, v9}, Lj$/util/concurrent/ConcurrentMap$-EL;->computeIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj$/util/concurrent/ConcurrentHashMap;

    .line 231
    new-instance v3, Lcom/exteragram/messenger/plugins/pip/PipController$$ExternalSyntheticLambda6;

    invoke-direct {v3}, Lcom/exteragram/messenger/plugins/pip/PipController$$ExternalSyntheticLambda6;-><init>()V

    new-instance v9, Lcom/exteragram/messenger/plugins/pip/PipController$$ExternalSyntheticLambda7;

    invoke-direct {v9, v3}, Lcom/exteragram/messenger/plugins/pip/PipController$$ExternalSyntheticLambda7;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-static {v2, v8, v9}, Lj$/util/concurrent/ConcurrentMap$-EL;->computeIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 232
    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 234
    invoke-static {v0, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 236
    invoke-direct {v1, v0, v8}, Lcom/exteragram/messenger/plugins/pip/PipController;->findMetadataFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 237
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 238
    invoke-direct {v1, v0}, Lcom/exteragram/messenger/plugins/pip/PipController;->parseDependenciesFromMetadata(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    .line 239
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v6, :cond_10

    .line 240
    invoke-interface {v6}, Lcom/exteragram/messenger/plugins/pip/PipController$InstallerDelegate;->isCancelled()Z

    move-result v3

    if-eq v3, v7, :cond_f

    goto :goto_7

    :cond_f
    new-instance v0, Ljava/io/IOException;

    const-wide v2, -0x531302cc1c0974dbL    # -2.7794935352650874E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_10
    :goto_7
    invoke-direct {v1, v2}, Lcom/exteragram/messenger/plugins/pip/PipController;->parseRequirement(Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 242
    invoke-direct {v1, v3}, Lcom/exteragram/messenger/plugins/pip/PipController;->normalizePackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v21, v3

    move-object v3, v2

    move-object/from16 v2, v21

    invoke-direct/range {v1 .. v6}, Lcom/exteragram/messenger/plugins/pip/PipController;->resolveAndInstall(Ljava/lang/String;Ljava/util/List;Ljava/util/Set;Ljava/lang/String;Lcom/exteragram/messenger/plugins/pip/PipController$InstallerDelegate;)V

    move-object/from16 v1, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    goto :goto_6

    :cond_11
    return-void

    .line 188
    :goto_8
    monitor-exit v3

    throw v0
.end method

.method private static final resolveAndInstall$lambda$0(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const-wide v0, -0x531307451c0974dbL    # -2.777818372944424E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    new-instance p0, Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0
.end method

.method private static final resolveAndInstall$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 186
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final resolveAndInstall$lambda$2$1(Lkotlin/Pair;)Ljava/lang/CharSequence;
    .locals 2

    const-wide v0, -0x531307481c0974dbL    # -2.7778139838728415E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final resolveAndInstall$lambda$4(Ljava/lang/String;)Lj$/util/concurrent/ConcurrentHashMap;
    .locals 2

    const-wide v0, -0x5313074b1c0974dbL    # -2.777809594801259E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    new-instance p0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object p0
.end method

.method private static final resolveAndInstall$lambda$5(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lj$/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 230
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj$/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method private static final resolveAndInstall$lambda$6(Ljava/lang/String;)Ljava/util/Set;
    .locals 2

    const-wide v0, -0x5313074e1c0974dbL    # -2.7778052057296765E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    new-instance p0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {p0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private static final resolveAndInstall$lambda$7(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    .line 231
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method private final declared-synchronized saveRegistry()V
    .locals 6

    monitor-enter p0

    .line 111
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/pip/PipController;->getLibsDir()Ljava/io/File;

    move-result-object v1

    const-wide v2, -0x531300a11c0974dbL    # -2.7803055135078543E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 112
    sget-object v1, Lcom/exteragram/messenger/plugins/pip/PipController;->gson:Lcom/google/gson/Gson;

    sget-object v2, Lcom/exteragram/messenger/plugins/pip/PipController;->registry:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-wide v2, -0x531300af1c0974dbL    # -2.7802850311738025E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lkotlin/io/FilesKt;->writeText$default(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V

    .line 114
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/pip/PipController;->getRegistryFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 115
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/pip/PipController;->getRegistryFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/pip/PipController;->getRegistryFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 117
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/pip/PipController;->getRegistryFile()Ljava/io/File;

    move-result-object v1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/io/FilesKt;->copyTo$default(Ljava/io/File;Ljava/io/File;ZIILjava/lang/Object;)Ljava/io/File;

    .line 118
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    .line 121
    :cond_0
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/pip/PipController;->getRegistryFile()Ljava/io/File;

    move-result-object v1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/io/FilesKt;->copyTo$default(Ljava/io/File;Ljava/io/File;ZIILjava/lang/Object;)Ljava/io/File;

    .line 122
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    const-wide v1, -0x531300bb1c0974dbL    # -2.7802674748874724E-92

    .line 126
    :try_start_1
    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public static final unzip(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 8

    const-wide v0, -0x531305de1c0974dbL    # -2.778343598510466E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide v0, -0x531305ea1c0974dbL    # -2.778326042224136E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 459
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 460
    new-instance v1, Ljava/util/zip/ZipInputStream;

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 462
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p0

    const/4 v2, 0x0

    if-nez p0, :cond_0

    .line 479
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    .line 463
    :cond_0
    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 465
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    const-wide v5, -0x531305f41c0974dbL    # -2.7783114119855276E-92

    invoke-static {v5, v6}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v4, v5, v7, v6, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 469
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 470
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    goto :goto_1

    .line 472
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 473
    :cond_2
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 474
    :try_start_2
    invoke-static {v1, p0, v7, v6, v2}, Lkotlin/io/ByteStreamsKt;->copyTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 473
    :try_start_3
    invoke-static {p0, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 477
    :goto_1
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 473
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 466
    :cond_3
    new-instance p1, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v2, -0x5313060a1c0974dbL    # -2.778279225460589E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 460
    :goto_2
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception p1

    invoke-static {v1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private final updateRegistryForPlugin(Ljava/lang/String;Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lkotlin/Pair;",
            ">;)V"
        }
    .end annotation

    .line 248
    sget-object v0, Lcom/exteragram/messenger/plugins/pip/PipController;->registry:Lj$/util/concurrent/ConcurrentHashMap;

    .line 216
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/util/concurrent/ConcurrentHashMap;

    .line 216
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 250
    invoke-static {v2, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    .line 251
    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {p2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 252
    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final cleanup()V
    .locals 0

    .line 131
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/pip/PipController;->cleanupInternal()V

    return-void
.end method

.method public final getPythonVersion()Ljava/lang/String;
    .locals 1

    .line 56
    sget-object v0, Lcom/exteragram/messenger/plugins/pip/PipController;->pythonVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final installDependencies(Ljava/util/List;Ljava/lang/String;Lcom/exteragram/messenger/plugins/pip/PipController$InstallerDelegate;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/exteragram/messenger/plugins/pip/PipController$InstallerDelegate;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-wide v0, -0x531300e21c0974dbL    # -2.7802104169568996E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide v0, -0x531300ef1c0974dbL    # -2.7801913976467087E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 144
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 147
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz p3, :cond_1

    .line 148
    :try_start_1
    invoke-interface {p3}, Lcom/exteragram/messenger/plugins/pip/PipController$InstallerDelegate;->isCancelled()Z

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    new-instance p3, Ljava/io/IOException;

    const-wide v0, -0x531300f81c0974dbL    # -2.780178230431961E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    move-object p3, v0

    move-object v1, p0

    move-object v5, p2

    goto/16 :goto_4

    .line 149
    :cond_1
    :goto_1
    :try_start_2
    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 150
    invoke-direct {p0, v1}, Lcom/exteragram/messenger/plugins/pip/PipController;->parseRequirement(Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/util/List;

    .line 151
    invoke-direct {p0, v2}, Lcom/exteragram/messenger/plugins/pip/PipController;->normalizePackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 153
    sget-object v1, Lcom/exteragram/messenger/plugins/pip/PipController;->PREINSTALLED_PACKAGES:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, p0

    move-object v5, p2

    move-object v6, p3

    .line 157
    :try_start_3
    invoke-direct/range {v1 .. v6}, Lcom/exteragram/messenger/plugins/pip/PipController;->resolveAndInstall(Ljava/lang/String;Ljava/util/List;Ljava/util/Set;Ljava/lang/String;Lcom/exteragram/messenger/plugins/pip/PipController$InstallerDelegate;)V

    move-object p2, v5

    move-object p3, v6

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_2
    move-object p3, v0

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v1, p0

    move-object v5, p2

    goto :goto_2

    :cond_3
    move-object v1, p0

    goto :goto_0

    :cond_4
    move-object v1, p0

    move-object v5, p2

    .line 160
    invoke-direct {p0, v5, v4}, Lcom/exteragram/messenger/plugins/pip/PipController;->updateRegistryForPlugin(Ljava/lang/String;Ljava/util/Set;)V

    .line 162
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lkotlin/Pair;

    invoke-virtual {p3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 163
    invoke-direct {p0, v2, p3}, Lcom/exteragram/messenger/plugins/pip/PipController;->getLibPath(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    const-wide v2, -0x5313010f1c0974dbL    # -2.7801445808831618E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 166
    :cond_5
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/pip/PipController;->saveRegistry()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-object v0

    .line 168
    :goto_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v2, -0x531301241c0974dbL    # -2.780113857382084E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v2, -0x531301571c0974dbL    # -2.7800392431651812E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 169
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/pip/PipController;->loadRegistry()V

    .line 170
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/pip/PipController;->removeOrphanedDirectories()V

    .line 171
    throw p3
.end method

.method public final setPythonVersion(Ljava/lang/String;)V
    .locals 2

    const-wide v0, -0x5313003f1c0974dbL    # -2.7804488898462167E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    sput-object p1, Lcom/exteragram/messenger/plugins/pip/PipController;->pythonVersion:Ljava/lang/String;

    return-void
.end method

.method public final uninstallDependencies(Ljava/lang/String;)V
    .locals 10

    const-wide v0, -0x531303341c0974dbL    # -2.77934138078356E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 308
    sget-object v1, Lcom/exteragram/messenger/plugins/pip/PipController;->registry:Lj$/util/concurrent/ConcurrentHashMap;

    .line 216
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lj$/util/concurrent/ConcurrentHashMap;

    .line 216
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    .line 310
    invoke-interface {v7, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 312
    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 313
    invoke-static {v6, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    move v3, v5

    goto :goto_0

    .line 1869
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_1
    if-ge v2, p1, :cond_6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 320
    sget-object v6, Lcom/exteragram/messenger/plugins/pip/PipController;->registry:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v4}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lj$/util/concurrent/ConcurrentHashMap;

    if-eqz v7, :cond_4

    invoke-virtual {v7, v1}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    .line 321
    :cond_4
    invoke-virtual {v6, v4}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lj$/util/concurrent/ConcurrentHashMap;

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Lj$/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v7

    if-ne v7, v5, :cond_5

    .line 322
    invoke-virtual {v6, v4}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    :cond_5
    sget-object v6, Lcom/exteragram/messenger/plugins/pip/PipController;->INSTANCE:Lcom/exteragram/messenger/plugins/pip/PipController;

    invoke-direct {v6, v4, v1}, Lcom/exteragram/messenger/plugins/pip/PipController;->deletePackage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    if-eqz v3, :cond_7

    .line 328
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/pip/PipController;->saveRegistry()V

    :cond_7
    return-void
.end method
