.class public final enum Landroidx/camera/core/impl/StreamUseCase;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Landroidx/camera/core/impl/StreamUseCase;

.field public static final enum CROPPED_RAW:Landroidx/camera/core/impl/StreamUseCase;

.field public static final enum DEFAULT:Landroidx/camera/core/impl/StreamUseCase;

.field public static final enum PREVIEW:Landroidx/camera/core/impl/StreamUseCase;

.field public static final enum PREVIEW_VIDEO_STILL:Landroidx/camera/core/impl/StreamUseCase;

.field public static final enum STILL_CAPTURE:Landroidx/camera/core/impl/StreamUseCase;

.field public static final enum VIDEO_CALL:Landroidx/camera/core/impl/StreamUseCase;

.field public static final enum VIDEO_RECORD:Landroidx/camera/core/impl/StreamUseCase;


# instance fields
.field private final value:J


# direct methods
.method private static final synthetic $values()[Landroidx/camera/core/impl/StreamUseCase;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Landroidx/camera/core/impl/StreamUseCase;

    sget-object v1, Landroidx/camera/core/impl/StreamUseCase;->DEFAULT:Landroidx/camera/core/impl/StreamUseCase;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroidx/camera/core/impl/StreamUseCase;->PREVIEW:Landroidx/camera/core/impl/StreamUseCase;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroidx/camera/core/impl/StreamUseCase;->VIDEO_RECORD:Landroidx/camera/core/impl/StreamUseCase;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Landroidx/camera/core/impl/StreamUseCase;->STILL_CAPTURE:Landroidx/camera/core/impl/StreamUseCase;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Landroidx/camera/core/impl/StreamUseCase;->VIDEO_CALL:Landroidx/camera/core/impl/StreamUseCase;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Landroidx/camera/core/impl/StreamUseCase;->PREVIEW_VIDEO_STILL:Landroidx/camera/core/impl/StreamUseCase;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Landroidx/camera/core/impl/StreamUseCase;->CROPPED_RAW:Landroidx/camera/core/impl/StreamUseCase;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 36
    new-instance v0, Landroidx/camera/core/impl/StreamUseCase;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/camera/core/impl/StreamUseCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/camera/core/impl/StreamUseCase;->DEFAULT:Landroidx/camera/core/impl/StreamUseCase;

    .line 44
    new-instance v0, Landroidx/camera/core/impl/StreamUseCase;

    const-string v1, "PREVIEW"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Landroidx/camera/core/impl/StreamUseCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/camera/core/impl/StreamUseCase;->PREVIEW:Landroidx/camera/core/impl/StreamUseCase;

    .line 52
    new-instance v0, Landroidx/camera/core/impl/StreamUseCase;

    const-string v1, "VIDEO_RECORD"

    const/4 v2, 0x2

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Landroidx/camera/core/impl/StreamUseCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/camera/core/impl/StreamUseCase;->VIDEO_RECORD:Landroidx/camera/core/impl/StreamUseCase;

    .line 60
    new-instance v0, Landroidx/camera/core/impl/StreamUseCase;

    const-string v1, "STILL_CAPTURE"

    invoke-direct {v0, v1, v3, v2}, Landroidx/camera/core/impl/StreamUseCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/camera/core/impl/StreamUseCase;->STILL_CAPTURE:Landroidx/camera/core/impl/StreamUseCase;

    .line 68
    new-instance v0, Landroidx/camera/core/impl/StreamUseCase;

    const-string v1, "VIDEO_CALL"

    const/4 v2, 0x4

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Landroidx/camera/core/impl/StreamUseCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/camera/core/impl/StreamUseCase;->VIDEO_CALL:Landroidx/camera/core/impl/StreamUseCase;

    .line 77
    new-instance v0, Landroidx/camera/core/impl/StreamUseCase;

    const-string v1, "PREVIEW_VIDEO_STILL"

    invoke-direct {v0, v1, v3, v2}, Landroidx/camera/core/impl/StreamUseCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/camera/core/impl/StreamUseCase;->PREVIEW_VIDEO_STILL:Landroidx/camera/core/impl/StreamUseCase;

    .line 85
    new-instance v0, Landroidx/camera/core/impl/StreamUseCase;

    const-string v1, "CROPPED_RAW"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Landroidx/camera/core/impl/StreamUseCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/camera/core/impl/StreamUseCase;->CROPPED_RAW:Landroidx/camera/core/impl/StreamUseCase;

    invoke-static {}, Landroidx/camera/core/impl/StreamUseCase;->$values()[Landroidx/camera/core/impl/StreamUseCase;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/StreamUseCase;->$VALUES:[Landroidx/camera/core/impl/StreamUseCase;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/StreamUseCase;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    int-to-long p1, p3

    .line 88
    iput-wide p1, p0, Landroidx/camera/core/impl/StreamUseCase;->value:J

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/camera/core/impl/StreamUseCase;
    .locals 1

    const-class v0, Landroidx/camera/core/impl/StreamUseCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/camera/core/impl/StreamUseCase;

    return-object p0
.end method

.method public static values()[Landroidx/camera/core/impl/StreamUseCase;
    .locals 1

    sget-object v0, Landroidx/camera/core/impl/StreamUseCase;->$VALUES:[Landroidx/camera/core/impl/StreamUseCase;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/camera/core/impl/StreamUseCase;

    return-object v0
.end method


# virtual methods
.method public final getValue()J
    .locals 2

    .line 88
    iget-wide v0, p0, Landroidx/camera/core/impl/StreamUseCase;->value:J

    return-wide v0
.end method
