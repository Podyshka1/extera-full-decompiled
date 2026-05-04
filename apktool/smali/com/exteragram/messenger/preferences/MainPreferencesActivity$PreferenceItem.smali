.class public final enum Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/exteragram/messenger/preferences/MainPreferencesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PreferenceItem"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;

.field public static final enum APPEARANCE_CATEGORY:Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;

.field public static final enum CHANNEL:Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;

.field public static final enum CHAT:Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;

.field public static final enum CHATS_CATEGORY:Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;

.field public static final enum CROWDIN:Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;

.field public static final enum GENERAL_CATEGORY:Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;

.field public static final enum HEADER_CELL:Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;

.field public static final enum OTHER_CATEGORY:Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;

.field public static final enum PLUGINS_CATEGORY:Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;

.field public static final enum WEBSITE:Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;


# direct methods
.method private static synthetic $values()[Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;
    .locals 3

    const/16 v0, 0xa

    .line 42
    new-array v0, v0, [Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;

    sget-object v1, Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;->HEADER_CELL:Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;->GENERAL_CATEGORY:Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;->APPEARANCE_CATEGORY:Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;->CHATS_CATEGORY:Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;->PLUGINS_CATEGORY:Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;->OTHER_CATEGORY:Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;->CHANNEL:Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;->CHAT:Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;->CROWDIN:Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;->WEBSITE:Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 43
    new-instance v0, Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;

    const-string v1, "HEADER_CELL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;->HEADER_CELL:Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;

    .line 44
    new-instance v0, Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;

    const-string v1, "GENERAL_CATEGORY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;->GENERAL_CATEGORY:Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;

    .line 45
    new-instance v0, Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;

    const-string v1, "APPEARANCE_CATEGORY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;->APPEARANCE_CATEGORY:Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;

    .line 46
    new-instance v0, Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;

    const-string v1, "CHATS_CATEGORY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;->CHATS_CATEGORY:Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;

    .line 47
    new-instance v0, Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;

    const-string v1, "PLUGINS_CATEGORY"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;->PLUGINS_CATEGORY:Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;

    .line 48
    new-instance v0, Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;

    const-string v1, "OTHER_CATEGORY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;->OTHER_CATEGORY:Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;

    .line 49
    new-instance v0, Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;

    const-string v1, "CHANNEL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;->CHANNEL:Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;

    .line 50
    new-instance v0, Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;

    const-string v1, "CHAT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;->CHAT:Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;

    .line 51
    new-instance v0, Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;

    const-string v1, "CROWDIN"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;->CROWDIN:Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;

    .line 52
    new-instance v0, Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;

    const-string v1, "WEBSITE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;->WEBSITE:Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;

    .line 42
    invoke-static {}, Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;->$values()[Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;->$VALUES:[Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;
    .locals 1

    .line 42
    const-class v0, Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;

    return-object p0
.end method

.method public static values()[Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;
    .locals 1

    .line 42
    sget-object v0, Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;->$VALUES:[Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;

    invoke-virtual {v0}, [Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/exteragram/messenger/preferences/MainPreferencesActivity$PreferenceItem;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 55
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
