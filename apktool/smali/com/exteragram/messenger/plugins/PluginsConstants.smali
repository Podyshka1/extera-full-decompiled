.class public final Lcom/exteragram/messenger/plugins/PluginsConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/exteragram/messenger/plugins/PluginsConstants$HookFilterTypes;,
        Lcom/exteragram/messenger/plugins/PluginsConstants$MenuItemProperties;,
        Lcom/exteragram/messenger/plugins/PluginsConstants$MenuItemTypes;,
        Lcom/exteragram/messenger/plugins/PluginsConstants$DevServer;,
        Lcom/exteragram/messenger/plugins/PluginsConstants$Xposed;,
        Lcom/exteragram/messenger/plugins/PluginsConstants$Strategy;,
        Lcom/exteragram/messenger/plugins/PluginsConstants$Settings;
    }
.end annotation


# static fields
.field public static final APP_PAUSE:Ljava/lang/String;

.field public static final APP_RESUME:Ljava/lang/String;

.field public static final APP_START:Ljava/lang/String;

.field public static final APP_STOP:Ljava/lang/String;

.field public static final CREATE_SETTINGS:Ljava/lang/String;

.field public static final ERROR:Ljava/lang/String;

.field public static final ON_APP_EVENT:Ljava/lang/String;

.field public static final ON_PLUGIN_LOAD:Ljava/lang/String;

.field public static final ON_PLUGIN_UNLOAD:Ljava/lang/String;

.field public static final PARAMS:Ljava/lang/String;

.field public static final PLUGINS:Ljava/lang/String;

.field public static final PLUGINS_EXT:Ljava/lang/String;

.field public static final PLUGINS_SDK:Ljava/lang/String;

.field public static final PYSDK_IMY:Ljava/lang/String;

.field public static final PYTHON:Ljava/lang/String;

.field public static final REQUEST:Ljava/lang/String;

.field public static final RESPONSE:Ljava/lang/String;

.field public static final SEND_MESSAGE_HOOK:Ljava/lang/String;

.field public static final STRATEGY:Ljava/lang/String;

.field public static final UPDATE:Ljava/lang/String;

.field public static final UPDATES:Ljava/lang/String;


# direct methods
.method private static constructor <clinit>()V
    .locals 2

    const-wide v0, -0x53132afd1c0974dbL    # -2.764440482760891E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants;->PYTHON:Ljava/lang/String;

    const-wide v0, -0x53132b041c0974dbL    # -2.7644302415938652E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants;->SEND_MESSAGE_HOOK:Ljava/lang/String;

    const-wide v0, -0x53132b161c0974dbL    # -2.76440390716437E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants;->STRATEGY:Ljava/lang/String;

    const-wide v0, -0x53132b1f1c0974dbL    # -2.7643907399496225E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants;->PARAMS:Ljava/lang/String;

    const-wide v0, -0x53132b261c0974dbL    # -2.7643804987825966E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants;->UPDATE:Ljava/lang/String;

    const-wide v0, -0x53132b2d1c0974dbL    # -2.7643702576155707E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants;->UPDATES:Ljava/lang/String;

    const-wide v0, -0x53132b351c0974dbL    # -2.764358553424684E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants;->REQUEST:Ljava/lang/String;

    const-wide v0, -0x53132b3d1c0974dbL    # -2.7643468492337973E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants;->RESPONSE:Ljava/lang/String;

    const-wide v0, -0x53132b461c0974dbL    # -2.7643336820190497E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants;->ERROR:Ljava/lang/String;

    const-wide v0, -0x53132b4c1c0974dbL    # -2.7643249038758846E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants;->PLUGINS:Ljava/lang/String;

    const-wide v0, -0x53132b541c0974dbL    # -2.764313199684998E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants;->PLUGINS_EXT:Ljava/lang/String;

    const-wide v0, -0x53132b5c1c0974dbL    # -2.7643014954941112E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants;->PLUGINS_SDK:Ljava/lang/String;

    const-wide v0, -0x53132b681c0974dbL    # -2.764283939207781E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants;->PYSDK_IMY:Ljava/lang/String;

    const-wide v0, -0x53132b791c0974dbL    # -2.7642590678021468E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants;->CREATE_SETTINGS:Ljava/lang/String;

    const-wide v0, -0x53132b891c0974dbL    # -2.7642356594203733E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants;->APP_START:Ljava/lang/String;

    const-wide v0, -0x53132b931c0974dbL    # -2.764221029181765E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants;->APP_STOP:Ljava/lang/String;

    const-wide v0, -0x53132b9c1c0974dbL    # -2.7642078619670173E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants;->APP_PAUSE:Ljava/lang/String;

    const-wide v0, -0x53132ba61c0974dbL    # -2.764193231728409E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants;->APP_RESUME:Ljava/lang/String;

    const-wide v0, -0x53132bb11c0974dbL    # -2.7641771384659397E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants;->ON_APP_EVENT:Ljava/lang/String;

    const-wide v0, -0x53132bbe1c0974dbL    # -2.7641581191557487E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants;->ON_PLUGIN_LOAD:Ljava/lang/String;

    const-wide v0, -0x53132bcd1c0974dbL    # -2.764136173797836E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants;->ON_PLUGIN_UNLOAD:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
