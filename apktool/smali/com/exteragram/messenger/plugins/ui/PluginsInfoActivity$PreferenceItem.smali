.class public final enum Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PreferenceItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

.field public static final enum CHECK_SDK_UPDATES:Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

.field public static final enum COMPACT_VIEW:Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

.field public static final enum DEVELOPER_MODE:Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

.field public static final enum DOCUMENTATION:Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

.field public static final enum PLUGINS_DISABLE_ART_OPTS:Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

.field public static final enum RESTORE_SDK_FROM_APK:Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

.field public static final enum SAFE_MODE:Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

.field public static final enum SDK_AUTO_UPDATE:Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

.field public static final enum SDK_BETA_VERSIONS:Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

.field public static final enum SDK_HEADER:Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

.field public static final enum TRUSTED_PLUGINS:Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;


# direct methods
.method private static synthetic $values()[Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;
    .locals 3

    const/16 v0, 0xb

    .line 42
    new-array v0, v0, [Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

    sget-object v1, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;->DEVELOPER_MODE:Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;->COMPACT_VIEW:Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;->SAFE_MODE:Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;->SDK_AUTO_UPDATE:Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;->SDK_BETA_VERSIONS:Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;->CHECK_SDK_UPDATES:Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;->RESTORE_SDK_FROM_APK:Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;->DOCUMENTATION:Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;->TRUSTED_PLUGINS:Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;->PLUGINS_DISABLE_ART_OPTS:Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;->SDK_HEADER:Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 43
    new-instance v0, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

    const-wide v1, -0x5313091f1c0974dbL    # -2.7771248996343853E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;->DEVELOPER_MODE:Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

    .line 44
    new-instance v0, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

    const-wide v1, -0x5313092e1c0974dbL    # -2.7771029542764727E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;->COMPACT_VIEW:Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

    .line 45
    new-instance v0, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

    const-wide v1, -0x5313093b1c0974dbL    # -2.7770839349662817E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;->SAFE_MODE:Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

    .line 46
    new-instance v0, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

    const-wide v1, -0x531309451c0974dbL    # -2.7770693047276733E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;->SDK_AUTO_UPDATE:Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

    .line 47
    new-instance v0, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

    const-wide v1, -0x531309551c0974dbL    # -2.7770458963459E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;->SDK_BETA_VERSIONS:Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

    .line 48
    new-instance v0, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

    const-wide v1, -0x531309671c0974dbL    # -2.7770195619164047E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;->CHECK_SDK_UPDATES:Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

    .line 49
    new-instance v0, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

    const-wide v1, -0x531309791c0974dbL    # -2.7769932274869096E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;->RESTORE_SDK_FROM_APK:Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

    .line 50
    new-instance v0, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

    const-wide v1, -0x5313098e1c0974dbL    # -2.776962503985832E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;->DOCUMENTATION:Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

    .line 51
    new-instance v0, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

    const-wide v1, -0x5313099c1c0974dbL    # -2.77694202165178E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;->TRUSTED_PLUGINS:Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

    .line 52
    new-instance v0, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

    const-wide v1, -0x531309ac1c0974dbL    # -2.7769186132700067E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;->PLUGINS_DISABLE_ART_OPTS:Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

    .line 53
    new-instance v0, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

    const-wide v1, -0x531309c51c0974dbL    # -2.7768820376734856E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;->SDK_HEADER:Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

    .line 42
    invoke-static {}, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;->$values()[Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;->$VALUES:[Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;
    .locals 1

    .line 42
    const-class v0, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

    return-object p0
.end method

.method public static values()[Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;
    .locals 1

    .line 42
    sget-object v0, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;->$VALUES:[Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

    invoke-virtual {v0}, [Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 56
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
