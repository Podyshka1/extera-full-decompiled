.class public final Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StreamUseCase"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase$Companion;
    }
.end annotation


# static fields
.field private static final CROPPED_RAW:J

.field public static final Companion:Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase$Companion;

.field private static final DEFAULT:J

.field private static final PREVIEW:J

.field private static final PREVIEW_VIDEO_STILL:J

.field private static final STILL_CAPTURE:J

.field private static final VIDEO_CALL:J

.field private static final VIDEO_RECORD:J


# instance fields
.field private final value:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->Companion:Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase$Companion;

    const-wide/16 v0, 0x0

    .line 457
    invoke-static {v0, v1}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->constructor-impl(J)J

    move-result-wide v0

    sput-wide v0, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->DEFAULT:J

    const-wide/16 v0, 0x1

    .line 458
    invoke-static {v0, v1}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->constructor-impl(J)J

    move-result-wide v0

    sput-wide v0, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->PREVIEW:J

    const-wide/16 v0, 0x2

    .line 459
    invoke-static {v0, v1}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->constructor-impl(J)J

    move-result-wide v0

    sput-wide v0, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->STILL_CAPTURE:J

    const-wide/16 v0, 0x3

    .line 460
    invoke-static {v0, v1}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->constructor-impl(J)J

    move-result-wide v0

    sput-wide v0, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->VIDEO_RECORD:J

    const-wide/16 v0, 0x4

    .line 461
    invoke-static {v0, v1}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->constructor-impl(J)J

    move-result-wide v0

    sput-wide v0, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->PREVIEW_VIDEO_STILL:J

    const-wide/16 v0, 0x5

    .line 462
    invoke-static {v0, v1}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->constructor-impl(J)J

    move-result-wide v0

    sput-wide v0, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->VIDEO_CALL:J

    const-wide/16 v0, 0x6

    .line 463
    invoke-static {v0, v1}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->constructor-impl(J)J

    move-result-wide v0

    sput-wide v0, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->CROPPED_RAW:J

    return-void
.end method

.method private synthetic constructor <init>(J)V
    .locals 0

    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->value:J

    return-void
.end method

.method public static final synthetic access$getDEFAULT$cp()J
    .locals 2

    .line 454
    sget-wide v0, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->DEFAULT:J

    return-wide v0
.end method

.method public static final synthetic access$getPREVIEW$cp()J
    .locals 2

    .line 454
    sget-wide v0, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->PREVIEW:J

    return-wide v0
.end method

.method public static final synthetic access$getVIDEO_RECORD$cp()J
    .locals 2

    .line 454
    sget-wide v0, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->VIDEO_RECORD:J

    return-wide v0
.end method

.method public static final synthetic box-impl(J)Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;
    .locals 1

    new-instance v0, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;

    invoke-direct {v0, p0, p1}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;-><init>(J)V

    return-object v0
.end method

.method public static constructor-impl(J)J
    .locals 0

    return-wide p0
.end method

.method public static equals-impl(JLjava/lang/Object;)Z
    .locals 4

    instance-of v0, p2, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p2, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->unbox-impl()J

    move-result-wide v2

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final equals-impl0(JJ)Z
    .locals 0

    cmp-long p0, p0, p2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static hashCode-impl(J)I
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/CameraTimestamp$$ExternalSyntheticBackport0;->m(J)I

    move-result p0

    return p0
.end method

.method public static toString-impl(J)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StreamUseCase(value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    iget-wide v0, p0, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->value:J

    invoke-static {v0, v1, p1}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->equals-impl(JLjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->value:J

    invoke-static {v0, v1}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->hashCode-impl(J)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->value:J

    invoke-static {v0, v1}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->toString-impl(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic unbox-impl()J
    .locals 2

    iget-wide v0, p0, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->value:J

    return-wide v0
.end method
