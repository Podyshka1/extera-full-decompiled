.class public final Landroidx/camera/camera2/pipe/compat/Api29Compat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroidx/camera/camera2/pipe/compat/Api29Compat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/pipe/compat/Api29Compat;

    invoke-direct {v0}, Landroidx/camera/camera2/pipe/compat/Api29Compat;-><init>()V

    sput-object v0, Landroidx/camera/camera2/pipe/compat/Api29Compat;->INSTANCE:Landroidx/camera/camera2/pipe/compat/Api29Compat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final imageWriterNewInstance(Landroid/view/Surface;II)Landroid/media/ImageWriter;
    .locals 1

    const-string/jumbo v0, "surface"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    invoke-static {p0, p1, p2}, Landroid/media/ImageWriter;->newInstance(Landroid/view/Surface;II)Landroid/media/ImageWriter;

    move-result-object p0

    const-string p1, "newInstance(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
