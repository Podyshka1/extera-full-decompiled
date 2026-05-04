.class public final Lcom/exteragram/messenger/plugins/PluginsConstants$Xposed;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/exteragram/messenger/plugins/PluginsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Xposed"
.end annotation


# static fields
.field public static final AFTER_HOOKED_METHOD:Ljava/lang/String;

.field public static final BEFORE_HOOKED_METHOD:Ljava/lang/String;

.field public static final HOOK_FILTERS:Ljava/lang/String;

.field public static final REPLACE_HOOKED_METHOD:Ljava/lang/String;


# direct methods
.method private static constructor <clinit>()V
    .locals 2

    const-wide v0, -0x531320891c0974dbL    # -2.7683555346125025E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$Xposed;->REPLACE_HOOKED_METHOD:Ljava/lang/String;

    const-wide v0, -0x5313209f1c0974dbL    # -2.768323348087564E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$Xposed;->BEFORE_HOOKED_METHOD:Ljava/lang/String;

    const-wide v0, -0x531320b41c0974dbL    # -2.7682926245864863E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$Xposed;->AFTER_HOOKED_METHOD:Ljava/lang/String;

    const-wide v0, -0x531320c81c0974dbL    # -2.7682633641092695E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$Xposed;->HOOK_FILTERS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
