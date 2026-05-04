.class public final Landroidx/camera/camera2/impl/Camera2Logger;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

.field private static final TRUNCATED_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/impl/Camera2Logger;

    invoke-direct {v0}, Landroidx/camera/camera2/impl/Camera2Logger;-><init>()V

    sput-object v0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 47
    const-string v1, "CXCP"

    invoke-direct {v0, v1}, Landroidx/camera/camera2/impl/Camera2Logger;->truncateTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/impl/Camera2Logger;->TRUNCATED_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getTRUNCATED_TAG$p()Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Landroidx/camera/camera2/impl/Camera2Logger;->TRUNCATED_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private final truncateTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-gt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x17

    if-ge v1, v0, :cond_0

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "substring(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method
