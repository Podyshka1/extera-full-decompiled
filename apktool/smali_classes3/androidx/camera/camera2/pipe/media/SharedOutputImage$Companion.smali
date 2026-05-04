.class public final Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/media/SharedOutputImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion$SharedOutputImageImpl;
    }
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion;

    invoke-direct {v0}, Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion;-><init>()V

    sput-object v0, Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion;->$$INSTANCE:Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final from(Landroidx/camera/camera2/pipe/media/OutputImage;)Landroidx/camera/camera2/pipe/media/SharedOutputImage;
    .locals 2

    const-string v0, "image"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    instance-of v0, p1, Landroidx/camera/camera2/pipe/media/SharedOutputImage;

    if-eqz v0, :cond_0

    .line 56
    check-cast p1, Landroidx/camera/camera2/pipe/media/SharedOutputImage;

    invoke-interface {p1}, Landroidx/camera/camera2/pipe/media/SharedOutputImage;->acquire()Landroidx/camera/camera2/pipe/media/SharedOutputImage;

    move-result-object p1

    return-object p1

    .line 61
    :cond_0
    const-class v0, Landroidx/camera/camera2/pipe/media/SharedOutputImage;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/media/SharedOutputImage;

    if-eqz v0, :cond_1

    .line 63
    invoke-interface {v0}, Landroidx/camera/camera2/pipe/media/SharedOutputImage;->acquire()Landroidx/camera/camera2/pipe/media/SharedOutputImage;

    move-result-object p1

    return-object p1

    .line 68
    :cond_1
    new-instance v0, Landroidx/camera/camera2/pipe/media/SharedReference;

    sget-object v1, Landroidx/camera/camera2/pipe/media/ClosingFinalizer;->INSTANCE:Landroidx/camera/camera2/pipe/media/ClosingFinalizer;

    invoke-direct {v0, p1, v1}, Landroidx/camera/camera2/pipe/media/SharedReference;-><init>(Ljava/lang/Object;Landroidx/camera/camera2/pipe/media/Finalizer;)V

    .line 69
    new-instance v1, Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion$SharedOutputImageImpl;

    invoke-direct {v1, p1, v0}, Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion$SharedOutputImageImpl;-><init>(Landroidx/camera/camera2/pipe/media/OutputImage;Landroidx/camera/camera2/pipe/media/SharedReference;)V

    return-object v1
.end method
