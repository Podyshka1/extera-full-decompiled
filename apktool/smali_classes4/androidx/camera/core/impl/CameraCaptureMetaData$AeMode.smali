.class public final enum Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;

.field public static final enum OFF:Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;

.field public static final enum ON:Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;

.field public static final enum ON_ALWAYS_FLASH:Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;

.field public static final enum ON_AUTO_FLASH:Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;

.field public static final enum ON_AUTO_FLASH_REDEYE:Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;

.field public static final enum ON_EXTERNAL_FLASH:Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;

.field public static final enum UNKNOWN:Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;


# direct methods
.method private static synthetic $values()[Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;
    .locals 3

    const/4 v0, 0x7

    .line 126
    new-array v0, v0, [Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;

    sget-object v1, Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;->UNKNOWN:Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;->OFF:Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;->ON:Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;->ON_AUTO_FLASH:Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;->ON_ALWAYS_FLASH:Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;->ON_AUTO_FLASH_REDEYE:Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;->ON_EXTERNAL_FLASH:Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 127
    new-instance v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;->UNKNOWN:Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;

    .line 128
    new-instance v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;

    const-string v1, "OFF"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;->OFF:Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;

    .line 129
    new-instance v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;

    const-string v1, "ON"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;->ON:Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;

    .line 130
    new-instance v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;

    const-string v1, "ON_AUTO_FLASH"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;->ON_AUTO_FLASH:Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;

    .line 131
    new-instance v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;

    const-string v1, "ON_ALWAYS_FLASH"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;->ON_ALWAYS_FLASH:Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;

    .line 132
    new-instance v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;

    const-string v1, "ON_AUTO_FLASH_REDEYE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;->ON_AUTO_FLASH_REDEYE:Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;

    .line 133
    new-instance v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;

    const-string v1, "ON_EXTERNAL_FLASH"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;->ON_EXTERNAL_FLASH:Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;

    .line 126
    invoke-static {}, Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;->$values()[Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;->$VALUES:[Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 126
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;
    .locals 1

    .line 126
    const-class v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;

    return-object p0
.end method

.method public static values()[Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;
    .locals 1

    .line 126
    sget-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;->$VALUES:[Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;

    invoke-virtual {v0}, [Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;

    return-object v0
.end method
