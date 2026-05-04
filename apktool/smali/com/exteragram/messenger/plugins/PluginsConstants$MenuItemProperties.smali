.class public Lcom/exteragram/messenger/plugins/PluginsConstants$MenuItemProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/exteragram/messenger/plugins/PluginsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MenuItemProperties"
.end annotation


# static fields
.field public static final CONDITION:Ljava/lang/String;

.field public static final ICON:Ljava/lang/String;

.field public static final ITEM_ID:Ljava/lang/String;

.field public static final MENU_TYPE:Ljava/lang/String;

.field public static final ON_CLICK:Ljava/lang/String;

.field public static final PRIORITY:Ljava/lang/String;

.field public static final SUBTEXT:Ljava/lang/String;

.field public static final TEXT:Ljava/lang/String;


# direct methods
.method private static constructor <clinit>()V
    .locals 2

    const-wide v0, -0x531321571c0974dbL    # -2.768054151697169E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$MenuItemProperties;->MENU_TYPE:Ljava/lang/String;

    const-wide v0, -0x531321611c0974dbL    # -2.7680395214585607E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$MenuItemProperties;->ITEM_ID:Ljava/lang/String;

    const-wide v0, -0x531321691c0974dbL    # -2.768027817267674E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$MenuItemProperties;->TEXT:Ljava/lang/String;

    const-wide v0, -0x5313216e1c0974dbL    # -2.7680205021483698E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$MenuItemProperties;->SUBTEXT:Ljava/lang/String;

    const-wide v0, -0x531321761c0974dbL    # -2.768008797957483E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$MenuItemProperties;->ICON:Ljava/lang/String;

    const-wide v0, -0x5313217b1c0974dbL    # -2.768001482838179E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$MenuItemProperties;->ON_CLICK:Ljava/lang/String;

    const-wide v0, -0x531321841c0974dbL    # -2.7679883156234313E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$MenuItemProperties;->CONDITION:Ljava/lang/String;

    const-wide v0, -0x5313218e1c0974dbL    # -2.767973685384823E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$MenuItemProperties;->PRIORITY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
