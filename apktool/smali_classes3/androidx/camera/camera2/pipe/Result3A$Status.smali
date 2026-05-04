.class public abstract Landroidx/camera/camera2/pipe/Result3A$Status;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/Result3A;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/Result3A$Status$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/pipe/Result3A$Status$Companion;

.field private static final FRAME_LIMIT_REACHED:I

.field private static final OK:I

.field private static final SUBMIT_CANCELLED:I

.field private static final SUBMIT_FAILED:I

.field private static final TIME_LIMIT_REACHED:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/pipe/Result3A$Status$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/Result3A$Status$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/pipe/Result3A$Status;->Companion:Landroidx/camera/camera2/pipe/Result3A$Status$Companion;

    const/4 v0, 0x0

    .line 217
    invoke-static {v0}, Landroidx/camera/camera2/pipe/Result3A$Status;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/camera/camera2/pipe/Result3A$Status;->OK:I

    const/4 v0, 0x1

    .line 218
    invoke-static {v0}, Landroidx/camera/camera2/pipe/Result3A$Status;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/camera/camera2/pipe/Result3A$Status;->FRAME_LIMIT_REACHED:I

    const/4 v0, 0x2

    .line 219
    invoke-static {v0}, Landroidx/camera/camera2/pipe/Result3A$Status;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/camera/camera2/pipe/Result3A$Status;->TIME_LIMIT_REACHED:I

    const/4 v0, 0x3

    .line 220
    invoke-static {v0}, Landroidx/camera/camera2/pipe/Result3A$Status;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/camera/camera2/pipe/Result3A$Status;->SUBMIT_CANCELLED:I

    const/4 v0, 0x4

    .line 221
    invoke-static {v0}, Landroidx/camera/camera2/pipe/Result3A$Status;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/camera/camera2/pipe/Result3A$Status;->SUBMIT_FAILED:I

    return-void
.end method

.method public static final synthetic access$getFRAME_LIMIT_REACHED$cp()I
    .locals 1

    .line 214
    sget v0, Landroidx/camera/camera2/pipe/Result3A$Status;->FRAME_LIMIT_REACHED:I

    return v0
.end method

.method public static final synthetic access$getOK$cp()I
    .locals 1

    .line 214
    sget v0, Landroidx/camera/camera2/pipe/Result3A$Status;->OK:I

    return v0
.end method

.method public static final synthetic access$getSUBMIT_CANCELLED$cp()I
    .locals 1

    .line 214
    sget v0, Landroidx/camera/camera2/pipe/Result3A$Status;->SUBMIT_CANCELLED:I

    return v0
.end method

.method public static final synthetic access$getSUBMIT_FAILED$cp()I
    .locals 1

    .line 214
    sget v0, Landroidx/camera/camera2/pipe/Result3A$Status;->SUBMIT_FAILED:I

    return v0
.end method

.method public static final synthetic access$getTIME_LIMIT_REACHED$cp()I
    .locals 1

    .line 214
    sget v0, Landroidx/camera/camera2/pipe/Result3A$Status;->TIME_LIMIT_REACHED:I

    return v0
.end method

.method private static constructor-impl(I)I
    .locals 0

    return p0
.end method

.method public static final equals-impl0(II)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static hashCode-impl(I)I
    .locals 0

    return p0
.end method

.method public static toString-impl(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Status(value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
