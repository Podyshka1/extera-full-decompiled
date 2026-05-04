.class public final enum Landroidx/camera/core/featuregroup/impl/UseCaseType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/featuregroup/impl/UseCaseType$Companion;,
        Landroidx/camera/core/featuregroup/impl/UseCaseType$WhenMappings;
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Landroidx/camera/core/featuregroup/impl/UseCaseType;

.field public static final Companion:Landroidx/camera/core/featuregroup/impl/UseCaseType$Companion;

.field public static final enum IMAGE_ANALYSIS:Landroidx/camera/core/featuregroup/impl/UseCaseType;

.field public static final enum IMAGE_CAPTURE:Landroidx/camera/core/featuregroup/impl/UseCaseType;

.field public static final enum PREVIEW:Landroidx/camera/core/featuregroup/impl/UseCaseType;

.field public static final enum STREAM_SHARING:Landroidx/camera/core/featuregroup/impl/UseCaseType;

.field public static final enum UNDEFINED:Landroidx/camera/core/featuregroup/impl/UseCaseType;

.field public static final enum VIDEO_CAPTURE:Landroidx/camera/core/featuregroup/impl/UseCaseType;


# instance fields
.field private final surfaceClass:Ljava/lang/Class;


# direct methods
.method private static final synthetic $values()[Landroidx/camera/core/featuregroup/impl/UseCaseType;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Landroidx/camera/core/featuregroup/impl/UseCaseType;

    sget-object v1, Landroidx/camera/core/featuregroup/impl/UseCaseType;->PREVIEW:Landroidx/camera/core/featuregroup/impl/UseCaseType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroidx/camera/core/featuregroup/impl/UseCaseType;->IMAGE_CAPTURE:Landroidx/camera/core/featuregroup/impl/UseCaseType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroidx/camera/core/featuregroup/impl/UseCaseType;->IMAGE_ANALYSIS:Landroidx/camera/core/featuregroup/impl/UseCaseType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Landroidx/camera/core/featuregroup/impl/UseCaseType;->VIDEO_CAPTURE:Landroidx/camera/core/featuregroup/impl/UseCaseType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Landroidx/camera/core/featuregroup/impl/UseCaseType;->STREAM_SHARING:Landroidx/camera/core/featuregroup/impl/UseCaseType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Landroidx/camera/core/featuregroup/impl/UseCaseType;->UNDEFINED:Landroidx/camera/core/featuregroup/impl/UseCaseType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 50
    new-instance v0, Landroidx/camera/core/featuregroup/impl/UseCaseType;

    const/4 v1, 0x0

    const-class v2, Landroid/view/SurfaceHolder;

    const-string v3, "PREVIEW"

    invoke-direct {v0, v3, v1, v2}, Landroidx/camera/core/featuregroup/impl/UseCaseType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Landroidx/camera/core/featuregroup/impl/UseCaseType;->PREVIEW:Landroidx/camera/core/featuregroup/impl/UseCaseType;

    .line 53
    new-instance v0, Landroidx/camera/core/featuregroup/impl/UseCaseType;

    const-string v1, "IMAGE_CAPTURE"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/camera/core/featuregroup/impl/UseCaseType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Landroidx/camera/core/featuregroup/impl/UseCaseType;->IMAGE_CAPTURE:Landroidx/camera/core/featuregroup/impl/UseCaseType;

    .line 56
    new-instance v0, Landroidx/camera/core/featuregroup/impl/UseCaseType;

    const-string v1, "IMAGE_ANALYSIS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v3}, Landroidx/camera/core/featuregroup/impl/UseCaseType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Landroidx/camera/core/featuregroup/impl/UseCaseType;->IMAGE_ANALYSIS:Landroidx/camera/core/featuregroup/impl/UseCaseType;

    .line 64
    new-instance v0, Landroidx/camera/core/featuregroup/impl/UseCaseType;

    const/4 v1, 0x3

    const-class v2, Landroid/media/MediaCodec;

    const-string v4, "VIDEO_CAPTURE"

    invoke-direct {v0, v4, v1, v2}, Landroidx/camera/core/featuregroup/impl/UseCaseType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Landroidx/camera/core/featuregroup/impl/UseCaseType;->VIDEO_CAPTURE:Landroidx/camera/core/featuregroup/impl/UseCaseType;

    .line 67
    new-instance v0, Landroidx/camera/core/featuregroup/impl/UseCaseType;

    const/4 v1, 0x4

    const-class v2, Landroid/graphics/SurfaceTexture;

    const-string v4, "STREAM_SHARING"

    invoke-direct {v0, v4, v1, v2}, Landroidx/camera/core/featuregroup/impl/UseCaseType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Landroidx/camera/core/featuregroup/impl/UseCaseType;->STREAM_SHARING:Landroidx/camera/core/featuregroup/impl/UseCaseType;

    .line 70
    new-instance v0, Landroidx/camera/core/featuregroup/impl/UseCaseType;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Landroidx/camera/core/featuregroup/impl/UseCaseType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Landroidx/camera/core/featuregroup/impl/UseCaseType;->UNDEFINED:Landroidx/camera/core/featuregroup/impl/UseCaseType;

    invoke-static {}, Landroidx/camera/core/featuregroup/impl/UseCaseType;->$values()[Landroidx/camera/core/featuregroup/impl/UseCaseType;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/featuregroup/impl/UseCaseType;->$VALUES:[Landroidx/camera/core/featuregroup/impl/UseCaseType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/featuregroup/impl/UseCaseType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Landroidx/camera/core/featuregroup/impl/UseCaseType$Companion;

    invoke-direct {v0, v3}, Landroidx/camera/core/featuregroup/impl/UseCaseType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/core/featuregroup/impl/UseCaseType;->Companion:Landroidx/camera/core/featuregroup/impl/UseCaseType$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Landroidx/camera/core/featuregroup/impl/UseCaseType;->surfaceClass:Ljava/lang/Class;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/camera/core/featuregroup/impl/UseCaseType;
    .locals 1

    const-class v0, Landroidx/camera/core/featuregroup/impl/UseCaseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/camera/core/featuregroup/impl/UseCaseType;

    return-object p0
.end method

.method public static values()[Landroidx/camera/core/featuregroup/impl/UseCaseType;
    .locals 1

    sget-object v0, Landroidx/camera/core/featuregroup/impl/UseCaseType;->$VALUES:[Landroidx/camera/core/featuregroup/impl/UseCaseType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/camera/core/featuregroup/impl/UseCaseType;

    return-object v0
.end method


# virtual methods
.method public final getSurfaceClass()Ljava/lang/Class;
    .locals 1

    .line 46
    iget-object v0, p0, Landroidx/camera/core/featuregroup/impl/UseCaseType;->surfaceClass:Ljava/lang/Class;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 73
    sget-object v0, Landroidx/camera/core/featuregroup/impl/UseCaseType$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 79
    :pswitch_0
    const-string v0, "Undefined"

    return-object v0

    .line 78
    :pswitch_1
    const-string v0, "StreamSharing"

    return-object v0

    .line 77
    :pswitch_2
    const-string v0, "VideoCapture"

    return-object v0

    .line 76
    :pswitch_3
    const-string v0, "ImageAnalysis"

    return-object v0

    .line 75
    :pswitch_4
    const-string v0, "ImageCapture"

    return-object v0

    .line 74
    :pswitch_5
    const-string v0, "Preview"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
