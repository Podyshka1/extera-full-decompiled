.class final enum Landroidx/camera/video/Recorder$AudioState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/video/Recorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "AudioState"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/camera/video/Recorder$AudioState;

.field public static final enum DISABLED:Landroidx/camera/video/Recorder$AudioState;

.field public static final enum ENABLED:Landroidx/camera/video/Recorder$AudioState;

.field public static final enum ERROR_ENCODER:Landroidx/camera/video/Recorder$AudioState;

.field public static final enum ERROR_SOURCE:Landroidx/camera/video/Recorder$AudioState;

.field public static final enum IDLING:Landroidx/camera/video/Recorder$AudioState;

.field public static final enum INITIALIZING:Landroidx/camera/video/Recorder$AudioState;


# direct methods
.method private static synthetic $values()[Landroidx/camera/video/Recorder$AudioState;
    .locals 3

    const/4 v0, 0x6

    .line 283
    new-array v0, v0, [Landroidx/camera/video/Recorder$AudioState;

    sget-object v1, Landroidx/camera/video/Recorder$AudioState;->INITIALIZING:Landroidx/camera/video/Recorder$AudioState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroidx/camera/video/Recorder$AudioState;->IDLING:Landroidx/camera/video/Recorder$AudioState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroidx/camera/video/Recorder$AudioState;->DISABLED:Landroidx/camera/video/Recorder$AudioState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Landroidx/camera/video/Recorder$AudioState;->ENABLED:Landroidx/camera/video/Recorder$AudioState;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Landroidx/camera/video/Recorder$AudioState;->ERROR_ENCODER:Landroidx/camera/video/Recorder$AudioState;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Landroidx/camera/video/Recorder$AudioState;->ERROR_SOURCE:Landroidx/camera/video/Recorder$AudioState;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 287
    new-instance v0, Landroidx/camera/video/Recorder$AudioState;

    const-string v1, "INITIALIZING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/camera/video/Recorder$AudioState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/video/Recorder$AudioState;->INITIALIZING:Landroidx/camera/video/Recorder$AudioState;

    .line 291
    new-instance v0, Landroidx/camera/video/Recorder$AudioState;

    const-string v1, "IDLING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/camera/video/Recorder$AudioState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/video/Recorder$AudioState;->IDLING:Landroidx/camera/video/Recorder$AudioState;

    .line 295
    new-instance v0, Landroidx/camera/video/Recorder$AudioState;

    const-string v1, "DISABLED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/camera/video/Recorder$AudioState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/video/Recorder$AudioState;->DISABLED:Landroidx/camera/video/Recorder$AudioState;

    .line 299
    new-instance v0, Landroidx/camera/video/Recorder$AudioState;

    const-string v1, "ENABLED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/camera/video/Recorder$AudioState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/video/Recorder$AudioState;->ENABLED:Landroidx/camera/video/Recorder$AudioState;

    .line 303
    new-instance v0, Landroidx/camera/video/Recorder$AudioState;

    const-string v1, "ERROR_ENCODER"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroidx/camera/video/Recorder$AudioState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/video/Recorder$AudioState;->ERROR_ENCODER:Landroidx/camera/video/Recorder$AudioState;

    .line 307
    new-instance v0, Landroidx/camera/video/Recorder$AudioState;

    const-string v1, "ERROR_SOURCE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroidx/camera/video/Recorder$AudioState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/video/Recorder$AudioState;->ERROR_SOURCE:Landroidx/camera/video/Recorder$AudioState;

    .line 283
    invoke-static {}, Landroidx/camera/video/Recorder$AudioState;->$values()[Landroidx/camera/video/Recorder$AudioState;

    move-result-object v0

    sput-object v0, Landroidx/camera/video/Recorder$AudioState;->$VALUES:[Landroidx/camera/video/Recorder$AudioState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 283
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/camera/video/Recorder$AudioState;
    .locals 1

    .line 283
    const-class v0, Landroidx/camera/video/Recorder$AudioState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/camera/video/Recorder$AudioState;

    return-object p0
.end method

.method public static values()[Landroidx/camera/video/Recorder$AudioState;
    .locals 1

    .line 283
    sget-object v0, Landroidx/camera/video/Recorder$AudioState;->$VALUES:[Landroidx/camera/video/Recorder$AudioState;

    invoke-virtual {v0}, [Landroidx/camera/video/Recorder$AudioState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/camera/video/Recorder$AudioState;

    return-object v0
.end method
