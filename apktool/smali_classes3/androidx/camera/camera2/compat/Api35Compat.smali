.class public final Landroidx/camera/camera2/compat/Api35Compat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroidx/camera/camera2/compat/Api35Compat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/compat/Api35Compat;

    invoke-direct {v0}, Landroidx/camera/camera2/compat/Api35Compat;-><init>()V

    sput-object v0, Landroidx/camera/camera2/compat/Api35Compat;->INSTANCE:Landroidx/camera/camera2/compat/Api35Compat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final setFlashStrengthLevel(Ljava/util/Map;I)V
    .locals 1

    const-string v0, "parameters"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-static {}, Landroidx/camera/camera2/compat/Api35Compat$$ExternalSyntheticApiModelOutline0;->m()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
