.class public final Landroidx/camera/camera2/pipe/ConfigQueryResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/ConfigQueryResult$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/pipe/ConfigQueryResult$Companion;

.field private static final SUPPORTED:I

.field private static final UNKNOWN:I

.field private static final UNSUPPORTED:I


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/pipe/ConfigQueryResult$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/ConfigQueryResult$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/pipe/ConfigQueryResult;->Companion:Landroidx/camera/camera2/pipe/ConfigQueryResult$Companion;

    const/4 v0, 0x0

    .line 50
    invoke-static {v0}, Landroidx/camera/camera2/pipe/ConfigQueryResult;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/camera/camera2/pipe/ConfigQueryResult;->UNKNOWN:I

    const/4 v0, 0x1

    .line 58
    invoke-static {v0}, Landroidx/camera/camera2/pipe/ConfigQueryResult;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/camera/camera2/pipe/ConfigQueryResult;->SUPPORTED:I

    const/4 v0, 0x2

    .line 66
    invoke-static {v0}, Landroidx/camera/camera2/pipe/ConfigQueryResult;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/camera/camera2/pipe/ConfigQueryResult;->UNSUPPORTED:I

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/camera/camera2/pipe/ConfigQueryResult;->value:I

    return-void
.end method

.method public static final synthetic access$getSUPPORTED$cp()I
    .locals 1

    .line 28
    sget v0, Landroidx/camera/camera2/pipe/ConfigQueryResult;->SUPPORTED:I

    return v0
.end method

.method public static final synthetic access$getUNKNOWN$cp()I
    .locals 1

    .line 28
    sget v0, Landroidx/camera/camera2/pipe/ConfigQueryResult;->UNKNOWN:I

    return v0
.end method

.method public static final synthetic box-impl(I)Landroidx/camera/camera2/pipe/ConfigQueryResult;
    .locals 1

    new-instance v0, Landroidx/camera/camera2/pipe/ConfigQueryResult;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/pipe/ConfigQueryResult;-><init>(I)V

    return-object v0
.end method

.method public static constructor-impl(I)I
    .locals 0

    return p0
.end method

.method public static equals-impl(ILjava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/camera/camera2/pipe/ConfigQueryResult;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/camera/camera2/pipe/ConfigQueryResult;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/ConfigQueryResult;->unbox-impl()I

    move-result p1

    if-eq p0, p1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

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
    .locals 1

    .line 33
    sget v0, Landroidx/camera/camera2/pipe/ConfigQueryResult;->SUPPORTED:I

    invoke-static {p0, v0}, Landroidx/camera/camera2/pipe/ConfigQueryResult;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "SUPPORTED"

    return-object p0

    .line 34
    :cond_0
    sget v0, Landroidx/camera/camera2/pipe/ConfigQueryResult;->UNSUPPORTED:I

    invoke-static {p0, v0}, Landroidx/camera/camera2/pipe/ConfigQueryResult;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "UNSUPPORTED"

    return-object p0

    .line 35
    :cond_1
    const-string p0, "UNKNOWN"

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Landroidx/camera/camera2/pipe/ConfigQueryResult;->value:I

    invoke-static {v0, p1}, Landroidx/camera/camera2/pipe/ConfigQueryResult;->equals-impl(ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroidx/camera/camera2/pipe/ConfigQueryResult;->value:I

    invoke-static {v0}, Landroidx/camera/camera2/pipe/ConfigQueryResult;->hashCode-impl(I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 31
    iget v0, p0, Landroidx/camera/camera2/pipe/ConfigQueryResult;->value:I

    invoke-static {v0}, Landroidx/camera/camera2/pipe/ConfigQueryResult;->toString-impl(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic unbox-impl()I
    .locals 1

    iget v0, p0, Landroidx/camera/camera2/pipe/ConfigQueryResult;->value:I

    return v0
.end method
