.class public final enum Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppNavigationItem"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;

.field public static final enum BOTTOM_NAVIGATION_BAR_MODE:Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;

.field public static final enum DRAWER:Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;

.field public static final enum IMMERSIVE_ANIMATION:Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;

.field public static final enum PREDICTIVE_BACK_ANIMATION:Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;

.field public static final enum SPRING_ANIMATIONS:Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;

.field public static final enum TABLET_MODE:Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;


# direct methods
.method private static synthetic $values()[Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;
    .locals 3

    const/4 v0, 0x6

    .line 48
    new-array v0, v0, [Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;

    sget-object v1, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;->DRAWER:Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;->IMMERSIVE_ANIMATION:Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;->BOTTOM_NAVIGATION_BAR_MODE:Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;->PREDICTIVE_BACK_ANIMATION:Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;->SPRING_ANIMATIONS:Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;->TABLET_MODE:Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 49
    new-instance v0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;

    const-string v1, "DRAWER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;->DRAWER:Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;

    .line 50
    new-instance v0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;

    const-string v1, "IMMERSIVE_ANIMATION"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;->IMMERSIVE_ANIMATION:Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;

    .line 51
    new-instance v0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;

    const-string v1, "BOTTOM_NAVIGATION_BAR_MODE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;->BOTTOM_NAVIGATION_BAR_MODE:Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;

    .line 52
    new-instance v0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;

    const-string v1, "PREDICTIVE_BACK_ANIMATION"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;->PREDICTIVE_BACK_ANIMATION:Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;

    .line 53
    new-instance v0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;

    const-string v1, "SPRING_ANIMATIONS"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;->SPRING_ANIMATIONS:Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;

    .line 54
    new-instance v0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;

    const-string v1, "TABLET_MODE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;->TABLET_MODE:Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;

    .line 48
    invoke-static {}, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;->$values()[Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;->$VALUES:[Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromId(I)Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;
    .locals 1

    add-int/lit16 p0, p0, -0x96

    if-ltz p0, :cond_1

    .line 64
    invoke-static {}, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;->values()[Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;

    move-result-object v0

    array-length v0, v0

    if-lt p0, v0, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    invoke-static {}, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;->values()[Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;
    .locals 1

    .line 48
    const-class v0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;

    return-object p0
.end method

.method public static values()[Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;
    .locals 1

    .line 48
    sget-object v0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;->$VALUES:[Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;

    invoke-virtual {v0}, [Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 59
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    add-int/lit16 v0, v0, 0x96

    return v0
.end method
