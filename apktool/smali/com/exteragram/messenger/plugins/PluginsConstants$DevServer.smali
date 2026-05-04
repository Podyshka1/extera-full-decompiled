.class public final Lcom/exteragram/messenger/plugins/PluginsConstants$DevServer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/exteragram/messenger/plugins/PluginsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DevServer"
.end annotation


# static fields
.field public static final CLASS:Ljava/lang/String;

.field public static final MODULE:Ljava/lang/String;

.field public static final START_SERVER:Ljava/lang/String;

.field public static final STOP_SERVER:Ljava/lang/String;


# direct methods
.method private static constructor <clinit>()V
    .locals 2

    const-wide v0, -0x53131e661c0974dbL    # -2.7691558086643827E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$DevServer;->MODULE:Ljava/lang/String;

    const-wide v0, -0x53131e711c0974dbL    # -2.7691397154019134E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$DevServer;->CLASS:Ljava/lang/String;

    const-wide v0, -0x53131e7b1c0974dbL    # -2.769125085163305E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$DevServer;->START_SERVER:Ljava/lang/String;

    const-wide v0, -0x53131e881c0974dbL    # -2.769106065853114E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$DevServer;->STOP_SERVER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
