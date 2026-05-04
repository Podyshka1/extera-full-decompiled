.class public final enum Landroidx/camera/camera2/pipe/compat/ClosedReason;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Landroidx/camera/camera2/pipe/compat/ClosedReason;

.field public static final enum APP_CLOSED:Landroidx/camera/camera2/pipe/compat/ClosedReason;

.field public static final enum APP_DISCONNECTED:Landroidx/camera/camera2/pipe/compat/ClosedReason;

.field public static final enum CAMERA2_CLOSED:Landroidx/camera/camera2/pipe/compat/ClosedReason;

.field public static final enum CAMERA2_DISCONNECTED:Landroidx/camera/camera2/pipe/compat/ClosedReason;

.field public static final enum CAMERA2_ERROR:Landroidx/camera/camera2/pipe/compat/ClosedReason;

.field public static final enum CAMERA2_EXCEPTION:Landroidx/camera/camera2/pipe/compat/ClosedReason;


# direct methods
.method private static final synthetic $values()[Landroidx/camera/camera2/pipe/compat/ClosedReason;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Landroidx/camera/camera2/pipe/compat/ClosedReason;

    sget-object v1, Landroidx/camera/camera2/pipe/compat/ClosedReason;->APP_CLOSED:Landroidx/camera/camera2/pipe/compat/ClosedReason;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroidx/camera/camera2/pipe/compat/ClosedReason;->APP_DISCONNECTED:Landroidx/camera/camera2/pipe/compat/ClosedReason;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroidx/camera/camera2/pipe/compat/ClosedReason;->CAMERA2_CLOSED:Landroidx/camera/camera2/pipe/compat/ClosedReason;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Landroidx/camera/camera2/pipe/compat/ClosedReason;->CAMERA2_DISCONNECTED:Landroidx/camera/camera2/pipe/compat/ClosedReason;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Landroidx/camera/camera2/pipe/compat/ClosedReason;->CAMERA2_ERROR:Landroidx/camera/camera2/pipe/compat/ClosedReason;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Landroidx/camera/camera2/pipe/compat/ClosedReason;->CAMERA2_EXCEPTION:Landroidx/camera/camera2/pipe/compat/ClosedReason;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 90
    new-instance v0, Landroidx/camera/camera2/pipe/compat/ClosedReason;

    const-string v1, "APP_CLOSED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/camera/camera2/pipe/compat/ClosedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/camera2/pipe/compat/ClosedReason;->APP_CLOSED:Landroidx/camera/camera2/pipe/compat/ClosedReason;

    .line 91
    new-instance v0, Landroidx/camera/camera2/pipe/compat/ClosedReason;

    const-string v1, "APP_DISCONNECTED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/camera/camera2/pipe/compat/ClosedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/camera2/pipe/compat/ClosedReason;->APP_DISCONNECTED:Landroidx/camera/camera2/pipe/compat/ClosedReason;

    .line 92
    new-instance v0, Landroidx/camera/camera2/pipe/compat/ClosedReason;

    const-string v1, "CAMERA2_CLOSED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/camera/camera2/pipe/compat/ClosedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/camera2/pipe/compat/ClosedReason;->CAMERA2_CLOSED:Landroidx/camera/camera2/pipe/compat/ClosedReason;

    .line 93
    new-instance v0, Landroidx/camera/camera2/pipe/compat/ClosedReason;

    const-string v1, "CAMERA2_DISCONNECTED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/camera/camera2/pipe/compat/ClosedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/camera2/pipe/compat/ClosedReason;->CAMERA2_DISCONNECTED:Landroidx/camera/camera2/pipe/compat/ClosedReason;

    .line 94
    new-instance v0, Landroidx/camera/camera2/pipe/compat/ClosedReason;

    const-string v1, "CAMERA2_ERROR"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroidx/camera/camera2/pipe/compat/ClosedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/camera2/pipe/compat/ClosedReason;->CAMERA2_ERROR:Landroidx/camera/camera2/pipe/compat/ClosedReason;

    .line 95
    new-instance v0, Landroidx/camera/camera2/pipe/compat/ClosedReason;

    const-string v1, "CAMERA2_EXCEPTION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroidx/camera/camera2/pipe/compat/ClosedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/camera2/pipe/compat/ClosedReason;->CAMERA2_EXCEPTION:Landroidx/camera/camera2/pipe/compat/ClosedReason;

    invoke-static {}, Landroidx/camera/camera2/pipe/compat/ClosedReason;->$values()[Landroidx/camera/camera2/pipe/compat/ClosedReason;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/pipe/compat/ClosedReason;->$VALUES:[Landroidx/camera/camera2/pipe/compat/ClosedReason;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/pipe/compat/ClosedReason;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/camera/camera2/pipe/compat/ClosedReason;
    .locals 1

    const-class v0, Landroidx/camera/camera2/pipe/compat/ClosedReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/compat/ClosedReason;

    return-object p0
.end method

.method public static values()[Landroidx/camera/camera2/pipe/compat/ClosedReason;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/compat/ClosedReason;->$VALUES:[Landroidx/camera/camera2/pipe/compat/ClosedReason;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/camera/camera2/pipe/compat/ClosedReason;

    return-object v0
.end method
