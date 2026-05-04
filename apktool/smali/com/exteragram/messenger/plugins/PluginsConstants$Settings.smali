.class public final Lcom/exteragram/messenger/plugins/PluginsConstants$Settings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/exteragram/messenger/plugins/PluginsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Settings"
.end annotation


# static fields
.field public static final ACCENT:Ljava/lang/String;

.field public static final CREATE_SUB_FRAGMENT:Ljava/lang/String;

.field public static final DEFAULT:Ljava/lang/String;

.field public static final FACTORY:Ljava/lang/String;

.field public static final FACTORY_ARGS:Ljava/lang/String;

.field public static final HINT:Ljava/lang/String;

.field public static final ICON:Ljava/lang/String;

.field public static final ITEM:Ljava/lang/String;

.field public static final ITEMS:Ljava/lang/String;

.field public static final KEY:Ljava/lang/String;

.field public static final LINK_ALIAS:Ljava/lang/String;

.field public static final MASK:Ljava/lang/String;

.field public static final MAX_LENGTH:Ljava/lang/String;

.field public static final MULTILINE:Ljava/lang/String;

.field public static final ON_CHANGE:Ljava/lang/String;

.field public static final ON_CLICK:Ljava/lang/String;

.field public static final ON_LONG_CLICK:Ljava/lang/String;

.field public static final RED:Ljava/lang/String;

.field public static final SUBTEXT:Ljava/lang/String;

.field public static final TEXT:Ljava/lang/String;

.field public static final TYPE:Ljava/lang/String;

.field public static final TYPE_CUSTOM:Ljava/lang/String;

.field public static final TYPE_DIVIDER:Ljava/lang/String;

.field public static final TYPE_EDIT_TEXT:Ljava/lang/String;

.field public static final TYPE_HEADER:Ljava/lang/String;

.field public static final TYPE_INPUT:Ljava/lang/String;

.field public static final TYPE_SELECTOR:Ljava/lang/String;

.field public static final TYPE_SWITCH:Ljava/lang/String;

.field public static final TYPE_TEXT:Ljava/lang/String;

.field public static final VIEW:Ljava/lang/String;


# direct methods
.method private static constructor <clinit>()V
    .locals 2

    const-wide v0, -0x53132c011c0974dbL    # -2.7640600965570724E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$Settings;->TYPE:Ljava/lang/String;

    const-wide v0, -0x53132c061c0974dbL    # -2.764052781437768E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$Settings;->KEY:Ljava/lang/String;

    const-wide v0, -0x53132c0a1c0974dbL    # -2.7640469293423248E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$Settings;->TEXT:Ljava/lang/String;

    const-wide v0, -0x53132c0f1c0974dbL    # -2.7640396142230206E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$Settings;->SUBTEXT:Ljava/lang/String;

    const-wide v0, -0x53132c171c0974dbL    # -2.764027910032134E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$Settings;->ICON:Ljava/lang/String;

    const-wide v0, -0x53132c1c1c0974dbL    # -2.7640205949128297E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$Settings;->ACCENT:Ljava/lang/String;

    const-wide v0, -0x53132c231c0974dbL    # -2.7640103537458038E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$Settings;->RED:Ljava/lang/String;

    const-wide v0, -0x53132c271c0974dbL    # -2.7640045016503604E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$Settings;->ON_CLICK:Ljava/lang/String;

    const-wide v0, -0x53132c301c0974dbL    # -2.7639913344356128E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$Settings;->DEFAULT:Ljava/lang/String;

    const-wide v0, -0x53132c381c0974dbL    # -2.763979630244726E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$Settings;->ITEMS:Ljava/lang/String;

    const-wide v0, -0x53132c3e1c0974dbL    # -2.763970852101561E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$Settings;->HINT:Ljava/lang/String;

    const-wide v0, -0x53132c431c0974dbL    # -2.763963536982257E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$Settings;->MULTILINE:Ljava/lang/String;

    const-wide v0, -0x53132c4d1c0974dbL    # -2.7639489067436484E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$Settings;->MAX_LENGTH:Ljava/lang/String;

    const-wide v0, -0x53132c581c0974dbL    # -2.7639328134811792E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$Settings;->MASK:Ljava/lang/String;

    const-wide v0, -0x53132c5d1c0974dbL    # -2.763925498361875E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$Settings;->ON_CHANGE:Ljava/lang/String;

    const-wide v0, -0x53132c671c0974dbL    # -2.7639108681232666E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$Settings;->TYPE_SWITCH:Ljava/lang/String;

    const-wide v0, -0x53132c6e1c0974dbL    # -2.7639006269562407E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$Settings;->TYPE_INPUT:Ljava/lang/String;

    const-wide v0, -0x53132c741c0974dbL    # -2.7638918488130756E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$Settings;->TYPE_SELECTOR:Ljava/lang/String;

    const-wide v0, -0x53132c7d1c0974dbL    # -2.763878681598328E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$Settings;->TYPE_HEADER:Ljava/lang/String;

    const-wide v0, -0x53132c841c0974dbL    # -2.763868440431302E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$Settings;->TYPE_DIVIDER:Ljava/lang/String;

    const-wide v0, -0x53132c8c1c0974dbL    # -2.7638567362404154E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$Settings;->TYPE_TEXT:Ljava/lang/String;

    const-wide v0, -0x53132c911c0974dbL    # -2.7638494211211112E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$Settings;->TYPE_EDIT_TEXT:Ljava/lang/String;

    const-wide v0, -0x53132c9b1c0974dbL    # -2.7638347908825028E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$Settings;->TYPE_CUSTOM:Ljava/lang/String;

    const-wide v0, -0x53132ca21c0974dbL    # -2.763824549715477E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$Settings;->VIEW:Ljava/lang/String;

    const-wide v0, -0x53132ca71c0974dbL    # -2.7638172345961727E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$Settings;->ITEM:Ljava/lang/String;

    const-wide v0, -0x53132cac1c0974dbL    # -2.7638099194768685E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$Settings;->FACTORY:Ljava/lang/String;

    const-wide v0, -0x53132cb41c0974dbL    # -2.7637982152859818E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$Settings;->FACTORY_ARGS:Ljava/lang/String;

    const-wide v0, -0x53132cc11c0974dbL    # -2.763779195975791E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$Settings;->CREATE_SUB_FRAGMENT:Ljava/lang/String;

    const-wide v0, -0x53132cd51c0974dbL    # -2.763749935498574E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$Settings;->ON_LONG_CLICK:Ljava/lang/String;

    const-wide v0, -0x53132ce31c0974dbL    # -2.7637294531645222E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$Settings;->LINK_ALIAS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
