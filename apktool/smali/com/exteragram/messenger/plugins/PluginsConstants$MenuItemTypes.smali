.class public Lcom/exteragram/messenger/plugins/PluginsConstants$MenuItemTypes;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/exteragram/messenger/plugins/PluginsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MenuItemTypes"
.end annotation


# static fields
.field public static final CHAT_ACTION_MENU:Ljava/lang/String;

.field public static final DRAWER_MENU:Ljava/lang/String;

.field public static final MAIN_MENU:Ljava/lang/String;

.field public static final MESSAGE_CONTEXT_MENU:Ljava/lang/String;

.field public static final PROFILE_ACTION_MENU:Ljava/lang/String;


# direct methods
.method private static constructor <clinit>()V
    .locals 2

    const-wide v0, -0x53131e161c0974dbL    # -2.76927285057325E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$MenuItemTypes;->MESSAGE_CONTEXT_MENU:Ljava/lang/String;

    const-wide v0, -0x53131e2b1c0974dbL    # -2.7692421270721723E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$MenuItemTypes;->DRAWER_MENU:Ljava/lang/String;

    const-wide v0, -0x53131e371c0974dbL    # -2.7692245707858422E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$MenuItemTypes;->MAIN_MENU:Ljava/lang/String;

    const-wide v0, -0x53131e411c0974dbL    # -2.7692099405472338E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$MenuItemTypes;->CHAT_ACTION_MENU:Ljava/lang/String;

    const-wide v0, -0x53131e521c0974dbL    # -2.7691850691415995E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$MenuItemTypes;->PROFILE_ACTION_MENU:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
