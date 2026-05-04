.class public final Lcom/exteragram/messenger/plugins/PluginsConstants$Strategy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/exteragram/messenger/plugins/PluginsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Strategy"
.end annotation


# static fields
.field public static final CANCEL:Ljava/lang/String;

.field public static final DEFAULT:Ljava/lang/String;

.field public static final MODIFY:Ljava/lang/String;

.field public static final MODIFY_FINAL:Ljava/lang/String;


# direct methods
.method private static constructor <clinit>()V
    .locals 2

    const-wide v0, -0x53132bde1c0974dbL    # -2.7641113023922018E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$Strategy;->MODIFY:Ljava/lang/String;

    const-wide v0, -0x53132be51c0974dbL    # -2.764101061225176E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$Strategy;->CANCEL:Ljava/lang/String;

    const-wide v0, -0x53132bec1c0974dbL    # -2.76409082005815E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$Strategy;->DEFAULT:Ljava/lang/String;

    const-wide v0, -0x53132bf41c0974dbL    # -2.7640791158672633E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$Strategy;->MODIFY_FINAL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
