.class public final enum Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;

.field public static final enum FIRED:Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;

.field public static final enum NONE:Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;

.field public static final enum READY:Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;

.field public static final enum UNKNOWN:Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;


# direct methods
.method private static synthetic $values()[Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;
    .locals 3

    const/4 v0, 0x4

    .line 151
    new-array v0, v0, [Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;

    sget-object v1, Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;->UNKNOWN:Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;->NONE:Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;->READY:Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;->FIRED:Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 154
    new-instance v0, Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;->UNKNOWN:Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;

    .line 157
    new-instance v0, Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;

    const-string v1, "NONE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;->NONE:Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;

    .line 160
    new-instance v0, Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;

    const-string v1, "READY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;->READY:Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;

    .line 163
    new-instance v0, Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;

    const-string v1, "FIRED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;->FIRED:Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;

    .line 151
    invoke-static {}, Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;->$values()[Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;->$VALUES:[Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 151
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;
    .locals 1

    .line 151
    const-class v0, Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;

    return-object p0
.end method

.method public static values()[Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;
    .locals 1

    .line 151
    sget-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;->$VALUES:[Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;

    invoke-virtual {v0}, [Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;

    return-object v0
.end method


# virtual methods
.method public toFlashState()I
    .locals 4

    .line 169
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x3

    if-eq v0, v1, :cond_1

    if-eq v0, v3, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v2

    :cond_1
    return v3

    :cond_2
    return v1
.end method
